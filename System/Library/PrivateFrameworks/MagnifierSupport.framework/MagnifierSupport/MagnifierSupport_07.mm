uint64_t sub_257C506D4()
{
  v1 = v0;
  v40 = sub_257ECCCF0();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65E0);
  result = sub_257ED02A0();
  v6 = result;
  if (*(v4 + 16))
  {
    v37 = v0;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v38 = (v2 + 8);
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v45 = (v11 - 1) & v11;
LABEL_15:
      v21 = v4;
      v22 = *(v4 + 48) + 80 * (v18 | (v7 << 6));
      v23 = *v22;
      v24 = *(v22 + 16);
      v43 = *(v22 + 32);
      v44 = v24;
      v25 = *(v22 + 48);
      v41 = *(v22 + 64);
      v42 = v25;
      sub_257ED07B0();
      result = [v23 identifier];
      if (!result)
      {
        goto LABEL_32;
      }

      v26 = result;
      v27 = v39;
      sub_257ECCCD0();

      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      v28 = v40;
      sub_257ECF400();
      (*v38)(v27, v28);
      result = sub_257ED0800();
      v29 = -1 << *(v6 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 80 * v14;
      *v15 = v23;
      v16 = v43;
      *(v15 + 16) = v44;
      *(v15 + 32) = v16;
      v17 = v41;
      *(v15 + 48) = v42;
      *(v15 + 64) = v17;
      ++*(v6 + 16);
      v4 = v21;
      v11 = v45;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v4 + 32);
    if (v36 >= 64)
    {
      bzero(v8, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v36;
    }

    v1 = v37;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_257C50A94()
{
  v1 = v0;
  v35 = sub_257ECCCF0();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C0);
  result = sub_257ED02A0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      result = sub_257ECF3F0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_257C50DF0()
{
  v1 = v0;
  v47 = sub_257ECCCF0();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6678);
  v5 = sub_257ED02A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v42 = v0;
    v7 = 0;
    v8 = *(v4 + 56);
    v44 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v43 = (v9 + 63) >> 6;
    v45 = (v2 + 8);
    v12 = v5 + 56;
    v48 = v4;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v21 = *(v4 + 48) + 96 * (v17 | (v7 << 6));
      v22 = *v21;
      v24 = *(v21 + 8);
      v23 = *(v21 + 12);
      v25 = *(v21 + 16);
      v52 = *(v21 + 32);
      v53 = v25;
      v26 = *(v21 + 48);
      v50 = *(v21 + 64);
      v51 = v26;
      v27 = *(v21 + 80);
      v54 = *(v21 + 88);
      sub_257ED07B0();
      if (v23 < 0)
      {
        MEMORY[0x259C732E0](1);
        sub_257C9BE54(v55, v22);
      }

      else
      {
        v49 = v24;
        v28 = v11;
        v29 = v6;
        v30 = v23;
        MEMORY[0x259C732E0](0);
        result = [v22 identifier];
        if (!result)
        {
          goto LABEL_35;
        }

        v31 = result;
        v32 = v46;
        sub_257ECCCD0();

        sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
        v33 = v47;
        sub_257ECF400();
        (*v45)(v32, v33);
        sub_257C9C120(v55, v27);
        v23 = v30;
        v6 = v29;
        v11 = v28;
        v24 = v49;
      }

      sub_257ED07E0();
      result = sub_257ED0800();
      v34 = -1 << *(v6 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v12 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v12 + 8 * v36);
          if (v40 != -1)
          {
            v13 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v35) & ~*(v12 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 96 * v13;
      *v14 = v22;
      *(v14 + 8) = v24;
      *(v14 + 12) = v23;
      v15 = v52;
      *(v14 + 16) = v53;
      *(v14 + 32) = v15;
      v16 = v50;
      *(v14 + 48) = v51;
      *(v14 + 64) = v16;
      *(v14 + 80) = v27;
      *(v14 + 88) = v54;
      ++*(v6 + 16);
      v4 = v48;
    }

    v18 = v7;
    result = v44;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v43)
      {
        break;
      }

      v20 = v44[v7];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v41 = 1 << *(v4 + 32);
    if (v41 >= 64)
    {
      bzero(v44, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v44 = -1 << v41;
    }

    v1 = v42;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_257C5125C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6608);
  result = sub_257ED02A0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_257C52014(v18, v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = (*(v2 + 48) + 96 * (v11 | (v5 << 6)));
      v15 = v14[3];
      v18[2] = v14[2];
      v18[3] = v15;
      v19[0] = v14[4];
      *(v19 + 12) = *(v14 + 76);
      v16 = v14[1];
      v18[0] = *v14;
      v18[1] = v16;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v17 = 1 << *(v2 + 32);
    if (v17 >= 64)
    {
      bzero((v2 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v17;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_257C513F0()
{
  v1 = v0;
  v2 = type metadata accessor for Occupant();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6580);
  result = sub_257ED02A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_257C587D8(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      sub_257ECF400();
      result = sub_257ED0800();
      v21 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_257C587D8(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_257C5171C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640);
  result = sub_257ED02A0();
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
      sub_257ED07B0();
      sub_257ECF5D0();
      result = sub_257ED0800();
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

uint64_t sub_257C5197C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_257ED02A0();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_257ED07B0();
      MEMORY[0x259C732E0](v18);
      result = sub_257ED0800();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_257C51BC4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6540);
  result = sub_257ED02A0();
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
      result = sub_257ECFF40();
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

uint64_t sub_257C51DEC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6548);
  result = sub_257ED02A0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x259C732B0](*(v4 + 40), v16, 4);
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
      *(*(v4 + 48) + 4 * v12) = v16;
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_257C52014(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ED07B0();
  result = [*a1 identifier];
  if (result)
  {
    v9 = result;
    v10 = *(a1 + 80);
    sub_257ECCCD0();

    sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
    sub_257ECF400();
    (*(v5 + 8))(v7, v4);
    sub_257C9C120(v15, v10);
    sub_257ED07E0();
    sub_257ED0800();
    result = sub_257ED01B0();
    *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (*(a2 + 48) + 96 * result);
    v12 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v12;
    v11[4] = *(a1 + 64);
    *(v11 + 76) = *(a1 + 76);
    v13 = *(a1 + 16);
    *v11 = *a1;
    v11[1] = v13;
    ++*(a2 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257C52214(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_257C5000C();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_257C4E14C(&qword_27F8F64E0);
        goto LABEL_62;
      }

      sub_257C4E3D0();
    }

    v8 = *v3;
    sub_257ED07B0();
    Control.rawValue.getter();
    sub_257ECF5D0();

    result = sub_257ED0800();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xEA0000000000726FLL;
        v12 = 0x746361466D6F6F7ALL;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xD000000000000011;
            v11 = 0x8000000257EF7780;
            break;
          case 2:
            v12 = 0x4379616C70736964;
            v11 = 0xEF74736172746E6FLL;
            break;
          case 3:
            v11 = 0xE700000000000000;
            v12 = 0x737265746C6966;
            break;
          case 4:
            v11 = 0xEA00000000007468;
            v12 = 0x67696C6873616C66;
            break;
          case 5:
            v12 = 0x6544656C706F6570;
            v11 = 0xEF6E6F6974636574;
            break;
          case 6:
            v12 = 0x636F4C7375636F66;
            v11 = 0xE90000000000006BLL;
            break;
          case 7:
            v12 = 0x79546172656D6163;
            v11 = 0xEA00000000006570;
            break;
          case 8:
            v12 = 0x4D65727574706163;
            v11 = 0xEB0000000065646FLL;
            break;
          case 9:
            v12 = 0x6F69746365746564;
            v11 = 0xED000065646F4D6ELL;
            break;
          case 0xA:
            v13 = 1919905636;
            goto LABEL_25;
          case 0xB:
            v12 = 0xD000000000000013;
            v11 = 0x8000000257EF74D0;
            break;
          case 0xC:
            v12 = 0x7061436567616D69;
            v11 = 0xEC0000006E6F6974;
            break;
          case 0xD:
            v11 = 0xEA00000000006B61;
            v12 = 0x657053746E696F70;
            break;
          case 0xE:
            v13 = 1954047348;
LABEL_25:
            v12 = v13 | 0x6574654400000000;
            v11 = 0xED00006E6F697463;
            break;
          case 0xF:
            v11 = 0xEA00000000007365;
            v12 = 0x6974697669746361;
            break;
          default:
            break;
        }

        v14 = 0xEA0000000000726FLL;
        v15 = 0x746361466D6F6F7ALL;
        switch(v5)
        {
          case 1:
            v14 = 0x8000000257EF7780;
            if (v12 == 0xD000000000000011)
            {
              goto LABEL_56;
            }

            goto LABEL_57;
          case 2:
            v14 = 0xEF74736172746E6FLL;
            if (v12 != 0x4379616C70736964)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 3:
            v14 = 0xE700000000000000;
            if (v12 != 0x737265746C6966)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 4:
            v14 = 0xEA00000000007468;
            if (v12 != 0x67696C6873616C66)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 5:
            v14 = 0xEF6E6F6974636574;
            if (v12 != 0x6544656C706F6570)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 6:
            v14 = 0xE90000000000006BLL;
            if (v12 != 0x636F4C7375636F66)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 7:
            v14 = 0xEA00000000006570;
            if (v12 != 0x79546172656D6163)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 8:
            v14 = 0xEB0000000065646FLL;
            if (v12 != 0x4D65727574706163)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 9:
            v16 = 0x6F69746365746564;
            v17 = 0x65646F4D6ELL;
            goto LABEL_38;
          case 10:
            v15 = 0x65746544726F6F64;
            v14 = 0xED00006E6F697463;
            goto LABEL_55;
          case 11:
            v14 = 0x8000000257EF74D0;
            if (v12 != 0xD000000000000013)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 12:
            v14 = 0xEC0000006E6F6974;
            if (v12 != 0x7061436567616D69)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 13:
            v14 = 0xEA00000000006B61;
            if (v12 != 0x657053746E696F70)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 14:
            v16 = 0x6574654474786574;
            v17 = 0x6E6F697463;
LABEL_38:
            v14 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v12 != v16)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 15:
            v14 = 0xEA00000000007365;
            if (v12 != 0x6974697669746361)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          default:
LABEL_55:
            if (v12 != v15)
            {
              goto LABEL_57;
            }

LABEL_56:
            if (v11 == v14)
            {
              goto LABEL_65;
            }

LABEL_57:
            v18 = sub_257ED0640();

            if (v18)
            {
              goto LABEL_66;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_62:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_65:

LABEL_66:
    result = sub_257ED06B0();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

uint64_t sub_257C52814(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_257C50458();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_257C4D584();
      goto LABEL_16;
    }

    sub_257C4E7EC();
  }

  v9 = *v3;
  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v10 = sub_257ED0800();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for OU3DObjectType(0);
    do
    {
      v13 = sub_257ECF500();
      v15 = v14;
      if (v13 == sub_257ECF500() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_257ED0640();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_257ED06B0();
  __break(1u);
  return result;
}

void sub_257C529FC(id *a1, unint64_t a2, char a3)
{
  v7 = sub_257ECCCF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v44 = v3;
  v45 = a1;
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    sub_257C506D4();
    goto LABEL_8;
  }

  if (v16 > v15)
  {
    sub_257C4D6D4();
LABEL_17:
    v36 = *v44;
    *(v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    v37 = (*(v36 + 48) + 80 * a2);
    v38 = v45;
    v39 = *(v45 + 4);
    v37[3] = *(v45 + 3);
    v37[4] = v39;
    v40 = *(v38 + 2);
    v37[1] = *(v38 + 1);
    v37[2] = v40;
    *v37 = *v38;
    v41 = *(v36 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (!v42)
    {
      *(v36 + 16) = v43;
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_257C4EA40();
LABEL_8:
  v17 = *v3;
  sub_257ED07B0();
  v50 = *a1;
  v18 = [v50 identifier];
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  sub_257ECCCD0();

  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v20 = *(v8 + 8);
  v49 = v8 + 8;
  v20(v14, v7);
  v21 = sub_257ED0800();
  v22 = -1 << *(v17 + 32);
  a2 = v21 & ~v22;
  v48 = v17 + 56;
  if (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  v46 = ~v22;
  v47 = v17;
  while (1)
  {
    v14 = *(*(v17 + 48) + 80 * a2);
    v23 = [v14 identifier];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    v25 = v52;
    sub_257ECCCD0();

    v26 = sub_257ECCCA0();
    v28 = v27;
    v20(v25, v7);
    v29 = [v50 identifier];
    if (!v29)
    {
      goto LABEL_21;
    }

    v30 = v29;
    v31 = v51;
    sub_257ECCCD0();

    v32 = sub_257ECCCA0();
    v34 = v33;
    v20(v31, v7);
    if (v26 == v32 && v28 == v34)
    {
      goto LABEL_23;
    }

    v35 = sub_257ED0640();

    if (v35)
    {
      goto LABEL_24;
    }

    v17 = v47;
    a2 = (a2 + 1) & v46;
    if (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:

LABEL_24:
  sub_257ED06B0();
  __break(1u);
}

uint64_t sub_257C52DE8(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_257C5197C(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_257C4E14C(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_257C4FC00(v6 + 1, a4);
  }

  v9 = *v4;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v5);
  result = sub_257ED0800();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_257ED06B0();
  __break(1u);
  return result;
}

uint64_t sub_257C52F58(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_257C50A94();
  }

  else
  {
    if (v11 > v10)
    {
      sub_257C4D86C();
      goto LABEL_12;
    }

    sub_257C4EDD4();
  }

  v12 = *v3;
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  v13 = sub_257ECF3F0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_257C58BB4(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
      v21 = sub_257ECF450();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_257ED06B0();
  __break(1u);
  return result;
}

uint64_t sub_257C531FC(__int128 *a1, unint64_t a2, char a3)
{
  v6 = a1;
  v7 = a1[3];
  v86 = a1[2];
  v87 = v7;
  v88[0] = a1[4];
  *(v88 + 12) = *(a1 + 76);
  v8 = a1[1];
  v84 = *a1;
  v85 = v8;
  v9 = sub_257ECCCF0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v73 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v74 = &v66 - v14;
  v67 = v3;
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  if (v16 <= v15 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v72 = result;
      v17 = v67;
      sub_257C50DF0();
    }

    else
    {
      if (v16 > v15)
      {
        result = sub_257C4DAA4();
        goto LABEL_28;
      }

      v72 = result;
      v17 = v67;
      sub_257C4F0F0();
    }

    v18 = *v17;
    v19 = *(v6 + 48);
    v81[2] = *(v6 + 32);
    v81[3] = v19;
    v82[0] = *(v6 + 64);
    *(v82 + 12) = *(v6 + 76);
    v20 = *(v6 + 16);
    v81[0] = *v6;
    v81[1] = v20;
    sub_257ED07B0();
    FurnitureDetectionResult.hash(into:)(v79);
    result = sub_257ED0800();
    v21 = v18 + 56;
    v22 = -1 << *(v18 + 32);
    a2 = result & ~v22;
    if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v77 = ~v22;
      v70 = v6;
      v71 = (v10 + 8);
      v23 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
      v68 = v18;
      v69 = v18 + 56;
      do
      {
        v24 = (*(v18 + 48) + 96 * a2);
        v25 = v24[1];
        v79[0] = *v24;
        v79[1] = v25;
        v27 = v24[3];
        v26 = v24[4];
        v28 = v24[2];
        *(v80 + 12) = *(v24 + 76);
        v79[3] = v27;
        v80[0] = v26;
        v79[2] = v28;
        memmove(v81, v24, 0x5CuLL);
        v82[4] = v86;
        v82[5] = v87;
        v83[0] = v88[0];
        *(v83 + 12) = *(v88 + 12);
        v82[2] = v84;
        v82[3] = v85;
        v29 = *&v79[0];
        if ((HIDWORD(v79[0]) & 0x80000000) != 0)
        {
          if ((*(v6 + 12) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }

          v51 = *(v6 + 8);
          v52 = *v6;
          v53 = *(v79 + 2);
          sub_257C58DDC(v79, v78);
          sub_257C58DDC(v79, v78);
          sub_257C58DDC(v6, v78);
          v54 = v52;
          v23 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
          sub_257C93E84(v29, v54);
          v56 = v55;
          sub_257C58E38(v79);
          result = sub_257BE4084(v81, &qword_27F8F6670);
          if ((v56 & 1) != 0 && v53 == v51)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if ((*(v6 + 8) & 0x8000000000000000) != 0)
          {
LABEL_11:
            sub_257C58DDC(v79, v78);
            sub_257C58DDC(v6, v78);
            result = sub_257BE4084(v81, &qword_27F8F6670);
            goto LABEL_12;
          }

          v30 = *(&v80[1] + 2);
          v31 = *(v6 + 88);
          v75 = *(v6 + 80);
          v76 = *&v80[1];
          v32 = *v6;
          sub_257C58DDC(v79, v78);
          sub_257C58DDC(v79, v78);
          sub_257C58DDC(v6, v78);
          sub_257C58DDC(v79, v78);
          sub_257C58DDC(v6, v78);
          v33 = [v29 v23[273]];
          if (!v33)
          {
            goto LABEL_31;
          }

          v34 = v33;
          v35 = v23;
          v36 = v74;
          sub_257ECCCD0();

          v37 = sub_257ECCCA0();
          v39 = v38;
          v40 = *v71;
          v41 = v36;
          v42 = v72;
          (*v71)(v41, v72);
          v43 = [v32 v35 + 1656];
          if (!v43)
          {
            goto LABEL_32;
          }

          v44 = v43;
          v45 = v73;
          sub_257ECCCD0();

          v46 = sub_257ECCCA0();
          v48 = v47;
          v40(v45, v42);
          if (v37 == v46 && v39 == v48)
          {

            v18 = v68;
            v23 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
          }

          else
          {
            v49 = sub_257ED0640();

            v18 = v68;
            v23 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
            if ((v49 & 1) == 0)
            {
              sub_257BE4084(v81, &qword_27F8F6670);
              sub_257C58E38(v79);
              v6 = v70;
              sub_257C58E38(v70);
              result = sub_257C58E38(v79);
              v21 = v69;
              goto LABEL_12;
            }
          }

          v50 = sub_257C943E4(v76, v75);
          sub_257BE4084(v81, &qword_27F8F6670);
          sub_257C58E38(v79);
          v6 = v70;
          sub_257C58E38(v70);
          result = sub_257C58E38(v79);
          v21 = v69;
          if ((v50 & 1) != 0 && v30 == v31)
          {
            goto LABEL_33;
          }
        }

LABEL_12:
        a2 = (a2 + 1) & v77;
      }

      while (((*(v21 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v57 = *v67;
  *(v57 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v58 = (*(v57 + 48) + 96 * a2);
  v59 = *(v6 + 16);
  *v58 = *v6;
  v58[1] = v59;
  v60 = *(v6 + 32);
  v61 = *(v6 + 48);
  v62 = *(v6 + 64);
  *(v58 + 76) = *(v6 + 76);
  v58[3] = v61;
  v58[4] = v62;
  v58[2] = v60;
  v63 = *(v57 + 16);
  v64 = __OFADD__(v63, 1);
  v65 = v63 + 1;
  if (v64)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_257ED06B0();
    __break(1u);
  }

  else
  {
    *(v57 + 16) = v65;
  }

  return result;
}

void sub_257C537C0(uint64_t a1, unint64_t a2, char a3)
{
  v7 = sub_257ECCCF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v54 = a1;
  v53 = v3;
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_257C5125C();
  }

  else
  {
    if (v16 > v15)
    {
      sub_257C4DC34();
      goto LABEL_22;
    }

    sub_257C4F54C();
  }

  v17 = *v3;
  sub_257ED07B0();
  v61 = *a1;
  v18 = [v61 identifier];
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  v20 = *(a1 + 88);
  v21 = *(a1 + 80);
  sub_257ECCCD0();

  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v22 = *(v8 + 8);
  v22(v14, v7);
  v55 = v21;
  sub_257C9C120(v65, v21);
  sub_257ED07E0();
  v23 = sub_257ED0800();
  v24 = -1 << *(v17 + 32);
  a2 = v23 & ~v24;
  v60 = v17 + 56;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v58 = v7;
    v59 = v22;
    v56 = ~v24;
    v57 = v17;
    v25 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
    do
    {
      v26 = *(v17 + 48);
      v64 = a2;
      v27 = v26 + 96 * a2;
      v28 = *(v27 + 80);
      v29 = *(v27 + 88);
      v30 = *v27;

      v31 = [v30 v25[273]];
      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = v31;
      v33 = v63;
      sub_257ECCCD0();

      v34 = sub_257ECCCA0();
      v36 = v35;
      a2 = v59;
      v59(v33, v7);
      v37 = [v61 v25[273]];
      if (!v37)
      {
        goto LABEL_26;
      }

      v38 = v37;
      v39 = v62;
      sub_257ECCCD0();

      v40 = sub_257ECCCA0();
      v42 = v41;
      (a2)(v39, v7);
      if (v34 == v40 && v36 == v42)
      {
      }

      else
      {
        v43 = sub_257ED0640();

        if ((v43 & 1) == 0)
        {

          v25 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
          goto LABEL_12;
        }
      }

      v44 = sub_257C943E4(v28, v55);

      v25 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
      if ((v44 & 1) != 0 && v29 == v20)
      {
        sub_257ED06B0();
        __break(1u);
        break;
      }

LABEL_12:
      a2 = (v64 + 1) & v56;
      v17 = v57;
      v7 = v58;
    }

    while (((*(v60 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_22:
  v45 = *v53;
  *(v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v46 = (*(v45 + 48) + 96 * a2);
  v47 = v54;
  v48 = v54[1];
  *v46 = *v54;
  v46[1] = v48;
  *(v46 + 76) = *(v47 + 76);
  v49 = v47[4];
  v46[3] = v47[3];
  v46[4] = v49;
  v46[2] = v47[2];
  v50 = *(v45 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (!v51)
  {
    *(v45 + 16) = v52;
    return;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_257C53C54(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Occupant();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
LABEL_15:
    v13 = v8;
  }

  else
  {
    if (a3)
    {
      sub_257C513F0();
LABEL_8:
      v14 = *v3;
      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      sub_257ECF400();
      v15 = sub_257ED0800();
      v16 = -1 << *(v14 + 32);
      a2 = v15 & ~v16;
      if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_15;
      }

      v17 = ~v16;
      v13 = v8;
      v8 = *(v8 + 72);
      while (1)
      {
        sub_257C58770(*(v14 + 48) + v8 * a2, v10, type metadata accessor for Occupant);
        if (sub_257ECCCC0())
        {
          v18 = sub_257ECCC40();
          sub_257C58710(v10, type metadata accessor for Occupant);
          if (v18)
          {
            sub_257ED06B0();
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          sub_257C58710(v10, type metadata accessor for Occupant);
        }

        a2 = (a2 + 1) & v17;
        if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    if (v12 <= v11)
    {
      sub_257C4F6B8();
      goto LABEL_8;
    }

    v13 = v8;
    sub_257C4DDBC();
  }

LABEL_16:
  v19 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_257C587D8(a1, *(v19 + 48) + *(v13 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_257C53F00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_257C5171C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_257C4DFB4();
      goto LABEL_16;
    }

    sub_257C4F9C8();
  }

  v10 = *v4;
  sub_257ED07B0();
  sub_257ECF5D0();
  result = sub_257ED0800();
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

      result = sub_257ED0640();
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
  result = sub_257ED06B0();
  __break(1u);
  return result;
}

uint64_t sub_257C54080(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_257C5197C(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_257C4E14C(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_257C4FC00(v6 + 1, a4);
  }

  v9 = *v4;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v5 & 1);
  result = sub_257ED0800();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != (v5 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_257ED06B0();
  __break(1u);
  return result;
}

uint64_t sub_257C541F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_257C51DEC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_257C4E290();
      a2 = v7;
      goto LABEL_12;
    }

    sub_257C4FE18();
  }

  v8 = *v3;
  result = MEMORY[0x259C732B0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_257ED06B0();
  __break(1u);
  return result;
}

void sub_257C5431C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_257ECCCF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6590);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  v54[0] = v17;
  sub_257BE401C(a1 + v17, v54 - v14, &qword_27F8F6590);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_257C042F8(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_257EC4AC0(v25, a2 & 1);
    v20 = sub_257C042F8(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_257ED06C0();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_257C08CE8();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0);
    v30 = swift_dynamicCast();
    v31 = v62;
    if ((v30 & 1) == 0)
    {

      (*(v55 + 8))(v10, v31);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v54[0];
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_257BE401C(v39, v15, &qword_27F8F6590);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_257C042F8(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_257EC4AC0(v47, 1);
        v43 = sub_257C042F8(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_257ED02D0();
  MEMORY[0x259C72150](0xD00000000000001BLL, 0x8000000257EFAEC0);
  sub_257ED0400();
  MEMORY[0x259C72150](39, 0xE100000000000000);
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257C54870(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_257D6DF88(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_257C5499C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_257ED07B0();

    sub_257ECF5D0();
    v23 = sub_257ED0800();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_257ED0640() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_257CA6764(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_257ED07B0();

            sub_257ECF5D0();
            v41 = sub_257ED0800();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_257ED0640() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;
    sub_257ECC3F0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_257C54F0C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x259C74820](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_257C02520();
    return v5;
  }

  result = MEMORY[0x259C74820](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_257C54F0C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;
          sub_257ECC3F0();
          return sub_257CA6764(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_257ED07B0();

        sub_257ECF5D0();
        v19 = sub_257ED0800();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_257ED0640() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_257C55144(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  sub_257ECC3F0();
  isStackAllocationSafe = sub_257ECC3F0();
  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_257C55428(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_257ECC3F0();
    v9 = sub_257C55308(v11, v6, a2, a1);

    MEMORY[0x259C74820](v11, -1, -1);
  }

  return v9;
}

void *sub_257C55308(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_257C55428(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_257C55398(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_257CA70C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_257C55428(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_257ED07B0();

      sub_257ECF5D0();
      v26 = sub_257ED0800();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_257ED0640() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:
          sub_257ECC3F0();
          return sub_257CA6764(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_257ED07B0();

      sub_257ECF5D0();
      v39 = sub_257ED0800();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_257ED0640() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257C55804(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Occupant();
  v36 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v9;
    v39 = v4;
    v32 = &v29;
    MEMORY[0x28223BE20](v7);
    v31 = &v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v10);
    v33 = 0;
    v11 = 0;
    v9 = a3 + 56;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
LABEL_12:
      v19 = v16 | (v11 << 6);
      v4 = a3;
      v20 = *(a3 + 48);
      v21 = v35;
      v22 = *(v36 + 72);
      v34 = v19;
      sub_257C58770(v20 + v22 * v19, v35, type metadata accessor for Occupant);
      v23 = v39;
      v24 = v37(v21);
      sub_257C58710(v21, type metadata accessor for Occupant);
      v39 = v23;
      if (v23)
      {

        return swift_willThrow();
      }

      v14 = v38;
      if (v24)
      {
        *&v31[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v34;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
          return sub_257CA6988(v31, v30, v33, a3);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_257CA6988(v31, v30, v33, a3);
      }

      v18 = *(v9 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    sub_257ECC3F0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = sub_257C55398(v27, v9, a3, v37);

  result = MEMORY[0x259C74820](v27, -1, -1);
  if (!v4)
  {
    return v28;
  }

  return result;
}

uint64_t sub_257C55B60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D12D64(*a1, a1[1], a1[2]);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257C55B98(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_257C55C8C;

  return v5(v2 + 32);
}

uint64_t sub_257C55C8C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_257C55DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for OU3DObjectType(0);
  v4 = v3;
  v5 = sub_257C58BB4(&qword_27F8F4C98, type metadata accessor for OU3DObjectType);
  result = MEMORY[0x259C725B0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_257C4BA10(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void sub_257C55E8C(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v47 = MEMORY[0x277D84F90];
    sub_257BF2884(0, v3, 0);
    v6 = v47;
    v37 = a1 + 56;
    v7 = sub_257ED0190();
    v8 = *(a1 + 36);
    v32 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
    swift_beginAccess();
    if (v7 < 0 || v7 >= 1 << *(a1 + 32))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v30 = v3;
      v9 = 1;
      v31 = a2;
      while (1)
      {
        v33 = v8;
        v10 = v7 >> 6;
        if ((*(v37 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        v11 = *(a1 + 48) + 80 * v7;
        v40 = *(v11 + 32);
        v41 = *(v11 + 16);
        v12 = v6;
        v13 = *(a2 + v32);
        v38 = *(v11 + 64);
        v39 = *(v11 + 48);
        v42 = *v11;
        v43 = v41;
        v44 = v40;
        v45 = v39;
        v46 = v38;
        v14 = v42;

        v35 = Dictionary<>.occupants(of:)(&v42, v13);

        v42 = v14;
        v43 = v41;
        v44 = v40;
        v45 = v39;
        v46 = v38;
        sub_257E4FDE8(a3);
        v6 = v12;
        v34 = v15;

        v47 = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_257BF2884((v16 > 1), v17 + 1, 1);
          v6 = v47;
        }

        v18 = vsubq_f32(a3, v34);
        v19 = vmulq_f32(v18, v18);
        *(v6 + 16) = v17 + 1;
        v20 = v6 + 96 * v17;
        *(v20 + 32) = v14;
        *(v20 + 48) = v41;
        *(v20 + 64) = v40;
        *(v20 + 80) = v39;
        *(v20 + 96) = v38;
        *(v20 + 112) = v35;
        *(v20 + 120) = sqrtf(v19.f32[0] + v19.f32[2]);
        v21 = 1 << *(a1 + 32);
        if (v7 >= v21)
        {
          goto LABEL_26;
        }

        v22 = *(v37 + 8 * v10);
        if ((v22 & (1 << v7)) == 0)
        {
          goto LABEL_27;
        }

        if (v33 != *(a1 + 36))
        {
          goto LABEL_28;
        }

        v23 = v22 & (-2 << (v7 & 0x3F));
        if (v23)
        {
          v7 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v6;
          v25 = v10 << 6;
          v26 = v10 + 1;
          v27 = (a1 + 64 + 8 * v10);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_257C58A64(v7, v33, 0);
              v7 = __clz(__rbit64(v28)) + v25;
              goto LABEL_18;
            }
          }

          sub_257C58A64(v7, v33, 0);
          v7 = v21;
LABEL_18:
          v6 = v24;
        }

        a2 = v31;
        if (v9 == v30)
        {
          return;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = *(a1 + 36);
          ++v9;
          if (v7 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t sub_257C56214(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x259C725B0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      sub_257C4D368(&v12, v11, a4);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

id sub_257C562A8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedStorageGroups] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache] = v11;
  v12 = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants] = MEMORY[0x277D84F98];
  v13 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v14 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) &off_279854B78];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTableChairGroups] = v12;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance] = 0;
  v15 = &v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject];
  *(v15 + 3) = 0u;
  *(v15 + 4) = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetOccupancy] = 0;
  v16 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) &off_279854B78];
  v17 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer;
  v18 = objc_allocWithZone(type metadata accessor for ObjectPointer());
  *&v4[v17] = ObjectPointer.init(length:)(3.0);
  v19 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pointerHitTestDebugNode;
  v20 = [objc_opt_self() sphereWithRadius_];
  v21 = [objc_opt_self() nodeWithGeometry_];

  *&v4[v19] = v21;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService] = a1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_eventHandler] = a2;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor] = a3;
  swift_beginAccess();
  v22 = *&v4[v16];
  v23 = *&v4[v17];
  v24 = a1;
  sub_257ECC3F0();
  v25 = a3;
  [v22 addChildNode_];
  v26 = type metadata accessor for MAGObjectUnderstandingService();
  v35.receiver = v4;
  v35.super_class = v26;
  v27 = objc_msgSendSuper2(&v35, sel_init);
  v28 = sub_257ECF930();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  sub_257ECF900();
  v29 = v27;
  v30 = sub_257ECF8F0();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v29;
  sub_257C3FBD4(0, 0, v10, &unk_257EDCE48, v31);

  return v29;
}

uint64_t sub_257C565F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D12D64(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_257C5662C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C41E40(a1, v4, v5, v6);
}

uint64_t sub_257C56704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257C423BC(a1, v4, v5, v6, v7, v8);
}

void sub_257C567CC(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  *(inited + 32) = sub_257ECF500();
  v4 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v5;
  *(inited + 48) = 18;
  *(inited + 80) = sub_257ECF500();
  *(inited + 88) = v6;
  *(inited + 120) = v4;
  *(inited + 96) = 1;
  *(inited + 128) = sub_257ECF500();
  *(inited + 136) = v7;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 0;
  sub_257BE9040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8);
  swift_arrayDestroy();
  if (qword_281544FE0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v8 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
  swift_beginAccess();
  v64 = *v8;
  v65 = *(v8 + 8);
  LOBYTE(v66) = *(v8 + 16);
  v9 = qword_2815447E0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  sub_257ECFD50();

  if (v68 > 1u)
  {
    [a1 position];
    v17 = v22;
    v19 = v23;
    v21 = v24;
  }

  else
  {
    v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer);
    sub_257BD2C2C(0, &qword_27F8FA5C0);
    v12 = v11;
    sub_257ECFDA0();
    sub_257ECFDA0();
    sub_257ECFDA0();
    sub_257ECFDA0();
    sub_257ECFDA0();
    *&v13 = (*&v65 + v67) * 0.5;
    *&v14 = (*&v64 + *(&v65 + 1)) * 0.5;
    LODWORD(v15) = v66;
    [v12 convertPosition:0 toNode:{v14, v15, v13}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  v25 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = [v25 rootNode];
  v27 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer);
  sub_257BD2C2C(0, &qword_27F8FA5C0);
  v28 = v27;
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  *&v29 = (*&v65 + v67) * 0.5;
  *&v30 = (*&v64 + *(&v65 + 1)) * 0.5;
  LODWORD(v31) = HIDWORD(v64);
  [v28 convertPosition:0 toNode:{v30, v31, v29}];
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = sub_257ECF3C0();

  LODWORD(v39) = v33;
  LODWORD(v40) = v35;
  LODWORD(v41) = v37;
  LODWORD(v42) = v17;
  LODWORD(v43) = v19;
  LODWORD(v44) = v21;
  v45 = [v26 hitTestWithSegmentFromPoint:v38 toPoint:v39 options:{v40, v41, v42, v43, v44}];

  sub_257BD2C2C(0, &unk_27F8F6630);
  v2 = sub_257ECF810();

  if (v2 >> 62)
  {
    goto LABEL_35;
  }

  v46 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
LABEL_24:

    return;
  }

LABEL_10:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x259C72E20](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v47 = *(v2 + 32);
  }

  v62 = v47;
  MEMORY[0x28223BE20](v47);

  sub_257ECFD50();

  if (v68)
  {
    v48 = 0;
    while (1)
    {
      if (v46 == v48)
      {
LABEL_23:

        goto LABEL_24;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x259C72E20](v48, v2);
      }

      else
      {
        if (v48 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_35:
          v46 = sub_257ED0210();
          if (!v46)
          {
            goto LABEL_24;
          }

          goto LABEL_10;
        }

        v49 = *(v2 + 8 * v48 + 32);
      }

      v50 = v49;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      sub_257BD2C2C(0, &qword_281543DA0);
      v51 = [v50 node];
      v52 = sub_257ECFF50();

      if (v52)
      {

        return;
      }

      v53 = [v50 node];
      v54 = [v53 categoryBitMask];

      ++v48;
      if (v54 == 16)
      {
        goto LABEL_23;
      }
    }
  }

  sub_257BD2C2C(0, &qword_281543DA0);
  v55 = v62;
  v56 = [v62 node];
  v57 = sub_257ECFF50();

  if ((v57 & 1) != 0 || (v58 = [v62 node], v59 = objc_msgSend(v58, sel_physicsBody), v58, v59) && (v60 = objc_msgSend(v59, sel_categoryBitMask), v59, (v60 & 2) != 0))
  {
  }

  else
  {
    v61 = [v62 node];
    [v61 categoryBitMask];
  }
}

uint64_t sub_257C56FFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_257C5885C();
  result = MEMORY[0x259C725B0](v2, &type metadata for DetectedObject, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v11[2] = v5[2];
      v11[3] = v6;
      v11[4] = v5[4];
      v8 = *v5;
      v7 = v5[1];
      v5 += 5;
      v11[0] = v8;
      v11[1] = v7;
      sub_257C588B0(v11, v9);
      sub_257C4BBBC(v9, v11);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_257C5709C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_257C58960();
  result = MEMORY[0x259C725B0](v2, &type metadata for DetectedFurniture, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v12[2] = v5[2];
      v12[3] = v6;
      v13[0] = v5[4];
      *(v13 + 12) = *(v5 + 76);
      v7 = *v5;
      v8 = v5[1];
      v5 += 6;
      v12[0] = v7;
      v12[1] = v8;
      sub_257C589B4(v12, v10);
      sub_257C4C894(v10, v12);
      v9 = *&v10[0];

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_257C5714C(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x259C725B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_257C4BFF0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_257C572E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_257C58E8C();
  result = MEMORY[0x259C725B0](v2, &type metadata for FurnitureDetectionResult, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v14[2] = v5[2];
      v14[3] = v6;
      v15[0] = v5[4];
      *(v15 + 12) = *(v5 + 76);
      v7 = *v5;
      v8 = v5[1];
      v5 += 6;
      v14[0] = v7;
      v14[1] = v8;
      sub_257C58DDC(v14, v11);
      sub_257C4C2D0(v9, v14);
      v11[2] = v9[2];
      v11[3] = v9[3];
      v12[0] = v10[0];
      *(v12 + 12) = *(v10 + 12);
      v11[0] = v9[0];
      v11[1] = v9[1];
      sub_257C58E38(v11);
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_257C573BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C725B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_257C4D080(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_257C574E4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x259C725B0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      sub_257C4D224(&v12, v11, a4);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

id sub_257C575A8(unint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v35)
    {
      return result;
    }

    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService);
    v5 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    result = *(v4 + v5);
    if (!result)
    {
      return result;
    }

    result = [result currentFrame];
    v26 = result;
    if (!result)
    {
      return result;
    }

    if (a1 >> 62)
    {
      v6 = sub_257ED0210();
      if (!v6)
      {
LABEL_23:
        v10 = MEMORY[0x277D84F90];
LABEL_24:
        sub_257C44D04(v10);
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    v7 = 0;
    v8 = a1 & 0xC000000000000001;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v8)
      {
        v11 = MEMORY[0x259C72E20](v7, a1);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_20;
        }

        v11 = *(a1 + 8 * v7 + 32);
      }

      v12 = v11;
      v1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = a1;
      v14 = v26;
      [v14 referenceOriginTransform];
      v30 = v15;
      v31 = v16;
      v33 = v17;
      v34 = v18;
      ARVisionToRenderingCoordinateTransform();
      v27 = v19;
      v28 = v20;
      v29 = v21;
      v32 = v22;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_257BFD7D4(0, *(v10 + 2) + 1, 1, v10);
      }

      v24 = *(v10 + 2);
      v23 = *(v10 + 3);
      if (v24 >= v23 >> 1)
      {
        v10 = sub_257BFD7D4((v23 > 1), v24 + 1, 1, v10);
      }

      *(v10 + 2) = v24 + 1;
      v25 = &v10[80 * v24];
      v25[2].i64[0] = v12;
      v25[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v27.f32[0]), v31, *v27.f32, 1), v33, v27, 2), v34, v27, 3);
      v25[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v28.f32[0]), v31, *v28.f32, 1), v33, v28, 2), v34, v28, 3);
      v25[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v29.f32[0]), v31, *v29.f32, 1), v33, v29, 2), v34, v29, 3);
      v25[6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v32.f32[0]), v31, *v32.f32, 1), v33, v32, 2), v34, v32, 3);
      ++v7;
      a1 = v13;
      if (v1 == v6)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  v5 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0);
  _simd_slerp_internal(a1, vbslq_s8(v5, vnegq_f32(a2), a2), *v5.i32);
}

void sub_257C57918(unint64_t a1)
{
  v57 = sub_257ECFBA0();
  v2 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_257ECCCF0();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v7 = 0;
    v52 = a1 & 0xC000000000000001;
    v50 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
    v51 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = (v2 + 88);
    v49 = (v4 + 8);
    v47 = *MEMORY[0x277D82D58];
    v44 = *MEMORY[0x277D82D68];
    v43 = *MEMORY[0x277D82D70];
    v41 = *MEMORY[0x277D82D88];
    v40 = *MEMORY[0x277D82D78];
    v45 = (v2 + 8);
    v39 = *MEMORY[0x277D82D60];
    v38 = *MEMORY[0x277D82D80];
    v37 = *MEMORY[0x277D82D50];
    v42 = a1;
    while (1)
    {
      if (v52)
      {
        v9 = MEMORY[0x259C72E20](v7, a1);
      }

      else
      {
        if (v7 >= *(v51 + 16))
        {
          goto LABEL_35;
        }

        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v2 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        goto LABEL_32;
      }

      v12 = v11;
      v58 = v7 + 1;
      v13 = *(v53 + v50);
      v2 = v10;
      v14 = v13;
      v15 = [v12 identifier];
      v16 = v54;
      sub_257ECCCD0();

      sub_257ECCCA0();
      (*v49)(v16, v55);
      v17 = sub_257ECF4C0();

      v10 = [v14 childNodeWithName:v17 recursively:0];

      if (!v10)
      {
        v10 = v2;
LABEL_31:

LABEL_32:
        return;
      }

      type metadata accessor for Plane();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {

        goto LABEL_31;
      }

      v19 = v18;
      v20 = OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode;
      v21 = [*(v18 + OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode) geometry];
      if (v21)
      {
        v22 = v21;
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (v23)
        {
          v24 = v23;
          v25 = [v12 planeExtent];
          [v25 width];
          v27 = v26;

          [v24 setWidth_];
          v28 = [v12 planeExtent];
          [v28 height];
          v30 = v29;

          a1 = v42;
          [v24 setHeight_];
          v31 = *&v19[v20];
          [v12 center];
          v33 = v32;
          HIDWORD(v33) = HIDWORD(v46);
          v46 = v33;
          [v31 setSimdPosition_];

          v22 = v31;
        }
      }

      v34 = v56;
      sub_257ECFBB0();
      v35 = (*v48)(v34, v57);
      if (v35 == v47)
      {
        goto LABEL_18;
      }

      if (v35 != v44)
      {
        v8 = 16;
        if (v35 == v43 || v35 == v41)
        {
          goto LABEL_5;
        }

        if (v35 != v40)
        {
          v8 = 1;
          if (v35 == v39)
          {
            goto LABEL_5;
          }

          v8 = 16;
          if (v35 == v38 || v35 == v37)
          {
            goto LABEL_5;
          }

LABEL_18:
          (*v45)(v56, v57);
        }

        v8 = 1;
        goto LABEL_5;
      }

      v8 = 16;
LABEL_5:
      [*&v19[v20] setCategoryBitMask_];
      v4 = v10;
      [v2 transform];
      [v19 setSimdTransform_];

      ++v7;
      if (v58 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }
}

uint64_t type metadata accessor for Occupant()
{
  result = qword_27F8F64C0;
  if (!qword_27F8F64C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257C58340()
{
  result = sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    result = sub_257ECCC80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_257C5840C()
{
  result = qword_27F8F64F0;
  if (!qword_27F8F64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F64F0);
  }

  return result;
}

unint64_t sub_257C58460()
{
  result = qword_27F8F6500;
  if (!qword_27F8F6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6500);
  }

  return result;
}

unint64_t sub_257C584B4()
{
  result = qword_27F8F6510;
  if (!qword_27F8F6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6510);
  }

  return result;
}

unint64_t sub_257C58508()
{
  result = qword_27F8F6520;
  if (!qword_27F8F6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6520);
  }

  return result;
}

unint64_t sub_257C5855C()
{
  result = qword_27F8F6530;
  if (!qword_27F8F6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6530);
  }

  return result;
}

uint64_t sub_257C585B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257C167C4;

  return sub_257C55B98(a1, v4);
}

unint64_t sub_257C58668()
{
  result = qword_27F8F6560;
  if (!qword_27F8F6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6560);
  }

  return result;
}

unint64_t sub_257C586BC()
{
  result = qword_27F8F6570;
  if (!qword_27F8F6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6570);
  }

  return result;
}

uint64_t sub_257C58710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C58770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C587D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Occupant();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257C5885C()
{
  result = qword_27F8FA5D0;
  if (!qword_27F8FA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5D0);
  }

  return result;
}

unint64_t sub_257C58960()
{
  result = qword_27F8F6600;
  if (!qword_27F8F6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6600);
  }

  return result;
}

uint64_t sub_257C58A64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_257C58AF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257C167C4;

  return sub_257C4B258(a1, v4);
}

uint64_t sub_257C58BB4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_257C58C58(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 != 2)
  {
    if (a12 == 1)
    {
    }

    else
    {
      if (a12)
      {
        return result;
      }
    }
  }
}

uint64_t sub_257C58CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C44258(a1, v4, v5, v6, (v1 + 6));
}

unint64_t sub_257C58E8C()
{
  result = qword_27F8F6668;
  if (!qword_27F8F6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6668);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257C58F20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257C414A8(a1, v4, v5, v6);
}

uint64_t sub_257C58FD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257C49704(a1, v1);
}

uint64_t sub_257C5906C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return sub_257C0334C(a1, a2, v6);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v4 = vsubq_f32(a1, a2);
  v5 = vmulq_f32(v4, v4);
  v6 = vaddq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))));
  v9 = v8 + v8;
  if ((v8 + v8) != 0.0)
  {
    sinf(v9);
  }

  if ((v9 * 0.75) != 0.0)
  {
    sinf(v9 * 0.75);
  }

  v10 = v9 * 0.25;
  if (v10 != 0.0)
  {
    sinf(v10);
  }
}

