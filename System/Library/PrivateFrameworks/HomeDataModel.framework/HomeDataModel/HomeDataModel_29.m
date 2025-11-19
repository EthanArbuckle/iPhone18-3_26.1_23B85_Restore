uint64_t sub_1D193C2F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1D176CD14(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_1D1951AE4(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for StaticAccessory.DeviceIdentifier);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1D193C4F8(uint64_t a1)
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
    v8 = (v3 + 56);
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
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D1E6920C();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D193C828(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActionService();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for ActionService);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      ActionService.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for ActionService);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D193CB30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticZone();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  v15 = sub_1D1E6880C();
  v16 = v15;
  if (*(v13 + 16))
  {
    v48 = v2;
    v17 = 0;
    v18 = *(v13 + 56);
    v50 = (v13 + 56);
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
    v49 = (v19 + 63) >> 6;
    v54 = v5 + 16;
    v55 = v12;
    v51 = v5;
    v52 = v13;
    v22 = (v5 + 8);
    v56 = v15;
    v53 = v15 + 56;
    while (v21)
    {
      v60 = (v21 - 1) & v21;
      v61 = v17;
      v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_17:
      v29 = *(v13 + 48);
      v59 = *(v57 + 72);
      sub_1D1951AE4(v29 + v59 * v24, v12, type metadata accessor for StaticZone);
      v30 = v16[5];
      sub_1D1E6920C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v31 = v58;
      v32 = &v12[*(v58 + 20)];
      v33 = *v32;
      v34 = *(v32 + 1);
      sub_1D1E678EC();
      v35 = *&v12[*(v31 + 24)];
      MEMORY[0x1D3892850](*(v35 + 16));
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = v35 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v38 = *(v51 + 72);
        v39 = *(v51 + 16);
        do
        {
          v39(v8, v37, v4);
          sub_1D1E676EC();
          (*v22)(v8, v4);
          v37 += v38;
          --v36;
        }

        while (v36);
      }

      result = sub_1D1E6926C();
      v16 = v56;
      v40 = -1 << *(v56 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v53 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v12 = v55;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v53 + 8 * v42);
          if (v46 != -1)
          {
            v23 = __clz(__rbit64(~v46)) + (v42 << 6);
            v13 = v52;
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v41) & ~*(v53 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v13 = v52;
      v12 = v55;
LABEL_9:
      *(v53 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_1D1951AE4(v12, v16[6] + v23 * v59, type metadata accessor for StaticZone);
      ++v16[2];
      v21 = v60;
      v17 = v61;
    }

    v25 = v17;
    result = v50;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v27 >= v49)
      {
        break;
      }

      v28 = v50[v27];
      ++v25;
      if (v28)
      {
        v60 = (v28 - 1) & v28;
        v61 = v27;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        goto LABEL_17;
      }
    }

    v47 = 1 << *(v13 + 32);
    if (v47 >= 64)
    {
      bzero(v50, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v50 = -1 << v47;
    }

    v2 = v48;
    *(v13 + 16) = 0;
  }

  *v2 = v16;
  return result;
}

uint64_t sub_1D193CFE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticActionSet();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticActionSet);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticActionSet.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticActionSet);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D193D2F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticRoom(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticRoom);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticRoom.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticRoom);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D193D5F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticUser();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v39 = v2;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
      v44 = (v16 - 1) & v16;
LABEL_17:
      v23 = *(v8 + 48);
      v43 = *(v41 + 72);
      sub_1D1951AE4(v23 + v43 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticUser);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v25 = v42;
      v26 = &v7[v42[5]];
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
        v8 = v40;
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v8 = v40;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v43, type metadata accessor for StaticUser);
      ++*(v11 + 16);
      v16 = v44;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        v44 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v8 + 32);
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    v2 = v39;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D193D9A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataModel.StateSubscription.Reason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1D176CFB8(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_1D1951AE4(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for DataModel.StateSubscription.Reason);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1D193DBBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1D1E684EC();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1D193DDDC(uint64_t result, unint64_t a2, char a3)
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
    sub_1D193628C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D1947808(&qword_1EC6439E0, &qword_1D1E72F60);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D1949F70(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D1E6920C();
  v10 = dword_1D1E856A4[v4];
  sub_1D1E6924C();
  result = sub_1D1E6926C();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (dword_1D1E856A4[*(*(v8 + 48) + a2)] != v10)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193DF58(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticCameraProfile();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D19364E8(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D19466C8();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194A19C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticCameraProfile);
      v22 = _s13HomeDataModel19StaticCameraProfileV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticCameraProfile);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticCameraProfile);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193E19C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticMediaProfile();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D19367F0(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D19468D4();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194A474(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticMediaProfile);
      v22 = _s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticMediaProfile);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticMediaProfile);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193E3E0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticMediaSystem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D1936AF8(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D1946AE0();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194A74C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticMediaSystem);
      v22 = _s13HomeDataModel17StaticMediaSystemV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticMediaSystem);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticMediaSystem);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193E624(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D1936E00(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D1946CEC();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194AA24(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticAccessory.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticAccessory);
      v22 = _s13HomeDataModel15StaticAccessoryV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticAccessory);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticAccessory);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193E868(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticServiceGroup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D1937108(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D16FC668();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194ACFC(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticServiceGroup);
      v22 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticServiceGroup);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticServiceGroup);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193EAAC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticServiceGroup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D19373A4(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D16FC668();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194AF64(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticServiceGroup);
      v22 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticServiceGroup);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticServiceGroup);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193ECF0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1D19376AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D1946EF8();
      goto LABEL_12;
    }

    sub_1D194B23C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D174A5FC(qword_1EE07DD78);
  v15 = sub_1D1E676DC();
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
      sub_1D174A5FC(&qword_1EE07D170);
      v23 = sub_1D1E6775C();
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193EF6C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1D193A6B8(v6 + 1, &qword_1EC6439D0, &unk_1D1E8EAF0, ServiceKind.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D1947808(&qword_1EC6439D0, &unk_1D1E8EAF0);
      goto LABEL_16;
    }

    sub_1D194DE90(v6 + 1, &qword_1EC6439D0, &unk_1D1E8EAF0, ServiceKind.rawValue.getter);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D1E6920C();
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  result = sub_1D1E6926C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v22 = *(*(v8 + 48) + a2);
      v12 = ServiceKind.rawValue.getter();
      v14 = v13;
      if (v12 == ServiceKind.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_1D1E6904C();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193F1AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1D19379F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D1947130();
      goto LABEL_16;
    }

    sub_1D194B544(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D1E6920C();
  sub_1D1E678EC();
  result = sub_1D1E6926C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D1E6904C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193F350(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Action();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D1937C68(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D194728C();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194B77C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  Action.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for Action);
      v22 = _s13HomeDataModel6ActionO2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for Action);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for Action);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D193F594(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D1937F70(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D1947498();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194BA54(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  Event.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for Event);
      v22 = _s13HomeDataModel5EventO2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for Event);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for Event);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

