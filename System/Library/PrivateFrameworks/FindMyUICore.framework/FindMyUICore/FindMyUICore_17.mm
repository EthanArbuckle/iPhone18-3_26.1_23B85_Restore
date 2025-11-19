uint64_t sub_24B1B34BC()
{
  v1 = v0;
  v48 = sub_24B2D1684();
  v2 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListPersonInfo.Sort();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v8;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE080);
  result = sub_24B2D5BF4();
  v11 = result;
  if (*(v9 + 16))
  {
    v40 = v0;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v46 = (v2 + 48);
    v41 = (v2 + 8);
    v42 = (v2 + 32);
    v18 = result + 56;
    v43 = v5;
    v44 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v5 + 72);
      v24 = v49;
      sub_24B1D26D8(*(v9 + 48) + v23 * (v20 | (v12 << 6)), v49, type metadata accessor for ListPersonInfo.Sort);
      sub_24B2D60E4();
      v25 = v24;
      v26 = v47;
      sub_24B1D2670(v25, v47, type metadata accessor for ListPersonInfo.Sort);
      v27 = (*v46)(v26, 2, v48);
      if (v27)
      {
        MEMORY[0x24C23C8D0](v27 != 1);
      }

      else
      {
        v28 = v45;
        v29 = v48;
        (*v42)(v45, v47, v48);
        MEMORY[0x24C23C8D0](2);
        sub_24B1D27A0(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
        sub_24B2D5254();
        v30 = v28;
        v31 = v29;
        v5 = v43;
        v9 = v44;
        (*v41)(v30, v31);
      }

      result = sub_24B2D6124();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24B1D26D8(v49, *(v11 + 48) + v19 * v23, type metadata accessor for ListPersonInfo.Sort);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v9 + 32);
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    v1 = v40;
    *(v9 + 16) = 0;
  }

  *v1 = v11;
  return result;
}

uint64_t sub_24B1B3974()
{
  v1 = v0;
  v35 = sub_24B2D1714();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE098);
  result = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCE088, MEMORY[0x277D08C20]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1B3CD0()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE128);
  result = sub_24B2D5BF4();
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
      sub_24B1D26D8(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B2D1DA4();
      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
      sub_24B2D5254();
      sub_24B2D5404();
      result = sub_24B2D6124();
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
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, type metadata accessor for ItemsLocationsProvider.Subscription);
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

uint64_t sub_24B1B403C()
{
  v1 = v0;
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ItemsProvider.Subscription(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC860);
  result = sub_24B2D5BF4();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v2;
    v38 = v0;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v43 = (v3 + 48);
    v39 = (v3 + 8);
    v40 = (v3 + 32);
    v19 = result + 56;
    v20 = v46;
    v41 = v10;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = *(v10 + 48);
      v47 = *(v45 + 72);
      sub_24B1D26D8(v25 + v47 * (v22 | (v13 << 6)), v9, type metadata accessor for ItemsProvider.Subscription);
      sub_24B2D60E4();
      v26 = v9;
      sub_24B1D2670(v9, v20, type metadata accessor for ItemsProvider.Subscription);
      v27 = v44;
      if ((*v43)(v20, 1, v44) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v28 = v42;
        (*v40)(v42, v20, v27);
        MEMORY[0x24C23C8D0](1);
        sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
        sub_24B2D5254();
        v29 = v28;
        v10 = v41;
        (*v39)(v29, v27);
      }

      result = sub_24B2D6124();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      v9 = v26;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v20 = v46;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v20 = v46;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_24B1D26D8(v26, *(v12 + 48) + v21 * v47, type metadata accessor for ItemsProvider.Subscription);
      ++*(v12 + 16);
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v10 + 32);
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    v1 = v38;
    *(v10 + 16) = 0;
  }

  *v1 = v12;
  return result;
}

