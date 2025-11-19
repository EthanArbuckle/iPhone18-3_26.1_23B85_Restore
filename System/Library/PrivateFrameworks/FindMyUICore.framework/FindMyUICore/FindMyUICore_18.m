uint64_t sub_24B1C531C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ETAProvider.ETAState(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF68);
  v41 = a2;
  result = sub_24B2D5DD4();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v42 = (v14 - 1) & v14;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 32 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v43 = *(v40 + 72);
      v29 = v23 + v43 * v22;
      if (v41)
      {
        sub_24B1D26D8(v29, v44, type metadata accessor for ETAProvider.ETAState);
      }

      else
      {
        sub_24B1D2670(v29, v44, type metadata accessor for ETAProvider.ETAState);
      }

      sub_24B2D60E4();
      sub_24B2D5404();
      sub_24B2D5404();
      result = sub_24B2D6124();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 32 * v17);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      v18[3] = v28;
      result = sub_24B1D26D8(v44, *(v9 + 56) + v43 * v17, type metadata accessor for ETAProvider.ETAState);
      ++*(v9 + 16);
      v7 = v39;
      v14 = v42;
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
        v42 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24B1C56C8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24B2D1DA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF38);
  v39 = a2;
  result = sub_24B2D5DD4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
      result = sub_24B2D5244();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24B1C5AA4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ItemsProvider.InfoState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1DA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF48);
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
        sub_24B1D26D8(v27 + v28 * v24, v47, type metadata accessor for ItemsProvider.InfoState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D2670(v29 + v28 * v24, v47, type metadata accessor for ItemsProvider.InfoState);
      }

      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
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
      result = sub_24B1D26D8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ItemsProvider.InfoState);
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

uint64_t sub_24B1C5F44(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24B2D1574();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDED8);
  v39 = a2;
  result = sub_24B2D5DD4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      result = sub_24B2D5244();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24B1C6320(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PeopleProvider.PersonState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1574();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEE8);
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
        sub_24B1D26D8(v27 + v28 * v24, v47, type metadata accessor for PeopleProvider.PersonState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D2670(v29 + v28 * v24, v47, type metadata accessor for PeopleProvider.PersonState);
      }

      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
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
      result = sub_24B1D26D8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for PeopleProvider.PersonState);
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

uint64_t sub_24B1C67C0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1DA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF10);
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
        sub_24B1D26D8(v27 + v28 * v24, v47, type metadata accessor for ItemsLocationsProvider.LocationState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D2670(v29 + v28 * v24, v47, type metadata accessor for ItemsLocationsProvider.LocationState);
      }

      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
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
      result = sub_24B1D26D8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ItemsLocationsProvider.LocationState);
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

uint64_t sub_24B1C6C60(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1574();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEB0);
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
        sub_24B1D26D8(v27 + v28 * v24, v47, type metadata accessor for PeopleLocationsProvider.LocationState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24B1D2670(v29 + v28 * v24, v47, type metadata accessor for PeopleLocationsProvider.LocationState);
      }

      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
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
      result = sub_24B1D26D8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for PeopleLocationsProvider.LocationState);
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

uint64_t sub_24B1C7128(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v54 = a3(0);
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v42 - v9;
  v10 = sub_24B2D1DA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v49 = a2;
  result = sub_24B2D5DD4();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v11;
    v21 = v19 & *(v13 + 64);
    v22 = (v18 + 63) >> 6;
    v45 = (v20 + 16);
    v46 = v20;
    v43 = v4;
    v44 = v8 + 16;
    v47 = v13;
    v48 = v8;
    v50 = (v8 + 32);
    v51 = (v20 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 48);
      v52 = *(v20 + 72);
      v30 = v29 + v52 * v28;
      if (v49)
      {
        (*v51)(v55, v30, v10);
        v31 = *(v13 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 32))(v53, v31 + v32 * v28, v54);
      }

      else
      {
        (*v45)(v55, v30, v10);
        v33 = *(v13 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 16))(v53, v33 + v32 * v28, v54);
      }

      sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
      result = sub_24B2D5244();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v23 + 8 * v36);
          if (v40 != -1)
          {
            v24 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v51)((*(v15 + 48) + v52 * v24), v55, v10);
      result = (*v50)(*(v15 + 56) + v32 * v24, v53, v54);
      ++*(v15 + 16);
      v20 = v46;
      v13 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v22)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v6 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v13 + 32);
    v6 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v6 = v15;
  return result;
}

uint64_t sub_24B1C761C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v54 = a3(0);
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v42 - v9;
  v10 = sub_24B2D1574();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v49 = a2;
  result = sub_24B2D5DD4();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v11;
    v21 = v19 & *(v13 + 64);
    v22 = (v18 + 63) >> 6;
    v45 = (v20 + 16);
    v46 = v20;
    v43 = v4;
    v44 = v8 + 16;
    v47 = v13;
    v48 = v8;
    v50 = (v8 + 32);
    v51 = (v20 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 48);
      v52 = *(v20 + 72);
      v30 = v29 + v52 * v28;
      if (v49)
      {
        (*v51)(v55, v30, v10);
        v31 = *(v13 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 32))(v53, v31 + v32 * v28, v54);
      }

      else
      {
        (*v45)(v55, v30, v10);
        v33 = *(v13 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 16))(v53, v33 + v32 * v28, v54);
      }

      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      result = sub_24B2D5244();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v23 + 8 * v36);
          if (v40 != -1)
          {
            v24 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v51)((*(v15 + 48) + v52 * v24), v55, v10);
      result = (*v50)(*(v15 + 56) + v32 * v24, v53, v54);
      ++*(v15 + 16);
      v20 = v46;
      v13 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v22)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v6 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v13 + 32);
    v6 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v6 = v15;
  return result;
}

