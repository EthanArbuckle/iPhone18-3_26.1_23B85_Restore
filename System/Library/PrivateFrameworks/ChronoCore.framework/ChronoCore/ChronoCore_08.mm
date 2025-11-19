uint64_t sub_224AE693C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34E0, &unk_224DC1B70);
  result = sub_224DAF8F8();
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_224DAFE68();
      if (v19)
      {
        MEMORY[0x22AA5E1E0](1);

        sub_224DAEE78();
      }

      else
      {
        MEMORY[0x22AA5E1E0](0);
      }

      result = sub_224DAFEA8();
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

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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
        goto LABEL_31;
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
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_224AE6B90(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3620, &qword_224DB3BF8);
  v10 = sub_224DAF8F8();
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
      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
      result = sub_224DAED88();
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

uint64_t sub_224AE6EB0(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36B8, &unk_224DB3C80);
  v10 = sub_224DAF8F8();
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
      sub_224A33088(&qword_27D6F36A8, &unk_27D6F56A0, &unk_224DB4150);
      result = sub_224DAED88();
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

uint64_t sub_224AE71D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3760, &qword_224DB3D38);
  result = sub_224DAF8F8();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v37 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 40);
      v26 = *(v6 + 40);
      sub_224DAFE68();

      sub_224DAEE78();
      sub_224DAEE78();
      sub_224DAFE88();
      if (v25 != 1)
      {
        MEMORY[0x22AA5E200](v24);
      }

      result = sub_224DAFEA8();
      v6 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v37 + 48) + 48 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      v11 = v38;
      *(v15 + 16) = v23;
      *(v15 + 24) = v22;
      *(v15 + 32) = v24;
      *(v15 + 40) = v25;
      ++*(v37 + 16);
      v3 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_30;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_30:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_224AE74A8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_224DA9908();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3540, &unk_224DB3AE0);
  v10 = sub_224DAF8F8();
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
      sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0]);
      result = sub_224DAED88();
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

uint64_t sub_224AE77C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3610, &qword_224DB3BE8);
  result = sub_224DAF8F8();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_224DAB338();
      sub_224A3CE84(&unk_281350FE0, MEMORY[0x277CBCDA8]);

      result = sub_224DAED88();
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_224AE7A3C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_224DAE588();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35A8, &qword_224DB3B60);
  v10 = sub_224DAF8F8();
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
      sub_224A3CE84(&qword_281350C58, MEMORY[0x277CE3AD8]);
      result = sub_224DAED88();
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

uint64_t sub_224AE7D58(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3668, &qword_224DB3C48);
  v10 = sub_224DAF8F8();
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
      sub_224A33088(&unk_27D6F3B50, &unk_27D6F6570, &qword_224DB3C40);
      result = sub_224DAED88();
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

uint64_t sub_224AE8078(uint64_t a1)
{
  v2 = v1;
  v37 = sub_224DAC268();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3630, &qword_224DB3C08);
  v10 = sub_224DAF8F8();
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
      sub_224A3CE84(&qword_281350E50, MEMORY[0x277CF9978]);
      result = sub_224DAED88();
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

uint64_t sub_224AE8394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3640, &qword_224DB3C18);
  result = sub_224DAF8F8();
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
      sub_224DAFE68();
      sub_224DAEE78();

      result = sub_224DAFEA8();
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

uint64_t sub_224AE8650(uint64_t a1)
{
  v2 = v1;
  v37 = sub_224DAD448();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35F0, &qword_224DB3BC8);
  v10 = sub_224DAF8F8();
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
      sub_224A3CE84(&unk_281350CE0, MEMORY[0x277CF9CE8]);
      result = sub_224DAED88();
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

uint64_t (*sub_224AE896C(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AA5DCC0](a2, a3);
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
    *v3 = v5;
    return sub_224AEA210;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_224AE89EC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AA5DCC0](a2, a3);
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
    *v3 = v5;
    return sub_224AE8A6C;
  }

  __break(1u);
  return result;
}

void (*sub_224AE8A74(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA5DCC0](a2, a3);
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
    return sub_224A69AC8;
  }

  __break(1u);
  return result;
}