id MAGDocumentData.pixelBuffer.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *MAGDocumentData.image.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

Swift::String __swiftcall DocumentPosition.localizedGuidance()()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

MagnifierSupport::DocumentPosition __swiftcall DocumentPosition.mappedForDevice(isIPad:rotationAngle:)(MagnifierSupport::DocumentPosition isIPad, Swift::Double_optional rotationAngle)
{
  v5 = *v4;
  if ((isIPad & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((v2 & 1) != 0 || *&rotationAngle.is_nil == 0.0)
  {
    if (*v4 > 3u)
    {
      if (*v4 > 5u)
      {
        if (v5 == 6)
        {
          LOBYTE(v5) = 7;
        }

        else
        {
          LOBYTE(v5) = 5;
        }
      }

      else if (v5 == 4)
      {
        LOBYTE(v5) = 6;
      }

      else
      {
        LOBYTE(v5) = 4;
      }
    }

    else if (*v4 > 1u)
    {
      if (v5 == 2)
      {
        *v3 = 0;
        return isIPad;
      }

      LOBYTE(v5) = 1;
    }

    else if (*v4)
    {
      LOBYTE(v5) = 2;
    }

    else
    {
      LOBYTE(v5) = 3;
    }

    goto LABEL_22;
  }

  if (*&rotationAngle.is_nil == 90.0)
  {
LABEL_22:
    *v3 = v5;
    return isIPad;
  }

  if (*&rotationAngle.is_nil == 180.0)
  {
    sub_257C59918(v3);
  }

  else if (*&rotationAngle.is_nil == 270.0)
  {
    sub_257C5993C(v3);
  }

  else
  {
    sub_257C598F4(v3);
  }

  return isIPad;
}

uint64_t DocumentPosition.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

void *MAGDocumentFramingService.__allocating_init(eventHandler:frameProviderService:captureService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *MAGDocumentFramingService.init(eventHandler:frameProviderService:captureService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_257C59A40(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 80) = a2;
  *(v5 + 88) = v4;
  *(v5 + 37) = a4;
  *(v5 + 36) = a3;
  *(v5 + 72) = a1;
  v6 = sub_257ED03D0();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  sub_257ECF900();
  *(v5 + 120) = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  *(v5 + 128) = v7;
  *(v5 + 136) = v8;

  return MEMORY[0x2822009F8](sub_257C59B74, v7, v8);
}

uint64_t sub_257C59B74()
{
  if ((*(v0 + 80) & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 33) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 34)))
  {
LABEL_6:

    v1 = *(v0 + 72);
LABEL_7:
    *v1 = 0u;
    v1[1] = 0u;

    v2 = *(v0 + 8);

    return v2();
  }

  if (*(v0 + 37) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 35) && *(v0 + 35) != 1)
    {
    }

    else
    {
      v4 = sub_257ED0640();

      if ((v4 & 1) == 0)
      {
        v1 = *(v0 + 72);

        goto LABEL_7;
      }
    }
  }

  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_257C59E74;

  return MAGFrameProviderService.currentFrame.getter();
}

