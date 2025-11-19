uint64_t sub_1D194C0C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticZone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1D176C7A8(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_1D1951A7C(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for StaticZone);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_1D194C290(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439B8, &qword_1D1E72F48);
  result = sub_1D1E6880C();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_35:
    *v2 = v6;
    return result;
  }

  v27 = v2;
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
    sub_1D1E6920C();
    if (v17 == 2)
    {
      v19 = 2;
      goto LABEL_21;
    }

    if (v17 == 1)
    {
      v19 = 0;
LABEL_21:
      MEMORY[0x1D3892850](v19);
      goto LABEL_24;
    }

    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
    if (v17)
    {

      sub_1D176D4E8(v28, v17);
    }

LABEL_24:
    result = sub_1D1E6926C();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v22);
        if (v26 != -1)
        {
          v13 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_37;
    }

    v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

      v2 = v27;
      goto LABEL_35;
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
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D194C504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v19);
      result = sub_1D1E6926C();
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1D194C71C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D0, &unk_1D1E8EA80);
  result = sub_1D1E6880C();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v39 = v10;
    v14 = 0;
    v15 = v10 + 56;
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = *(v10 + 48);
      v42 = *(v41 + 72);
      sub_1D1951A7C(v25 + v42 * (v22 | (v14 << 6)), v9, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v26 = *(v13 + 40);
      sub_1D1E6920C();
      v27 = v9;
      v28 = v9;
      v29 = v40;
      sub_1D1951A7C(v28, v40, type metadata accessor for WriteInProgressStatusViewModel.ID);
      MEMORY[0x1D3892850](0);
      v30 = sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      (*(*(v30 - 8) + 8))(v29, v30);
      result = sub_1D1E6926C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v9 = v27;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1D1951AE4(v9, *(v13 + 48) + v21 * v42, type metadata accessor for WriteInProgressStatusViewModel.ID);
      ++*(v13 + 16);
      v10 = v39;
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

        v2 = v38;
        goto LABEL_28;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
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
    *v2 = v13;
  }

  return result;
}

uint64_t sub_1D194CAB8(uint64_t a1)
{
  v2 = v1;
  v49 = type metadata accessor for StaticResident();
  v46 = *(v49 - 1);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B0, &qword_1D1E85688);
  result = sub_1D1E6880C();
  v10 = result;
  if (!*(v7 + 16))
  {

LABEL_45:
    *v2 = v10;
    return result;
  }

  v43 = v2;
  v44 = result;
  v11 = 0;
  v12 = v7 + 56;
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v17 = result + 56;
  v45 = v7;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v48 = (v15 - 1) & v15;
LABEL_17:
    v22 = *(v7 + 48);
    v47 = *(v46 + 72);
    sub_1D1951A7C(v22 + v47 * (v19 | (v11 << 6)), v6, type metadata accessor for StaticResident);
    v23 = v10[5];
    sub_1D1E6920C();
    sub_1D1E66A7C();
    sub_1D174A5FC(qword_1EE07DD78);
    sub_1D1E676EC();
    v24 = v49;
    v25 = &v6[v49[5]];
    v26 = *v25;
    v27 = *(v25 + 1);
    sub_1D1E678EC();
    v28 = &v6[v24[6]];
    if (*(v28 + 1))
    {
      v29 = *v28;
      sub_1D1E6922C();
      sub_1D1E678EC();
    }

    else
    {
      sub_1D1E6922C();
    }

    v30 = v49;
    sub_1D1771CBC(v50, *&v6[v49[7]]);
    sub_1D1771CBC(v50, *&v6[v30[8]]);
    v31 = &v6[v30[9]];
    v32 = *v31;
    v33 = v31[8];
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        MEMORY[0x1D3892850](5);
        sub_1D1E6922C();
        sub_1D1E6922C();
        goto LABEL_28;
      }

      if (v32 > 1)
      {
        if (v32 == 2)
        {
          v34 = 2;
        }

        else
        {
          v34 = 6;
        }
      }

      else
      {
        v34 = v32 != 0;
      }

      goto LABEL_27;
    }

    if (v33)
    {
      MEMORY[0x1D3892850](4);
      v34 = v32;
LABEL_27:
      MEMORY[0x1D3892850](v34);
      goto LABEL_28;
    }

    MEMORY[0x1D3892850](3);
    sub_1D1E6922C();
    if (v32)
    {
      sub_1D176D4E8(v50, v32);
    }

LABEL_28:
    v7 = v45;
    v35 = &v6[v49[10]];
    sub_1D1E676EC();
    result = sub_1D1E6926C();
    v10 = v44;
    v36 = -1 << *(v44 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
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
        v42 = *(v17 + 8 * v38);
        if (v42 != -1)
        {
          v18 = __clz(__rbit64(~v42)) + (v38 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_47;
    }

    v18 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    result = sub_1D1951AE4(v6, v10[6] + v18 * v47, type metadata accessor for StaticResident);
    ++v10[2];
    v15 = v48;
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v16)
    {

      v2 = v43;
      goto LABEL_45;
    }

    v21 = *(v12 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v48 = (v21 - 1) & v21;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D194CF48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C0, &qword_1D1E855D0);
  result = sub_1D1E6880C();
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
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      result = MEMORY[0x1D3892820](*(v6 + 40), v17, 2);
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

uint64_t sub_1D194D13C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439D8, &qword_1D1E72F58);
  result = sub_1D1E6880C();
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
      result = MEMORY[0x1D3892820](*(v6 + 40), v17, 4);
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

uint64_t sub_1D194D330(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C8, &qword_1D1E855D8);
  result = sub_1D1E6880C();
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
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

uint64_t sub_1D194D550(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C8, &qword_1D1E8EB10);
  result = sub_1D1E6880C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      sub_1D1E6920C();
      v19 = dword_1D1E8571C[v17];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v27;
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

unint64_t sub_1D194D77C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A0, &qword_1D1E85678);
  result = sub_1D1E6880C();
  v5 = result;
  v24 = v2;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v24 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v24 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v5 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = (*(v24 + 48) + 32 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = *(v5 + 40);
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v15);

      sub_1D1E678EC();
      sub_1D176D34C(v25, v18);
      sub_1D1E6926C();
      v20 = -1 << *(v5 + 32);
      result = sub_1D1E686CC();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v21 = (*(v5 + 48) + 32 * result);
      *v21 = v15;
      v21[1] = v16;
      v21[2] = v17;
      v21[3] = v18;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_16;
      }

      v13 = *(v24 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v22 = v5;
  }

  return result;
}

uint64_t sub_1D194D96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647488, &qword_1D1E85660);
  result = sub_1D1E6880C();
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
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
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

uint64_t sub_1D194DBF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647498, &qword_1D1E85670);
  result = sub_1D1E6880C();
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
      v18 = (*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D1E6920C();
      sub_1D1E6922C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
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
      v14 = (*(v6 + 48) + 2 * v13);
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

uint64_t sub_1D194DE90(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
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
      v22 = sub_1D1E6920C();
      a4(v22);
      sub_1D1E678EC();

      result = sub_1D1E6926C();
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

uint64_t sub_1D194E0D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
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
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      result = sub_1D1E691FC();
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
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
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
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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

    *v4 = v8;
  }

  return result;
}

uint64_t sub_1D194E2BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v38 - v6);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473F0, &unk_1D1E8EA90);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v42 = *(v40 + 72);
      sub_1D1741C08(v23 + v42 * (v20 | (v12 << 6)), v7, &qword_1EC643018, &qword_1D1E9AC00);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      v26 = v7[3];
      v25 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v26);
      (*(v25 + 8))(v26, v25);
      sub_1D1E678EC();

      v27 = v7[3];
      v28 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v27);
      (*(v28 + 16))(v27, v28);
      sub_1D1E678EC();

      v29 = v41;
      v30 = *(v41 + 36);
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      MEMORY[0x1D3892890](*(v7 + *(v29 + 40)));
      result = sub_1D1E6926C();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v8 = v39;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v8 = v39;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1741A90(v7, *(v11 + 48) + v19 * v42, &qword_1EC643018, &qword_1D1E9AC00);
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

        v2 = v38;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D194E6B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v39 - v6);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E8, &unk_1D1E8EAA0);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v2;
    v41 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v45 = (v16 - 1) & v16;