uint64_t sub_224AE8AF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA5D540](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_224ADAF60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_224AE8B8C(uint64_t a1)
{
  v2 = sub_224DAE0D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_224A3CE84(&qword_281350C70, MEMORY[0x277CF9E98]);
  result = MEMORY[0x22AA5D540](v10, v2, v11);
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
      sub_224ADB0B0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_224AE8D28(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
    v5 = sub_224A5D644(&unk_2813508C0, &qword_2813508D0, 0x277CFA318);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA318uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &qword_2813508D0, 0x277CFA318, &qword_27D6F35E0, &qword_224DB3BB8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE8EB4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v5 = sub_224A5D644(&qword_2813509C8, &unk_2813509D0, 0x277CFA378);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA378uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &unk_2813509D0, 0x277CFA378, &qword_27D6F3638, &qword_224DB3C10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9040(uint64_t a1)
{
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_224A3CE84(&qword_281351A80, MEMORY[0x277CC9260]);
  result = MEMORY[0x22AA5D540](v10, v2, v11);
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
      sub_224ADB390(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_224AE924C(uint64_t a1)
{
  v2 = sub_224DAAF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_224A3CE84(&qword_281351738, MEMORY[0x277D46790]);
  result = MEMORY[0x22AA5D540](v10, v2, v11);
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
      sub_224ADB670(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_224AE93E8(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = type metadata accessor for ExtensionTask(0);
    v5 = sub_224A3CE84(&qword_28135B9E8, type metadata accessor for ExtensionTask);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA5DCC0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_224A37578(&v11, v9, type metadata accessor for ExtensionTask, &qword_27D6F3530, &qword_224DB3AC8, type metadata accessor for ExtensionTask);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9590(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_224AEA0C0();
  result = MEMORY[0x22AA5D540](v2, &type metadata for ProcessMonitor.SessionExemptReason, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_224ADBB84(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_224AE9634(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_281350970, 0x277CFA418);
    v5 = sub_224A5D644(&qword_281350968, &qword_281350970, 0x277CFA418);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA418uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &qword_281350970, 0x277CFA418, &qword_27D6F36E8, &qword_224DB3CB0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE97C0(uint64_t a1)
{
  v2 = sub_224DAE588();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_224A3CE84(&qword_281350C58, MEMORY[0x277CE3AD8]);
  result = MEMORY[0x22AA5D540](v10, v2, v11);
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
      sub_224ADC50C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_224AE995C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_281350908, 0x277CFA398);
    v5 = sub_224A5D644(&qword_281350900, &qword_281350908, 0x277CFA398);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA398uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &qword_281350908, 0x277CFA398, &qword_27D6F35A0, &qword_224DB3B58);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9AE8(uint64_t a1)
{
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0]);
  result = MEMORY[0x22AA5D540](v10, v2, v11);
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
      sub_224A5DF04(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_224AE9C84(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &unk_281350A20, 0x277CFA400);
    v5 = sub_224A5D644(&unk_281350A10, &unk_281350A20, 0x277CFA400);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA400uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &unk_281350A20, 0x277CFA400, &qword_27D6F3680, &qword_224DB3C58);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9E10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_224AEA06C();
  result = MEMORY[0x22AA5D540](v2, &type metadata for MobilePlaceholderService.CacheEvent, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_224ADCDD4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_224AE9EB4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 16);
  v19 = sub_224A33088(a4, a2, a3);
  result = MEMORY[0x22AA5D540](v18, v10, v19);
  v27 = result;
  if (v18)
  {
    v21 = v11 + 16;
    v26 = *(v11 + 16);
    v22 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v24 = a5;
    v25 = (v21 - 8);
    do
    {
      v26(v15, v22, v10);
      v24(v17, v15);
      (*v25)(v17, v10);
      v22 += v23;
      --v18;
    }

    while (v18);
    return v27;
  }

  return result;
}

unint64_t sub_224AEA06C()
{
  result = qword_281356198;
  if (!qword_281356198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281356198);
  }

  return result;
}

unint64_t sub_224AEA0C0()
{
  result = qword_28135B788;
  if (!qword_28135B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B788);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_224AEA140(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_224AEA188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224AEA218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v198 = a1;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v5 = *(v197 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v197);
  v196 = &v162 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v204 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v195 = &v162 - v13;
  MEMORY[0x28223BE20](v12);
  v201 = &v162 - v14;
  v212 = sub_224DA9878();
  v215 = *(v212 - 8);
  v15 = *(v215 + 64);
  v16 = MEMORY[0x28223BE20](v212);
  v180 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v183 = &v162 - v19;
  MEMORY[0x28223BE20](v18);
  v216 = &v162 - v20;
  v186 = sub_224DACB08();
  v192 = *(v186 - 8);
  v21 = *(v192 + 64);
  MEMORY[0x28223BE20](v186);
  v188 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_224DACB28();
  v190 = *(v191 - 8);
  v23 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v187 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_224DAE4F8();
  v25 = *(v211 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v211);
  v210 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_224DAB728();
  v28 = *(v209 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v209);
  v208 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_224DAC2B8();
  v203 = *(v200 - 8);
  v31 = *(v203 + 64);
  v32 = MEMORY[0x28223BE20](v200);
  v177 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v194 = &v162 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v193 = &v162 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v179 = &v162 - v39;
  MEMORY[0x28223BE20](v38);
  v178 = &v162 - v40;
  v218 = sub_224DAE928();
  v41 = *(v218 - 1);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v218);
  v217 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DACB98();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v189 = &v162 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = &v162 - v49;
  if (!sub_224D5D150(a2))
  {
LABEL_52:
    v118 = sub_224DACC88();
    return (*(*(v118 - 8) + 56))(a3, 1, 1, v118);
  }

  v199 = a3;
  sub_224DACC68();
  v51 = (*(v45 + 88))(v50, v44);
  v52 = *MEMORY[0x277CF9BF0];
  v172 = v45;
  v53 = *(v45 + 8);
  v173 = v44;
  v53(v50, v44);
  if (v51 != v52)
  {
LABEL_46:
    v107 = sub_224DABF28();
    v108 = v215;
    if (v107 && (v109 = sub_224DAC9E8(), , (v109 & 1) != 0))
    {
      v110 = v204;
      sub_224DA9868();
      v111 = v212;
      (*(v108 + 56))(v110, 0, 1, v212);
      sub_224DABEE8();
      v112 = sub_224DAC2A8();
      v113 = [v112 extensionIdentity];

      LOBYTE(v112) = [v113 isRemote];
      a3 = v199;
      if ((v112 & 1) == 0)
      {
        v114 = v180;
        sub_224DA9808();
        v115 = v187;
        sub_224DA9768();
        (*(v108 + 8))(v114, v111);
        (*(v190 + 104))(v115, *MEMORY[0x277CF9B58], v191);
        (*(v192 + 104))(v188, *MEMORY[0x277CF9B40], v186);
        (*(v172 + 104))(v189, *MEMORY[0x277CF9BD8], v173);
        sub_224DACC28();
        sub_224DACC18();

        v116 = sub_224DACC88();
        return (*(*(v116 - 8) + 56))(a3, 0, 1, v116);
      }
    }

    else
    {
      (*(v108 + 56))(v204, 1, 1, v212);
      sub_224DABEE8();
      a3 = v199;
    }

    goto LABEL_52;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v58 = -1 << *(a2 + 32);
    v55 = ~v58;
    v54 = a2 + 64;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v56 = v60 & *(a2 + 64);
    v57 = a2;
  }

  v171 = v55;
  v61 = (v55 + 64) >> 6;
  v184 = *MEMORY[0x277CE3D90];
  v207 = (v41 + 104);
  v206 = (v41 + 8);
  v62 = 0;
  v182 = (v28 + 8);
  v181 = (v25 + 8);
  v174 = *MEMORY[0x277CE3D98];
  v170 = (v203 + 8);
  v168 = (v5 + 1);
  v167 = (v215 + 48);
  v163 = (v215 + 32);
  v169 = (v215 + 8);
  v63 = v56;
  v185 = v54;
  v202 = v57;
  if ((v57 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!sub_224DAFB18())
  {
LABEL_45:
    sub_224A3B7E4();
    goto LABEL_46;
  }

  v65 = v64;
  swift_unknownObjectRelease();
  *&v221 = v65;
  sub_224DABF48();
  swift_dynamicCast();
  v66 = v223;
  v67 = v62;
  v5 = v63;
  while (1)
  {
    if (!v66)
    {
      goto LABEL_45;
    }

    v70 = sub_224DABF28();
    if (!v70)
    {

      v62 = v67;
      v63 = v5;
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v205 = v5;
    v214 = v66;
    v176 = v62;
    v71 = v70;
    v72 = sub_224DAC9C8();
    v73 = *v207;
    v75 = v217;
    v74 = v218;
    (*v207)(v217, v184, v218);
    v76 = sub_224CD6930(v75, v72);

    v77 = *v206;
    (*v206)(v75, v74);
    v175 = v63;
    v219 = v71;
    if (v76)
    {
      v119 = v178;
      v120 = v200;
      (*(v203 + 16))(v178, v198, v200);
      v121 = sub_224DAB228();
      v122 = sub_224DAF2A8();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v223 = v124;
        *v123 = 136446210;
        sub_224AECAC4(&unk_281350E08, MEMORY[0x277CF99B8]);
        v125 = sub_224DAFD28();
        v127 = v126;
        (*v170)(v119, v120);
        v128 = sub_224A33F74(v125, v127, &v223);

        *(v123 + 4) = v128;
        _os_log_impl(&dword_224A2F000, v121, v122, "%{public}s Control will reload since it is stale", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v124);
        MEMORY[0x22AA5EED0](v124, -1, -1);
        MEMORY[0x22AA5EED0](v123, -1, -1);

LABEL_62:
        v139 = v199;
        v140 = v188;
        v141 = v186;
        v142 = v192;
        v143 = v189;
        v144 = v173;
        v145 = v172;
        (*(v190 + 104))(v187, *MEMORY[0x277CF9B50], v191);
        (*(v142 + 104))(v140, *MEMORY[0x277CF9B40], v141);
        (*(v145 + 104))(v143, *MEMORY[0x277CF9BE8], v144);
        sub_224DACC48();
        sub_224DACC38();

        sub_224A3B7E4();
        v146 = sub_224DACC88();
        return (*(*(v146 - 8) + 56))(v139, 0, 1, v146);
      }

LABEL_61:
      (*v170)(v119, v120);
      goto LABEL_62;
    }

    sub_224DABEB8();
    __swift_project_boxed_opaque_existential_1(&v223, v224);
    v78 = v208;
    sub_224DAD168();
    v79 = sub_224DAB668();
    v81 = v80;
    (*v182)(v78, v209);
    __swift_destroy_boxed_opaque_existential_1(&v223);
    sub_224DAC9F8();
    __swift_project_boxed_opaque_existential_1(&v223, v224);
    v82 = v210;
    sub_224DAE7E8();
    swift_getKeyPath();
    v83 = sub_224DAE4A8();

    (*v181)(v82, v211);
    if (v83)
    {
      if (v83[2])
      {
        v84 = v83[4];
        v25 = v83[5];
        sub_224A77FD0(v84, v25);
      }

      else
      {
        v84 = 0;
        v25 = 0xF000000000000000;
      }
    }

    else
    {
      v84 = 0;
      v25 = 0xF000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v223);
    if (v81 >> 60 == 15)
    {
      if (v25 >> 60 != 15)
      {
        goto LABEL_56;
      }

      v85 = v79;
      v86 = v81;
      goto LABEL_34;
    }

    if (v25 >> 60 == 15)
    {
LABEL_56:
      sub_224A77FD0(v79, v81);
      sub_224AECAB0(v84, v25);
      sub_224AC1D9C(v79, v81);
      sub_224AC1D9C(v84, v25);
LABEL_57:
      v119 = v179;
      v120 = v200;
      (*(v203 + 16))(v179, v198, v200);
      v129 = sub_224DAB228();
      v130 = sub_224DAF2A8();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v217 = v131;
        v218 = swift_slowAlloc();
        v223 = v218;
        *v131 = 136446210;
        sub_224AECAC4(&unk_281350E08, MEMORY[0x277CF99B8]);
        v132 = sub_224DAFD28();
        v134 = v133;
        (*v170)(v119, v120);
        v135 = sub_224A33F74(v132, v134, &v223);

        v136 = v217;
        *(v217 + 4) = v135;
        v137 = v136;
        _os_log_impl(&dword_224A2F000, v129, v130, "%{public}s Control will reload since its locale token is out of date", v136, 0xCu);
        v138 = v218;
        __swift_destroy_boxed_opaque_existential_1(v218);
        MEMORY[0x22AA5EED0](v138, -1, -1);
        MEMORY[0x22AA5EED0](v137, -1, -1);
        sub_224A78024(v79, v81);
        sub_224AC1D9C(v84, v25);

        goto LABEL_62;
      }

      sub_224A78024(v79, v81);
      sub_224AC1D9C(v84, v25);

      goto LABEL_61;
    }

    sub_224A77FD0(v79, v81);
    sub_224A77FD0(v79, v81);
    sub_224AECAB0(v84, v25);
    v87 = sub_224CCC88C(v79, v81, v84, v25);
    sub_224A78024(v79, v81);
    sub_224AC1D9C(v84, v25);
    sub_224AC1D9C(v79, v81);
    if ((v87 & 1) == 0)
    {
      goto LABEL_57;
    }

    sub_224A78024(v79, v81);
    v85 = v84;
    v86 = v25;
LABEL_34:
    sub_224AC1D9C(v85, v86);
    v5 = qword_224DB3ED8;
    sub_224A3796C(v213 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService, &v221, &qword_27D6F37A0, qword_224DB3ED8);
    v57 = v202;
    if (!v222)
    {

      sub_224A3311C(&v221, &qword_27D6F37A0, qword_224DB3ED8);
      goto LABEL_43;
    }

    sub_224A36F98(&v221, &v223);
    v88 = sub_224DAC9C8();
    v5 = v217;
    v25 = v218;
    v73(v217, v174, v218);
    v89 = sub_224CD6930(v5, v88);

    v77(v5, v25);
    if ((v89 & 1) == 0)
    {

      goto LABEL_42;
    }

    sub_224DAC9F8();
    __swift_project_boxed_opaque_existential_1(&v221, v222);
    sub_224DAE7F8();
    __swift_destroy_boxed_opaque_existential_1(&v221);
    v165 = v224;
    v166 = v225;
    v164 = __swift_project_boxed_opaque_existential_1(&v223, v224);
    v90 = v193;
    sub_224DABF08();
    v91 = sub_224DAC2A8();
    v92 = [v91 extensionIdentity];

    v93 = *v170;
    v94 = v200;
    (*v170)(v90, v200);
    v95 = v196;
    sub_224DAF528();

    v96 = v194;
    sub_224DABF08();
    v97 = sub_224DAC2A8();
    v98 = [v97 kind];

    sub_224DAEE18();
    v25 = v93;
    v93(v96, v94);
    v99 = v201;
    sub_224DAD1A8();

    (*v168)(v95, v197);
    v100 = v195;
    v5 = &qword_27D6F32B0;
    sub_224A3796C(v99, v195, &qword_27D6F32B0, &qword_224DB3EA0);
    v101 = v212;
    if ((*v167)(v100, 1, v212) != 1)
    {
      break;
    }

    sub_224A3311C(v99, &qword_27D6F32B0, &qword_224DB3EA0);
    (*v169)(v216, v101);
    sub_224A3311C(v100, &qword_27D6F32B0, &qword_224DB3EA0);
    v57 = v202;
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1(&v223);
LABEL_43:
    v62 = v67;
    v63 = v205;
    v54 = v185;
    if ((v57 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v68 = v62;
    v69 = v63;
    v67 = v62;
    if (!v63)
    {
      while (1)
      {
        v67 = (v68 + 1);
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if (v67 >= v61)
        {
          goto LABEL_45;
        }

        v69 = *(v54 + 8 * v67);
        ++v68;
        if (v69)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_18:
    v5 = ((v69 - 1) & v69);
    v66 = *(*(v57 + 56) + ((v67 << 9) | (8 * __clz(__rbit64(v69)))));
  }

  v102 = v183;
  (*v163)(v183, v100, v101);
  v103 = v216;
  v104 = sub_224DA9788();
  v57 = v202;
  if ((v104 & 1) == 0)
  {
    v105 = v101;

    v5 = v169;
    v106 = *v169;
    (*v169)(v102, v105);
    sub_224A3311C(v201, &qword_27D6F32B0, &qword_224DB3EA0);
    v106(v103, v105);
    goto LABEL_42;
  }

  v62 = v177;
  v54 = v200;
  (*(v203 + 16))(v177, v198, v200);
  v5 = sub_224DAB228();
  v147 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v221 = v149;
    *v148 = 136446210;
    sub_224AECAC4(&unk_281350E08, MEMORY[0x277CF99B8]);
    v150 = sub_224DAFD28();
    v152 = v151;
    (v25)(v62, v54);
    v153 = sub_224A33F74(v150, v152, &v221);

    *(v148 + 4) = v153;
    _os_log_impl(&dword_224A2F000, v5, v147, "%{public}s Control will reload since it was previously removed from the store and its requested reload date is more recent than the archive creation date.", v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v149);
    MEMORY[0x22AA5EED0](v149, -1, -1);
    MEMORY[0x22AA5EED0](v148, -1, -1);

    goto LABEL_67;
  }

LABEL_66:

  (v25)(v62, v54);
LABEL_67:
  v154 = v199;
  v155 = v192;
  v156 = v189;
  v157 = v173;
  v158 = v172;
  (*(v190 + 104))(v187, *MEMORY[0x277CF9B50], v191);
  (*(v155 + 104))(v188, *MEMORY[0x277CF9B40], v186);
  (*(v158 + 104))(v156, *MEMORY[0x277CF9BE8], v157);
  sub_224DACC48();
  sub_224DACC38();

  sub_224A3B7E4();
  v159 = *v169;
  v160 = v212;
  (*v169)(v183, v212);
  sub_224A3311C(v201, &qword_27D6F32B0, &qword_224DB3EA0);
  v159(v216, v160);
  v161 = sub_224DACC88();
  (*(*(v161 - 8) + 56))(v154, 0, 1, v161);
  return __swift_destroy_boxed_opaque_existential_1(&v223);
}

uint64_t sub_224AEBCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v80 = a5;
  v82 = a4;
  v8 = sub_224DACB08();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9878();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DABD68();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x28223BE20](v14);
  v76 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DACB28();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v73 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = v66 - v21;
  v22 = sub_224DACB98();
  v81 = *(v22 - 8);
  v23 = *(v81 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v66 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v66 - v31;
  MEMORY[0x28223BE20](v30);
  v79 = (v66 - v33);
  v34 = sub_224DAC2A8();
  v35 = [v34 extensionIdentity];

  LOBYTE(v34) = [v35 isRemote];
  if (v34)
  {
    v36 = sub_224DACC88();
    (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
    v37 = *MEMORY[0x277CF98A8];
    v38 = *(v83 + 104);
    v39 = a2;
    v40 = v14;
  }

  else
  {
    v72 = v14;
    v67 = a1;
    v68 = a2;
    if (sub_224AEC7B4(v80))
    {
      v66[0] = a3;
      sub_224DACC68();
      v41 = v81;
      v42 = *(v81 + 104);
      v42(v29, *MEMORY[0x277CF9BF0], v22);
      v43 = sub_224DACB88();
      v44 = *(v41 + 8);
      v44(v29, v22);
      v44(v32, v22);
      v66[1] = v41 + 8;
      v80 = v44;
      if (v43 & 1) != 0 || (sub_224DACC68(), v42(v29, *MEMORY[0x277CF9B60], v22), v45 = sub_224DACB88(), v44(v29, v22), v44(v32, v22), (v45))
      {
        v46 = swift_allocObject();
        *(v46 + 16) = 0xD000000000000019;
        *(v46 + 24) = 0x8000000224DC58C0;
        v47 = v79;
        *v79 = v46;
        v42(v47, *MEMORY[0x277CF9B70], v22);
        v66[0] = sub_224DACBB8();
        v48 = MEMORY[0x277CF98B8];
        v49 = MEMORY[0x277CF9B50];
        v50 = v72;
      }

      else
      {
        v60 = sub_224DACBB8();
        v61 = v79;
        if (v60 < 1)
        {
          v62 = sub_224DAC2A8();

          sub_224DACC68();
          v63 = (*(v81 + 88))(v26, v22);
          v64 = *MEMORY[0x277CF9B80];
          if (v63 == v64)
          {
            v80(v26, v22);
            sub_224DACC68();
          }

          else
          {
            v66[0] = swift_allocBox();
            sub_224DACC68();
            *v61 = v66[0];
            v42(v61, v64, v22);
            v80(v26, v22);
          }

          v66[0] = sub_224DACBF8();
          v65 = v69;
          sub_224DA9868();
          sub_224DA9768();
          (*(v70 + 8))(v65, v71);
          v48 = MEMORY[0x277CF98B0];
          v49 = MEMORY[0x277CF9B58];
          v50 = v72;
          v47 = v79;
        }

        else
        {
          sub_224DACC68();
          result = sub_224DACBB8();
          if (__OFSUB__(result, 1))
          {
            __break(1u);
            return result;
          }

          v48 = MEMORY[0x277CF98B8];
          v49 = MEMORY[0x277CF9B50];
          v50 = v72;
          v47 = v79;
          v66[0] = result - 1;
        }
      }

      v52 = v74;
      v51 = v75;
      v53 = v78;
      (*(v74 + 104))(v78, *v49, v75);
      v54 = v76;
      (*(v83 + 104))(v76, *v48, v50);
      (*(v52 + 16))(v73, v53, v51);
      sub_224DACC08();
      (*(v81 + 16))(v32, v47, v22);
      sub_224DACBD8();
      sub_224DACC28();
      v55 = v67;
      sub_224DACC18();
      (*(v52 + 8))(v53, v51);
      v80(v47, v22);
      v56 = sub_224DACC88();
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
      return (*(v83 + 32))(v68, v54, v72);
    }

    v58 = sub_224DAC2A8();

    v59 = sub_224DACC88();
    (*(*(v59 - 8) + 56))(v67, 1, 1, v59);
    v37 = *MEMORY[0x277CF98B0];
    v38 = *(v83 + 104);
    v39 = v68;
    v40 = v72;
  }

  return v38(v39, v37, v40);
}

uint64_t sub_224AEC574()
{
  v1 = OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService, &qword_27D6F37A0, qword_224DB3ED8);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlReloadConfigurationPolicy()
{
  result = qword_281352F50;
  if (!qword_281352F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224AEC684()
{
  result = sub_224DAB258();
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

BOOL sub_224AEC7B4(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  v12 = *MEMORY[0x277CFA188];
  if (sub_224DAEE18() == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_224DAFD88();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v16 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v16 == v11)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (sub_224DAEE18() == v8 && v17 == v10)
  {
  }

  else
  {
    v19 = sub_224DAFD88();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v20 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v20 == v11)
  {
LABEL_17:

    return 0;
  }

LABEL_18:
  if (sub_224DAEE18() == v8 && v22 == v10)
  {
  }

  else
  {
    v23 = sub_224DAFD88();

    if ((v23 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v24 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v24 != v11;
}

uint64_t sub_224AECAB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_224A77FD0(a1, a2);
  }

  return a1;
}

uint64_t sub_224AECAC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224AECB0C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F37A8);
  __swift_project_value_buffer(v0, qword_27D6F37A8);
  return sub_224DAB238();
}

void sub_224AECBB8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_224AECC54(uint64_t a1)
{
  v2 = sub_224DAC2B8();
  v45 = *(v2 - 8);
  v3 = *(v45 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = sub_224DACB98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = sub_224DAC2A8();
  v17 = [v16 extensionIdentity];

  v18 = &v17[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v19 = *(v18 + 1);

  if (!v19)
  {
    return 1;
  }

  sub_224DACC68();
  (*(v9 + 32))(v13, v15, v8);
  v20 = (*(v9 + 88))(v13, v8);
  result = 1;
  if (v20 != *MEMORY[0x277CF9BF0] && v20 != *MEMORY[0x277CF9B68] && v20 != *MEMORY[0x277CF9B60])
  {
    (*(v9 + 8))(v13, v8);
    if (qword_27D6F2C88 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_27D6F37A8);
    v23 = v45;
    v24 = *(v45 + 16);
    v24(v7, a1, v2);
    v25 = v46;
    v24(v46, a1, v2);
    v26 = sub_224DAB228();
    v27 = sub_224DAF2A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      v44 = swift_slowAlloc();
      v47 = v44;
      *v28 = 138543618;
      v30 = sub_224DAC2A8();
      v31 = [v30 extensionIdentity];

      v32 = *(v23 + 8);
      v32(v7, v2);
      *(v28 + 4) = v31;
      *v29 = v31;
      *(v28 + 12) = 2082;
      v33 = v46;
      v34 = sub_224DAC2A8();
      v35 = [v34 kind];

      v36 = sub_224DAEE18();
      v38 = v37;

      v32(v33, v2);
      v39 = sub_224A33F74(v36, v38, &v47);

      *(v28 + 14) = v39;
      _os_log_impl(&dword_224A2F000, v26, v27, "Forbidding reload of remote control %{public}@:%{public}s.", v28, 0x16u);
      v40 = v43;
      sub_224AD68CC(v43);
      MEMORY[0x22AA5EED0](v40, -1, -1);
      v41 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x22AA5EED0](v41, -1, -1);
      MEMORY[0x22AA5EED0](v28, -1, -1);
    }

    else
    {

      v42 = *(v23 + 8);
      v42(v25, v2);
      v42(v7, v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_224AED168()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281351568);
  __swift_project_value_buffer(v0, qword_281351568);
  return sub_224DAB238();
}

void sub_224AED1EC(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - v7;
  if (!sub_224AED9F0())
  {
    if (qword_281351560 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281351568);
    v12 = sub_224DAB228();
    v21 = sub_224DAF2A8();
    if (!os_log_type_enabled(v12, v21))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Unable to fetch network authorization status:  ct server connection unavailable.";
    v16 = v21;
    v17 = v12;
    v18 = v14;
    v19 = 2;
    goto LABEL_11;
  }

  v75 = 0;
  sub_224DA9FE8();
  v9 = sub_224DAEDE8();

  v10 = _CTServerConnectionCopyCellularUsagePolicy();

  if (v10)
  {
    goto LABEL_3;
  }

  v23 = v75;
  if (!v75)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_3;
  }

  v73 = 0;
  sub_224DAECD8();

  v24 = v73;
  if (!v73)
  {
LABEL_3:
    if (qword_281351560 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281351568);
    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 67240448;
    *(v14 + 4) = v10;
    *(v14 + 8) = 1026;
    *(v14 + 10) = HIDWORD(v10);
    v15 = "Unable to fetch network authorization status for error: domain = %{public}d, code = %{public}d";
    v16 = v13;
    v17 = v12;
    v18 = v14;
    v19 = 14;
LABEL_11:
    _os_log_impl(&dword_224A2F000, v17, v16, v15, v18, v19);
    MEMORY[0x22AA5EED0](v14, -1, -1);
LABEL_12:

    *a2 = 0;
LABEL_13:
    v22 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!*MEMORY[0x277CC3988])
  {
    __break(1u);
    goto LABEL_69;
  }

  v25 = sub_224DAEE18();
  v27 = *(v24 + 16);
  v70 = v5;
  if (!v27)
  {

    goto LABEL_27;
  }

  v28 = sub_224A3A40C(v25, v26);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_27:
    v68 = 0;
    v33 = 0;
    goto LABEL_28;
  }

  v72 = *(*(v24 + 56) + 8 * v28);
  swift_unknownObjectRetain();
  v31 = swift_dynamicCast();
  v32 = v73;
  if (!v31)
  {
    v32 = 0;
  }

  v68 = v32;
  if (v31)
  {
    v33 = v74;
  }

  else
  {
    v33 = 0;
  }

LABEL_28:
  if (!*MEMORY[0x277CC4368])
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v34 = sub_224DAEE18();
  v36 = *(v24 + 16);
  v71 = v33;
  if (v36)
  {
    v37 = sub_224A3A40C(v34, v35);
    v39 = v38;

    if (v39)
    {
      v72 = *(*(v24 + 56) + 8 * v37);
      swift_unknownObjectRetain();
      v40 = swift_dynamicCast();
      v41 = v73;
      if (!v40)
      {
        v41 = 0;
      }

      v69 = v41;
      if (v40)
      {
        v42 = v74;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v69 = 0;
      v42 = 0;
    }

    v33 = v71;
  }

  else
  {

    v69 = 0;
    v42 = 0;
  }

  v43 = MEMORY[0x277CC3998];
  if (!v33)
  {
    goto LABEL_46;
  }

  if (!*MEMORY[0x277CC3998])
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v68 == sub_224DAEE18() && v33 == v44)
  {

    LODWORD(v33) = 0;
  }

  else
  {
    v45 = sub_224DAFD88();

    LODWORD(v33) = v45 ^ 1;
  }

  v43 = MEMORY[0x277CC3998];
LABEL_46:
  if (!v42)
  {
    goto LABEL_50;
  }

  if (*v43)
  {

    if (v69 != sub_224DAEE18() || v42 != v46)
    {
      v47 = v33;
      v48 = sub_224DAFD88();

      v49 = v48 ^ 1;
      LODWORD(v33) = v47;
      if ((v49 | v47))
      {
        LODWORD(v69) = v49;
        LODWORD(v68) = 0;
        goto LABEL_54;
      }

LABEL_55:
      LODWORD(v69) = 0;
      LODWORD(v71) = 2;
      LODWORD(v68) = 1;
      goto LABEL_56;
    }

LABEL_50:

    if (v33)
    {
      LODWORD(v68) = 0;
      LODWORD(v69) = 0;
LABEL_54:
      LODWORD(v71) = 1;
LABEL_56:
      v50 = v70;
      if (qword_281351560 != -1)
      {
        swift_once();
      }

      v51 = sub_224DAB258();
      __swift_project_value_buffer(v51, qword_281351568);
      (*(v50 + 16))(v8, a1, v4);
      v52 = sub_224DAB228();
      v53 = sub_224DAF2A8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v66 = v33;
        v55 = v54;
        v67 = swift_slowAlloc();
        v73 = v67;
        *v55 = 136446978;
        sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
        v56 = sub_224DAFD28();
        v57 = v50;
        v59 = v58;
        (*(v57 + 8))(v8, v4);
        v60 = sub_224A33F74(v56, v59, &v73);

        *(v55 + 4) = v60;
        *(v55 + 12) = 2082;
        if (v68)
        {
          v61 = 0x6465696E6564;
        }

        else
        {
          v61 = 0x6465776F6C6C61;
        }

        if (v68)
        {
          v62 = 0xE600000000000000;
        }

        else
        {
          v62 = 0xE700000000000000;
        }

        v63 = sub_224A33F74(v61, v62, &v73);

        *(v55 + 14) = v63;
        *(v55 + 22) = 1026;
        *(v55 + 24) = v69 & 1;
        *(v55 + 28) = 1026;
        *(v55 + 30) = v66 & 1;
        _os_log_impl(&dword_224A2F000, v52, v53, "Network authorization status for %{public}s = %{public}s (wifi=%{BOOL,public}d, cellular=%{BOOL,public}d)", v55, 0x22u);
        v64 = v67;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v64, -1, -1);
        MEMORY[0x22AA5EED0](v55, -1, -1);
      }

      else
      {

        (*(v50 + 8))(v8, v4);
      }

      *a2 = v71;
      goto LABEL_13;
    }

    goto LABEL_55;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_224AED9F0()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 32) + 16));
  result = *(v0 + 24);
  if (!result)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = sub_224DAEDE8();
    sub_224AC319C();
    v5 = sub_224DAF3D8();
    v9[4] = sub_224AEFFA4;
    v9[5] = v1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_224AEDD30;
    v9[3] = &block_descriptor_48;
    v6 = _Block_copy(v9);

    v7 = _CTServerConnectionCreateOnTargetQueue();
    _Block_release(v6);

    *(v1 + 24) = v7;
    v8 = *MEMORY[0x277CC3B50];
    _CTServerConnectionRegisterForNotification();
    return *(v1 + 24);
  }

  return result;
}

void sub_224AEDB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277CC3B50];
  if (a1)
  {
    if (!v4)
    {
      return;
    }

    type metadata accessor for CFString(0);
    sub_224A80E28(&qword_281350B40, type metadata accessor for CFString);
    v5 = v4;
    v6 = sub_224DAA668();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  if (qword_281351560 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281351568);
  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224A2F000, v8, v9, "Received CT notification that network access policy has changed.", v10, 2u);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v11 = *(a3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000);
  sub_224DAB398();
}

void sub_224AEDD30(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_224AEDDBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_224AEDE20()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000);
  return sub_224DAB3A8();
}

uint64_t sub_224AEDEB0()
{
  v1 = sub_224DAB7B8();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  aBlock[4] = sub_224AEFF4C;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);
  v11 = v9;

  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224A80E28(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v8, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);
}

uint64_t sub_224AEE170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 120) = 257;
    v44 = v2;
    v49 = v14;
    sub_224AEF458();
    *(a1 + 120) = 0;
    v17 = *(a1 + 96);
    v18 = __swift_project_boxed_opaque_existential_1((a1 + 72), v17);
    v48 = &v42;
    v19 = *(v17 - 8);
    v53 = v3;
    v20 = v19;
    v21 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    type metadata accessor for _CTNetworkService();
    v24 = sub_224AEDE20();
    (*(v20 + 8))(v23, v17);
    v54 = v24;
    v55 = *(a1 + 16);
    v25 = v55;
    v51 = sub_224DAF358();
    v26 = *(v51 - 8);
    v52 = *(v26 + 56);
    v46 = v26 + 56;
    v52(v10, 1, 1, v51);
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    v28 = sub_224AC319C();
    v43 = v6;
    v50 = v28;
    v47 = MEMORY[0x277CBCD90];
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
    v45 = sub_224A80E28(&qword_281350A80, sub_224AC319C);
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030);
    sub_224DAB488();

    (*(v49 + 8))(v16, v11);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v29 = *(a1 + 56);
    __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
    v54 = sub_224DAC688();
    v55 = *(a1 + 16);
    v30 = v55;
    v52(v10, 1, 1, v51);
    v31 = v30;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
    v49 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
    v32 = v43;
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    v42 = sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
    v33 = v44;
    sub_224DAB488();

    v34 = *(v53 + 8);
    v53 += 8;
    v47 = v34;
    v34(v32, v33);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v35 = *(a1 + 56);
    __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
    v54 = sub_224DAC6A8();
    v55 = *(a1 + 16);
    v36 = v55;
    v37 = v51;
    v52(v10, 1, 1, v51);
    v38 = v36;
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    sub_224DAB488();

    v47(v32, v33);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v39 = *(a1 + 56);
    __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
    v54 = sub_224DAC698();
    v55 = *(a1 + 16);
    v40 = v55;
    v52(v10, 1, 1, v37);
    v41 = v40;
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    sub_224DAB488();

    v47(v32, v33);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224AEEA1C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224AEF458();
  }

  return result;
}