uint64_t sub_257C59E74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_257C5B33C;
  }

  else
  {
    v7 = sub_257C59FE4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_257C59FE4()
{
  v1 = *(v0 + 152);
  sub_257BE9394(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257C5D988(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v3 = sub_257ECF3C0();

  v4 = [v2 initWithCVPixelBuffer:v1 options:v3];
  *(v0 + 168) = v4;

  v5 = [objc_allocWithZone(MEMORY[0x277CE2C68]) init];
  *(v0 + 176) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257ED9BF0;
  *(v6 + 32) = v5;
  sub_257BD2C2C(0, &qword_27F8F5FD8);
  v7 = v5;
  v8 = sub_257ECF7F0();

  *(v0 + 64) = 0;
  v9 = [v4 performRequests:v8 error:v0 + 64];

  v10 = *(v0 + 64);
  if (v9)
  {
    v11 = v10;
    v12 = [v7 results];
    if (v12)
    {
      v13 = v12;
      sub_257BD2C2C(0, &qword_27F8F6680);
      v14 = sub_257ECF810();

      if (v14 >> 62)
      {
        if (sub_257ED0210())
        {
          goto LABEL_5;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C72E20](0, v14);
        }

        else
        {
          if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v15 = *(v14 + 32);
        }

        v16 = v15;
        *(v0 + 184) = v15;

        v17 = swift_task_alloc();
        *(v0 + 192) = v17;
        *v17 = v0;
        v17[1] = sub_257C5A430;

        return sub_257C5C020(v16);
      }
    }

    v24 = *(v0 + 72);

    *v24 = 0u;
    v24[1] = 0u;

    v23 = *(v0 + 8);
  }

  else
  {
    v19 = *(v0 + 152);
    v20 = v10;

    v21 = sub_257ECC9F0();

    swift_willThrow();
    sub_257BEBEF0();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 2;
    *(v22 + 24) = 4;
    swift_willThrow();

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_257C5A430(char a1)
{
  v2 = *v1;
  *(*v1 + 38) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_257C5A58C, v4, v3);
}

uint64_t sub_257C5A58C()
{
  if (*(v0 + 38) == 1)
  {
    if (*(v0 + 36) == 1)
    {
      v1 = *(v0 + 184);
      v2 = *(v0 + 152);
      CVPixelBufferGetWidth(v2);
      CVPixelBufferGetHeight(v2);
      v3 = v1;
      [v3 boundingBox];
      CGRectGetMinX(v28);
      [v3 boundingBox];
      CGRectGetMinY(v29);
      [v3 boundingBox];
      CGRectGetWidth(v30);
      [v3 boundingBox];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v31.origin.x = v5;
      v31.origin.y = v7;
      v31.size.width = v9;
      v31.size.height = v11;
      CGRectGetHeight(v31);
      v13 = CGSizeMake(v12);
      *(v0 + 200) = _s16MagnifierSupport13MAGImageUtilsO15cropPixelBuffer_0E4RectSo11CVBufferRefaSgAG_So6CGRectVtFZ_0(v2, v13, v14, v15, v16);
      *(v0 + 40) = 0;
      v17 = v0 + 40;
      *(v0 + 48) = 0;
      *(v0 + 56) = 2;
      v18 = swift_task_alloc();
      *(v0 + 208) = v18;
      *v18 = v0;
      v19 = sub_257C5A93C;
    }

    else
    {
      *(v0 + 16) = 0;
      v17 = v0 + 16;
      *(v0 + 24) = 0;
      *(v0 + 32) = 2;
      v18 = swift_task_alloc();
      *(v0 + 224) = v18;
      *v18 = v0;
      v19 = sub_257C5AB8C;
    }

    v18[1] = v19;

    return MAGAdvancedEventHandler.send(_:)(v17);
  }

  else if (*(v0 + 80))
  {
    sub_257ED06F0();
    v20 = swift_task_alloc();
    *(v0 + 240) = v20;
    *v20 = v0;
    v20[1] = sub_257C5ADCC;

    return sub_257C5CFB8(3000000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v0 + 168);
    v25 = *(v0 + 72);

    *v25 = 0u;
    v25[1] = 0u;

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_257C5A93C()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  sub_257C5D470(*(v2 + 40), *(v2 + 48), *(v2 + 56));
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_257C5B42C;
  }

  else
  {
    v5 = sub_257C5AAB0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C5AAB0()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 72);

  *v5 = v1;
  v5[1] = v2;
  v5[2] = 0;
  v5[3] = 0;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257C5AB8C()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  sub_257C5D470(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_257C5B544;
  }

  else
  {
    v5 = sub_257C5AD00;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C5AD00()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);

  *v4 = v3;
  v4[1] = v1;
  v4[2] = 0;
  v4[3] = 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_257C5ADCC()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 248) = v0;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    (*(v5 + 8))(v4, v6);
    v7 = *(v2 + 128);
    v8 = *(v2 + 136);

    return MEMORY[0x2822009F8](sub_257C5B168, v7, v8);
  }

  else
  {
    v9 = *(v2 + 80);
    (*(v5 + 8))(v4, v6);
    v10 = swift_task_alloc();
    *(v2 + 256) = v10;
    *v10 = v3;
    v10[1] = sub_257C5B000;
    v11 = *(v2 + 37);
    v12 = *(v2 + 36);
    v13 = *(v2 + 72);

    return sub_257C59A40(v13, v9 - 1, v12, v11);
  }
}

uint64_t sub_257C5B000()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_257C5B654;
  }

  else
  {
    v5 = sub_257C5B278;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257C5B168()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);

  v4 = *(v0 + 248);
  sub_257BEBEF0();
  swift_allocError();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 2;
  *(v5 + 24) = 4;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257C5B278()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t sub_257C5B33C()
{

  v1 = *(v0 + 160);
  sub_257BEBEF0();
  swift_allocError();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 2;
  *(v2 + 24) = 4;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C5B42C()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  v5 = *(v0 + 216);
  sub_257BEBEF0();
  swift_allocError();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 2;
  *(v6 + 24) = 4;
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_257C5B544()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);

  v4 = *(v0 + 232);
  sub_257BEBEF0();
  swift_allocError();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 2;
  *(v5 + 24) = 4;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257C5B654()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];

  v5 = v0[33];
  sub_257BEBEF0();
  swift_allocError();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 2;
  *(v6 + 24) = 4;
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_257C5B760(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_257ECDA30();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_257ECF900();
  v2[8] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();
  v2[9] = v4;
  v2[10] = v5;

  return MEMORY[0x2822009F8](sub_257C5B888, v4, v5);
}