LABEL_17:
      v23 = *(v8 + 48);
      v44 = *(v42 + 72);
      sub_1D1741C08(v23 + v44 * (v20 | (v12 << 6)), v7, &qword_1EC643010, &qword_1D1E90E20);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      v26 = v7[3];
      v25 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v26);
      (*(v25 + 8))(v26, v25);
      sub_1D1E678EC();

      v27 = v7[3];
      v28 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v27);
      (*(v28 + 16))(v27, v28);
      sub_1D1E678EC();

      v29 = v43;
      v30 = *(v43 + 36);
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v31 = v7 + *(v29 + 40);
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v8 = v41;
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v8 = v41;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1741A90(v7, *(v11 + 48) + v19 * v44, &qword_1EC643010, &qword_1D1E90E20);
      ++*(v11 + 16);
      v16 = v45;
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

        v2 = v40;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D194EAC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v47 - v10;
  v12 = _s7MergeIdVMa();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D8, &qword_1D1E855E0);
  result = sub_1D1E6880C();
  v18 = result;
  if (*(v15 + 16))
  {
    v55 = v4;
    v48 = v2;
    v19 = 0;
    v20 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v53 = (v5 + 48);
    v54 = v15;
    v49 = (v5 + 8);
    v50 = (v5 + 32);
    v25 = result + 56;
    v51 = v12;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = *(v15 + 48);
      v57 = *(v56 + 72);
      v31 = v58;
      sub_1D1951A7C(v30 + v57 * (v27 | (v19 << 6)), v58, _s7MergeIdVMa);
      v32 = *(v18 + 40);
      sub_1D1E6920C();
      sub_1D1741C08(v31, v11, &qword_1EC642590, qword_1D1E71260);
      v33 = v55;
      if ((*v53)(v11, 1, v55) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v34 = v11;
        v35 = v52;
        (*v50)(v52, v34, v33);
        sub_1D1E6922C();
        sub_1D174A5FC(qword_1EE07DD78);
        sub_1D1E676EC();
        v36 = v35;
        v11 = v34;
        v12 = v51;
        (*v49)(v36, v33);
      }

      v37 = (v58 + *(v12 + 20));
      v38 = *v37;
      v39 = v37[1];
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v40 = -1 << *(v18 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v15 = v54;
      if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v25 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1D1951AE4(v58, *(v18 + 48) + v26 * v57, _s7MergeIdVMa);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v2 = v48;
        goto LABEL_31;
      }

      v29 = *(v20 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
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
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1D194EF84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaSystemComponent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A8, &qword_1D1E85680);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1D176CA00(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_1D1951A7C(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for StaticMediaSystemComponent);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_1D194F150(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473B8, &qword_1D1E855C8);
  result = sub_1D1E6880C();
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
      sub_1D1E6920C();
      sub_1D1E6922C();
      if (v19)
      {

        sub_1D1E678EC();
      }

      result = sub_1D1E6926C();
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

        goto LABEL_32;
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
        goto LABEL_30;
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
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D194F3A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MatterTilePath(0);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647480, &unk_1D1E8EB00);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v38 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v39 + 72);
      sub_1D1951A7C(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for MatterTilePath);
      v25 = *(v11 + 40);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v26 = v40;
      MEMORY[0x1D3892890](*&v7[*(v40 + 20)]);
      v27 = &v7[*(v26 + 24)];
      if (v27[2] == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v28 = *v27;
        sub_1D1E6922C();
        sub_1D1E6923C();
      }

      result = sub_1D1E6926C();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for MatterTilePath);
      ++*(v11 + 16);
      v8 = v38;
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

        v2 = v37;
        goto LABEL_31;
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
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D194F6FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647468, &qword_1D1E85648);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1D176CCD4(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_1D1951A7C(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_1D194F8C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647460, &qword_1D1E85640);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1D176CD14(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_1D1951A7C(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for StaticAccessory.DeviceIdentifier);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_1D194FA94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647478, &qword_1D1E85658);
  result = sub_1D1E6880C();
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1D1E6920C();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
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

uint64_t sub_1D194FD80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActionService();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647428, &qword_1D1E85618);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for ActionService);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      ActionService.hash(into:)(v34);
      result = sub_1D1E6926C();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for ActionService);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D1950058(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticZone();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v14 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  result = sub_1D1E6880C();
  v16 = result;
  if (*(v13 + 16))
  {
    v45 = v1;
    v17 = 0;
    v18 = *(v13 + 56);
    v47 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v46 = (v19 + 63) >> 6;
    v51 = v5 + 16;
    v52 = result;
    v48 = v5;
    v49 = v13;
    v22 = (v5 + 8);
    v53 = v12;
    v50 = result + 56;
    while (v21)
    {
      v24 = __clz(__rbit64(v21));
      v57 = (v21 - 1) & v21;
LABEL_17:
      v58 = v17;
      v27 = *(v13 + 48);
      v56 = *(v54 + 72);
      sub_1D1951A7C(v27 + v56 * (v24 | (v17 << 6)), v12, type metadata accessor for StaticZone);
      v28 = v16[5];
      sub_1D1E6920C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v29 = v55;
      v30 = &v12[*(v55 + 20)];
      v31 = *v30;
      v32 = *(v30 + 1);
      sub_1D1E678EC();
      v33 = *&v12[*(v29 + 24)];
      MEMORY[0x1D3892850](*(v33 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v33 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v36 = *(v48 + 72);
        v37 = *(v48 + 16);
        do
        {
          v37(v8, v35, v4);
          sub_1D1E676EC();
          (*v22)(v8, v4);
          v35 += v36;
          --v34;
        }

        while (v34);
      }

      result = sub_1D1E6926C();
      v16 = v52;
      v38 = -1 << *(v52 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v50 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v12 = v53;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v50 + 8 * v40);
          if (v44 != -1)
          {
            v23 = __clz(__rbit64(~v44)) + (v40 << 6);
            v13 = v49;
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v23 = __clz(__rbit64((-1 << v39) & ~*(v50 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v13 = v49;
      v12 = v53;
LABEL_9:
      *(v50 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1D1951AE4(v12, v16[6] + v23 * v56, type metadata accessor for StaticZone);
      ++v16[2];
      v21 = v57;
      v17 = v58;
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v46)
      {

        v2 = v45;
        goto LABEL_31;
      }

      v26 = *(v47 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v57 = (v26 - 1) & v26;
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
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1D19504E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticActionSet();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647418, &qword_1D1E85608);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticActionSet);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticActionSet.hash(into:)(v34);
      result = sub_1D1E6926C();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticActionSet);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D19507B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticRoom(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647410, &unk_1D1E8EAC0);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticRoom);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticRoom.hash(into:)(v34);
      result = sub_1D1E6926C();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticRoom);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D1950A90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticUser();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647408, &qword_1D1E85600);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v43 = (v16 - 1) & v16;
LABEL_17:
      v23 = *(v8 + 48);
      v42 = *(v40 + 72);
      sub_1D1951A7C(v23 + v42 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticUser);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v25 = v41;
      v26 = &v7[v41[5]];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_1D1E678EC();
      v29 = &v7[v25[6]];
      sub_1D1E676EC();
      MEMORY[0x1D3892850](v7[v25[7]]);
      MEMORY[0x1D3892850](v7[v25[8]]);
      result = sub_1D1E6926C();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v8 = v39;
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v8 = v39;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v42, type metadata accessor for StaticUser);
      ++*(v11 + 16);
      v16 = v43;
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

        v2 = v38;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D1950E08(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataModel.StateSubscription.Reason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E0, &qword_1D1E855E8);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1D176CFB8(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_1D1951A7C(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for DataModel.StateSubscription.Reason);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_1D1950FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1D1E684EC();
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
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

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

void *sub_1D19511E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1D19514E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D1951268(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_30;
  }

LABEL_2:
  MEMORY[0x1EEE9AC00](a1);
  v7 = v30 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v7, v6);
  v8 = 0;
  v9 = 0;
  v10 = 1 << *(v3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v3 + 56);
  v13 = (v10 + 63) >> 6;
LABEL_6:
  if (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = v15 | (v9 << 6);
    goto LABEL_13;
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v28 = swift_slowAlloc();
        v29 = sub_1D19511E0(v28, v5, v3, a2);

        MEMORY[0x1D3893640](v28, -1, -1);
        result = v29;
        goto LABEL_27;
      }

      goto LABEL_2;
    }

    if (v9 >= v13)
    {
      break;
    }

    v18 = *(v3 + 56 + 8 * v9);
    ++v17;
    if (v18)
    {
      v12 = (v18 - 1) & v18;
      v16 = __clz(__rbit64(v18)) | (v9 << 6);
LABEL_13:
      v19 = *(*a2 + 16);
      if (v19)
      {
        v20 = *(*(v3 + 48) + v16);
        v21 = (*a2 + 32);
        v22 = v20 & 0xC0;
        do
        {
          v24 = *v21++;
          v23 = v24;
          v25 = v24 >> 6;
          if (v24 >> 6)
          {
            if (v25 == 1)
            {
              if (v22 == 64)
              {
                goto LABEL_15;
              }
            }

            else if (v22 == 128)
            {
LABEL_15:
              if (((v23 ^ v20) & 0x3F) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v20 <= 0x3F && v23 == v20)
          {
            goto LABEL_6;
          }

          --v19;
        }

        while (v19);
      }

      *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_29;
      }

      goto LABEL_6;
    }
  }

  result = sub_1D19E1A90(v7, v5, v8, v3);
LABEL_27:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D19514E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
LABEL_5:
  if (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = v14 | (v8 << 6);
    goto LABEL_12;
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v12)
    {

      return sub_1D19E1A90(v6, a2, v7, a3);
    }

    v17 = *(a3 + 56 + 8 * v8);
    ++v16;
    if (v17)
    {
      v11 = (v17 - 1) & v17;
      v15 = __clz(__rbit64(v17)) | (v8 << 6);
LABEL_12:
      v18 = *(*a4 + 16);
      if (v18)
      {
        v19 = *(*(a3 + 48) + v15);
        v20 = (*a4 + 32);
        v21 = v19 & 0xC0;
        do
        {
          v22 = *v20++;
          result = v22;
          v23 = v22 >> 6;
          if (v22 >> 6)
          {
            if (v23 == 1)
            {
              if (v21 == 64)
              {
                goto LABEL_14;
              }
            }

            else if (v21 == 128)
            {
LABEL_14:
              result = result ^ v19;
              if ((result & 0x3F) == 0)
              {
                goto LABEL_5;
              }
            }
          }

          else if (v19 <= 0x3F && result == v19)
          {
            goto LABEL_5;
          }

          --v18;
        }

        while (v18);
      }

      *(v6 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D19516B4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v20 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    do
    {
      sub_1D1741C08(v18, v12, a2, a3);
      a4(v16, v12);
      result = sub_1D1741A30(v16, a2, a3);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      return 0;
    }

    v12 = v1 & 0x3F;
    v13 = "HFVacuumCleanMode_Vacuum";
    v14 = "HFVacuumCleanMode_VacuumThenMop";
    if (v12 == 2)
    {
      v15 = 0xD000000000000015;
    }

    else
    {
      v14 = "HFVacuumCleanMode_Auto";
      v15 = 0xD00000000000001FLL;
    }

    v16 = 0xD000000000000018;
    if (v12)
    {
      v13 = "HFVacuumCleanMode_Mop";
    }

    else
    {
      v16 = 0xD00000000000001BLL;
    }

    v17 = v12 <= 1;
    if (v12 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    if (v17)
    {
      v11 = v16;
    }

    else
    {
      v11 = v15;
    }
  }

  else
  {
    v3 = 0xD000000000000015;
    if (*a1 > 4u)
    {
      v18 = "HFVacuumCleanMode_Night";
      v19 = "HFVacuumCleanMode_Day";
      v20 = 0xD000000000000017;
      if (v1 != 8)
      {
        v19 = "SecondaryTag(_:existingTags:)";
        v20 = 0xD000000000000015;
      }

      if (v1 == 7)
      {
        v20 = 0xD000000000000015;
      }

      else
      {
        v18 = v19;
      }

      v21 = "HFVacuumCleanMode_Min";
      if (v1 == 5)
      {
        v3 = 0xD00000000000001ALL;
      }

      else
      {
        v21 = "HFVacuumCleanMode_Max";
      }

      if (*a1 <= 6u)
      {
        v10 = v21;
      }

      else
      {
        v10 = v18;
      }

      if (*a1 <= 6u)
      {
        v11 = v3;
      }

      else
      {
        v11 = v20;
      }
    }

    else
    {
      v4 = "HFVacuumCleanMode_Quick";
      v5 = "HFVacuumCleanMode_LowNoise";
      v6 = "HFVacuumCleanMode_LowEnergy";
      if (v1 == 3)
      {
        v7 = 0xD00000000000001ALL;
      }

      else
      {
        v6 = "HFVacuumCleanMode_Vacation";
        v7 = 0xD00000000000001BLL;
      }

      if (v1 == 2)
      {
        v8 = 0xD000000000000017;
      }

      else
      {
        v5 = v6;
        v8 = v7;
      }

      if (*a1)
      {
        v4 = "HFVacuumCleanMode_Quiet";
        v9 = 0xD000000000000017;
      }

      else
      {
        v9 = 0xD000000000000016;
      }

      if (*a1 <= 1u)
      {
        v10 = v4;
      }

      else
      {
        v10 = v5;
      }

      if (*a1 <= 1u)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }
    }
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

void sub_1D19519A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3891EF0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D1764A98(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1D1951A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1951AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1951B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D1951BB0(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v54 = a2 << 32;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v50 = v6;
  v51 = v2;
  while (v5)
  {
LABEL_11:
    v14 = __clz(__rbit64(v5)) | (v7 << 6);
    v55 = *(*(a1 + 48) + 4 * v14);
    v15 = *(a1 + 56) + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v52 + *(type metadata accessor for EndpointPath(0) + 24));
    sub_1D1741AF8(v16, v17);
    sub_1D1741AF8(v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v8;
    v21 = sub_1D171D15C(v18);
    v22 = v8[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_32;
    }

    v25 = v20;
    if (v8[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v8 = v57;
      }
    }

    else
    {
      sub_1D172684C(v24, isUniquelyReferenced_nonNull_native);
      v8 = v57;
      v26 = sub_1D171D15C(v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_37;
      }

      v21 = v26;
    }

    if ((v25 & 1) == 0)
    {
      v8[(v21 >> 6) + 8] |= 1 << v21;
      *(v8[6] + 2 * v21) = v18;
      *(v8[7] + 8 * v21) = MEMORY[0x1E69E7CC8];
      v28 = v8[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      v8[2] = v30;
    }

    v31 = v8[7];
    v32 = *(v31 + 8 * v21);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v31 + 8 * v21);
    v34 = v57;
    *(v31 + 8 * v21) = 0x8000000000000000;
    v35 = sub_1D171D1A4(v54 | v55);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v29 = __OFADD__(v37, v38);
    v39 = v37 + v38;
    if (v29)
    {
      goto LABEL_33;
    }

    v40 = v36;
    if (v34[3] < v39)
    {
      sub_1D1726570(v39, v33);
      v35 = sub_1D171D1A4(v54 | v55);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_36;
      }

LABEL_25:
      v42 = v57;
      if (v40)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }

    if (v33)
    {
      goto LABEL_25;
    }

    v47 = v35;
    sub_1D1737C6C();
    v35 = v47;
    v42 = v57;
    if (v40)
    {
LABEL_4:
      v9 = v42[7] + 16 * v35;
      v10 = *v9;
      *v9 = v16;
      v11 = *(v9 + 8);
      *(v9 + 8) = v17;
      sub_1D1757AE8(v10, v11);
      goto LABEL_5;
    }

LABEL_26:
    v42[(v35 >> 6) + 8] |= 1 << v35;
    v43 = v42[6] + 8 * v35;
    *v43 = v55;
    *(v43 + 4) = a2;
    v44 = v42[7] + 16 * v35;
    *v44 = v16;
    *(v44 + 8) = v17;
    v45 = v42[2];
    v29 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v29)
    {
      goto LABEL_35;
    }

    v42[2] = v46;
LABEL_5:
    v5 &= v5 - 1;
    v12 = *(v31 + 8 * v21);
    *(v31 + 8 * v21) = v42;

    sub_1D1757AE8(v16, v17);
    v6 = v50;
    v2 = v51;
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      v56 = v8;
      v57 = MEMORY[0x1E69E7CC0];
      sub_1D1A1456C(&v56, &v57);

      return v57;
    }

    v5 = *(v2 + 8 * v13);
    ++v7;
    if (v5)
    {
      v7 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1D1E690FC();
  __break(1u);
LABEL_37:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.resume()()
{
  v1[4] = v0;
  v2 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for ClusterPath(0);
  v1[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1952084, 0, 0);
}

uint64_t sub_1D1952084()
{
  v10 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];
  StaticRVCClusterGroup.resumeExpectedValues.getter(&v7);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v7;
  sub_1D1A1456C(&v9, &v8);

  v0[11] = v8;
  sub_1D1741B10(0, &qword_1EC6474C8, 0x1E696F5C0);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 24;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D19521B0;
  v5 = v0[10];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D19521B0(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 104) = a1;

  sub_1D1959D30(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D19522E4, 0, 0);
}

uint64_t sub_1D19522E4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D19581A4(v0[4], v2, type metadata accessor for StaticRVCClusterGroup);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  sub_1D1959DD8(v2, v5 + v4, type metadata accessor for StaticRVCClusterGroup);
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v0[15] = 0x80000001D1EBE710;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1D1952488;
  v8 = v0[13];

  return sub_1D19152BC(0x656D75736572, 0xE600000000000000, v8, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E857B0, v5);
}

uint64_t sub_1D1952488()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[15];
  if (v0)
  {
    v6 = v2[11];

    return MEMORY[0x1EEE6DFA0](sub_1D1959F84, 0, 0);
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v10 = v2[10];
    v9 = v2[11];
    v11 = v2[8];
    v12 = v2[5];

    v13 = *(v4 + 8);

    return v13();
  }
}

uint64_t sub_1D1952640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1952668, 0, 0);
}

uint64_t sub_1D1952668()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[24] = v2;
  v3 = v0[22];
  v4 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D19527DC;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_64;
  v0[14] = v5;
  [v4 resumeWithExpectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19527DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D1959F7C;
  }

  else
  {
    v3 = sub_1D19528EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19528EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_1D1958308(v2, v1, 3);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1D19529DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = MEMORY[0x1E69E7CC8];
  *a2 = MEMORY[0x1E69E7CC8];
  v7 = *(v2 + *(type metadata accessor for EndpointPath(0) + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = 0x8000000000000000;
  v10 = sub_1D171D15C(v7);
  v11 = *(v6 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v9;
  if (*(v6 + 24) >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v14 = MEMORY[0x1E69E7CC8];
      goto LABEL_7;
    }

LABEL_11:
    sub_1D1737DF0();
    v14 = v6;
    goto LABEL_7;
  }

  sub_1D172684C(v13, isUniquelyReferenced_nonNull_native);
  v14 = v6;
  v15 = sub_1D171D15C(v7);
  if ((v3 & 1) != (v16 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v15;
LABEL_7:

  *a2 = v14;
  if ((v3 & 1) == 0)
  {
    v17 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v10, v7, v17, v14);
  }

  v18 = *(v14 + 56);
  v19 = *(v18 + 8 * v10);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v18 + 8 * v10);
  *(v18 + 8 * v10) = 0x8000000000000000;
  result = sub_1D1753B88(a1, 2, 0x1800000004, v20);
  *(v18 + 8 * v10) = v22;
  return result;
}

uint64_t StaticRVCClusterGroup.pause()()
{
  v1[4] = v0;
  v2 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for ClusterPath(0);
  v1[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1952C78, 0, 0);
}

uint64_t sub_1D1952C78()
{
  v10 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];
  StaticRVCClusterGroup.pauseExpectedValues.getter(&v7);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v7;
  sub_1D1A1456C(&v9, &v8);

  v0[11] = v8;
  sub_1D1741B10(0, &qword_1EC6474C8, 0x1E696F5C0);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 24;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D1952DA4;
  v5 = v0[10];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1952DA4(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 104) = a1;

  sub_1D1959D30(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1952ED8, 0, 0);
}

uint64_t sub_1D1952ED8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D19581A4(v0[4], v2, type metadata accessor for StaticRVCClusterGroup);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  sub_1D1959DD8(v2, v5 + v4, type metadata accessor for StaticRVCClusterGroup);
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v0[15] = 0x80000001D1EBE710;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1D195307C;
  v8 = v0[13];

  return sub_1D19152BC(0x6573756170, 0xE500000000000000, v8, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E857C8, v5);
}

uint64_t sub_1D195307C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[15];
  if (v0)
  {
    v6 = v2[11];

    return MEMORY[0x1EEE6DFA0](sub_1D1953234, 0, 0);
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v10 = v2[10];
    v9 = v2[11];
    v11 = v2[8];
    v12 = v2[5];

    v13 = *(v4 + 8);

    return v13();
  }
}

uint64_t sub_1D1953234()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    v5 = *(v0 + 24);
    sub_1D19581A4(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint();
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D1959DD8(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 80);
  v14 = *(v0 + 64);
  v15 = *(v0 + 40);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D1953438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1953460, 0, 0);
}

uint64_t sub_1D1953460()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[24] = v2;
  v3 = v0[22];
  v4 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D19535D4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_60_0;
  v0[14] = v5;
  [v4 pauseWithExpectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19535D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D1959F7C;
  }

  else
  {
    v3 = sub_1D19536E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19536E4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_1D1958308(v2, v1, 0);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

void StaticRVCClusterGroup.goHomeCommand.getter(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for StaticRVCClusterGroup() + 48)))
  {
    v3 = 4;
    v4 = 2;
  }

  else
  {
    StaticRVCClusterGroup.stopCommand.getter(&v5);
    v4 = v5;
    v3 = v6;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
}

unint64_t StaticRVCClusterGroup.goHomeExpectedValues.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for StaticRVCClusterGroup() + 48)) == 1)
  {
    result = sub_1D1953870(&v4);
  }

  else
  {
    result = sub_1D19539E8(&v4);
  }

  *a1 = v4;
  return result;
}

unint64_t sub_1D1953870@<X0>(void *a1@<X8>)
{
  v4 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC8];
  v5 = *(v1 + *(type metadata accessor for EndpointPath(0) + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = 0x8000000000000000;
  v8 = sub_1D171D15C(v5);
  v9 = *(v4 + 16);
  v10 = (v7 & 1) == 0;
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v7;
  if (*(v4 + 24) >= v11)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v12 = MEMORY[0x1E69E7CC8];
      goto LABEL_7;
    }

LABEL_11:
    sub_1D1737DF0();
    v12 = v4;
    goto LABEL_7;
  }

  sub_1D172684C(v11, isUniquelyReferenced_nonNull_native);
  v12 = v4;
  v13 = sub_1D171D15C(v5);
  if ((v2 & 1) != (v14 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v8 = v13;
LABEL_7:

  *a1 = v12;
  if ((v2 & 1) == 0)
  {
    v15 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v8, v5, v15, v12);
  }

  v16 = *(v12 + 56);
  v17 = *(v16 + 8 * v8);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v16 + 8 * v8);
  *(v16 + 8 * v8) = 0x8000000000000000;
  result = sub_1D1753B88(64, 2, 0x1800000004, v18);
  *(v16 + 8 * v8) = v20;
  return result;
}