uint64_t sub_224AEEA74(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224AEEB48(v4, a3 & 1);
  }

  return result;
}

uint64_t sub_224AEEAE8(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224AEEF9C(v1);
  }

  return result;
}

uint64_t sub_224AEEB48(uint64_t a1, int a2)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v49 = &v45[-v9];
  v51 = v2;
  v10 = *(v2 + 16);
  BSDispatchQueueAssert();
  if (qword_281351560 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281351568);

    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      v54 = v15;
      *v14 = 136446210;
      v17 = *(a1 + 16);
      v18 = MEMORY[0x277D84F90];
      if (v17)
      {
        v47 = v15;
        v48 = v14;
        v53 = MEMORY[0x277D84F90];
        sub_224DAF9E8();
        v19 = a1 + 32;
        do
        {
          sub_224A3317C(v19, v52);
          __swift_project_boxed_opaque_existential_1(v52, v52[3]);
          sub_224DAE338();
          __swift_destroy_boxed_opaque_existential_1(v52);
          sub_224DAF9B8();
          v20 = *(v53 + 16);
          sub_224DAF9F8();
          sub_224DAFA08();
          sub_224DAF9C8();
          v19 += 40;
          --v17;
        }

        while (v17);
        v18 = v53;
        v16 = v47;
        v14 = v48;
      }

      v21 = sub_224DAF538();
      v22 = MEMORY[0x22AA5D380](v18, v21);
      v24 = v23;

      v25 = sub_224A33F74(v22, v24, &v54);

      *(v14 + 4) = v25;
      _os_log_impl(&dword_224A2F000, v12, v13, "Processing extensions added or updated: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA5EED0](v16, -1, -1);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    v26 = sub_224AEFD7C(a1);
    v27 = v26;
    v28 = v26 + 56;
    v29 = 1 << *(v26 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v26 + 56);
    swift_beginAccess();
    v32 = 0;
    v33 = (v29 + 63) >> 6;
    v47 = (v50 + 32);
    v48 = v50 + 16;
    a1 = v50 + 8;
    if (v31)
    {
      while (1)
      {
LABEL_15:
        v36 = v49;
        v35 = v50;
        (*(v50 + 16))(v49, *(v27 + 48) + *(v50 + 72) * (__clz(__rbit64(v31)) | (v32 << 6)), v4);
        v37 = v36;
        v38 = v4;
        (*(v35 + 32))(v8, v37, v4);
        v39 = *(v51 + 112);
        if (!*(v39 + 16))
        {
          goto LABEL_20;
        }

        v40 = *(v51 + 112);

        v41 = sub_224A89A08(v8);
        if ((v42 & 1) == 0)
        {
          break;
        }

        v43 = *(*(v39 + 56) + v41);

        if (!v43)
        {
          goto LABEL_20;
        }

LABEL_21:
        v31 &= v31 - 1;
        v4 = v38;
        (*a1)(v8, v38);
        if (!v31)
        {
          goto LABEL_11;
        }
      }

LABEL_20:
      sub_224AEF640(v8, v46 & 1);
      goto LABEL_21;
    }

LABEL_11:
    v34 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  if (v34 < v33)
  {
    v31 = *(v28 + 8 * v34);
    ++v32;
    if (v31)
    {
      v32 = v34;
      goto LABEL_15;
    }

    goto LABEL_11;
  }
}

uint64_t sub_224AEEF9C(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = v48 - v9;
  v10 = v1[2];
  BSDispatchQueueAssert();
  if (qword_281351560 != -1)
  {
LABEL_26:
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281351568);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v52 = v4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    v56 = v15;
    *v14 = 136446210;
    v17 = *(a1 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v50 = v15;
      v51 = v14;
      v55 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v19 = a1 + 32;
      do
      {
        sub_224A3317C(v19, v54);
        __swift_project_boxed_opaque_existential_1(v54, v54[3]);
        sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v54);
        sub_224DAF9B8();
        v20 = *(v55 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v19 += 40;
        --v17;
      }

      while (v17);
      v18 = v55;
      v16 = v50;
      v14 = v51;
    }

    v21 = sub_224DAF538();
    v22 = MEMORY[0x22AA5D380](v18, v21);
    v24 = v23;

    v25 = sub_224A33F74(v22, v24, &v56);

    *(v14 + 4) = v25;
    _os_log_impl(&dword_224A2F000, v12, v13, "Processing extensions removed: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);

    v4 = v52;
  }

  else
  {
  }

  v26 = sub_224AEFD7C(a1);
  v27 = 0;
  v28 = v26 + 56;
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  a1 = v30 & *(v26 + 56);
  v31 = (v29 + 63) >> 6;
  v48[0] = v53 + 32;
  v48[1] = v53 + 16;
  v51 = (v53 + 8);
  v52 = v26;
  while (a1)
  {
LABEL_20:
    v33 = v53;
    v34 = *(v52 + 48);
    v50 = *(v53 + 72);
    v35 = v49;
    (*(v53 + 16))(v49, v34 + v50 * (__clz(__rbit64(a1)) | (v27 << 6)), v4);
    (*(v33 + 32))(v8, v35, v4);
    v36 = v4;
    v37 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    v4 = v36;
    v38 = *(sub_224DAC668() + 16);

    if (!v38)
    {
      v39 = v50;
      swift_beginAccess();
      v40 = v2[14];
      v41 = sub_224A89A08(v8);
      if (v42)
      {
        v43 = v41;
        v44 = v2[14];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v2[14];
        v56 = v46;
        v2[14] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_224B25894();
          v46 = v56;
        }

        (*v51)(*(v46 + 48) + v43 * v39, v4);
        sub_224B1BFA4(v43, v46);
        v2[14] = v46;
      }

      swift_endAccess();
    }

    a1 &= a1 - 1;
    (*v51)(v8, v4);
  }

  while (1)
  {
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v32 >= v31)
    {
    }

    a1 = *(v28 + 8 * v32);
    ++v27;
    if (a1)
    {
      v27 = v32;
      goto LABEL_20;
    }
  }
}

uint64_t sub_224AEF458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &i - v4;
  v6 = v0[2];
  BSDispatchQueueAssert();
  v7 = v0[6];
  v8 = v0[7];
  v20 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 3, v7);
  v9 = sub_224DAC678();
  v10 = sub_224AEFD7C(v9);

  v12 = 0;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 56);
  v16 = (v13 + 63) >> 6;
  for (i = v2 + 16; v15; result = (*(v2 + 8))(v5, v1))
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v2 + 16))(v5, *(v10 + 48) + *(v2 + 72) * (v18 | (v17 << 6)), v1);
    sub_224AEF640(v5, 0);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
    }

    v15 = *(v10 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224AEF640(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for NetworkAuthorizationChangeInfo();
  v57 = *(v10 - 1);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 16);
  BSDispatchQueueAssert();
  sub_224A3317C(v2 + 72, v61);
  v15 = *(*__swift_project_boxed_opaque_existential_1(v61, v61[3]) + 32);
  v16 = *(v15 + 16);

  os_unfair_lock_lock(v16);
  sub_224AED1EC(a1, v60);
  os_unfair_lock_unlock(*(v15 + 16));

  v17 = LOBYTE(v60[0]);
  __swift_destroy_boxed_opaque_existential_1(v61);
  result = swift_beginAccess();
  v19 = *(v3 + 112);
  if (*(v19 + 16))
  {
    v20 = *(v3 + 112);

    v21 = sub_224A89A08(a1);
    if (v22)
    {
      v23 = *(*(v19 + 56) + v21);

      if (v23 == v17)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  if (!v17)
  {
    return result;
  }

  v23 = 0;
LABEL_8:
  v56 = v9;
  swift_beginAccess();
  v24 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_224B1FD04(v17, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v59;
  swift_endAccess();
  v26 = *(v3 + 120) | a2;
  v27 = *(v58 + 16);
  v27(&v13[v10[5]], a1, v6);
  v54 = v26;
  v55 = v23;
  *v13 = v26 & 1;
  v13[v10[6]] = v23;
  v13[v10[7]] = v17;
  if (qword_281351560 != -1)
  {
    swift_once();
  }

  v28 = sub_224DAB258();
  __swift_project_value_buffer(v28, qword_281351568);
  v29 = v56;
  v27(v56, a1, v6);
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v60[0] = v53;
    *v32 = 136446978;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
    v33 = sub_224DAFD28();
    v35 = v34;
    (*(v58 + 8))(v29, v6);
    v36 = sub_224A33F74(v33, v35, v60);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    v37 = 0xE700000000000000;
    v38 = 0x6465776F6C6C61;
    if (v55 != 1)
    {
      v38 = 0x6465696E6564;
      v37 = 0xE600000000000000;
    }

    if (v55)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x6E776F6E6B6E75;
    }

    if (v55)
    {
      v40 = v37;
    }

    else
    {
      v40 = 0xE700000000000000;
    }

    v41 = sub_224A33F74(v39, v40, v60);

    *(v32 + 14) = v41;
    *(v32 + 22) = 2082;
    v42 = 0xE700000000000000;
    v43 = 0x6465776F6C6C61;
    if (v17 != 1)
    {
      v43 = 0x6465696E6564;
      v42 = 0xE600000000000000;
    }

    if (v17)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x6E776F6E6B6E75;
    }

    if (v17)
    {
      v45 = v42;
    }

    else
    {
      v45 = 0xE700000000000000;
    }

    v46 = sub_224A33F74(v44, v45, v60);

    *(v32 + 24) = v46;
    *(v32 + 32) = 1026;
    *(v32 + 34) = v54 & 1;
    _os_log_impl(&dword_224A2F000, v30, v31, "Network authorization status changed for %{public}s from %{public}s to %{public}s, initial publish for container? %{BOOL,public}d", v32, 0x26u);
    v47 = v53;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v47, -1, -1);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  else
  {

    (*(v58 + 8))(v29, v6);
  }

  v48 = *(v3 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C0, &unk_224DB4010);
  v49 = *(v57 + 72);
  v50 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_224DB3100;
  sub_224AEFCBC(v13, v51 + v50);
  v60[0] = v51;

  sub_224DAB348();

  return sub_224AEFD20(v13);
}

uint64_t sub_224AEFC38()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_224AEFCBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkAuthorizationChangeInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AEFD20(uint64_t a1)
{
  v2 = type metadata accessor for NetworkAuthorizationChangeInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224AEFD7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_224ADA2AC(0, v7, 0);
    v8 = v15;
    v9 = a1 + 32;
    do
    {
      sub_224A3317C(v9, v14);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_224DAE328();
      sub_224DA9FF8();
      __swift_destroy_boxed_opaque_existential_1(v14);
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_224ADA2AC(v10 > 1, v11 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v11 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v6, v2);
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  v12 = sub_224A40C50(v8);

  return v12;
}

uint64_t sub_224AEFFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_224DA9598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-4] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17[-4] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-4] - v13;
  sub_224DA9CA8();
  strcpy(v17, "replicatorTmp");
  v17[7] = -4864;
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
  sub_224AFC154();
  sub_224DA9678();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v12, v7);
  (*(v8 + 32))(a1, v14, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

unint64_t sub_224AF02C0(char a1)
{
  result = 0x6F69736E65747865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      return result;
    case 7:
      result = 1852793705;
      break;
    case 8:
    case 9:
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 13;
      goto LABEL_6;
    case 12:
      v3 = 10;
LABEL_6:
      result = v3 | 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_224AF0428(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_224AF02C0(*a1);
  v5 = v4;
  if (v3 == sub_224AF02C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_224DAFD88();
  }

  return v8 & 1;
}

uint64_t sub_224AF04B0()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224AF02C0(v1);
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224AF0514()
{
  sub_224AF02C0(*v0);
  sub_224DAEE78();
}

uint64_t sub_224AF0568()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224AF02C0(v1);
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224AF05C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_224AFC108();
  *a2 = result;
  return result;
}

unint64_t sub_224AF05F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_224AF02C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_224AF0624()
{
  v0 = sub_224DAAB88();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v81 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_224DAB1C8();
  v3 = *(v93 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v93);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DAB1B8();
  v7 = *(v90 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v90);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37D0, &qword_224DB4110);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FF0, &unk_224DB4118);
  v86 = v11;
  v12 = *(v11 - 8);
  v89 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v80 = v14;
  *(v14 + 16) = xmmword_224DB4050;
  v15 = v14 + v13;
  v16 = *(v11 + 48);
  *(v14 + v13) = 6;
  v84 = *MEMORY[0x277D46898];
  v17 = *(v7 + 104);
  v91 = v7 + 104;
  v92 = v17;
  v17(v10);
  v83 = *MEMORY[0x277D468F8];
  v18 = *(v3 + 104);
  v19 = v93;
  v18(v6);
  v87 = v3 + 104;
  v88 = v18;
  sub_224DAAB58();
  v85 = v15;
  v75 = v10;
  v20 = v6;
  sub_224DAB0E8();
  v21 = v89;
  v22 = v86;
  v82 = *(v86 + 48);
  *(v15 + v89) = 7;
  v92(v10, v84, v90);
  v23 = v83;
  (v18)(v20, v83, v19);
  sub_224DAAB58();
  v24 = v75;
  v25 = v20;
  sub_224DAB0E8();
  v82 = 2 * v21;
  v26 = v85;
  v27 = *(v22 + 48);
  *(v85 + 2 * v21) = 10;
  v78 = "configuration-snapshot";
  v79 = v27;
  v84 = *MEMORY[0x277D468A8];
  v28 = v92;
  (v92)(v24);
  v88(v25, v23, v93);
  sub_224DAAB58();
  sub_224DAB0E8();
  v30 = v89;
  v29 = v90;
  v31 = (v26 + v82 + v89);
  v32 = v86;
  v79 = *(v86 + 48);
  *v31 = 9;
  v77 = v31;
  v78 = "configuration-activity";
  v33 = v84;
  v28(v24, v84, v29);
  LODWORD(v82) = *MEMORY[0x277D46908];
  v34 = v25;
  (v88)(v25);
  sub_224DAAB58();
  sub_224DAB0E8();
  v79 = 4 * v30;
  v35 = v85;
  v78 = *(v32 + 48);
  *(v85 + 4 * v30) = 12;
  v36 = v90;
  v37 = v92;
  v92(v24, v33, v90);
  v88(v34, v83, v93);
  sub_224DAAB58();
  sub_224DAB0E8();
  v38 = v89;
  v39 = *(v86 + 48);
  *(v35 + v79 + v89) = 11;
  v78 = "configuration-timeline";
  v79 = v39;
  v37(v24, v84, v36);
  v40 = v93;
  v41 = v88;
  v88(v34, v82, v93);
  sub_224DAAB58();
  sub_224DAB0E8();
  v42 = v86;
  v43 = *(v86 + 48);
  *(v35 + 6 * v38) = 8;
  v78 = "live";
  v79 = v43;
  v44 = v84;
  v45 = v90;
  v92(v24, v84, v90);
  v41(v34, v83, v40);
  sub_224DAAB58();
  sub_224DAB0E8();
  v46 = 8 * v89;
  v47 = v85;
  v77 = *(v42 + 48);
  v78 = (8 * v89);
  *(v85 + 7 * v89) = 3;
  v76 = "archive-snapshot";
  v48 = v92;
  v92(v24, v44, v45);
  LODWORD(v79) = *MEMORY[0x277D468F0];
  v49 = v93;
  v50 = v88;
  (v88)(v34);
  sub_224DAAB58();
  sub_224DAB0E8();
  v51 = (v47 + v46);
  v52 = v86;
  v53 = *(v86 + 48);
  *v51 = 2;
  v76 = "archive-placeholder";
  v77 = v53;
  v54 = v84;
  v48(v24, v84, v90);
  v50(v34, v82, v49);
  sub_224DAAB58();
  sub_224DAB0E8();
  v55 = v89;
  v56 = v85;
  v57 = *(v52 + 48);
  v78[v89 + v85] = 5;
  v77 = "archive-control-preview";
  v78 = v57;
  v58 = v54;
  v59 = v90;
  v92(v24, v58, v90);
  v60 = v88;
  v88(v34, v79, v93);
  sub_224DAAB58();
  sub_224DAB0E8();
  v61 = v86;
  v62 = *(v86 + 48);
  *(v56 + 10 * v55) = 4;
  v78 = "archive-timeline";
  v79 = v62;
  v63 = v84;
  v64 = v92;
  v92(v24, v84, v59);
  v65 = v93;
  v60(v34, v82, v93);
  sub_224DAAB58();
  sub_224DAB0E8();
  v66 = v85;
  v82 = *(v61 + 48);
  *(v85 + 11 * v89) = 1;
  v79 = "archive-activity";
  v67 = v63;
  v68 = v90;
  v64(v24, v67, v90);
  v69 = v83;
  v70 = v65;
  v71 = v88;
  v88(v34, v83, v70);
  sub_224DAAB58();
  sub_224DAB0E8();
  v72 = (v66 + 12 * v89);
  v89 = *(v61 + 48);
  *v72 = 0;
  v92(v24, v84, v68);
  v71(v34, v69, v93);
  sub_224DAAB58();
  sub_224DAB0D8();
  v73 = sub_224DA0398(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2813652C8 = v73;
  return result;
}