uint64_t sub_257C5B888()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257C5B94C;

  return MAGFrameProviderService.currentFrame.getter();
}

uint64_t sub_257C5B94C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_257C5BF30;
  }

  else
  {
    v7 = sub_257C5BABC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_257C5BABC()
{
  v1 = v0[12];

  v2 = v1;
  sub_257BE9394(MEMORY[0x277D84F90]);
  v3 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257C5D988(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v4 = sub_257ECF3C0();

  v5 = [v3 initWithCVPixelBuffer:v2 options:v4];

  v6 = [objc_allocWithZone(MEMORY[0x277CE2C68]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257ED9BF0;
  *(v7 + 32) = v6;
  sub_257BD2C2C(0, &qword_27F8F5FD8);
  v8 = v6;
  v9 = sub_257ECF7F0();

  v0[2] = 0;
  v10 = [v5 performRequests:v9 error:v0 + 2];

  v11 = v0[2];
  if (!v10)
  {
    v20 = v0[12];
    v21 = v11;
    v22 = sub_257ECC9F0();

    swift_willThrow();
    sub_257BEBEF0();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 2;
    *(v23 + 24) = 4;
    swift_willThrow();

    v24 = v0[1];
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v8 results];
  if (v13)
  {
    v14 = v13;
    sub_257BD2C2C(0, &qword_27F8F6680);
    v15 = sub_257ECF810();

    if (v15 >> 62)
    {
      if (sub_257ED0210())
      {
        goto LABEL_5;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259C72E20](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v16 = *(v15 + 32);
      }

      v17 = v16;
      v18 = v0[12];
      v19 = v0[3];

      *v19 = v18;
      v19[1] = v17;
      v19[2] = 0;
      v19[3] = 0;
      goto LABEL_16;
    }
  }

  sub_257ECD340();
  v25 = sub_257ECDA20();
  v26 = sub_257ECFC00();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_257BAC000, v25, v26, "No documents found", v27, 2u);
    MEMORY[0x259C74820](v27, -1, -1);
    v28 = v0[12];
    v29 = v8;
    v8 = v25;
  }

  else
  {
    v29 = v5;
    v5 = v0[12];
    v28 = v25;
  }

  v31 = v0[6];
  v30 = v0[7];
  v32 = v0[5];
  v33 = v0[3];

  (*(v31 + 8))(v30, v32);
  *v33 = 0u;
  v33[1] = 0u;
LABEL_16:

  v24 = v0[1];
LABEL_17:

  return v24();
}

uint64_t sub_257C5BF30()
{

  v1 = *(v0 + 104);
  sub_257BEBEF0();
  swift_allocError();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 2;
  *(v2 + 24) = 4;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C5C020(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_257ECDA30();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C5C0E0, 0, 0);
}

uint64_t sub_257C5C0E0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  [v2 topLeft];
  *(v0 + 128) = v3;
  [v2 bottomLeft];
  *(v0 + 136) = v4;
  [v2 topLeft];
  *(v0 + 144) = v5;
  [v2 topRight];
  *(v0 + 152) = v6;
  [v2 topRight];
  *(v0 + 160) = v7;
  [v2 bottomRight];
  *(v0 + 168) = v8;
  [v2 bottomLeft];
  *(v0 + 176) = v9;
  [v2 bottomRight];
  *(v0 + 184) = v10;
  [v2 confidence];
  *(v0 + 192) = *(v1 + 16);
  if (v11 <= 0.5)
  {
    *(v0 + 16) = xmmword_257EDA120;
    v13 = v0 + 16;
    *(v0 + 32) = 2;
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v16 = sub_257C5C7E4;
  }

  else
  {
    v12 = *(v0 + 88);
    *(v0 + 40) = v12;
    v13 = v0 + 40;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;
    v14 = v12;
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v16 = sub_257C5C2B0;
  }

  v15[1] = v16;

  return MAGAdvancedEventHandler.send(_:)(v13);
}

uint64_t sub_257C5C2B0()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  sub_257C5D470(*(v2 + 40), *(v2 + 48), *(v2 + 56));
  if (v0)
  {
    v3 = sub_257C5CA78;
  }

  else
  {
    v3 = sub_257C5C3D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_257C5C3D0()
{
  if ((*(v0 + 136) + *(v0 + 128)) * 0.5 < 0.075)
  {
    v1 = (*(v0 + 152) + *(v0 + 144)) * 0.5;
    if (v1 <= 0.925)
    {
      v1 = (*(v0 + 184) + *(v0 + 176)) * 0.5;
    }

    goto LABEL_12;
  }

  v1 = (*(v0 + 152) + *(v0 + 144)) * 0.5;
  if ((*(v0 + 168) + *(v0 + 160)) * 0.5 > 0.925)
  {
    if (v1 <= 0.925)
    {
      v1 = (*(v0 + 184) + *(v0 + 176)) * 0.5;
    }

    goto LABEL_12;
  }

  if (v1 > 0.925 || (v1 = (*(v0 + 184) + *(v0 + 176)) * 0.5, v1 < 0.075))
  {
LABEL_12:
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    v2 = byte_27F8F8D88;
    if (byte_27F8F8D88 == 1 && *(*(*(v0 + 96) + 32) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator))
    {
      v3 = byte_27F8F8D88;
      [*(*(*(v0 + 96) + 32) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator) videoRotationAngleForHorizonLevelCapture];
      v2 = v3;
      v4 = LOBYTE(v1);
    }

    else
    {
      v4 = 0;
    }

    DocumentPosition.mappedForDevice(isIPad:rotationAngle:)(v2, *&v1);
    *(v0 + 64) = DocumentPosition.localizedGuidance()();
    *(v0 + 80) = 0;
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = sub_257C5C670;

    return MAGAdvancedEventHandler.send(_:)(v0 + 64);
  }

  v7 = *(v0 + 8);

  return v7(1);
}

uint64_t sub_257C5C670()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 224) = v0;

  sub_257C5D470(*(v2 + 64), *(v2 + 72), *(v2 + 80));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257C5CB98, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4(0);
  }
}