uint64_t sub_24B1B4500()
{
  v1 = v0;
  v35 = sub_24B2D1DA4();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE118);
  result = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1B485C()
{
  v1 = v0;
  v35 = sub_24B2D1574();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE110);
  result = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1B4BB8()
{
  v1 = v0;
  v35 = sub_24B2D1A24();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE108);
  result = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCE0F8, MEMORY[0x277D08D28]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1B4F14()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsContactsProvider.Subscription();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0C0);
  result = sub_24B2D5BF4();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_24B2A09AC(v5, v8))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_24B1D26D8(*(v6 + 48) + *(v3 + 72) * (v15 | (v9 << 6)), v5, type metadata accessor for SettingsContactsProvider.Subscription);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= i)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v6 + 32);
    if (v18 >= 64)
    {
      bzero((v6 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v18;
    }

    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_24B1B511C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A0);
  result = sub_24B2D5BF4();
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
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      sub_24B2D6104();
      result = sub_24B2D6124();
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
      *(*(v4 + 48) + v12) = v16;
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

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24B1B5378()
{
  v1 = v0;
  v42 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - v7;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B0);
  result = sub_24B2D5BF4();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v0;
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v40 = (v2 + 48);
    v17 = result + 56;
    v18 = v39;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = *(v41 + 72);
      v24 = v43;
      sub_24B1D26D8(*(v8 + 48) + v23 * (v20 | (v11 << 6)), v43, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1D2670(v24, v18, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if ((*v40)(v18, 1, v42) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v25 = v38;
        sub_24B1D26D8(v18, v38, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        MEMORY[0x24C23C8D0](1);
        sub_24B2D1704();
        sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v18 = v39;
        sub_24B2D5254();
        v26 = v25;
        v8 = v37;
        sub_24B1D2740(v26, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      }

      result = sub_24B2D6124();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24B1D26D8(v43, *(v10 + 48) + v19 * v23, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v1 = v36;
    *(v8 + 16) = 0;
  }

  *v1 = v10;
  return result;
}

uint64_t sub_24B1B5828(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24B2D5BF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
LABEL_13:
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      result = sub_24B2D6124();
      v15 = -1 << *(v5 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v12 + 8 * v17);
          if (v21 != -1)
          {
            v13 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v10 &= v10 - 1;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      ++*(v5 + 16);
    }

    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = v7[v14];
      ++v6;
      if (v10)
      {
        v6 = v14;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v3 + 32);
    if (v22 >= 64)
    {
      bzero((v3 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v22;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24B1B5A38()
{
  v1 = v0;
  v35 = sub_24B2D1974();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B8);
  result = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1B5D94(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_24B1B0C8C();
  }

  else
  {
    if (v14 > v13)
    {
      sub_24B1BACF4();
      goto LABEL_12;
    }

    v26 = v10;
    sub_24B1BCB9C();
  }

  v15 = *v4;
  sub_24B2D60E4();
  sub_24B03ABC8();
  v16 = sub_24B2D6124();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_24B1D2670(*(v15 + 48) + v19 * a2, v12, _s14descr285E46659O16SubscriptionDataOMa);
      v20 = sub_24B0401A4(v12, a1);
      sub_24B1D2740(v12, _s14descr285E46659O16SubscriptionDataOMa);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v21 + 48) + *(v9 + 72) * a2, _s14descr285E46659O16SubscriptionDataOMa);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B5FD8(uint64_t a1, unint64_t a2, char a3)
{
  v27 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_24B1B166C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_24B1BAF28();
      goto LABEL_15;
    }

    sub_24B1BD4F0();
  }

  v12 = *v3;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  v26 = *(a1 + *(v27 + 20));
  sub_24B2D6104();
  v13 = sub_24B2D6124();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_24B1D2670(*(v12 + 48) + v16 * a2, v9, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      if (sub_24B2D52A4())
      {
        v17 = v9[*(v27 + 20)];
        sub_24B1D2740(v9, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        if (v26 == v17)
        {
          sub_24B2D6044();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_24B1D2740(v9, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v18 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v18 + 48) + *(v24 + 72) * a2, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_24B1B62E8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v26 = v8;
  v27 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = v9;
    sub_24B1B19D4(v12 + 1, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa, &qword_27EFCE150, &unk_24B2EFE80, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
  }

  else
  {
    if (v13 > v12)
    {
      sub_24B1BB134();
      goto LABEL_12;
    }

    v25 = v9;
    sub_24B1BD828();
  }

  v14 = *v3;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  v15 = sub_24B2D6124();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_24B1D2670(*(v14 + 48) + v18 * a2, v11, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v19 = sub_24B2D52A4();
      sub_24B1D2740(v11, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v20 + 48) + *(v26 + 72) * a2, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B65EC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v26 = v8;
  v27 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = v9;
    sub_24B1B19D4(v12 + 1, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa, &qword_27EFCE148, &unk_24B2EFE78, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
  }

  else
  {
    if (v13 > v12)
    {
      sub_24B1BB340();
      goto LABEL_12;
    }

    v25 = v9;
    sub_24B1BDB4C();
  }

  v14 = *v3;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  v15 = sub_24B2D6124();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_24B1D2670(*(v14 + 48) + v18 * a2, v11, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v19 = sub_24B2D52A4();
      sub_24B1D2740(v11, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v20 + 48) + *(v26 + 72) * a2, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B68F0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24B2D1704();
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
    sub_24B1B1310();
  }

  else
  {
    if (v11 > v10)
    {
      sub_24B1BC964(MEMORY[0x277D08BF8], &qword_27EFCE0D0);
      goto LABEL_12;
    }

    sub_24B1BD1D4();
  }

  v12 = *v3;
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  v13 = sub_24B2D5244();
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
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v21 = sub_24B2D52A4();
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
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B6BB8(uint64_t result, unint64_t a2, char a3)
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
    sub_24B1B1D18();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24B1BB54C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24B1BDE70();
  }

  v8 = *v3;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v4);
  result = sub_24B2D6124();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v11 + 48) + a2) = v4;
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
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B6D04(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24B2D15F4();
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
    sub_24B1B1F68();
  }

  else
  {
    if (v11 > v10)
    {
      sub_24B1BC964(MEMORY[0x277D08B70], &qword_27EFCC738);
      goto LABEL_12;
    }

    sub_24B1BE090();
  }

  v12 = *v3;
  sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
  v13 = sub_24B2D5244();
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
      sub_24B1D27A0(&qword_27EFCC748, MEMORY[0x277D08B70]);
      v21 = sub_24B2D52A4();
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
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B6FE8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ContactsProvider.Subscription(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_24B1B22C4();
  }

  else
  {
    if (v14 > v13)
    {
      sub_24B1BB6A0();
      goto LABEL_12;
    }

    v26 = v10;
    sub_24B1BE3AC();
  }

  v15 = *v4;
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)();
  v16 = sub_24B2D6124();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_24B1D2670(*(v15 + 48) + v19 * a2, v12, type metadata accessor for ContactsProvider.Subscription);
      MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(v12, a1);
      sub_24B1D2740(v12, type metadata accessor for ContactsProvider.Subscription);
      if (MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for ContactsProvider.Subscription);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B722C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v31 = v7;
  v32 = v3;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24B1B2A2C();
    }

    else
    {
      if (v11 > v10)
      {
        sub_24B1BB8AC();
        goto LABEL_37;
      }

      sub_24B1BEACC();
    }

    v12 = *v3;
    sub_24B2D60E4();
    sub_24B2D1574();
    sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    sub_24B2D5254();
    v33 = *(v34 + 20);
    sub_24B2D5404();

    v13 = sub_24B2D6124();
    v14 = v12 + 56;
    v35 = v12;
    v15 = -1 << *(v12 + 32);
    a2 = v13 & ~v15;
    if ((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v17 = *(v7 + 72);
      do
      {
        sub_24B1D2670(*(v35 + 48) + v17 * a2, v9, type metadata accessor for PeopleLocationsProvider.Subscription);
        sub_24B1D27A0(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v38 == v36 && v39 == v37)
        {
        }

        else
        {
          v19 = sub_24B2D6004();

          if ((v19 & 1) == 0)
          {
            sub_24B1D2740(v9, type metadata accessor for PeopleLocationsProvider.Subscription);
            goto LABEL_11;
          }
        }

        if (v9[*(v34 + 20)])
        {
          v20 = 0x776F6C6C616873;
        }

        else
        {
          v20 = 1702259052;
        }

        if (v9[*(v34 + 20)])
        {
          v21 = 0xE700000000000000;
        }

        else
        {
          v21 = 0xE400000000000000;
        }

        if (*(a1 + v33))
        {
          v22 = 0x776F6C6C616873;
        }

        else
        {
          v22 = 1702259052;
        }

        if (*(a1 + v33))
        {
          v23 = 0xE700000000000000;
        }

        else
        {
          v23 = 0xE400000000000000;
        }

        if (v20 == v22 && v21 == v23)
        {
          goto LABEL_40;
        }

        v25 = sub_24B2D6004();

        sub_24B1D2740(v9, type metadata accessor for PeopleLocationsProvider.Subscription);
        if (v25)
        {
          goto LABEL_41;
        }

LABEL_11:
        a2 = (a2 + 1) & v16;
      }

      while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_37:
  v26 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v26 + 48) + *(v31 + 72) * a2, type metadata accessor for PeopleLocationsProvider.Subscription);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_40:

    sub_24B1D2740(v9, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_41:
    result = sub_24B2D6044();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

uint64_t sub_24B1B7670(uint64_t a1, unint64_t a2, char a3)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0);
  MEMORY[0x28223BE20](v53);
  v8 = &v40 - v7;
  v9 = sub_24B2D1574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PeopleProvider.Subscription(0);
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v41 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    v48 = v21;
    if (a3)
    {
      v26 = v14;
      v40 = v20;
      sub_24B1B2DD0();
    }

    else
    {
      if (v25 > v24)
      {
        sub_24B1BBAB8();
        goto LABEL_23;
      }

      v26 = v14;
      v40 = v20;
      sub_24B1BEE40();
    }

    v52 = *v3;
    sub_24B2D60E4();
    sub_24B1D2670(a1, v23, type metadata accessor for PeopleProvider.Subscription);
    v27 = *(v10 + 48);
    if (v27(v23, 1, v9) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      (*(v10 + 32))(v26, v23, v9);
      MEMORY[0x24C23C8D0](1);
      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      sub_24B2D5254();
      (*(v10 + 8))(v26, v9);
    }

    v28 = sub_24B2D6124();
    v29 = -1 << *(v52 + 32);
    a2 = v28 & ~v29;
    v51 = v52 + 56;
    if ((*(v52 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v50 = ~v29;
      v49 = *(v45 + 72);
      v42 = (v10 + 32);
      v46 = (v10 + 8);
      v44 = a1;
      v43 = v27;
      while (1)
      {
        sub_24B1D2670(*(v52 + 48) + v49 * a2, v18, type metadata accessor for PeopleProvider.Subscription);
        v30 = *(v53 + 48);
        sub_24B1D2670(v18, v8, type metadata accessor for PeopleProvider.Subscription);
        sub_24B1D2670(a1, &v8[v30], type metadata accessor for PeopleProvider.Subscription);
        if (v27(v8, 1, v9) == 1)
        {
          break;
        }

        v31 = v48;
        sub_24B1D2670(v8, v48, type metadata accessor for PeopleProvider.Subscription);
        if (v27(&v8[v30], 1, v9) == 1)
        {
          sub_24B1D2740(v18, type metadata accessor for PeopleProvider.Subscription);
          (*v46)(v31, v9);
LABEL_14:
          sub_24AFF8258(v8, &qword_27EFCC6D0);
          goto LABEL_15;
        }

        (*v42)(v47, &v8[v30], v9);
        sub_24B1D27A0(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v56 == v54 && v57 == v55)
        {
          goto LABEL_26;
        }

        v32 = sub_24B2D6004();
        v33 = *v46;
        (*v46)(v47, v9);
        sub_24B1D2740(v18, type metadata accessor for PeopleProvider.Subscription);

        v33(v48, v9);
        a1 = v44;
        v27 = v43;
        if (v32)
        {
          goto LABEL_27;
        }

        sub_24B1D2740(v8, type metadata accessor for PeopleProvider.Subscription);
LABEL_15:
        a2 = (a2 + 1) & v50;
        if (((*(v51 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_24B1D2740(v18, type metadata accessor for PeopleProvider.Subscription);
      if (v27(&v8[v30], 1, v9) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }
  }

LABEL_23:
  v34 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v34 + 48) + *(v45 + 72) * a2, type metadata accessor for PeopleProvider.Subscription);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_26:
    v39 = *v46;
    (*v46)(v47, v9);
    sub_24B1D2740(v18, type metadata accessor for PeopleProvider.Subscription);

    v39(v48, v9);
LABEL_27:
    sub_24B1D2740(v8, type metadata accessor for PeopleProvider.Subscription);
    result = sub_24B2D6044();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

uint64_t sub_24B1B7DC0(uint64_t a1, unint64_t a2, char a3)
{
  v57 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCE48);
  MEMORY[0x28223BE20](v56);
  v7 = &v44 - v6;
  v8 = sub_24B2D1684();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v44 - v12;
  v13 = type metadata accessor for ListPersonInfo.Sort();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v44 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v50 = v14;
  v51 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v45 = v21;
      sub_24B1B34BC();
    }

    else
    {
      if (v25 > v24)
      {
        sub_24B1BBCC4();
        goto LABEL_24;
      }

      v45 = v21;
      sub_24B1BF2B8();
    }

    v48 = *v3;
    sub_24B2D60E4();
    sub_24B1D2670(v57, v23, type metadata accessor for ListPersonInfo.Sort);
    v47 = v9;
    v26 = *(v9 + 48);
    v27 = v26(v23, 2, v8);
    if (v27)
    {
      MEMORY[0x24C23C8D0](v27 != 1);
    }

    else
    {
      v28 = v55;
      (*(v47 + 32))(v55, v23, v8);
      MEMORY[0x24C23C8D0](2);
      sub_24B1D27A0(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
      sub_24B2D5254();
      (*(v47 + 8))(v28, v8);
    }

    v29 = sub_24B2D6124();
    v30 = -1 << *(v48 + 32);
    a2 = v29 & ~v30;
    v55 = (v48 + 56);
    if ((*(v48 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v54 = ~v30;
      v31 = *(v14 + 72);
      v32 = v48;
      v52 = (v47 + 8);
      v53 = v31;
      v46 = (v47 + 32);
      while (1)
      {
        sub_24B1D2670(*(v32 + 48) + v53 * a2, v20, type metadata accessor for ListPersonInfo.Sort);
        v33 = *(v56 + 48);
        sub_24B1D2670(v20, v7, type metadata accessor for ListPersonInfo.Sort);
        sub_24B1D2670(v57, &v7[v33], type metadata accessor for ListPersonInfo.Sort);
        v34 = v26(v7, 2, v8);
        if (v34)
        {
          break;
        }

        sub_24B1D2670(v7, v17, type metadata accessor for ListPersonInfo.Sort);
        if (v26(&v7[v33], 2, v8))
        {
          sub_24B1D2740(v20, type metadata accessor for ListPersonInfo.Sort);
          (*v52)(v17, v8);
LABEL_14:
          sub_24AFF8258(v7, &qword_27EFCCE48);
          goto LABEL_15;
        }

        v35 = v17;
        v36 = v49;
        (*v46)(v49, &v7[v33], v8);
        LODWORD(v47) = sub_24B2D1674();
        v37 = *v52;
        v38 = v36;
        v17 = v35;
        v32 = v48;
        (*v52)(v38, v8);
        sub_24B1D2740(v20, type metadata accessor for ListPersonInfo.Sort);
        v37(v17, v8);
        if (v47)
        {
          goto LABEL_27;
        }

        sub_24B1D2740(v7, type metadata accessor for ListPersonInfo.Sort);
LABEL_15:
        a2 = (a2 + 1) & v54;
        if (((*&v55[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v34 == 1)
      {
        sub_24B1D2740(v20, type metadata accessor for ListPersonInfo.Sort);
        if (v26(&v7[v33], 2, v8) == 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_24B1D2740(v20, type metadata accessor for ListPersonInfo.Sort);
        if (v26(&v7[v33], 2, v8) == 2)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_14;
    }
  }

LABEL_24:
  v39 = *v51;
  *(*v51 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(v57, *(v39 + 48) + *(v50 + 72) * a2, type metadata accessor for ListPersonInfo.Sort);
  v41 = *(v39 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_27:
    sub_24B1D2740(v7, type metadata accessor for ListPersonInfo.Sort);
    result = sub_24B2D6044();
    __break(1u);
  }

  else
  {
    *(v39 + 16) = v43;
  }

  return result;
}

uint64_t sub_24B1B845C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24B2D1714();
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
    sub_24B1B3974();
  }

  else
  {
    if (v11 > v10)
    {
      sub_24B1BC964(MEMORY[0x277D08C20], &qword_27EFCE098);
      goto LABEL_12;
    }

    sub_24B1BF740();
  }

  v12 = *v3;
  sub_24B1D27A0(&qword_27EFCE088, MEMORY[0x277D08C20]);
  v13 = sub_24B2D5244();
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
      sub_24B1D27A0(&qword_27EFCE090, MEMORY[0x277D08C20]);
      v21 = sub_24B2D52A4();
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
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B8724(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v6 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v27 = v8;
    sub_24B1B3CD0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B1BBED0();
      goto LABEL_16;
    }

    v27 = v8;
    sub_24B1BFA5C();
  }

  v13 = *v3;
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();
  sub_24B2D5404();
  v14 = sub_24B2D6124();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v7 + 72);
    do
    {
      sub_24B1D2670(*(v13 + 48) + v17 * a2, v10, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B1D27A0(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      if (v33 == v31 && v34 == v32)
      {
        goto LABEL_19;
      }

      v19 = sub_24B2D6004();

      if (v19)
      {
        goto LABEL_20;
      }

      sub_24B1D2740(v10, type metadata accessor for ItemsLocationsProvider.Subscription);
      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v20 = v30;
  v21 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(v20, *(v21 + 48) + *(v28 + 72) * a2, type metadata accessor for ItemsLocationsProvider.Subscription);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_24B1D2740(v10, type metadata accessor for ItemsLocationsProvider.Subscription);
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B8A74(uint64_t a1, unint64_t a2, char a3)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0);
  MEMORY[0x28223BE20](v53);
  v8 = &v40 - v7;
  v9 = sub_24B2D1DA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ItemsProvider.Subscription(0);
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v41 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    v48 = v21;
    if (a3)
    {
      v26 = v14;
      v40 = v20;
      sub_24B1B403C();
    }

    else
    {
      if (v25 > v24)
      {
        sub_24B1BC0DC();
        goto LABEL_23;
      }

      v26 = v14;
      v40 = v20;
      sub_24B1BFD98();
    }

    v52 = *v3;
    sub_24B2D60E4();
    sub_24B1D2670(a1, v23, type metadata accessor for ItemsProvider.Subscription);
    v27 = *(v10 + 48);
    if (v27(v23, 1, v9) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      (*(v10 + 32))(v26, v23, v9);
      MEMORY[0x24C23C8D0](1);
      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
      sub_24B2D5254();
      (*(v10 + 8))(v26, v9);
    }

    v28 = sub_24B2D6124();
    v29 = -1 << *(v52 + 32);
    a2 = v28 & ~v29;
    v51 = v52 + 56;
    if ((*(v52 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v50 = ~v29;
      v49 = *(v45 + 72);
      v42 = (v10 + 32);
      v46 = (v10 + 8);
      v44 = a1;
      v43 = v27;
      while (1)
      {
        sub_24B1D2670(*(v52 + 48) + v49 * a2, v18, type metadata accessor for ItemsProvider.Subscription);
        v30 = *(v53 + 48);
        sub_24B1D2670(v18, v8, type metadata accessor for ItemsProvider.Subscription);
        sub_24B1D2670(a1, &v8[v30], type metadata accessor for ItemsProvider.Subscription);
        if (v27(v8, 1, v9) == 1)
        {
          break;
        }

        v31 = v48;
        sub_24B1D2670(v8, v48, type metadata accessor for ItemsProvider.Subscription);
        if (v27(&v8[v30], 1, v9) == 1)
        {
          sub_24B1D2740(v18, type metadata accessor for ItemsProvider.Subscription);
          (*v46)(v31, v9);
LABEL_14:
          sub_24AFF8258(v8, &qword_27EFCC6E0);
          goto LABEL_15;
        }

        (*v42)(v47, &v8[v30], v9);
        sub_24B1D27A0(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v56 == v54 && v57 == v55)
        {
          goto LABEL_26;
        }

        v32 = sub_24B2D6004();
        v33 = *v46;
        (*v46)(v47, v9);
        sub_24B1D2740(v18, type metadata accessor for ItemsProvider.Subscription);

        v33(v48, v9);
        a1 = v44;
        v27 = v43;
        if (v32)
        {
          goto LABEL_27;
        }

        sub_24B1D2740(v8, type metadata accessor for ItemsProvider.Subscription);
LABEL_15:
        a2 = (a2 + 1) & v50;
        if (((*(v51 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_24B1D2740(v18, type metadata accessor for ItemsProvider.Subscription);
      if (v27(&v8[v30], 1, v9) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }
  }

LABEL_23:
  v34 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(a1, *(v34 + 48) + *(v45 + 72) * a2, type metadata accessor for ItemsProvider.Subscription);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_26:
    v39 = *v46;
    (*v46)(v47, v9);
    sub_24B1D2740(v18, type metadata accessor for ItemsProvider.Subscription);

    v39(v48, v9);
LABEL_27:
    sub_24B1D2740(v8, type metadata accessor for ItemsProvider.Subscription);
    result = sub_24B2D6044();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

uint64_t sub_24B1B91C4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24B2D1DA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B1B4500();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B1BC964(MEMORY[0x277D08E20], &qword_27EFCE118);
      goto LABEL_12;
    }

    sub_24B1C0210();
  }

  v13 = *v3;
  sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
  v14 = sub_24B2D5244();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24B1D27A0(&qword_27EFCDBD0, MEMORY[0x277D08E20]);
      v22 = sub_24B2D52A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B948C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24B2D1574();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B1B485C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B1BC964(MEMORY[0x277D08B50], &qword_27EFCE110);
      goto LABEL_12;
    }

    sub_24B1C052C();
  }

  v13 = *v3;
  sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  v14 = sub_24B2D5244();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24B1D27A0(&qword_27EFCC6C8, MEMORY[0x277D08B50]);
      v22 = sub_24B2D52A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B9754(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24B2D1A24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B1B4BB8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B1BC964(MEMORY[0x277D08D28], &qword_27EFCE108);
      goto LABEL_12;
    }

    sub_24B1C0848();
  }

  v13 = *v3;
  sub_24B1D27A0(&qword_27EFCE0F8, MEMORY[0x277D08D28]);
  v14 = sub_24B2D5244();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24B1D27A0(&qword_27EFCE100, MEMORY[0x277D08D28]);
      v22 = sub_24B2D52A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1B9A1C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v62 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8);
  MEMORY[0x28223BE20](v61);
  v8 = &v51 - v7;
  v55 = sub_24B2D1704();
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v51 - v12;
  v13 = type metadata accessor for SettingsContactsProvider.Subscription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v56 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  v25 = *(*v4 + 16);
  v26 = *(*v4 + 24);
  v51 = v14;
  v52 = v4;
  if (v26 <= v25 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24B1B4F14();
    }

    else
    {
      if (v26 > v25)
      {
        sub_24B1BC2E8();
        goto LABEL_28;
      }

      sub_24B1C0B64();
    }

    v60 = *v4;
    sub_24B2D60E4();
    sub_24B1D2670(v62, v24, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
    }

    else
    {
      v27 = v59;
      v28 = v24;
      v29 = v55;
      (*(v9 + 32))(v59, v28, v55);
      MEMORY[0x24C23C8D0](0);
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      (*(v9 + 8))(v27, v29);
    }

    v30 = sub_24B2D6124();
    v31 = -1 << *(v60 + 32);
    a2 = v30 & ~v31;
    v59 = (v60 + 56);
    if ((*(v60 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v58 = ~v31;
      v57 = *(v14 + 72);
      v53 = (v9 + 32);
      v32 = (v9 + 8);
      v33 = v56;
      do
      {
        sub_24B1D2670(*(v60 + 48) + v57 * a2, v21, type metadata accessor for SettingsContactsProvider.Subscription);
        v34 = &v8[*(v61 + 48)];
        sub_24B1D2670(v21, v8, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B1D2670(v62, v34, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_24B1D2670(v8, v16, type metadata accessor for SettingsContactsProvider.Subscription);
          v36 = *v16;
          v35 = v16[1];
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v37 = *v34;
            v38 = *(v34 + 1);
            if (v36 == v37 && v35 == v38)
            {
              goto LABEL_31;
            }

            v40 = sub_24B2D6004();

            sub_24B1D2740(v21, type metadata accessor for SettingsContactsProvider.Subscription);
            if (v40)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }

          sub_24B1D2740(v21, type metadata accessor for SettingsContactsProvider.Subscription);
        }

        else
        {
          sub_24B1D2670(v8, v33, type metadata accessor for SettingsContactsProvider.Subscription);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v41 = v54;
            v42 = v55;
            (*v53)(v54, v34, v55);
            MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
            v44 = *v32;
            v45 = v41;
            v33 = v56;
            (*v32)(v45, v42);
            sub_24B1D2740(v21, type metadata accessor for SettingsContactsProvider.Subscription);
            v44(v33, v42);
            if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
            {
              goto LABEL_32;
            }

LABEL_26:
            sub_24B1D2740(v8, type metadata accessor for SettingsContactsProvider.Subscription);
            goto LABEL_15;
          }

          sub_24B1D2740(v21, type metadata accessor for SettingsContactsProvider.Subscription);
          (*v32)(v33, v55);
        }

        sub_24AFF8258(v8, &qword_27EFCDBC8);
LABEL_15:
        a2 = (a2 + 1) & v58;
      }

      while (((*&v59[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v46 = *v52;
  *(*v52 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(v62, *(v46 + 48) + *(v51 + 72) * a2, type metadata accessor for SettingsContactsProvider.Subscription);
  v48 = *(v46 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
    __break(1u);
LABEL_31:

    sub_24B1D2740(v21, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_32:
    sub_24B1D2740(v8, type metadata accessor for SettingsContactsProvider.Subscription);
    result = sub_24B2D6044();
    __break(1u);
  }

  else
  {
    *(v46 + 16) = v50;
  }

  return result;
}

uint64_t sub_24B1BA124(uint64_t result, unint64_t a2, char a3)
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
    sub_24B1B511C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24B1BC4F4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24B1C0D30();
  }

  v8 = *v3;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  sub_24B2D6104();
  result = sub_24B2D6124();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
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
  *(*(v11 + 48) + a2) = v4 & 1;
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
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1BA284(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v51 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8);
  MEMORY[0x28223BE20](v50);
  v8 = &v42 - v7;
  v9 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - v23;
  v25 = *(*v4 + 16);
  v26 = *(*v4 + 24);
  v43 = v4;
  if (v26 <= v25 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v27 = v14;
      v42 = v22;
      sub_24B1B5378();
    }

    else
    {
      if (v26 > v25)
      {
        sub_24B1BC634();
        goto LABEL_21;
      }

      v27 = v14;
      v42 = v22;
      sub_24B1C0F5C();
    }

    v45 = *v4;
    sub_24B2D60E4();
    sub_24B1D2670(v51, v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v28 = *(v10 + 48);
    if (v28(v24, 1, v9) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      sub_24B1D26D8(v24, v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MEMORY[0x24C23C8D0](1);
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B1D2740(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    }

    v29 = sub_24B2D6124();
    v30 = v45;
    v31 = -1 << *(v45 + 32);
    a2 = v29 & ~v31;
    v49 = v45 + 56;
    if ((*(v45 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v48 = ~v31;
      v47 = *(v44 + 72);
      while (1)
      {
        sub_24B1D2670(*(v30 + 48) + v47 * a2, v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v32 = *(v50 + 48);
        sub_24B1D2670(v20, v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B1D2670(v51, &v8[v32], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if (v28(v8, 1, v9) == 1)
        {
          break;
        }

        sub_24B1D2670(v8, v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if (v28(&v8[v32], 1, v9) == 1)
        {
          sub_24B1D2740(v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_14:
          sub_24AFF8258(v8, &qword_27EFCC7A8);
          goto LABEL_15;
        }

        v33 = v17;
        v34 = v46;
        sub_24B1D26D8(&v8[v32], v46, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
        v36 = v34;
        v17 = v33;
        v30 = v45;
        sub_24B1D2740(v36, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        sub_24B1D2740(v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
        {
          goto LABEL_24;
        }

        sub_24B1D2740(v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
LABEL_15:
        a2 = (a2 + 1) & v48;
        if (((*(v49 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_24B1D2740(v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if (v28(&v8[v32], 1, v9) == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }
  }

LABEL_21:
  v37 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24B1D26D8(v51, *(v37 + 48) + *(v44 + 72) * a2, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_24:
    sub_24B1D2740(v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    result = sub_24B2D6044();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

unint64_t sub_24B1BA8E4(unint64_t result, char a2, uint64_t *a3)
{
  v4 = *(*v3 + 16);
  v5 = *(*v3 + 24);
  if (v5 <= v4 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_24B1B5828(v4 + 1, a3);
      goto LABEL_8;
    }

    if (v5 <= v4)
    {
      sub_24B1C13D0(v4 + 1, a3);
LABEL_8:
      v7 = *v3;
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      result = sub_24B2D6124() & ~(-1 << *(v7 + 32));
      if ((*(v7 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v6 = result;
    sub_24B1BC868(a3);
    result = v6;
  }

LABEL_9:
  v8 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v8 + 16) = v11;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

uint64_t sub_24B1BAA2C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24B2D1974();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B1B5A38();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B1BC964(MEMORY[0x277D08CF8], &qword_27EFCC7B8);
      goto LABEL_12;
    }

    sub_24B1C15A4();
  }

  v13 = *v3;
  sub_24B1D27A0(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
  v14 = sub_24B2D5244();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24B1D27A0(&qword_27EFCC7C8, MEMORY[0x277D08CF8]);
      v22 = sub_24B2D52A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B2D6044();
  __break(1u);
  return result;
}

void *sub_24B1BACF4()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E0);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, _s14descr285E46659O16SubscriptionDataOMa);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, _s14descr285E46659O16SubscriptionDataOMa);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BAF28()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE140);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BB134()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE150);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BB340()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE148);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BB54C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC750);
  v2 = *v0;
  v3 = sub_24B2D5BE4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_24B1BB6A0()
{
  v1 = v0;
  v2 = type metadata accessor for ContactsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC818);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for ContactsProvider.Subscription);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for ContactsProvider.Subscription);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BB8AC()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E0);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for PeopleLocationsProvider.Subscription);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for PeopleLocationsProvider.Subscription);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BBAB8()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7F8);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for PeopleProvider.Subscription);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for PeopleProvider.Subscription);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BBCC4()
{
  v1 = v0;
  v2 = type metadata accessor for ListPersonInfo.Sort();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE080);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for ListPersonInfo.Sort);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for ListPersonInfo.Sort);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BBED0()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE128);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for ItemsLocationsProvider.Subscription);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for ItemsLocationsProvider.Subscription);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BC0DC()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC860);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for ItemsProvider.Subscription);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for ItemsProvider.Subscription);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BC2E8()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsContactsProvider.Subscription();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0C0);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for SettingsContactsProvider.Subscription);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for SettingsContactsProvider.Subscription);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BC4F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A0);
  v2 = *v0;
  v3 = sub_24B2D5BE4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_24B1BC634()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B0);
  v6 = *v0;
  v7 = sub_24B2D5BE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24B1D2670(*(v6 + 48) + v21, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        result = sub_24B1D26D8(v5, *(v8 + 48) + v21, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24B1BC868(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_24B2D5BE4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
LABEL_11:
      v12 &= v12 - 1;
    }

    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        goto LABEL_17;
      }

      v12 = *(v3 + 56 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v5;
  }

  return result;
}

void *sub_24B1BC964(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_24B2D5BE4();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_24B1BCB9C()
{
  v1 = v0;
  v45 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v48 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v39 - v11;
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E0);
  v13 = sub_24B2D5BF4();
  result = v12;
  if (*(v12 + 16))
  {
    v41 = v0;
    v15 = 0;
    v16 = result + 56;
    v17 = 1 << *(result + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(result + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 56;
    v46 = v7;
    v47 = result;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(result + 48);
      v49 = *(v48 + 72);
      v27 = v50;
      sub_24B1D2670(v26 + v49 * (v23 | (v15 << 6)), v50, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D60E4();
      sub_24B1D2670(v27, v10, _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v29 = v43;
          sub_24B1D26D8(v10, v43, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          MEMORY[0x24C23C8D0](3);
          sub_24B2D1704();
          sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v30 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        }

        else
        {
          v29 = v42;
          sub_24B1D26D8(v10, v42, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          MEMORY[0x24C23C8D0](2);
          sub_24B2D1704();
          sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v30 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        }

        sub_24B1D2740(v29, v30);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v31 = v44;
        sub_24B1D26D8(v10, v44, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        MEMORY[0x24C23C8D0](4);
        sub_24B2D1704();
        v40 = v10;
        sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v10 = v40;
        sub_24B2D5254();
        sub_24B2D6104();
        sub_24B1D2740(v31, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        MEMORY[0x24C23C8D0](1);
      }

      result = sub_24B2D6124();
      v32 = -1 << *(v13 + 32);
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
            goto LABEL_7;
          }
        }

        goto LABEL_38;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_24B1D26D8(v50, *(v13 + 48) + v22 * v49, _s14descr285E46659O16SubscriptionDataOMa);
      ++*(v13 + 16);
      result = v47;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v41;
        goto LABEL_36;
      }

      v25 = *(v16 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v1 = v13;
  }

  return result;
}

uint64_t sub_24B1BD1D4()
{
  v1 = v0;
  v32 = sub_24B2D1704();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0D0);
  v6 = sub_24B2D5BF4();
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
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1BD4F0()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE140);
  result = sub_24B2D5BF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_24B1D2670(v19 + v20 * (v16 | (v8 << 6)), v4, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2D6104();
      result = sub_24B2D6124();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      ++*(v7 + 16);
      v5 = v30;
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

        v1 = v29;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B1BD828()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE150);
  result = sub_24B2D5BF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_24B1D2670(v19 + v20 * (v16 | (v8 << 6)), v4, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      result = sub_24B2D6124();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      ++*(v7 + 16);
      v5 = v29;
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

        v1 = v28;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B1BDB4C()
{
  v1 = v0;
  v2 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE148);
  result = sub_24B2D5BF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_24B1D2670(v19 + v20 * (v16 | (v8 << 6)), v4, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      result = sub_24B2D6124();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      ++*(v7 + 16);
      v5 = v29;
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

        v1 = v28;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B1BDE70()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC750);
  result = sub_24B2D5BF4();
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
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](v15);
      result = sub_24B2D6124();
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

uint64_t sub_24B1BE090()
{
  v1 = v0;
  v32 = sub_24B2D15F4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC738);
  v6 = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1BE3AC()
{
  v1 = v0;
  v56 = sub_24B2D14C4();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24B2D15F4();
  v4 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v45 - v9;
  v10 = type metadata accessor for ContactsProvider.Subscription(0);
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v45 - v14;
  v15 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC818);
  v16 = sub_24B2D5BF4();
  result = v15;
  if (*(v15 + 16))
  {
    v45 = v0;
    v18 = 0;
    v19 = result + 56;
    v20 = 1 << *(result + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(result + 56);
    v23 = (v20 + 63) >> 6;
    v53 = (v4 + 32);
    v52 = (v2 + 48);
    v47 = (v2 + 32);
    v46 = (v2 + 8);
    v51 = (v4 + 8);
    v24 = v16 + 56;
    v25 = v56;
    v57 = result;
    v50 = v12;
    v49 = v16;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = *(result + 48);
      v63 = *(v58 + 72);
      v31 = v64;
      sub_24B1D2670(v30 + v63 * (v27 | (v18 << 6)), v64, type metadata accessor for ContactsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1D2670(v31, v12, type metadata accessor for ContactsProvider.Subscription);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x24C23C8D0](1);
        v25 = v56;
        sub_24B2D5404();
      }

      else
      {
        v55 = v22;
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
        v33 = v60;
        sub_24B0391CC(v12, v60, &qword_27EFCC810);
        (*v53)(v61, &v12[v32], v62);
        MEMORY[0x24C23C8D0](0);
        v34 = v54;
        sub_24B008890(v33, v54, &qword_27EFCC810);
        if ((*v52)(v34, 1, v25) == 1)
        {
          sub_24B2D6104();
        }

        else
        {
          v35 = v48;
          (*v47)(v48, v34, v25);
          sub_24B2D6104();
          sub_24B1D27A0(&qword_27EFCC830, MEMORY[0x277D08B38]);
          sub_24B2D5254();
          (*v46)(v35, v25);
        }

        sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
        v36 = v61;
        v37 = v62;
        sub_24B2D5254();
        (*v51)(v36, v37);
        sub_24AFF8258(v60, &qword_27EFCC810);
        v12 = v50;
        v22 = v55;
        v16 = v49;
      }

      result = sub_24B2D6124();
      v38 = -1 << *(v16 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v26 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v26 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_24B1D26D8(v64, *(v16 + 48) + v26 * v63, type metadata accessor for ContactsProvider.Subscription);
      ++*(v16 + 16);
      result = v57;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v1 = v45;
        goto LABEL_32;
      }

      v29 = *(v19 + 8 * v18);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v1 = v16;
  }

  return result;
}

uint64_t sub_24B1BEACC()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E0);
  result = sub_24B2D5BF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_24B1D2670(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B2D1574();
      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      sub_24B2D5254();
      sub_24B2D5404();

      result = sub_24B2D6124();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, type metadata accessor for PeopleLocationsProvider.Subscription);
      ++*(v7 + 16);
      v5 = v30;
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

        v1 = v29;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B1BEE40()
{
  v1 = v0;
  v2 = sub_24B2D1574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeopleProvider.Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v37 - v10;
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7F8);
  result = sub_24B2D5BF4();
  v13 = result;
  if (*(v11 + 16))
  {
    v44 = v2;
    v37 = v0;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v42 = (v3 + 48);
    v43 = v11;
    v38 = (v3 + 8);
    v39 = (v3 + 32);
    v20 = result + 56;
    v40 = v6;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v45 = *(v6 + 72);
      v26 = v46;
      sub_24B1D2670(v25 + v45 * (v22 | (v14 << 6)), v46, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1D2670(v26, v8, type metadata accessor for PeopleProvider.Subscription);
      v27 = v44;
      if ((*v42)(v8, 1, v44) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v28 = v41;
        (*v39)(v41, v8, v27);
        MEMORY[0x24C23C8D0](1);
        sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
        sub_24B2D5254();
        v29 = v28;
        v6 = v40;
        (*v38)(v29, v27);
      }

      result = sub_24B2D6124();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      v11 = v43;
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
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_24B1D26D8(v46, *(v13 + 48) + v21 * v45, type metadata accessor for PeopleProvider.Subscription);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v37;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v13;
  }

  return result;
}

uint64_t sub_24B1BF2B8()
{
  v1 = v0;
  v44 = sub_24B2D1684();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListPersonInfo.Sort();
  v43 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v37 - v8;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE080);
  result = sub_24B2D5BF4();
  v11 = result;
  if (*(v9 + 16))
  {
    v37 = v0;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v42 = (v2 + 48);
    v38 = (v2 + 8);
    v39 = (v2 + 32);
    v18 = result + 56;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v45 = *(v43 + 72);
      v24 = v46;
      sub_24B1D2670(v23 + v45 * (v20 | (v12 << 6)), v46, type metadata accessor for ListPersonInfo.Sort);
      sub_24B2D60E4();
      sub_24B1D2670(v24, v7, type metadata accessor for ListPersonInfo.Sort);
      v25 = (*v42)(v7, 2, v44);
      if (v25)
      {
        MEMORY[0x24C23C8D0](v25 != 1);
      }

      else
      {
        v26 = v7;
        v27 = v41;
        v28 = v44;
        (*v39)(v41, v26, v44);
        MEMORY[0x24C23C8D0](2);
        sub_24B1D27A0(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
        sub_24B2D5254();
        v29 = v27;
        v7 = v26;
        v9 = v40;
        (*v38)(v29, v28);
      }

      result = sub_24B2D6124();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24B1D26D8(v46, *(v11 + 48) + v19 * v45, type metadata accessor for ListPersonInfo.Sort);
      ++*(v11 + 16);
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

        v1 = v37;
        goto LABEL_29;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v11;
  }

  return result;
}

uint64_t sub_24B1BF740()
{
  v1 = v0;
  v32 = sub_24B2D1714();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE098);
  v6 = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCE088, MEMORY[0x277D08C20]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1BFA5C()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE128);
  result = sub_24B2D5BF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_24B1D2670(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B2D1DA4();
      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
      sub_24B2D5254();
      sub_24B2D5404();
      result = sub_24B2D6124();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24B1D26D8(v4, *(v7 + 48) + v15 * v20, type metadata accessor for ItemsLocationsProvider.Subscription);
      ++*(v7 + 16);
      v5 = v29;
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

        v1 = v28;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B1BFD98()
{
  v1 = v0;
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ItemsProvider.Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v37 - v10;
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC860);
  result = sub_24B2D5BF4();
  v13 = result;
  if (*(v11 + 16))
  {
    v44 = v2;
    v37 = v0;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v42 = (v3 + 48);
    v43 = v11;
    v38 = (v3 + 8);
    v39 = (v3 + 32);
    v20 = result + 56;
    v40 = v6;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v45 = *(v6 + 72);
      v26 = v46;
      sub_24B1D2670(v25 + v45 * (v22 | (v14 << 6)), v46, type metadata accessor for ItemsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1D2670(v26, v8, type metadata accessor for ItemsProvider.Subscription);
      v27 = v44;
      if ((*v42)(v8, 1, v44) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v28 = v41;
        (*v39)(v41, v8, v27);
        MEMORY[0x24C23C8D0](1);
        sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
        sub_24B2D5254();
        v29 = v28;
        v6 = v40;
        (*v38)(v29, v27);
      }

      result = sub_24B2D6124();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      v11 = v43;
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
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_24B1D26D8(v46, *(v13 + 48) + v21 * v45, type metadata accessor for ItemsProvider.Subscription);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v37;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v13;
  }

  return result;
}

uint64_t sub_24B1C0210()
{
  v1 = v0;
  v32 = sub_24B2D1DA4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE118);
  v6 = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1C052C()
{
  v1 = v0;
  v32 = sub_24B2D1574();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE110);
  v6 = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1C0848()
{
  v1 = v0;
  v32 = sub_24B2D1A24();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE108);
  v6 = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCE0F8, MEMORY[0x277D08D28]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1C0B64()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsContactsProvider.Subscription();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0C0);
  result = sub_24B2D5BF4();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    for (i = (v10 + 63) >> 6; v12; result = sub_24B2A09AC(v5, v8))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      sub_24B1D2670(*(v6 + 48) + *(v3 + 72) * (v14 | (v9 << 6)), v5, type metadata accessor for SettingsContactsProvider.Subscription);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_13;
      }

      v16 = *(v6 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_24B1C0D30()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A0);
  result = sub_24B2D5BF4();
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
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      sub_24B2D6104();
      result = sub_24B2D6124();
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

uint64_t sub_24B1C0F5C()
{
  v1 = v0;
  v41 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v34 - v7;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B0);
  result = sub_24B2D5BF4();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v0;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v38 = v8;
    v39 = (v2 + 48);
    v17 = result + 56;
    v18 = v37;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = *(v8 + 48);
      v24 = *(v40 + 72);
      v25 = v42;
      sub_24B1D2670(v23 + v24 * (v20 | (v11 << 6)), v42, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1D2670(v25, v18, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if ((*v39)(v18, 1, v41) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v26 = v36;
        sub_24B1D26D8(v18, v36, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        MEMORY[0x24C23C8D0](1);
        sub_24B2D1704();
        sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v18 = v37;
        sub_24B2D5254();
        sub_24B1D2740(v26, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      }

      result = sub_24B2D6124();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24B1D26D8(v42, *(v10 + 48) + v19 * v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_29;
      }

      v22 = *(v12 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_24B1C13D0(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24B2D5BF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      result = sub_24B2D6124();
      v14 = -1 << *(v5 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v5 + 16);
    }

    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_22;
      }

      v9 = *(v3 + 56 + 8 * v13);
      ++v6;
      if (v9)
      {
        v6 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_24B1C15A4()
{
  v1 = v0;
  v32 = sub_24B2D1974();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B8);
  v6 = sub_24B2D5BF4();
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
      sub_24B1D27A0(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
      result = sub_24B2D5244();
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

uint64_t sub_24B1C18C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDB8);
  v30 = a2;
  result = sub_24B2D5DD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](v20);
      result = sub_24B2D6124();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24B1C1B50(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for RepositorySubscriber();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDC8);
  v39 = a2;
  result = sub_24B2D5DD4();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v40 = *(v38 + 72);
      v24 = v23 + v40 * v22;
      if (v39)
      {
        sub_24B1D26D8(v24, v7, type metadata accessor for RepositorySubscriber);
        v25 = v7;
        v26 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_24B1D2670(v24, v7, type metadata accessor for RepositorySubscriber);
        v25 = v7;
        v26 = *(*(v8 + 56) + 8 * v22);
      }

      sub_24B2D60E4();
      sub_24B2D2504();
      sub_24B1D27A0(&qword_27EFC8298, MEMORY[0x277CC95F0]);
      v27 = v25;
      sub_24B2D5254();
      result = sub_24B2D6124();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_24B1D26D8(v27, *(v10 + 48) + v40 * v18, type metadata accessor for RepositorySubscriber);
      *(*(v10 + 56) + 8 * v18) = v26;
      v7 = v27;
      ++*(v10 + 16);
      v8 = v37;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_24B1C1F20(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24B2D1704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE18);
  v48 = a2;
  result = sub_24B2D5DD4();
  v11 = result;
  if (*(v9 + 16))
  {
    v55 = v8;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = v6;
    v18 = (v14 + 63) >> 6;
    v44 = v2;
    v45 = (v17 + 16);
    v49 = (v17 + 32);
    v19 = result + 64;
    v46 = v17;
    v47 = v9;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v54 = *(v17 + 72);
      v28 = v27 + v54 * v26;
      v29 = 32 * v26;
      if (v48)
      {
        (*v49)(v55, v28, v5);
        v30 = *(v9 + 56) + v29;
        v31 = *v30;
        v52 = *(v30 + 8);
        v53 = v31;
        v51 = *(v30 + 16);
        v50 = *(v30 + 24);
      }

      else
      {
        (*v45)(v55, v28, v5);
        v32 = *(v9 + 56) + v29;
        v33 = *v32;
        v34 = *(v32 + 16);
        v35 = *(v32 + 24);
        v52 = *(v32 + 8);
        v53 = v33;
        v51 = v34;
        v50 = v35;
        sub_24B034224(v33, v52, v34);
      }

      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      result = sub_24B2D5244();
      v36 = -1 << *(v11 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v19 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v19 + 8 * v38);
          if (v42 != -1)
          {
            v20 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v37) & ~*(v19 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v49)(*(v11 + 48) + v54 * v20, v55, v5);
      v21 = *(v11 + 56) + 32 * v20;
      v22 = v52;
      *v21 = v53;
      *(v21 + 8) = v22;
      *(v21 + 16) = v51;
      *(v21 + 24) = v50;
      ++*(v11 + 16);
      v17 = v46;
      v9 = v47;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v9 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v13, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v43;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24B1C2334(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0B8);
  v34 = a2;
  result = sub_24B2D5DD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24B2D60E4();
      sub_24B2D5404();
      result = sub_24B2D6124();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24B1C25DC(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_24B2D2504();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF90);
  v47 = a2;
  result = sub_24B2D5DD4();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_24B1D27A0(&qword_27EFC8298, MEMORY[0x277CC95F0]);
      result = sub_24B2D5244();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24B1C2A8C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SessionFollowingState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1704();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDE8);
  v43 = a2;
  result = sub_24B2D5DD4();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D26D8(v27 + v28 * v24, v47, type metadata accessor for SessionFollowingState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D2670(v29 + v28 * v24, v47, type metadata accessor for SessionFollowingState);
      }

      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      result = sub_24B2D5244();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24B1D26D8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SessionFollowingState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24B1C2F2C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SessionFollowerState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1704();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDF8);
  v43 = a2;
  result = sub_24B2D5DD4();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D26D8(v27 + v28 * v24, v47, type metadata accessor for SessionFollowerState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D2670(v29 + v28 * v24, v47, type metadata accessor for SessionFollowerState);
      }

      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      result = sub_24B2D5244();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24B1D26D8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SessionFollowerState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24B1C33CC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for DirectionsState();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1704();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE08);
  v43 = a2;
  result = sub_24B2D5DD4();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D26D8(v27 + v28 * v24, v47, type metadata accessor for DirectionsState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D2670(v29 + v28 * v24, v47, type metadata accessor for DirectionsState);
      }

      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      result = sub_24B2D5244();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24B1D26D8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for DirectionsState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24B1C386C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_24B2D24A4();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDD8);
  v42 = a2;
  result = sub_24B2D5DD4();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_24B2D60E4();
      sub_24B2D5404();
      result = sub_24B2D6124();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24B1C3BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDA8);
  v35 = a2;
  result = sub_24B2D5DD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_24B2D60E4();
      sub_24B2D5404();
      result = sub_24B2D6124();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24B1C3E90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF58);
  v35 = a2;
  result = sub_24B2D5DD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[3];
      v36 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_24B2D60E4();
      sub_24B2D5404();
      sub_24B2D5404();
      result = sub_24B2D6124();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v36;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24B1C4160(uint64_t a1, int a2)
{
  v3 = v2;
  v67 = sub_24B2D14C4();
  v5 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24B2D15F4();
  v7 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v57 - v12;
  v13 = type metadata accessor for ContactsProvider.ContactState(0);
  v72 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContactsProvider.Subscription(0);
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF78);
  v76 = a2;
  result = sub_24B2D5DD4();
  v23 = result;
  if (*(v21 + 16))
  {
    v79 = v20;
    v58 = v2;
    v24 = v7;
    v25 = 0;
    v26 = (v21 + 64);
    v27 = 1 << *(v21 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v21 + 64);
    v30 = (v27 + 63) >> 6;
    v65 = (v24 + 32);
    v64 = (v5 + 48);
    v60 = (v5 + 32);
    v59 = (v5 + 8);
    v63 = (v24 + 8);
    v31 = result + 64;
    v69 = v21;
    v62 = v17;
    while (v29)
    {
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_15:
      v36 = v33 | (v25 << 6);
      v37 = *(v21 + 48);
      v78 = *(v70 + 72);
      v38 = v37 + v78 * v36;
      v39 = v79;
      if (v76)
      {
        sub_24B1D26D8(v38, v79, type metadata accessor for ContactsProvider.Subscription);
        v40 = *(v21 + 56);
        v77 = *(v72 + 72);
        sub_24B1D26D8(v40 + v77 * v36, v80, type metadata accessor for ContactsProvider.ContactState);
      }

      else
      {
        sub_24B1D2670(v38, v79, type metadata accessor for ContactsProvider.Subscription);
        v41 = *(v21 + 56);
        v77 = *(v72 + 72);
        sub_24B1D2670(v41 + v77 * v36, v80, type metadata accessor for ContactsProvider.ContactState);
      }

      sub_24B2D60E4();
      sub_24B1D2670(v39, v17, type metadata accessor for ContactsProvider.Subscription);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x24C23C8D0](1);
        sub_24B2D5404();
      }

      else
      {
        v68 = v29;
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
        v43 = v73;
        sub_24B0391CC(v17, v73, &qword_27EFCC810);
        (*v65)(v74, &v17[v42], v75);
        MEMORY[0x24C23C8D0](0);
        v44 = v66;
        sub_24B008890(v43, v66, &qword_27EFCC810);
        v45 = v67;
        if ((*v64)(v44, 1, v67) == 1)
        {
          sub_24B2D6104();
        }

        else
        {
          v46 = v61;
          (*v60)(v61, v44, v45);
          sub_24B2D6104();
          sub_24B1D27A0(&qword_27EFCC830, MEMORY[0x277D08B38]);
          sub_24B2D5254();
          (*v59)(v46, v45);
        }

        sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
        v47 = v74;
        v48 = v75;
        sub_24B2D5254();
        (*v63)(v47, v48);
        sub_24AFF8258(v73, &qword_27EFCC810);
        v17 = v62;
        v29 = v68;
      }

      result = sub_24B2D6124();
      v49 = -1 << *(v23 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      v21 = v69;
      if (((-1 << v50) & ~*(v31 + 8 * (v50 >> 6))) == 0)
      {
        v52 = 0;
        v53 = (63 - v49) >> 6;
        while (++v51 != v53 || (v52 & 1) == 0)
        {
          v54 = v51 == v53;
          if (v51 == v53)
          {
            v51 = 0;
          }

          v52 |= v54;
          v55 = *(v31 + 8 * v51);
          if (v55 != -1)
          {
            v32 = __clz(__rbit64(~v55)) + (v51 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v50) & ~*(v31 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v31 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      sub_24B1D26D8(v79, *(v23 + 48) + v78 * v32, type metadata accessor for ContactsProvider.Subscription);
      result = sub_24B1D26D8(v80, *(v23 + 56) + v77 * v32, type metadata accessor for ContactsProvider.ContactState);
      ++*(v23 + 16);
    }

    v34 = v25;
    while (1)
    {
      v25 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v25 >= v30)
      {
        break;
      }

      v35 = v26[v25];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v29 = (v35 - 1) & v35;
        goto LABEL_15;
      }
    }

    if ((v76 & 1) == 0)
    {

      v3 = v58;
      goto LABEL_40;
    }

    v56 = 1 << *(v21 + 32);
    v3 = v58;
    if (v56 >= 64)
    {
      bzero(v26, ((v56 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v26 = -1 << v56;
    }

    *(v21 + 16) = 0;
  }

LABEL_40:
  *v3 = v23;
  return result;
}

uint64_t sub_24B1C4A10(uint64_t a1, int a2)
{
  v3 = v2;
  v73 = sub_24B2D14C4();
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24B2D15F4();
  v7 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v64 - v12;
  v83 = sub_24B2D1494();
  v13 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v89 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ContactsProvider.Subscription(0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBF0);
  v82 = a2;
  result = sub_24B2D5DD4();
  v21 = result;
  if (*(v19 + 16))
  {
    v64 = v2;
    v22 = 0;
    v81 = v19;
    v25 = *(v19 + 64);
    v24 = (v19 + 64);
    v23 = v25;
    v26 = 1 << *(v24 - 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v23;
    v29 = (v26 + 63) >> 6;
    v71 = v13 + 16;
    v84 = (v13 + 32);
    v70 = (v7 + 32);
    v69 = (v5 + 48);
    v66 = (v5 + 32);
    v65 = (v5 + 8);
    v68 = (v7 + 8);
    v30 = result + 64;
    v31 = v83;
    v88 = v18;
    v74 = v13;
    while (v28)
    {
      v33 = __clz(__rbit64(v28));
      v34 = (v28 - 1) & v28;
LABEL_15:
      v37 = v33 | (v22 << 6);
      v87 = v34;
      v38 = v81;
      v39 = *(v81 + 48);
      v86 = *(v76 + 72);
      v40 = v39 + v86 * v37;
      v41 = v88;
      if (v82)
      {
        sub_24B1D26D8(v40, v88, type metadata accessor for ContactsProvider.Subscription);
        v42 = *(v38 + 56);
        v85 = *(v13 + 72);
        (*(v13 + 32))(v89, v42 + v85 * v37, v31);
      }

      else
      {
        sub_24B1D2670(v40, v88, type metadata accessor for ContactsProvider.Subscription);
        v43 = *(v38 + 56);
        v85 = *(v13 + 72);
        (*(v13 + 16))(v89, v43 + v85 * v37, v31);
      }

      sub_24B2D60E4();
      v44 = v75;
      sub_24B1D2670(v41, v75, type metadata accessor for ContactsProvider.Subscription);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x24C23C8D0](1);
        v31 = v83;
        sub_24B2D5404();

        v45 = v88;
      }

      else
      {
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
        v47 = v44;
        v48 = v44;
        v49 = v78;
        sub_24B0391CC(v47, v78, &qword_27EFCC810);
        (*v70)(v79, v48 + v46, v80);
        MEMORY[0x24C23C8D0](0);
        v50 = v72;
        sub_24B008890(v49, v72, &qword_27EFCC810);
        if ((*v69)(v50, 1, v73) == 1)
        {
          sub_24B2D6104();
        }

        else
        {
          v51 = v67;
          v52 = v73;
          (*v66)(v67, v50, v73);
          sub_24B2D6104();
          sub_24B1D27A0(&qword_27EFCC830, MEMORY[0x277D08B38]);
          sub_24B2D5254();
          (*v65)(v51, v52);
        }

        sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
        v53 = v79;
        v54 = v80;
        sub_24B2D5254();
        (*v68)(v53, v54);
        sub_24AFF8258(v78, &qword_27EFCC810);
        v45 = v88;
        v31 = v83;
      }

      result = sub_24B2D6124();
      v55 = -1 << *(v21 + 32);
      v56 = result & ~v55;
      v57 = v56 >> 6;
      v13 = v74;
      if (((-1 << v56) & ~*(v30 + 8 * (v56 >> 6))) == 0)
      {
        v58 = 0;
        v59 = (63 - v55) >> 6;
        while (++v57 != v59 || (v58 & 1) == 0)
        {
          v60 = v57 == v59;
          if (v57 == v59)
          {
            v57 = 0;
          }

          v58 |= v60;
          v61 = *(v30 + 8 * v57);
          if (v61 != -1)
          {
            v32 = __clz(__rbit64(~v61)) + (v57 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v56) & ~*(v30 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      sub_24B1D26D8(v45, *(v21 + 48) + v86 * v32, type metadata accessor for ContactsProvider.Subscription);
      result = (*v84)(*(v21 + 56) + v85 * v32, v89, v31);
      ++*(v21 + 16);
      v28 = v87;
    }

    v35 = v22;
    while (1)
    {
      v22 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v22 >= v29)
      {
        break;
      }

      v36 = v24[v22];
      ++v35;
      if (v36)
      {
        v33 = __clz(__rbit64(v36));
        v34 = (v36 - 1) & v36;
        goto LABEL_15;
      }
    }

    if ((v82 & 1) == 0)
    {

      v3 = v64;
      goto LABEL_41;
    }

    v62 = v81;
    v63 = 1 << *(v81 + 32);
    v3 = v64;
    if (v63 >= 64)
    {
      bzero(v24, ((v63 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v63;
    }

    *(v62 + 16) = 0;
  }

LABEL_41:
  *v3 = v21;
  return result;
}