unint64_t sub_1D19539E8@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v34 = 0;
  StaticRVCClusterGroup.firstRunMode(with:)(&v34, v35);
  v5 = v36;
  v6 = MEMORY[0x1E69E7CC8];
  if (v36)
  {
    v33 = a1;
    a1 = v35[0];
    v32 = v35[1];
    v7 = *(v2 + *(type metadata accessor for EndpointPath(0) + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v6;
    v10 = sub_1D171D15C(v7);
    v11 = v6[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v14 = v9;
    if (v6[3] >= v13)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v6 = v35[0];
      }
    }

    else
    {
      sub_1D172684C(v13, isUniquelyReferenced_nonNull_native);
      v6 = v35[0];
      v15 = sub_1D171D15C(v7);
      if ((v14 & 1) != (v16 & 1))
      {
LABEL_22:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v10 = v15;
    }

    if ((v14 & 1) == 0)
    {
      v17 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
      sub_1D19DD7DC(v10, v7, v17, v6);
    }

    v1 = v6[7];
    v18 = *(v1 + 8 * v10);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *(v1 + 8 * v10);
    *(v1 + 8 * v10) = 0x8000000000000000;
    sub_1D1753B88(a1, 2, 0x1900000001, v19);
    *(v1 + 8 * v10) = v35[0];
    sub_1D192F928(a1, v32, v5);
    a1 = v33;
  }

  v5 = *(v2 + *(type metadata accessor for EndpointPath(0) + 24));
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = v6;
  v3 = sub_1D171D15C(v5);
  v22 = v6[2];
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v1) = v21;
  if (v6[3] >= v24)
  {
    if (v20)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_1D1737DF0();
    v6 = v35[0];
    goto LABEL_16;
  }

  sub_1D172684C(v24, v20);
  v6 = v35[0];
  v25 = sub_1D171D15C(v5);
  if ((v1 & 1) != (v26 & 1))
  {
    goto LABEL_22;
  }

  v3 = v25;
LABEL_16:

  if ((v1 & 1) == 0)
  {
    v27 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v3, v5, v27, v6);
  }

  v28 = v6[7];
  v29 = *(v28 + 8 * v3);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = *(v28 + 8 * v3);
  *(v28 + 8 * v3) = 0x8000000000000000;
  result = sub_1D1753B88(0, 2, 0x1800000004, v30);
  *(v28 + 8 * v3) = v35[0];
  *a1 = v6;
  return result;
}

uint64_t StaticRVCClusterGroup.goHome()()
{
  v1[5] = v0;
  v2 = type metadata accessor for EndpointPath(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = type metadata accessor for StaticRVCClusterGroup();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v1[10] = *(v5 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = type metadata accessor for ClusterPath(0);
  v1[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1953DDC, 0, 0);
}

uint64_t sub_1D1953DDC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[5];
  sub_1D1741B10(0, &qword_1EC6474C8, 0x1E696F5C0);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 24;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1D1953ECC;
  v5 = v0[14];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1953ECC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = a1;

  sub_1D1959D30(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1954000, 0, 0);
}

uint64_t sub_1D1954000()
{
  v53 = v0;
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 40);
    if (*(v2 + *(*(v0 + 64) + 48)) == 1)
    {
      v3 = *(v0 + 96);
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      sub_1D1953870(&v51);
      v49 = MEMORY[0x1E69E7CC0];
      sub_1D1A1456C(&v51, &v49);

      v6 = v49;
      *(v0 + 136) = v49;
      sub_1D19581A4(v2, v3, type metadata accessor for StaticRVCClusterGroup);
      v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v8 = swift_allocObject();
      *(v0 + 144) = v8;
      sub_1D1959DD8(v3, v8 + v7, type metadata accessor for StaticRVCClusterGroup);
      v9 = v1;
      v51 = 0xD000000000000016;
      v52 = 0x80000001D1EBE710;
      v10 = EndpointPath.description.getter();
      MEMORY[0x1D3890F70](v10);

      v11 = v51;
      v12 = v52;
      *(v0 + 152) = v52;
      if (qword_1EC6422E8 != -1)
      {
        swift_once();
      }

      if (qword_1EC649398)
      {
      }

      else
      {
        v6 = 0;
      }

      ObjectType = swift_getObjectType();
      v35 = v9;
      v36 = sub_1D190C444(v11, v12, ObjectType, 0x656D6F486F67, 0xE600000000000000, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v37 = swift_allocObject();
      *(v0 + 160) = v37;
      *(v37 + 24) = 0;
      *(v37 + 16) = v36;
      v38 = swift_allocObject();
      v38[2] = &unk_1D1E857E8;
      v38[3] = v8;
      v38[4] = v35;
      v38[5] = v6;
      v38[6] = v11;
      v38[7] = v12;
      v38[8] = ObjectType;
      v38[9] = 0x656D6F486F67;
      v38[10] = 0xE600000000000000;
      v38[11] = v37;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      v42 = swift_allocObject();
      *(v0 + 168) = v42;
      v43 = v35;

      swift_defaultActor_initialize();
      *(v42 + 16) = 0;
      v44 = *(*v42 + 112);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v45 - 8) + 56))(&v42[v44], 1, 1, v45);
      v46 = &v42[*(*v42 + 120)];
      *v46 = 0;
      *(v46 + 1) = 0;
      *(v42 + 14) = &unk_1D1E84150;
      *(v42 + 15) = v38;
      v47 = swift_allocObject();
      *(v0 + 176) = v47;
      v47[2] = v11;
      v47[3] = v12;
      v47[4] = ObjectType;
      v47[5] = 0x656D6F486F67;
      v47[6] = 0xE600000000000000;
      v47[7] = v37;

      return MEMORY[0x1EEE6DFA0](sub_1D19546E4, v42, 0);
    }

    else
    {
      v26 = swift_task_alloc();
      *(v0 + 200) = v26;
      *v26 = v0;
      v26[1] = sub_1D1954BE8;
      v27 = *(v0 + 40);

      return StaticRVCClusterGroup.stop()();
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 88);
    v14 = *(v0 + 40);
    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07A0B0);
    sub_1D19581A4(v14, v13, type metadata accessor for StaticRVCClusterGroup);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 88);
    if (v18)
    {
      v20 = *(v0 + 48);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 136446210;
      v48 = v22;
      v49 = 0xD000000000000016;
      v50 = 0x80000001D1EBE710;
      v51 = 3829371;
      v52 = 0xE300000000000000;
      *(v0 + 16) = *(v19 + *(v20 + 20));
      v23 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v23);

      MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
      *(v0 + 216) = *(v19 + *(v20 + 24));
      v24 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v24);

      MEMORY[0x1D3890F70](125, 0xE100000000000000);
      MEMORY[0x1D3890F70](v51, v52);

      sub_1D1959D30(v19, type metadata accessor for StaticRVCClusterGroup);
      v25 = sub_1D1B1312C(v49, v50, &v48);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D16EC000, v16, v17, "%{public}s: tried running Go Home command but operationalStateCluster was nil", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D3893640](v22, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    else
    {

      sub_1D1959D30(v19, type metadata accessor for StaticRVCClusterGroup);
    }

    v29 = *(v0 + 112);
    v30 = *(v0 + 88);
    v31 = *(v0 + 96);
    v32 = *(v0 + 56);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1D19546E4()
{
  v1 = v0[22];
  v2 = (v0[21] + *(*v0[21] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D1958D20;
  v2[1] = v1;
  sub_1D17169C0(v3);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1D19547C0;
  v6 = v0[21];

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D19547C0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1D19548D4;
  }

  else
  {
    v3 = sub_1D1954B18;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19548D4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);

  *(v0 + 24) = v1;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);

    v10 = *(v0 + 32);
    sub_1D19581A4(v9, v8, type metadata accessor for EndpointPath);
    v11 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v13 = v12;
    v14 = v11[7];
    v15 = type metadata accessor for StaticEndpoint();
    (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
    *v13 = v10;
    sub_1D1959DD8(v8, &v13[v11[5]], type metadata accessor for EndpointPath);
    v13[v11[6]] = 30;
    swift_willThrow();
  }

  v16 = *(v0 + 144);
  v17 = *(v0 + 128);

  v18 = *(v0 + 112);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 56);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D1954B18()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1954BE8()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1D1954D90;
  }

  else
  {
    v3 = sub_1D1954CFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1954CFC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1954D90()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1954E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1954E4C, 0, 0);
}

uint64_t sub_1D1954E4C()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[24] = v2;
  v3 = v0[22];
  v4 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1954FC0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_56;
  v0[14] = v5;
  [v4 goHomeWithExpectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1954FC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D1955190;
  }

  else
  {
    v3 = sub_1D19550D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19550D0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_1D1958308(v2, v1, 128);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1955190()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[25];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1955220()
{
  v11 = v0;
  v1 = v0[4];
  sub_1D19539E8(v0 + 2);
  v2 = v0[2];
  v0[5] = v2;
  v10 = 0;
  StaticRVCClusterGroup.firstRunMode(with:)(&v10, v8);
  if (v9)
  {
    v3 = v8[0];
    sub_1D192F928(v8[0], v8[1], v9);
    v0[3] = v2;
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1D1955350;
    v5 = v0[4];

    return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v3, v0 + 3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D1955350()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D19554C8;
  }

  else
  {
    v3 = sub_1D1955464;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1955464()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D19554C8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t StaticRVCClusterGroup.changeToRunMode(containing:expectedValues:)(_BYTE *a1, uint64_t *a2)
{
  *(v3 + 56) = *a1;
  v4 = *a2;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D1955558, 0, 0);
}

uint64_t sub_1D1955558()
{
  v12 = v0;
  v1 = *(v0 + 24);
  v11 = *(v0 + 56);
  v2.n128_f64[0] = StaticRVCClusterGroup.firstRunMode(with:)(&v11, v9);
  if (v10)
  {
    v3 = *(v0 + 32);
    v4 = v9[0];
    sub_1D192F928(v9[0], v9[1], v10);
    *(v0 + 16) = v3;
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_1D195566C;
    v6 = *(v0 + 24);

    return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v4, (v0 + 16));
  }

  else
  {
    v8 = *(v0 + 8);

    return v8(v2);
  }
}

uint64_t sub_1D195566C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19557A0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void sub_1D19557C8(char a1@<W0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StaticRVCClusterGroup();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v25) = a1;
  StaticRVCClusterGroup.firstRunMode(with:)(&v25, &v26);
  if (v28)
  {
    v11 = v26;
    sub_1D192F928(v26, v27, v28);
    v12 = 0;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07A0B0);
    sub_1D19581A4(v3, v10, type metadata accessor for StaticRVCClusterGroup);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6834C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136446210;
      v25 = v17;
      v26 = 3829371;
      v27 = 0xE300000000000000;
      v18 = type metadata accessor for EndpointPath(0);
      v24 = *&v10[*(v18 + 20)];
      v19 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v19);

      MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
      LOWORD(v24) = *&v10[*(v18 + 24)];
      v20 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v20);

      MEMORY[0x1D3890F70](125, 0xE100000000000000);
      v21 = v26;
      v22 = v27;
      sub_1D1959D30(v10, type metadata accessor for StaticRVCClusterGroup);
      v23 = sub_1D1B1312C(v21, v22, &v25);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_1D16EC000, v14, v15, a2, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    else
    {

      sub_1D1959D30(v10, type metadata accessor for StaticRVCClusterGroup);
    }

    v11 = 0;
    v12 = -1;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
}

unint64_t StaticRVCClusterGroup.startExpectedValues.getter@<X0>(void *a1@<X8>)
{
  v5 = 1;
  StaticRVCClusterGroup.firstRunMode(with:)(&v5, v6);
  v2 = v7;
  if (v7)
  {
    v3 = v6[0];
    sub_1D192F928(v6[0], v6[1], v7);
  }

  else
  {
    v3 = 0;
  }

  return StaticRVCClusterGroup.startExpectedValues(with:)(v3, v2 == 0, a1);
}

unint64_t StaticRVCClusterGroup.startExpectedValues(with:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7CC8];
  if ((a2 & 1) == 0)
  {
    v9 = *(v3 + *(type metadata accessor for EndpointPath(0) + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v7;
    v4 = sub_1D171D15C(v9);
    v12 = v7[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v15 = v11;
    if (v7[3] >= v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
      }
    }

    else
    {
      sub_1D172684C(v14, isUniquelyReferenced_nonNull_native);
      v16 = sub_1D171D15C(v9);
      if ((v15 & 1) != (v17 & 1))
      {
LABEL_22:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v4 = v16;
    }

    if ((v15 & 1) == 0)
    {
      v18 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
      sub_1D19DD7DC(v4, v9, v18, v7);
    }

    v19 = v7[7];
    v20 = *(v19 + 8 * v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v19 + 8 * v4);
    *(v19 + 8 * v4) = 0x8000000000000000;
    sub_1D1753B88(a1, 2, 0x1900000001, v21);
    *(v19 + 8 * v4) = v35;
  }

  a1 = *(v3 + *(type metadata accessor for EndpointPath(0) + 24));
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v7;
  v5 = sub_1D171D15C(a1);
  v24 = v7[2];
  v25 = (v23 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v4) = v23;
  if (v7[3] >= v26)
  {
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_1D1737DF0();
    v7 = v34;
    goto LABEL_16;
  }

  sub_1D172684C(v26, v22);
  v27 = sub_1D171D15C(a1);
  if ((v4 & 1) != (v28 & 1))
  {
    goto LABEL_22;
  }

  v5 = v27;
LABEL_16:

  if ((v4 & 1) == 0)
  {
    v29 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v5, a1, v29, v7);
  }

  v30 = v7[7];
  v31 = *(v30 + 8 * v5);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v30 + 8 * v5);
  *(v30 + 8 * v5) = 0x8000000000000000;
  result = sub_1D1753B88(1, 2, 0x1800000004, v32);
  *(v30 + 8 * v5) = v36;
  *a3 = v7;
  return result;
}

uint64_t sub_1D1955DE4()
{
  v16 = v0;
  v1 = v0[4];
  v15 = 1;
  StaticRVCClusterGroup.firstRunMode(with:)(&v15, &v12);
  v2 = v14;
  if (v14)
  {
    v3 = v12;
    sub_1D192F928(v12, v13, v14);
  }

  else
  {
    v3 = 0;
  }

  v4 = v2 == 0;
  v5 = v0[4];
  StaticRVCClusterGroup.startExpectedValues(with:)(v3, v4, v0 + 2);
  v6 = v0[2];
  v0[5] = v6;
  v15 = 1;
  StaticRVCClusterGroup.firstRunMode(with:)(&v15, &v12);
  if (v14)
  {
    v7 = v12;
    sub_1D192F928(v12, v13, v14);
    v0[3] = v6;
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_1D1955F5C;
    v9 = v0[4];

    return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v7, v0 + 3);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D1955F5C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D1959F74;
  }

  else
  {
    v3 = sub_1D1959F78;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v5 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ClusterPath(0);
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v3[11] = v9;
  v3[12] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D19561B0, 0, 0);
}

uint64_t sub_1D19561B0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_allocWithZone(MEMORY[0x1E696F690]) init];
  v0[13] = v5;
  v6 = sub_1D1E685DC();
  [v5 setNewMode_];

  sub_1D1741B10(0, &qword_1EC6474D0, 0x1E696F5C8);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 25;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D19562EC;
  v8 = v0[11];

  return sub_1D1A092C4(v8);
}

uint64_t sub_1D19562EC(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 120) = a1;

  sub_1D1959D30(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1956420, 0, 0);
}