uint64_t sub_257C5C7E4()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 240) = v0;

  sub_257C5D470(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257C5C958, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4(0);
  }
}

uint64_t sub_257C5C958()
{
  v1 = v0[30];
  sub_257ECD340();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFC00();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Could not send framing guidance", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_257C5CA78()
{
  v1 = v0[26];
  sub_257ECD340();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFC00();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Could not send framing guidance", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_257C5CB98()
{
  v1 = v0[28];
  sub_257ECD340();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFC00();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Could not send framing guidance", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9(0);
}

uint64_t MAGDocumentFramingService.deinit()
{

  return v0;
}

uint64_t MAGDocumentFramingService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257C5CD44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257C5CDB8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257C5CE38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257C5CEC0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257C5CF3C(char *a1)
{
  sub_257D719E4(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257C5CFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_257ED03C0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_257C5D0B8, 0, 0);
}

uint64_t sub_257C5D0B8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_257ED03D0();
  v5 = sub_257C5D988(&qword_27F8F6690, MEMORY[0x277D85928]);
  sub_257ED06D0();
  sub_257C5D988(&qword_27F8F6698, MEMORY[0x277D858F8]);
  sub_257ED03E0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_257C5D248;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_257C5D248()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257C5D404, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_257C5D404()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_257C5D470(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_257C5D494()
{
  result = qword_27F8F6688;
  if (!qword_27F8F6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6688);
  }

  return result;
}

uint64_t sub_257C5D4E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_257C5D530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of MAGDocumentFramingService.gatherDocumentWithFeedback(maxFeedbackAttempts:cropToDocument:checkForDocumentMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_257C167C4;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MAGDocumentFramingService.documentRequestFromBuffer()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257BE3DE0;

  return v6(a1);
}

uint64_t sub_257C5D988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257C5D9D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MFColorPicker();
  sub_257BE401C(v1 + *(v10 + 28), v9, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE1D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_257C5DBD8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v2 = type metadata accessor for MFColorPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6770);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_257C5F098(v1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_257C5F0FC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6780);
  sub_257BD2D4C(&qword_27F8F6788, &qword_27F8F6780);
  sub_257ECEEA0();
  *&v7[*(v5 + 36)] = sub_257ECED90();
  v10 = *(v1 + 24);
  LOBYTE(v15) = *(v1 + 16);
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
  sub_257ECEE80();
  v11 = *(v1 + 48);
  v17 = *(v1 + 32);
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6728);
  sub_257ECEF50();
  sub_257C5F1C8();
  sub_257ECEB00();

  return sub_257BE4084(v7, &unk_27F8F6770);
}