void sub_1D193F7FC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1D193DBBC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D1949E30(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1D1950FD4(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1D1E684EC();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1D1741B10(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1D1E684FC();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D1E690EC();
  __break(1u);
}

uint64_t sub_1D193F9CC(uint64_t a1, unint64_t a2, char a3)
{
  v65 = a1;
  v63 = type metadata accessor for StaticZone();
  v57 = *(v63 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  v17 = *(*v3 + 16);
  v18 = *(*v3 + 24);
  v56 = v3;
  if (v18 <= v17 || (a3 & 1) == 0)
  {
    v66 = v8;
    if (a3)
    {
      sub_1D1938654(v17 + 1);
    }

    else
    {
      if (v18 > v17)
      {
        sub_1D16FC874();
        goto LABEL_29;
      }

      sub_1D194C0C4(v17 + 1);
    }

    v64 = *v3;
    v19 = *(v64 + 40);
    sub_1D1E6920C();
    sub_1D174A5FC(qword_1EE07DD78);
    v20 = v65;
    sub_1D1E676EC();
    v21 = v63;
    v22 = (v20 + *(v63 + 20));
    v23 = v22[1];
    v59 = *v22;
    v58 = v23;
    sub_1D1E678EC();
    v24 = *(v20 + *(v21 + 24));
    MEMORY[0x1D3892850](*(v24 + 16));
    v71 = v24;
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *(v70 + 16);
      v27 = v71 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v28 = *(v70 + 72);
      v29 = (v70 + 8);
      do
      {
        v26(v16, v27, v9);
        sub_1D1E676EC();
        (*v29)(v16, v9);
        v27 += v28;
        --v25;
      }

      while (v25);
    }

    v30 = sub_1D1E6926C();
    v31 = -1 << *(v64 + 32);
    a2 = v30 & ~v31;
    v62 = v64 + 56;
    if ((*(v64 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v60 = ~v31;
      v61 = *(v57 + 72);
      v32 = (v70 + 8);
      v33 = v66;
      while (1)
      {
        v34 = *(v64 + 48);
        v67 = a2;
        sub_1D1951A7C(v34 + v61 * a2, v33, type metadata accessor for StaticZone);
        v35 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v36 = v72;
        if (v35)
        {
          v37 = &v66[*(v63 + 20)];
          result = *v37;
          v39 = *v37 == v59 && v37[1] == v58;
          if (v39 || (result = sub_1D1E6904C(), (result & 1) != 0))
          {
            v40 = *&v66[*(v63 + 24)];
            v41 = *(v71 + 16);
            v69 = *(v40 + 16);
            if (v69 == v41)
            {
              break;
            }
          }
        }

LABEL_13:
        v33 = v66;
        sub_1D1951B4C(v66, type metadata accessor for StaticZone);
        a2 = (v67 + 1) & v60;
        if (((*(v62 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v69 && v40 != v71)
      {
        a2 = 0;
        v42 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v43 = v40 + v42;
        v44 = v71 + v42;
        while (a2 < *(v40 + 16))
        {
          v45 = *(v70 + 72) * a2;
          v46 = *(v70 + 16);
          result = v46(v36, v43 + v45, v9);
          if (a2 >= *(v71 + 16))
          {
            goto LABEL_32;
          }

          v47 = v68;
          v46(v68, v44 + v45, v9);
          sub_1D174A5FC(&qword_1EE07D170);
          v48 = sub_1D1E6775C();
          v49 = *v32;
          v50 = v47;
          v36 = v72;
          (*v32)(v50, v9);
          result = (v49)(v36, v9);
          if ((v48 & 1) == 0)
          {
            goto LABEL_13;
          }

          if (v69 == ++a2)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_28:
      sub_1D1951B4C(v66, type metadata accessor for StaticZone);
      sub_1D1E690EC();
      __break(1u);
    }
  }

LABEL_29:
  v51 = *v56;
  *(*v56 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(v65, *(v51 + 48) + *(v57 + 72) * a2, type metadata accessor for StaticZone);
  v52 = *(v51 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (!v53)
  {
    *(v51 + 16) = v54;
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D193FFC4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    sub_1D193885C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D19476B8();
      goto LABEL_36;
    }

    sub_1D194C290(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1D1E6920C();
  if (v6 == 2)
  {
    v11 = 2;
    goto LABEL_12;
  }

  if (v6 == 1)
  {
    v11 = 0;
LABEL_12:
    MEMORY[0x1D3892850](v11);
    goto LABEL_15;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E6922C();
  if (v6)
  {
    sub_1D176D4E8(v25, v6);
  }

LABEL_15:
  result = sub_1D1E6926C();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (1)
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        if (v6 == 1)
        {
          goto LABEL_39;
        }

        v15 = v6;
        v16 = 1;
        v17 = v6;
LABEL_25:
        sub_1D1771B24(v15);
        sub_1D1771B10(v16);
LABEL_26:
        result = sub_1D1771B10(v17);
        goto LABEL_27;
      }

      v17 = v6;
      if ((v6 - 1) < 2)
      {
        goto LABEL_24;
      }

      if (!v14)
      {
        sub_1D1771B24(v6);
        sub_1D1771B24(v6);
        sub_1D1771B24(0);
        sub_1D1771B10(0);
        sub_1D1771B10(v6);
        v17 = v6;
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_26;
      }

      v18 = *(*(v9 + 48) + 8 * a2);
      if (!v6)
      {
        sub_1D1771B24(0);
        v17 = 0;
        v14 = v18;
LABEL_24:
        v16 = v14;
        sub_1D1771B24(v17);
        v15 = v16;
        goto LABEL_25;
      }

      sub_1D1771B24(v6);
      v19 = v18;
      sub_1D1771B24(v18);
      sub_1D1771B24(v6);
      sub_1D1771B24(v18);
      v20 = sub_1D17A6E98(v18, v6);
      sub_1D1771B10(v6);
      sub_1D1771B10(v19);
      sub_1D1771B10(v6);
      result = sub_1D1771B10(v19);
      if (v20)
      {
        goto LABEL_40;
      }

LABEL_27:
      a2 = (a2 + 1) & v13;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v6 == 2)
    {
      goto LABEL_39;
    }

    v15 = v6;
    v16 = 2;
    v17 = v6;
    goto LABEL_25;
  }

LABEL_36:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v21 = *(v14 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_39:
    v24 = v14;
    sub_1D1771B10(v14);
    sub_1D1771B10(v24);
LABEL_40:
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v23;
  }

  return result;
}

uint64_t sub_1D19402DC(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1938AF8(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1D1947808(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1D194C504(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v6 & 1);
  result = sub_1D1E6926C();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != (v6 & 1))
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6 & 1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D1940454(uint64_t a1, unint64_t a2, char a3)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FE8, &qword_1D1EB2A90);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v36 = v10;
  v37 = v3;
  if (v19 > v18 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v35 = v15;
    sub_1D1938D40(v18 + 1);
  }

  else
  {
    if (v19 > v18)
    {
      sub_1D1947938();
      goto LABEL_12;
    }

    v35 = v15;
    sub_1D194C71C(v18 + 1);
  }

  v20 = *v3;
  v21 = *(*v3 + 40);
  sub_1D1E6920C();
  sub_1D1951A7C(v41, v17, type metadata accessor for WriteInProgressStatusViewModel.ID);
  MEMORY[0x1D3892850](0);
  v22 = sub_1D1E66A7C();
  sub_1D174A5FC(qword_1EE07DD78);
  sub_1D1E676EC();
  v23 = *(*(v22 - 8) + 8);
  v23(v17, v22);
  v24 = sub_1D1E6926C();
  v38 = v20 + 56;
  v39 = v20;
  v25 = -1 << *(v20 + 32);
  a2 = v24 & ~v25;
  if ((*(v20 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v25;
    v27 = *(v10 + 72);
    do
    {
      sub_1D1951A7C(*(v39 + 48) + v27 * a2, v14, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v28 = *(v40 + 48);
      sub_1D1951A7C(v14, v8, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1951A7C(v41, &v8[v28], type metadata accessor for WriteInProgressStatusViewModel.ID);
      v29 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1951B4C(v14, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v23(&v8[v28], v22);
      v23(v8, v22);
      if (v29)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v38 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(v41, *(v30 + 48) + *(v36 + 72) * a2, type metadata accessor for WriteInProgressStatusViewModel.ID);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v30 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D194081C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticResident();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v61 = v9;
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D193912C(v13 + 1);
    }

    else
    {
      if (v14 > v13)
      {
        sub_1D1947B58();
        goto LABEL_68;
      }

      sub_1D194CAB8(v13 + 1);
    }

    v15 = *v4;
    v16 = *(*v4 + 40);
    sub_1D1E6920C();
    StaticResident.hash(into:)(v62);
    v17 = sub_1D1E6926C();
    v18 = -1 << *(v15 + 32);
    a2 = v17 & ~v18;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v20 = *(v9 + 72);
      v58 = ~v18;
      v59 = v4;
      v57 = v20;
      while (1)
      {
        sub_1D1951A7C(*(v15 + 48) + v20 * a2, v12, type metadata accessor for StaticResident);
        if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
        {
          goto LABEL_11;
        }

        v21 = v8[5];
        v22 = *&v12[v21];
        v23 = *&v12[v21 + 8];
        v24 = (a1 + v21);
        v25 = v22 == *v24 && v23 == v24[1];
        if (!v25 && (sub_1D1E6904C() & 1) == 0)
        {
          goto LABEL_11;
        }

        v26 = v8[6];
        v27 = &v12[v26];
        v28 = *&v12[v26 + 8];
        v29 = (a1 + v26);
        v30 = v29[1];
        if (v28)
        {
          if (!v30)
          {
            goto LABEL_11;
          }

          v31 = *v27 == *v29 && v28 == v30;
          if (!v31 && (sub_1D1E6904C() & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v30)
        {
          goto LABEL_11;
        }

        if ((sub_1D17B30EC(*&v12[v8[7]], *(a1 + v8[7])) & 1) == 0 || (sub_1D17B30EC(*&v12[v8[8]], *(a1 + v8[8])) & 1) == 0)
        {
          goto LABEL_11;
        }

        v32 = v8[9];
        v33 = *&v12[v32];
        v34 = v12[v32 + 8];
        v35 = a1 + v32;
        v36 = *v35;
        v37 = *(v35 + 8);
        v60 = v33;
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            if (v37 != 2)
            {
              goto LABEL_62;
            }

            v39 = v36;
            sub_1D1771B4C(v36, 2);
            v40 = v60;
            sub_1D1771B5C(v60, 2);
            sub_1D1771B5C(v39, 2);
            v41 = v40;
            v42 = v39 ^ v40;
            v19 = v58;
            v4 = v59;
            v20 = v57;
            if ((v42 & 1) != 0 || ((v41 >> 8) & 1) != ((v39 >> 8) & 1))
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (v33 > 1)
            {
              if (v33 == 2)
              {
                if (v37 != 3 || v36 != 2)
                {
                  goto LABEL_62;
                }

                sub_1D1771B4C(2, 3);
                sub_1D1771B5C(2, 3);
                sub_1D1771B5C(2, 3);
                v46 = 2;
              }

              else
              {
                if (v37 != 3 || v36 != 3)
                {
                  goto LABEL_62;
                }

                sub_1D1771B4C(3, 3);
                sub_1D1771B5C(3, 3);
                v46 = 3;
              }
            }

            else if (v33)
            {
              if (v37 != 3 || v36 != 1)
              {
                goto LABEL_62;
              }

              sub_1D1771B4C(1, 3);
              sub_1D1771B5C(1, 3);
              sub_1D1771B5C(1, 3);
              v46 = 1;
            }

            else
            {
              if (v37 != 3 || v36)
              {
                goto LABEL_62;
              }

              sub_1D1771B4C(0, 3);
              sub_1D1771B5C(0, 3);
              sub_1D1771B5C(0, 3);
              v46 = 0;
            }

            sub_1D1771B5C(v46, 3);
            v19 = v58;
            v4 = v59;
            v20 = v57;
          }

          goto LABEL_60;
        }

        if (v34)
        {
          break;
        }

        if (v37)
        {
          v38 = v36;
          sub_1D1771B4C(v33, 0);

          v36 = v38;
LABEL_62:
          v48 = v36;
          sub_1D1771B4C(v36, v37);
          v49 = v60;
          sub_1D1771B5C(v60, v34);
          sub_1D1771B5C(v48, v37);
          sub_1D1771B5C(v49, v34);
          v19 = v58;
          v4 = v59;
          v20 = v57;
          goto LABEL_11;
        }

        if (!v33)
        {
          v33 = v36;
          sub_1D1771B4C(v36, 0);
          sub_1D1771B4C(v33, 0);
          sub_1D1771B4C(0, 0);
          sub_1D1771B4C(v33, 0);
          sub_1D1771B4C(0, 0);
          sub_1D1771B5C(0, 0);
          sub_1D1771B5C(v33, 0);
          v19 = v58;
          v4 = v59;
          v20 = v57;
          if (v33)
          {
            sub_1D1771B5C(v33, 0);
LABEL_66:
            sub_1D1771B5C(v33, 0);
            sub_1D1771B5C(0, 0);
            goto LABEL_11;
          }

          sub_1D1771B5C(0, 0);
          sub_1D1771B5C(0, 0);
LABEL_60:
          v47 = v8[10];
          if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
          {
            goto LABEL_71;
          }

          goto LABEL_11;
        }

        v19 = v58;
        v4 = v59;
        v20 = v57;
        if (!v36)
        {
          sub_1D1771B4C(0, 0);
          sub_1D1771B4C(v33, 0);
          sub_1D1771B4C(0, 0);
          goto LABEL_66;
        }

        v56 = v36;
        sub_1D1771B4C(v33, 0);
        sub_1D1771B4C(v56, 0);
        sub_1D1771B4C(v33, 0);
        sub_1D1771B4C(v56, 0);
        sub_1D1771B4C(v33, 0);
        HIDWORD(v55) = sub_1D17A6E98(v33, v56);
        sub_1D1771B5C(v33, 0);
        sub_1D1771B5C(v56, 0);
        sub_1D1771B5C(v33, 0);
        sub_1D1771B5C(v56, 0);
        sub_1D1771B5C(v33, 0);
        if ((v55 & 0x100000000) != 0)
        {
          goto LABEL_60;
        }

LABEL_11:
        sub_1D1951B4C(v12, type metadata accessor for StaticResident);
        a2 = (a2 + 1) & v19;
        if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v37 != 1)
      {
        goto LABEL_62;
      }

      v43 = v36;
      sub_1D1771B4C(v36, 1);
      v44 = v60;
      sub_1D1771B5C(v60, 1);
      sub_1D1771B5C(v43, 1);
      v45 = v44;
      v25 = (v43 ^ v44) == 0;
      v19 = v58;
      v4 = v59;
      v20 = v57;
      if (!v25)
      {
        goto LABEL_11;
      }

      sub_1D1771B5C(v45, 1);
      goto LABEL_60;
    }
  }

LABEL_68:
  v50 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v50 + 48) + *(v61 + 72) * a2, type metadata accessor for StaticResident);
  v52 = *(v50 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (v53)
  {
    __break(1u);
LABEL_71:
    sub_1D1951B4C(v12, type metadata accessor for StaticResident);
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v50 + 16) = v54;
  }

  return result;
}

uint64_t sub_1D1940EF8(uint64_t result, unint64_t a2, char a3)
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
    sub_1D1939608(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D1947D64();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D194CF48(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1D3892820](*(*v3 + 40), v4, 2);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
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
  *(*(v11 + 48) + 2 * a2) = v4;
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D194101C(uint64_t result, unint64_t a2, char a3)
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
    sub_1D1939830(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D1947EA4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D194D13C(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1D3892820](*(*v3 + 40), v4, 4);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

void sub_1D1941164(int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1939A6C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D1947FE4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D194D330(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D1E6920C();
  sub_1D1E6924C();
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for MTRAttributeIDType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = a1;
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
  sub_1D1E690EC();
  __break(1u);
}

uint64_t sub_1D19412C0(uint64_t result, unint64_t a2, char a3)
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
    sub_1D1939CBC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D1947808(&qword_1EC6439C8, &qword_1D1E8EB10);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D194D550(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D1E6920C();
  v10 = dword_1D1E8571C[v4];
  sub_1D1E6924C();
  result = sub_1D1E6926C();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (dword_1D1E8571C[*(*(v8 + 48) + a2)] != v10)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D194143C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = result;
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a6)
  {
    sub_1D1939F18(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D1948124();
      goto LABEL_19;
    }

    sub_1D194D77C(v11 + 1);
  }

  v13 = *v6;
  v14 = *(*v6 + 40);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v10);
  sub_1D1E678EC();
  sub_1D176D34C(v30, a4);
  result = sub_1D1E6926C();
  v15 = -1 << *(v13 + 32);
  a5 = result & ~v15;
  if ((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v19 = (*(v13 + 48) + 32 * a5);
      if (*v19 == v10)
      {
        v20 = v19[3];
        v21 = v19[1] == a2 && v19[2] == a3;
        if (v21 || (v22 = v19[2], result = sub_1D1E6904C(), (result & 1) != 0))
        {

          v18 = sub_1D17A7B94(v17, a4);

          if (v18)
          {
            goto LABEL_22;
          }
        }
      }

      a5 = (a5 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_19:
  v23 = *v28;
  *(*v28 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v24 = (*(v23 + 48) + 32 * a5);
  *v24 = v10;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_22:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D194162C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D193A134(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = sub_1D1948290();
        a2 = v7;
        goto LABEL_21;
      }

      sub_1D194D96C(v5 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1D1E6920C();
    v10 = v4 >> 6;
    sub_1D1E6923C();
    sub_1D1E678EC();
    result = sub_1D1E6926C();
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(v8 + 48) + a2);
        if (v13 >> 6)
        {
          if (v13 >> 6 == 1)
          {
            if (v10 == 1)
            {
              goto LABEL_10;
            }
          }

          else if (v10 == 2)
          {
LABEL_10:
            if (((v13 ^ v4) & 0x3F) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        else if (v4 <= 0x3F && v13 == v4)
        {
          goto LABEL_24;
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v4;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_24:
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }

  return result;
}

uint64_t sub_1D194182C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = BYTE1(result);
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D193A3F0(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        v8 = a2;
        result = sub_1D19483D0();
        a2 = v8;
        goto LABEL_20;
      }

      sub_1D194DBF8(v6 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_1D1E6920C();
    sub_1D1E6922C();
    sub_1D1E678EC();
    result = sub_1D1E6926C();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        v13 = (*(v9 + 48) + 2 * a2);
        v14 = *v13;
        v15 = v13[1];
        if (v15)
        {
          if (v15 == 1)
          {
            if (v5 == 1)
            {
              goto LABEL_10;
            }
          }

          else if (v5 == 2)
          {
LABEL_10:
            if (v14 == v4)
            {
              goto LABEL_23;
            }
          }
        }

        else if (!v5)
        {
          goto LABEL_10;
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = (*(v16 + 48) + 2 * a2);
  *v17 = v4;
  v17[1] = v5;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_23:
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1D1941A40(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1D193A6B8(v6 + 1, &qword_1EC6439E8, &unk_1D1E8EAD0, CharacteristicKind.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D1947808(&qword_1EC6439E8, &unk_1D1E8EAD0);
      goto LABEL_16;
    }

    sub_1D194DE90(v6 + 1, &qword_1EC6439E8, &unk_1D1E8EAD0, CharacteristicKind.rawValue.getter);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D1E6920C();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  result = sub_1D1E6926C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v22 = *(*(v8 + 48) + a2);
      v12 = CharacteristicKind.rawValue.getter();
      v14 = v13;
      if (v12 == CharacteristicKind.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_1D1E6904C();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D1941C9C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D193A92C(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1D1948524(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1D194E0D4(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  result = sub_1D1E691FC();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D1941DD8(void *a1, unint64_t a2, char a3)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v10 = (&v53 - v9);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v53 = v7;
  v54 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    sub_1D193AB48(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D1948654(&qword_1EC643018, &qword_1D1E9AC00, &qword_1EC6473F0, &unk_1D1E8EA90);
      goto LABEL_29;
    }

    sub_1D194E2BC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D1E6920C();
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 8))(v15, v16);
  sub_1D1E678EC();

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 16))(v17, v18);
  sub_1D1E678EC();

  v19 = v57;
  v20 = *(v57 + 36);
  sub_1D1E66A7C();
  sub_1D174A5FC(qword_1EE07DD78);
  v56 = v20;
  sub_1D1E676EC();
  v55 = *(a1 + *(v19 + 40));
  MEMORY[0x1D3892890]();
  v21 = sub_1D1E6926C();
  v22 = v13 + 56;
  v60 = v13 + 56;
  v61 = v13;
  v23 = -1 << *(v13 + 32);
  a2 = v21 & ~v23;
  if ((*(v22 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v59 = ~v23;
    v58 = *(v7 + 72);
    v24 = &qword_1EC643018;
    do
    {
      v25 = v24;
      sub_1D1741C08(*(v61 + 48) + v58 * a2, v10, v24, &qword_1D1E9AC00);
      v26 = v10[3];
      v27 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v26);
      v28 = (*(v27 + 8))(v26, v27);
      v30 = v29;
      v32 = a1[3];
      v31 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v32);
      if (v28 == (*(v31 + 8))(v32, v31) && v30 == v33)
      {
      }

      else
      {
        v35 = sub_1D1E6904C();

        if ((v35 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v36 = v10[3];
      v37 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v36);
      v38 = (*(v37 + 16))(v36, v37);
      v40 = v39;
      v41 = a1[3];
      v42 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v41);
      if (v38 == (*(v42 + 16))(v41, v42) && v40 == v43)
      {
      }

      else
      {
        v45 = sub_1D1E6904C();

        if ((v45 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v46 = v10 + *(v57 + 36);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
LABEL_10:
        v24 = v25;
        sub_1D1741A30(v10, v25, &qword_1D1E9AC00);
        goto LABEL_11;
      }

      v47 = *(v10 + *(v57 + 40));
      v24 = v25;
      sub_1D1741A30(v10, v25, &qword_1D1E9AC00);
      if (v47 == v55)
      {
        sub_1D1E690EC();
        __break(1u);
        break;
      }

LABEL_11:
      a2 = (a2 + 1) & v59;
    }

    while (((*(v60 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v48 = *v54;
  *(*v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1741A90(a1, *(v48 + 48) + *(v53 + 72) * a2, &qword_1EC643018, &qword_1D1E9AC00);
  v50 = *(v48 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
  }

  else
  {
    *(v48 + 16) = v52;
  }

  return result;
}

uint64_t sub_1D19422F0(void *a1, unint64_t a2, char a3)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v10 = (&v54 - v9);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v54 = v7;
  v55 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    sub_1D193AF6C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D1948654(&qword_1EC643010, &qword_1D1E90E20, &qword_1EC6473E8, &unk_1D1E8EAA0);
      goto LABEL_29;
    }

    sub_1D194E6B0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D1E6920C();
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 8))(v15, v16);
  sub_1D1E678EC();

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 16))(v17, v18);
  sub_1D1E678EC();

  v19 = v59;
  v20 = *(v59 + 36);
  v21 = sub_1D1E66A7C();
  sub_1D174A5FC(qword_1EE07DD78);
  v58 = v20;
  sub_1D1E676EC();
  v56 = *(v19 + 40);
  v57 = v21;
  sub_1D1E676EC();
  v22 = sub_1D1E6926C();
  v23 = v13 + 56;
  v62 = v13 + 56;
  v63 = v13;
  v24 = -1 << *(v13 + 32);
  a2 = v22 & ~v24;
  if ((*(v23 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v61 = ~v24;
    v60 = *(v7 + 72);
    v25 = &qword_1EC643010;
    do
    {
      v26 = v25;
      sub_1D1741C08(*(v63 + 48) + v60 * a2, v10, v25, &qword_1D1E90E20);
      v27 = v10[3];
      v28 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v27);
      v29 = (*(v28 + 8))(v27, v28);
      v31 = v30;
      v33 = a1[3];
      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v33);
      if (v29 == (*(v32 + 8))(v33, v32) && v31 == v34)
      {
      }

      else
      {
        v36 = sub_1D1E6904C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v37 = v10[3];
      v38 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v37);
      v39 = (*(v38 + 16))(v37, v38);
      v41 = v40;
      v42 = a1[3];
      v43 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v42);
      if (v39 == (*(v43 + 16))(v42, v43) && v41 == v44)
      {
      }

      else
      {
        v46 = sub_1D1E6904C();

        if ((v46 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v47 = v10 + *(v59 + 36);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
LABEL_10:
        v25 = v26;
        sub_1D1741A30(v10, v26, &qword_1D1E90E20);
        goto LABEL_11;
      }

      v48 = *(v59 + 40);
      sub_1D174A5FC(&qword_1EE07D170);
      LOBYTE(v48) = sub_1D1E6775C();
      v25 = v26;
      sub_1D1741A30(v10, v26, &qword_1D1E90E20);
      if (v48)
      {
        sub_1D1E690EC();
        __break(1u);
        break;
      }

LABEL_11:
      a2 = (a2 + 1) & v61;
    }

    while (((*(v62 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v49 = *v55;
  *(*v55 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1741A90(a1, *(v49 + 48) + *(v54 + 72) * a2, &qword_1EC643010, &qword_1D1E90E20);
  v51 = *(v49 + 16);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    __break(1u);
  }

  else
  {
    *(v49 + 16) = v53;
  }

  return result;
}

uint64_t sub_1D194286C(uint64_t a1, unint64_t a2, char a3)
{
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v6 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v46 - v7;
  v53 = _s7MergeIdVMa();
  v48 = *(v53 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v56 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v46 = v3;
  if (v23 > v22 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1D193B3C8(v22 + 1);
  }

  else
  {
    if (v23 > v22)
    {
      sub_1D1948860();
      goto LABEL_27;
    }

    sub_1D194EAC0(v22 + 1);
  }

  v49 = *v3;
  v24 = *(v49 + 40);
  sub_1D1E6920C();
  sub_1D1741C08(v65, v21, &qword_1EC642590, qword_1D1E71260);
  v62 = *(v13 + 48);
  v63 = v13 + 48;
  if (v62(v21, 1, v12) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v25 = v50;
    (*(v13 + 32))(v50, v21, v12);
    sub_1D1E6922C();
    sub_1D174A5FC(qword_1EE07DD78);
    sub_1D1E676EC();
    (*(v13 + 8))(v25, v12);
  }

  v26 = (v65 + *(v53 + 20));
  v27 = *v26;
  v54 = v26[1];
  v55 = v27;
  sub_1D1E678EC();
  v28 = sub_1D1E6926C();
  v29 = v49;
  v30 = -1 << *(v49 + 32);
  a2 = v28 & ~v30;
  v61 = v49 + 56;
  if ((*(v49 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v58 = v12;
    v60 = ~v30;
    v47 = (v13 + 32);
    v59 = *(v48 + 72);
    v52 = (v13 + 8);
    v57 = v11;
    do
    {
      sub_1D1951A7C(*(v29 + 48) + v59 * a2, v11, _s7MergeIdVMa);
      v31 = *(v64 + 48);
      sub_1D1741C08(v11, v8, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v65, &v8[v31], &qword_1EC642590, qword_1D1E71260);
      v32 = v58;
      v33 = v62;
      if (v62(v8, 1, v58) == 1)
      {
        v34 = v33(&v8[v31], 1, v32);
        v11 = v57;
        if (v34 != 1)
        {
          goto LABEL_14;
        }

        sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v35 = v56;
        sub_1D1741C08(v8, v56, &qword_1EC642590, qword_1D1E71260);
        if (v33(&v8[v31], 1, v32) == 1)
        {
          (*v52)(v35, v32);
          v11 = v57;
LABEL_14:
          sub_1D1741A30(v8, &qword_1EC642980, &unk_1D1E6E6E0);
          goto LABEL_15;
        }

        v36 = v50;
        (*v47)(v50, &v8[v31], v32);
        sub_1D174A5FC(&qword_1EE07D170);
        v51 = sub_1D1E6775C();
        v37 = *v52;
        v38 = v36;
        v29 = v49;
        (*v52)(v38, v32);
        v37(v56, v32);
        sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
        v11 = v57;
        if ((v51 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v39 = &v11[*(v53 + 20)];
      v40 = *v39 == v55 && *(v39 + 1) == v54;
      if (v40 || (sub_1D1E6904C() & 1) != 0)
      {
        sub_1D1951B4C(v11, _s7MergeIdVMa);
        sub_1D1E690EC();
        __break(1u);
        break;
      }

LABEL_15:
      sub_1D1951B4C(v11, _s7MergeIdVMa);
      a2 = (a2 + 1) & v60;
    }

    while (((*(v61 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v41 = *v46;
  *(*v46 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(v65, *(v41 + 48) + *(v48 + 72) * a2, _s7MergeIdVMa);
  v43 = *(v41 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v45;
  }

  return result;
}

uint64_t sub_1D1942F80(uint64_t a1, unint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50[-v9];
  v11 = type metadata accessor for StaticMediaSystemComponent();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = sub_1D1E66A7C();
  v65 = *(v69 - 8);
  v16 = *(v65 + 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50[-v22];
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v66 = v12;
  v67 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    v61 = v10;
    if (a3)
    {
      v54 = v21;
      sub_1D193B8B4(v24 + 1);
      v10 = v69;
    }

    else
    {
      v10 = v69;
      if (v25 > v24)
      {
        sub_1D1948A6C();
        goto LABEL_25;
      }

      v54 = v21;
      sub_1D194EF84(v24 + 1);
    }

    v26 = *v3;
    v27 = *(*v3 + 40);
    sub_1D1E6920C();
    sub_1D174A5FC(qword_1EE07DD78);
    sub_1D1E676EC();
    v62 = v11[5];
    StaticMediaProfile.hash(into:)(v70);
    v68 = *(a1 + v11[6]);
    MEMORY[0x1D3892850]();
    v63 = *(a1 + v11[7]);
    sub_1D176D4E8(v70, v63);
    v59 = v11[8];
    sub_1D1741C08(a1 + v59, v23, &qword_1EC642590, qword_1D1E71260);
    v28 = v65;
    v29 = *(v65 + 6);
    v58 = v65 + 48;
    v57 = v29;
    v30 = v29(v23, 1, v10);
    v60 = v7;
    if (v30 == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v31 = v64;
      (*(v28 + 4))(v64, v23, v10);
      sub_1D1E6922C();
      sub_1D1E676EC();
      (*(v28 + 1))(v31, v10);
    }

    v32 = sub_1D1E6926C();
    v33 = v26 + 56;
    v34 = -1 << *(v26 + 32);
    a2 = v32 & ~v34;
    if ((*(v26 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v35 = ~v34;
      v52 = (v65 + 32);
      v36 = *(v12 + 72);
      v53 = (v65 + 8);
      v37 = v62;
      v56 = v11;
      v55 = v26;
      do
      {
        sub_1D1951A7C(*(v26 + 48) + v36 * a2, v15, type metadata accessor for StaticMediaSystemComponent);
        if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && _s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(&v15[v11[5]], a1 + v37) && *&v15[v11[6]] == v68 && (sub_1D17A6E98(*&v15[v11[7]], v63))
        {
          v39 = v11[8];
          v40 = *(v60 + 48);
          v41 = v10;
          v10 = v61;
          sub_1D1741C08(&v15[v39], v61, &qword_1EC642590, qword_1D1E71260);
          v65 = v40;
          sub_1D1741C08(a1 + v59, v40 + v10, &qword_1EC642590, qword_1D1E71260);
          v42 = v57;
          if (v57(v10, 1, v41) == 1)
          {
            v43 = v42(v65 + v10, 1, v69);
            v11 = v56;
            v26 = v55;
            if (v43 == 1)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v44 = v54;
            sub_1D1741C08(v10, v54, &qword_1EC642590, qword_1D1E71260);
            if (v42(v65 + v10, 1, v69) != 1)
            {
              v38 = v69;
              (*v52)(v64, v65 + v10, v69);
              sub_1D174A5FC(&qword_1EE07D170);
              v51 = sub_1D1E6775C();
              v65 = *v53;
              v65(v64, v38);
              v65(v44, v38);
              sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
              v10 = v38;
              v37 = v62;
              v11 = v56;
              v26 = v55;
              if (v51)
              {
                goto LABEL_29;
              }

              goto LABEL_14;
            }

            (*v53)(v44, v69);
            v11 = v56;
            v26 = v55;
          }

          sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
          v10 = v69;
          v37 = v62;
        }

LABEL_14:
        sub_1D1951B4C(v15, type metadata accessor for StaticMediaSystemComponent);
        a2 = (a2 + 1) & v35;
      }

      while (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_25:
  v45 = *v67;
  *(*v67 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v45 + 48) + *(v66 + 72) * a2, type metadata accessor for StaticMediaSystemComponent);
  v47 = *(v45 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_28:
    sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
LABEL_29:
    sub_1D1951B4C(v15, type metadata accessor for StaticMediaSystemComponent);
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v49;
  }

  return result;
}

uint64_t sub_1D1943728(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_1D193BABC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1D1948C78();
      goto LABEL_22;
    }

    sub_1D194F150(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (a2)
  {
    sub_1D1E678EC();
  }

  result = sub_1D1E6926C();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_1D1E6904C(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
            result = sub_1D1E690EC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1D19438E4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MatterTilePath(0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v36 = v4;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1D193BD38(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D1948DD0();
      goto LABEL_24;
    }

    sub_1D194F3A4(v12 + 1);
  }

  v14 = *v4;
  v15 = *(*v4 + 40);
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D174A5FC(qword_1EE07DD78);
  sub_1D1E676EC();
  v16 = *(a1 + *(v8 + 20));
  MEMORY[0x1D3892890](v16);
  v17 = (a1 + *(v8 + 24));
  v18 = *v17;
  v38 = *(v17 + 2);
  if (v38 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v19 = sub_1D1E6926C();
  v20 = v14 + 56;
  v21 = -1 << *(v14 + 32);
  a2 = v19 & ~v21;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = v18;
    v22 = ~v21;
    v23 = *(v37 + 72);
    do
    {
      sub_1D1951A7C(*(v14 + 48) + v23 * a2, v11, type metadata accessor for MatterTilePath);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && *&v11[*(v8 + 20)] == v16)
      {
        v24 = v14;
        v25 = v8;
        v26 = &v11[*(v8 + 24)];
        v39 = *v26;
        v27 = v26[2];
        sub_1D1951B4C(v11, type metadata accessor for MatterTilePath);
        if (v27)
        {
          v8 = v25;
          v14 = v24;
          if (v38)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v28 = v38;
          if (v39 != v35)
          {
            v28 = 1;
          }

          v8 = v25;
          v14 = v24;
          if ((v28 & 1) == 0)
          {
LABEL_23:
            sub_1D1E690EC();
            __break(1u);
            break;
          }
        }
      }

      else
      {
        sub_1D1951B4C(v11, type metadata accessor for MatterTilePath);
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v29 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v29 + 48) + *(v37 + 72) * a2, type metadata accessor for MatterTilePath);
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

uint64_t sub_1D1943C5C(uint64_t a1, unint64_t a2, char a3)
{
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v55 - v7;
  v65 = sub_1D1E66A7C();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v55 - v25;
  v27 = *(*v3 + 16);
  v28 = *(*v3 + 24);
  v62 = v16;
  v63 = v3;
  if (v28 > v27 && (a3 & 1) != 0)
  {
    goto LABEL_33;
  }

  if (a3)
  {
    v68 = v14;
    v59 = v9;
    v56 = v24;
    sub_1D193C0D4(v27 + 1);
  }

  else
  {
    if (v28 > v27)
    {
      sub_1D1948FDC();
      goto LABEL_33;
    }

    v68 = v14;
    v59 = v9;
    v56 = v24;
    sub_1D194F6FC(v27 + 1);
  }

  v60 = *v3;
  v29 = *(v60 + 40);
  sub_1D1E6920C();
  sub_1D1951A7C(v70, v26, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v26, 3, v30);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v39 = 2;
    }

    else
    {
      v39 = 3;
    }
  }

  else
  {
    if (!v32)
    {
      v33 = v59;
      v34 = v26;
      v35 = v20;
      v36 = v65;
      (*(v59 + 32))(v68, v34, v65);
      MEMORY[0x1D3892850](1);
      sub_1D174A5FC(qword_1EE07DD78);
      v37 = v68;
      sub_1D1E676EC();
      v38 = v36;
      v20 = v35;
      (*(v33 + 8))(v37, v38);
      goto LABEL_16;
    }

    v39 = 0;
  }

  MEMORY[0x1D3892850](v39);
LABEL_16:
  v40 = sub_1D1E6926C();
  v41 = -1 << *(v60 + 32);
  a2 = v40 & ~v41;
  v68 = (v60 + 56);
  if ((*(v60 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v67 = ~v41;
    v66 = *(v16 + 72);
    v64 = (v59 + 8);
    v57 = (v59 + 32);
    v42 = v60;
    v58 = v31;
    while (1)
    {
      sub_1D1951A7C(*(v42 + 48) + v66 * a2, v23, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      v43 = *(v69 + 48);
      sub_1D1951A7C(v23, v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      sub_1D1951A7C(v70, &v8[v43], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      v44 = v31(v8, 3, v30);
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          sub_1D1951B4C(v23, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
          if (v31(&v8[v43], 3, v30) == 2)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1D1951B4C(v23, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
          if (v31(&v8[v43], 3, v30) == 3)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_28;
      }

      if (v44)
      {
        break;
      }

      sub_1D1951A7C(v8, v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      if (v31(&v8[v43], 3, v30))
      {
        sub_1D1951B4C(v23, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        (*v64)(v20, v65);
LABEL_28:
        sub_1D1741A30(v8, &qword_1EC642AD8, &unk_1D1E6E820);
        goto LABEL_29;
      }

      v45 = v20;
      v46 = v61;
      v47 = v65;
      (*v57)(v61, &v8[v43], v65);
      LODWORD(v59) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v48 = *v64;
      v49 = v46;
      v20 = v45;
      v42 = v60;
      (*v64)(v49, v47);
      sub_1D1951B4C(v23, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      v48(v20, v47);
      v31 = v58;
      if (v59)
      {
        goto LABEL_36;
      }

      sub_1D1951B4C(v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
LABEL_29:
      a2 = (a2 + 1) & v67;
      if (((*&v68[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    sub_1D1951B4C(v23, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (v31(&v8[v43], 3, v30) == 1)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

LABEL_33:
  v50 = *v63;
  *(*v63 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(v70, *(v50 + 48) + *(v62 + 72) * a2, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v52 = *(v50 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (v53)
  {
    __break(1u);
LABEL_36:
    sub_1D1951B4C(v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v50 + 16) = v54;
  }

  return result;
}

uint64_t sub_1D19443C4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v69 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v9 = &v58 - v8;
  v62 = sub_1D1E66A7C();
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v58 - v14;
  v15 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v63 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v58 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v58 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v58 - v26);
  v28 = *(*v4 + 16);
  v29 = *(*v4 + 24);
  v58 = v16;
  v59 = v4;
  if (v29 <= v28 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D193C2F0(v28 + 1);
    }

    else
    {
      if (v29 > v28)
      {
        sub_1D19491E8();
        goto LABEL_28;
      }

      sub_1D194F8C8(v28 + 1);
    }

    v67 = *v4;
    v30 = *(v67 + 40);
    sub_1D1E6920C();
    sub_1D1951A7C(v69, v27, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v66;
      v32 = v27;
      v33 = v62;
      (*(v10 + 32))(v66, v32, v62);
      MEMORY[0x1D3892850](1);
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      (*(v10 + 8))(v31, v33);
    }

    else
    {
      v34 = v10;
      v36 = *v27;
      v35 = v27[1];
      MEMORY[0x1D3892850](0);
      v10 = v34;
      sub_1D1E678EC();
    }

    v37 = sub_1D1E6926C();
    v38 = -1 << *(v67 + 32);
    a2 = v37 & ~v38;
    v66 = (v67 + 56);
    if ((*(v67 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v65 = ~v38;
      v64 = *(v16 + 72);
      v39 = (v10 + 8);
      v60 = (v10 + 32);
      v40 = v63;
      do
      {
        sub_1D1951A7C(*(v67 + 48) + v64 * a2, v25, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v41 = &v9[*(v68 + 48)];
        sub_1D1951A7C(v25, v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
        sub_1D1951A7C(v69, v41, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D1951A7C(v9, v40, type metadata accessor for StaticAccessory.DeviceIdentifier);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = v61;
            v43 = v62;
            (*v60)(v61, v41, v62);
            v44 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            v45 = *v39;
            v46 = v42;
            v40 = v63;
            (*v39)(v46, v43);
            sub_1D1951B4C(v25, type metadata accessor for StaticAccessory.DeviceIdentifier);
            v45(v40, v43);
            if (v44)
            {
              goto LABEL_32;
            }

LABEL_26:
            sub_1D1951B4C(v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
            goto LABEL_15;
          }

          sub_1D1951B4C(v25, type metadata accessor for StaticAccessory.DeviceIdentifier);
          (*v39)(v40, v62);
        }

        else
        {
          sub_1D1951A7C(v9, v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
          v48 = *v22;
          v47 = v22[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v49 = *v41;
            v50 = *(v41 + 1);
            if (v48 == v49 && v47 == v50)
            {
              goto LABEL_31;
            }

            v52 = sub_1D1E6904C();

            sub_1D1951B4C(v25, type metadata accessor for StaticAccessory.DeviceIdentifier);
            if (v52)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }

          sub_1D1951B4C(v25, type metadata accessor for StaticAccessory.DeviceIdentifier);
        }

        sub_1D1741A30(v9, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_15:
        a2 = (a2 + 1) & v65;
      }

      while (((*&v66[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v53 = *v59;
  *(*v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(v69, *(v53 + 48) + *(v58 + 72) * a2, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v55 = *(v53 + 16);
  v56 = __OFADD__(v55, 1);
  v57 = v55 + 1;
  if (v56)
  {
    __break(1u);
LABEL_31:

    sub_1D1951B4C(v25, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_32:
    sub_1D1951B4C(v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v53 + 16) = v57;
  }

  return result;
}

uint64_t sub_1D1944AD4(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1938AF8(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1D1947808(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1D194C504(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v6);
  result = sub_1D1E6926C();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D1944C44(uint64_t result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_1D193C4F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D1947808(&qword_1EC647478, &qword_1D1E85658);
      goto LABEL_49;
    }

    sub_1D194FA94(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_1D1CDA80C();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v9;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v10 == 6)
          {
            v13 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v13 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v10 == 4)
        {
          v13 = "60-AD68-D91053B75F44";
        }

        else
        {
          v13 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v11 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(v7 + 48) + a2))
        {
          v12 = "13-AA62-01754F256DD5";
        }

        else
        {
          v12 = "00-8000-0026BB765291";
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v13 = v12;
        }

        else
        {
          v13 = v11;
        }
      }

      v14 = v13 | 0x8000000000000000;
      v15 = "17-A590-755E1AAC02AE";
      if (v27 != 6)
      {
        v15 = "73-8FBD-0E8978A33403";
      }

      if (v27 == 4)
      {
        v16 = "60-AD68-D91053B75F44";
      }

      else
      {
        v16 = "7E-BE63-1D00B1500545";
      }

      if (v27 <= 5u)
      {
        v15 = v16;
      }

      if (v27 == 2)
      {
        v17 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v17 = "CE-986D-63B28F62C9E3";
      }

      if (v27)
      {
        v18 = "13-AA62-01754F256DD5";
      }

      else
      {
        v18 = "00-8000-0026BB765291";
      }

      if (v27 <= 1u)
      {
        v17 = v18;
      }

      v19 = v27 <= 3u ? v17 : v15;
      if (v14 == (v19 | 0x8000000000000000))
      {
        goto LABEL_52;
      }

      v20 = sub_1D1E6904C();

      if (v20)
      {
        goto LABEL_53;
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v27;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_52:

LABEL_53:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D1944F24(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ActionService();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D193C828(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D19493F4();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D194FD80(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  ActionService.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for ActionService);
      v22 = _s13HomeDataModel13ActionServiceV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for ActionService);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for ActionService);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D1945168(uint64_t a1, unint64_t a2, char a3)
{
  v65 = a1;
  v63 = type metadata accessor for StaticZone();
  v55 = *(v63 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D1E66A7C();
  v56 = *(v73 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x1EEE9AC00](v73);
  v71 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v54 = v3;
  if (v17 > v16 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  v66 = v8;
  if (a3)
  {
    sub_1D193CB30(v16 + 1);
  }

  else
  {
    if (v17 > v16)
    {
      sub_1D16FC874();
      goto LABEL_27;
    }

    sub_1D1950058(v16 + 1);
  }

  v64 = *v3;
  v18 = *(v64 + 40);
  sub_1D1E6920C();
  sub_1D174A5FC(qword_1EE07DD78);
  v19 = v65;
  sub_1D1E676EC();
  v20 = v63;
  v21 = (v19 + *(v63 + 20));
  v22 = v21[1];
  v58 = *v21;
  v57 = v22;
  sub_1D1E678EC();
  v23 = *(v19 + *(v20 + 24));
  MEMORY[0x1D3892850](*(v23 + 16));
  v59 = v23;
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v56 + 16);
    v26 = v59 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v27 = *(v56 + 72);
    v28 = (v56 + 8);
    do
    {
      v29 = v73;
      v25(v15, v26, v73);
      sub_1D1E676EC();
      (*v28)(v15, v29);
      v26 += v27;
      --v24;
    }

    while (v24);
  }

  v30 = sub_1D1E6926C();
  v31 = -1 << *(v64 + 32);
  a2 = v30 & ~v31;
  v62 = v64 + 56;
  if ((*(v64 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v60 = ~v31;
    v61 = *(v55 + 72);
    v69 = v56 + 16;
    v70 = v56 + 8;
    v32 = v66;
    v33 = (v56 + 8);
    do
    {
      v34 = *(v64 + 48);
      v67 = a2;
      sub_1D1951A7C(v34 + v61 * a2, v32, type metadata accessor for StaticZone);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v35 = &v66[*(v63 + 20)];
        v36 = *v35 == v58 && *(v35 + 1) == v57;
        if (v36 || (sub_1D1E6904C() & 1) != 0)
        {
          v37 = *&v66[*(v63 + 24)];
          v38 = *(v37 + 16);
          if (v38 == *(v59 + 16))
          {
            if (!v38 || v37 == v59)
            {
LABEL_26:
              sub_1D1951B4C(v66, type metadata accessor for StaticZone);
              sub_1D1E690EC();
              __break(1u);
              break;
            }

            v39 = (*(v56 + 80) + 32) & ~*(v56 + 80);
            v40 = v37 + v39;
            v41 = v59 + v39;
            v68 = *(v56 + 72);
            a2 = *(v56 + 16);
            while (1)
            {
              v42 = v72;
              (a2)(v72, v40, v73);
              v43 = v71;
              v44 = v73;
              v45 = a2;
              (a2)(v71, v41, v73);
              sub_1D174A5FC(&qword_1EE07D170);
              v46 = v42;
              v47 = sub_1D1E6775C();
              v48 = *v33;
              (*v33)(v43, v44);
              v48(v46, v44);
              if ((v47 & 1) == 0)
              {
                break;
              }

              v41 += v68;
              v40 += v68;
              --v38;
              a2 = v45;
              if (!v38)
              {
                goto LABEL_26;
              }
            }
          }
        }
      }

      v32 = v66;
      sub_1D1951B4C(v66, type metadata accessor for StaticZone);
      a2 = (v67 + 1) & v60;
    }

    while (((*(v62 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v49 = *v54;
  *(*v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(v65, *(v49 + 48) + *(v55 + 72) * a2, type metadata accessor for StaticZone);
  v51 = *(v49 + 16);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    __break(1u);
  }

  else
  {
    *(v49 + 16) = v53;
  }

  return result;
}

uint64_t sub_1D1945778(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticActionSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D193CFE8(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D1949600();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D19504E0(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticActionSet);
      v22 = _s13HomeDataModel15StaticActionSetV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticActionSet);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticActionSet);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D19459BC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticRoom(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D193D2F0(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D194980C();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D19507B8(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticRoom.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticRoom);
      v22 = _s13HomeDataModel10StaticRoomV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticRoom);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticRoom);
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
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

uint64_t sub_1D1945C00(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for StaticUser();
  v33 = *(v7 - 1);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v32 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_1D193D5F8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D1949A18();
      goto LABEL_21;
    }

    sub_1D1950A90(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D174A5FC(qword_1EE07DD78);
  sub_1D1E676EC();
  v15 = (a1 + v7[5]);
  v16 = *v15;
  v17 = v15[1];
  sub_1D1E678EC();
  v34 = v7[6];
  sub_1D1E676EC();
  v31 = v7[7];
  MEMORY[0x1D3892850](*(a1 + v31));
  v30 = v7[8];
  MEMORY[0x1D3892850](*(a1 + v30));
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v13 + 32);
  a2 = v18 & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v33 + 72);
    while (1)
    {
      sub_1D1951A7C(*(v13 + 48) + v21 * a2, v10, type metadata accessor for StaticUser);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v22 = &v10[v7[5]];
        v23 = *v22 == v16 && *(v22 + 1) == v17;
        if (v23 || (sub_1D1E6904C() & 1) != 0)
        {
          v24 = &v10[v7[6]];
          if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && v10[v7[7]] == *(a1 + v31) && v10[v7[8]] == *(a1 + v30))
          {
            break;
          }
        }
      }

      sub_1D1951B4C(v10, type metadata accessor for StaticUser);
      a2 = (a2 + 1) & v20;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_1D1951B4C(v10, type metadata accessor for StaticUser);
    sub_1D1E690EC();
    __break(1u);
  }

LABEL_21:
  v25 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v25 + 48) + *(v33 + 72) * a2, type metadata accessor for StaticUser);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_1D1945F60(uint64_t a1, unint64_t a2, char a3)
{
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A00, &qword_1D1E97330);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v55 - v7;
  v65 = sub_1D1E66A7C();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for DataModel.StateSubscription.Reason();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v55 - v25;
  v27 = *(*v3 + 16);
  v28 = *(*v3 + 24);
  v62 = v16;
  v63 = v3;
  if (v28 > v27 && (a3 & 1) != 0)
  {
    goto LABEL_33;
  }

  if (a3)
  {
    v68 = v14;
    v59 = v9;
    v56 = v24;
    sub_1D193D9A0(v27 + 1);
  }

  else
  {
    if (v28 > v27)
    {
      sub_1D1949C24();
      goto LABEL_33;
    }

    v68 = v14;
    v59 = v9;
    v56 = v24;
    sub_1D1950E08(v27 + 1);
  }

  v60 = *v3;
  v29 = *(v60 + 40);
  sub_1D1E6920C();
  sub_1D1951A7C(v70, v26, type metadata accessor for DataModel.StateSubscription.Reason);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v26, 3, v30);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v39 = 2;
    }

    else
    {
      v39 = 3;
    }
  }

  else
  {
    if (!v32)
    {
      v33 = v59;
      v34 = v26;
      v35 = v20;
      v36 = v65;
      (*(v59 + 32))(v68, v34, v65);
      MEMORY[0x1D3892850](1);
      sub_1D174A5FC(qword_1EE07DD78);
      v37 = v68;
      sub_1D1E676EC();
      v38 = v36;
      v20 = v35;
      (*(v33 + 8))(v37, v38);
      goto LABEL_16;
    }

    v39 = 0;
  }

  MEMORY[0x1D3892850](v39);
LABEL_16:
  v40 = sub_1D1E6926C();
  v41 = -1 << *(v60 + 32);
  a2 = v40 & ~v41;
  v68 = (v60 + 56);
  if ((*(v60 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v67 = ~v41;
    v66 = *(v16 + 72);
    v64 = (v59 + 8);
    v57 = (v59 + 32);
    v42 = v60;
    v58 = v31;
    while (1)
    {
      sub_1D1951A7C(*(v42 + 48) + v66 * a2, v23, type metadata accessor for DataModel.StateSubscription.Reason);
      v43 = *(v69 + 48);
      sub_1D1951A7C(v23, v8, type metadata accessor for DataModel.StateSubscription.Reason);
      sub_1D1951A7C(v70, &v8[v43], type metadata accessor for DataModel.StateSubscription.Reason);
      v44 = v31(v8, 3, v30);
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          sub_1D1951B4C(v23, type metadata accessor for DataModel.StateSubscription.Reason);
          if (v31(&v8[v43], 3, v30) == 2)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1D1951B4C(v23, type metadata accessor for DataModel.StateSubscription.Reason);
          if (v31(&v8[v43], 3, v30) == 3)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_28;
      }

      if (v44)
      {
        break;
      }

      sub_1D1951A7C(v8, v20, type metadata accessor for DataModel.StateSubscription.Reason);
      if (v31(&v8[v43], 3, v30))
      {
        sub_1D1951B4C(v23, type metadata accessor for DataModel.StateSubscription.Reason);
        (*v64)(v20, v65);
LABEL_28:
        sub_1D1741A30(v8, &qword_1EC642A00, &qword_1D1E97330);
        goto LABEL_29;
      }

      v45 = v20;
      v46 = v61;
      v47 = v65;
      (*v57)(v61, &v8[v43], v65);
      LODWORD(v59) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v48 = *v64;
      v49 = v46;
      v20 = v45;
      v42 = v60;
      (*v64)(v49, v47);
      sub_1D1951B4C(v23, type metadata accessor for DataModel.StateSubscription.Reason);
      v48(v20, v47);
      v31 = v58;
      if (v59)
      {
        goto LABEL_36;
      }

      sub_1D1951B4C(v8, type metadata accessor for DataModel.StateSubscription.Reason);
LABEL_29:
      a2 = (a2 + 1) & v67;
      if (((*&v68[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    sub_1D1951B4C(v23, type metadata accessor for DataModel.StateSubscription.Reason);
    if (v31(&v8[v43], 3, v30) == 1)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

LABEL_33:
  v50 = *v63;
  *(*v63 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(v70, *(v50 + 48) + *(v62 + 72) * a2, type metadata accessor for DataModel.StateSubscription.Reason);
  v52 = *(v50 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (v53)
  {
    __break(1u);
LABEL_36:
    sub_1D1951B4C(v8, type metadata accessor for DataModel.StateSubscription.Reason);
    result = sub_1D1E690EC();
    __break(1u);
  }

  else
  {
    *(v50 + 16) = v54;
  }

  return result;
}

void *sub_1D19466C8()
{
  v1 = v0;
  v2 = type metadata accessor for StaticCameraProfile();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647448, &qword_1D1E85628);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticCameraProfile);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticCameraProfile);
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

void *sub_1D19468D4()
{
  v1 = v0;
  v2 = type metadata accessor for StaticMediaProfile();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647438, &unk_1D1E8EAE0);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticMediaProfile);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticMediaProfile);
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

void *sub_1D1946AE0()
{
  v1 = v0;
  v2 = type metadata accessor for StaticMediaSystem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647440, &qword_1D1E85620);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticMediaSystem);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticMediaSystem);
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

void *sub_1D1946CEC()
{
  v1 = v0;
  v2 = type metadata accessor for StaticAccessory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticAccessory);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticAccessory);
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

void *sub_1D1946EF8()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F8, &qword_1D1E72F70);
  v7 = *v0;
  v8 = sub_1D1E687FC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
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
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1D1947130()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647458, &qword_1D1E85638);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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

void *sub_1D194728C()
{
  v1 = v0;
  v2 = type metadata accessor for Action();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B8, &qword_1D1E85690);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for Action);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for Action);
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

void *sub_1D1947498()
{
  v1 = v0;
  v2 = type metadata accessor for Event();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474C0, &qword_1D1E85698);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for Event);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for Event);
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

void *sub_1D19476B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439B8, &qword_1D1E72F48);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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
        result = sub_1D1771B24(v18);
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

void *sub_1D1947808(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D1E687FC();
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

void *sub_1D1947938()
{
  v1 = v0;
  v2 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D0, &unk_1D1E8EA80);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for WriteInProgressStatusViewModel.ID);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for WriteInProgressStatusViewModel.ID);
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

void *sub_1D1947B58()
{
  v1 = v0;
  v2 = type metadata accessor for StaticResident();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B0, &qword_1D1E85688);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticResident);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticResident);
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

void *sub_1D1947D64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C0, &qword_1D1E855D0);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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

void *sub_1D1947EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439D8, &qword_1D1E72F58);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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

void *sub_1D1947FE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C8, &qword_1D1E855D8);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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

void *sub_1D1948124()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A0, &qword_1D1E85678);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
        *(v21 + 24) = v20;
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

void *sub_1D1948290()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647488, &qword_1D1E85660);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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

void *sub_1D19483D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647498, &qword_1D1E85670);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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

void *sub_1D1948524(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D1E687FC();
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
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
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

void *sub_1D1948654(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *v4;
  v15 = sub_1D1E687FC();
  v16 = v15;
  if (*(v14 + 16))
  {
    v30 = v9;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v31 + 72) * (v26 | (v20 << 6));
        sub_1D1741C08(*(v14 + 48) + v29, v13, a1, a2);
        result = sub_1D1741A90(v13, *(v16 + 48) + v29, a1, a2);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v9 = v30;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v9 = v16;
  }

  return result;
}

void *sub_1D1948860()
{
  v1 = v0;
  v2 = _s7MergeIdVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D8, &qword_1D1E855E0);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, _s7MergeIdVMa);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, _s7MergeIdVMa);
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

void *sub_1D1948A6C()
{
  v1 = v0;
  v2 = type metadata accessor for StaticMediaSystemComponent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A8, &qword_1D1E85680);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticMediaSystemComponent);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticMediaSystemComponent);
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

void *sub_1D1948C78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473B8, &qword_1D1E855C8);
  v2 = *v0;
  v3 = sub_1D1E687FC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_1D1948DD0()
{
  v1 = v0;
  v2 = type metadata accessor for MatterTilePath(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647480, &unk_1D1E8EB00);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for MatterTilePath);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for MatterTilePath);
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

void *sub_1D1948FDC()
{
  v1 = v0;
  v2 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647468, &qword_1D1E85648);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
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

void *sub_1D19491E8()
{
  v1 = v0;
  v2 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647460, &qword_1D1E85640);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
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

void *sub_1D19493F4()
{
  v1 = v0;
  v2 = type metadata accessor for ActionService();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647428, &qword_1D1E85618);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for ActionService);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for ActionService);
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

void *sub_1D1949600()
{
  v1 = v0;
  v2 = type metadata accessor for StaticActionSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647418, &qword_1D1E85608);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticActionSet);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticActionSet);
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

void *sub_1D194980C()
{
  v1 = v0;
  v2 = type metadata accessor for StaticRoom(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647410, &unk_1D1E8EAC0);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticRoom);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticRoom);
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

void *sub_1D1949A18()
{
  v1 = v0;
  v2 = type metadata accessor for StaticUser();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647408, &qword_1D1E85600);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticUser);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticUser);
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

void *sub_1D1949C24()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.StateSubscription.Reason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E0, &qword_1D1E855E8);
  v7 = *v0;
  v8 = sub_1D1E687FC();
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
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for DataModel.StateSubscription.Reason);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for DataModel.StateSubscription.Reason);
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

id sub_1D1949E30(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D1E687FC();
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
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

uint64_t sub_1D1949F70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439E0, &qword_1D1E72F60);
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
      v19 = dword_1D1E856A4[v17];
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

uint64_t sub_1D194A19C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticCameraProfile();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647448, &qword_1D1E85628);
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
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticCameraProfile);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticCameraProfile.hash(into:)(v34);
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
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticCameraProfile);
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

uint64_t sub_1D194A474(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaProfile();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647438, &unk_1D1E8EAE0);
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
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticMediaProfile);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticMediaProfile.hash(into:)(v34);
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
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticMediaProfile);
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

uint64_t sub_1D194A74C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaSystem();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647440, &qword_1D1E85620);
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
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticMediaSystem);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticMediaSystem.hash(into:)(v34);
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
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticMediaSystem);
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

uint64_t sub_1D194AA24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticAccessory(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
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
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticAccessory);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticAccessory.hash(into:)(v34);
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
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticAccessory);
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

uint64_t sub_1D194ACFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticServiceGroup();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v26 = v2;
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
    for (i = result + 56; v15; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v27 + 72);
      sub_1D1951A7C(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7, type metadata accessor for StaticServiceGroup);
      v22 = *(v11 + 40);
      sub_1D1E6920C();
      StaticServiceGroup.hash(into:)(v28);
      sub_1D1E6926C();
      v23 = -1 << *(v11 + 32);
      v24 = sub_1D1E686CC();
      *(i + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v24 * v21, type metadata accessor for StaticServiceGroup);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v26;
        goto LABEL_18;
      }

      v20 = *(v8 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D194AF64(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticServiceGroup();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
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
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticServiceGroup);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticServiceGroup.hash(into:)(v34);
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
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticServiceGroup);
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

uint64_t sub_1D194B23C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D1E66A7C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F8, &qword_1D1E72F70);
  v10 = sub_1D1E6880C();
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
      sub_1D174A5FC(qword_1EE07DD78);
      result = sub_1D1E676DC();
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

uint64_t sub_1D194B544(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647458, &qword_1D1E85638);
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
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D1E6920C();

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

uint64_t sub_1D194B77C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Action();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B8, &qword_1D1E85690);
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
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for Action);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      Action.hash(into:)(v34);
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
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for Action);
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

uint64_t sub_1D194BA54(uint64_t a1)
{
  v2 = v1;
  v68 = type metadata accessor for Event.CharacteristicEvent();
  v4 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event.TimeEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Event();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v65 - v14;
  v15 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v16 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474C0, &qword_1D1E85698);
  v17 = sub_1D1E6880C();
  result = v15;
  if (!*(v15 + 16))
  {

LABEL_56:
    *v2 = v17;
    return result;
  }

  v65 = v1;
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
  v25 = v17 + 56;
  v69 = v9;
  v71 = result;
  v72 = v13;
  while (v23)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_17:
    v30 = *(result + 48);
    v74 = *(v73 + 72);
    v31 = v75;
    sub_1D1951A7C(v30 + v74 * (v27 | (v19 << 6)), v75, type metadata accessor for Event);
    v32 = *(v17 + 40);
    sub_1D1E6920C();
    sub_1D1951A7C(v31, v13, type metadata accessor for Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48));
        v35 = v13;
        v36 = v67;
        sub_1D1951AE4(v35, v67, type metadata accessor for Event.TimeEvent);
        MEMORY[0x1D3892850](1);
        Event.TimeEvent.hash(into:)(v79);
        MEMORY[0x1D3892850](v34);
        v37 = v36;
        v13 = v72;
        sub_1D1951B4C(v37, type metadata accessor for Event.TimeEvent);
        goto LABEL_45;
      }

      v46 = v13;
      v47 = v70;
      sub_1D1951AE4(v46, v70, type metadata accessor for Event.CharacteristicEvent);
      MEMORY[0x1D3892850](2);
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v48 = v68;
      LOBYTE(v76) = *(v47 + *(v68 + 20));
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      v49 = v47 + *(v48 + 24);
      v51 = *v49;
      v50 = *(v49 + 8);
      v52 = *(v49 + 16);
      v53 = v52 >> 6;
      if (v52 >> 6)
      {
        LOBYTE(v52) = v52 & 0x3F;
        if (v53 == 1)
        {
          v54 = 1;
        }

        else
        {
          v54 = 2;
        }
      }

      else
      {
        v54 = 0;
      }

      MEMORY[0x1D3892850](v54);
      v76 = v51;
      v77 = v50;
      v78 = v52;
      CharacteristicKind.Value.hash(into:)();
      sub_1D1951B4C(v70, type metadata accessor for Event.CharacteristicEvent);
    }

    else
    {
      v66 = v23;
      v38 = v13;
      v40 = *v13;
      v39 = v13[1];
      v41 = v38[2];
      v42 = *(v38 + 24);
      MEMORY[0x1D3892850](0);
      if (v42 == 1)
      {
        MEMORY[0x1D3892850](1);
        if ((v40 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0;
        }

        MEMORY[0x1D3892890](v43);
        if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v44 = v39;
        }

        else
        {
          v44 = 0;
        }

        MEMORY[0x1D3892890](v44);
        if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v45 = v41;
        }

        else
        {
          v45 = 0;
        }

        MEMORY[0x1D3892890](v45);
        goto LABEL_41;
      }

      MEMORY[0x1D3892850](0);
      MEMORY[0x1D3892850](v40);
      if (!v39)
      {
        MEMORY[0x1D3892850](0);
        sub_1D1771BD4(v40, 0, v41, 0);
LABEL_41:
        v13 = v72;
        v23 = v66;
        goto LABEL_45;
      }

      v55 = v41;
      v23 = v66;
      if (v39 == 1)
      {
        MEMORY[0x1D3892850](1);
        v56 = v40;
        v57 = 1;
      }

      else
      {
        MEMORY[0x1D3892850](2);
        sub_1D176D4E8(v79, v39);
        v56 = v40;
        v57 = v39;
      }

      sub_1D1771BD4(v56, v57, v55, 0);
    }

    v13 = v72;
LABEL_45:
    result = sub_1D1E6926C();
    v58 = -1 << *(v17 + 32);
    v59 = result & ~v58;
    v60 = v59 >> 6;
    if (((-1 << v59) & ~*(v25 + 8 * (v59 >> 6))) == 0)
    {
      v61 = 0;
      v62 = (63 - v58) >> 6;
      while (++v60 != v62 || (v61 & 1) == 0)
      {
        v63 = v60 == v62;
        if (v60 == v62)
        {
          v60 = 0;
        }

        v61 |= v63;
        v64 = *(v25 + 8 * v60);
        if (v64 != -1)
        {
          v26 = __clz(__rbit64(~v64)) + (v60 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_58;
    }

    v26 = __clz(__rbit64((-1 << v59) & ~*(v25 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    sub_1D1951AE4(v75, *(v17 + 48) + v26 * v74, type metadata accessor for Event);
    ++*(v17 + 16);
    result = v71;
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

      v2 = v65;
      goto LABEL_56;
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
LABEL_58:
  __break(1u);
  return result;
}