uint64_t sub_1D1956420()
{
  v20 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[5];
  v17 = MEMORY[0x1E69E7CC0];
  v18 = v1;
  sub_1D1A1456C(&v18, &v17);
  v7 = v17;
  v0[16] = v17;
  sub_1D19581A4(v6, v4, type metadata accessor for StaticRVCClusterGroup);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v0[17] = v9;
  *(v9 + 16) = v2;
  sub_1D1959DD8(v4, v9 + v8, type metadata accessor for StaticRVCClusterGroup);
  v10 = v2;
  v18 = 0xD000000000000016;
  v19 = 0x80000001D1EBE710;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v18;
  v13 = v19;
  v0[18] = v19;
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_1D19565FC;
  v15 = v0[15];

  return sub_1D1915750(0x6F5465676E616863, 0xEC00000065646F4DLL, v15, v7, v12, v13, &unk_1D1E85818, v9);
}

uint64_t sub_1D19565FC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[18];
  if (v0)
  {
    v6 = v2[16];

    v7 = sub_1D19567EC;
  }

  else
  {
    v9 = v2[16];
    v8 = v2[17];
    v10 = v2[15];

    v7 = sub_1D195675C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D195675C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D19567EC()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);

    v5 = *(v0 + 24);
    sub_1D19581A4(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint();
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D1959DD8(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 120);
  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D19569FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1956A24, 0, 0);
}

uint64_t sub_1D1956A24()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[25] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1956BA4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647520, &qword_1D1E85850);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_52;
  v0[14] = v6;
  [v5 changeToModeWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1956BA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D1956D70;
  }

  else
  {
    v3 = sub_1D1956CB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1956CB4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  sub_1D1958E3C(v2, v1);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647528, 0x1E696F698);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1956D70()
{
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[26];
  v4 = v0[1];

  return v4();
}

void static StaticRVCClusterGroup.validate(response:endpointPath:)(void *a1, uint64_t a2)
{
  sub_1D1958E3C(a1, a2);
}

{
  sub_1D19596C4(a1, a2);
}

uint64_t StaticRVCClusterGroup.changeToCleanMode(containing:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for StaticRVCClusterGroup();
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1956E8C, 0, 0);
}

uint64_t sub_1D1956E8C()
{
  v35 = v0;
  v33 = v0[6];
  v1 = *(v0[5] + *(v33 + 44));
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = 0;
    v4 = (v1 + 56);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v5 = v0[4];
      v6 = *(v4 - 3);
      v0[8] = *(v4 - 1);
      v7 = *v4;
      v0[9] = *v4;

      v9 = sub_1D192D6B0(v8, v7);

      if (v9)
      {
        break;
      }

      ++v3;
      v4 += 4;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    v31 = swift_task_alloc();
    v0[10] = v31;
    *v31 = v0;
    v31[1] = sub_1D1957278;
    v32 = v0[5];

    return StaticRVCClusterGroup.changeToCleanMode(index:)(v6);
  }

  else
  {
LABEL_7:
    if (qword_1EE07A0A8 != -1)
    {
LABEL_18:
      swift_once();
    }

    v10 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07A0B0);
    sub_1D19581A4(v11, v10, type metadata accessor for StaticRVCClusterGroup);

    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[7];
    if (v16)
    {
      v18 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBE730, &v34);
      *(v19 + 12) = 2080;
      v0[2] = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474D8, &qword_1D1E85828);
      v21 = sub_1D1E678BC();
      v23 = sub_1D1B1312C(v21, v22, &v34);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2080;
      v0[3] = *(v17 + *(v33 + 44));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473A8, &qword_1D1E855B0);
      v24 = sub_1D1E678BC();
      v26 = v25;
      sub_1D1959D30(v17, type metadata accessor for StaticRVCClusterGroup);
      v27 = sub_1D1B1312C(v24, v26, &v34);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_1D16EC000, v14, v15, "%s Couldn't find a clean mode that contained all the specified tags: %s allRunningModes: %s'", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {

      sub_1D1959D30(v17, type metadata accessor for StaticRVCClusterGroup);
    }

    v28 = v0[7];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1D1957278()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19573C8, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[9];

    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1D19573C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t StaticRVCClusterGroup.changeToCleanMode(index:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for ClusterPath(0);
  v2[17] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1957560, 0, 0);
}

uint64_t sub_1D1957560()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[11];
  v3 = v0[12];
  v5 = [objc_allocWithZone(MEMORY[0x1E696F660]) init];
  v0[19] = v5;
  v6 = sub_1D1E685DC();
  [v5 setNewMode_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 1;
  v8 = inited + 32;
  *(inited + 40) = v4;
  *(inited + 48) = 2;
  v9 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D1741A30(v8, &qword_1EC6474E8, &unk_1D1E86820);
  v0[20] = sub_1D1951BB0(v9, 0x1Au);

  sub_1D1741B10(0, &qword_1EC6474F0, 0x1E696F5B8);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 26;
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1D1957720;
  v11 = v0[18];

  return sub_1D1A092C4(v11);
}

uint64_t sub_1D1957720(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 176) = a1;

  sub_1D1959D30(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1957854, 0, 0);
}

uint64_t sub_1D1957854()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  sub_1D19581A4(v0[12], v3, type metadata accessor for StaticRVCClusterGroup);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[23] = v6;
  *(v6 + 16) = v2;
  sub_1D1959DD8(v3, v6 + v5, type metadata accessor for StaticRVCClusterGroup);
  v7 = v2;
  v8 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v8);

  v0[24] = 0x80000001D1EBE710;
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_1D1957A14;
  v10 = v0[22];

  return sub_1D1915EBC(0x6F5465676E616863, 0xEC00000065646F4DLL, v10, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E85840, v6);
}

uint64_t sub_1D1957A14()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v6 = v2[20];

    v7 = sub_1D1957C00;
  }

  else
  {
    v9 = v2[22];
    v8 = v2[23];
    v10 = v2[20];

    v7 = sub_1D1957B74;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1957B74()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1957C00()
{
  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);

    v5 = *(v0 + 80);
    sub_1D19581A4(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint();
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D1959DD8(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t StaticRVCClusterGroup.changeToCleanModeCommand(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1D1957E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1957E40, 0, 0);
}

uint64_t sub_1D1957E40()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[25] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1957FC0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647508, &qword_1D1E90960);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_23;
  v0[14] = v6;
  [v5 changeToModeWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1957FC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D1959F80;
  }

  else
  {
    v3 = sub_1D19580D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19580D0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  sub_1D19596C4(v2, v1);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647510, 0x1E696F668);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D19581A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D195820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1952640(a1, a2, a3, a4, v4 + v11);
}

void sub_1D1958308(void *a1, uint64_t a2, int a3)
{
  v69 = type metadata accessor for ClusterPath(0);
  v7 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for EndpointPath(0);
  v9 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 commandResponseState];
  v13 = [v12 errorStateID];
  v14 = [v13 unsignedCharValue];

  StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(v14, &v75);
  v15 = v75;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE07A0B0);
  v70 = a2;
  sub_1D19581A4(a2, v11, type metadata accessor for EndpointPath);
  v17 = v12;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();

  v71 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v15 >> 8;
  v22 = v15;
  if (v20)
  {
    v67 = v3;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v77 = v64;
    *v23 = 16909826;
    *(v23 + 4) = v14;
    *(v23 + 5) = 2114;
    v68 = a3;
    v65 = v21;
    if (v21 <= 0xFE)
    {
      sub_1D1959F00();
      swift_allocError();
      *v28 = v22;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v66 = v22;
    *(v23 + 7) = v25;
    v63 = v24;
    *v24 = v26;
    *(v23 + 15) = 2082;
    v29 = [v17 errorStateLabel];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1D1E6781C();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = sub_1D1B1312C(v31, v33, &v77);

    *(v23 + 17) = v34;
    *(v23 + 25) = 2082;
    v35 = [v17 errorStateDetails];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1D1E6781C();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v27 = v68;
    v40 = sub_1D1B1312C(v37, v39, &v77);

    *(v23 + 27) = v40;
    *(v23 + 35) = 2082;
    v75 = 3829371;
    v76 = 0xE300000000000000;
    v41 = v72;
    v74 = *&v11[*(v72 + 20)];
    v42 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v42);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v74) = *&v11[*(v41 + 24)];
    v43 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v43);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v44 = v75;
    v45 = v76;
    sub_1D1959D30(v11, type metadata accessor for EndpointPath);
    v46 = sub_1D1B1312C(v44, v45, &v77);

    *(v23 + 37) = v46;
    *(v23 + 45) = 1026;
    *(v23 + 47) = v27;
    _os_log_impl(&dword_1D16EC000, v18, v71, "Validate MTRRVCOperationalStateClusterOperationalCommandResponseParams: (%{public}hhu) (%{public}@) label:(%{public}s) details:(%{public}s) path: %{public}s commandID: %{public}u", v23, 0x33u);
    v47 = v63;
    sub_1D1741A30(v63, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v47, -1, -1);
    v48 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v48, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);

    v22 = v66;
    if (v65 > 0xFE)
    {
      goto LABEL_22;
    }
  }

  else
  {

    sub_1D1959D30(v11, type metadata accessor for EndpointPath);
    v27 = a3;
    if (v21 > 0xFE)
    {
      goto LABEL_22;
    }
  }

  if (v22 > 0xFF || v22)
  {
    v49 = v22;
    v50 = v73;
    sub_1D19581A4(v70, v73, type metadata accessor for EndpointPath);
    *(v50 + *(v69 + 20)) = 24;
    v51 = [v17 errorStateDetails];
    if (v51)
    {
      v52 = v51;
      v53 = sub_1D1E6781C();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v56 = type metadata accessor for MatterCommandError();
    sub_1D1959D90(&qword_1EC6474F8, type metadata accessor for MatterCommandError);
    swift_allocError();
    v58 = v57;
    v59 = v56[8];
    v60 = type metadata accessor for StaticEndpoint();
    (*(*(v60 - 8) + 56))(&v58[v59], 1, 1, v60);
    *v58 = v49;
    sub_1D1959DD8(v73, &v58[v56[5]], type metadata accessor for ClusterPath);
    *&v58[v56[6]] = v27;
    v61 = &v58[v56[7]];
    *v61 = v53;
    v61[1] = v55;
    swift_willThrow();
  }

LABEL_22:
}

uint64_t sub_1D19589A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1953438(a1, a2, a3, a4, v4 + v11);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for StaticRVCClusterGroup();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[6];
  v8 = *(v7 + 16);

  v9 = *(v7 + 24);

  v10 = v0 + v3 + v1[7];
  if (*(v10 + 16))
  {

    v11 = *(v10 + 24);
  }

  v12 = *(v5 + v1[9]);

  v13 = *(v5 + v1[10]);

  v14 = *(v5 + v1[11]);

  v15 = (v5 + v1[15]);
  if (*v15)
  {

    v16 = v15[1];

    v17 = v15[2];

    v18 = v15[5];

    if (v15[9] != 1)
    {
    }

    v19 = v15[13];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1958C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1954E24(a1, a2, a3, a4, v4 + v11);
}

uint64_t sub_1D1958D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19569FC(a1, a2, a3, a4, v12, v4 + v11);
}

void sub_1D1958E3C(void *a1, uint64_t a2)
{
  v53 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EndpointPath(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 status];
  v12 = [v11 unsignedCharValue];

  StaticRVCClusterGroup.RunModeCommandError.init(rawValue:)(v12, &v59);
  v54 = v59;
  v57 = BYTE2(v59);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE07A0B0);
  sub_1D19581A4(a2, v10, type metadata accessor for EndpointPath);
  v14 = a1;
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6835C();
  v55 = v14;

  if (!os_log_type_enabled(v15, v16))
  {

    sub_1D1959D30(v10, type metadata accessor for EndpointPath);
    if (v57)
    {
      return;
    }

    goto LABEL_13;
  }

  v52 = v2;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v61 = v50;
  *v17 = 16909314;
  *(v17 + 4) = v12;
  *(v17 + 5) = 2114;
  v51 = a2;
  if (v57)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_1D1959EAC();
    swift_allocError();
    v21 = BYTE1(v54);
    *v22 = v54;
    v22[1] = v21 & 1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    v20 = v19;
  }

  *(v17 + 7) = v19;
  v49 = v18;
  *v18 = v20;
  *(v17 + 15) = 2082;
  v23 = [v55 statusText];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D1E6781C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = sub_1D1B1312C(v25, v27, &v61);

  *(v17 + 17) = v28;
  *(v17 + 25) = 2082;
  v59 = 3829371;
  v60 = 0xE300000000000000;
  v58 = *&v10[*(v7 + 20)];
  v29 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v29);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  LOWORD(v58) = *&v10[*(v7 + 24)];
  v30 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v30);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  v31 = v59;
  v32 = v60;
  sub_1D1959D30(v10, type metadata accessor for EndpointPath);
  v33 = sub_1D1B1312C(v31, v32, &v61);

  *(v17 + 27) = v33;
  _os_log_impl(&dword_1D16EC000, v15, v16, "Validate MTRRVCRunModeClusterChangeToModeResponseParams: (%{public}hhu) (%{public}@) statusText:(%{public}s) path: %{public}s", v17, 0x23u);
  v34 = v49;
  sub_1D1741A30(v49, &unk_1EC644000, &unk_1D1E75B00);
  MEMORY[0x1D3893640](v34, -1, -1);
  v35 = v50;
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v35, -1, -1);
  MEMORY[0x1D3893640](v17, -1, -1);

  a2 = v51;
  if ((v57 & 1) == 0)
  {
LABEL_13:
    v36 = v56;
    sub_1D19581A4(a2, v56, type metadata accessor for EndpointPath);
    *(v36 + *(v53 + 20)) = 25;
    v37 = [v55 statusText];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D1E6781C();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = v54 & 0x1FF | 0x4000;
    v43 = type metadata accessor for MatterCommandError();
    sub_1D1959D90(&qword_1EC6474F8, type metadata accessor for MatterCommandError);
    swift_allocError();
    v45 = v44;
    v46 = v43[8];
    v47 = type metadata accessor for StaticEndpoint();
    (*(*(v47 - 8) + 56))(&v45[v46], 1, 1, v47);
    *v45 = v42;
    sub_1D1959DD8(v56, &v45[v43[5]], type metadata accessor for ClusterPath);
    *&v45[v43[6]] = 0;
    v48 = &v45[v43[7]];
    *v48 = v39;
    v48[1] = v41;
    swift_willThrow();
  }
}