uint64_t sub_257C5DF18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_257ECE5B0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67C0);
  return sub_257C5DF70(a1, a2 + *(v4 + 44));
}

uint64_t sub_257C5DF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67C8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  *v9 = sub_257ECE500();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67D0);
  sub_257C5E0D8(a1, &v9[*(v10 + 44)]);
  sub_257BE401C(v9, v7, &qword_27F8F67C8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67D8);
  sub_257BE401C(v7, a2 + *(v11 + 48), &qword_27F8F67C8);
  v12 = a2 + *(v11 + 64);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_257BE4084(v9, &qword_27F8F67C8);
  return sub_257BE4084(v7, &qword_27F8F67C8);
}

void sub_257C5E0D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_257ECEE20();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECE1D0();
  v89 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67E0);
  MEMORY[0x28223BE20](v84);
  v8 = &v77 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F67E8);
  v9 = MEMORY[0x28223BE20](v85);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v77 - v12;
  v86 = a1;
  v14 = *a1;
  v15 = a1[1];
  *&v110 = v14;
  *(&v110 + 1) = v15;
  sub_257BDAB08();

  v16 = sub_257ECEAF0();
  v18 = v17;
  *&v110 = v16;
  *(&v110 + 1) = v17;
  v20 = v19 & 1;
  LOBYTE(v111) = v19 & 1;
  *(&v111 + 1) = v21;
  (*(v89 + 104))(v8, *MEMORY[0x277CDFA10], v5);
  sub_257C5F2AC();
  v88 = v5;
  if (sub_257ECF450())
  {
    v82 = v11;
    sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0);
    sub_257ECEBB0();
    sub_257BE4084(v8, &qword_27F8F67E0);
    sub_257C0300C(v16, v18, v20);

    *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6808) + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v23 = v86;
    v24 = &v13[*(v85 + 36)];
    *v24 = KeyPath;
    v24[8] = 0;
    v25 = v23[6];
    v110 = *(v23 + 2);
    *&v111 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6728);
    MEMORY[0x259C71A50](&v100, v26);
    v27 = v100;
    v81 = v13;
    if (v100)
    {
      sub_257ECC3F0();
      v28 = v87;
      sub_257C5D9D0(v87);
      v29 = sub_257ECE1C0();
      v30 = *(v89 + 8);
      v30(v28, v88);
      if (v29)
      {
        v31 = [objc_opt_self() mainScreen];
        [v31 bounds];
      }

      v44 = v87;
      sub_257C5D9D0(v87);
      v45 = sub_257ECE1C0();
      v30(v44, v88);
      if (v45)
      {
        v46 = [objc_opt_self() mainScreen];
        [v46 bounds];
      }

      sub_257ECF060();
      sub_257ECE080();
      *&v90[6] = v107;
      *&v90[22] = v108;
      *&v90[38] = v109;
      v47 = sub_257ECE980();
      sub_257ECDF40();
      *(v97 + 10) = *v90;
      v106 = 0;
      *&v97[0] = v27;
      WORD4(v97[0]) = 256;
      *(&v97[1] + 10) = *&v90[16];
      *(&v97[2] + 10) = *&v90[32];
      *(&v97[3] + 1) = *&v90[46];
      LOBYTE(v98) = v47;
      DWORD1(v98) = *(&v91 + 3);
      *(&v98 + 1) = v91;
      *(&v98 + 1) = v48;
      *&v99[0] = v49;
      *(&v99[0] + 1) = v50;
      *&v99[1] = v51;
      BYTE8(v99[1]) = 0;
      v113 = v97[3];
      v114 = v98;
      *v115 = v99[0];
      *&v115[9] = *(v99 + 9);
      v110 = v97[0];
      v111 = v97[1];
      v112 = v97[2];
      v105 = 0;
      v115[25] = 0;
      sub_257BE401C(v97, &v100, &qword_27F8F6810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6818);
      sub_257C5F3BC(&qword_27F8F6820, &qword_27F8F6810, &unk_257EDD210, sub_257C5F304);
      sub_257C5F3BC(&qword_27F8F6848, &qword_27F8F6818, &unk_257EDD218, sub_257C0DC34);
      sub_257ECE6F0();

      sub_257BE4084(v97, &qword_27F8F6810);
      v114 = v103;
      *v115 = v104[0];
      *&v115[10] = *(v104 + 10);
      v110 = v100;
      v111 = v101;
      v112 = *v102;
      v113 = *&v102[16];
LABEL_14:
      v66 = v81;
      v65 = v82;
      sub_257BE401C(v81, v82, &unk_27F8F67E8);
      v96[0] = *v115;
      *(v96 + 10) = *&v115[10];
      v91 = v110;
      v92 = v111;
      v94 = v113;
      v95 = v114;
      v93 = v112;
      v67 = v83;
      sub_257BE401C(v65, v83, &unk_27F8F67E8);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6860);
      v69 = v67 + *(v68 + 48);
      *v69 = 0;
      *(v69 + 8) = 1;
      v70 = *(v68 + 64);
      v71 = v92;
      v97[0] = v91;
      v97[1] = v92;
      v72 = v93;
      v73 = v94;
      v97[2] = v93;
      v97[3] = v94;
      v74 = v95;
      v98 = v95;
      v99[0] = v96[0];
      *(v99 + 10) = *(v96 + 10);
      v75 = (v67 + v70);
      *v75 = v91;
      v75[1] = v71;
      *(v75 + 90) = *(v96 + 10);
      v76 = v96[0];
      v75[4] = v74;
      v75[5] = v76;
      v75[2] = v72;
      v75[3] = v73;
      sub_257BE401C(v97, &v100, &qword_27F8F6868);
      sub_257BE4084(v66, &unk_27F8F67E8);
      v103 = v95;
      v104[0] = v96[0];
      *(v104 + 10) = *(v96 + 10);
      v100 = v91;
      v101 = v92;
      *v102 = v93;
      *&v102[16] = v94;
      sub_257BE4084(&v100, &qword_27F8F6868);
      sub_257BE4084(v65, &unk_27F8F67E8);
      return;
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_257ECF4C0();
    v35 = [objc_opt_self() imageNamed:v34 inBundle:v33];

    if (v35)
    {
      sub_257ECEE00();
      v37 = v78;
      v36 = v79;
      v38 = v80;
      (*(v79 + 104))(v78, *MEMORY[0x277CE0FE0], v80);
      v39 = sub_257ECEE40();

      (*(v36 + 8))(v37, v38);
      v40 = v87;
      sub_257C5D9D0(v87);
      v41 = sub_257ECE1C0();
      v42 = *(v89 + 8);
      v42(v40, v88);
      if (v41)
      {
        v43 = [objc_opt_self() mainScreen];
        [v43 bounds];
      }

      v52 = v87;
      sub_257C5D9D0(v87);
      v53 = sub_257ECE1C0();
      v42(v52, v88);
      if (v53)
      {
        v54 = [objc_opt_self() mainScreen];
        [v54 bounds];
      }

      sub_257ECF060();
      sub_257ECE080();
      v55 = v107;
      v56 = BYTE8(v107);
      v57 = v108;
      v58 = BYTE8(v108);
      v59 = v109;
      v60 = sub_257ECE980();
      sub_257ECDF40();
      LOBYTE(v97[0]) = v56;
      LOBYTE(v91) = v58;
      v106 = 0;
      v105 = 1;
      *&v100 = v39;
      *(&v100 + 1) = v55;
      LOBYTE(v101) = v56;
      *(&v101 + 1) = v57;
      v102[0] = v58;
      *&v102[8] = v59;
      v102[24] = v60;
      *&v103 = v61;
      *(&v103 + 1) = v62;
      *&v104[0] = v63;
      *(&v104[0] + 1) = v64;
      LOBYTE(v104[1]) = 0;
      BYTE9(v104[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6818);
      sub_257C5F3BC(&qword_27F8F6820, &qword_27F8F6810, &unk_257EDD210, sub_257C5F304);
      sub_257C5F3BC(&qword_27F8F6848, &qword_27F8F6818, &unk_257EDD218, sub_257C0DC34);
      sub_257ECE6F0();
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257C5ED24(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720);
  sub_257ECEF40();
  v1[OBJC_IVAR____TtCV16MagnifierSupportP33_128412983A29D0B4093EE0414FDFF2BF17MFColorPickerView11Coordinator_didPresent] = 0;
}

id sub_257C5EDD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFColorPickerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MFColorPicker()
{
  result = qword_27F8F6740;
  if (!qword_27F8F6740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257C5EF1C()
{
  sub_257C5EFC8();
  if (v0 <= 0x3F)
  {
    sub_257C5F018();
    if (v1 <= 0x3F)
    {
      sub_257C09FE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257C5EFC8()
{
  if (!qword_27F8F6750)
  {
    v0 = sub_257ECEE90();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F6750);
    }
  }
}

void sub_257C5F018()
{
  if (!qword_27F8F6758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6760);
    v0 = sub_257ECEF60();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F6758);
    }
  }
}

uint64_t sub_257C5F098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFColorPicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C5F0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFColorPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C5F160()
{
  type metadata accessor for MFColorPicker();

  return sub_257C5DEB8();
}

unint64_t sub_257C5F1C8()
{
  result = qword_27F8F6798;
  if (!qword_27F8F6798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6770);
    sub_257BD2D4C(&qword_27F8F67A0, &qword_27F8F67A8);
    sub_257BD2D4C(&qword_27F8F67B0, &qword_27F8F67B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6798);
  }

  return result;
}