uint64_t sub_224AF1128()
{
  v0 = sub_224DAAB88();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E0, &unk_224DB4130);
  v2 = *(sub_224DAB1A8() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_224DB4060;
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  result = sub_224DAB198();
  qword_2813652A8 = v5;
  return result;
}

uint64_t sub_224AF1380()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37D8, &qword_224DB4128);
  v0 = *(*(v55 - 8) + 64);
  v1 = MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v53 = &v44 - v4;
  MEMORY[0x28223BE20](v3);
  v52 = &v44 - v5;
  v59 = sub_224DAB0F8();
  v6 = *(v59 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v59);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB188();
  __swift_allocate_value_buffer(v9, qword_2813652B0);
  v10 = __swift_project_value_buffer(v9, qword_2813652B0);
  if (qword_2813592A8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v11 = qword_2813652C8;
    v12 = *(qword_2813652C8 + 16);
    if (!v12)
    {
      break;
    }

    v44 = v10;
    v61 = MEMORY[0x277D84F90];

    sub_224ADA2EC(0, v12, 0);
    v60 = v61;
    v13 = v11 + 64;
    v14 = -1 << *(v11 + 32);
    v15 = sub_224DAF798();
    v16 = 0;
    v49 = v6 + 4;
    v50 = v6 + 2;
    v45 = v11 + 72;
    v46 = v12;
    v17 = v59;
    v47 = v11 + 64;
    v48 = v11;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      v19 = v15 >> 6;
      v10 = 1 << v15;
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_26;
      }

      v20 = *(v11 + 36);
      v56 = v16;
      v57 = v20;
      v21 = v55;
      v22 = *(v55 + 48);
      v23 = *(v11 + 56);
      v24 = *(*(v11 + 48) + v15);
      v58 = v6[9];
      v25 = v6[2];
      v26 = v6;
      v27 = v52;
      v25(&v52[v22], v23 + v58 * v15, v17);
      v28 = v53;
      *v53 = v24;
      v29 = v26[4];
      v29(&v28[*(v21 + 48)], &v27[v22], v59);
      v30 = v28;
      v17 = v59;
      v31 = v54;
      sub_224AFC1A8(v30, v54);
      v6 = v51;
      v29(v51, (v31 + *(v21 + 48)), v17);
      v32 = v60;
      v61 = v60;
      v34 = *(v60 + 16);
      v33 = *(v60 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_224ADA2EC(v33 > 1, v34 + 1, 1);
        v17 = v59;
        v32 = v61;
      }

      *(v32 + 16) = v34 + 1;
      v35 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v60 = v32;
      v29((v32 + v35 + v34 * v58), v6, v17);
      v18 = 1 << *(v48 + 32);
      if (v15 >= v18)
      {
        goto LABEL_27;
      }

      v13 = v47;
      v36 = *(v47 + 8 * v19);
      if ((v36 & v10) == 0)
      {
        goto LABEL_28;
      }

      v6 = v26;
      v11 = v48;
      if (v57 != *(v48 + 36))
      {
        goto LABEL_29;
      }

      v37 = v36 & (-2 << (v15 & 0x3F));
      if (v37)
      {
        v18 = __clz(__rbit64(v37)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v19 << 6;
        v39 = v19 + 1;
        v40 = (v45 + 8 * v19);
        while (v39 < (v18 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_224A3E204(v15, v57, 0);
            v18 = __clz(__rbit64(v41)) + v38;
            goto LABEL_5;
          }
        }

        sub_224A3E204(v15, v57, 0);
      }

LABEL_5:
      v16 = v56 + 1;
      v15 = v18;
      if (v56 + 1 == v46)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v60 = MEMORY[0x277D84F90];
LABEL_22:
  if (qword_281359170 != -1)
  {
    swift_once();
  }

  return sub_224DAB178();
}

unint64_t sub_224AF18C8()
{
  v49 = sub_224DAAC58();
  v47 = *(v49 - 8);
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v44 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = sub_224DAAF48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ReplicationService.ReplicationServiceError();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224AFCEFC(v0, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v32 = *v21;
        v33 = v21[1];
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_224DAF938();

        v50 = 0xD000000000000019;
        v51 = 0x8000000224DC5CC0;
        MEMORY[0x22AA5D210](v32, v33);

        return v50;
      }

      if (EnumCaseMultiPayload != 8)
      {
        return 0xD000000000000019;
      }

      (*(v14 + 32))(v17, v21, v13);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_224DAF938();

      v50 = 0xD000000000000015;
      v51 = 0x8000000224DC5CA0;
      sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790]);
      v26 = sub_224DAFD28();
LABEL_21:
      MEMORY[0x22AA5D210](v26);

      v25 = v50;
      (*(v14 + 8))(v17, v13);
      return v25;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v39 = v47;
      v40 = v45;
      v41 = v49;
      (*(v47 + 32))(v45, v21, v49);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_224DAF938();
      MEMORY[0x22AA5D210](0xD000000000000015, 0x8000000224DC5CE0);
      sub_224DAFA48();
      v25 = v50;
      (*(v39 + 8))(v40, v41);
      return v25;
    }

    (*(v14 + 32))(v17, v21, v13);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v27 = "record missing data: ";
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v14 + 32))(v17, v21, v13);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_224DAF938();

      v28 = 0x8000000224DC5DC0;
      v29 = 0xD000000000000014;
      goto LABEL_20;
    }

    (*(v14 + 32))(v17, v21, v13);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v27 = "malformed record ID: ";
LABEL_14:
    v28 = (v27 - 32) | 0x8000000000000000;
    v29 = 0xD000000000000015;
LABEL_20:
    v50 = v29;
    v51 = v28;
    v26 = sub_224DAAEF8();
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v30 = v42;
    (*(v42 + 32))(v12, v21, v9);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v50 = 0xD000000000000019;
    v51 = 0x8000000224DC5DA0;
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
    v31 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v31);

    v25 = v50;
    (*(v30 + 8))(v12, v9);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v23 = v43;
    (*(v43 + 32))(v8, v21, v5);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v50 = 0xD000000000000022;
    v51 = 0x8000000224DC5D50;
    sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150);
    v24 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v24);

    v25 = v50;
    (*(v23 + 8))(v8, v5);
  }

  else
  {
    v34 = v46;
    v35 = v44;
    v36 = v48;
    (*(v46 + 32))(v44, v21, v48);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v50 = 0xD000000000000020;
    v51 = 0x8000000224DC5D20;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v37 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v37);

    v25 = v50;
    (*(v34 + 8))(v35, v36);
  }

  return v25;
}

void sub_224AF21C0()
{
  v30[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v29[-v2];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_224AEFFB4(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_224A3311C(v3, &unk_27D6F4680, &unk_224DB4610);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281365120);
    v10 = sub_224DAB228();
    v11 = sub_224DAF288();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224A2F000, v10, v11, "Could not clear temporary directory because no URL exists", v12, 2u);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v13 = [objc_opt_self() defaultManager];
    v14 = sub_224DA95F8();
    v30[0] = 0;
    v15 = [v13 removeItemAtURL:v14 error:v30];

    if (v15)
    {
      v16 = *(v5 + 8);
      v17 = v30[0];
      v16(v8, v4);
    }

    else
    {
      v18 = v30[0];
      v19 = sub_224DA9528();

      swift_willThrow();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v20 = sub_224DAB258();
      __swift_project_value_buffer(v20, qword_281365120);
      v21 = v19;
      v22 = sub_224DAB228();
      v23 = sub_224DAF288();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138543362;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_224A2F000, v22, v23, "Could not clear temporary directory: %{public}@", v24, 0xCu);
        sub_224A3311C(v25, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v25, -1, -1);
        MEMORY[0x22AA5EED0](v24, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224AF25F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_224C569B0(a1, a2, a3);
  if (!v3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800);
    return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  }

  return result;
}

uint64_t sub_224AF2674@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v119 = a3;
  v132 = a2;
  v109 = a4;
  v111 = sub_224DA9908();
  v110 = *(v111 - 8);
  v5 = *(v110 + 64);
  v6 = MEMORY[0x28223BE20](v111);
  v107 = v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v112 = v106 - v8;
  v116 = sub_224DAAFC8();
  v115 = *(v116 - 8);
  v9 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v123 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAAB88();
  v121 = *(v11 - 8);
  v122 = v11;
  v12 = *(v121 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v114 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = v106 - v15;
  v16 = sub_224DAB0F8();
  v124 = *(v16 - 8);
  v125 = v16;
  v17 = *(v124 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v117 = v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = v106 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v113 = v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v131 = v106 - v25;
  v138 = sub_224DA9688();
  v135 = *(v138 - 8);
  v26 = *(v135 + 64);
  MEMORY[0x28223BE20](v138);
  v127 = v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAAF48();
  v29 = *(v28 - 8);
  v30 = v29[8];
  MEMORY[0x28223BE20](v28);
  v32 = v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v34 = *(v33 - 8);
  v133 = v33;
  v134 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = v106 - v36;
  v38 = v29[2];
  v108 = a1;
  v106[1] = v29 + 2;
  v106[0] = v38;
  v38(v32, a1, v28);
  v39 = sub_224DAAEF8();
  v129 = v40;
  v130 = v39;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640);
  sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640);
  sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640);
  v41 = v132;
  v42 = v138;
  sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
  sub_224DAA208();
  v43 = v29[1];
  v129 = v32;
  v130 = v28;
  v43(v32, v28);
  v44 = v135;
  v45 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v46 = v131;
  sub_224DA9F48();
  if ((*(v44 + 48))(v46, 1, v42) == 1)
  {
    sub_224A3311C(v46, &unk_27D6F4680, &unk_224DB4610);
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v47 = v133;
    v48 = v134;
    (*(v134 + 16))(v49, v37, v133);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v48 + 8))(v37, v47);
  }

  else
  {
    v51 = v133;
    v52 = v127;
    (*(v44 + 32))(v127, v46, v42);
    if (qword_2813592A8 != -1)
    {
      swift_once();
    }

    v53 = qword_2813652C8;
    v54 = v134;
    if (*(qword_2813652C8 + 16) && (v55 = sub_224B0B668(7), (v56 & 1) != 0))
    {
      v57 = *(v53 + 56);
      v59 = v124;
      v58 = v125;
      v60 = v117;
      (*(v124 + 16))(v117, v57 + *(v124 + 72) * v55, v125);
      (*(v59 + 32))(v126, v60, v58);
      v61 = v41[4];
      __swift_project_boxed_opaque_existential_1(v41, v41[3]);
      v62 = sub_224DA9F18();
      if (v63)
      {
        v64 = v62;
      }

      else
      {
        v64 = 0x566E776F6E6B6E75;
      }

      if (v63)
      {
        v65 = v63;
      }

      else
      {
        v65 = 0xEE006E6F69737265;
      }

      v66 = *(v119 + 4);
      __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
      v136 = v64;
      v137 = v65;
      v128 = v65;
      v67 = v118;
      sub_224DAB0C8();
      sub_224DAAB68();
      v68 = v67;
      v69 = v122;
      v119 = *(v121 + 8);
      v119(v68, v122);
      sub_224AFC264();
      v131 = v37;
      sub_224AFC2B8();
      v70 = v120;
      v71 = sub_224DAB0A8();
      v121 = v72;
      if (v70)
      {
        (*(v59 + 8))(v126, v125);
        (*(v135 + 8))(v127, v138);
        (*(v134 + 8))(v131, v133);
      }

      else
      {
        v74 = v71;

        v75 = v135;
        v76 = v113;
        v77 = v138;
        (*(v135 + 16))(v113, v127, v138);
        (*(v75 + 56))(v76, 0, 1, v77);
        sub_224A77FD0(v74, v121);
        sub_224DAAFB8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v78 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v79 = *(*v78 + 72);
        v80 = *(*v78 + 80);
        v128 = v74;
        v81 = (v80 + 32) & ~v80;
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_224DB3100;
        v83 = (v82 + v81);
        v84 = v78[14];
        v85 = v114;
        sub_224DAB0C8();
        v86 = sub_224DAAB68();
        v119(v85, v69);
        *v83 = v86;
        (*(v115 + 16))(v83 + v84, v123, v116);
        sub_224DA06F0(v82);
        swift_setDeallocating();
        sub_224A3311C(v83, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        v87 = v41[4];
        __swift_project_boxed_opaque_existential_1(v41, v41[3]);
        v88 = v131;
        v89 = sub_224DA9F28();
        if (v90)
        {
          v91 = v128;
          v136 = v89;
          v137 = v90;
          v92 = v112;
          sub_224DAAE48();
          v93 = v134;

          (v106[0])(v129, v108, v130);
          v104 = v110;
          v105 = v111;
          (*(v110 + 16))(v107, v92, v111);
          sub_224DAAF78();
          sub_224A78024(v91, v121);
          (*(v104 + 8))(v92, v105);
          (*(v115 + 8))(v123, v116);
          (*(v124 + 8))(v126, v125);
          (*(v135 + 8))(v127, v138);
          return (*(v93 + 8))(v131, v133);
        }

        else
        {
          v94 = v88;
          type metadata accessor for ReplicationService.ReplicationServiceError();
          sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
          swift_allocError();
          v95 = v134;
          v97 = v96;
          v98 = v88;
          v99 = v133;
          (*(v134 + 16))(v97, v98, v133);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_224A78024(v128, v121);
          v100 = v135;
          v102 = v124;
          v101 = v125;
          v103 = v126;
          (*(v115 + 8))(v123, v116);
          (*(v102 + 8))(v103, v101);
          (*(v100 + 8))(v127, v138);
          return (*(v95 + 8))(v94, v99);
        }
      }
    }

    else
    {
      type metadata accessor for ReplicationService.ReplicationServiceError();
      sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
      swift_allocError();
      *v73 = 1852793705;
      v73[1] = 0xE400000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v44 + 8))(v52, v42);
      return (*(v54 + 8))(v37, v51);
    }
  }
}