uint64_t objectdestroy_34Tm()
{
  v1 = type metadata accessor for StaticRVCClusterGroup();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[6];
  v8 = *(v7 + 16);

  v9 = *(v7 + 24);

  v10 = v0 + v3 + v1[7];
  if (*(v10 + 16))
  {

    v11 = *(v10 + 24);
  }

  v12 = *(v5 + v1[9]);

  v13 = *(v5 + v1[10]);

  v14 = *(v5 + v1[11]);

  v15 = (v5 + v1[15]);
  if (*v15)
  {

    v16 = v15[1];

    v17 = v15[2];

    v18 = v15[5];

    if (v15[9] != 1)
    {
    }

    v19 = v15[13];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D19595B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1957E18(a1, a2, a3, a4, v12, v4 + v11);
}

void sub_1D19596C4(void *a1, uint64_t a2)
{
  v56 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for EndpointPath(0);
  v8 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 status];
  v12 = [v11 unsignedCharValue];

  if (v12 > 1)
  {
    switch(v12)
    {
      case 2:
        v60 = 0;
        v57 = 1;
        v58 = 1;
        goto LABEL_14;
      case 3:
        v60 = 0;
        v57 = 2;
        v58 = 1;
        goto LABEL_14;
      case 64:
        v60 = 0;
        v57 = 3;
        v58 = 1;
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v60 = 0;
      v57 = 0;
      v58 = 1;
      goto LABEL_14;
    }

LABEL_12:
    v58 = 0;
    v60 = 0;
    goto LABEL_13;
  }

  v58 = 0;
  v60 = 1;
LABEL_13:
  v57 = v12;
LABEL_14:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE07A0B0);
  sub_1D19581A4(a2, v10, type metadata accessor for EndpointPath);
  v14 = a1;
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6835C();
  v59 = v14;

  if (!os_log_type_enabled(v15, v16))
  {

    sub_1D1959D30(v10, type metadata accessor for EndpointPath);
    if (v60)
    {
      return;
    }

    goto LABEL_26;
  }

  v53 = a2;
  v54 = v2;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v64 = v52;
  *v17 = 16909314;
  *(v17 + 4) = v12;
  *(v17 + 5) = 2114;
  v19 = v7;
  if (v60)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_1D1959E40();
    swift_allocError();
    v22 = v58;
    *v23 = v57;
    v23[1] = v22;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    v21 = v20;
  }

  *(v17 + 7) = v20;
  v51 = v18;
  *v18 = v21;
  *(v17 + 15) = 2082;
  v24 = [v59 statusText];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D1E6781C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v7 = v19;
  v29 = sub_1D1B1312C(v26, v28, &v64);

  *(v17 + 17) = v29;
  *(v17 + 25) = 2082;
  v62 = 3829371;
  v63 = 0xE300000000000000;
  v30 = v55;
  v61 = *&v10[*(v55 + 20)];
  v31 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v31);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  LOWORD(v61) = *&v10[*(v30 + 24)];
  v32 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v32);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  v33 = v62;
  v34 = v63;
  sub_1D1959D30(v10, type metadata accessor for EndpointPath);
  v35 = sub_1D1B1312C(v33, v34, &v64);

  *(v17 + 27) = v35;
  _os_log_impl(&dword_1D16EC000, v15, v16, "Validate MTRRVCCleanModeClusterChangeToModeResponseParams: (%{public}hhu) (%{public}@) statusText:(%{public}s) path: %{public}s", v17, 0x23u);
  v36 = v51;
  sub_1D1741A30(v51, &unk_1EC644000, &unk_1D1E75B00);
  MEMORY[0x1D3893640](v36, -1, -1);
  v37 = v52;
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v37, -1, -1);
  MEMORY[0x1D3893640](v17, -1, -1);

  a2 = v53;
  if ((v60 & 1) == 0)
  {
LABEL_26:
    sub_1D19581A4(a2, v7, type metadata accessor for EndpointPath);
    v7[*(v56 + 20)] = 26;
    v38 = [v59 statusText];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1D1E6781C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    if (v58)
    {
      v43 = 256;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 | v57 | 0x8000;
    v45 = type metadata accessor for MatterCommandError();
    sub_1D1959D90(&qword_1EC6474F8, type metadata accessor for MatterCommandError);
    swift_allocError();
    v47 = v46;
    v48 = v45[8];
    v49 = type metadata accessor for StaticEndpoint();
    (*(*(v49 - 8) + 56))(&v47[v48], 1, 1, v49);
    *v47 = v44;
    sub_1D1959DD8(v7, &v47[v45[5]], type metadata accessor for ClusterPath);
    *&v47[v45[6]] = 0;
    v50 = &v47[v45[7]];
    *v50 = v40;
    v50[1] = v42;
    swift_willThrow();
  }
}

uint64_t sub_1D1959D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1959D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1959DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1959E40()
{
  result = qword_1EC647500;
  if (!qword_1EC647500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647500);
  }

  return result;
}

unint64_t sub_1D1959EAC()
{
  result = qword_1EC647518;
  if (!qword_1EC647518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647518);
  }

  return result;
}

unint64_t sub_1D1959F00()
{
  result = qword_1EC647540;
  if (!qword_1EC647540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647540);
  }

  return result;
}

uint64_t sub_1D1959F88(uint64_t a1, char a2)
{
  if (a2 == 6)
  {
    v2 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    inited = swift_initStackObject();
    *(inited + 32) = 0;
    v5 = inited + 32;
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 36) = 10;
    if ((a2 - 1) > 3u)
    {
      v6 = 5;
    }

    else
    {
      v6 = qword_1D1E86840[(a2 - 1)];
    }

    *(inited + 40) = v6;
    *(inited + 48) = 2;
    v2 = sub_1D18D4B28(inited);
    swift_setDeallocating();
    sub_1D1741A30(v5, &qword_1EC646E70, &qword_1D1E83830);
  }

  v7 = sub_1D1964C58(v2);

  return v7;
}

id sub_1D195A08C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v22 = a3;
  v23 = a4;
  if (a4 >= 4u)
  {
    v10 = dword_1D1E86860[a3];
  }

  v8 = sub_1D1E692CC();
  v9 = sub_1D1E692AC();
  v11 = sub_1D1E692CC();
  StaticRVCClusterGroup.Command.commandFields.getter(&v20);
  if (v20)
  {
    v12 = MatterCommandFields.asDictionary()();
  }

  else
  {
    v12 = 0;
  }

  v20 = a3;
  v21 = a4;
  v13 = StaticRVCClusterGroup.Command.expectedValues.getter();
  v14 = sub_1D195D618(v13, a2, a3, a4);

  sub_1D18F9814(v14);

  if (v12)
  {
    v15 = sub_1D1E675DC();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v17 = sub_1D1E67BFC();

  v18 = [v16 initWithCommandID:v8 endpointID:v9 clusterID:v11 accessory:a1 commandFields:v15 expectedValues:v17];

  return v18;
}

id sub_1D195A2B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3 ^ 1;
  v5 = sub_1D1E692CC();
  v6 = sub_1D1E692AC();
  v7 = sub_1D1E692CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v9 = inited + 32;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 36) = 11;
  *(inited + 40) = v4 & 1;
  *(inited + 48) = 0;
  v10 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v9, &qword_1EC646E70, &qword_1D1E83830);
  v11 = sub_1D1964C58(v10);

  sub_1D18F9814(v11);

  v12 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v13 = sub_1D1E67BFC();

  v14 = [v12 initWithCommandID:v5 endpointID:v6 clusterID:v7 accessory:a1 commandFields:0 expectedValues:v13];

  return v14;
}

id sub_1D195A43C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_1D1E692CC();
  v7 = sub_1D1E692AC();
  v8 = sub_1D1E692CC();
  v9 = 20;
  if (a3 - 1 >= 2 && a3 != 4)
  {
    if (a3 == 6)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = 5;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v11 = sub_1D1E684DC();
  sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D17524E4(v9, 2, v11, isUniquelyReferenced_nonNull_native);

  v10 = MatterCommandFields.asDictionary()();

LABEL_7:
  v13 = sub_1D1959F88(a2, a3);
  sub_1D18F9814(v13);

  if (v10)
  {
    v14 = sub_1D1E675DC();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v16 = sub_1D1E67BFC();

  v17 = [v15 initWithCommandID:v6 endpointID:v7 clusterID:v8 accessory:a1 commandFields:v14 expectedValues:v16];

  return v17;
}

uint64_t StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v370 = a3;
  v371 = a2;
  v4 = type metadata accessor for StaticRVCClusterGroup();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v360 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v360 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v360 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v360 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v360 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v360 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v360 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v43 = &v360 - v42;
  v45 = *a1;
  v44 = *(a1 + 8);
  v46 = *(a1 + 16);
  v47 = v46 >> 5;
  if (v46 >> 5 <= 1)
  {
    v366 = v39;
    v367 = v34;
    v365 = v40;
    if (!v47)
    {
      v50 = v371;
      if (v45)
      {
        StaticRVCClusterGroup.firstCleaningRunningMode.getter(&v383);
        v51 = v384;
        if (!v384)
        {
          goto LABEL_179;
        }
      }

      else
      {
        StaticRVCClusterGroup.firstIdleRunningMode.getter(&v383);
        v51 = v384;
        if (!v384)
        {
LABEL_179:
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v340 = sub_1D1E6709C();
          __swift_project_value_buffer(v340, qword_1EE07A0B0);
          v341 = v365;
          sub_1D1963018(v50, v365, type metadata accessor for StaticRVCClusterGroup);
          v342 = v366;
          sub_1D1963018(v50, v366, type metadata accessor for StaticRVCClusterGroup);
          v343 = sub_1D1E6707C();
          v344 = sub_1D1E6835C();
          if (os_log_type_enabled(v343, v344))
          {
            v345 = swift_slowAlloc();
            v369 = swift_slowAlloc();
            *&v379 = v369;
            *v345 = 136446466;
            v346 = v367;
            LOBYTE(v383) = *(v341 + v367[5]);
            v347 = sub_1D1E678BC();
            v349 = v348;
            sub_1D196310C(v341, type metadata accessor for StaticRVCClusterGroup);
            v350 = sub_1D1B1312C(v347, v349, &v379);

            *(v345 + 4) = v350;
            *(v345 + 12) = 2082;
            v351 = v342 + v346[6];
            v352 = *(v351 + 2);
            v353 = *(v351 + 3);
            v383 = *v351;
            *&v384 = v352;
            *(&v384 + 1) = v353;

            v354 = sub_1D1E678BC();
            v356 = v355;
            v50 = v371;
            sub_1D196310C(v342, type metadata accessor for StaticRVCClusterGroup);
            v357 = sub_1D1B1312C(v354, v356, &v379);

            *(v345 + 14) = v357;
            _os_log_impl(&dword_1D16EC000, v343, v344, "Start/Pause button was pressed, but current state is unsupported. Operational State: (%{public}s). Running Mode: (%{public}s)", v345, 0x16u);
            v358 = v369;
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v358, -1, -1);
            MEMORY[0x1D3893640](v345, -1, -1);

            goto LABEL_185;
          }

          sub_1D196310C(v342, type metadata accessor for StaticRVCClusterGroup);
          v167 = v341;
          goto LABEL_184;
        }
      }

      v75 = v50;
      v110 = v383;
      sub_1D192F928(v383, *(&v383 + 1), v51);
      v111 = 0;
      goto LABEL_35;
    }

    LODWORD(v92) = v46 & 0x1F;
    v58 = v45;
    v52 = v44;
    LODWORD(v93) = v46;
    sub_1D1962B64(v45, v44, v46 & 0x1F);
    v50 = v371;
    if (qword_1EE07A0A8 == -1)
    {
LABEL_26:
      v94 = sub_1D1E6709C();
      v95 = __swift_project_value_buffer(v94, qword_1EE07A0B0);
      sub_1D1963018(v50, v43, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1962B64(v58, v52, v92);
      v363 = v95;
      v96 = sub_1D1E6707C();
      v97 = sub_1D1E6835C();
      LODWORD(v369) = v93;
      sub_1D1962B38(v58, v52, v93, sub_1D18FB818, sub_1D1771B5C);
      v98 = os_log_type_enabled(v96, v97);
      v368 = v58;
      if (v98)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v379 = v100;
        *v99 = 136446466;
        *&v383 = v58;
        *(&v383 + 1) = v52;
        LOBYTE(v384) = v92;
        v101 = v52;
        sub_1D1962B64(v58, v52, v92);
        v102 = sub_1D1E678BC();
        v104 = sub_1D1B1312C(v102, v103, &v379);

        *(v99 + 4) = v104;
        *(v99 + 12) = 2082;
        v105 = &v43[v367[7]];
        v106 = *(v105 + 2);
        if (v106)
        {
          v107 = *(v105 + 1);
          v108 = *(v105 + 2);
        }

        else
        {
          v106 = 0xE700000000000000;
          v107 = 0x6E776F6E6B6E75;
        }

        sub_1D196310C(v43, type metadata accessor for StaticRVCClusterGroup);
        v168 = sub_1D1B1312C(v107, v106, &v379);

        *(v99 + 14) = v168;
        _os_log_impl(&dword_1D16EC000, v96, v97, "Setting RVC clean mode to: %{public}s, current mode: %{public}s", v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v100, -1, -1);
        MEMORY[0x1D3893640](v99, -1, -1);

        v50 = v371;
      }

      else
      {
        v101 = v52;

        sub_1D196310C(v43, type metadata accessor for StaticRVCClusterGroup);
      }

      v169 = v368;
      if (!v92)
      {
        v188 = v369;
        sub_1D1962B38(v368, v101, v369, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v169, v101, v188, sub_1D18FB818, sub_1D1771B5C);
        v189 = v370;
        *v370 = v169;
LABEL_117:
        v234 = 1;
        goto LABEL_118;
      }

      v364 = v101;
      if (v92 == 1)
      {
        LOBYTE(v379) = v368;
        StaticRVCClusterGroup.bestFitSelectingSecondaryTag(_:existingTags:)(&v379, 0, &v383);
        v170 = v384;
        if (v384)
        {
          v172 = *(&v383 + 1);
          v171 = v383;
          v173 = *(&v384 + 1);

          v174 = sub_1D1E6707C();
          v175 = sub_1D1E6835C();
          sub_1D192F928(v171, v172, v170);
          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            v367 = swift_slowAlloc();
            *&v379 = v367;
            *v176 = 136446466;
            LOBYTE(v383) = v169;
            v177 = ModeClusterSemanticTag.description.getter();
            v179 = sub_1D1B1312C(v177, v178, &v379);

            *(v176 + 4) = v179;
            *(v176 + 12) = 2082;
            v383 = __PAIR128__(v172, v171);
            *&v384 = v170;
            *(&v384 + 1) = v173;

            v180 = sub_1D1E678BC();
            v182 = sub_1D1B1312C(v180, v181, &v379);

            *(v176 + 14) = v182;
            _os_log_impl(&dword_1D16EC000, v174, v175, "Setting RVC clean mode with best fit for tag %{public}s to: %{public}s", v176, 0x16u);
            v183 = v367;
            swift_arrayDestroy();
            v184 = v183;
            v185 = v371;
            MEMORY[0x1D3893640](v184, -1, -1);
            v186 = v176;
            v50 = v185;
            MEMORY[0x1D3893640](v186, -1, -1);

            v187 = v368;
          }

          else
          {

            v187 = v169;
          }

          sub_1D1962B38(v187, v364, v369, sub_1D18FB818, sub_1D1771B5C);
          sub_1D192F928(v171, v172, v170);
LABEL_116:
          v189 = v370;
          *v370 = v171;
          goto LABEL_117;
        }

        v198 = v169;
        goto LABEL_122;
      }

      if (v368 | v101)
      {
        if (v368 ^ 1 | v101)
        {
          StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)(1, 1, 0, &v383);
          if (v384)
          {
            v171 = v383;
            sub_1D192F928(v383, *(&v383 + 1), v384);
            v226 = sub_1D1E6707C();
            v227 = sub_1D1E6835C();
            if (os_log_type_enabled(v226, v227))
            {
              v228 = swift_slowAlloc();
              v229 = swift_slowAlloc();
              *&v383 = v229;
              *v228 = 136446210;
              *&v379 = v171;
              v230 = sub_1D1E678BC();
              v232 = v50;
              v233 = sub_1D1B1312C(v230, v231, &v383);

              *(v228 + 4) = v233;
              v50 = v232;
              _os_log_impl(&dword_1D16EC000, v226, v227, "Setting RVC clean mode with best fit for Vacuum+Mop: %{public}s", v228, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v229);
              MEMORY[0x1D3893640](v229, -1, -1);
              MEMORY[0x1D3893640](v228, -1, -1);
            }

            sub_1D1962B38(v368, v364, v369, sub_1D18FB818, sub_1D1771B5C);
            goto LABEL_116;
          }
        }

        else
        {
          StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)(0, 1, 0, &v383);
          if (v384)
          {
            v75 = v50;
            v110 = v383;
            sub_1D192F928(v383, *(&v383 + 1), v384);
            v190 = sub_1D1E6707C();
            v191 = sub_1D1E6835C();
            if (os_log_type_enabled(v190, v191))
            {
              v192 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *&v383 = v193;
              *v192 = 136446210;
              *&v379 = v110;
              v194 = sub_1D1E678BC();
              v196 = sub_1D1B1312C(v194, v195, &v383);

              *(v192 + 4) = v196;
              _os_log_impl(&dword_1D16EC000, v190, v191, "Setting RVC clean mode with best fit for Mop: %{public}s", v192, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v193);
              MEMORY[0x1D3893640](v193, -1, -1);
              MEMORY[0x1D3893640](v192, -1, -1);
            }

            v197 = v368;
            goto LABEL_108;
          }
        }

        v198 = v368;