unint64_t sub_257C5F2AC()
{
  result = qword_27F8F67F8;
  if (!qword_27F8F67F8)
  {
    sub_257ECE1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F67F8);
  }

  return result;
}

unint64_t sub_257C5F304()
{
  result = qword_27F8F6828;
  if (!qword_27F8F6828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6830);
    sub_257BD2D4C(&qword_27F8F6838, &qword_27F8F6840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6828);
  }

  return result;
}

uint64_t sub_257C5F3BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257C5F448()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C5F558()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity), v16, 0x128uLL);
            return sub_257C109C8(v15);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

id sub_257C5F824()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (result)
  {
    v6 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v7 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return sub_257C5F558();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_257C5F9C8(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257C5FB84(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v7], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_availablePauseDetectionModeFeedbacks] = &unk_2869040B8;
  v8 = OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  [v11 setClipsToBounds_];
  *&v3[v8] = v11;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_257C5FD88(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v4], __src, 0x128uLL);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_availablePauseDetectionModeFeedbacks] = &unk_2869040E0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  [v8 setClipsToBounds_];
  *&v1[v5] = v8;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_speechFeedbackSubscription] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_257C60008(void *a1)
{
  v3 = v1;
  v5 = sub_257ECF4C0();
  v6 = sub_257ECCE30();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  v8 = sub_257ECCEA0();
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  sub_257C5F558();
  if (v10 != 2)
  {
    if (v10)
    {
      v11 = [v7 textLabel];
      if (v11)
      {
        v12 = v11;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v14 = [objc_opt_self() bundleForClass_];
        v15 = sub_257ECF4C0();
        v16 = sub_257ECF4C0();
        v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

        if (!v17)
        {
          sub_257ECF500();
          v17 = sub_257ECF4C0();
        }

        [v12 setText_];
      }

      v18 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v19 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v37 = *v19;
      v39 = *(v19 + 8);
      LOBYTE(v41) = *(v19 + 16);
      v20 = qword_2815447E0;

      if (v20 != -1)
      {
        v21 = swift_once();
      }

      MEMORY[0x28223BE20](v21);
      sub_257ECFD50();

      [v18 setOn_];
      [v18 addTarget:v3 action:sel_didToggleDetectLanguagesSwitch_ forControlEvents:4096];
      [v7 setAccessoryView_];
      [v7 setAccessoryType_];
      type metadata accessor for MAGUtilities();
      v22 = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      v24 = sub_257ECF4C0();
      v25 = sub_257ECF4C0();
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      if (!v26)
      {
        sub_257ECF500();
        v26 = sub_257ECF4C0();
      }

      [v7 setAccessibilityLabel_];

LABEL_28:
      return v7;
    }

    v27 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_availablePauseDetectionModeFeedbacks);
    v28 = sub_257ECCE60();
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v28 < *(v27 + 16))
    {
      v27 = *(v27 + v28 + 32);
      v29 = [v7 textLabel];
      if (v29)
      {
        v30 = v29;
        sub_257CAA3E8();
        v31 = sub_257ECF4C0();

        [v30 setText_];
      }

      v2 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_32:
    swift_once();
LABEL_25:
    v32 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
    swift_beginAccess();
    v38 = *v32;
    v40 = v32[1];
    v42 = v32[2];
    v33 = qword_2815447E0;

    if (v33 != -1)
    {
      v34 = swift_once();
    }

    MEMORY[0x28223BE20](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
    sub_257ECFD50();

    v35 = sub_257C592D0(v27, v43);

    [v2 setOn_];
    v26 = v2;
    [v26 setTag_];
    [v26 addTarget:v3 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    [v7 setAccessoryView_];

    [v7 setAccessoryType_];
    goto LABEL_28;
  }

  return v7;
}

id sub_257C607D0(void *a1)
{
  v2 = v1;
  sub_257C5F558();
  result = [a1 tag];
  if (result <= 2)
  {
    v5 = result;
    v6 = v2 + OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity), 0x128uLL);
    result = sub_257C108C4(__dst);
    if (result != 1)
    {
      v7 = *(v6 + 208);

      if ([a1 isOn])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F68A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v5;
        sub_257EB0EA4(inited);
        sub_257C6099C(v7);
      }

      else
      {
        v9 = *(v7 + 16);
        if (v9)
        {
          v10 = (v7 + 32);
          v11 = MEMORY[0x277D84F90];
          do
          {
            v15 = *v10++;
            v14 = v15;
            if (v15 != v5)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_257BF28E4(0, *(v11 + 16) + 1, 1);
              }

              v13 = *(v11 + 16);
              v12 = *(v11 + 24);
              if (v13 >= v12 >> 1)
              {
                sub_257BF28E4((v12 > 1), v13 + 1, 1);
              }

              *(v11 + 16) = v13 + 1;
              *(v11 + v13 + 32) = v14;
            }

            --v9;
          }

          while (v9);
        }

        else
        {
          v11 = MEMORY[0x277D84F90];
        }

        sub_257C6099C(v11);
      }
    }
  }

  return result;
}

uint64_t sub_257C6099C(uint64_t a1)
{
  sub_257C5F558();
  v7 = a1;

  sub_257D6D200(&v7);
  v3 = v7;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport52ActivityDetectionModeUniversalSettingsViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C(*(v4 + 208), v3) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_257CE4080(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_257C60E40(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

unint64_t sub_257C60F40()
{
  result = qword_27F8F5560;
  if (!qword_27F8F5560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5560);
  }

  return result;
}

id sub_257C60F8C()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  v11 = sub_257ECCE60();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities];
    if (v11 < *(v12 + 16))
    {
      v40 = v7;
      v13 = v12 + 16 * v11;
      v2 = *(v13 + 32);
      v1 = *(v13 + 40);
      swift_beginAccess();
      v14 = v10[12];
      v15 = v10[13];
      v43[0] = v10[11];
      v43[1] = v14;
      v43[2] = v15;
      v16 = qword_2815447E0;

      if (v16 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  v17 = swift_once();
LABEL_6:
  MEMORY[0x28223BE20](v17);
  *(&v39 - 2) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v18 = v42[0];
  if (*(v42[0] + 16))
  {
    v19 = sub_257C03F6C(v2, v1);
    v21 = v20;

    if (v21)
    {
      v22 = (*(v18 + 56) + 296 * v19);
      memcpy(v41, v22, sizeof(v41));
      memmove(v42, v22, 0x128uLL);
      CGSizeMake(v42);
      sub_257C09C58(v41, v43);

      memcpy(v43, v42, 0x128uLL);
      goto LABEL_11;
    }
  }

  else
  {
  }

  sub_257C10998(v43);
LABEL_11:
  memcpy(v42, &v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityToBeDuped], 0x128uLL);
  memcpy(&v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityToBeDuped], v43, 0x128uLL);
  sub_257BE4084(v42, &unk_27F8F68B0);
  v23 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_commitActivityButton;
  if (!*&v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_commitActivityButton])
  {
    v24 = [objc_opt_self() boldButton];
    v25 = *&v3[v23];
    *&v3[v23] = v24;
    v26 = v24;

    v39 = *&v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityNameOnBoardingController];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    v29 = sub_257ECF4C0();
    v30 = sub_257ECF4C0();
    v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

    if (!v31)
    {
      sub_257ECF500();
      v31 = sub_257ECF4C0();
    }

    if (v26)
    {
      [v26 setTitle:v31 forState:0];

      sub_257ED0040();
      v32 = sub_257ED0030();
      if ((*(*(v32 - 8) + 48))(v9, 1, v32))
      {
        sub_257C3366C(v9, v40);
        sub_257ED0050();
        sub_257BE4084(v9, &unk_27F8F6A10);
      }

      else
      {
        v33 = [objc_opt_self() blackColor];
        sub_257ED0000();
        sub_257ED0050();
      }

      [v26 addTarget:v3 action:sel__commitAndDismiss forControlEvents:64];
      v34 = [objc_opt_self() systemYellowColor];
      [v26 setTintColor_];

      v31 = v26;
      v35 = [v39 buttonTray];
      [v35 addButton_];

      v36 = *&v3[v23];
      if (v36)
      {
        v37 = v36;
        [v37 setEnabled_];
      }
    }
  }

  return [v3 presentViewController:*&v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityNameOnBoardingController] animated:1 completion:0];
}