uint64_t sub_224AF3524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_224C57C80(a1, a2, a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56B0, &unk_224DB4140);
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_224AF359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a6;
  v53 = a2;
  v54 = a1;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v55 = v14;
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v47 - v15;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a4;
  v62 = a5;
  v57 = a7;
  v63 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
  v22 = a3;
  v23 = a3;
  v24 = *(v11 + 16);
  v24(boxed_opaque_existential_1, v23, a4);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v54 |= 0x40u;
  v25 = __swift_project_value_buffer(v16, qword_281365120);
  (*(v17 + 16))(v20, v25, v16);
  sub_224A3317C(v53, v59);
  v26 = v52;
  v49 = v22;
  v24(v52, v22, a4);
  v53 = v16;
  v27 = *(v11 + 80);
  v51 = v17;
  v28 = swift_allocObject();
  v47 = v24;
  v29 = v28;
  *(v28 + 2) = a4;
  *(v28 + 3) = a5;
  v48 = a5;
  v30 = v57;
  *(v28 + 4) = v58;
  *(v28 + 5) = v30;
  sub_224A36F98(v59, v28 + 48);
  v50 = v20;
  v31 = *(v11 + 32);
  v31(v29 + ((v27 + 88) & ~v27), v26, a4);
  v32 = v56;
  v47(v56, v49, a4);
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 2) = a4;
  *(v33 + 3) = v34;
  *(v33 + 4) = v58;
  *(v33 + 5) = v30;
  v31(v33 + ((v27 + 48) & ~v27), v32, a4);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37F0, &qword_224DB4170);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37F8, &qword_224DB4178);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v38 + 24) = sub_224DAB358();
  *(v38 + qword_281365300) = MEMORY[0x277D84FA0];
  *(v38 + qword_2813652D8) = 0;
  *(v38 + 32) = v54;
  sub_224AB1DE0(&v60, (v38 + 40));
  (*(v51 + 32))(v38 + qword_2813652E0, v50, v53);
  v42 = (v38 + qword_2813652F8);
  *v42 = sub_224AFC30C;
  v42[1] = v29;
  v43 = (v38 + qword_2813652E8);
  *v43 = sub_224AEC7AC;
  v43[1] = 0;
  v44 = (v38 + qword_281365308);
  *v44 = sub_224AFC338;
  v44[1] = v33;
  v45 = (v38 + qword_2813652F0);
  *v45 = sub_224AF8BC8;
  v45[1] = 0;
  return v38;
}

uint64_t sub_224AF3A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a6;
  v53 = a2;
  v54 = a1;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v55 = v14;
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v47 - v15;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a4;
  v62 = a5;
  v57 = a7;
  v63 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
  v22 = a3;
  v23 = a3;
  v24 = *(v11 + 16);
  v24(boxed_opaque_existential_1, v23, a4);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v54 |= 0x40u;
  v25 = __swift_project_value_buffer(v16, qword_281365120);
  (*(v17 + 16))(v20, v25, v16);
  sub_224A3317C(v53, v59);
  v26 = v52;
  v49 = v22;
  v24(v52, v22, a4);
  v53 = v16;
  v27 = *(v11 + 80);
  v51 = v17;
  v28 = swift_allocObject();
  v47 = v24;
  v29 = v28;
  *(v28 + 2) = a4;
  *(v28 + 3) = a5;
  v48 = a5;
  v30 = v57;
  *(v28 + 4) = v58;
  *(v28 + 5) = v30;
  sub_224A36F98(v59, v28 + 48);
  v50 = v20;
  v31 = *(v11 + 32);
  v31(v29 + ((v27 + 88) & ~v27), v26, a4);
  v32 = v56;
  v47(v56, v49, a4);
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 2) = a4;
  *(v33 + 3) = v34;
  *(v33 + 4) = v58;
  *(v33 + 5) = v30;
  v31(v33 + ((v27 + 48) & ~v27), v32, a4);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3838, &qword_224DB41A8);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3840, &unk_224DB41B0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v38 + 24) = sub_224DAB358();
  *(v38 + qword_281365300) = MEMORY[0x277D84FA0];
  *(v38 + qword_2813652D8) = 0;
  *(v38 + 32) = v54;
  sub_224AB1DE0(&v60, (v38 + 40));
  (*(v51 + 32))(v38 + qword_2813652E0, v50, v53);
  v42 = (v38 + qword_2813652F8);
  *v42 = sub_224AFC380;
  v42[1] = v29;
  v43 = (v38 + qword_2813652E8);
  *v43 = sub_224AEC7AC;
  v43[1] = 0;
  v44 = (v38 + qword_281365308);
  *v44 = sub_224AFC48C;
  v44[1] = v33;
  v45 = (v38 + qword_2813652F0);
  *v45 = sub_224AFA674;
  v45[1] = 0;
  return v38;
}

uint64_t sub_224AF3E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v143 = a6;
  v144 = a5;
  v149 = a4;
  v139 = a3;
  v140 = a2;
  v132 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v130 = v116 - v10;
  v131 = sub_224DAAFF8();
  v129 = *(v131 - 8);
  v11 = *(v129 + 64);
  v12 = MEMORY[0x28223BE20](v131);
  v127 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v119 = v116 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v125 = v116 - v17;
  MEMORY[0x28223BE20](v16);
  v126 = v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v116 - v21;
  v135 = sub_224DAAFC8();
  v134 = *(v135 - 8);
  v23 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DA9688();
  v137 = *(v25 - 8);
  v138 = v25;
  v26 = *(v137 + 64);
  MEMORY[0x28223BE20](v25);
  v141 = v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_224DAAC58();
  v148 = *(v152 - 1);
  v28 = *(v148 + 64);
  MEMORY[0x28223BE20](v152);
  v151 = v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DA9908();
  v31 = *(v30 - 8);
  v146 = v30;
  v147 = v31;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v124 = v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v136 = v116 - v36;
  MEMORY[0x28223BE20](v35);
  v145 = v116 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v150 = v116 - v40;
  v41 = sub_224DAAF48();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v122 = v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = v116 - v46;
  v48 = sub_224DAC2B8();
  v153 = *(v48 - 8);
  v49 = *(v153 + 64);
  v50 = MEMORY[0x28223BE20](v48);
  v142 = v116 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = v116 - v53;
  MEMORY[0x28223BE20](v52);
  v154 = v116 - v55;
  v56 = *(v42 + 16);
  v128 = a1;
  v121 = v42 + 16;
  v120 = v56;
  v56(v47, a1, v41);
  sub_224DAAEF8();
  v57 = sub_224DA96A8();
  v59 = v58;

  if (v59 >> 60 == 15)
  {
    sub_224AFC52C();
    swift_allocError();
    swift_willThrow();
    return (*(v42 + 8))(v47, v41);
  }

  else
  {
    v118 = v22;
    v123 = v41;
    sub_224DAAD38();
    sub_224AFC698(&qword_27D6F3868, 255, MEMORY[0x277CF99B8]);
    v61 = v157;
    sub_224DAAD18();
    if (v61)
    {
      (*(v42 + 8))(v47, v123);
      return sub_224AC1D9C(v57, v59);
    }

    else
    {
      v157 = 0;
      sub_224DAC2A8();
      v117 = v48;
      sub_224DAC288();
      v62 = v117;
      v63 = v153;
      sub_224DAC298();
      sub_224AC1D9C(v57, v59);
      v66 = *(v63 + 8);
      v65 = v63 + 8;
      v64 = v66;
      (v66)(v54, v62);
      (*(v42 + 8))(v47, v123);
      v67 = v148;
      v68 = v149;
      v69 = *(v148 + 16);
      v71 = v151;
      v70 = v152;
      v69(v151, v149, v152);
      if ((*(v67 + 88))(v71, v70) == *MEMORY[0x277D46558])
      {
        (*(v67 + 96))(v71, v70);
        v72 = *v71;
        if (*(*v71 + 16) == 1)
        {
          v152 = v64;
          v153 = v65;
          v73 = v147 + 16;
          v74 = v72 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
          v75 = v145;
          v151 = *(v147 + 16);
          (v151)(v145, v74, v146);

          v76 = *(v143 + 32);
          __swift_project_boxed_opaque_existential_1(v143, *(v143 + 24));
          sub_224B942B8(v144);
          sub_224AFC580();
          sub_224AFC5D4();
          v77 = v157;
          v78 = sub_224DAAB38();
          if (v77)
          {

            (*(v147 + 8))(v75, v146);
            return (v152)(v154, v117);
          }

          else
          {
            v116[1] = v73;
            v86 = v80;
            v148 = v78;
            v149 = v79;

            v87 = v154;
            sub_224DAC2A8();
            v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
            (*(*(v88 - 8) + 56))(v150, 1, 1, v88);
            sub_224DAC298();
            swift_getObjectType();
            v89 = *(*(v139 + 8) + 8);
            v90 = v141;
            sub_224DAC3F8();
            v155 = sub_224DAC408();
            v156 = v91;
            sub_224DAAE48();
            v157 = 0;

            v93 = v137;
            v92 = v138;
            v94 = v118;
            (*(v137 + 16))(v118, v90, v138);
            (*(v93 + 56))(v94, 0, 1, v92);
            sub_224A77FD0(v148, v149);
            v95 = v133;
            sub_224DAAFB8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
            v96 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
            v97 = *(*v96 + 72);
            v98 = (*(*v96 + 80) + 32) & ~*(*v96 + 80);
            v99 = swift_allocObject();
            v143 = xmmword_224DB3100;
            *(v99 + 16) = xmmword_224DB3100;
            v100 = (v99 + v98);
            v101 = v96[14];
            *v100 = v86;
            (*(v134 + 16))(&v100[v101], v95, v135);
            v150 = sub_224DA06F0(v99);
            swift_setDeallocating();
            sub_224A3311C(v100, &unk_27D6F6FE0, &unk_224DB9C50);
            swift_deallocClassInstance();
            if (v144 > 0x3Fu)
            {
              v155 = MEMORY[0x277D84F90];
              sub_224AFC698(&unk_27D6F5720, 255, MEMORY[0x277D467D0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
              sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300);
              v106 = v125;
              v107 = v131;
              sub_224DAF788();
              v102 = v129;
              v108 = *(v129 + 32);
            }

            else
            {
              v102 = v129;
              if ((v144 - 3) > 1u)
              {
                v155 = MEMORY[0x277D84F90];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3888, &unk_224DB41D0);
                v103 = *(v102 + 72);
                v104 = (*(v102 + 80) + 32) & ~*(v102 + 80);
                v105 = swift_allocObject();
                *(v105 + 16) = v143;
                sub_224DAAFE8();
                v155 = v105;
              }

              sub_224AFC698(&unk_27D6F5720, 255, MEMORY[0x277D467D0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
              sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300);
              v109 = v119;
              v107 = v131;
              sub_224DAF788();
              v108 = *(v102 + 32);
              v106 = v125;
              v108(v125, v109, v107);
            }

            v110 = v126;
            v108(v126, v106, v107);
            v120(v122, v128, v123);
            v111 = v146;
            (v151)(v124, v136, v146);
            v112 = sub_224DA9878();
            (*(*(v112 - 8) + 56))(v130, 1, 1, v112);
            (*(v102 + 16))(v127, v110, v107);
            sub_224DAAF58();
            sub_224A78024(v148, v149);
            (*(v102 + 8))(v110, v107);
            (*(v134 + 8))(v133, v135);
            v113 = *(v147 + 8);
            v113(v136, v111);
            (*(v137 + 8))(v141, v138);
            v114 = v117;
            v115 = v152;
            (v152)(v142, v117);
            v113(v145, v111);
            return v115(v87, v114);
          }
        }

        else
        {

          type metadata accessor for ReplicationService.ReplicationServiceError();
          sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
          swift_allocError();
          v69(v85, v68, v70);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return (v64)(v154, v117);
        }
      }

      else
      {
        type metadata accessor for ReplicationService.ReplicationServiceError();
        sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
        swift_allocError();
        v82 = v81;
        v83 = v68;
        v84 = v152;
        v69(v82, v83, v152);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (v64)(v154, v62);
        return (*(v67 + 8))(v151, v84);
      }
    }
  }
}

uint64_t sub_224AF5174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47[1] = v47 - v6;
  v53 = sub_224DAC268();
  v48 = *(v53 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x28223BE20](v53);
  v52 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = v47 - v11;
  MEMORY[0x28223BE20](v10);
  v49 = v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v47 - v18;
  sub_224AFC628(a1, v47 - v18);
  v20 = *(v13 + 48);
  v21 = sub_224DAAF08();
  v23 = v22;
  v24 = sub_224DAAF48();
  v54 = *(*(v24 - 8) + 8);
  v54(v19, v24);
  if (v21 == 0xD000000000000010 && 0x8000000224DC43E0 == v23)
  {

    v29 = sub_224DA9908();
    (*(*(v29 - 8) + 8))(&v19[v20], v29);
  }

  else
  {
    v26 = sub_224DAFD88();

    v27 = sub_224DA9908();
    (*(*(v27 - 8) + 8))(&v19[v20], v27);
    if ((v26 & 1) == 0)
    {
      v28 = 0;
      return v28 & 1;
    }
  }

  sub_224AFC698(&qword_281351730, 255, MEMORY[0x277D46790]);
  v30 = sub_224DAEDD8();
  v31 = v56;
  if (v30)
  {
LABEL_14:
    v28 = 0;
    return v28 & 1;
  }

  sub_224AFC628(a1, v17);
  v32 = *(v13 + 48);
  sub_224DAAEF8();
  v33 = sub_224DA96A8();
  v35 = v34;

  if (v35 >> 60 == 15)
  {
    v54(v17, v24);
LABEL_13:
    v37 = sub_224DA9908();
    (*(*(v37 - 8) + 8))(&v17[v32], v37);
    goto LABEL_14;
  }

  v55 = v32;
  sub_224DAAD38();
  sub_224AFC698(&qword_27D6F56D0, 255, MEMORY[0x277CF9978]);
  v36 = v52;
  sub_224DAAD18();
  if (v31)
  {
    v54(v17, v24);
    sub_224AC1D9C(v33, v35);

    v32 = v55;
    goto LABEL_13;
  }

  v56 = sub_224DAC248();
  sub_224DAC258();
  sub_224DAC218();
  sub_224DAC228();
  sub_224AC1D9C(v33, v35);
  v39 = v48;
  v40 = v53;
  v56 = *(v48 + 8);
  v56(v36, v53);
  v54(v17, v24);
  v41 = sub_224DA9908();
  (*(*(v41 - 8) + 8))(&v17[v55], v41);
  v42 = v49;
  (*(v39 + 32))(v49, v51, v40);
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v43 = sub_224DAC248();
  v44 = sub_224DAC248();
  LOBYTE(v40) = sub_224DAF6A8();

  if (v40)
  {
    v45 = sub_224DAC258();
    v46 = sub_224DAC258();
    v28 = sub_224DAF6A8();
  }

  else
  {
    v28 = 0;
  }

  v56(v42, v53);
  return v28 & 1;
}

uint64_t sub_224AF57B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, unint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v142 = a6;
  v160 = a4;
  v149 = a2;
  v136 = a7;
  v10 = sub_224DAAF28();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v135 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v137 = &v132 - v15;
  v140 = sub_224DAAFC8();
  v139 = *(v140 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v141 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_224DAAC58();
  v147 = *(v148 - 8);
  v18 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_224DA9908();
  v144 = *(v145 - 8);
  v20 = *(v144 + 64);
  v21 = MEMORY[0x28223BE20](v145);
  v134 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v138 = &v132 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v143 = &v132 - v26;
  v176 = a5;
  v164 = *(a5 - 8);
  v27 = *(v164 + 64);
  MEMORY[0x28223BE20](v25);
  v165 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_224DAAF48();
  v172 = v29;
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v29);
  v150 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v133 = &v132 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v132 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v170 = *(v38 - 8);
  v171 = v38;
  v39 = *(v170 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v163 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v132 - v42;
  v153 = *(a3 + 3);
  v152 = *(a3 + 4);
  v159 = a3;
  v151 = __swift_project_boxed_opaque_existential_1(a3, v153);
  v44 = v30[2];
  v169 = a1;
  v166 = v44;
  v167 = v30 + 2;
  v44(v37, a1, v29);
  v168 = sub_224DAAEF8();
  v162 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v47 = sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
  v48 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
  v49 = sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
  v50 = sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
  v51 = v172;
  v158 = v46;
  v157 = v47;
  v156 = v48;
  v155 = v49;
  v154 = v50;
  sub_224DAA208();
  v52 = v30[1];
  v162 = v37;
  v168 = (v30 + 1);
  v52(v37, v51);
  v53 = v161;
  v54 = (*(v152 + 40))(v43, v153);
  if (v53)
  {
    v161 = *(v170 + 8);
    v161(v43, v171);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v55 = sub_224DAB258();
    __swift_project_value_buffer(v55, qword_281365120);
    v56 = v150;
    v166(v150, v169, v51);
    v57 = sub_224DAB228();
    v58 = sub_224DAF288();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v173 = v60;
      *v59 = 136315138;
      sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790]);
      v61 = sub_224DAFD28();
      v62 = v56;
      v64 = v63;
      v52(v62, v51);
      v65 = sub_224A33F74(v61, v64, &v173);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_224A2F000, v57, v58, "Cannot find host: %s to determine activation status", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x22AA5EED0](v60, -1, -1);
      MEMORY[0x22AA5EED0](v59, -1, -1);
    }

    else
    {

      v52(v56, v51);
    }

    v67 = 0;
    v153 = 0;
  }

  else
  {
    v66 = v54;
    v153 = 0;
    v161 = *(v170 + 8);
    v161(v43, v171);
    v67 = v66 & 1;
  }

  v68 = v165;
  v69 = v52;
  v70 = *(v159 + 3);
  v71 = *(v159 + 4);
  __swift_project_boxed_opaque_existential_1(v159, v70);
  (*(v71 + 32))(&v173, 768, v70, v71);
  if (!v175)
  {
    sub_224A3311C(&v173, &qword_27D6F50E0, &qword_224DB41A0);
    v73 = v163;
    v74 = v164;
    v75 = v169;
LABEL_13:
    v72 = sub_224A870EC(MEMORY[0x277D84F90]);

    goto LABEL_14;
  }

  v72 = sub_224A86CAC();
  sub_224A699F0(&v173);
  v73 = v163;
  v74 = v164;
  v75 = v169;
  if (!v72)
  {
    goto LABEL_13;
  }