LABEL_122:
        sub_1D1962B38(v198, v364, v369, sub_1D18FB818, sub_1D1771B5C);
        goto LABEL_179;
      }

      v217 = v50;
      v218 = v368;
      v75 = v217;
      StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)(1, 0, 0, &v383);
      if (!v384)
      {
        sub_1D1962B38(v169, v364, v369, sub_1D18FB818, sub_1D1771B5C);
        v50 = v217;
        goto LABEL_179;
      }

      v110 = v383;
      sub_1D192F928(v383, *(&v383 + 1), v384);
      v219 = sub_1D1E6707C();
      v220 = sub_1D1E6835C();
      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *&v383 = v222;
        *v221 = 136446210;
        *&v379 = v110;
        v223 = sub_1D1E678BC();
        v225 = sub_1D1B1312C(v223, v224, &v383);

        *(v221 + 4) = v225;
        _os_log_impl(&dword_1D16EC000, v219, v220, "Setting RVC clean mode with best fit for Vacuum: %{public}s", v221, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v222);
        MEMORY[0x1D3893640](v222, -1, -1);
        MEMORY[0x1D3893640](v221, -1, -1);
      }

      v197 = v218;
LABEL_108:
      sub_1D1962B38(v197, v364, v369, sub_1D18FB818, sub_1D1771B5C);
      v111 = 1;
      goto LABEL_35;
    }

LABEL_190:
    swift_once();
    goto LABEL_26;
  }

  if (v47 != 2)
  {
    if (v47 == 3)
    {
      v48 = v370;
      *v370 = v45;
      v49 = 3;
LABEL_146:
      *(v48 + 8) = v49;
      return sub_1D196310C(v371, type metadata accessor for StaticRVCClusterGroup);
    }

    if (!(v44 | v45) && v46 == 128)
    {
      v72 = v34;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v73 = sub_1D1E6709C();
      v74 = __swift_project_value_buffer(v73, qword_1EE07A0B0);
      v75 = v371;
      sub_1D1963018(v371, v29, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1963018(v75, v26, type metadata accessor for StaticRVCClusterGroup);
      v76 = sub_1D1E6707C();
      v77 = sub_1D1E6835C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v369 = v74;
        v79 = v78;
        v368 = swift_slowAlloc();
        *&v379 = v368;
        *v79 = 136446466;
        LOBYTE(v383) = v29[*(v72 + 20)];
        v80 = sub_1D1E678BC();
        v82 = v81;
        sub_1D196310C(v29, type metadata accessor for StaticRVCClusterGroup);
        v83 = sub_1D1B1312C(v80, v82, &v379);
        v75 = v371;

        *(v79 + 4) = v83;
        *(v79 + 12) = 2082;
        v84 = &v26[*(v72 + 24)];
        v85 = *(v84 + 2);
        v86 = *(v84 + 3);
        v383 = *v84;
        *&v384 = v85;
        *(&v384 + 1) = v86;

        v87 = sub_1D1E678BC();
        v89 = v88;
        sub_1D196310C(v26, type metadata accessor for StaticRVCClusterGroup);
        v90 = sub_1D1B1312C(v87, v89, &v379);

        *(v79 + 14) = v90;
        _os_log_impl(&dword_1D16EC000, v76, v77, "Generating pause cleaning command. Current operational state: %{public}s. Current run mode: %{public}s", v79, 0x16u);
        v91 = v368;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v91, -1, -1);
        MEMORY[0x1D3893640](v79, -1, -1);
      }

      else
      {

        sub_1D196310C(v26, type metadata accessor for StaticRVCClusterGroup);
        sub_1D196310C(v29, type metadata accessor for StaticRVCClusterGroup);
      }

      v127 = (v75 + *(v72 + 24));
      v128 = v127[1];
      v383 = *v127;
      v384 = v128;
      if (!StaticRVCClusterGroup.RunMode.isIdle.getter())
      {
        goto LABEL_102;
      }

      v129 = *(v75 + *(v72 + 20));
      v130 = sub_1D1E6707C();
      if (v129 == 4)
      {
        v131 = sub_1D1E6833C();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          v133 = "Attempted to pause RVC, but it's already idle. This is expected to fail.";
LABEL_100:
          _os_log_impl(&dword_1D16EC000, v130, v131, v133, v132, 2u);
          MEMORY[0x1D3893640](v132, -1, -1);
          sub_1D1962B38(0, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        }
      }

      else
      {
        v131 = sub_1D1E6835C();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          v133 = "Generating a pause while seeking charger, pausing RVC.";
          goto LABEL_100;
        }
      }

LABEL_102:
      v215 = v370;
      *v370 = 0;
      *(v215 + 8) = 4;
      return sub_1D196310C(v75, type metadata accessor for StaticRVCClusterGroup);
    }

    if (v45 == 1 && !v44 && v46 == 128)
    {
      v109 = 1;
LABEL_45:
      v48 = v370;
      *v370 = v109;
      v49 = 4;
      goto LABEL_146;
    }

    if (v45 == 2 && !v44 && v46 == 128)
    {
      v109 = 2;
      goto LABEL_45;
    }

    v365 = v40;
    v366 = v39;
    v367 = v34;
    if (v45 != 3 || v44 || v46 != 128)
    {
      v249 = v35;
      v250 = (v371 + *(v34 + 24));
      v251 = v250[1];
      v383 = *v250;
      v384 = v251;
      if (StaticRVCClusterGroup.RunMode.isIdle.getter())
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v252 = sub_1D1E6709C();
        __swift_project_value_buffer(v252, qword_1EE07A0B0);
        v50 = v371;
        sub_1D1963018(v371, v10, type metadata accessor for StaticRVCClusterGroup);
        v253 = sub_1D1E6707C();
        v254 = sub_1D1E6833C();
        if (os_log_type_enabled(v253, v254))
        {
          v255 = swift_slowAlloc();
          v256 = swift_slowAlloc();
          *&v383 = v256;
          *v255 = 136446210;
          sub_1D1963018(v10, v249, type metadata accessor for StaticRVCClusterGroup);
          v257 = sub_1D1E678BC();
          v258 = v50;
          v260 = v259;
          sub_1D196310C(v10, type metadata accessor for StaticRVCClusterGroup);
          v261 = sub_1D1B1312C(v257, v260, &v383);
          v50 = v258;

          *(v255 + 4) = v261;
          v262 = "Asked to stop cleaning, but we are already idle. %{public}s";
LABEL_174:
          _os_log_impl(&dword_1D16EC000, v253, v254, v262, v255, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v256);
          v300 = v256;
          goto LABEL_175;
        }

        v320 = v10;
      }

      else
      {
        StaticRVCClusterGroup.stopCommand.getter(&v383);
        v111 = BYTE8(v383);
        if (BYTE8(v383) != 255)
        {
          v110 = v383;
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v321 = sub_1D1E6709C();
          __swift_project_value_buffer(v321, qword_1EE07A0B0);
          sub_1D1963018(v371, v13, type metadata accessor for StaticRVCClusterGroup);
          v322 = sub_1D1E6707C();
          v323 = sub_1D1E6835C();
          if (os_log_type_enabled(v322, v323))
          {
            v324 = swift_slowAlloc();
            v325 = swift_slowAlloc();
            *&v383 = v325;
            *v324 = 136446210;
            LOBYTE(v379) = v13[v367[5]];
            v326 = sub_1D1E678BC();
            v328 = v327;
            sub_1D196310C(v13, type metadata accessor for StaticRVCClusterGroup);
            v329 = sub_1D1B1312C(v326, v328, &v383);

            *(v324 + 4) = v329;
            _os_log_impl(&dword_1D16EC000, v322, v323, "Generating stop cleaning command. Current operational state: %{public}s", v324, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v325);
            MEMORY[0x1D3893640](v325, -1, -1);
            MEMORY[0x1D3893640](v324, -1, -1);
          }

          else
          {

            sub_1D196310C(v13, type metadata accessor for StaticRVCClusterGroup);
          }

          v75 = v371;
          goto LABEL_35;
        }

        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v291 = sub_1D1E6709C();
        __swift_project_value_buffer(v291, qword_1EE07A0B0);
        v50 = v371;
        sub_1D1963018(v371, v16, type metadata accessor for StaticRVCClusterGroup);
        v253 = sub_1D1E6707C();
        v292 = sub_1D1E6833C();
        if (os_log_type_enabled(v253, v292))
        {
          v255 = swift_slowAlloc();
          v293 = swift_slowAlloc();
          *&v383 = v293;
          *v255 = 136446210;
          v294 = *&v16[v367[10]];
          sub_1D17859B8();
          v295 = sub_1D1E6817C();
          v296 = v50;
          v298 = v297;
          sub_1D196310C(v16, type metadata accessor for StaticRVCClusterGroup);
          v299 = sub_1D1B1312C(v295, v298, &v383);
          v50 = v296;

          *(v255 + 4) = v299;
          _os_log_impl(&dword_1D16EC000, v253, v292, "Could not create stop command. %{public}s", v255, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v293);
          v300 = v293;
LABEL_175:
          MEMORY[0x1D3893640](v300, -1, -1);
          MEMORY[0x1D3893640](v255, -1, -1);

          goto LABEL_179;
        }

        v320 = v16;
      }

LABEL_178:
      sub_1D196310C(v320, type metadata accessor for StaticRVCClusterGroup);
      goto LABEL_179;
    }

    v199 = v38;
    v200 = v37;
    v201 = v36;
    v369 = v41;
    v50 = v371;
    v202 = (v371 + *(v34 + 24));
    v203 = v202[1];
    v383 = *v202;
    v384 = v203;
    if (StaticRVCClusterGroup.RunMode.isIdle.getter())
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v204 = sub_1D1E6709C();
      __swift_project_value_buffer(v204, qword_1EE07A0B0);
      sub_1D1963018(v50, v23, type metadata accessor for StaticRVCClusterGroup);
      v205 = sub_1D1E6707C();
      v206 = sub_1D1E6835C();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *&v383 = v208;
        *v207 = 136446210;
        LOBYTE(v379) = v23[v367[5]];
        v209 = v50;
        v210 = sub_1D1E678BC();
        v212 = v211;
        sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
        v213 = v210;
        v50 = v209;
        v214 = sub_1D1B1312C(v213, v212, &v383);

        *(v207 + 4) = v214;
        _os_log_impl(&dword_1D16EC000, v205, v206, "Generating start cleaning command. Current operational state: %{public}s", v207, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v208);
        MEMORY[0x1D3893640](v208, -1, -1);
        MEMORY[0x1D3893640](v207, -1, -1);
      }

      else
      {

        sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
      }

      StaticRVCClusterGroup.startCommand.getter(&v383);
      v75 = v50;
      v111 = BYTE8(v383);
      if (BYTE8(v383) == 255)
      {
        v200 = v369;
        sub_1D1963018(v75, v369, type metadata accessor for StaticRVCClusterGroup);
        v253 = sub_1D1E6707C();
        v254 = sub_1D1E6833C();
        v50 = v75;
        if (os_log_type_enabled(v253, v254))
        {
          v255 = swift_slowAlloc();
          v256 = swift_slowAlloc();
          *&v383 = v256;
          *v255 = 136446210;
          v330 = *(v200 + v367[10]);
          sub_1D17859B8();
          v331 = sub_1D1E6817C();
          v333 = v332;
          sub_1D196310C(v200, type metadata accessor for StaticRVCClusterGroup);
          v334 = sub_1D1B1312C(v331, v333, &v383);

          *(v255 + 4) = v334;
          v262 = "StaticRVCClusterGroup returned nil start command. (%{public}s)";
          goto LABEL_174;
        }

        goto LABEL_176;
      }

      v110 = v383;
LABEL_35:
      v112 = v370;
      *v370 = v110;
      *(v112 + 8) = v111;
      return sub_1D196310C(v75, type metadata accessor for StaticRVCClusterGroup);
    }

    v301 = v202[1];
    v383 = *v202;
    v384 = v301;
    if (!StaticRVCClusterGroup.RunMode.isCleaning.getter())
    {
      v302 = v202[1];
      v379 = *v202;
      *v380 = v302;
      if (!StaticRVCClusterGroup.RunMode.isMapping.getter())
      {
        goto LABEL_179;
      }
    }

    if (!sub_1D17C4F24(*(v50 + v367[5]), &unk_1F4D65210))
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v335 = sub_1D1E6709C();
      __swift_project_value_buffer(v335, qword_1EE07A0B0);
      sub_1D1963018(v50, v200, type metadata accessor for StaticRVCClusterGroup);
      v253 = sub_1D1E6707C();
      v254 = sub_1D1E6835C();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        *&v383 = v256;
        *v255 = 136446210;
        LOBYTE(v379) = *(v200 + v367[5]);
        v336 = sub_1D1E678BC();
        v338 = v337;
        sub_1D196310C(v200, type metadata accessor for StaticRVCClusterGroup);
        v339 = sub_1D1B1312C(v336, v338, &v383);

        *(v255 + 4) = v339;
        v262 = "Asked to start cleaning, but current state is unsupported. Operational State: (%{public}s)";
        goto LABEL_174;
      }

LABEL_176:

      v320 = v200;
      goto LABEL_178;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v303 = sub_1D1E6709C();
    __swift_project_value_buffer(v303, qword_1EE07A0B0);
    sub_1D1963018(v50, v199, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1963018(v50, v201, type metadata accessor for StaticRVCClusterGroup);
    v304 = sub_1D1E6707C();
    v305 = sub_1D1E6835C();
    if (os_log_type_enabled(v304, v305))
    {
      v306 = swift_slowAlloc();
      v369 = swift_slowAlloc();
      *&v379 = v369;
      *v306 = 136446466;
      v307 = v367;
      LOBYTE(v383) = *(v199 + v367[5]);
      v308 = sub_1D1E678BC();
      v310 = v309;
      sub_1D196310C(v199, type metadata accessor for StaticRVCClusterGroup);
      v311 = sub_1D1B1312C(v308, v310, &v379);

      *(v306 + 4) = v311;
      *(v306 + 12) = 2082;
      v312 = v201 + v307[6];
      v313 = *(v312 + 16);
      v314 = *(v312 + 24);
      v383 = *v312;
      *&v384 = v313;
      *(&v384 + 1) = v314;

      v315 = sub_1D1E678BC();
      v317 = v316;
      v50 = v371;
      sub_1D196310C(v201, type metadata accessor for StaticRVCClusterGroup);
      v318 = sub_1D1B1312C(v315, v317, &v379);

      *(v306 + 14) = v318;
      _os_log_impl(&dword_1D16EC000, v304, v305, "Asked to start cleaning, but we are not idle. Generating resume command. Current operational state: %{public}s. Current run mode: %{public}s", v306, 0x16u);
      v319 = v369;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v319, -1, -1);
      MEMORY[0x1D3893640](v306, -1, -1);
    }

    else
    {

      sub_1D196310C(v201, type metadata accessor for StaticRVCClusterGroup);
      sub_1D196310C(v199, type metadata accessor for StaticRVCClusterGroup);
    }

    v189 = v370;
    *v370 = 1;
    v234 = 4;