id sub_257C61578()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityNameOnBoardingController];
  v2 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField) resignFirstResponder];
  v3 = *(v1 + v2);
  v4 = sub_257ECF4C0();
  [v3 setText_];

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_commitActivityButton];
  if (v5)
  {
    [v5 setEnabled_];
  }

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id sub_257C616A8()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v8 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      sub_257C618B0();
      v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityNameOnBoardingController];
      *(v9 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate + 8) = &off_286909698;
      swift_unknownObjectWeakAssign();
      *(v9 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate + 8) = &off_286909668;
      return swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_257C618B0()
{
  v1 = v0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = qword_281548348;
  swift_beginAccess();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  v12[0] = *(v2 + 88);
  v12[1] = v3;
  v12[2] = v4;
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v7 = v13;
  v8 = *(v13 + 16);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = sub_257C63E14(*(v13 + 16), 0, &qword_27F8F5A30);
  v10 = sub_257C67A48(v12, v9 + 4, v8, v7);
  sub_257C02520();
  if (v10 != v8)
  {
    __break(1u);
LABEL_8:

    v9 = MEMORY[0x277D84F90];
  }

  v12[0] = v9;
  sub_257ECC3F0();
  sub_257C63C58(v12);

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities) = v12[0];

  return [*(v1 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView) reloadData];
}

id sub_257C61B24(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];

  return [*&v1[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView] reloadData];
}

id sub_257C61CF8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities] = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v3[v4] = v7;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_commitActivityButton] = 0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    sub_257ECF500();
    v14 = sub_257ECF4C0();
  }

  v15 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityNameOnBoardingController;
  type metadata accessor for ActivityNameOnBoardingController();
  v16 = [v10 bundleForClass_];
  v17 = sub_257ECF4C0();
  v18 = sub_257ECF4C0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_257ECF500();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_257ECF4C0();

  v22 = [v20 initWithTitle:v14 detailText:v21 icon:0];

  *&v3[v15] = v22;
  v23 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityToBeDuped;
  sub_257C10998(__src);
  memcpy(&v3[v23], __src, 0x128uLL);
  if (a2)
  {
    v24 = sub_257ECF4C0();
  }

  else
  {
    v24 = 0;
  }

  v31.receiver = v3;
  v31.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, v24, a3, a1);

  return v25;
}

id sub_257C620EC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities] = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemYellowColor];
  [v5 setTintColor_];

  [v5 setClipsToBounds_];
  *&v1[v2] = v5;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_commitActivityButton] = 0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  v13 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityNameOnBoardingController;
  type metadata accessor for ActivityNameOnBoardingController();
  v14 = [v8 bundleForClass_];
  v15 = sub_257ECF4C0();
  v16 = sub_257ECF4C0();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  sub_257ECF500();
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = sub_257ECF4C0();

  v20 = [v18 initWithTitle:v12 detailText:v19 icon:0];

  *&v1[v13] = v20;
  v21 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityToBeDuped;
  sub_257C10998(__src);
  memcpy(&v1[v21], __src, 0x128uLL);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v26, sel_initWithCoder_, a1);

  if (v22)
  {
  }

  return v22;
}

id sub_257C62550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  memcpy(v20, (v2 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityToBeDuped), sizeof(v20));
  memcpy(v21, (v2 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activityToBeDuped), sizeof(v21));
  result = sub_257C108C4(v21);
  if (result != 1)
  {
    memcpy(v19, &v21[1], sizeof(v19));
    memcpy(v17, v20, sizeof(v17));
    sub_257C09C58(v17, v18);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v7 = qword_281548348;
    LOBYTE(v16[0]) = 0;
    memcpy(v16 + 1, v19, 0x127uLL);
    sub_257D5304C(a1, a2, v16);
    memcpy(v18, v16, sizeof(v18));
    sub_257C63C04(v18);
    sub_257D53434(a1, a2);
    swift_beginAccess();
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    v16[0] = *(v7 + 88);
    v16[1] = v8;
    v16[2] = v9;
    v10 = qword_2815447E0;

    if (v10 != -1)
    {
      v11 = swift_once();
    }

    MEMORY[0x28223BE20](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v12 = *(v15 + 16);
    if (v12)
    {
      v13 = sub_257C63E14(*(v15 + 16), 0, &qword_27F8F5A30);
      v14 = sub_257C67A48(v16, v13 + 4, v12, v15);
      sub_257C02520();
      if (v14 == v12)
      {
LABEL_10:
        v16[0] = v13;
        sub_257ECC3F0();
        sub_257C63C58(v16);

        *(v3 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities) = v16[0];

        return [*(v3 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView) reloadData];
      }

      __break(1u);
    }

    v13 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  return result;
}

id sub_257C62848()
{
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_commitActivityButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

id sub_257C6286C()
{
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_commitActivityButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

unint64_t sub_257C62B54(void *a1)
{
  v3 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  result = sub_257ECCEA0();
  if (result != 1)
  {
    return result;
  }

  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities);
  if (result >= *(v5 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v5 + 16 * result;
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);

  sub_257C62C20(v7, v8);
}

void sub_257C62C20(uint64_t a1, uint64_t a2)
{
  v8 = [objc_allocWithZone(type metadata accessor for ActivityControlsViewController()) init];
  *&v8[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_activityCreatedDelegate + 8] = &off_286909688;
  swift_unknownObjectWeakAssign();
  v5 = &v8[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];
  *v5 = a1;
  *(v5 + 1) = a2;

  v6 = [v2 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v8 animated:1];
  }
}

void sub_257C62E04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities;
  v8 = *(*&v2[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities] + 16);
  if (sub_257ECCE60() < v8)
  {
    v9 = sub_257ECCE60();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *&v2[v7];
      if (v9 < *(v10 + 16))
      {
        v11 = v10 + 16 * v9;
        v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = *(v11 + 40);
        v48 = *(v11 + 32);
        v12 = v48;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v52 = ObjCClassFromMetadata;
        v15 = objc_opt_self();
        v49 = v4;
        v16 = v15;
        v51 = v15;

        v17 = [v16 bundleForClass_];
        v53 = v2;
        v18 = v17;
        v19 = sub_257ECF4C0();
        v20 = sub_257ECF4C0();
        v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

        sub_257ECF500();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_257ED6D30;
        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 64) = sub_257BFB13C();
        *(v22 + 32) = v12;
        *(v22 + 40) = v13;
        v47 = v13;

        sub_257ECF4D0();

        v23 = sub_257ECF4C0();

        v24 = [objc_opt_self() alertControllerWithTitle:v23 message:0 preferredStyle:1];

        v25 = [v51 bundleForClass_];
        v26 = sub_257ECF4C0();
        v27 = sub_257ECF4C0();
        v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

        sub_257ECF500();
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = v49;
        v31 = v50;
        (*(v5 + 16))(v50, a1, v49);
        v32 = (*(v5 + 80) + 40) & ~*(v5 + 80);
        v33 = swift_allocObject();
        v34 = v47;
        *(v33 + 2) = v48;
        *(v33 + 3) = v34;
        *(v33 + 4) = v29;
        (*(v5 + 32))(&v33[v32], v31, v30);
        sub_257ECC3F0();
        v35 = sub_257ECF4C0();

        v58 = sub_257C69900;
        v59 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = sub_257CED4E8;
        v57 = &block_descriptor_19;
        v36 = _Block_copy(&aBlock);

        v37 = objc_opt_self();
        v38 = [v37 actionWithTitle:v35 style:2 handler:v36];
        _Block_release(v36);

        v39 = [v51 bundleForClass_];
        v40 = sub_257ECF4C0();
        v41 = sub_257ECF4C0();
        v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

        sub_257ECF500();
        v43 = sub_257ECF4C0();

        v58 = CGSizeMake;
        v59 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = sub_257CED4E8;
        v57 = &block_descriptor_22;
        v44 = _Block_copy(&aBlock);

        v45 = [v37 actionWithTitle:v43 style:1 handler:v44];
        _Block_release(v44);

        [v24 addAction_];
        [v24 addAction_];
        [v53 presentViewController:v24 animated:1 completion:0];

        return;
      }
    }

    __break(1u);
  }
}

void sub_257C63474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  if (qword_281544FE0 != -1)
  {
    swift_once();
    v7 = a2;
  }

  v8 = qword_281548348;
  sub_257D54B08(v7, a3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = *(v8 + 96);
    v12 = *(v8 + 104);
    v28[0] = *(v8 + 88);
    v28[1] = v11;
    v28[2] = v12;
    v13 = qword_2815447E0;

    if (v13 != -1)
    {
      v14 = swift_once();
    }

    MEMORY[0x28223BE20](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v15 = v29;
    v16 = *(v29 + 16);
    if (v16)
    {
      v17 = sub_257C63E14(*(v29 + 16), 0, &qword_27F8F5A30);
      v18 = sub_257C67A48(v28, v17 + 4, v16, v15);
      sub_257C02520();
      if (v18 == v16)
      {
LABEL_10:
        v28[0] = v17;
        sub_257ECC3F0();
        sub_257C63C58(v28);

        *&v10[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities] = v28[0];

        goto LABEL_11;
      }

      __break(1u);
    }

    v17 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
    v22 = sub_257ECCEB0();
    v23 = *(v22 - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_257ED6D30;
    (*(v23 + 16))(v25 + v24, a5, v22);
    v26 = sub_257ECF7F0();

    [v21 deleteRowsAtIndexPaths:v26 withRowAnimation:0];
  }
}

uint64_t sub_257C63800(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_257C60F8C();
    [*&v5[OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_tableView] reloadData];
  }

  return a3(1);
}

void sub_257C63898(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_257ECC3F0();
  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_257C69978, v8);
}

uint64_t sub_257C6396C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_257C62E04(a6);
  }

  return a3(1);
}

uint64_t sub_257C63B90()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_257DFF3FC();
    sub_257C7C61C();

    sub_257E0EF78(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257C63C58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C671D8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_257C663C8(v5);
  *a1 = v2;
  return result;
}

void *sub_257C63CD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_257C63D68(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_257C63E14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_257C63EB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_257C63F40(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x3759F22983759F23) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

size_t sub_257C64000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_257C64110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6940);
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

void *sub_257C6422C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6958);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257C64360(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257C64494(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257C645BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A90);
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

char *sub_257C646BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A80);
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

char *sub_257C647C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_257C648D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
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

char *sub_257C64A20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470);
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

char *sub_257C64B44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69C0);
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

void *sub_257C64C5C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAEF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257C64DA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A48);
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

char *sub_257C64E98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_257C64FE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6960);
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

char *sub_257C650EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69F0);
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

void *sub_257C651F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F69A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}