LABEL_14:
  (*(v74 + 16))(v68, v160, v176);
  v76 = v162;
  v77 = v75;
  v78 = v172;
  v166(v162, v77, v172);
  sub_224DAAEF8();
  sub_224DAA208();
  v69(v76, v78);
  if (*(v72 + 16) && (v79 = sub_224A683FC(v73), (v80 & 1) != 0))
  {
    v159 = v69;
    v160 = v67;
    v81 = *(*(v72 + 56) + 8 * v79);
    v82 = v147;
    v83 = *(v147 + 16);
    v84 = v146;
    v85 = v149;
    v86 = v148;
    v83(v146, v149, v148);
    if ((*(v82 + 88))(v84, v86) == *MEMORY[0x277D46558])
    {
      v158 = v83;
      (*(v82 + 96))(v84, v86);
      if (*(*v84 + 16) == 1)
      {
        v87 = *(v144 + 16);
        v88 = *v84 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v89 = v143;
        v155 = v144 + 16;
        v154 = v87;
        v87(v143, v88, v145);
        v90 = v81;

        v91 = [v90 containerDescriptors];
        sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
        v92 = sub_224DAF008();

        MEMORY[0x28223BE20](v93);
        v131 = v89;
        v94 = v89;
        v95 = v153;
        sub_224AEA1F4(sub_224AFC364, (&v132 - 4), v92);
        v156 = v95;

        v157 = v90;
        v96 = [v90 metricsSpecification];
        v97 = objc_allocWithZone(MEMORY[0x277CFA360]);
        v98 = sub_224DAEFF8();

        v99 = [v97 initWithContainerDescriptors:v98 metricsSpecification:v96];

        sub_224DAAF08();
        v173 = v99;
        v174 = v160;
        v100 = *(v142 + 16);
        v158 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190);
        v131 = v100;
        v101 = v176;
        v102 = v165;
        v103 = v156;
        v104 = sub_224DAAB38();
        v156 = v106;
        if (v103)
        {

          v107 = v158;
          v161(v163, v171);
          (*(v164 + 8))(v102, v101);

          return (*(v144 + 8))(v94, v145);
        }

        else
        {
          v114 = v105;
          v115 = v104;

          v116 = sub_224DA9688();
          (*(*(v116 - 8) + 56))(v137, 1, 1, v116);
          sub_224A77FD0(v115, v114);
          v117 = v141;
          v152 = v115;
          v153 = v114;
          sub_224DAAFB8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
          v118 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
          v119 = *(*v118 + 72);
          v120 = (*(*v118 + 80) + 32) & ~*(*v118 + 80);
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_224DB3100;
          v122 = (v121 + v120);
          v123 = v118[14];
          *v122 = v156;
          (*(v139 + 16))(v122 + v123, v117, v140);
          v156 = sub_224DA06F0(v121);
          swift_setDeallocating();
          sub_224A3311C(v122, &unk_27D6F6FE0, &unk_224DB9C50);
          swift_deallocClassInstance();
          sub_224C59BA8(v160, v138);
          sub_224AFC698(&qword_281351A00, 255, MEMORY[0x277CC95F0]);
          v173 = sub_224DAFD28();
          v174 = v124;
          MEMORY[0x22AA5D210](46, 0xE100000000000000);
          v160 = 0;
          v125 = sub_224DAAEF8();
          MEMORY[0x22AA5D210](v125);

          v151 = v173;
          v150 = v174;
          sub_224DAAF08();
          sub_224DAAEC8();
          sub_224DAAF38();
          v126 = v162;
          sub_224DAAEE8();
          v127 = v172;
          v166(v133, v126, v172);
          v128 = v138;
          v129 = v145;
          v154(v134, v138, v145);
          sub_224DAAF78();

          sub_224A78024(v152, v153);
          v159(v126, v127);
          v130 = *(v144 + 8);
          v130(v128, v129);
          (*(v139 + 8))(v141, v140);
          v161(v163, v171);
          (*(v164 + 8))(v165, v176);
          return (v130)(v143, v129);
        }
      }

      else
      {
        v112 = v81;

        type metadata accessor for ReplicationService.ReplicationServiceError();
        sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
        swift_allocError();
        v158(v113, v149, v86);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v161(v163, v171);
        return (*(v164 + 8))(v165, v176);
      }
    }

    else
    {
      type metadata accessor for ReplicationService.ReplicationServiceError();
      sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
      swift_allocError();
      v172 = v72;
      v83(v111, v85, v86);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v161(v163, v171);
      (*(v164 + 8))(v165, v176);
      return (*(v82 + 8))(v84, v86);
    }
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v109 = v171;
    (*(v170 + 16))(v110, v73, v171);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v161(v73, v109);
    return (*(v74 + 8))(v68, v176);
  }
}

uint64_t sub_224AF6D18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a3;
  v118 = a2;
  v101 = a4;
  v105 = sub_224DAAFC8();
  v104 = *(v105 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v106 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAB88();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](v7);
  v114 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v10 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v110 = &v100 - v11;
  v12 = sub_224DA9908();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  MEMORY[0x28223BE20](v12);
  v109 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v117 = *(v15 - 8);
  v16 = *(v117 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v108 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v100 - v19;
  v20 = sub_224DAB0F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v107 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v123 = &v100 - v25;
  v124 = sub_224DAAF48();
  v126 = *(v124 - 8);
  v26 = *(v126 + 64);
  MEMORY[0x28223BE20](v124);
  v128 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAB018();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_281364DF0);
  v34 = *(v29 + 16);
  v125 = a1;
  v34(v32, a1, v28);
  v35 = sub_224DAB228();
  v36 = sub_224DAF278();
  v37 = os_log_type_enabled(v35, v36);
  v120 = v20;
  v121 = v15;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v119 = v21;
    v39 = v38;
    v40 = swift_slowAlloc();
    v127[0] = v40;
    *v39 = 136315138;
    sub_224AFC698(&qword_27D6F3830, 255, MEMORY[0x277D467E8]);
    v41 = sub_224DAFD28();
    v43 = v42;
    (*(v29 + 8))(v32, v28);
    v44 = sub_224A33F74(v41, v43, v127);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_224A2F000, v35, v36, "received record %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    v45 = v119;
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  else
  {
    v45 = v21;

    (*(v29 + 8))(v32, v28);
  }

  v46 = v128;
  sub_224DAAF88();
  sub_224DAAF08();
  v47 = v126 + 8;
  v48 = *(v126 + 8);
  v49 = v124;
  v48(v46, v124);
  v50 = sub_224AFC108();
  if (v50 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v52 = v51;
    sub_224DAAF88();
    v53 = sub_224DAAF08();
    v55 = v54;
    v48(v46, v49);
    *v52 = v53;
    v52[1] = v55;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v56 = v50;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v57 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v58 = sub_224B0B668(v56), (v59 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v76 = v75;
    *v75 = sub_224AF02C0(v56);
    v76[1] = v77;
    goto LABEL_15;
  }

  v60 = *(v57 + 56) + *(v45 + 72) * v58;
  v61 = v107;
  v62 = v120;
  (*(v45 + 16))(v107, v60, v120);
  (*(v45 + 32))(v123, v61, v62);
  sub_224DAAF88();
  sub_224DAAEF8();
  v107 = v63;
  sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
  v64 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
  v126 = v47;
  v100 = v64;
  sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
  v119 = v45;
  sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
  v65 = v49;
  v66 = v108;
  sub_224DAA208();
  v48(v128, v65);
  v67 = v109;
  sub_224DAAD98();
  v68 = v121;
  sub_224DAA1E8();
  sub_224DA9898();
  v69 = v123;
  sub_224DAA1D8();
  (*(v111 + 8))(v67, v112);
  v70 = *(v117 + 8);
  v70(v66, v68);
  v71 = v114;
  sub_224DAB0C8();
  v72 = sub_224DAAEB8();
  LOBYTE(v61) = v73;
  (*(v115 + 8))(v71, v116);
  if (v61)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v70(v122, v121);
    return (*(v119 + 8))(v69, v120);
  }

  v128 = v70;
  v78 = v122;
  v79 = sub_224DAAFD8();
  if (*(v79 + 16) && (v80 = sub_224B31510(v72), (v81 & 1) != 0))
  {
    (*(v104 + 16))(v106, *(v79 + 56) + *(v104 + 72) * v80, v105);

    v82 = v103;
    v83 = v103[4];
    v126 = v103[3];
    v124 = v83;
    v125 = __swift_project_boxed_opaque_existential_1(v103, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
    v84 = sub_224DAAFA8();
    v86 = v85;
    v87 = sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190);
    sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190);
    v124 = v87;
    v88 = v102;
    sub_224DAB098();
    if (!v88)
    {
      sub_224A78024(v84, v86);
      v125 = v127[0];
      v126 = sub_224C91BAC();
      v89 = v82[4];
      v116 = __swift_project_boxed_opaque_existential_1(v82, v82[3]);
      v90 = sub_224DAAFA8();
      v92 = v91;
      sub_224DAB098();

      sub_224A78024(v90, v92);
      (*(v104 + 8))(v106, v105);
      (*(v119 + 8))(v123, v120);

      v94 = v127[1];
      v95 = v101;
      (*(v117 + 32))(v101, v122, v121);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
      *(v95 + *(v96 + 36)) = v126;
      v97 = v95 + *(v96 + 40);
      *v97 = v94;
      *(v97 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3808, &qword_224DB4188);
      swift_storeEnumTagMultiPayload();
      v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3800, &qword_224DB4180) + 44);
      v99 = sub_224DAAE38();
      return (*(*(v99 - 8) + 16))(v95 + v98, v118, v99);
    }

    sub_224A78024(v84, v86);
    (*(v104 + 8))(v106, v105);
    v93 = v122;
  }

  else
  {

    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v93 = v78;
  }

  (v128)(v93, v121);
  return (*(v119 + 8))(v123, v120);
}

uint64_t sub_224AF7C70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a3;
  v118 = a2;
  v101 = a4;
  v105 = sub_224DAAFC8();
  v104 = *(v105 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v106 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAB88();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](v7);
  v114 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v10 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v110 = &v100 - v11;
  v12 = sub_224DA9908();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  MEMORY[0x28223BE20](v12);
  v109 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v117 = *(v15 - 8);
  v16 = *(v117 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v108 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v100 - v19;
  v20 = sub_224DAB0F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v107 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v123 = &v100 - v25;
  v124 = sub_224DAAF48();
  v126 = *(v124 - 8);
  v26 = *(v126 + 64);
  MEMORY[0x28223BE20](v124);
  v128 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAB018();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_281364DF0);
  v34 = *(v29 + 16);
  v125 = a1;
  v34(v32, a1, v28);
  v35 = sub_224DAB228();
  v36 = sub_224DAF278();
  v37 = os_log_type_enabled(v35, v36);
  v120 = v20;
  v121 = v15;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v119 = v21;
    v39 = v38;
    v40 = swift_slowAlloc();
    v127[0] = v40;
    *v39 = 136315138;
    sub_224AFC698(&qword_27D6F3830, 255, MEMORY[0x277D467E8]);
    v41 = sub_224DAFD28();
    v43 = v42;
    (*(v29 + 8))(v32, v28);
    v44 = sub_224A33F74(v41, v43, v127);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_224A2F000, v35, v36, "received record %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    v45 = v119;
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  else
  {
    v45 = v21;

    (*(v29 + 8))(v32, v28);
  }

  v46 = v128;
  sub_224DAAF88();
  sub_224DAAF08();
  v47 = v126 + 8;
  v48 = *(v126 + 8);
  v49 = v124;
  v48(v46, v124);
  v50 = sub_224AFC108();
  if (v50 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v52 = v51;
    sub_224DAAF88();
    v53 = sub_224DAAF08();
    v55 = v54;
    v48(v46, v49);
    *v52 = v53;
    v52[1] = v55;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v56 = v50;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v57 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v58 = sub_224B0B668(v56), (v59 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v76 = v75;
    *v75 = sub_224AF02C0(v56);
    v76[1] = v77;
    goto LABEL_15;
  }

  v60 = *(v57 + 56) + *(v45 + 72) * v58;
  v61 = v107;
  v62 = v120;
  (*(v45 + 16))(v107, v60, v120);
  (*(v45 + 32))(v123, v61, v62);
  sub_224DAAF88();
  sub_224DAAEF8();
  v107 = v63;
  sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
  v64 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
  v126 = v47;
  v100 = v64;
  sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
  v119 = v45;
  sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
  v65 = v49;
  v66 = v108;
  sub_224DAA208();
  v48(v128, v65);
  v67 = v109;
  sub_224DAAD98();
  v68 = v121;
  sub_224DAA1E8();
  sub_224DA9898();
  v69 = v123;
  sub_224DAA1D8();
  (*(v111 + 8))(v67, v112);
  v70 = *(v117 + 8);
  v70(v66, v68);
  v71 = v114;
  sub_224DAB0C8();
  v72 = sub_224DAAEB8();
  LOBYTE(v61) = v73;
  (*(v115 + 8))(v71, v116);
  if (v61)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v70(v122, v121);
    return (*(v119 + 8))(v69, v120);
  }

  v128 = v70;
  v78 = v122;
  v79 = sub_224DAAFD8();
  if (*(v79 + 16) && (v80 = sub_224B31510(v72), (v81 & 1) != 0))
  {
    (*(v104 + 16))(v106, *(v79 + 56) + *(v104 + 72) * v80, v105);

    v82 = v103;
    v83 = v103[4];
    v126 = v103[3];
    v124 = v83;
    v125 = __swift_project_boxed_opaque_existential_1(v103, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3850, &qword_224DB41C8);
    v84 = sub_224DAAFA8();
    v86 = v85;
    v87 = sub_224A33088(&qword_27D6F3858, &qword_27D6F3850, &qword_224DB41C8);
    sub_224A33088(&qword_27D6F3860, &qword_27D6F3850, &qword_224DB41C8);
    v124 = v87;
    v88 = v102;
    sub_224DAB098();
    if (!v88)
    {
      sub_224A78024(v84, v86);
      v125 = v127[0];
      v126 = sub_224D6F99C();
      v89 = v82[4];
      v116 = __swift_project_boxed_opaque_existential_1(v82, v82[3]);
      v90 = sub_224DAAFA8();
      v92 = v91;
      sub_224DAB098();

      sub_224A78024(v90, v92);
      (*(v104 + 8))(v106, v105);
      (*(v119 + 8))(v123, v120);

      v94 = v127[1];
      v95 = v101;
      (*(v117 + 32))(v101, v122, v121);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
      *(v95 + *(v96 + 36)) = v126;
      v97 = v95 + *(v96 + 40);
      *v97 = v94;
      *(v97 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3340, &qword_224DB41C0);
      swift_storeEnumTagMultiPayload();
      v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3848, &qword_224DBD830) + 44);
      v99 = sub_224DAAE38();
      return (*(*(v99 - 8) + 16))(v95 + v98, v118, v99);
    }

    sub_224A78024(v84, v86);
    (*(v104 + 8))(v106, v105);
    v93 = v122;
  }

  else
  {

    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v93 = v78;
  }

  (v128)(v93, v121);
  return (*(v119 + 8))(v123, v120);
}

uint64_t sub_224AF8C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a5;
  v68 = a6;
  v65 = a3;
  v66 = a4;
  v70 = a2;
  v69 = a7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v49 - v9;
  v10 = sub_224DA9908();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v49 - v17;
  v18 = sub_224DAAF48();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364DF0);
  v26 = v19[2];
  v26(v24, a1, v18);
  v27 = sub_224DAB228();
  v28 = sub_224DAF278();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v50 = v26;
    v30 = v29;
    v49 = swift_slowAlloc();
    v71 = v49;
    *v30 = 136315138;
    sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790]);
    v31 = sub_224DAFD28();
    v51 = a1;
    v33 = v32;
    v34 = v19[1];
    v53 = (v19 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v34;
    v34(v24, v18);
    v35 = sub_224A33F74(v31, v33, &v71);
    a1 = v51;

    *(v30 + 4) = v35;
    _os_log_impl(&dword_224A2F000, v27, v28, "received deletion record %s", v30, 0xCu);
    v36 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    v37 = v30;
    v26 = v50;
    MEMORY[0x22AA5EED0](v37, -1, -1);
  }

  else
  {

    v38 = v19[1];
    v53 = (v19 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v38;
    v38(v24, v18);
  }

  v52 = v18;
  v39 = v55;
  v26(v55, a1, v18);
  sub_224DAAEF8();
  v51 = sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
  v50 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
  sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
  sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
  v40 = v56;
  sub_224DAA208();
  v54(v39, v52);
  v41 = v58;
  sub_224DAAD98();
  v42 = v60;
  sub_224DAA1E8();
  sub_224DA9898();
  v43 = v57;
  sub_224DAA1D8();
  (*(v62 + 8))(v41, v63);
  v44 = v59;
  (*(v59 + 8))(v40, v42);
  v45 = v69;
  (*(v44 + 32))(v69, v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
  swift_storeEnumTagMultiPayload();
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v67, v68) + 44);
  v47 = sub_224DAAE38();
  return (*(*(v47 - 8) + 16))(v45 + v46, v70, v47);
}