LABEL_118:
    *(v189 + 8) = v234;
    return sub_1D196310C(v50, type metadata accessor for StaticRVCClusterGroup);
  }

  v52 = &v379;
  v53 = v371 + *(v34 + 60);
  v54 = *(v53 + 16);
  v383 = *v53;
  v384 = v54;
  v55 = *(v53 + 80);
  v387 = *(v53 + 64);
  v388 = v55;
  v389[0] = *(v53 + 96);
  *(v389 + 13) = *(v53 + 109);
  v56 = *(v53 + 48);
  v385 = *(v53 + 32);
  v386 = v56;
  v57 = *(&v383 + 1);
  v58 = v383;
  v59 = v384;
  v60 = *(v53 + 40);
  v390 = *(v53 + 24);
  v391 = v60;
  *(v394 + 13) = *(v53 + 101);
  v61 = *(v53 + 88);
  v62 = *(v53 + 56);
  v393 = *(v53 + 72);
  v394[0] = v61;
  v392 = v62;
  LODWORD(v369) = v46;
  if (!v383)
  {
    v366 = v35;
    v367 = v34;
    v113 = v44;
    v114 = v45;
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v115 = sub_1D1E6709C();
    __swift_project_value_buffer(v115, qword_1EE07A0B0);
    v50 = v371;
    sub_1D1963018(v371, v33, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1771B4C(v114, v113);
    v116 = sub_1D1E6707C();
    v117 = sub_1D1E6833C();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v373[0] = v119;
      *v118 = 136446466;
      *&v379 = v114;
      BYTE8(v379) = v113;
      v120 = sub_1D1E678BC();
      v122 = sub_1D1B1312C(v120, v121, v373);

      *(v118 + 4) = v122;
      *(v118 + 12) = 2082;
      sub_1D1963018(v33, v366, type metadata accessor for StaticRVCClusterGroup);
      v123 = sub_1D1E678BC();
      v125 = v124;
      sub_1D196310C(v33, type metadata accessor for StaticRVCClusterGroup);
      v126 = sub_1D1B1312C(v123, v125, v373);
      v50 = v371;

      *(v118 + 14) = v126;
      _os_log_impl(&dword_1D16EC000, v116, v117, "Trying to create a selectRooms command but there is no service area! %{public}s rvcCluster:%{public}s", v118, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v119, -1, -1);
      MEMORY[0x1D3893640](v118, -1, -1);

      sub_1D1962B38(v114, v113, v369, sub_1D18FB818, sub_1D1771B5C);
LABEL_185:
      result = sub_1D196310C(v50, type metadata accessor for StaticRVCClusterGroup);
      v359 = v370;
      *v370 = 0;
      *(v359 + 8) = -1;
      return result;
    }

    v166 = v369;
    sub_1D1962B38(v114, v113, v369, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v114, v113, v166, sub_1D18FB818, sub_1D1771B5C);

    v167 = v33;
LABEL_184:
    sub_1D196310C(v167, type metadata accessor for StaticRVCClusterGroup);
    goto LABEL_185;
  }

  v363 = v383;
  if (!v44)
  {
    v367 = v384;
    v364 = v44;
    v134 = v45;
    sub_1D1771B4C(v45, 0);
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v135 = sub_1D1E6709C();
    __swift_project_value_buffer(v135, qword_1EE07A0B0);
    sub_1D1741C08(&v383, &v379, &qword_1EC646FD0, &qword_1D1E841D0);
    v43 = v364;
    v136 = v369;
    sub_1D1962B38(v134, v364, v369, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1741C08(&v383, &v379, &qword_1EC646FD0, &qword_1D1E841D0);
    v137 = sub_1D1E6707C();
    v138 = sub_1D1E6835C();
    sub_1D1962B38(v134, v43, v136, sub_1D18FB818, sub_1D1771B5C);
    if (!os_log_type_enabled(v137, v138))
    {
      sub_1D1962B38(v134, v43, v136, sub_1D18FB818, sub_1D1771B5C);

      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
LABEL_144:
      v48 = v370;
      *v370 = v134;
      goto LABEL_145;
    }

    LODWORD(v365) = v138;
    v366 = v137;
    v368 = v134;
    v139 = swift_slowAlloc();
    v361 = swift_slowAlloc();
    v381[0] = v361;
    v362 = v139;
    *v139 = 136315394;
    v50 = *(v58 + 16);
    if (!v50)
    {
      v141 = MEMORY[0x1E69E7CC0];
LABEL_143:
      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      *&v379 = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647548, &qword_1D1E88510);
      v281 = sub_1D1E678BC();
      v283 = sub_1D1B1312C(v281, v282, v381);

      v284 = v362;
      *(v362 + 1) = v283;
      *(v284 + 6) = 2080;
      *&v379 = v367;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647550, &unk_1D1E858A0);
      v285 = sub_1D1E678BC();
      v287 = v286;
      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      v288 = sub_1D1B1312C(v285, v287, v381);

      *(v284 + 14) = v288;
      v289 = v366;
      _os_log_impl(&dword_1D16EC000, v366, v365, "Changing selected areas to: %s, current selectedAreas: %s", v284, 0x16u);
      v290 = v361;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v290, -1, -1);
      MEMORY[0x1D3893640](v284, -1, -1);
      v134 = v368;
      sub_1D1962B38(v368, v364, v369, sub_1D18FB818, sub_1D1771B5C);

      goto LABEL_144;
    }

    v140 = 0;
    v92 = v58 + 32;
    v93 = (v368 + 32);
    v141 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v142 = *(v58 + 16);
LABEL_57:
      if (v140 < v142)
      {
        v143 = (v92 + 48 * v140);
        v145 = *v143;
        v144 = v143[1];
        *&v380[9] = *(v143 + 25);
        v379 = v145;
        *v380 = v144;
        ++v140;
        v146 = *(v368 + 16);
        v147 = v93;
        do
        {
          if (!v146)
          {
            if (v140 != v50)
            {
              goto LABEL_57;
            }

            goto LABEL_143;
          }

          v148 = *v147++;
          --v146;
        }

        while (v148 != v145);
        sub_1D18B869C(&v379, v373);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v372 = v141;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178D634(0, *(v141 + 16) + 1, 1);
          v141 = v372;
        }

        v151 = *(v141 + 16);
        v150 = *(v141 + 24);
        v43 = (v151 + 1);
        if (v151 >= v150 >> 1)
        {
          sub_1D178D634((v150 > 1), v151 + 1, 1);
          v141 = v372;
        }

        *(v141 + 16) = v43;
        v152 = (v141 + 48 * v151);
        v153 = v379;
        v154 = *v380;
        *(v152 + 57) = *&v380[9];
        v152[2] = v153;
        v152[3] = v154;
        v58 = v363;
        if (v140 != v50)
        {
          continue;
        }

        goto LABEL_143;
      }

      break;
    }

    __break(1u);
    goto LABEL_190;
  }

  if (v44 == 1)
  {
    v365 = v40;
    v366 = v39;
    v367 = v34;
    v368 = v45;
    v364 = v44;
    v379 = v383;
    *v380 = v384;
    *&v380[40] = *(v53 + 56);
    *&v380[56] = *(v53 + 72);
    *&v380[72] = *(v53 + 88);
    *&v380[85] = *(v53 + 101);
    *&v380[8] = *(v53 + 24);
    *&v380[24] = *(v53 + 40);
    ServiceArea.map(for:)(v45, v381);
    v63 = v382;
    if (!v382)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v237 = sub_1D1E6709C();
      __swift_project_value_buffer(v237, qword_1EE07A0B0);
      *&v380[48] = v387;
      *&v380[64] = v388;
      *&v380[80] = v389[0];
      *&v380[93] = *(v389 + 13);
      v379 = v383;
      *v380 = v384;
      *&v380[16] = v385;
      *&v380[32] = v386;
      sub_1D1741C08(&v383, v373, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D192D0CC(&v379, v373);
      v238 = sub_1D1E6707C();
      v239 = sub_1D1E6833C();
      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      if (os_log_type_enabled(v238, v239))
      {
        v240 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        v242 = v57;
        v243 = v241;
        *v240 = 67109378;
        v376 = v392;
        v377 = v393;
        v378[0] = v394[0];
        *(v378 + 13) = *(v394 + 13);
        v374 = v390;
        v375 = v391;
        v244 = v58;
        v245 = v368;
        *(v240 + 4) = v368;
        *(v240 + 8) = 2082;
        v372 = v241;
        v373[0] = v244;
        v373[1] = v242;
        v373[2] = v59;
        v246 = sub_1D1E678BC();
        v248 = sub_1D1B1312C(v246, v247, &v372);

        *(v240 + 10) = v248;
        _os_log_impl(&dword_1D16EC000, v238, v239, "Failed to find map for selected map ID: %u rvcCluster:%{public}s", v240, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v243);
        MEMORY[0x1D3893640](v243, -1, -1);
        MEMORY[0x1D3893640](v240, -1, -1);
        sub_1D1962B38(v245, v364, v369, sub_1D18FB818, sub_1D1771B5C);
      }

      else
      {
        sub_1D1962B38(v368, v364, v369, sub_1D18FB818, sub_1D1771B5C);

        sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      }

      v50 = v371;
      goto LABEL_179;
    }

    *&v380[40] = v392;
    *&v380[56] = v393;
    *&v380[72] = v394[0];
    *&v380[85] = *(v394 + 13);
    *&v380[8] = v390;
    v366 = v381[1];
    v367 = v57;
    v379 = __PAIR128__(v57, v58);
    *v380 = v59;
    *&v380[24] = v391;
    LODWORD(v365) = v381[0];
    v64 = ServiceArea.validAreas(for:)(LODWORD(v381[0]));
    v65 = *(v64 + 16);
    if (v65)
    {
      v361 = v63;
      *&v379 = MEMORY[0x1E69E7CC0];
      v362 = v64;
      sub_1D178D5B4(0, v65, 0);
      v66 = v362;
      v67 = v379;
      v68 = *(v379 + 16);
      v69 = 8;
      do
      {
        v70 = v66[v69];
        *&v379 = v67;
        v71 = *(v67 + 24);
        if (v68 >= v71 >> 1)
        {
          sub_1D178D5B4((v71 > 1), v68 + 1, 1);
          v66 = v362;
          v67 = v379;
        }

        *(v67 + 16) = v68 + 1;
        *(v67 + 4 * v68 + 32) = v70;
        v69 += 12;
        ++v68;
        --v65;
      }

      while (v65);

      v58 = v363;
      v63 = v361;
    }

    else
    {

      v67 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v263 = sub_1D1E6709C();
    __swift_project_value_buffer(v263, qword_1EE07A0B0);
    sub_1D1741C08(&v383, &v379, &qword_1EC646FD0, &qword_1D1E841D0);
    sub_1D1741C08(&v383, &v379, &qword_1EC646FD0, &qword_1D1E841D0);

    v264 = sub_1D1E6707C();
    v265 = sub_1D1E6835C();

    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      v363 = swift_slowAlloc();
      v373[0] = v363;
      *v266 = 136315650;
      LODWORD(v379) = v365;
      *(&v379 + 1) = v366;
      *v380 = v63;
      v267 = sub_1D1E678BC();
      LODWORD(v366) = v265;
      v269 = sub_1D1B1312C(v267, v268, v373);

      *&v380[40] = v392;
      *&v380[56] = v393;
      *&v380[72] = v394[0];
      *&v380[85] = *(v394 + 13);
      v270 = v391;
      *&v380[8] = v390;
      *(v266 + 4) = v269;
      *(v266 + 12) = 2080;
      *&v379 = v58;
      *(&v379 + 1) = v367;
      *v380 = v59;
      *&v380[24] = v270;
      v271 = v368;
      v272 = ServiceArea.supportedAreas(for:)(v368);
      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      *&v379 = v272;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647548, &qword_1D1E88510);
      v273 = sub_1D1E678BC();
      v275 = sub_1D1B1312C(v273, v274, v373);

      *(v266 + 14) = v275;
      *(v266 + 22) = 2080;
      *&v379 = v59;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647550, &unk_1D1E858A0);
      v276 = sub_1D1E678BC();
      v278 = v277;
      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      v279 = sub_1D1B1312C(v276, v278, v373);

      *(v266 + 24) = v279;
      _os_log_impl(&dword_1D16EC000, v264, v366, "Changing selected map to: %s, areas to select: %s, current selectedAreas: %s", v266, 0x20u);
      v280 = v363;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v280, -1, -1);
      MEMORY[0x1D3893640](v266, -1, -1);

      sub_1D1962B38(v271, v364, v369, sub_1D18FB818, sub_1D1771B5C);
    }

    else
    {

      sub_1D1962B38(v368, v364, v369, sub_1D18FB818, sub_1D1771B5C);

      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
    }

    v48 = v370;
    *v370 = v67;
LABEL_145:
    v49 = 2;
    goto LABEL_146;
  }

  v155 = v44;
  v156 = v45;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v157 = sub_1D1E6709C();
  __swift_project_value_buffer(v157, qword_1EE07A0B0);
  *&v380[48] = v387;
  *&v380[64] = v388;
  *&v380[80] = v389[0];
  *&v380[93] = *(v389 + 13);
  v379 = v383;
  *v380 = v384;
  *&v380[16] = v385;
  *&v380[32] = v386;
  sub_1D192D0CC(&v379, v373);
  v158 = sub_1D1E6707C();
  v159 = sub_1D1E6835C();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v373[0] = v161;
    *v160 = 136315138;
    v381[0] = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647550, &unk_1D1E858A0);
    v162 = sub_1D1E678BC();
    v164 = v163;
    sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
    v165 = sub_1D1B1312C(v162, v164, v373);

    *(v160 + 4) = v165;
    _os_log_impl(&dword_1D16EC000, v158, v159, "Changing selected map to all. Current selectedAreas: %s", v160, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v161);
    MEMORY[0x1D3893640](v161, -1, -1);
    MEMORY[0x1D3893640](v160, -1, -1);
  }

  else
  {

    sub_1D1741A30(&v383, &qword_1EC646FD0, &qword_1D1E841D0);
  }

  v235 = v371;
  sub_1D1962B38(v156, v155, v369, sub_1D18FB818, sub_1D1771B5C);
  v236 = v370;
  *v370 = MEMORY[0x1E69E7CC0];
  *(v236 + 8) = 2;
  return sub_1D196310C(v235, type metadata accessor for StaticRVCClusterGroup);
}

uint64_t sub_1D195D618(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;

    v11 = 0;
    v29 = a4;
    for (i = MEMORY[0x1E69E7CC0]; v8; i = v31)
    {
      v31 = i;
      v13 = v11;
LABEL_10:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v13 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      v17 = *(a1 + 56) + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v16;
      v21 = inited + 32;
      *(inited + 40) = v18;
      *(inited + 48) = v19;
      v22 = sub_1D18D6FA8(inited);
      swift_setDeallocating();
      sub_1D1741AF8(v18, v19);
      sub_1D1741A30(v21, &qword_1EC6474E8, &unk_1D1E86820);
      v23 = sub_1D1E692AC();
      v24 = dword_1D1E8686C[v29];
      v25 = sub_1D1E692CC();
      v26 = sub_1D1E692CC();
      v27 = [objc_opt_self() attributePathWithEndpointID:v23 clusterID:v25 attributeID:v26];

      v28 = _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(v22, v27);

      result = sub_1D17A386C(v28);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {

        return i;
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v31 = i;
        v11 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.CleanMode.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      MEMORY[0x1D3892850](4);
      sub_1D1E6923C();

      return sub_1D1E678EC();
    }

    else
    {
      if (v4 | v5)
      {
        if (v4 ^ 1 | v5)
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }

      return MEMORY[0x1D3892850](v8);
    }
  }

  else
  {
    MEMORY[0x1D3892850](3);
    MEMORY[0x1D3892850](v4);
    if (v5)
    {
      sub_1D1E6922C();

      return sub_1D176D34C(a1, v5);
    }

    else
    {
      return sub_1D1E6922C();
    }
  }
}