uint64_t sub_24B1C7AC0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE38);
  v42 = a2;
  result = sub_24B2D5DD4();
  v11 = result;
  if (*(v9 + 16))
  {
    v38 = v2;
    v39 = v9;
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
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v19 = v43;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v40 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v42)
      {
        sub_24B1D26D8(v26, v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v27 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_24B1D26D8(v27 + v28 * v24, v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      }

      else
      {
        sub_24B1D2670(v26, v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v29 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_24B1D2670(v29 + v28 * v24, v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      }

      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      result = sub_24B2D6124();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v43;
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
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_24B1D26D8(v19, *(v11 + 48) + v25 * v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      result = sub_24B1D26D8(v44, *(v11 + 56) + v28 * v20, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24B1C7F58(uint64_t a1, char a2)
{
  v3 = v2;
  v45 = sub_24B2D1704();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsContactsProvider.Subscription();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE80);
  result = sub_24B2D5DD4();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = (v5 + 32);
    v41 = v2;
    v42 = (v5 + 8);
    v21 = result + 64;
    v46 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_15:
      v27 = v23 | (v15 << 6);
      v28 = *(v12 + 48);
      v51 = *(v48 + 72);
      v52 = v24;
      v29 = v28 + v51 * v27;
      if (a2)
      {
        sub_24B1D26D8(v29, v11, type metadata accessor for SettingsContactsProvider.Subscription);
        v50 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        sub_24B1D2670(v29, v11, type metadata accessor for SettingsContactsProvider.Subscription);
        v50 = *(*(v12 + 56) + 8 * v27);
      }

      sub_24B2D60E4();
      v30 = v47;
      sub_24B1D2670(v11, v47, type metadata accessor for SettingsContactsProvider.Subscription);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x24C23C8D0](1);
        sub_24B2D5404();
      }

      else
      {
        v31 = v44;
        v32 = v45;
        (*v43)(v44, v30, v45);
        MEMORY[0x24C23C8D0](0);
        sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        (*v42)(v31, v32);
      }

      result = sub_24B2D6124();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      v11 = v46;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_24B1D26D8(v11, *(v14 + 48) + v51 * v22, type metadata accessor for SettingsContactsProvider.Subscription);
      *(*(v14 + 56) + 8 * v22) = v50;
      ++*(v14 + 16);
      v19 = v52;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_37;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_37:
  *v3 = v14;
  return result;
}

uint64_t sub_24B1C8484(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE48);
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
        sub_24B1D26D8(v24, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v25 = v7;
        v26 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_24B1D2670(v24, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v25 = v7;
        v26 = *(*(v8 + 56) + 8 * v22);
      }

      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
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
      result = sub_24B1D26D8(v27, *(v10 + 48) + v40 * v18, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
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

uint64_t sub_24B1C8854(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE68);
  v42 = a2;
  result = sub_24B2D5DD4();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v2;
    v37 = v9;
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
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      v26 = v38;
      if (v42)
      {
        sub_24B1D26D8(v25, v38, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        v27 = *(v41 + 72);
        sub_24B1D26D8(*(v9 + 56) + v27 * v23, v44, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      }

      else
      {
        sub_24B1D2670(v25, v38, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        v27 = *(v41 + 72);
        sub_24B1D2670(*(v9 + 56) + v27 * v23, v44, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      }

      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2D5404();
      result = sub_24B2D6124();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_24B1D26D8(v26, *(v11 + 48) + v43 * v19, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      result = sub_24B1D26D8(v44, *(v11 + 56) + v27 * v19, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v42 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24B1C8D10(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_24B2D5DD4();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_24B2D60E4();
      sub_24B2D5404();
      result = sub_24B2D6124();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_24B1C8FB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for RepositorySubscriber();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_24B181224(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_24B1CBE70();
      goto LABEL_7;
    }

    sub_24B1C1B50(v16, a3 & 1);
    v21 = sub_24B181224(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24B1D2670(a2, v10, type metadata accessor for RepositorySubscriber);
      return sub_24B1CB4D8(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_24B1C9154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v11 = sub_24B2D1704();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_24B181150(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_24B1CC0B0();
      goto LABEL_9;
    }

    sub_24B1C1F20(v20, a6 & 1);
    v23 = sub_24B181150(a5);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v36;
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 32 * v17;
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    v31 = v35;
    *v27 = v34;
    *(v27 + 8) = v31;
    *(v27 + 16) = v25;
    *(v27 + 24) = a4;

    return sub_24B0341E0(v28, v29, v30);
  }

  else
  {
    (*(v12 + 16))(v14, a5, v11);
    return sub_24B1CB58C(v17, v14, v34, v35, v25, a4, v26);
  }
}

uint64_t sub_24B1C934C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24B054238(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24B1C2334(v16, a4 & 1);
      v11 = sub_24B054238(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24B2D6054();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24B1CC360();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_24B1C9528(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = a5(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_24B1C8D10(v20, a4 & 1, a6);
      v15 = a5(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_24B2D6054();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_24B1CFE70(a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_24B1C9740(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D2504();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B181398(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24B1CC520();
      goto LABEL_7;
    }

    sub_24B1C25DC(v17, a3 & 1);
    v28 = sub_24B181398(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24B1CB664(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_24B1C9950(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D1704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B181150(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for DirectionsState();
      return sub_24B1D2608(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for DirectionsState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24B1CCED4();
    goto LABEL_7;
  }

  sub_24B1C33CC(v17, a3 & 1);
  v24 = sub_24B181150(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24B1CB904(v14, v11, a1, v20, MEMORY[0x277D08BF8], type metadata accessor for DirectionsState, type metadata accessor for DirectionsState);
}

uint64_t sub_24B1C9B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24B054238(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24B1CD200();
      goto LABEL_7;
    }

    sub_24B1C386C(v15, a4 & 1);
    v26 = sub_24B054238(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_24B2D24A4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_24B1CB764(v12, a2, a3, a1, v18);
}

uint64_t sub_24B1C9CE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24B054238(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24B1C3BEC(v16, a4 & 1);
      v11 = sub_24B054238(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_24B2D6054();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24B1CD480();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_24B1C9EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24B1815F8(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_24B1C3E90(v20, a6 & 1);
      v15 = sub_24B1815F8(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_24B2D6054();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_24B1CD614();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 32 * v15);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_24B1CA064(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_24B181540(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for ContactsProvider.ContactState(0);
      return sub_24B1D2608(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for ContactsProvider.ContactState);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_24B1CD79C();
    goto LABEL_7;
  }

  sub_24B1C4160(v16, a3 & 1);
  v23 = sub_24B181540(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24B1D2670(a2, v10, type metadata accessor for ContactsProvider.Subscription);
  return sub_24B1CBB78(v13, v10, a1, v19, type metadata accessor for ContactsProvider.Subscription, type metadata accessor for ContactsProvider.Subscription, type metadata accessor for ContactsProvider.ContactState, type metadata accessor for ContactsProvider.ContactState);
}

uint64_t sub_24B1CA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_24B1815F8(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for ETAProvider.ETAState(0);
      return sub_24B1D2608(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for ETAProvider.ETAState);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_24B1CDDB8();
    goto LABEL_7;
  }

  sub_24B1C531C(v19, a6 & 1);
  v26 = sub_24B1815F8(a2, a3, a4, a5);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_15:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24B1CB814(v16, a2, a3, a4, a5, a1, v22);
}

uint64_t sub_24B1CA400(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D1DA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B181698(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24B1CE3A8(MEMORY[0x277D08E20], &qword_27EFCDF38);
      goto LABEL_7;
    }

    sub_24B1C56C8(v17, a3 & 1);
    v22 = sub_24B181698(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24B1CB9FC(v14, v11, a1, v20, MEMORY[0x277D08E20]);
    }

LABEL_15:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24B1CA604(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D1DA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B181698(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ItemsProvider.InfoState(0);
      return sub_24B1D2608(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ItemsProvider.InfoState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24B1CE054();
    goto LABEL_7;
  }

  sub_24B1C5AA4(v17, a3 & 1);
  v24 = sub_24B181698(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24B1CB904(v14, v11, a1, v20, MEMORY[0x277D08E20], type metadata accessor for ItemsProvider.InfoState, type metadata accessor for ItemsProvider.InfoState);
}

uint64_t sub_24B1CA814(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D1574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B18146C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24B1CE3A8(MEMORY[0x277D08B50], &qword_27EFCDED8);
      goto LABEL_7;
    }

    sub_24B1C5F44(v17, a3 & 1);
    v22 = sub_24B18146C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24B1CB9FC(v14, v11, a1, v20, MEMORY[0x277D08B50]);
    }

LABEL_15:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24B1CAA18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D1574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B18146C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for PeopleProvider.PersonState(0);
      return sub_24B1D2608(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for PeopleProvider.PersonState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24B1CE624();
    goto LABEL_7;
  }

  sub_24B1C6320(v17, a3 & 1);
  v24 = sub_24B18146C(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24B1CB904(v14, v11, a1, v20, MEMORY[0x277D08B50], type metadata accessor for PeopleProvider.PersonState, type metadata accessor for PeopleProvider.PersonState);
}

uint64_t sub_24B1CAC28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D1DA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B181698(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
      return sub_24B1D2608(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ItemsLocationsProvider.LocationState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24B1CE950();
    goto LABEL_7;
  }

  sub_24B1C67C0(v17, a3 & 1);
  v24 = sub_24B181698(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24B1CB904(v14, v11, a1, v20, MEMORY[0x277D08E20], type metadata accessor for ItemsLocationsProvider.LocationState, type metadata accessor for ItemsLocationsProvider.LocationState);
}

uint64_t sub_24B1CAE38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24B2D1574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24B18146C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
      return sub_24B1D2608(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for PeopleLocationsProvider.LocationState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24B1CEC7C();
    goto LABEL_7;
  }

  sub_24B1C6C60(v17, a3 & 1);
  v24 = sub_24B18146C(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24B1CB904(v14, v11, a1, v20, MEMORY[0x277D08B50], type metadata accessor for PeopleLocationsProvider.LocationState, type metadata accessor for PeopleLocationsProvider.LocationState);
}

uint64_t sub_24B1CB048(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_24B18176C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
      return sub_24B1D2608(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_24B1CF3B8();
    goto LABEL_7;
  }

  sub_24B1C7AC0(v16, a3 & 1);
  v23 = sub_24B18176C(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24B1D2670(a2, v10, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  return sub_24B1CBB78(v13, v10, a1, v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
}

uint64_t sub_24B1CB244(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_24B18176C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_24B1CF8E0();
      goto LABEL_7;
    }

    sub_24B1C8484(v16, a3 & 1);
    v21 = sub_24B18176C(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24B1D2670(a2, v10, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      return sub_24B1CBC60(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_24B1CB4D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for RepositorySubscriber();
  result = sub_24B1D26D8(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for RepositorySubscriber);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24B1CB58C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_24B2D1704();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_24B1CB664(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24B2D2504();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24B1CB764(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_24B2D24A4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

uint64_t sub_24B1CB814(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = type metadata accessor for ETAProvider.ETAState(0);
  result = sub_24B1D26D8(a6, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for ETAProvider.ETAState);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

uint64_t sub_24B1CB904(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = sub_24B1D26D8(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t sub_24B1CB9FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24B1CBB78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a4[6];
  v16 = a5(0);
  sub_24B1D26D8(a2, v15 + *(*(v16 - 8) + 72) * a1, a6);
  v17 = a4[7];
  v18 = a7(0);
  result = sub_24B1D26D8(a3, v17 + *(*(v18 - 8) + 72) * a1, a8);
  v20 = a4[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v22;
  }

  return result;
}

uint64_t sub_24B1CBC60(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  result = sub_24B1D26D8(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_24B1CBD14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDB8);
  v2 = *v0;
  v3 = sub_24B2D5DC4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_24B1CBE70()
{
  v1 = v0;
  v2 = type metadata accessor for RepositorySubscriber();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDC8);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_24B1D2670(*(v5 + 48) + v21, v4, type metadata accessor for RepositorySubscriber);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_24B1D26D8(v4, *(v7 + 48) + v21, type metadata accessor for RepositorySubscriber);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void sub_24B1CC0B0()
{
  v1 = v0;
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE18);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v42 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v16;
    v38 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v44 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v5 + 48);
        v22 = v40;
        v23 = v41;
        v43 = *(v41 + 72) * v20;
        v24 = v39;
        (*(v41 + 16))(v39, v21 + v43, v40);
        v25 = *(v5 + 56);
        v26 = 32 * v20;
        v27 = v25 + 32 * v20;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = v42;
        LOBYTE(v20) = *(v27 + 24);
        (*(v23 + 32))(*(v42 + 48) + v43, v24, v22);
        v32 = *(v31 + 56) + v26;
        v5 = v38;
        *v32 = v28;
        *(v32 + 8) = v29;
        *(v32 + 16) = v30;
        *(v32 + 24) = v20;
        sub_24B034224(v28, v29, v30);
        v16 = v37;
        v15 = v44;
      }

      while (v44);
    }

    v18 = v11;
    v7 = v42;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
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
}

void *sub_24B1CC360()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0B8);
  v2 = *v0;
  v3 = sub_24B2D5DC4();
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

char *sub_24B1CC520()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_24B2D2504();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF90);
  v4 = *v0;
  v5 = sub_24B2D5DC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24B1CC87C()
{
  v1 = v0;
  v2 = type metadata accessor for SessionFollowingState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D1704();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDE8);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24B1D2670(*(v5 + 56) + v26, v35, type metadata accessor for SessionFollowingState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24B1D26D8(v25, *(v27 + 56) + v26, type metadata accessor for SessionFollowingState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_24B1CCBA8()
{
  v1 = v0;
  v2 = type metadata accessor for SessionFollowerState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D1704();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDF8);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24B1D2670(*(v5 + 56) + v26, v35, type metadata accessor for SessionFollowerState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24B1D26D8(v25, *(v27 + 56) + v26, type metadata accessor for SessionFollowerState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_24B1CCED4()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionsState();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D1704();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE08);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24B1D2670(*(v5 + 56) + v26, v35, type metadata accessor for DirectionsState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24B1D26D8(v25, *(v27 + 56) + v26, type metadata accessor for DirectionsState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_24B1CD200()
{
  v1 = v0;
  v35 = sub_24B2D24A4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDD8);
  v3 = *v0;
  v4 = sub_24B2D5DC4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_24B1CD480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDA8);
  v2 = *v0;
  v3 = sub_24B2D5DC4();
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

void *sub_24B1CD614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF58);
  v2 = *v0;
  v3 = sub_24B2D5DC4();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_24B1CD79C()
{
  v1 = v0;
  v2 = type metadata accessor for ContactsProvider.ContactState(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContactsProvider.Subscription(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF78);
  v8 = *v0;
  v9 = sub_24B2D5DC4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_24B1D2670(*(v8 + 48) + v24, v7, type metadata accessor for ContactsProvider.Subscription);
        v25 = *(v29 + 72) * v23;
        sub_24B1D2670(*(v8 + 56) + v25, v4, type metadata accessor for ContactsProvider.ContactState);
        sub_24B1D26D8(v7, *(v10 + 48) + v24, type metadata accessor for ContactsProvider.Subscription);
        result = sub_24B1D26D8(v4, *(v10 + 56) + v25, type metadata accessor for ContactsProvider.ContactState);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_24B1CDA88()
{
  v1 = v0;
  v2 = sub_24B2D1494();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContactsProvider.Subscription(0);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBF0);
  v7 = *v0;
  v8 = sub_24B2D5DC4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v7;
    v19 = v37;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v38 + 72) * v23;
        sub_24B1D2670(*(v7 + 48) + v24, v19, type metadata accessor for ContactsProvider.Subscription);
        v26 = v40;
        v25 = v41;
        v27 = *(v41 + 72) * v23;
        v28 = *(v7 + 56) + v27;
        v29 = v39;
        (*(v41 + 16))(v39, v28, v40);
        v30 = v42;
        sub_24B1D26D8(v19, *(v42 + 48) + v24, type metadata accessor for ContactsProvider.Subscription);
        v31 = v29;
        v7 = v36;
        result = (*(v25 + 32))(*(v30 + 56) + v27, v31, v26);
        v17 = v43;
      }

      while (v43);
    }

    v21 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v22 = *(v11 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_24B1CDDB8()
{
  v1 = v0;
  v2 = type metadata accessor for ETAProvider.ETAState(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF68);
  v4 = *v0;
  v5 = sub_24B2D5DC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 32 * v19;
        v21 = (*(v4 + 48) + 32 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_24B1D2670(*(v4 + 56) + v27, v32, type metadata accessor for ETAProvider.ETAState);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v24;
        v29[3] = v25;
        sub_24B1D26D8(v26, *(v28 + 56) + v27, type metadata accessor for ETAProvider.ETAState);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24B1CE054()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsProvider.InfoState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D1DA4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF48);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24B1D2670(*(v5 + 56) + v26, v35, type metadata accessor for ItemsProvider.InfoState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24B1D26D8(v25, *(v27 + 56) + v26, type metadata accessor for ItemsProvider.InfoState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

void *sub_24B1CE3A8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_24B2D5DC4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
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

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

char *sub_24B1CE624()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleProvider.PersonState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D1574();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEE8);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24B1D2670(*(v5 + 56) + v26, v35, type metadata accessor for PeopleProvider.PersonState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24B1D26D8(v25, *(v27 + 56) + v26, type metadata accessor for PeopleProvider.PersonState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_24B1CE950()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D1DA4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF10);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24B1D2670(*(v5 + 56) + v26, v35, type metadata accessor for ItemsLocationsProvider.LocationState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24B1D26D8(v25, *(v27 + 56) + v26, type metadata accessor for ItemsLocationsProvider.LocationState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_24B1CEC7C()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D1574();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEB0);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24B1D2670(*(v5 + 56) + v26, v35, type metadata accessor for PeopleLocationsProvider.LocationState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24B1D26D8(v25, *(v27 + 56) + v26, type metadata accessor for PeopleLocationsProvider.LocationState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_24B1CF05C(uint64_t (*a1)(void), uint64_t (*a2)(void, __n128), uint64_t *a3)
{
  v6 = v3;
  v47 = a1(0);
  v50 = *(v47 - 8);
  v7 = MEMORY[0x28223BE20](v47);
  v46 = &v36 - v8;
  v45 = a2(0, v7);
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v10 = *v3;
  v11 = sub_24B2D5DC4();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v6;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v12;
  }

  return result;
}

void *sub_24B1CF3B8()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE38);
  v8 = *v0;
  v9 = sub_24B2D5DC4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_24B1D2670(*(v8 + 48) + v24, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v25 = *(v29 + 72) * v23;
        sub_24B1D2670(*(v8 + 56) + v25, v4, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
        sub_24B1D26D8(v7, *(v10 + 48) + v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        result = sub_24B1D26D8(v4, *(v10 + 56) + v25, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

id sub_24B1CF6A4()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsContactsProvider.Subscription();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE80);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_24B1D2670(*(v5 + 48) + v21, v4, type metadata accessor for SettingsContactsProvider.Subscription);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_24B1D26D8(v4, *(v7 + 48) + v21, type metadata accessor for SettingsContactsProvider.Subscription);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_24B1CF8E0()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE48);
  v5 = *v0;
  v6 = sub_24B2D5DC4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_24B1D2670(*(v5 + 48) + v21, v4, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_24B1D26D8(v4, *(v7 + 48) + v21, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_24B1CFB5C()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE68);
  v8 = *v0;
  v9 = sub_24B2D5DC4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_24B1D2670(*(v8 + 48) + v24, v7, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        v25 = *(v29 + 72) * v23;
        sub_24B1D2670(*(v8 + 56) + v25, v4, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        sub_24B1D26D8(v7, *(v10 + 48) + v24, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        result = sub_24B1D26D8(v4, *(v10 + 56) + v25, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_24B1CFE70(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_24B2D5DC4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_24B1CFFD0(uint64_t a1)
{
  v2 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v6, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B1ABC80(v8, v6);
      sub_24B1D2740(v8, _s14descr285E46659O16SubscriptionDataOMa);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D0160(uint64_t a1)
{
  v2 = sub_24B2D15F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70]);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
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
      sub_24B1ACBC4(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24B1D032C(uint64_t a1)
{
  v2 = type metadata accessor for ContactsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v5, type metadata accessor for ContactsProvider.Subscription);
      sub_24B1ACEA4(v8, v5);
      sub_24B1D2740(v8, type metadata accessor for ContactsProvider.Subscription);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D04BC(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v5, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B1AD0E4(v8, v5);
      sub_24B1D2740(v8, type metadata accessor for PeopleLocationsProvider.Subscription);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D064C(uint64_t a1)
{
  v2 = type metadata accessor for PeopleProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v5, type metadata accessor for PeopleProvider.Subscription);
      sub_24B1AD568(v8, v5);
      sub_24B1D2740(v8, type metadata accessor for PeopleProvider.Subscription);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D07DC(uint64_t a1)
{
  v2 = type metadata accessor for ListPersonInfo.Sort();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCCE10, type metadata accessor for ListPersonInfo.Sort);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v6, type metadata accessor for ListPersonInfo.Sort);
      sub_24B1ADD20(v8, v6);
      sub_24B1D2740(v8, type metadata accessor for ListPersonInfo.Sort);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D096C(uint64_t a1)
{
  v2 = sub_24B2D1714();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCE088, MEMORY[0x277D08C20]);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
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
      sub_24B1AE3F0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24B1D0B08(uint64_t a1)
{
  v2 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v5, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B1AE6D0(v8, v5);
      sub_24B1D2740(v8, type metadata accessor for ItemsLocationsProvider.Subscription);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D0C98(uint64_t a1)
{
  v2 = type metadata accessor for ItemsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v5, type metadata accessor for ItemsProvider.Subscription);
      sub_24B1AEA54(v8, v5);
      sub_24B1D2740(v8, type metadata accessor for ItemsProvider.Subscription);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D0E28(uint64_t a1)
{
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20]);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_24B1AF20C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24B1D0FC4(uint64_t a1)
{
  v2 = sub_24B2D1574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_24B1AF4EC(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24B1D1160(uint64_t a1)
{
  v2 = sub_24B2D1A24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCE0F8, MEMORY[0x277D08D28]);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_24B1AF7CC(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24B1D12FC(uint64_t a1)
{
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
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
      sub_24B1AC7EC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24B1D1498(uint64_t a1)
{
  v2 = type metadata accessor for SettingsContactsProvider.Subscription();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v5, type metadata accessor for SettingsContactsProvider.Subscription);
      sub_24B1AFAAC(v8, v5);
      sub_24B1D2740(v8, type metadata accessor for SettingsContactsProvider.Subscription);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D1628(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24B1D2434();
  result = MEMORY[0x24C23BFF0](v2, &type metadata for SettingsFamilyRelationshipsProvider.Subscription, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24B1B0234(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24B1D169C(uint64_t a1)
{
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24B1D2670(v12, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B1B034C(v8, v5);
      sub_24B1D2740(v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24B1D188C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  v7 = a2();
  for (i = MEMORY[0x24C23BFF0](v6, a3, v7); v6; --v6)
  {
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    v9 = sub_24B2D6124() & ~(-1 << *(i + 32));
    if (((*(i + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24B1BA8E4(v9, isUniquelyReferenced_nonNull_native, a4);
    }
  }

  return i;
}

uint64_t sub_24B1D1980(uint64_t a1)
{
  v2 = sub_24B2D1974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24B1D27A0(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
  result = MEMORY[0x24C23BFF0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_24B1B09AC(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t type metadata accessor for ItemsProvider()
{
  result = qword_27EFCE068;
  if (!qword_27EFCE068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1D1B68(uint64_t a1)
{
  v4 = *(sub_24B2D1DA4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1A944C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1D1C74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B1A6EFC(a1, v4, v5, v7, v6);
}

uint64_t sub_24B1D1D34(uint64_t a1)
{
  *(a1 + 8) = sub_24B1D27A0(&qword_27EFCE040, type metadata accessor for ItemsProvider);
  result = sub_24B1D27A0(&qword_27EFCE048, type metadata accessor for ItemsProvider);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B1D1E04()
{
  result = qword_27EFCE050;
  if (!qword_27EFCE050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE058);
    sub_24B1D27A0(&qword_27EFCE060, type metadata accessor for ItemsProvider.InfoState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE050);
  }

  return result;
}

void sub_24B1D1EC0()
{
  sub_24B1D22F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ItemsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 304) + **(*v2 + 304));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ItemsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 312) + **(*v2 + 312));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return v8(a1, a2);
}

void sub_24B1D22F8()
{
  if (!qword_27EFCE078)
  {
    type metadata accessor for ItemsProvider.Subscription(255);
    sub_24B1D27A0(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
    v0 = type metadata accessor for SubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCE078);
    }
  }
}

unint64_t sub_24B1D238C()
{
  result = qword_27EFCE0D8;
  if (!qword_27EFCE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE0D8);
  }

  return result;
}

unint64_t sub_24B1D23E0()
{
  result = qword_27EFCE0E0;
  if (!qword_27EFCE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE0E0);
  }

  return result;
}

unint64_t sub_24B1D2434()
{
  result = qword_27EFCE0E8;
  if (!qword_27EFCE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE0E8);
  }

  return result;
}

uint64_t sub_24B1D2488(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B1A5D94(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_24B1D2548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B1A6EFC(a1, v4, v5, v7, v6);
}

uint64_t sub_24B1D2608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1D2670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1D26D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1D2740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B1D27A0(unint64_t *a1, void (*a2)(uint64_t))
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

void *ItemsProvider.Dependencies.init<A>(fetchItems:observeItemsChanges:loadingStateResetDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  result = swift_allocObject();
  result[2] = a7;
  result[3] = a8;
  result[4] = a3;
  result[5] = a4;
  a9[2] = &unk_24B2EFE90;
  a9[3] = result;
  a9[4] = a5;
  a9[5] = a6;
  return result;
}

uint64_t sub_24B1D287C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B183450(a1, v7, v6, v4, v5);
}

uint64_t ItemsProvider.InfoState.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ItemsProvider.InfoState(0);
  sub_24B1D3BB4(v1 + *(v6 + 20), v5, type metadata accessor for ItemsProvider.InfoState.Result);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_24B2D1F24();
  v9 = *(v8 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v8 - 8) + 32))(a1, v5, v8);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v9 + 56))(a1, v10, 1, v8);
}

BOOL ItemsProvider.InfoState.Result.isNotLoaded.getter()
{
  v1 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1D3BB4(v0, v3, type metadata accessor for ItemsProvider.InfoState.Result);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24B1D4270(v3, type metadata accessor for ItemsProvider.InfoState.Result);
  }

  return EnumCaseMultiPayload != 1;
}

uint64_t ItemsProvider.Subscription.hash(into:)()
{
  v1 = sub_24B2D1DA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ItemsProvider.Subscription(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1D3BB4(v0, v7, type metadata accessor for ItemsProvider.Subscription);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x24C23C8D0](0);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](1);
  sub_24B1D4004(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t ItemsProvider.Subscription.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ItemsProvider.Subscription(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B1D3BB4(v1, v8, type metadata accessor for ItemsProvider.Subscription);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](1);
    sub_24B1D4004(&qword_27EFCC630, MEMORY[0x277D08E20]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B1D2F2C()
{
  v1 = sub_24B2D1DA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1D3BB4(v0, v7, type metadata accessor for ItemsProvider.Subscription);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x24C23C8D0](0);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](1);
  sub_24B1D4004(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24B1D30F8()
{
  v1 = v0;
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B1D3BB4(v1, v8, type metadata accessor for ItemsProvider.Subscription);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](1);
    sub_24B1D4004(&qword_27EFCC630, MEMORY[0x277D08E20]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t ItemsProvider.InfoState.Result.item.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1D3BB4(v2, v6, type metadata accessor for ItemsProvider.InfoState.Result);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_24B2D1F24();
  v9 = *(v8 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v9 + 56))(a1, v10, 1, v8);
}

uint64_t ItemsProvider.InfoState.Request.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D24A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ItemsProvider.InfoState.Result.isLoading.getter()
{
  v1 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1D3BB4(v0, v3, type metadata accessor for ItemsProvider.InfoState.Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  sub_24B1D4270(v3, type metadata accessor for ItemsProvider.InfoState.Result);
  return 0;
}

uint64_t static ItemsProvider.InfoState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ItemsProvider.InfoState(0) + 20);

  return _s12FindMyUICore13ItemsProviderC9InfoStateV6ResultO2eeoiySbAG_AGtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_24B1D3770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s12FindMyUICore13ItemsProviderC9InfoStateV6ResultO2eeoiySbAG_AGtFZ_0(a1 + v6, a2 + v6);
}

uint64_t _s12FindMyUICore13ItemsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1DA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ItemsProvider.Subscription(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v15 = *(v14 + 56);
  sub_24B1D3BB4(a1, v21 - v12, type metadata accessor for ItemsProvider.Subscription);
  sub_24B1D3BB4(a2, &v13[v15], type metadata accessor for ItemsProvider.Subscription);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_24B1D3BB4(v13, v10, type metadata accessor for ItemsProvider.Subscription);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_24AFF8258(v13, &qword_27EFCC6E0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_24B1D4004(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
  sub_24B2D54E4();
  sub_24B2D54E4();
  if (v21[2] == v21[0] && v21[3] == v21[1])
  {
    v18 = *(v5 + 8);
    v18(v7, v4);

    v18(v10, v4);
  }

  else
  {
    v19 = sub_24B2D6004();
    v20 = *(v5 + 8);
    v20(v7, v4);

    v20(v10, v4);
    if ((v19 & 1) == 0)
    {
      sub_24B1D4270(v13, type metadata accessor for ItemsProvider.Subscription);
      return 0;
    }
  }

LABEL_12:
  sub_24B1D4270(v13, type metadata accessor for ItemsProvider.Subscription);
  return 1;
}

uint64_t sub_24B1D3BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1D3C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s12FindMyUICore13ItemsProviderC9InfoStateV6ResultO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = sub_24B2D1F24();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v17 = *(v16 + 56);
  sub_24B1D3BB4(a1, &v23 - v14, type metadata accessor for ItemsProvider.InfoState.Result);
  sub_24B1D3BB4(a2, &v15[v17], type metadata accessor for ItemsProvider.InfoState.Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B1D3BB4(v15, v12, type metadata accessor for ItemsProvider.InfoState.Result);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = *v12 ^ v15[v17];
      sub_24B1D4270(v15, type metadata accessor for ItemsProvider.InfoState.Result);
      v19 = v21 ^ 1;
      return v19 & 1;
    }

LABEL_7:
    sub_24AFF8258(v15, &qword_27EFCE1A8);
    v19 = 0;
    return v19 & 1;
  }

  sub_24B1D3BB4(v15, v9, type metadata accessor for ItemsProvider.InfoState.Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v9, v24);
    goto LABEL_7;
  }

  v18 = v24;
  (*(v4 + 32))(v6, &v15[v17], v24);
  v19 = MEMORY[0x24C2385A0](v9, v6);
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v9, v18);
  sub_24B1D4270(v15, type metadata accessor for ItemsProvider.InfoState.Result);
  return v19 & 1;
}

uint64_t sub_24B1D4004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B1D4074()
{
  v0 = sub_24B2D1DA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24B1D40F4()
{
  result = type metadata accessor for ItemsProvider.InfoState.Request(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ItemsProvider.InfoState.Result(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B1D41A0()
{
  result = sub_24B1D4214();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D1F24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B1D4214()
{
  result = qword_27EFCE1A0;
  if (!qword_27EFCE1A0)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EFCE1A0);
  }

  return result;
}

uint64_t sub_24B1D4270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B1D42D0(uint64_t a1)
{
  v3 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D1DA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x277D84F90];
  sub_24B007A7C(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = sub_24B2D5B54();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_24B1E62E4(*(a1 + 48) + *(v39 + 72) * v14, v38, type metadata accessor for ItemsLocationsProvider.Subscription);
    (*v36)(v8, v19, v5);
    sub_24B1E63B4(v19, type metadata accessor for ItemsLocationsProvider.Subscription);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_24B007A7C(v21 > 1, v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_24B040A60(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_24B040A60(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
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

void sub_24B1D4698(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = v40 - v11;
  sub_24B1E0180(v1[3], a1);
  if ((v12 & 1) == 0)
  {
    v13 = v1[4];
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = *v1;
    v42 = v1[1];
    v43 = v18;
    v19 = (v15 + 63) >> 6;
    v40[1] = v8 + 32;
    v40[2] = v8 + 16;
    v40[0] = v9 + 7;
    v47 = v13;

    v20 = 0;
    v44 = v14;
    v45 = v8;
    v41 = v19;
    v46 = v5;
    while (v17)
    {
LABEL_11:
      v22 = v48;
      v23 = v50;
      (*(v8 + 16))(v48, *(v47 + 56) + *(v8 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v50);
      v24 = sub_24B2D56D4();
      v51 = *(v24 - 8);
      (*(v51 + 56))(v52, 1, 1, v24);
      v25 = *(v8 + 32);
      v26 = v49;
      v25(v49, v22, v23);
      v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = (v40[0] + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = v29 + v27;
      v31 = v51;
      v25(v30, v26, v23);
      v32 = (v29 + v28);
      v33 = v42;
      *v32 = v43;
      v32[1] = v33;
      v34 = v46;
      sub_24B008890(v52, v46, &qword_27EFC8580);
      LODWORD(v25) = (*(v31 + 48))(v34, 1, v24);

      if (v25 == 1)
      {
        sub_24AFF8258(v34, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v31 + 8))(v34, v24);
      }

      v35 = *(v29 + 16);
      swift_unknownObjectRetain();

      v14 = v44;
      if (v35)
      {
        swift_getObjectType();
        v36 = sub_24B2D5604();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_24B2F0438;
      *(v39 + 24) = v29;
      if (v38 | v36)
      {
        v53 = 0;
        v54 = 0;
        v55 = v36;
        v56 = v38;
      }

      v8 = v45;
      v17 &= v17 - 1;
      swift_task_create();
      sub_24AFF8258(v52, &qword_27EFC8580);

      v19 = v41;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_24B1D4B54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = v40 - v11;
  sub_24B1E0B48(v1[3], a1);
  if ((v12 & 1) == 0)
  {
    v13 = v1[4];
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = *v1;
    v42 = v1[1];
    v43 = v18;
    v19 = (v15 + 63) >> 6;
    v40[1] = v8 + 32;
    v40[2] = v8 + 16;
    v40[0] = v9 + 7;
    v47 = v13;

    v20 = 0;
    v44 = v14;
    v45 = v8;
    v41 = v19;
    v46 = v5;
    while (v17)
    {
LABEL_11:
      v22 = v48;
      v23 = v50;
      (*(v8 + 16))(v48, *(v47 + 56) + *(v8 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v50);
      v24 = sub_24B2D56D4();
      v51 = *(v24 - 8);
      (*(v51 + 56))(v52, 1, 1, v24);
      v25 = *(v8 + 32);
      v26 = v49;
      v25(v49, v22, v23);
      v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = (v40[0] + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = v29 + v27;
      v31 = v51;
      v25(v30, v26, v23);
      v32 = (v29 + v28);
      v33 = v42;
      *v32 = v43;
      v32[1] = v33;
      v34 = v46;
      sub_24B008890(v52, v46, &qword_27EFC8580);
      LODWORD(v25) = (*(v31 + 48))(v34, 1, v24);

      if (v25 == 1)
      {
        sub_24AFF8258(v34, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v31 + 8))(v34, v24);
      }

      v35 = *(v29 + 16);
      swift_unknownObjectRetain();

      v14 = v44;
      if (v35)
      {
        swift_getObjectType();
        v36 = sub_24B2D5604();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_24B2F0328;
      *(v39 + 24) = v29;
      if (v38 | v36)
      {
        v53 = 0;
        v54 = 0;
        v55 = v36;
        v56 = v38;
      }

      v8 = v45;
      v17 &= v17 - 1;
      swift_task_create();
      sub_24AFF8258(v52, &qword_27EFC8580);

      v19 = v41;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_24B1D5010(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = v40 - v11;
  sub_24B1E10B8(v1[3], a1);
  if ((v12 & 1) == 0)
  {
    v13 = v1[4];
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = *v1;
    v42 = v1[1];
    v43 = v18;
    v19 = (v15 + 63) >> 6;
    v40[1] = v8 + 32;
    v40[2] = v8 + 16;
    v40[0] = v9 + 7;
    v47 = v13;

    v20 = 0;
    v44 = v14;
    v45 = v8;
    v41 = v19;
    v46 = v5;
    while (v17)
    {
LABEL_11:
      v22 = v48;
      v23 = v50;
      (*(v8 + 16))(v48, *(v47 + 56) + *(v8 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v50);
      v24 = sub_24B2D56D4();
      v51 = *(v24 - 8);
      (*(v51 + 56))(v52, 1, 1, v24);
      v25 = *(v8 + 32);
      v26 = v49;
      v25(v49, v22, v23);
      v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = (v40[0] + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = v29 + v27;
      v31 = v51;
      v25(v30, v26, v23);
      v32 = (v29 + v28);
      v33 = v42;
      *v32 = v43;
      v32[1] = v33;
      v34 = v46;
      sub_24B008890(v52, v46, &qword_27EFC8580);
      LODWORD(v25) = (*(v31 + 48))(v34, 1, v24);

      if (v25 == 1)
      {
        sub_24AFF8258(v34, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v31 + 8))(v34, v24);
      }

      v35 = *(v29 + 16);
      swift_unknownObjectRetain();

      v14 = v44;
      if (v35)
      {
        swift_getObjectType();
        v36 = sub_24B2D5604();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_24B2F0300;
      *(v39 + 24) = v29;
      if (v38 | v36)
      {
        v53 = 0;
        v54 = 0;
        v55 = v36;
        v56 = v38;
      }

      v8 = v45;
      v17 &= v17 - 1;
      swift_task_create();
      sub_24AFF8258(v52, &qword_27EFC8580);

      v19 = v41;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_24B1D54CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = v40 - v11;
  sub_24B1E1AD8(v1[3], a1);
  if ((v12 & 1) == 0)
  {
    v13 = v1[4];
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = *v1;
    v42 = v1[1];
    v43 = v18;
    v19 = (v15 + 63) >> 6;
    v40[1] = v8 + 32;
    v40[2] = v8 + 16;
    v40[0] = v9 + 7;
    v47 = v13;

    v20 = 0;
    v44 = v14;
    v45 = v8;
    v41 = v19;
    v46 = v5;
    while (v17)
    {
LABEL_11:
      v22 = v48;
      v23 = v50;
      (*(v8 + 16))(v48, *(v47 + 56) + *(v8 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v50);
      v24 = sub_24B2D56D4();
      v51 = *(v24 - 8);
      (*(v51 + 56))(v52, 1, 1, v24);
      v25 = *(v8 + 32);
      v26 = v49;
      v25(v49, v22, v23);
      v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = (v40[0] + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = v29 + v27;
      v31 = v51;
      v25(v30, v26, v23);
      v32 = (v29 + v28);
      v33 = v42;
      *v32 = v43;
      v32[1] = v33;
      v34 = v46;
      sub_24B008890(v52, v46, &qword_27EFC8580);
      LODWORD(v25) = (*(v31 + 48))(v34, 1, v24);

      if (v25 == 1)
      {
        sub_24AFF8258(v34, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v31 + 8))(v34, v24);
      }

      v35 = *(v29 + 16);
      swift_unknownObjectRetain();

      v14 = v44;
      if (v35)
      {
        swift_getObjectType();
        v36 = sub_24B2D5604();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_24B2F02D0;
      *(v39 + 24) = v29;
      if (v38 | v36)
      {
        v53 = 0;
        v54 = 0;
        v55 = v36;
        v56 = v38;
      }

      v8 = v45;
      v17 &= v17 - 1;
      swift_task_create();
      sub_24AFF8258(v52, &qword_27EFC8580);

      v19 = v41;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_24B1D5988(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = v40 - v11;
  sub_24B1E24F8(v1[3], a1);
  if ((v12 & 1) == 0)
  {
    v13 = v1[4];
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = *v1;
    v42 = v1[1];
    v43 = v18;
    v19 = (v15 + 63) >> 6;
    v40[1] = v8 + 32;
    v40[2] = v8 + 16;
    v40[0] = v9 + 7;
    v47 = v13;

    v20 = 0;
    v44 = v14;
    v45 = v8;
    v41 = v19;
    v46 = v5;
    while (v17)
    {
LABEL_11:
      v22 = v48;
      v23 = v50;
      (*(v8 + 16))(v48, *(v47 + 56) + *(v8 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v50);
      v24 = sub_24B2D56D4();
      v51 = *(v24 - 8);
      (*(v51 + 56))(v52, 1, 1, v24);
      v25 = *(v8 + 32);
      v26 = v49;
      v25(v49, v22, v23);
      v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = (v40[0] + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = v29 + v27;
      v31 = v51;
      v25(v30, v26, v23);
      v32 = (v29 + v28);
      v33 = v42;
      *v32 = v43;
      v32[1] = v33;
      v34 = v46;
      sub_24B008890(v52, v46, &qword_27EFC8580);
      LODWORD(v25) = (*(v31 + 48))(v34, 1, v24);

      if (v25 == 1)
      {
        sub_24AFF8258(v34, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v31 + 8))(v34, v24);
      }

      v35 = *(v29 + 16);
      swift_unknownObjectRetain();

      v14 = v44;
      if (v35)
      {
        swift_getObjectType();
        v36 = sub_24B2D5604();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_24B2F03D0;
      *(v39 + 24) = v29;
      if (v38 | v36)
      {
        v53 = 0;
        v54 = 0;
        v55 = v36;
        v56 = v38;
      }

      v8 = v45;
      v17 &= v17 - 1;
      swift_task_create();
      sub_24AFF8258(v52, &qword_27EFC8580);

      v19 = v41;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_24B1D5E44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = v40 - v11;
  sub_24B1E2F38(v1[3], a1);
  if ((v12 & 1) == 0)
  {
    v13 = v1[4];
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = *v1;
    v42 = v1[1];
    v43 = v18;
    v19 = (v15 + 63) >> 6;
    v40[1] = v8 + 32;
    v40[2] = v8 + 16;
    v40[0] = v9 + 7;
    v47 = v13;

    v20 = 0;
    v44 = v14;
    v45 = v8;
    v41 = v19;
    v46 = v5;
    while (v17)
    {
LABEL_11:
      v22 = v48;
      v23 = v50;
      (*(v8 + 16))(v48, *(v47 + 56) + *(v8 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v50);
      v24 = sub_24B2D56D4();
      v51 = *(v24 - 8);
      (*(v51 + 56))(v52, 1, 1, v24);
      v25 = *(v8 + 32);
      v26 = v49;
      v25(v49, v22, v23);
      v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = (v40[0] + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = v29 + v27;
      v31 = v51;
      v25(v30, v26, v23);
      v32 = (v29 + v28);
      v33 = v42;
      *v32 = v43;
      v32[1] = v33;
      v34 = v46;
      sub_24B008890(v52, v46, &qword_27EFC8580);
      LODWORD(v25) = (*(v31 + 48))(v34, 1, v24);

      if (v25 == 1)
      {
        sub_24AFF8258(v34, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v31 + 8))(v34, v24);
      }

      v35 = *(v29 + 16);
      swift_unknownObjectRetain();

      v14 = v44;
      if (v35)
      {
        swift_getObjectType();
        v36 = sub_24B2D5604();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_24B2F0398;
      *(v39 + 24) = v29;
      if (v38 | v36)
      {
        v53 = 0;
        v54 = 0;
        v55 = v36;
        v56 = v38;
      }

      v8 = v45;
      v17 &= v17 - 1;
      swift_task_create();
      sub_24AFF8258(v52, &qword_27EFC8580);

      v19 = v41;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24B1D6300(uint64_t a1)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = v56 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v7;
  MEMORY[0x28223BE20](v8);
  v62 = v56 - v9;
  v10 = sub_24B2D1C44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE218);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v56 - v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  sub_24B008890(v1 + *(v60 + 48), v22, &qword_27EFCE590);
  v23 = *(v14 + 56);
  sub_24B008890(v22, v16, &qword_27EFCE590);
  sub_24B008890(v67, &v16[v23], &qword_27EFCE590);
  v24 = *(v11 + 48);
  if (v24(v16, 1, v10) == 1)
  {
    sub_24AFF8258(v22, &qword_27EFCE590);
    if (v24(&v16[v23], 1, v10) == 1)
    {
      return sub_24AFF8258(v16, &qword_27EFCE590);
    }
  }

  else
  {
    sub_24B008890(v16, v19, &qword_27EFCE590);
    if (v24(&v16[v23], 1, v10) != 1)
    {
      v54 = v59;
      (*(v11 + 32))(v59, &v16[v23], v10);
      sub_24B1E6414(&qword_27EFCE220, MEMORY[0x277D08DB8]);
      LODWORD(v67) = sub_24B2D52A4();
      v55 = *(v11 + 8);
      v55(v54, v10);
      sub_24AFF8258(v22, &qword_27EFCE590);
      v55(v19, v10);
      result = sub_24AFF8258(v16, &qword_27EFCE590);
      if (v67)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_24AFF8258(v22, &qword_27EFCE590);
    (*(v11 + 8))(v19, v10);
  }

  sub_24AFF8258(v16, &qword_27EFCE218);
LABEL_7:
  v26 = *(v1 + *(v60 + 52));
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = *v1;
  v58 = v1[1];
  v59 = v31;
  v32 = (v28 + 63) >> 6;
  v56[1] = v66 + 32;
  v56[2] = v66 + 16;
  v56[0] = v65 + 7;
  v65 = v26;

  v33 = 0;
  v60 = v27;
  v61 = v4;
  v57 = v32;
  while (v30)
  {
LABEL_16:
    v35 = v66;
    v36 = v62;
    v37 = v64;
    (*(v66 + 16))(v62, *(v65 + 56) + *(v66 + 72) * (__clz(__rbit64(v30)) | (v33 << 6)), v64);
    v38 = sub_24B2D56D4();
    v67 = *(v38 - 8);
    (*(v67 + 56))(v68, 1, 1, v38);
    v39 = *(v35 + 32);
    v40 = v63;
    v39(v63, v36, v37);
    v41 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v42 = (v56[0] + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v44 = v43 + v41;
    v45 = v67;
    v39(v44, v40, v37);
    v46 = (v43 + v42);
    v47 = v58;
    *v46 = v59;
    v46[1] = v47;
    v48 = v61;
    sub_24B008890(v68, v61, &qword_27EFC8580);
    LODWORD(v39) = (*(v45 + 48))(v48, 1, v38);

    if (v39 == 1)
    {
      sub_24AFF8258(v48, &qword_27EFC8580);
    }

    else
    {
      sub_24B2D56C4();
      (*(v45 + 8))(v48, v38);
    }

    v49 = *(v43 + 16);
    swift_unknownObjectRetain();

    if (v49)
    {
      swift_getObjectType();
      v50 = sub_24B2D5604();
      v52 = v51;
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v53 = swift_allocObject();
    *(v53 + 16) = &unk_24B2EF780;
    *(v53 + 24) = v43;
    if (v52 | v50)
    {
      v69 = 0;
      v70 = 0;
      v71 = v50;
      v72 = v52;
    }

    v27 = v60;
    v30 &= v30 - 1;
    swift_task_create();
    sub_24AFF8258(v68, &qword_27EFC8580);

    v32 = v57;
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {
    }

    v30 = *(v27 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_24B1D6B3C(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24B2D1DA4();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_24B1DE498(v4, v9);
  return sub_24B1E6464;
}

uint64_t (*sub_24B1D6C54(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24B2D1574();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_24B1DE5D4(v4, v9);
  return sub_24B1D6D6C;
}

uint64_t (*sub_24B1D6D70(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24B2D1DA4();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_24B1DE714(v4, v9);
  return sub_24B1E6464;
}

uint64_t (*sub_24B1D6E88(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24B2D1574();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_24B1DE850(v4, v9);
  return sub_24B1E6464;
}

void sub_24B1D6FA0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_24B1D7018(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24B008890(a1, &v10 - v5, &qword_27EFCE1B0);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1D71B8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24B1D70F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v1 + v3, a1, &qword_27EFCE1B0);
}

uint64_t sub_24B1D7158(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1D71B8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24B1D71B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1D7288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_24B1D7308(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

uint64_t sub_24B1D73C0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_24B1D743C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t ItemsLocationsProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ItemsLocationsProvider.init(dependencies:)(a1);
  return v2;
}

_OWORD *ItemsLocationsProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  v9 = a1[5];
  v28 = a1[4];
  v29 = v9;
  v10 = a1[1];
  v24 = *a1;
  v25 = v10;
  swift_defaultActor_initialize();
  v11 = v1 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1B0);
  v13 = v12[9];
  v14 = MEMORY[0x277D84F90];
  *&v11[v13] = sub_24B194DB0(MEMORY[0x277D84F90]);
  *&v11[v12[10]] = MEMORY[0x277D84FA0];
  v11[v12[11]] = 0;
  sub_24B2D3174();
  v15 = v1 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  *(v15 + 3) = sub_24B194B94(v14);
  v15[16] = 0;
  *(v15 + 4) = sub_24B1933E8(v14);
  *v15 = 0xD000000000000016;
  *(v15 + 1) = 0x800000024B2F0100;
  v16 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_taskQueue;
  sub_24B2D12D4();
  v17 = sub_24B2D1294();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_24B2D24F4();
  *(v1 + v16) = sub_24B2D12B4();
  *(v1 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_valuePublisher) = 0;
  v18 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_loadingStateFallbackTaskBySubscription;
  *(v2 + v18) = sub_24B194764(v14);
  v19 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_loadingStateResetTaskBySubscription;
  *(v2 + v19) = sub_24B194764(v14);
  v20 = v25;
  v2[7] = v24;
  v2[8] = v20;
  v21 = v29;
  v2[11] = v28;
  v2[12] = v21;
  v22 = v27;
  v2[9] = v26;
  v2[10] = v22;
  return v2;
}

uint64_t sub_24B1D7810()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[20] = swift_task_alloc();
  v2 = sub_24B2D3184();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1D7908, v0, 0);
}

uint64_t sub_24B1D7908()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v0[18] = v11;
    v14 = sub_24B2D53C4();
    v16 = sub_24AFF321C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v28);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ItemsLocationsProvider%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_valuePublisher;
  v0[24] = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_valuePublisher;
  if (*(v20 + v21))
  {

    sub_24B2D5764();

    v22 = v0[19];
  }

  else
  {
    v22 = v20;
  }

  *(v20 + v21) = 0;

  v23 = v22 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  sub_24B1F4790(v24);
  swift_endAccess();
  v27 = (*(v22 + 128) + **(v22 + 128));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_24B1D7C5C;

  return v27(v0 + 2);
}

uint64_t sub_24B1D7C5C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_24B17DAFC;
  }

  else
  {
    v4 = sub_24B1D7D88;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B1D7D88()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B1E6414(&qword_27EFCE1D0, type metadata accessor for ItemsLocationsProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2F03F8, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B1D7F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v7 = sub_24B2D3184();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v5[19] = swift_task_alloc();
  v8 = sub_24B2D1944();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2C0);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2C8);
  v5[26] = swift_task_alloc();
  v9 = sub_24B2D1DA4();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v10 = sub_24B2D24A4();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1D81C4, a5, 0);
}

uint64_t sub_24B1D81C4()
{
  v1 = v0[14];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B1E6414(&qword_27EFCE1D0, type metadata accessor for ItemsLocationsProvider);
  v7 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  v0[36] = v6;
  v0[37] = v7;
  swift_beginAccess();
  v8 = v0[36];
  v9 = v0[15];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_24B1D83DC;

  return MEMORY[0x282200310](v0 + 10, v9, v8);
}

uint64_t sub_24B1D83DC()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 120);

    return MEMORY[0x2822009F8](sub_24B1D84EC, v4, 0);
  }

  return result;
}

uint64_t sub_24B1D84EC()
{
  v135 = v0;
  v1 = v0[10];
  if (v1)
  {
    v116 = (v0 + 2);
    sub_24B2D2494();
    v2 = MEMORY[0x277D84FA0];
    v0[11] = MEMORY[0x277D84FA0];
    v0[12] = v2;
    v123 = v0 + 10;
    v3 = sub_24B194DD8(MEMORY[0x277D84F90]);
    v6 = v3;
    v133 = v0;
    v118 = *(v1 + 16);
    if (!v118)
    {

      v86 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v7 = 0;
    v119 = v1 + 32;
    v117 = v1;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
LABEL_67:
        __break(1u);
        return MEMORY[0x282200310](v3, v4, v5);
      }

      v8 = v119 + 16 * v7;
      v122 = *v8;
      v9 = *(v8 + 8);
      if (v9)
      {
        break;
      }

      v3 = v122;
      v68 = *(v122 + 16);
      if (v68)
      {
        v120 = v7;
        v131 = v6;
        v69 = v0[28];
        v70 = v122 + ((*(v69 + 80) + 32) & ~*(v69 + 80));

        v129 = *(v69 + 72);
        v71 = *(v69 + 16);
        do
        {
          v72 = v0[32];
          v73 = v133[31];
          v74 = v133[28];
          v75 = v133[27];
          v71(v72, v70, v75);
          sub_24B1AF20C(v73, v72);
          v0 = v133;
          (*(v74 + 8))(v73, v75);
          v70 += v129;
          --v68;
        }

        while (v68);
LABEL_4:

LABEL_5:
        v6 = v131;
        v1 = v117;
        v7 = v120;
      }

LABEL_6:
      if (++v7 == v118)
      {

        v86 = v123[1];
        if (!*(v86 + 16))
        {
LABEL_57:

          goto LABEL_58;
        }

LABEL_55:
        v87 = v0[36];
        v88 = v0[19];
        v89 = v0[15];
        v90 = sub_24B2D56D4();
        (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
        v91 = swift_allocObject();
        *(v91 + 16) = v89;
        *(v91 + 24) = v87;
        *(v91 + 32) = v89;
        *(v91 + 40) = v86;
        *(v91 + 48) = 0;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v88, &unk_24B2F0410, v91);

LABEL_58:
        v92 = v0[37];
        v93 = v0[17];
        v94 = v0[18];
        v95 = v0[15];
        v96 = v0[16];
        swift_bridgeObjectRetain_n();
        v97 = sub_24B1A49E8(v6);
        sub_24B25A7F8(v0[12], v97);
        v99 = v98;
        (*(v93 + 16))(v94, v95 + v92, v96);
        v100 = sub_24B2D3164();
        v101 = v6;
        v102 = sub_24B2D5904();
        v103 = os_log_type_enabled(v100, v102);
        v105 = v0[17];
        v104 = v0[18];
        v106 = v0[16];
        if (v103)
        {
          v132 = v0[18];
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v134 = v108;
          *v107 = 136315138;
          *(v107 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v134);

          _os_log_impl(&dword_24AFD2000, v100, v102, "ItemsLocationsProvider: %s - Will call ingest", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          v0 = v133;
          MEMORY[0x24C23D530](v108, -1, -1);
          MEMORY[0x24C23D530](v107, -1, -1);

          (*(v105 + 8))(v132, v106);
        }

        else
        {

          (*(v105 + 8))(v104, v106);
        }

        v109 = v101;
        v110 = v0[34];
        v111 = v0[35];
        v112 = v0[33];
        sub_24B1DAC38(v99, v109, v111, 0);

        (*(v110 + 8))(v111, v112);
        v113 = v0[36];
        v114 = v0[15];
        __swift_mutable_project_boxed_opaque_existential_1(v116, v0[5]);
        v115 = swift_task_alloc();
        v0[38] = v115;
        *v115 = v0;
        v115[1] = sub_24B1D83DC;
        v3 = v123;
        v4 = v114;
        v5 = v113;

        return MEMORY[0x282200310](v3, v4, v5);
      }
    }

    if (v9 == 1)
    {
      v120 = v7;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123[3] = v6;
      v11 = -1 << *(v122 + 32);
      if (-v11 < 64)
      {
        v12 = ~(-1 << -v11);
      }

      else
      {
        v12 = -1;
      }

      v13 = v12 & *(v122 + 64);
      v121 = (63 - v11) >> 6;

      v14 = 0;
      while (1)
      {
        v131 = v6;
        v128 = isUniquelyReferenced_nonNull_native;
        if (!v13)
        {
          if (v121 <= v14 + 1)
          {
            v17 = v14 + 1;
          }

          else
          {
            v17 = v121;
          }

          while (1)
          {
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v16 >= v121)
            {
              v127 = v17 - 1;
              v66 = v0[25];
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2D0);
              (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
              v13 = 0;
              goto LABEL_25;
            }

            v13 = *(v122 + 64 + 8 * v16);
            ++v14;
            if (v13)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v16 = v14;
LABEL_24:
        v18 = v0[31];
        v20 = v0[27];
        v19 = v0[28];
        v21 = v0[25];
        v124 = v0[23];
        v22 = v133[21];
        v126 = v133[20];
        v23 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v24 = v23 | (v16 << 6);
        (*(v19 + 16))(v18, *(v122 + 48) + *(v19 + 72) * v24, v20);
        (*(v22 + 16))(v124, *(v122 + 56) + *(v22 + 72) * v24, v126);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2D0);
        v26 = *(v25 + 48);
        (*(v19 + 32))(v21, v18, v20);
        (*(v22 + 32))(v21 + v26, v124, v126);
        v0 = v133;
        (*(*(v25 - 8) + 56))(v21, 0, 1, v25);
        v127 = v16;
LABEL_25:
        v27 = v0[24];
        sub_24B0391CC(v0[25], v27, &qword_27EFCE2C0);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2D0);
        if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
        {
          v29 = v0[26];
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEF8);
          (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
        }

        else
        {
          v31 = v0[27];
          v32 = v0[28];
          v33 = v0[26];
          v34 = v0[24];
          v35 = v0[21];
          v125 = v0[20];
          v36 = *(v28 + 48);
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEF8);
          v38 = *(v37 + 48);
          (*(v32 + 16))(v33, v34, v31);
          v0 = v133;
          (*(v35 + 16))(v33 + v38, v34 + v36, v125);
          sub_24AFF8258(v34, &qword_27EFCE2D0);
          (*(*(v37 - 8) + 56))(v33, 0, 1, v37);
        }

        v39 = v0[26];
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEF8);
        if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_5;
        }

        v41 = v0[30];
        v43 = v0[21];
        v42 = v0[22];
        v44 = v0[20];
        v45 = *(v40 + 48);
        v46 = *(v0[28] + 32);
        v46(v41, v39, v0[27]);
        v47 = *(v43 + 32);
        v47(v42, v39 + v45, v44);
        v48 = sub_24B181698(v41);
        v49 = v131[2];
        v50 = (v4 & 1) == 0;
        v3 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_65;
        }

        v51 = v4;
        if (v131[3] >= v3)
        {
          if ((v128 & 1) == 0)
          {
            sub_24B1CEFA8();
          }
        }

        else
        {
          v52 = v133[30];
          sub_24B1C7100(v3, v128 & 1);
          v53 = sub_24B181698(v52);
          if ((v51 & 1) != (v54 & 1))
          {

            return sub_24B2D6054();
          }

          v48 = v53;
        }

        v55 = v133[30];
        v56 = v133[27];
        v57 = v133[28];
        v59 = v133[21];
        v58 = v133[22];
        v60 = v133[20];
        if (v51)
        {
          (*(v57 + 8))(v133[30], v133[27]);
          v15 = v123[3];
          v3 = (*(v59 + 40))(v15[7] + *(v59 + 72) * v48, v58, v60);
          v6 = v15;
        }

        else
        {
          v61 = v123[3];
          v61[(v48 >> 6) + 8] |= 1 << v48;
          v46(v61[6] + *(v57 + 72) * v48, v55, v56);
          v62 = *(v59 + 72);
          v6 = v61;
          v3 = (v47)(v61[7] + v62 * v48, v58, v60);
          v63 = v61[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_66;
          }

          v61[2] = v65;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v14 = v127;
        v0 = v133;
      }
    }

    v3 = v122;
    v76 = *(v122 + 16);
    if (!v76)
    {
      goto LABEL_6;
    }

    v120 = v7;
    v131 = v6;
    v77 = v0[28];
    v78 = v122 + ((*(v77 + 80) + 32) & ~*(v77 + 80));

    v130 = *(v77 + 72);
    v79 = *(v77 + 16);
    do
    {
      v80 = v0[31];
      v82 = v0[28];
      v81 = v0[29];
      v83 = v0[27];
      v79(v81, v78, v83);
      sub_24B1AF20C(v80, v81);
      (*(v82 + 8))(v80, v83);
      v78 += v130;
      --v76;
    }

    while (v76);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v84 = v0[1];

  return v84();
}

uint64_t sub_24B1D9188()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v1) = 0;

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  sub_24B1F4790(v3);
  return swift_endAccess();
}

uint64_t sub_24B1D923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 192) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  v8 = sub_24B2D3184();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v9 = sub_24B2D24A4();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1D936C, a4, 0);
}

uint64_t sub_24B1D936C()
{
  v1 = v0[12];
  sub_24B2D2494();
  v5 = (*(v1 + 112) + **(v1 + 112));
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_24B1D9468;
  v3 = v0[13];

  return v5(v3);
}

uint64_t sub_24B1D9468(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = sub_24B1D9790;
  }

  else
  {
    v6 = sub_24B1D959C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B1D959C()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_24AFF321C(0xD000000000000027, 0x800000024B2DC980, &v19);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ItemsLocationsProvider: %s - Will call ingest", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 144);
  sub_24B1DAC38(*(v0 + 104), *(v0 + 176), v14, *(v0 + 192));

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24B1D9790()
{
  v27 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v6 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 120);
    v25 = *(v0 + 128);
    v23 = *(v0 + 184);
    v24 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD000000000000027, 0x800000024B2DC980, &v26);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "ItemsLocationsProvider: %s - fetchError - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1D9A8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v117 = a3;
  v118 = a1;
  v119 = a2;
  v116 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v6 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v110 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = &v93 - v9;
  v103 = sub_24B2D13C4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_24B2D1944();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v100 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v98);
  v105 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = &v93 - v14;
  MEMORY[0x28223BE20](v15);
  v111 = &v93 - v16;
  v17 = sub_24B2D3184();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v112 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v104 = (&v93 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v93 - v23;
  v25 = sub_24B2D24A4();
  v115 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v99 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v93 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v93 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v93 - v34;
  v114 = v4;
  v36 = v4 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  swift_beginAccess();
  v106 = v36;
  v37 = *(v36 + 24);
  v38 = *(v37 + 16);
  v113 = a4;
  if (v38)
  {

    v39 = sub_24B181698(v119);
    if (v40)
    {
      sub_24B1E62E4(*(v37 + 56) + *(v6 + 72) * v39, v24, type metadata accessor for ItemsLocationsProvider.LocationState);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }
  }

  else
  {
    v41 = 1;
  }

  v42 = v116;
  (*(v6 + 56))(v24, v41, 1, v116);
  if ((*(v6 + 48))(v24, 1, v42))
  {
    sub_24AFF8258(v24, &qword_27EFCC608);
    v43 = v25;
    v44 = v115;
    v45 = v18;
LABEL_13:
    v56 = v114;
    sub_24B1DB2AC(v119);
    v57 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
    swift_beginAccess();
    v58 = v56 + v57;
    v59 = v112;
    (*(v45 + 16))(v112, v58, v17);
    v60 = v45;
    v104 = *(v44 + 16);
    v104(v29, v117, v43);
    v61 = v111;
    sub_24B008890(v118, v111, &qword_27EFCB288);
    v62 = v43;
    v63 = sub_24B2D3164();
    v64 = sub_24B2D5904();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v121[0] = v95;
      *v65 = 136315906;
      *(v65 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2DC950, v121);
      *(v65 + 12) = 1024;
      *(v65 + 14) = v113 & 1;
      *(v65 + 18) = 2080;
      sub_24B1E6414(&qword_27EFC8688, MEMORY[0x277CC9578]);
      v66 = sub_24B2D5FA4();
      v94 = v17;
      v68 = v67;
      v96 = *(v115 + 8);
      v96(v29, v62);
      v69 = sub_24AFF321C(v66, v68, v121);

      *(v65 + 20) = v69;
      *(v65 + 28) = 2080;
      v93 = v62;
      v70 = v111;
      sub_24B008890(v111, v97, &qword_27EFCB288);
      v71 = sub_24B2D53C4();
      v73 = v72;
      sub_24AFF8258(v70, &qword_27EFCB288);
      v74 = sub_24AFF321C(v71, v73, v121);

      *(v65 + 30) = v74;
      _os_log_impl(&dword_24AFD2000, v63, v64, "ItemsLocationsProvider: %s - Will set - isLoading: %{BOOL}d, request: %s, location: %s", v65, 0x26u);
      v75 = v95;
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v75, -1, -1);
      MEMORY[0x24C23D530](v65, -1, -1);

      (*(v60 + 8))(v112, v94);
      v76 = v93;
    }

    else
    {

      sub_24AFF8258(v61, &qword_27EFCB288);
      v96 = *(v44 + 8);
      v96(v29, v62);
      (*(v45 + 8))(v59, v17);
      v76 = v62;
    }

    v77 = v105;
    sub_24B008890(v118, v105, &qword_27EFCB288);
    v78 = v107;
    v79 = v108;
    if ((*(v107 + 48))(v77, 1, v108) == 1)
    {
      sub_24AFF8258(v77, &qword_27EFCB288);
      v80 = v113;
    }

    else
    {
      v81 = v100;
      (*(v78 + 32))(v100, v77, v79);
      v82 = v101;
      sub_24B2D1934();
      v83 = v99;
      sub_24B2D2494();
      v84 = sub_24B2D1394();
      v96(v83, v76);
      (*(v102 + 8))(v82, v103);
      (*(v78 + 8))(v81, v79);
      v80 = v113 | v84 ^ 1;
    }

    v85 = v109;
    v104(v109, v117, v76);
    v86 = (v85 + *(v116 + 20));
    v87 = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
    sub_24B008890(v118, &v86[*(v87 + 20)], &qword_27EFCB288);
    *v86 = v80 & 1;
    v88 = v106;
    swift_beginAccess();
    v89 = *(v88 + 24);
    v90 = v110;
    sub_24B1E634C(v85, v110, type metadata accessor for ItemsLocationsProvider.LocationState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v89;
    sub_24B1CAC28(v90, v119, isUniquelyReferenced_nonNull_native);
    *(v88 + 24) = v120;
    sub_24B1D5988(v89);
    swift_endAccess();

    if (v80)
    {
      return sub_24B1DC064(v119);
    }

    else
    {
      return sub_24B1DB514(v119, v118);
    }
  }

  v43 = v25;
  v44 = v115;
  (*(v115 + 16))(v32, v24, v43);
  sub_24AFF8258(v24, &qword_27EFCC608);
  (*(v44 + 32))(v35, v32, v43);
  v45 = v18;
  if ((sub_24B2D23C4() & 1) == 0)
  {
    (*(v44 + 8))(v35, v43);
    goto LABEL_13;
  }

  v46 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  v47 = v114;
  swift_beginAccess();
  v48 = *(v18 + 16);
  v49 = v104;
  v48(v104, v47 + v46, v17);
  v50 = sub_24B2D3164();
  v51 = sub_24B2D5934();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v17;
    v53 = v49;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v121[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2DC950, v121);
    _os_log_impl(&dword_24AFD2000, v50, v51, "ItemsLocationsProvider: %s - Skipping due to older timestamp", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x24C23D530](v55, -1, -1);
    MEMORY[0x24C23D530](v54, -1, -1);

    (*(v45 + 8))(v53, v52);
  }

  else
  {

    (*(v45 + 8))(v49, v17);
  }

  return (*(v44 + 8))(v35, v43);
}