uint64_t sub_224AF92B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v132 = a6;
  v149 = a4;
  v138 = a2;
  v126 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v127 = &v124 - v12;
  v131 = sub_224DAAFC8();
  v129 = *(v131 - 8);
  v13 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_224DAAC58();
  v136 = *(v137 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_224DA9908();
  v133 = *(v152 - 8);
  v17 = *(v133 + 64);
  v18 = MEMORY[0x28223BE20](v152);
  v124 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v124 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v125 = &v124 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v134 = &v124 - v25;
  v155 = a5;
  v154 = *(a5 - 8);
  v26 = *(v154 + 64);
  MEMORY[0x28223BE20](v24);
  v164 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAAF48();
  v162 = v28;
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x28223BE20](v28);
  v139 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v124 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v160 = *(v35 - 8);
  v161 = v35;
  v36 = *(v160 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v153 = &v124 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v124 - v39;
  v142 = a3[3];
  v141 = a3[4];
  v148 = a3;
  v140 = __swift_project_boxed_opaque_existential_1(a3, v142);
  v41 = v29[2];
  v158 = v29 + 2;
  v159 = a1;
  v157 = v41;
  v41(v34, a1, v28);
  v156 = sub_224DAAEF8();
  v151 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v44 = sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
  v45 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
  v46 = sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
  v47 = v162;
  v48 = sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
  v146 = v44;
  v147 = v43;
  v144 = v46;
  v145 = v45;
  v143 = v48;
  sub_224DAA208();
  v49 = v29[1];
  v151 = v34;
  v156 = (v29 + 1);
  v49(v34, v47);
  v50 = v150;
  v51 = (*(v141 + 32))(v40, v142);
  if (v50)
  {
    v150 = *(v160 + 8);
    v150(v40, v161);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281365120);
    v53 = v139;
    v157(v139, v159, v47);
    v54 = sub_224DAB228();
    v55 = sub_224DAF288();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v163[0] = v57;
      *v56 = 136315138;
      sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790]);
      v58 = sub_224DAFD28();
      v60 = v59;
      v49(v53, v47);
      v61 = sub_224A33F74(v58, v60, v163);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_224A2F000, v54, v55, "Cannot find host: %s to determine activation status", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x22AA5EED0](v57, -1, -1);
      MEMORY[0x22AA5EED0](v56, -1, -1);
    }

    else
    {

      v49(v53, v47);
    }

    v142 = 0;
  }

  else
  {
    v62 = v51;
    v150 = *(v160 + 8);
    v150(v40, v161);
    v142 = v62 & 1;
  }

  v63 = v155;
  v64 = v153;
  v65 = v148[3];
  v66 = v148[4];
  __swift_project_boxed_opaque_existential_1(v148, v65);
  v67 = (*(v66 + 24))(768, v65, v66);
  v68 = v154;
  if (v67)
  {
    v69 = sub_224CFEA64(v67);
  }

  else
  {
    v69 = sub_224DA08CC(MEMORY[0x277D84F90]);
  }

  (*(v68 + 16))(v164, v149, v63);
  v70 = v151;
  v71 = v162;
  v157(v151, v159, v162);
  sub_224DAAEF8();
  sub_224DAA208();
  v49(v70, v71);
  if (*(v69 + 16) && (v72 = sub_224A683FC(v64), (v73 & 1) != 0))
  {
    v74 = *(*(v69 + 56) + 8 * v72);
    v75 = v136;
    v156 = v69;
    v76 = *(v136 + 16);
    v77 = v135;
    v78 = v138;
    v79 = v137;
    v76(v135, v138, v137);
    if ((*(v75 + 88))(v77, v79) == *MEMORY[0x277D46558])
    {
      v149 = v76;
      (*(v75 + 96))(v77, v79);
      if (*(*v77 + 16) == 1)
      {
        v80 = *(v133 + 80);
        v81 = v134;
        v146 = *(v133 + 16);
        v147 = v133 + 16;
        v146();
        v82 = v74;

        v149 = v82;
        v83 = [v82 controlItems];
        sub_224DAF5D8();
        v84 = sub_224DAF008();

        MEMORY[0x28223BE20](v85);
        v123 = v81;
        sub_224AEA1F4(sub_224AFC510, (&v124 - 4), v84);
        v148 = 0;

        v86 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
        v87 = sub_224DAEFF8();

        v88 = [v86 initWithControlItems_];

        sub_224DAAF08();
        v89 = v155;
        v163[0] = v88;
        v163[1] = v142;
        v90 = *(v132 + 16);
        v91 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3850, &qword_224DB41C8);
        sub_224A33088(&qword_27D6F3858, &qword_27D6F3850, &qword_224DB41C8);
        sub_224A33088(&qword_27D6F3860, &qword_27D6F3850, &qword_224DB41C8);
        v123 = v90;
        v92 = v134;
        v93 = v164;
        v94 = v148;
        v95 = sub_224DAAB38();
        if (v94)
        {

          v150(v153, v161);
          (*(v154 + 8))(v93, v89);

          return (*(v133 + 8))(v92, v152);
        }

        else
        {
          v104 = v97;
          v148 = v91;
          v105 = v96;
          v106 = v95;

          v107 = sub_224DA9688();
          (*(*(v107 - 8) + 56))(v127, 1, 1, v107);
          sub_224A77FD0(v106, v105);
          v108 = v130;
          v144 = v106;
          v145 = v105;
          sub_224DAAFB8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
          v109 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
          v110 = *(*v109 + 72);
          v111 = (*(*v109 + 80) + 32) & ~*(*v109 + 80);
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_224DB3100;
          v113 = v109[14];
          *(v112 + v111) = v104;
          v114 = v129;
          (*(v129 + 16))(v112 + v111 + v113, v108, v131);
          v115 = sub_224DA06F0(v112);
          swift_setDeallocating();
          sub_224A3311C(v112 + v111, &unk_27D6F6FE0, &unk_224DB9C50);
          swift_deallocClassInstance();
          sub_224DAF598();
          v116 = v128;
          v117 = v149;
          sub_224DAAE58();
          v118 = v133;
          v119 = *(v133 + 32);
          v120 = v125;
          v143 = v115;
          v121 = v152;
          v119(v125, v116);
          v157(v151, v159, v162);
          (v146)(v124, v120, v121);
          sub_224DAAF78();

          sub_224A78024(v144, v145);
          v122 = *(v118 + 8);
          v122(v120, v121);
          (*(v114 + 8))(v130, v131);
          v150(v153, v161);
          (*(v154 + 8))(v164, v155);
          return (v122)(v134, v121);
        }
      }

      else
      {
        v102 = v74;

        type metadata accessor for ReplicationService.ReplicationServiceError();
        sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
        swift_allocError();
        v149(v103, v138, v79);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v150(v153, v161);
        return (*(v154 + 8))(v164, v155);
      }
    }

    else
    {
      type metadata accessor for ReplicationService.ReplicationServiceError();
      sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
      swift_allocError();
      v76(v101, v78, v79);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v150(v153, v161);
      (*(v154 + 8))(v164, v155);
      return (*(v75 + 8))(v77, v79);
    }
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v99 = v161;
    (*(v160 + 16))(v100, v64, v161);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v150(v64, v99);
    return (*(v68 + 8))(v164, v63);
  }
}

uint64_t sub_224AFA5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t *))
{
  v13 = *(a6 + 8);
  v16[3] = a4;
  v16[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  a8(a1, a2, v16);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_224AFA6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  result = sub_224AF8C00(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    return (*(*(v12 - 8) + 56))(a7, 0, 1, v12);
  }

  return result;
}

uint64_t sub_224AFA730()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

void sub_224AFA7E0()
{
  v2 = v0;
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[14];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
    sub_224DAAC48();
    v1 = &unk_281351000;
  }

  else
  {
    __break(1u);
    swift_once();
    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281365120);
    v12 = v7;
    v13 = sub_224DAB228();
    v14 = sub_224DAF288();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = v7;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_224A2F000, v13, v14, "Failed to register replicator: %{public}@", v15, 0xCu);
      sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v16, -1, -1);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    else
    {
    }
  }

  v19 = v2[2];
  if (*(v19 + 16))
  {
    if (v1[217] != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281365120);

    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37[0] = v24;
      *v23 = 136315138;
      v25 = MEMORY[0x22AA5D380](v19, &type metadata for ReplicatedTypeGroup);
      v27 = sub_224A33F74(v25, v26, v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_224A2F000, v21, v22, "starting replication as source for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x22AA5EED0](v24, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    sub_224AFACC0();
  }

  v28 = v2[3];
  if (*(v28 + 16))
  {
    if (v1[217] != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281365120);

    v30 = sub_224DAB228();
    v31 = sub_224DAF2A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v32 = 136315138;
      v34 = MEMORY[0x22AA5D380](v28, &type metadata for ReplicatedTypeGroup);
      v36 = sub_224A33F74(v34, v35, v37);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_224A2F000, v30, v31, "starting replication as host for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    sub_224AFAF58();
  }
}