uint64_t StaticRVCClusterGroup.Command.CleanMode.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.CleanMode.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D195D9FC()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.CleanMode.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D195DA54()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.CleanMode.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.Command.RunMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.Command.RoomSelection.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1D3892850](2);
      return sub_1D1E6924C();
    }

    else
    {
      return MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](1);
    result = MEMORY[0x1D3892850](*(v1 + 16));
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 32);
      do
      {
        v5 = *v4++;
        result = sub_1D1E6924C();
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.RoomSelection.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.RoomSelection.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D195DC18()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.RoomSelection.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D195DC70()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.RoomSelection.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v87 = a3;
  v5 = type metadata accessor for StaticEndpoint();
  v85 = *(v5 - 8);
  v6 = v85[8];
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v81 - v11;
  v13 = type metadata accessor for StaticRVCClusterGroup();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v83 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v84 = &v81 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v81 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v81 - v22;
  v24 = *(type metadata accessor for StaticMatterDevice() + 56);
  v86 = a2;
  v25 = *(a2 + v24);
  v26 = a1;
  v27 = [a1 endpointID];
  v28 = [v27 unsignedShortValue];

  if (!*(v25 + 16) || (v29 = sub_1D171D15C(v28), (v30 & 1) == 0))
  {

    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_6;
  }

  sub_1D1963018(*(v25 + 56) + v85[9] * v29, v8, type metadata accessor for StaticEndpoint);
  sub_1D1741C08(&v8[*(v5 + 40)], v12, &qword_1EC644778, &unk_1D1E75B10);
  sub_1D196310C(v8, type metadata accessor for StaticEndpoint);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

LABEL_6:
    sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
    result = sub_1D1741A30(v12, &qword_1EC644778, &unk_1D1E75B10);
LABEL_7:
    v32 = v87;
    *v87 = 0;
    v32[1] = 0;
    v33 = -4;
LABEL_8:
    *(v32 + 16) = v33;
    return result;
  }

  v34 = v23;
  sub_1D1963080(v12, v23);
  v35 = v26;
  HMMatterCommand.associatedMatterCommand.getter(&v90);
  if (!v93)
  {

    sub_1D1741A30(&v90, &qword_1EC646A98, &unk_1D1E858B0);
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (!swift_dynamicCast())
  {
LABEL_41:

    goto LABEL_42;
  }

  v36 = v88;
  if (v89 > 1u)
  {
    if (v89 != 2)
    {
      if (v89 == 3)
      {

        sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
        result = sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
        v32 = v87;
        *v87 = v36;
        v32[1] = 0;
        v33 = 96;
      }

      else
      {
        if (v88)
        {
          if (v88 == 1)
          {

            sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
            result = sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
            v48 = xmmword_1D1E85870;
          }

          else
          {

            sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
            result = sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
            v48 = xmmword_1D1E85860;
          }

          v32 = v87;
          *v87 = v48;
        }

        else
        {

          sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
          result = sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
          v32 = v87;
          *v87 = 0;
          v32[1] = 0;
        }

        v33 = 0x80;
      }

      goto LABEL_8;
    }

    v42 = &v23[*(v13 + 60)];
    v43 = *v42;
    if (*v42)
    {
      v44 = *(v42 + 1);
      v45 = v42[114];

      v46 = *(v36 + 16);
      sub_1D19630E4(v36, 2);
      if (!v46)
      {
        sub_1D19630E4(v36, 2);
        sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
        result = sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
LABEL_61:
        v32 = v87;
        *v87 = xmmword_1D1E85880;
        goto LABEL_62;
      }

      if (v46 == *(v43 + 16))
      {
        if ((v45 & 1) == 0 || !v44)
        {
          sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
          sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
LABEL_60:
          result = sub_1D19630E4(v36, 2);
          goto LABEL_61;
        }

        v47 = *(v44 + 16);
        sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
        result = sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
        if (v47 <= 1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
        result = sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
      }

      v32 = v87;
      *v87 = v36;
      v32[1] = 0;
LABEL_62:
      v33 = 64;
      goto LABEL_8;
    }

    v54 = qword_1EE07A0A8;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = sub_1D1E6709C();
    __swift_project_value_buffer(v55, qword_1EE07A0B0);
    v56 = v83;
    sub_1D1963018(v23, v83, type metadata accessor for StaticRVCClusterGroup);

    v57 = sub_1D1E6707C();
    v58 = sub_1D1E6833C();
    sub_1D19630E4(v36, 2);
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v90 = v60;
      *v59 = 136446466;
      v61 = MEMORY[0x1D3891260](v36, MEMORY[0x1E69E7668]);
      v85 = v35;
      v63 = v62;
      sub_1D19630E4(v36, 2);
      v64 = sub_1D1B1312C(v61, v63, &v90);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      sub_1D1963018(v56, v84, type metadata accessor for StaticRVCClusterGroup);
      v65 = sub_1D1E678BC();
      v67 = v66;
      sub_1D196310C(v56, type metadata accessor for StaticRVCClusterGroup);
      v68 = sub_1D1B1312C(v65, v67, &v90);

      *(v59 + 14) = v68;
      _os_log_impl(&dword_1D16EC000, v57, v58, "Trying to create a selectRooms command but there is no service area! %{public}s rvcCluster:%{public}s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v60, -1, -1);
      MEMORY[0x1D3893640](v59, -1, -1);

      sub_1D19630E4(v36, 2);
    }

    else
    {
      sub_1D19630E4(v36, 2);
      sub_1D19630E4(v36, 2);

      sub_1D196310C(v56, type metadata accessor for StaticRVCClusterGroup);
    }

LABEL_42:
    sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
    result = sub_1D196310C(v34, type metadata accessor for StaticRVCClusterGroup);
    goto LABEL_7;
  }

  if (v89)
  {
    StaticRVCClusterGroup.cleanMode(with:)(v88, &v90);
    v49 = v92;
    if (v92)
    {
      v51 = v90;
      v50 = v91;
      v52 = v93;
      v53 = *(StaticRVCClusterGroup.CleanMode.secondaryTags.getter() + 16);

      if (v53)
      {

        sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
        sub_1D196310C(v34, type metadata accessor for StaticRVCClusterGroup);

        result = sub_1D192F928(v51, v50, v49);
        v33 = 32;
      }

      else
      {
        v90 = v51;
        v91 = v50;
        v92 = v49;
        v93 = v52;
        if (StaticRVCClusterGroup.CleanMode.isVacuumOnly.getter())
        {

          sub_1D192F928(v51, v50, v49);
          sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
          result = sub_1D196310C(v34, type metadata accessor for StaticRVCClusterGroup);
          v36 = 0;
          v52 = 0;
          v33 = 34;
        }

        else
        {
          v90 = v51;
          v91 = v50;
          v92 = v49;
          v93 = v52;
          if ((StaticRVCClusterGroup.CleanMode.isMopOnly.getter() & 1) == 0)
          {
            v90 = v51;
            v91 = v50;
            v92 = v49;
            v93 = v52;
            v80 = StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter();

            sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
            sub_1D196310C(v34, type metadata accessor for StaticRVCClusterGroup);
            result = sub_1D192F928(v51, v50, v49);
            if (v80)
            {
              v32 = v87;
              *v87 = xmmword_1D1E85860;
              v33 = 34;
              goto LABEL_8;
            }

            goto LABEL_7;
          }

          sub_1D192F928(v51, v50, v49);
          sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
          result = sub_1D196310C(v34, type metadata accessor for StaticRVCClusterGroup);
          v52 = 0;
          v33 = 34;
          v36 = 1;
        }
      }

      v32 = v87;
      *v87 = v36;
      v32[1] = v52;
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  StaticRVCClusterGroup.runMode(with:)(v88, &v90);
  v37 = v92;
  if (!v92)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v69 = sub_1D1E6709C();
    __swift_project_value_buffer(v69, qword_1EE07A0B0);
    v70 = v23;
    v71 = v82;
    sub_1D1963018(v70, v82, type metadata accessor for StaticRVCClusterGroup);
    v72 = sub_1D1E6707C();
    v73 = sub_1D1E6833C();
    if (!os_log_type_enabled(v72, v73))
    {

      sub_1D196310C(v71, type metadata accessor for StaticRVCClusterGroup);
      goto LABEL_42;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v90 = v75;
    *v74 = 134218242;
    *(v74 + 4) = v36;
    *(v74 + 12) = 2082;
    sub_1D1963018(v71, v84, type metadata accessor for StaticRVCClusterGroup);
    v76 = sub_1D1E678BC();
    v78 = v77;
    sub_1D196310C(v71, type metadata accessor for StaticRVCClusterGroup);
    v79 = sub_1D1B1312C(v76, v78, &v90);

    *(v74 + 14) = v79;
    _os_log_impl(&dword_1D16EC000, v72, v73, "Failed to find runMode for id: %lu rvcCluster:%{public}s", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1D3893640](v75, -1, -1);
    MEMORY[0x1D3893640](v74, -1, -1);

    goto LABEL_41;
  }

  v39 = v90;
  v38 = v91;
  v40 = StaticRVCClusterGroup.RunMode.isCleaning.getter();

  sub_1D196310C(v86, type metadata accessor for StaticMatterDevice);
  sub_1D196310C(v23, type metadata accessor for StaticRVCClusterGroup);
  result = sub_1D192F928(v39, v38, v37);
  v41 = v87;
  if (v40)
  {
    *v87 = xmmword_1D1E85870;
  }

  else
  {
    *v87 = 0;
    v41[1] = 0;
  }

  *(v41 + 16) = 0;
  return result;
}

id StaticRVCClusterGroup.Command.Template.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28[-1] - v6;
  v8 = type metadata accessor for StaticRVCClusterGroup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28[-1] - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = a2;
  v20 = type metadata accessor for StaticEndpoint();
  sub_1D1741C08(v19 + *(v20 + 40), v7, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC644778, &unk_1D1E75B10);
    return 0;
  }

  else
  {
    sub_1D1963080(v7, v15);
    v28[0] = v16;
    v28[1] = v17;
    v29 = v18;
    sub_1D1963018(v15, v13, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1962B38(v16, v17, v18, sub_1D1962B64, sub_1D1771B4C);
    StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(v28, v13, &v30);
    v22 = v31;
    if (v31 == 255)
    {
      v21 = 0;
    }

    else
    {
      v23 = v30;
      v24 = v19 + *(v20 + 20);
      v25 = type metadata accessor for EndpointPath(0);
      v21 = sub_1D195A08C(v27, *(v24 + *(v25 + 24)), v23, v22);
      sub_1D19630F8(v23, v22);
    }

    sub_1D196310C(v15, type metadata accessor for StaticRVCClusterGroup);
  }

  return v21;
}

double StaticRVCClusterGroup.Command.Template.matterCommand(endpoint:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31[-v6];
  v8 = type metadata accessor for StaticClusterGroups();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for StaticRVCClusterGroup();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31[-v18];
  v20 = *v2;
  v33 = *(v2 + 8);
  v34 = v20;
  v32 = *(v2 + 16);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 16))(v21, v22);
  sub_1D1741C08(v11, v7, &qword_1EC644778, &unk_1D1E75B10);
  sub_1D196310C(v11, type metadata accessor for StaticClusterGroups);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC644778, &unk_1D1E75B10);
    result = 0.0;
    v24 = v35;
    *v35 = 0u;
    v24[1] = 0u;
    *(v24 + 4) = 0;
  }

  else
  {
    v25 = v35;
    sub_1D1963080(v7, v19);
    v27 = v33;
    v26 = v34;
    v36[0] = v34;
    v36[1] = v33;
    v28 = v32;
    v37 = v32;
    sub_1D1963018(v19, v17, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1962B38(v26, v27, v28, sub_1D1962B64, sub_1D1771B4C);
    StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(v36, v17, &v38);
    v29 = v39;
    if (v39 == 255)
    {
      sub_1D196310C(v19, type metadata accessor for StaticRVCClusterGroup);
      *(v25 + 4) = 0;
      result = 0.0;
      *v25 = 0u;
      v25[1] = 0u;
    }

    else
    {
      v30 = v38;
      *(v25 + 3) = &type metadata for StaticRVCClusterGroup.Command;
      *(v25 + 4) = sub_1D18FA450();
      *v25 = v30;
      *(v25 + 8) = v29;
      sub_1D196310C(v19, type metadata accessor for StaticRVCClusterGroup);
    }
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.Template.isCompatible(with:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D17419CC(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v4 >> 5;
    if (v4 >> 5 == 2)
    {
      if (v10 >> 5 != 1)
      {
        if (v10 >> 5)
        {
          sub_1D1771B4C(v3, v2);
          goto LABEL_22;
        }

        sub_1D1771B4C(v3, v2);
        goto LABEL_14;
      }

      sub_1D1771B4C(v3, v2);
    }

    else
    {
      if (v6 != 1)
      {
        if (v6)
        {
          sub_1D1962B38(v3, v2, v4, sub_1D1962B64, sub_1D1771B4C);
        }

        else if (v3)
        {
          sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
          sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
          return (v10 >> 5) - 1 < 2u;
        }

LABEL_22:
        sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
        return 0;
      }

      v7 = v4 & 0x1F;
      if (v10 >> 5 != 2)
      {
        if (v10 >> 5)
        {
          sub_1D1962B64(v3, v2, v7);
          goto LABEL_22;
        }

        sub_1D1962B64(v3, v2, v7);
LABEL_14:
        sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
        return (v8 & 1) != 0;
      }

      sub_1D1962B64(v3, v2, v7);
    }

    sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
    return 1;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.Template.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = v6 >> 5;
  if (v6 >> 5 <= 1)
  {
    if (!v7)
    {
      MEMORY[0x1D3892850](0);
      v9 = v4 & 1;
      return MEMORY[0x1D3892850](v9);
    }

    v11 = v6 & 0x1F;
    MEMORY[0x1D3892850](1);
    if (v11)
    {
      if (v11 != 1)
      {
        if (v4 | v5)
        {
          if (v4 ^ 1 | v5)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }

          return MEMORY[0x1D3892850](v9);
        }

        goto LABEL_32;
      }

      MEMORY[0x1D3892850](4);
      sub_1D1E6923C();

      return sub_1D1E678EC();
    }

    else
    {
      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](v4);
      if (v5)
      {
        sub_1D1E6922C();

        return sub_1D176D34C(a1, v5);
      }

      else
      {
        return sub_1D1E6922C();
      }
    }
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v8 = 6;
LABEL_10:
        MEMORY[0x1D3892850](v8);
        return sub_1D1E6924C();
      }

      if (v5 | v4 || v6 != 128)
      {
        if (v4 == 1 && !v5 && v6 == 128)
        {
          v9 = 4;
        }

        else if (v4 == 2 && !v5 && v6 == 128)
        {
          v9 = 5;
        }

        else if (v4 == 3 && !v5 && v6 == 128)
        {
          v9 = 7;
        }

        else
        {
          v9 = 8;
        }
      }

      else
      {
        v9 = 3;
      }

      return MEMORY[0x1D3892850](v9);
    }

    MEMORY[0x1D3892850](2);
    if (v5)
    {
      if (v5 == 1)
      {
        v8 = 2;
        goto LABEL_10;
      }

LABEL_32:
      v9 = 0;
      return MEMORY[0x1D3892850](v9);
    }

    MEMORY[0x1D3892850](1);
    result = MEMORY[0x1D3892850](*(v4 + 16));
    v12 = *(v4 + 16);
    if (v12)
    {
      v13 = (v4 + 32);
      do
      {
        v14 = *v13++;
        result = sub_1D1E6924C();
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.Template.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.Template.hash(into:)(v3);
  return sub_1D1E6926C();
}