uint64_t sub_224AFACC0()
{
  v1 = sub_224DAB8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 112);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_224DAB8F8();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = *(v0 + 32);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = *(v0 + 32);

    v15 = 0;
    while (v12)
    {
      v16 = v15;
LABEL_16:
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = v19 | (v16 << 6);
      v21 = *(*(v9 + 48) + v20);
      sub_224A3317C(*(v9 + 56) + 40 * v20, v27);
      LOBYTE(v28) = v21;
      sub_224A36F98(v27, &v28 + 8);
LABEL_17:
      v31[1] = v29;
      v31[2] = v30;
      v31[0] = v28;
      if (!v30)
      {
      }

      sub_224A36F98((v31 + 8), &v28);
      v22 = *(&v29 + 1);
      v23 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      if ((*(v23 + 16))(v22, v23))
      {
        v24 = *(&v29 + 1);
        v25 = v30;
        __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
        (*(v25 + 40))(v24, v25);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    if (v13 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v13;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v12 = 0;
        v29 = 0u;
        v30 = 0u;
        v15 = v18;
        v28 = 0u;
        goto LABEL_17;
      }

      v12 = *(v9 + 64 + 8 * v16);
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224AFAF58()
{
  v1 = sub_224DAB8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 112);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_224DAB8F8();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = *(v0 + 32);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = *(v0 + 32);

    v15 = 0;
    while (v12)
    {
      v16 = v15;
LABEL_16:
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = v19 | (v16 << 6);
      v21 = *(*(v9 + 48) + v20);
      sub_224A3317C(*(v9 + 56) + 40 * v20, v27);
      LOBYTE(v28) = v21;
      sub_224A36F98(v27, &v28 + 8);
LABEL_17:
      v31[1] = v29;
      v31[2] = v30;
      v31[0] = v28;
      if (!v30)
      {
      }

      sub_224A36F98((v31 + 8), &v28);
      v22 = *(&v29 + 1);
      v23 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      if (((*(v23 + 16))(v22, v23) & 2) != 0)
      {
        v24 = *(&v29 + 1);
        v25 = v30;
        __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
        (*(v25 + 48))(v24, v25);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    if (v13 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v13;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v12 = 0;
        v29 = 0u;
        v30 = 0u;
        v15 = v18;
        v28 = 0u;
        goto LABEL_17;
      }

      v12 = *(v9 + 64 + 8 * v16);
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224AFB1F0()
{
  v30 = 0;
  v31 = 0xE000000000000000;
  v1 = *(v0 + 32);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 32);

  v8 = 0;
  while (v4)
  {
    v9 = v8;
LABEL_15:
    v12 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v13 = v12 | (v9 << 6);
    v14 = *(*(v1 + 48) + v13);
    sub_224A3317C(*(v1 + 56) + 40 * v13, v25);
    LOBYTE(v26) = v14;
    sub_224A36F98(v25, &v26 + 8);
LABEL_16:
    v29[1] = v27;
    v29[2] = v28;
    v29[0] = v26;
    if (!v28)
    {

      return v30;
    }

    sub_224A36F98((v29 + 8), &v26);
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v16 = *(v15 + 8);
    v17 = sub_224DA9F68();
    v19 = v18;
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = v17;
      v22 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      v23 = *(v22 + 8);
      *&v25[0] = sub_224DA9F78();
      *(&v25[0] + 1) = v24;
      MEMORY[0x22AA5D210](2618, 0xE200000000000000);
      MEMORY[0x22AA5D210](v21, v19);

      MEMORY[0x22AA5D210](10, 0xE100000000000000);
      MEMORY[0x22AA5D210](*&v25[0], *(&v25[0] + 1));
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  if (v5 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {
      v4 = 0;
      v27 = 0u;
      v28 = 0u;
      v8 = v11;
      v26 = 0u;
      goto LABEL_16;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224AFB448(uint64_t a1, uint64_t a2)
{
  result = sub_224AFC698(qword_281359620, a2, type metadata accessor for ReplicationService.Service);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224AFB4A0(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_224AFB7E0(v13, v7, v5, a3);
  result = MEMORY[0x22AA5EED0](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_224AFB610(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + 8 * v11) & 2) != 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_224B2CE74(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_224B2CE74(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_224AFB6F8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_224B2CE74(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_224B2CE74(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_224AFB7E0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_224AFB868(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a7;
  v25 = a8;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  (*(v14 + 32))(&v24 - v19);
  v21 = swift_allocObject();
  (*(v14 + 16))(v18, v20, a5);
  v22 = sub_224AFB9EC(a1, v18, a3, v21, a5, a6, v24, v25, a9, a10);
  (*(v14 + 8))(v20, a5);
  return v22;
}

uint64_t sub_224AFB9EC(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v79 = *a4;
  v90[3] = a5;
  v90[4] = a6;
  v90[5] = a7;
  v90[6] = a8;
  v90[7] = a9;
  v90[8] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  *(a4 + 32) = a1;
  sub_224AFC6E0(v90, a4 + 40);
  *(a4 + 112) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D70, &qword_224DB41E0);
  v16 = sub_224DAFB88();
  v17 = v16;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v84 = v16 + 64;

  v81 = a3;
  v22 = 0;
  v82 = v17;
  if (!v20)
  {
LABEL_5:
    v24 = v22;
    while (1)
    {
      v22 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v22 >= v21)
      {
        break;
      }

      v25 = *(a1 + 64 + 8 * v22);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    a1 = 0;
    v34 = sub_224AFB4A0(v17, sub_224AFB6F8, sub_224AFB6F8);
    v35 = *(v34 + 16);
    v36 = MEMORY[0x277D84F90];
    if (v35)
    {
      v87[0] = MEMORY[0x277D84F90];
      v85 = v35;
      sub_224ADA330(0, v35, 0);
      v37 = v87[0];
      v38 = v34 + 64;
      v39 = -1 << *(v34 + 32);
      v40 = sub_224DAF798();
      v41 = v85;
      v42 = 0;
      while ((v40 & 0x8000000000000000) == 0 && v40 < 1 << *(v34 + 32))
      {
        a1 = v40 >> 6;
        v44 = 1 << v40;
        if ((*(v38 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
        {
          goto LABEL_57;
        }

        v45 = *(*(v34 + 48) + v40);
        v46 = *(v34 + 36);
        v87[0] = v37;
        v48 = *(v37 + 16);
        v47 = *(v37 + 24);
        if (v48 >= v47 >> 1)
        {
          v77 = v46;
          v78 = v40;
          sub_224ADA330((v47 > 1), v48 + 1, 1);
          v41 = v85;
          v46 = v77;
          v40 = v78;
          v37 = v87[0];
        }

        *(v37 + 16) = v48 + 1;
        *(v37 + v48 + 32) = v45;
        v43 = 1 << *(v34 + 32);
        if (v40 >= v43)
        {
          goto LABEL_58;
        }

        v49 = *(v38 + 8 * a1);
        if ((v49 & v44) == 0)
        {
          goto LABEL_59;
        }

        if (v46 != *(v34 + 36))
        {
          goto LABEL_60;
        }

        v50 = v49 & (-2 << (v40 & 0x3F));
        if (v50)
        {
          v43 = __clz(__rbit64(v50)) | v40 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v51 = a1 << 6;
          v52 = a1 + 1;
          v53 = (v34 + 72 + 8 * a1);
          while (v52 < (v43 + 63) >> 6)
          {
            v54 = *v53++;
            a1 = v54;
            v51 += 64;
            ++v52;
            if (v54)
            {
              sub_224A3E204(v40, v46, 0);
              v41 = v85;
              v43 = __clz(__rbit64(a1)) + v51;
              goto LABEL_16;
            }
          }

          sub_224A3E204(v40, v46, 0);
          v41 = v85;
        }

LABEL_16:
        ++v42;
        v40 = v43;
        if (v42 == v41)
        {

          v36 = MEMORY[0x277D84F90];
          a1 = 0;
          goto LABEL_33;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
LABEL_33:
      *(a4 + 16) = v37;
      v55 = sub_224AFB4A0(v82, sub_224AFB610, sub_224AFB610);

      v56 = *(v55 + 16);
      if (!v56)
      {

        __swift_destroy_boxed_opaque_existential_1(v90);

        v57 = MEMORY[0x277D84F90];
LABEL_54:
        result = a4;
        *(a4 + 24) = v57;
        return result;
      }

      v87[0] = v36;
      v86 = v56;
      sub_224ADA330(0, v56, 0);
      v57 = v87[0];
      v58 = v55 + 64;
      v59 = -1 << *(v55 + 32);
      v60 = sub_224DAF798();
      v61 = v86;
      v62 = 0;
      while ((v60 & 0x8000000000000000) == 0 && v60 < 1 << *(v55 + 32))
      {
        v64 = v60 >> 6;
        v65 = 1 << v60;
        if ((*(v58 + 8 * (v60 >> 6)) & (1 << v60)) == 0)
        {
          goto LABEL_62;
        }

        v66 = *(*(v55 + 48) + v60);
        v67 = *(v55 + 36);
        v87[0] = v57;
        a1 = *(v57 + 16);
        v68 = *(v57 + 24);
        if (a1 >= v68 >> 1)
        {
          v83 = v60;
          v80 = v67;
          sub_224ADA330((v68 > 1), a1 + 1, 1);
          v61 = v86;
          v67 = v80;
          v60 = v83;
          v57 = v87[0];
        }

        *(v57 + 16) = a1 + 1;
        *(v57 + a1 + 32) = v66;
        v63 = 1 << *(v55 + 32);
        if (v60 >= v63)
        {
          goto LABEL_63;
        }

        v69 = *(v58 + 8 * v64);
        if ((v69 & v65) == 0)
        {
          goto LABEL_64;
        }

        if (v67 != *(v55 + 36))
        {
          goto LABEL_65;
        }

        v70 = v69 & (-2 << (v60 & 0x3F));
        if (v70)
        {
          v63 = __clz(__rbit64(v70)) | v60 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v71 = v64 << 6;
          v72 = v64 + 1;
          v73 = (v55 + 72 + 8 * v64);
          while (v72 < (v63 + 63) >> 6)
          {
            v74 = *v73++;
            a1 = v74;
            v71 += 64;
            ++v72;
            if (v74)
            {
              sub_224A3E204(v60, v67, 0);
              v63 = __clz(__rbit64(a1)) + v71;
              goto LABEL_51;
            }
          }

          sub_224A3E204(v60, v67, 0);
LABEL_51:
          v61 = v86;
        }

        ++v62;
        v60 = v63;
        if (v62 == v61)
        {
          __swift_destroy_boxed_opaque_existential_1(v90);

          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_10:
    v26 = v23 | (v22 << 6);
    v27 = *(*(a1 + 48) + v26);
    sub_224A3317C(*(a1 + 56) + 40 * v26, v87);
    v28 = v88;
    v29 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v30 = (*(v29 + 16))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v87);
    *(v84 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v17 = v82;
    *(v82[6] + v26) = v27;
    *(v82[7] + 8 * v26) = v30;
    v31 = v82[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      break;
    }

    v82[2] = v33;
    if (!v20)
    {
      goto LABEL_5;
    }
  }

LABEL_66:
  __break(1u);

  v76 = *(a4 + 32);

  __swift_destroy_boxed_opaque_existential_1((a4 + 40));

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_224AFC108()
{
  v0 = sub_224DAFBF8();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_224AFC154()
{
  result = qword_281350C00;
  if (!qword_281350C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350C00);
  }

  return result;
}

uint64_t sub_224AFC1A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37D8, &qword_224DB4128);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ReplicationService.ReplicationServiceError()
{
  result = qword_281359540;
  if (!qword_281359540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_224AFC264()
{
  result = qword_2813593D8;
  if (!qword_2813593D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593D8);
  }

  return result;
}

unint64_t sub_224AFC2B8()
{
  result = qword_2813593E0;
  if (!qword_2813593E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593E0);
  }

  return result;
}

uint64_t sub_224AFC3AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void *, char *))
{
  v4 = *(v3 + 3);
  v5 = *(v3 + 4);
  v6 = *(v3 + 5);
  return a3(a1, a2, v3 + 6, &v3[(*(*(*(v3 + 2) - 8) + 80) + 88) & ~*(*(*(v3 + 2) - 8) + 80)]);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_224AFC52C()
{
  result = qword_27D6F5750;
  if (!qword_27D6F5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5750);
  }

  return result;
}

unint64_t sub_224AFC580()
{
  result = qword_27D6F3870;
  if (!qword_27D6F3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3870);
  }

  return result;
}

unint64_t sub_224AFC5D4()
{
  result = qword_27D6F3878;
  if (!qword_27D6F3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3878);
  }

  return result;
}

uint64_t sub_224AFC628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AFC698(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224AFC6E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_224AFC74C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_224AFC79C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 840))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224AFC7E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 824) = 0u;
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
      *(result + 840) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 840) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicationService.ZoneID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicationService.ZoneID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_224AFCAB8()
{
  sub_224DAAF48();
  if (v0 <= 0x3F)
  {
    sub_224AFCB78();
    if (v1 <= 0x3F)
    {
      sub_224AFCBC8();
      if (v2 <= 0x3F)
      {
        sub_224AFCD10();
        if (v3 <= 0x3F)
        {
          sub_224DAAC58();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_224AFCB78()
{
  if (!qword_2813518C0)
  {
    v0 = sub_224DAA028();
    if (!v1)
    {
      atomic_store(v0, &qword_2813518C0);
    }
  }
}

void sub_224AFCBC8()
{
  if (!qword_281351840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640);
    sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640);
    sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
    v0 = sub_224DAA288();
    if (!v1)
    {
      atomic_store(v0, &qword_281351840);
    }
  }
}

void sub_224AFCD10()
{
  if (!qword_281351850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F30E0, &unk_224DB2AD0);
    sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
    sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
    sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
    sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
    v0 = sub_224DAA288();
    if (!v1)
    {
      atomic_store(v0, &qword_281351850);
    }
  }
}

unint64_t sub_224AFCEA8()
{
  result = qword_281359060[0];
  if (!qword_281359060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281359060);
  }

  return result;
}

uint64_t sub_224AFCEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicationService.ReplicationServiceError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224AFCF6C()
{
  v1 = *v0;
  sub_224AFD06C();
  v2 = sub_224DAEFF8();
  [v1 recordWidgetRefreshes_];
}

uint64_t sub_224AFD000(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_224DAEE18();
  v5 = v4;

  v2(v3, v5);
}

unint64_t sub_224AFD06C()
{
  result = qword_281350A58;
  if (!qword_281350A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A58);
  }

  return result;
}

void *sub_224AFD1E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  [v0 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224AFD41C();
  swift_dynamicCast();
  v10 = v16[1];
  v11 = [v0 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v6 + 16))(v9, &v11[v12], v5);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v4);
  sub_224DA9898();
  v14 = sub_224DAF508();

  [v10 setExtensionIdentity_];
  return v10;
}

unint64_t sub_224AFD41C()
{
  result = qword_281350910;
  if (!qword_281350910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350910);
  }

  return result;
}

uint64_t sub_224AFD468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AFD4D8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v38 = a2;
  v39 = a1;
  v36 = a4;
  v7 = &qword_27D6F38A0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v35 = *(v40 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v35 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v41 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v7;
      v42 = v5;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = *(v41 + 56);
      v23 = (*(v41 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = sub_224DAC5E8();
      v27 = *(v26 - 8);
      v28 = v22 + *(v27 + 72) * v21;
      v29 = v37;
      (*(v27 + 16))(&v37[*(v40 + 48)], v28, v26);
      *v29 = v24;
      v29[1] = v25;
      v30 = v29;
      v31 = v43;
      v7 = v19;
      sub_224A44E4C(v30, v43, v19, &unk_224DB4630);

      v32 = v42;
      v33 = v39(v31);
      v5 = v32;
      if (v32)
      {
        sub_224A3311C(v43, &qword_27D6F38A0, &unk_224DB4630);
      }

      if (v33)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_224A3311C(v43, v19, &unk_224DB4630);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v34 = v36;
    sub_224A44E4C(v43, v36, &qword_27D6F38A0, &unk_224DB4630);
    return (*(v35 + 56))(v34, 0, 1, v40);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return (*(v35 + 56))(v36, 1, 1, v40);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v19 = v7;
        v42 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_224AFD844(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_224AFD9B0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_224AFDB84@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v41 = a2;
  v42 = a1;
  v39 = a4;
  v7 = &qword_27D6F38A8;
  v8 = &unk_224DB4650;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v38 = *(v43 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x28223BE20](v43);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - v12;
  v13 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v44 = a3;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v8;
      v21 = v7;
      v45 = v5;
      v22 = v19;
LABEL_9:
      v23 = __clz(__rbit64(v16)) | (v22 << 6);
      v24 = v44;
      v25 = *(v44 + 48);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v27 = *(v26 - 8);
      v28 = v25 + *(v27 + 72) * v23;
      v29 = v40;
      (*(v27 + 16))(v40, v28, v26);
      v30 = *(*(v24 + 56) + 8 * v23);
      *&v29[*(v43 + 48)] = v30;
      v31 = v29;
      v32 = v46;
      v7 = v21;
      v33 = v21;
      v8 = v20;
      sub_224A44E4C(v31, v46, v33, v20);
      v34 = v30;
      v35 = v45;
      v36 = v42(v32);
      v5 = v35;
      if (v35)
      {
        sub_224A3311C(v46, &qword_27D6F38A8, &unk_224DB4650);
      }

      if (v36)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_224A3311C(v46, v7, v20);
      v19 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v37 = v39;
    sub_224A44E4C(v46, v39, &qword_27D6F38A8, &unk_224DB4650);
    return (*(v38 + 56))(v37, 0, 1, v43);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v17)
      {

        return (*(v38 + 56))(v39, 1, 1, v43);
      }

      v16 = *(v13 + 8 * v22);
      ++v19;
      if (v16)
      {
        v20 = v8;
        v21 = v7;
        v45 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224AFDE7C(unint64_t a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v85 - v4;
  v5 = sub_224DAAE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v124 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v85 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v85 - v17;
  v19 = sub_224DA9908();
  v102 = *(v19 - 8);
  v20 = *(v102 + 64);
  MEMORY[0x28223BE20](v19);
  v111 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_224DA9688();
  v22 = *(v113 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v113);
  v89 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v85 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v95 = &v85 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v86 = &v85 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v104 = &v85 - v33;
  MEMORY[0x28223BE20](v32);
  v101 = &v85 - v34;
  v127 = MEMORY[0x277D84FA0];
  v35 = *(a1 + 48);
  v36 = *(v35 + 32);
  v37 = v36 & 0x3F;
  v116 = ((1 << v36) + 63) >> 6;
  v38 = 8 * v116;

  v121 = v11;
  v108 = v22;
  v98 = v18;
  v97 = v19;
  if (v37 > 0xD)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v115 = a1;
    v114 = &v85;
    MEMORY[0x28223BE20](v39);
    v117 = &v85 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v117, v38);
    v11 = 0;
    v122 = v35;
    v41 = v35[7];
    v35 += 7;
    v40 = v41;
    v42 = 1 << *(v35 - 24);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & v40;
    v19 = (v42 + 63) >> 6;
    v120 = (v22 + 16);
    v118 = 0;
    v119 = v22 + 8;
    while (v44)
    {
      v45 = __clz(__rbit64(v44));
      v123 = (v44 - 1) & v44;
LABEL_12:
      v48 = v108;
      a1 = v45 | (v11 << 6);
      v38 = v101;
      v49 = v113;
      (*(v108 + 16))(v101, v122[6] + *(v108 + 72) * a1, v113);
      v18 = sub_224DA95D8();
      (*(v48 + 8))(v38, v49);
      v44 = v123;
      if ((v18 & 1) == 0)
      {
        *&v117[(a1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a1;
        v50 = __OFADD__(v118, 1);
        v118 = (v118 + 1);
        if (v50)
        {
          __break(1u);
LABEL_16:
          v105 = sub_224B04F30(v117, v116, v118, v122);
          v107 = 0;
          v11 = v121;
          v18 = v98;
          v19 = v97;
          a1 = v115;
          goto LABEL_17;
        }
      }
    }

    v46 = v11;
    while (1)
    {
      v11 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v11 >= v19)
      {
        goto LABEL_16;
      }

      v47 = v35[v11];
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v123 = (v47 - 1) & v47;
        goto LABEL_12;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v22 = v108;
  }

  v84 = swift_slowAlloc();
  v105 = sub_224AFEFE8(v84, v116, v35, sub_224AFEEC4);
  v107 = 0;

  MEMORY[0x22AA5EED0](v84, -1, -1);
LABEL_17:
  v51 = *a1;
  v116 = *(*a1 + 16);
  if (v116)
  {
    v38 = 0;
    v115 = (v51 + 4);
    v106 = (v102 + 48);
    v94 = (v102 + 32);
    v118 = (v6 + 8);
    v122 = (v6 + 32);
    v123 = v6 + 16;
    v93 = (v6 + 48);
    v87 = (v108 + 48);
    v112 = (v108 + 8);
    v99 = (v108 + 32);
    v109 = v108 + 16;
    v92 = (v102 + 8);
    v119 = v5;
    v114 = v51;
    while (1)
    {
      if (v38 >= v51[2])
      {
        goto LABEL_63;
      }

      v117 = v38;
      sub_224A3317C(v115 + 40 * v38, &v128);
      __swift_project_boxed_opaque_existential_1(&v128, v129);
      a1 = sub_224DAE338();
      v52 = (a1 + *MEMORY[0x277CFA128]);
      swift_beginAccess();
      v54 = *v52;
      v53 = v52[1];

      if (v53)
      {
        sub_224DA9888();

        if ((*v106)(v18, 1, v19) == 1)
        {
          sub_224A3311C(v18, &unk_27D6F5630, &unk_224DB34C0);
        }

        else
        {
          (*v94)(v111, v18, v19);
          v55 = v103[9];
          v38 = __swift_project_boxed_opaque_existential_1(v103 + 5, v103[8]);
          v56 = sub_224DAAC78();
          a1 = v56;
          v57 = *(v56 + 16);
          if (v57)
          {
            v19 = 0;
            v58 = MEMORY[0x277D84F90];
            v120 = *(v56 + 16);
            while (v19 < *(a1 + 16))
            {
              v35 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
              v18 = *(v6 + 72);
              (*(v6 + 16))(v11, v35 + a1 + v18 * v19, v5);
              v38 = v11;
              if (sub_224DAAE28())
              {
                v59 = v6;
                v60 = *v122;
                (*v122)(v124, v11, v5);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v126 = v58;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v38 = &v126;
                  sub_224ADA1C0(0, *(v58 + 16) + 1, 1);
                  v58 = v126;
                }

                v63 = *(v58 + 16);
                v62 = *(v58 + 24);
                if (v63 >= v62 >> 1)
                {
                  v38 = &v126;
                  sub_224ADA1C0(v62 > 1, v63 + 1, 1);
                  v58 = v126;
                }

                *(v58 + 16) = v63 + 1;
                v64 = v35 + v58 + v63 * v18;
                v5 = v119;
                v60(v64, v124, v119);
                v6 = v59;
                v57 = v120;
                v11 = v121;
              }

              else
              {
                (*v118)(v11, v5);
              }

              if (v57 == ++v19)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
            goto LABEL_61;
          }

          v58 = MEMORY[0x277D84F90];
LABEL_36:

          MEMORY[0x28223BE20](v65);
          a1 = v111;
          *(&v85 - 2) = v111;
          v66 = v100;
          v67 = v107;
          sub_224AFD9B0(sub_224B05258, v58, MEMORY[0x277D46770], v100);
          v107 = v67;

          if ((*v93)(v66, 1, v5) == 1)
          {
            sub_224A3311C(v66, &qword_27D6F3320, &unk_224DBD6F0);
            v19 = v97;
            (*v92)(a1, v97);
          }

          else
          {
            v68 = v103[3];
            a1 = v103[4];
            __swift_project_boxed_opaque_existential_1(v103, v68);
            __swift_project_boxed_opaque_existential_1(&v128, v129);
            v35 = sub_224DAE338();
            v18 = v88;
            (*(a1 + 8))(v35, v68, a1);

            v69 = v113;
            if ((*v87)(v18, 1, v113) != 1)
            {
              v70 = v86;
              sub_224DA9548();
              v120 = *v112;
              v120(v18, v69);
              v96 = *v99;
              v96(v104, v70, v69);
              v126 = MEMORY[0x277D84FA0];
              v38 = v105;
              v11 = v105 + 56;
              v71 = 1 << *(v105 + 32);
              if (v71 < 64)
              {
                v72 = ~(-1 << v71);
              }

              else
              {
                v72 = -1;
              }

              v19 = v72 & *(v105 + 56);
              v35 = ((v71 + 63) >> 6);

              v73 = 0;
              a1 = v110;
              v91 = v11;
              v90 = v35;
              while (v19)
              {
LABEL_51:
                v75 = *(v38 + 48) + *(v108 + 72) * (__clz(__rbit64(v19)) | (v73 << 6));
                v76 = v95;
                v18 = v113;
                v102 = *(v108 + 16);
                (v102)(v95, v75, v113);
                v96(a1, v76, v18);
                sub_224DA9658();
                sub_224DA9658();
                LOBYTE(v76) = sub_224DAEEE8();
                a1 = v110;

                if (v76)
                {
                  v77 = v89;
                  v78 = v102;
                  (v102)(v89, a1, v18);
                  v79 = v101;
                  sub_224ADB390(v101, v77);
                  v80 = v120;
                  v120(v79, v18);
                  v78(v77, v110, v18);
                  v35 = v90;
                  sub_224ADB390(v79, v77);
                  v81 = v79;
                  a1 = v110;
                  v80(v81, v18);
                  v11 = v91;
                }

                v19 &= v19 - 1;
                v120(a1, v18);
                v38 = v105;
              }

              while (1)
              {
                v74 = v73 + 1;
                if (__OFADD__(v73, 1))
                {
                  break;
                }

                if (v74 >= v35)
                {

                  if (*(v126 + 16) <= *(v38 + 16) >> 3)
                  {
                    v125 = v38;
                    sub_224AFF0F0(v126, &unk_27D6F4680, &unk_224DB4610, MEMORY[0x277CC9260], sub_224B01E48);

                    v120(v104, v113);
                    v105 = v125;
                  }

                  else
                  {
                    v105 = sub_224B00004(v126, v38);

                    v120(v104, v113);
                  }

                  v11 = v121;
                  v18 = v98;
                  v19 = v97;
                  sub_224A3311C(v100, &qword_27D6F3320, &unk_224DBD6F0);
                  (*v92)(v111, v19);
                  goto LABEL_20;
                }

                v19 = *(v11 + 8 * v74);
                ++v73;
                if (v19)
                {
                  v73 = v74;
                  goto LABEL_51;
                }
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            sub_224A3311C(v18, &unk_27D6F4680, &unk_224DB4610);
            sub_224A3311C(v66, &qword_27D6F3320, &unk_224DBD6F0);
            v19 = v97;
            (*v92)(v111, v97);
            v11 = v121;
          }

          v18 = v98;
        }
      }

LABEL_20:
      v51 = v114;
      v38 = (v117 + 1);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      if (v38 == v116)
      {

        goto LABEL_59;
      }
    }
  }

LABEL_59:
  result = v127;
  v83 = *MEMORY[0x277D85DE8];
  return result;
}