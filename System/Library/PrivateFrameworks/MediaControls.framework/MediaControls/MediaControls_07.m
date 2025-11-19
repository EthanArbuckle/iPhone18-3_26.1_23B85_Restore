uint64_t sub_1A227A428(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1A227D578(a2, a1);
  if (v6)
  {
    if (a3)
    {
      v7 = 30;
    }

    else
    {
      v7 = 15;
    }

    result = sub_1A227D578(v7, a1);
    if (v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_1A227A480(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1A58D9850);
  }

  return 0;
}

uint64_t sub_1A227A4A8()
{
  v42 = type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties();
  v0 = *(v42 - 8);
  v1 = MEMORY[0x1EEE9AC00](v42);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v37 = &v36 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v36 - v5);
  v7 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  sub_1A227BD94(0, 8, 0);
  v8 = v43;
  if (qword_1ED9529C8 != -1)
  {
    swift_once();
  }

  v9 = sub_1A22E5628();
  v10 = 0;
  v39 = v9 - 8;
  do
  {
    v11 = *(&unk_1F1440370 + v10 + 32);
    v12 = __swift_project_value_buffer(v9, qword_1ED9529D0);
    v13 = *(v9 - 8);
    v14 = *(v13 + 16);
    v15 = v6 + *(v42 + 20);
    v40 = v13 + 16;
    v41 = v14;
    v14(v15, v12, v9);
    *v6 = v11;
    v43 = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1A227BD94(v16 > 1, v17 + 1, 1);
      v8 = v43;
    }

    *(v8 + 16) = v17 + 1;
    v18 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v19 = *(v0 + 72);
    sub_1A227E3F0(v6, v8 + v18 + v19 * v17);
    v10 += 8;
  }

  while (v10 != 64);
  v43 = v7;
  sub_1A227BD94(0, 8, 0);
  v20 = v43;
  if (qword_1ED9529E8 != -1)
  {
    swift_once();
  }

  v21 = 0;
  v22 = v37;
  do
  {
    v23 = *(&unk_1F1440370 + v21 + 32);
    v24 = __swift_project_value_buffer(v9, qword_1ED9529F0);
    v41(&v22[*(v42 + 20)], v24, v9);
    *v22 = v23;
    v43 = v20;
    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1A227BD94(v25 > 1, v26 + 1, 1);
      v20 = v43;
    }

    *(v20 + 16) = v26 + 1;
    sub_1A227E3F0(v22, v20 + v18 + v26 * v19);
    v21 += 8;
  }

  while (v21 != 64);
  v43 = v8;
  sub_1A227B134(v20, &qword_1EB0893F0, &unk_1A230D4C0, type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties, type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties);
  v27 = v43;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1A227BD94(0, 8, 0);
  v28 = v43;
  if (qword_1ED952A08 != -1)
  {
    swift_once();
  }

  v29 = 0;
  v30 = v38;
  do
  {
    v31 = *(&unk_1F1440370 + v29 + 32);
    v32 = __swift_project_value_buffer(v9, qword_1ED952A10);
    v41(&v30[*(v42 + 20)], v32, v9);
    *v30 = v31;
    v43 = v28;
    v34 = *(v28 + 16);
    v33 = *(v28 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1A227BD94(v33 > 1, v34 + 1, 1);
      v28 = v43;
    }

    *(v28 + 16) = v34 + 1;
    sub_1A227E3F0(v30, v28 + v18 + v34 * v19);
    v29 += 8;
  }

  while (v29 != 64);
  v43 = v27;
  result = sub_1A227B134(v28, &qword_1EB0893F0, &unk_1A230D4C0, type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties, type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties);
  qword_1ED952010 = v43;
  return result;
}

uint64_t sub_1A227A950()
{
  if (qword_1ED952008 != -1)
  {
    result = swift_once();
  }

  qword_1EB08E1E0 = *(qword_1ED952010 + 16);
  return result;
}

uint64_t sub_1A227A9A8()
{
  if (qword_1EB08E1D8 != -1)
  {
    result = swift_once();
  }

  if (__OFADD__(qword_1EB08E1E0, 1))
  {
    __break(1u);
  }

  else
  {
    qword_1EB08E1F0 = qword_1EB08E1E0 + 1;
  }

  return result;
}

uint64_t sub_1A227AA0C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties();
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *a1;
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1A227E2EC(v11, v7);
      if (*v7 == v10)
      {
        v13 = MEMORY[0x1A58D9850](v7 + *(v4 + 20), a1 + *(v4 + 20));
        sub_1A227E350(v7);
        if (v13)
        {
          return v9;
        }
      }

      else
      {
        sub_1A227E350(v7);
      }

      ++v9;
      v11 += v12;
    }

    while (v8 != v9);
  }

  return 0;
}

uint64_t sub_1A227AB94(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A22E5628();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1A22E5608();
}

CGFloat sub_1A227ABF0()
{
  v0 = sub_1A210F05C();
  v1 = v0[5];
  v11 = v0[4];
  v12 = v1;
  v2 = v0[7];
  v13 = v0[6];
  v14 = v2;
  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  v4 = v0[3];
  v9 = v0[2];
  v10 = v4;
  *&v6.m31 = v11;
  *&v6.m33 = v12;
  *&v6.m41 = v13;
  *&v6.m43 = v14;
  *&v6.m11 = v7;
  *&v6.m13 = v8;
  *&v6.m21 = v9;
  *&v6.m23 = v4;
  CATransform3DRotate(&v15, &v6, 3.14159265, 0.0, 0.0, 1.0);
  *byte_1ED9511B0 = v15;
  return v15.m21;
}

size_t sub_1A227ACA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A227AE7C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A22E5628();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A227E3AC(&qword_1ED950780);
  v33 = a2;
  v11 = sub_1A22E6538();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A227E3AC(&qword_1ED950778);
      v21 = sub_1A22E6568();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A227B5D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1A227B134(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1A227ACA0(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A227B290()
{
  v1 = v0;
  v35 = sub_1A22E5628();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893E8);
  result = sub_1A22E6E48();
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
      sub_1A227E3AC(&qword_1ED950780);
      result = sub_1A22E6538();
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

uint64_t sub_1A227B5D8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1A22E5628();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1A227B290();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1A227B854();
      goto LABEL_12;
    }

    sub_1A227BA8C();
  }

  v12 = *v3;
  sub_1A227E3AC(&qword_1ED950780);
  v13 = sub_1A22E6538();
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
      sub_1A227E3AC(&qword_1ED950778);
      v21 = sub_1A22E6568();
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
  result = sub_1A22E71F8();
  __break(1u);
  return result;
}

void *sub_1A227B854()
{
  v1 = v0;
  v2 = sub_1A22E5628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893E8);
  v6 = *v0;
  v7 = sub_1A22E6E38();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1A227BA8C()
{
  v1 = v0;
  v32 = sub_1A22E5628();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893E8);
  v6 = sub_1A22E6E48();
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
      sub_1A227E3AC(&qword_1ED950780);
      result = sub_1A22E6538();
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

size_t sub_1A227BD94(size_t a1, int64_t a2, char a3)
{
  result = sub_1A227BE1C(a1, a2, a3, *v3, &qword_1EB0893F0, &unk_1A230D4C0, type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties);
  *v3 = result;
  return result;
}

size_t sub_1A227BDD8(size_t a1, int64_t a2, char a3)
{
  result = sub_1A227BE1C(a1, a2, a3, *v3, &qword_1EB0893E0, &unk_1A230D4B0, MEMORY[0x1E6969648]);
  *v3 = result;
  return result;
}

size_t sub_1A227BE1C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A227BFF8(__int128 *a1, _OWORD *a2)
{
  v2 = a1[3];
  v87 = a1[2];
  v88 = v2;
  v3 = a1[5];
  v89 = a1[4];
  v90 = v3;
  v4 = a1[1];
  v85 = *a1;
  v86 = v4;
  v5 = a2[3];
  v81[2] = a2[2];
  v82 = v5;
  v6 = a2[5];
  v83 = a2[4];
  v84 = v6;
  v7 = a2[1];
  v81[0] = *a2;
  v81[1] = v7;
  v8 = v85;
  v10 = (a1 + 42);
  v9 = *(a1 + 42);
  v11 = (a1 + 1);
  v80[0] = *(a1 + 1);
  *(v80 + 3) = *(a1 + 1);
  v12 = *(&v86 + 1);
  v13 = v87;
  v14 = BYTE8(v87);
  v78 = v9;
  v79 = *(a1 + 23);
  v15 = *(&v88 + 1);
  v16 = a1[5];
  v76 = v89;
  v77 = v16;
  v17 = *(&v82 + 1);
  if (!*(&v88 + 1))
  {
    if (!*(&v82 + 1))
    {
      v43 = a2;
      v44 = a1;
      LOBYTE(v63) = v85;
      *(&v63 + 1) = *v11;
      DWORD1(v63) = *(a1 + 1);
      *(&v63 + 1) = *(&v85 + 1);
      v64 = v86;
      *&v65 = v87;
      WORD4(v65) = WORD4(v87);
      *(&v65 + 10) = *v10;
      HIWORD(v65) = *(a1 + 23);
      v66 = v88;
      v31 = a1[5];
      v67 = a1[4];
      v68 = v31;
      sub_1A2214CF8(&v85, &v49, &qword_1EB088B18);
      sub_1A2214CF8(v81, &v49, &qword_1EB088B18);
      v32 = &v63;
LABEL_11:
      sub_1A210D9B0(v32, &qword_1EB088B18);
      goto LABEL_12;
    }

LABEL_9:
    LOBYTE(v63) = v85;
    *(&v63 + 1) = *v11;
    DWORD1(v63) = *(a1 + 1);
    *(&v63 + 1) = *(&v85 + 1);
    v64 = v86;
    *&v65 = v87;
    WORD4(v65) = WORD4(v87);
    *(&v65 + 10) = *v10;
    HIWORD(v65) = *(a1 + 23);
    v66 = v88;
    v25 = a1[5];
    v67 = a1[4];
    v68 = v25;
    v26 = *(a2 + 6);
    v27 = a2[2];
    v70 = a2[1];
    v71 = v27;
    v69 = *a2;
    v72 = v26;
    v73 = *(&v82 + 1);
    v28 = a2[5];
    v74 = a2[4];
    v75 = v28;
    sub_1A2214CF8(&v85, &v49, &qword_1EB088B18);
    sub_1A2214CF8(v81, &v49, &qword_1EB088B18);
    v29 = &unk_1EB089400;
    v30 = &v63;
LABEL_22:
    sub_1A210D9B0(v30, v29);
LABEL_23:
    v33 = 0;
    return v33 & 1;
  }

  if (!*(&v82 + 1))
  {
    goto LABEL_9;
  }

  v48 = *(&v85 + 1);
  v45 = v88;
  v43 = a2;
  v44 = a1;
  v18 = a2[1];
  v63 = *a2;
  v64 = v18;
  v65 = a2[2];
  v38 = *(a2 + 6);
  *&v66 = v38;
  *(&v66 + 1) = *(&v82 + 1);
  v19 = a2[5];
  v67 = a2[4];
  v68 = v19;
  v40 = v64;
  v41 = *(&v63 + 1);
  v42 = BYTE8(v65);
  v39 = BYTE9(v65);
  v20 = v63;
  v47 = BYTE9(v87);
  v46 = v86;
  sub_1A2214CF8(&v85, &v49, &qword_1EB088B18);
  sub_1A2214CF8(v81, &v49, &qword_1EB088B18);
  v21 = v20;
  v22 = v13;
  v23 = v15;
  v24 = v12;
  if ((sub_1A21171B0(v8, v21) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v14)
  {
    if ((v42 & 1) == 0 || (sub_1A227896C(v48, v41) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((v42 & 1) != 0 || (v48 != v41 || v46 != v40) && (sub_1A22E71E8() & 1) == 0 || (sub_1A22E7338() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((v39 ^ v47))
  {
LABEL_21:
    sub_1A210D9B0(&v63, &qword_1EB088B18);
    v49 = v8;
    *v50 = v80[0];
    *&v50[3] = *(v80 + 3);
    v51 = v48;
    v52 = v46;
    v53 = v12;
    v54 = v22;
    v55 = v14;
    v56 = v47;
    v57 = v78;
    v58 = v79;
    v59 = v45;
    v60 = v23;
    v61 = v76;
    v62 = v77;
    v30 = &v49;
    v29 = &qword_1EB088B18;
    goto LABEL_22;
  }

  if (v45 == v38 && v23 == v17)
  {
    sub_1A210D9B0(&v63, &qword_1EB088B18);
    v49 = v8;
    *v50 = *v11;
    *&v50[3] = *(v11 + 3);
    v51 = v48;
    v52 = v46;
    v53 = v12;
    v54 = v22;
    v55 = v14;
    v56 = v47;
    v57 = *v10;
    v58 = *(v10 + 2);
    v59 = v45;
    v60 = v23;
    v35 = v44[5];
    v61 = v44[4];
    v62 = v35;
    v32 = &v49;
    goto LABEL_11;
  }

  v36 = sub_1A22E71E8();
  sub_1A210D9B0(&v63, &qword_1EB088B18);
  v49 = v8;
  *v50 = *v11;
  *&v50[3] = *(v11 + 3);
  v51 = v48;
  v52 = v46;
  v53 = v24;
  v54 = v22;
  v55 = v14;
  v56 = v47;
  v57 = *v10;
  v58 = *(v10 + 2);
  v59 = v45;
  v60 = v23;
  v37 = v44[5];
  v61 = v44[4];
  v62 = v37;
  sub_1A210D9B0(&v49, &qword_1EB088B18);
  if ((v36 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (*(v44 + 12) == *(v43 + 12) && *(v44 + 13) == *(v43 + 13))
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_1A22E71E8();
  }

  return v33 & 1;
}

uint64_t sub_1A227C544@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A22E5678();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A22E6588();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A230A780;
  v12 = sub_1A22E7358();
  *(v11 + 32) = 0x31206574617453;
  *(v11 + 40) = 0xE700000000000000;
  *(v11 + 48) = v12;
  *(v11 + 56) = v13;
  v14 = sub_1A22E7358();
  *(v11 + 64) = 0x32206574617453;
  *(v11 + 72) = 0xE700000000000000;
  *(v11 + 80) = v14;
  *(v11 + 88) = v15;
  v16 = sub_1A22E7358();
  *(v11 + 96) = 0x33206574617453;
  *(v11 + 104) = 0xE700000000000000;
  *(v11 + 112) = v16;
  *(v11 + 120) = v17;
  v18 = sub_1A22E7358();
  *(v11 + 128) = 0x34206574617453;
  *(v11 + 136) = 0xE700000000000000;
  *(v11 + 144) = v18;
  *(v11 + 152) = v19;
  (*(v8 + 16))(v10, a2, v7);
  v20 = *sub_1A21268A4();
  sub_1A22E5668();
  result = sub_1A22E6628();
  *a3 = 1;
  *(a3 + 1) = *v24;
  *(a3 + 4) = *&v24[3];
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 41) = a1 ^ 1;
  *(a3 + 42) = 0;
  *(a3 + 48) = result;
  *(a3 + 56) = v22;
  *(a3 + 64) = 0x4264726177726F46;
  *(a3 + 72) = 0xEF647261776B6361;
  *(a3 + 80) = nullsub_1;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_1A227C7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A22E5678();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A22E6588();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  if (v11 == 28239 && a2 == 0xE200000000000000 || (sub_1A22E71E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893F8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A230A140;
    v15 = sub_1A22E7358();
    *(v14 + 32) = 28239;
    *(v14 + 40) = 0xE200000000000000;
    *(v14 + 48) = v15;
    *(v14 + 56) = v16;
    v17 = sub_1A22E7348();
    *(v14 + 64) = 6710863;
    v19 = 0xE300000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893F8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A230A140;
    v20 = sub_1A22E7348();
    *(v14 + 32) = 6710863;
    *(v14 + 40) = 0xE300000000000000;
    *(v14 + 48) = v20;
    *(v14 + 56) = v21;
    v17 = sub_1A22E7358();
    *(v14 + 64) = 28239;
    v19 = 0xE200000000000000;
  }

  *(v14 + 72) = v19;
  *(v14 + 80) = v17;
  *(v14 + 88) = v18;
  (*(v10 + 16))(v13, a3, v9);
  v22 = *sub_1A21268A4();
  sub_1A22E5668();
  result = sub_1A22E6628();
  *a4 = 4;
  *(a4 + 1) = *v26;
  *(a4 + 4) = *&v26[3];
  *(a4 + 8) = v14;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 41) = 0;
  *(a4 + 43) = 1;
  *(a4 + 48) = result;
  *(a4 + 56) = v24;
  *(a4 + 64) = 0x657469726F766146;
  *(a4 + 72) = 0xE800000000000000;
  *(a4 + 80) = nullsub_1;
  *(a4 + 88) = 0;
  return result;
}

uint64_t sub_1A227CAB0()
{
  v0 = sub_1A22E70A8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A227CAFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0xED0000706F745365;
  v4 = 0x7375615079616C50;
  v5 = *a1;
  v6 = 0xE400000000000000;
  v7 = 1885956947;
  v8 = 0xE600000000000000;
  v9 = 0x656D756C6F56;
  if (v5 != 3)
  {
    v9 = 0x657469726F766146;
    v8 = 0xE800000000000000;
  }

  if (v5 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x4264726177726F46;
  v11 = 0xEF647261776B6361;
  if (!*a1)
  {
    v10 = 0x7375615079616C50;
    v11 = 0xED0000706F745365;
  }

  if (*a1 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v5 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v6;
  }

  v15 = *a2;
  v16 = 0xE400000000000000;
  v17 = 1885956947;
  v18 = 0xE600000000000000;
  v19 = 0x656D756C6F56;
  if (v15 != 3)
  {
    v19 = 0x657469726F766146;
    v18 = 0xE800000000000000;
  }

  if (v15 != 2)
  {
    v17 = v19;
    v16 = v18;
  }

  if (*a2)
  {
    v4 = 0x4264726177726F46;
    v3 = 0xEF647261776B6361;
  }

  if (*a2 <= 1u)
  {
    v20 = v4;
  }

  else
  {
    v20 = v17;
  }

  if (*a2 <= 1u)
  {
    v21 = v3;
  }

  else
  {
    v21 = v16;
  }

  if (v12 == v20 && v13 == v21)
  {
  }

  else
  {
    v22 = sub_1A22E71E8();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 1);
  if (a1[40])
  {
    if ((a2[40] & 1) == 0 || (sub_1A227896C(v23, *(a2 + 1)) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[40] & 1) != 0 || (v23 != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_1A22E71E8() & 1) == 0 || (sub_1A22E7338() & 1) == 0)
  {
    return 0;
  }

  if ((a1[41] ^ a2[41]))
  {
    return 0;
  }

  if (*(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7))
  {
    return 1;
  }

  return sub_1A22E71E8();
}

uint64_t sub_1A227CD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A22E5678();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A22E6588();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  if (*(a1 + 32))
  {
    sub_1A22E6578();
    v13 = *sub_1A21268A4();
    sub_1A22E5668();
    v14 = sub_1A22E6628();
    v16 = v15;
  }

  else
  {
    sub_1A22E6578();
    v7 = *sub_1A21268A4();
    sub_1A22E5668();
    sub_1A22E6628();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A2308E80;
    v9 = sub_1A22E71D8();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1A2233A8C();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v14 = sub_1A22E65F8();
    v16 = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893F8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A230A140;
  v18 = sub_1A22E7358();
  *(v17 + 32) = 0x31206574617453;
  *(v17 + 40) = 0xE700000000000000;
  *(v17 + 48) = v18;
  *(v17 + 56) = v19;
  v20 = sub_1A22E7358();
  *(v17 + 64) = 0x32206574617453;
  *(v17 + 72) = 0xE700000000000000;
  *(v17 + 80) = v20;
  *(v17 + 88) = v21;
  MEMORY[0x1A58DA8D0](95, 0xE100000000000000);
  sub_1A22E6FC8();
  *&v25 = 1885956947;
  *(&v25 + 1) = 0xE400000000000000;
  MEMORY[0x1A58DA8D0](0, 0xE000000000000000);

  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a1 + 32);
  *a2 = 2;
  *(a2 + 8) = v17;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v25;
  *(a2 + 80) = sub_1A227E454;
  *(a2 + 88) = v22;
}

uint64_t sub_1A227D18C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A227D1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A227D290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A227D2D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A227D33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A227D384(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A227D3F0(uint64_t a1)
{
  v2 = sub_1A22E5628();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1A227E3AC(&qword_1ED950780);
  result = MEMORY[0x1A58DAB90](v9, v2, v10);
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
      sub_1A227AE7C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1A227D578(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v107 = a1;
  v2 = sub_1A22E5678();
  v108 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v100 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v109 = &v98 - v5;
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893D8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v98 - v13;
  v119 = type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties();
  v14 = *(v119 - 8);
  v15 = MEMORY[0x1EEE9AC00](v119);
  v106 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v98 - v17;
  v124 = sub_1A22E5628();
  v121 = *(v124 - 8);
  v19 = MEMORY[0x1EEE9AC00](v124);
  v113 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v120 = &v98 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v122 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v98 - v25;
  if (qword_1ED952008 != -1)
  {
LABEL_39:
    swift_once();
  }

  v102 = v9;
  v103 = v7;
  v110 = v6;
  v27 = qword_1ED952010;
  v28 = *(qword_1ED952010 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v101 = v2;
  v105 = qword_1ED952010;
  if (v28)
  {
    v126[0] = MEMORY[0x1E69E7CC0];
    sub_1A227BDD8(0, v28, 0);
    v29 = v126[0];
    v30 = v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v123 = *(v14 + 72);
    v31 = (v121 + 16);
    v32 = v124;
    do
    {
      sub_1A227E2EC(v30, v18);
      (*v31)(v26, &v18[*(v119 + 20)], v32);
      sub_1A227E350(v18);
      v126[0] = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1A227BDD8(v33 > 1, v34 + 1, 1);
        v29 = v126[0];
      }

      *(v29 + 16) = v34 + 1;
      (*(v121 + 32))(v29 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v34, v26, v32);
      v30 += v123;
      --v28;
    }

    while (v28);
  }

  v2 = sub_1A227D3F0(v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893E0);
  v35 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v123 = *(v121 + 72);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1A2308E80;
  v104 = v35;
  sub_1A22E5638();
  v37 = sub_1A22E5648();
  v126[0] = v36;
  sub_1A227B134(v37, &qword_1EB0893E0, &unk_1A230D4B0, MEMORY[0x1E6969648], MEMORY[0x1E6969648]);
  v6 = v126[0];
  v7 = *(v126[0] + 16);
  v26 = v2;

  v115 = v7;
  if (v7)
  {
    v38 = 0;
    v116 = (v6 + v104);
    v117 = v6;
    v18 = v120;
    v9 = (v121 + 16);
    v118 = v2 + 56;
    v14 = v121 + 8;
    while (1)
    {
      if (v38 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      v39 = *v9;
      (*v9)(v122, &v116[v38 * v123], v124);
      if (*(v26 + 2))
      {
        sub_1A227E3AC(&qword_1ED950780);
        v7 = v122;
        v40 = sub_1A22E6538();
        v41 = -1 << v26[32];
        v42 = v40 & ~v41;
        if ((*(v118 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          break;
        }
      }

LABEL_9:
      ++v38;
      (*v14)(v122, v124);
      v6 = v117;
      if (v38 == v115)
      {
        goto LABEL_18;
      }
    }

    v2 = ~v41;
    while (1)
    {
      v7 = v124;
      v39(v18, *(v26 + 6) + v42 * v123, v124);
      sub_1A227E3AC(&qword_1ED950778);
      v43 = sub_1A22E6568();
      (*v14)(v18, v7);
      if (v43)
      {
        break;
      }

      v42 = (v42 + 1) & v2;
      if (((*(v118 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v44 = v121;
    v45 = v112;
    v46 = v124;
    (*(v121 + 32))(v112, v122, v124);
    (*(v44 + 56))(v45, 0, 1, v46);
  }

  else
  {
LABEL_18:

    v44 = v121;
    v45 = v112;
    v46 = v124;
    (*(v121 + 56))(v112, 1, 1, v124);
  }

  v47 = *(v44 + 48);
  v48 = v47(v45, 1, v46);
  v49 = v110;
  v50 = v111;
  v51 = v113;
  v53 = v108;
  v52 = v109;
  if (v48 == 1)
  {
    v117 = v47;
    v118 = v44 + 48;
    v54 = sub_1A2104EA0();
    v55 = v103;
    v56 = v102;
    (*(v103 + 2))(v102, v54, v49);
    v57 = *(v53 + 16);
    v58 = v114;
    v59 = v101;
    v57(v52, v114, v101);
    v60 = v100;
    v57(v100, v58, v59);
    v61 = sub_1A22E6238();
    v62 = sub_1A22E6A78();
    if (os_log_type_enabled(v61, v62))
    {
      LODWORD(v114) = v62;
      v116 = v61;
      v63 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v126[0] = v99;
      *v63 = 134349570;
      *(v63 + 4) = v107;
      *(v63 + 12) = 2082;
      v64 = v109;
      v65 = sub_1A22E55E8();
      v67 = v66;
      v69 = *(v53 + 8);
      v68 = v53 + 8;
      v109 = v69;
      (v69)(v64, v59);
      v70 = sub_1A2103450(v65, v67, v126);

      *(v63 + 14) = v70;
      v115 = v63;
      *(v63 + 22) = 2080;
      v71 = sub_1A22E5648();
      v72 = *(v71 + 16);
      if (v72)
      {
        v108 = v68;
        v125 = MEMORY[0x1E69E7CC0];
        sub_1A210E5F8(0, v72, 0);
        v73 = v125;
        v98 = v71;
        v74 = v71 + v104;
        v122 = *(v44 + 16);
        v75 = (v44 + 8);
        do
        {
          v76 = v120;
          v77 = v124;
          (v122)(v120, v74, v124);
          v78 = sub_1A22E55F8();
          v80 = v79;
          (*v75)(v76, v77);
          v125 = v73;
          v82 = *(v73 + 16);
          v81 = *(v73 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_1A210E5F8((v81 > 1), v82 + 1, 1);
            v73 = v125;
          }

          *(v73 + 16) = v82 + 1;
          v83 = v73 + 16 * v82;
          *(v83 + 32) = v78;
          *(v83 + 40) = v80;
          v74 += v123;
          --v72;
        }

        while (v72);

        v45 = v112;
        v51 = v113;
        v46 = v124;
        v44 = v121;
        v60 = v100;
      }

      else
      {

        v73 = MEMORY[0x1E69E7CC0];
        v46 = v124;
        v45 = v112;
        v51 = v113;
      }

      v85 = MEMORY[0x1A58DA990](v73, MEMORY[0x1E69E6158]);
      v87 = v86;

      (v109)(v60, v101);
      v88 = sub_1A2103450(v85, v87, v126);

      v89 = v115;
      *(v115 + 24) = v88;
      v90 = v116;
      _os_log_impl(&dword_1A20FC000, v116, v114, "Configuring for %{public}ld: Locale %{public}s does not use any supported numbering systems. Available numbering systems: %s. Defaulting to latin numerals.", v89, 0x20u);
      v91 = v99;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v91, -1, -1);
      MEMORY[0x1A58DCD00](v89, -1, -1);

      (*(v103 + 1))(v102, v110);
      v47 = v117;
    }

    else
    {

      v84 = *(v53 + 8);
      v84(v60, v59);
      v84(v109, v59);
      (*(v55 + 1))(v56, v110);
      v47 = v117;
      v45 = v112;
      v51 = v113;
    }

    v50 = v111;
  }

  sub_1A2214CF8(v45, v50, &qword_1EB0893D8);
  v92 = v47(v50, 1, v46);
  v93 = v107;
  if (v92 == 1)
  {
    if (qword_1ED9529C8 != -1)
    {
      swift_once();
    }

    v94 = __swift_project_value_buffer(v46, qword_1ED9529D0);
    (*(v44 + 16))(v51, v94, v46);
    if (v47(v50, 1, v46) != 1)
    {
      sub_1A210D9B0(v50, &qword_1EB0893D8);
    }
  }

  else
  {
    (*(v44 + 32))(v51, v50, v46);
  }

  v95 = v106;
  *v106 = v93;
  (*(v44 + 32))(v95 + *(v119 + 20), v51, v46);
  v96 = sub_1A227AA0C(v95, v105);
  sub_1A227E350(v95);
  sub_1A210D9B0(v45, &qword_1EB0893D8);
  return v96;
}

uint64_t type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties()
{
  result = qword_1ED951FF0;
  if (!qword_1ED951FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A227E2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A227E350(uint64_t a1)
{
  v2 = type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A227E3AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A22E5628();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A227E3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PackageAsset.SkipInterval.GlyphLayerProperties();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A227E454(void *a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v5 = sub_1A22E6598();
    v6 = [a1 publishedObjectWithName_];

    if (v6)
    {
      sub_1A22E6D88();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    if (*(&v32 + 1))
    {
      sub_1A2115288(0, &qword_1ED94E978);
      if (swift_dynamicCast())
      {
        v7 = v30;
        CATransform3DMakeRotation(&v29, 3.14159265, 0.0, 1.0, 0.0);
        v28 = v29;
        [v7 setTransform_];
      }
    }

    else
    {
      sub_1A210D9B0(v33, &qword_1EB088E78);
    }
  }

  v8 = sub_1A22E6598();
  v9 = [a1 publishedObjectWithName_];

  if (v9)
  {
    sub_1A22E6D88();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v28, 0, 32);
  }

  *&v29.m11 = *&v28.m11;
  *&v29.m13 = *&v28.m13;
  if (!*&v28.m14)
  {
    goto LABEL_41;
  }

  sub_1A2115288(0, &qword_1ED94E978);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v10 = *&v33[0];
  v11 = [*&v33[0] sublayers];

  if (!v11)
  {
    return;
  }

  v12 = sub_1A22E6748();

  v13 = sub_1A22E6598();
  v14 = [a1 publishedObjectWithName_];

  if (v14)
  {
    sub_1A22E6D88();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v28, 0, 32);
  }

  *&v29.m11 = *&v28.m11;
  *&v29.m13 = *&v28.m13;
  if (!*&v28.m14)
  {

LABEL_41:
    sub_1A210D9B0(&v29, &qword_1EB088E78);
    return;
  }

  if (swift_dynamicCast())
  {
    v15 = *&v33[0];
    v16 = [*&v33[0] sublayers];

    if (v16)
    {
      v27 = sub_1A22E6748();

      v17 = (*(v2 + 16))(a2);
      if (v12 >> 62)
      {
        goto LABEL_49;
      }

      for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v17 = v25)
      {
        v26 = -v17;
        v19 = 4;
        while (1)
        {
          v20 = v19 - 4;
          if ((v12 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1A58DB0F0](v19 - 4, v12);
          }

          else
          {
            if (v20 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v17 = *(v12 + 8 * v19);
          }

          v21 = v17;
          v22 = v19 - 3;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v27 >> 62)
          {
            v17 = sub_1A22E6DE8();
            if (v20 == v17)
            {
LABEL_42:

              goto LABEL_43;
            }
          }

          else
          {
            v17 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v20 == v17)
            {
              goto LABEL_42;
            }
          }

          if ((v27 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1A58DB0F0](v19 - 4, v27);
          }

          else
          {
            if (v20 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v23 = *(v27 + 8 * v19);
          }

          v24 = v23;
          [v21 setHidden_];
          [v24 setHidden_];

          ++v19;
          if (v22 == i)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v25 = v17;
        i = sub_1A22E6DE8();
      }

LABEL_43:
    }
  }
}

uint64_t sub_1A227E928(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1A227E970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A227E9EC()
{
  result = sub_1A22E5628();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A227EA80(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(a1 + 8);
  if (*(a1 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 11))
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 | v6;
  if (*(a2 + 9))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | *(a2 + 8);
  if (*(a2 + 10))
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 11))
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 0;
  }

  return sub_1A227F574(v2, v4 | v7, *a2, v9 | v10 | v11);
}

uint64_t sub_1A227EB04()
{
  if (*(v0 + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 8);
  if (*(v0 + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 11))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return sub_1A210553C(*v0, v2 | v3 | v4);
}

uint64_t sub_1A227EB4C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_presentable;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A227EBB8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_presentable;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

id sub_1A227EC78()
{
  v0 = [objc_opt_self() sharedMonitor];

  return v0;
}

uint64_t sub_1A227ED00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_viewModel;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v4))
  {
    v7 = v6;
    if (*(v1 + v3))
    {
      if (v5)
      {

        v9 = sub_1A21297AC(v8, v5);

        if (v9)
        {

          return swift_unknownObjectRelease();
        }
      }
    }

    else if (!v5)
    {
      return swift_unknownObjectRelease();
    }

    ObjectType = swift_getObjectType();
    v12 = *(v7 + 8);

    v12(v13, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

char *sub_1A227EE88(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_presentable + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_lockScreenObserver;
  *&v2[v5] = [objc_opt_self() sharedMonitor];
  *&v2[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_viewModel] = 0;
  v6 = &v2[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state];
  *v6 = 0;
  *(v6 + 2) = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_sessionController] = a1;
  *&v2[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_dataSource] = a2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for MediaSuggestionsPresenter();

  v7 = objc_msgSendSuper2(&v14, sel_init);
  sub_1A21048C8();
  sub_1A2103688();
  v8 = *(*a1 + 280);
  v9 = v7;
  v8(v9, &off_1F1440B40);

  v10 = *(*a2 + 208);
  v11 = v9;
  v10(v11, &off_1F1440B80);

  v12 = *&v11[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_lockScreenObserver];
  [v12 addObserver_];

  return v11;
}

id sub_1A227F058()
{
  v1 = *(**&v0[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_sessionController] + 288);

  v1(v0, &off_1F1440B40);

  v2 = *(**&v0[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_dataSource] + 216);

  v3 = v0;
  v2();

  [*&v3[OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_lockScreenObserver] removeObserver_];
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MediaSuggestionsPresenter();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A227F264(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A22E5C88();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_sessionController);
  result = (*(*v10 + 200))(v7);
  if (result)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(*v10 + 152))();
    v15 = sub_1A22E59B8();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    (*(v13 + 56))(a1, a2, v15, v17, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1A227F4B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A227F510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1A227F574(unint64_t result, int a2, uint64_t a3, int a4)
{
  if (!result)
  {
    if (a3)
    {
      return result;
    }

LABEL_6:
    v8 = a2 ^ a4;
    if (((a2 ^ a4) & 1) == 0 && ((v8 >> 8) & 1) == 0 && (v8 & 0x10000) == 0)
    {
      return ((a4 & 0x1000000) == 0) ^ ((a2 & 0x1000000u) >> 24);
    }

    return result;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = result;

  LOBYTE(v6) = sub_1A21297AC(v6, a3);

  result = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_1A227F610()
{
  result = qword_1ED94EA78;
  if (!qword_1ED94EA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94EA78);
  }

  return result;
}

uint64_t sub_1A227F66C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AbsoluteVolumeControlView.ViewModel(0) + 20);
  v4 = sub_1A22E5D98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A227F708(uint64_t a1)
{
  v3 = *(type metadata accessor for AbsoluteVolumeControlView.ViewModel(0) + 20);
  v4 = sub_1A22E5D98();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1A227F7CC(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for AbsoluteVolumeControlView.ViewModel(0);

  return sub_1A22E5D78();
}

uint64_t sub_1A227F82C@<X0>(uint64_t a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for AbsoluteVolumeControlView.ViewModel(0) + 20);
  v6 = sub_1A22E5D98();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1A227F8B0(float *a1, float *a2)
{
  if (*a1 == *a2)
  {
    return sub_1A22E5D78();
  }

  else
  {
    return 0;
  }
}

id sub_1A227F8D8()
{
  v0 = objc_allocWithZone(MRUSlider);

  return [v0 initWithStyle_];
}

uint64_t sub_1A227F974(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_observer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A227F9E0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_observer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

uint64_t sub_1A227FA80(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089460);
  v3 = a1;
  return sub_1A22996D8(&v3);
}

uint64_t sub_1A227FACC()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__isInteracting) + 160);

  v1(&v4, v2);

  return v4;
}

uint64_t sub_1A227FB40(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__isInteracting);
  v5 = a1;
  v3 = *(*v2 + 168);

  v3(&v5);
}

uint64_t (*sub_1A227FBB4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__isInteracting);
  *a1 = v3;
  *(v3 + 32) = v5;
  v6 = *(*v5 + 176);

  *(v4 + 40) = v6(v4);
  return sub_1A228202C;
}

uint64_t sub_1A227FC74(float a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089470);
  v3 = a1;
  return sub_1A22996D8(&v3);
}

float sub_1A227FCC8()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__sliderValue) + 160);

  v1(&v4, v2);

  return *&v4;
}

uint64_t sub_1A227FD3C(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__sliderValue);
  v5 = a1;
  v3 = *(*v2 + 168);

  v3(&v5);
}

uint64_t (*sub_1A227FDB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__sliderValue);
  *a1 = v3;
  *(v3 + 32) = v5;
  v6 = *(*v5 + 176);

  *(v4 + 40) = v6(v4);
  return sub_1A227FE64;
}

void sub_1A227FE68(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_1A227FEC8(void *a1)
{
  v2 = *(**(v1 + *a1) + 184);

  v2(v3);
}

double sub_1A227FF3C()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_hitRectInsets;
  swift_beginAccess();
  return *v1;
}

id sub_1A227FF88(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_hitRectInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [*(v4 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider) setHitRectInset_];
}

void (*sub_1A228001C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_hitRectInsets;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22800A4;
}

void sub_1A22800A4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    [*(v4 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider) setHitRectInset_];
  }

  free(v3);
}

uint64_t sub_1A2280110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__viewModel;
  swift_beginAccess();
  return sub_1A2280168(v1 + v3, a1);
}

uint64_t sub_1A2280168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AbsoluteVolumeControlView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22801CC(float *a1)
{
  v3 = type metadata accessor for AbsoluteVolumeControlView.ViewModel(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__viewModel;
  swift_beginAccess();
  sub_1A2280168(v1 + v9, v8);
  if (*a1 == *v8)
  {
    v10 = sub_1A22E5D78();
    sub_1A228035C(v8);
    if (v10)
    {
      return sub_1A228035C(a1);
    }
  }

  else
  {
    sub_1A228035C(v8);
  }

  sub_1A2280168(a1, v6);
  swift_beginAccess();
  sub_1A22803B8(v6, v1 + v9);
  swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x178))(1);
  return sub_1A228035C(a1);
}

uint64_t sub_1A228035C(uint64_t a1)
{
  v2 = type metadata accessor for AbsoluteVolumeControlView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A22803B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AbsoluteVolumeControlView.ViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_1A228041C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for AbsoluteVolumeControlView.ViewModel(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__viewModel;
  swift_beginAccess();
  sub_1A2280168(v1 + v9, v8);
  return sub_1A2280514;
}

void sub_1A2280514(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1A2280168(v4, v3);
    sub_1A22801CC(v3);
    sub_1A228035C(v4);
  }

  else
  {
    sub_1A22801CC(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A2280590@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22E55A8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

char *sub_1A2280630(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider;
  *&v2[v4] = [objc_allocWithZone(MRUSlider) initWithStyle_];
  *&v2[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__isInteracting;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089460);
  LOBYTE(v18) = 0;
  *&v2[v5] = sub_1A22996D8(&v18);
  v6 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__sliderValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089470);
  v18 = 0;
  *&v2[v6] = sub_1A22996D8(&v18);
  v7 = &v2[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_hitRectInsets];
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  *v7 = *MEMORY[0x1E69DDCE0];
  *(v7 + 1) = v8;
  v9 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_postInteractionUpdateDelay;
  *&v2[v9] = sub_1A22549D8();
  v10 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_lastInteractionDate;
  v11 = sub_1A22E55A8();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_updateViewModelTimer] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_stylingProvider] = 0;
  sub_1A2280168(a1, &v2[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__viewModel]);
  v17.receiver = v2;
  v17.super_class = type metadata accessor for AbsoluteVolumeControlView(0);
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider;
  v14 = *&v12[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider];
  v15 = v12;
  [v14 setDelegate_];
  [v15 addSubview_];
  [*&v12[v13] addTarget:v15 action:sel_sliderTouchDown_ forControlEvents:1];
  [*&v12[v13] addTarget:v15 action:sel_sliderValueChanged_ forControlEvents:4096];
  [*&v12[v13] addTarget:v15 action:sel_sliderTouchUpInside_ forControlEvents:64];
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x178))(0);

  sub_1A228035C(a1);
  return v15;
}

id sub_1A22808E8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AbsoluteVolumeControlView(0);
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider];
  [v0 bounds];
  return [v1 setFrame_];
}

uint64_t sub_1A2280A00(char a1)
{
  v3 = type metadata accessor for AbsoluteVolumeControlView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider);
  result = [v6 isTracking];
  if ((result & 1) == 0)
  {
    result = sub_1A2280FD4();
    if (result)
    {
      v8 = MEMORY[0x1E69E7D40];
      v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
      v9();
      v10 = *v5;
      sub_1A228035C(v5);
      *&v11 = v10;
      (v9)([v6 setValue:a1 & 1 animated:v11]);
      v12 = *v5;
      v13 = sub_1A228035C(v5);
      return (*((*v8 & *v1) + 0xE0))(v13, v12);
    }
  }

  return result;
}

uint64_t sub_1A2280B60()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AbsoluteVolumeControlView(0);
  v1 = objc_msgSendSuper2(&v6, sel_hitRect);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  (v2)(v1);
  v3 = v2();
  v4 = (v2)(v3);
  (v2)(v4);
  return UIRectInset();
}

void sub_1A2280DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F68);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - v2;
  sub_1A22E5598();
  v4 = sub_1A22E55A8();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_lastInteractionDate;
  swift_beginAccess();
  sub_1A2281EC0(v3, v0 + v5);
  swift_endAccess();
  v6 = objc_opt_self();
  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_postInteractionUpdateDelay);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A2281F30;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A224DB84;
  aBlock[3] = &block_descriptor_11;
  v9 = _Block_copy(aBlock);

  v10 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:v7];
  _Block_release(v9);
  v11 = *(v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_updateViewModelTimer);
  *(v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_updateViewModelTimer) = v10;
}

uint64_t sub_1A2280FD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F68);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = sub_1A22E55A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_lastInteractionDate;
  swift_beginAccess();
  sub_1A2281FBC(v1 + v12, v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1A2281C40(v7);
LABEL_5:
    sub_1A2281FBC(v1 + v12, v5);
    v16 = v13(v5, 1, v8) == 1;
    sub_1A2281C40(v5);
    return v16;
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1A22E5578();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  if (v15 >= -*(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_postInteractionUpdateDelay))
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_1A22813BC()
{
  v1 = type metadata accessor for AbsoluteVolumeControlView.ViewModel(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E5738();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v7);
  v11 = *(v2 + 28);
  [*(v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider) value];
  sub_1A22E5D88();
  v12 = sub_1A22E5D98();
  v13 = (*(*(v12 - 8) + 8))(&v4[v11], v12);
  if ((*((*v10 & *v0) + 0xA0))(v13))
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(v0, &off_1F1440C40, v9, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1A22815F0()
{
  v1 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_stylingProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A228163C(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_stylingProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
}

uint64_t (*sub_1A22816E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A228174C;
}

uint64_t sub_1A228174C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x1C8))(result);
  }

  return result;
}

void sub_1A22817B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  [v1 setStylingProvider_];
}

id sub_1A22818C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AbsoluteVolumeControlView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1A2281A0C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  return sub_1A220BEF8;
}

void sub_1A2281AAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider;
  *(v1 + v2) = [objc_allocWithZone(MRUSlider) initWithStyle_];
  *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_observer + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__isInteracting;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089460);
  v11 = 0;
  *(v1 + v3) = sub_1A22996D8(&v11);
  v4 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView__sliderValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089470);
  v10 = 0;
  *(v1 + v4) = sub_1A22996D8(&v10);
  v5 = (v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_hitRectInsets);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v5 = *MEMORY[0x1E69DDCE0];
  v5[1] = v6;
  v7 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_postInteractionUpdateDelay;
  *(v1 + v7) = sub_1A22549D8();
  v8 = OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_lastInteractionDate;
  v9 = sub_1A22E55A8();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_updateViewModelTimer) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_stylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A2281C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A2281CB0()
{
  type metadata accessor for AbsoluteVolumeControlView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A2281DC4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A2281DC4()
{
  if (!qword_1ED950788)
  {
    sub_1A22E55A8();
    v0 = sub_1A22E6D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED950788);
    }
  }
}

uint64_t sub_1A2281E44()
{
  result = sub_1A22E5D98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2281EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A2281F30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x178))(1);
  }
}

uint64_t sub_1A2281FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A2282030()
{
  v0 = sub_1A22E6598();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_1ED952E10 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_1A22820A8()
{
  if (qword_1ED950D50 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED952E10;

  return v0;
}

id sub_1A2282124(void *a1)
{
  v1 = a1;

  return v1;
}

id sub_1A228218C()
{
  v0 = *MEMORY[0x1E69DDD08];
  sub_1A211476C();
  v2 = v1;
  v3 = sub_1A21146A4(v1, *MEMORY[0x1E69DB980]);

  return v3;
}

id sub_1A2282240(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089488);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &ObjectType - v11;
  v13 = &v5[OBJC_IVAR____TtC13MediaControls28RoutePickerAllSpeakersButton_style];
  v14 = *MEMORY[0x1E69DDD08];
  sub_1A211476C();
  v16 = v15;
  v17 = sub_1A21146A4(v15, *MEMORY[0x1E69DB980]);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  *v13 = v17;
  *(v13 + 1) = v19;
  *(v13 + 4) = v21;
  v13[20] = BYTE4(v21) & 1;
  *(v13 + 3) = v23;
  v24 = type metadata accessor for RoutePickerAllSpeakersButton();
  v37.receiver = v5;
  v37.super_class = v24;
  v25 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4, ObjectType);
  sub_1A22E6CE8();
  sub_1A22E6CB8();
  v26 = sub_1A22E6598();
  v27 = [objc_opt_self() _systemImageNamed_];

  sub_1A22E6CD8();
  v28 = sub_1A22E6CF8();
  (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
  sub_1A22E6D18();
  sub_1A225CA7C();
  v29 = objc_opt_self();
  v30 = [v29 labelColor];
  [v25 setTitleColor:v30 forState:0];

  v31 = [v29 labelColor];
  [v25 setTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A2308E80;
  v33 = sub_1A22E6378();
  v34 = MEMORY[0x1E69DC2B0];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  sub_1A22E6C48();
  swift_unknownObjectRelease();

  sub_1A22828A0();

  return v25;
}

void sub_1A22825B0()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerAllSpeakersButton_style;
  v2 = *MEMORY[0x1E69DDD08];
  sub_1A211476C();
  v4 = v3;
  v5 = sub_1A21146A4(v3, *MEMORY[0x1E69DB980]);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *v1 = v5;
  *(v1 + 8) = v7;
  *(v1 + 16) = v9;
  *(v1 + 20) = BYTE4(v9) & 1;
  *(v1 + 24) = v11;
  sub_1A22E7028();
  __break(1u);
}

double sub_1A2282828()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RoutePickerAllSpeakersButton();
  objc_msgSendSuper2(&v6, sel_intrinsicContentSize);
  v2 = v1;
  sub_1A22E6B78();
  v4 = v2 + v3;
  sub_1A22E6B88();
  return v4;
}

void sub_1A22828A0()
{
  v1 = v0;
  v2 = sub_1A22E54B8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089498);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089488);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v35 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = &v0[OBJC_IVAR____TtC13MediaControls28RoutePickerAllSpeakersButton_style];
  v15 = *&v0[OBJC_IVAR____TtC13MediaControls28RoutePickerAllSpeakersButton_style];
  v16 = *(v14 + 1);
  v17 = *(v14 + 4);
  v18 = v14[20];
  v19 = *(v14 + 3);
  v20 = [v1 traitCollection];
  v21 = sub_1A21275D0();
  v37 = v18;
  v22 = sub_1A21275D8(v20, v15, v16, v17 | (v18 << 32), v19, v21);

  v36 = v1;
  sub_1A22E6D08();
  v23 = sub_1A22E6CF8();
  v24 = *(*(v23 - 8) + 48);
  if (v24(v13, 1, v23))
  {
    sub_1A2214CF8(v13, v9, &qword_1EB089488);
    sub_1A22E6D18();
    sub_1A210D9B0(v13, &qword_1EB089488);
  }

  else
  {
    v25 = [objc_opt_self() configurationWithFont_];
    sub_1A22E6CA8();
    sub_1A22E6D18();
  }

  v26 = v35;
  sub_1A22E6D08();
  if (v24(v26, 1, v23))
  {
    sub_1A2214CF8(v26, v9, &qword_1EB089488);
    sub_1A22E6D18();

    sub_1A210D9B0(v26, &qword_1EB089488);
  }

  else
  {
    sub_1A2242728();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0894A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2308E80;
    v28 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_1A2282E3C();
    *(inited + 40) = v22;
    v29 = v28;
    v30 = v22;
    sub_1A2282E88(inited);
    swift_setDeallocating();
    sub_1A210D9B0(inited + 32, &qword_1EB0894A8);
    sub_1A22E54C8();
    v31 = v34;
    sub_1A22E54A8();
    v32 = sub_1A22E5498();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    sub_1A22E6CC8();
    sub_1A22E6D18();
  }
}

id sub_1A2282CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerAllSpeakersButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2282D60()
{
  sub_1A228309C(&qword_1EB0894D0);
  sub_1A228309C(&qword_1EB0894D8);

  return sub_1A22E7098();
}

unint64_t sub_1A2282E3C()
{
  result = qword_1ED94E988;
  if (!qword_1ED94E988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E988);
  }

  return result;
}

unint64_t sub_1A2282E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0894B0);
    v3 = sub_1A22E7078();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2214CF8(v4, &v11, &qword_1EB0894A8);
      v5 = v11;
      result = sub_1A226A69C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A210E174(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for Key()
{
  if (!qword_1ED94E9E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED94E9E8);
    }
  }
}

uint64_t sub_1A228309C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2283130(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0) + 20);

  return sub_1A2283174(a1, v3);
}

uint64_t sub_1A2283174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHeaderView.ViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2283310@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0) + 28);

  return sub_1A2115784(v3, a1);
}

uint64_t sub_1A2283354(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0) + 28);

  return sub_1A2283398(a1, v3);
}

uint64_t sub_1A2283454@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1A22835A0()
{
  v1 = (v0 + *(type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0) + 36));
  v2 = *v1;
  sub_1A2117FA8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A2283600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0) + 36));
  result = sub_1A221467C(*v9, v9[1]);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_1A22836A8()
{
  v1 = *(v0 + *(type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0) + 40));
  sub_1A2124CD0(v1);
  return v1;
}

uint64_t sub_1A22836EC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0) + 40));
  result = sub_1A211BC80(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1A22837A0(char a1)
{
  result = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_1A228381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *a9 = a1;
  a9[1] = a2;
  v19 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  sub_1A2288F28(a3, a9 + v19[5], type metadata accessor for SessionHeaderView.ViewModel);
  sub_1A2129BD0(a4, a9 + v19[6], &qword_1EB088BD8);
  memcpy(a9 + v19[7], a5, 0x300uLL);
  result = sub_1A2129BD0(a6, a9 + v19[8], &qword_1EB088828);
  v21 = (a9 + v19[9]);
  *v21 = a7;
  v21[1] = a8;
  v21[2] = a10;
  v21[3] = a11;
  v22 = (a9 + v19[10]);
  *v22 = a12;
  v22[1] = a13;
  *(a9 + v19[11]) = a14;
  return result;
}

void (*sub_1A2283944(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A2255490;
}

char *sub_1A2283A2C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for MediaSuggestionsPresenter();
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController);

    v4 = *sub_1A2268A64();

    v5 = v3;
    v6 = v0;
    v7 = sub_1A227EE44(v5, v4);
    v8 = *(v0 + 40);
    *(v6 + 40) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1A2283AD0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for WaveformPresenter();
    v1 = sub_1A229F32C(*(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_waveformController));
    *(v0 + 48) = v1;
  }

  return v1;
}

double sub_1A2283B5C@<D0>(char *a1@<X8>)
{
  v2 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  sub_1A22C7854(&a1[v2[5]]);
  v3 = v2[6];
  v4 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  sub_1A221DD38(&a1[v2[7]]);
  v5 = v2[8];
  v6 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v7 = &a1[v2[9]];
  result = 0.0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v9 = &a1[v2[10]];
  *v9 = 0;
  *(v9 + 1) = 0;
  a1[v2[11]] = 0;
  return result;
}

uint64_t sub_1A2283C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_viewModel;
  swift_beginAccess();
  return sub_1A2287A50(v1 + v3, a1, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
}

uint64_t sub_1A2283CC8(uint64_t a1)
{
  v3 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_viewModel;
  swift_beginAccess();
  sub_1A2287AB8(a1, v1 + v6);
  v7 = swift_endAccess();
  if ((*(*v1 + 176))(v7))
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    sub_1A2287A50(v1 + v6, v5, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
    (*(v9 + 8))(v5, ObjectType, v9);
    swift_unknownObjectRelease();
    sub_1A211BB1C(a1, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
    a1 = v5;
  }

  return sub_1A211BB1C(a1, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
}

void *sub_1A2283E3C()
{
  v1 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A2283E88(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artwork;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if ((*(*v1 + 176))())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = *(v1 + v3);
    v10 = *(v7 + 16);
    v11 = v9;
    v10(v9, ObjectType, v7);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A2283F70(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_isEligibleForHardwareVolumeControls;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*(**(v1 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController) + 296))(v4);
}

uint64_t (*sub_1A2284004(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2284068;
}

uint64_t sub_1A2284068(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(**(*(a1 + 24) + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController) + 296))(result);
  }

  return result;
}

uint64_t sub_1A22840D0()
{
  v1 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_isOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2284114(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_isOnScreen;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = a1 & 1;
  *(v1 + v3) = a1;
  if (v5 != (a1 & 1))
  {
    v7 = (*(**(v1 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artworkController) + 192))(v9);
    *(v8 + *(type metadata accessor for SessionArtworkPresentationModel() + 24)) = v6;
    return v7(v9, 0);
  }

  return result;
}

void (*sub_1A22841D8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_isOnScreen;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_1A228426C;
}

void sub_1A228426C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = (*(**(v1[7] + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artworkController) + 192))(v1);
    *(v7 + *(type metadata accessor for SessionArtworkPresentationModel() + 24)) = v4;
    v6(v1, 0);
  }

  free(v1);
}

void *sub_1A2284350(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1A2287EF0(a1);

  return v2;
}

void *sub_1A228439C(uint64_t a1)
{
  v1 = sub_1A2287EF0(a1);

  return v1;
}

uint64_t sub_1A22843D0()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController) + 288);

  v1(v0, &off_1F1440DF0);

  sub_1A210DA3C(v0 + 16);

  sub_1A211BB1C(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_viewModel, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);

  return v0;
}

uint64_t sub_1A22844E4()
{
  sub_1A22843D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A228453C(uint64_t a1)
{
  v3 = (*(**(v1 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artworkController) + 192))(v6);
  *(v4 + *(type metadata accessor for SessionArtworkPresentationModel() + 20)) = a1;
  return v3(v6, 0);
}

void sub_1A22845D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController) + 152))(v6);
  sub_1A22E5B48();
  (*(v5 + 8))(v8, v4);
  v9 = sub_1A22E5B38();
  if ((*(*(v9 - 8) + 48))(v3, 1, v9))
  {
    sub_1A210D9B0(v3, &unk_1EB089440);
  }

  else
  {
    v10 = sub_1A22E5B08();
    v12 = v11;
    v13 = sub_1A210D9B0(v3, &unk_1EB089440);
    v14 = MRUCreateOpenApplicationService(v13);
    if (v14)
    {
      v15 = v14;
      sub_1A22847DC(v10, v12);
    }

    else
    {
    }
  }
}

void sub_1A22847DC(uint64_t a1, unint64_t a2)
{
  v60[0] = swift_getObjectType();
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0894E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v60 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0894E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A230A140;
  *(inited + 32) = sub_1A22E65C8();
  *(inited + 40) = v14;
  v15 = MEMORY[0x1E69E6370];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = sub_1A22E65C8();
  *(inited + 88) = v16;
  *(inited + 120) = v15;
  *(inited + 96) = 1;
  v17 = sub_1A22883B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0894F0);
  swift_arrayDestroy();
  v69 = v17;
  v18 = sub_1A22E6598();
  LODWORD(inited) = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (!inited)
  {
    v27 = sub_1A22E6598();
    IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

    if (!IsSystemPodcastApplication)
    {

      goto LABEL_14;
    }

    v29 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    if (v29)
    {
      v30 = v29;
      a1 = sub_1A22E65C8();
      a2 = v31;

      v32 = sub_1A22E65C8();
      v34 = v33;
      sub_1A22E5518();
      v35 = sub_1A22E5528();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v10, 1, v35) == 1)
      {
        sub_1A210D9B0(v10, &qword_1EB0894E0);
        sub_1A22871E4(v32, v34, v63);
        goto LABEL_9;
      }

      v66 = v35;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&aBlock);
      (*(v36 + 32))(boxed_opaque_existential_0Tm, v10, v35);
      sub_1A210E174(&aBlock, v63);
      v41 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v41;
      sub_1A22876F0(v63, v32, v34, isUniquelyReferenced_nonNull_native);
LABEL_13:

      v69 = v62;
      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v19 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (!v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  a1 = sub_1A22E65C8();
  a2 = v21;

  v22 = sub_1A22E65C8();
  v24 = v23;
  sub_1A22E5518();
  v25 = sub_1A22E5528();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) != 1)
  {
    v66 = v25;
    v37 = __swift_allocate_boxed_opaque_existential_0Tm(&aBlock);
    (*(v26 + 32))(v37, v12, v25);
    sub_1A210E174(&aBlock, v63);
    v38 = v69;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v38;
    sub_1A22876F0(v63, v22, v24, v39);
    goto LABEL_13;
  }

  sub_1A210D9B0(v12, &qword_1EB0894E0);
  sub_1A22871E4(v22, v24, v63);
LABEL_9:

  sub_1A210D9B0(v63, &qword_1EB088E78);
LABEL_14:
  v43 = v60[0];
  v44 = v61;
  v45 = sub_1A2104EA0();
  (*(v5 + 16))(v44, v45, v4);

  v46 = sub_1A22E6238();
  v47 = sub_1A22E6A98();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&aBlock = v49;
    *v48 = 136315394;
    v50 = sub_1A22E7388();
    v52 = sub_1A2103450(v50, v51, &aBlock);
    v60[0] = v4;
    v53 = v43;
    v54 = v52;

    *(v48 + 4) = v54;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_1A2103450(a1, a2, &aBlock);
    _os_log_impl(&dword_1A20FC000, v46, v47, "[%s] launching now playing app: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v49, -1, -1);
    MEMORY[0x1A58DCD00](v48, -1, -1);

    (*(v5 + 8))(v61, v60[0]);
  }

  else
  {

    (*(v5 + 8))(v44, v4);
    v53 = v43;
  }

  v55 = sub_1A22E6598();

  sub_1A2286CC8(v69);

  v56 = sub_1A22E64B8();

  v57 = [objc_opt_self() optionsWithDictionary_];

  v58 = swift_allocObject();
  *(v58 + 16) = v53;
  v67 = sub_1A22884E0;
  v68 = v58;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v65 = sub_1A225C95C;
  v66 = &block_descriptor_12;
  v59 = _Block_copy(&aBlock);

  [v60[1] openApplication:v55 withOptions:v57 completion:v59];
  _Block_release(v59);
}

uint64_t sub_1A2284FEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v177 = a3;
  v180 = a4;
  v181 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0894F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v161 = &v140 - v6;
  v163 = sub_1A22E5F08();
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v152 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089500);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v165 = &v140 - v9;
  v170 = sub_1A22E5DF8();
  v173 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v156 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089508);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v169 = &v140 - v12;
  v167 = sub_1A22E5E58();
  v171 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v158 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1A22E5AA8();
  v155 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v144 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089510);
  MEMORY[0x1EEE9AC00](v150);
  v157 = &v140 - v15;
  v147 = sub_1A22E5AC8();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v149 = &v140 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089518);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v148 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v154 = &v140 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v159 = &v140 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089520);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v168 = &v140 - v26;
  v27 = sub_1A22E6028();
  v28 = *(v27 - 8);
  v175 = v27;
  v176 = v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v160 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v164 = &v140 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v166 = &v140 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v174 = &v140 - v35;
  v36 = sub_1A22E5E38();
  v172 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for WaveformController.Model(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1A22E5BD8();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v140 - v47;
  v49 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  v178 = *(v49 - 8);
  v179 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v140 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1A22E5BF8();
  if (!*(v52 + 16))
  {
    v142 = v41;
    v141 = v38;
    v143 = v36;
    v59 = v176;
    v153 = a1;

    v60 = MEMORY[0x1E69E7D40];
    v61 = v177;
    v62 = v174;
    if (v177)
    {
      v63 = MEMORY[0x1E69E7D40];
      v64 = *((*MEMORY[0x1E69E7D40] & *v177) + 0x110);
      v65 = v177;
      v66 = v177;
      LOBYTE(v185) = v64();
      LOBYTE(v182) = 3;
      sub_1A21305AC();
      if (sub_1A22E6568())
      {

        v61 = v65;
        v60 = v63;
      }

      else
      {
        LOBYTE(v185) = v64();
        LOBYTE(v182) = 4;
        v67 = sub_1A22E6568();

        v61 = v65;
        v60 = v63;
        if ((v67 & 1) == 0)
        {
          v90 = sub_1A22E5C88();
          (*(*(v90 - 8) + 8))(v153, v90);

          goto LABEL_3;
        }
      }
    }

    if (v181)
    {
      v68 = *((*v60 & *v181) + 0x78);
      v69 = v181;
      v70 = v142;
      v68();
      v71 = sub_1A22D1FE4();

      sub_1A211BB1C(v70, type metadata accessor for WaveformController.Model);
      if (v71)
      {
        v72 = sub_1A22E5C88();
        (*(*(v72 - 8) + 8))(v153, v72);

        goto LABEL_3;
      }
    }

    sub_1A22E5C58();
    v73 = v168;
    sub_1A22E5FC8();
    v74 = *(v59 + 8);
    v176 = v59 + 8;
    v177 = v74;
    (v74)(v62, v175);
    v75 = v172;
    v76 = v143;
    if ((*(v172 + 48))(v73, 1, v143) == 1)
    {
      sub_1A210D9B0(v73, &qword_1EB089520);
      v55 = v180;
      v77 = v170;
      v78 = v173;
      v79 = v167;
      v80 = v169;
      v81 = v166;
      goto LABEL_34;
    }

    v82 = v141;
    (*(v75 + 32))(v141, v73, v76);
    v83 = sub_1A22E5C78();
    v78 = v173;
    v80 = v169;
    if ((v83 & 1) == 0)
    {
      (*(v75 + 8))(v82, v76);
      v55 = v180;
      v77 = v170;
LABEL_33:
      v81 = v166;
      v79 = v167;
LABEL_34:
      v117 = v153;
      sub_1A22E5C58();
      sub_1A22E5FD8();
      (v177)(v81, v175);
      v118 = v171;
      if ((*(v171 + 48))(v80, 1, v79) == 1)
      {
        v119 = v61;
        sub_1A210D9B0(v80, &qword_1EB089508);
      }

      else
      {
        v120 = v79;
        v121 = v158;
        (*(v118 + 32))(v158, v80, v120);
        if (sub_1A22E5C78())
        {
          if (sub_1A22E5718())
          {
            v186 = v120;
            v187 = sub_1A22893B0(&qword_1EB089530, MEMORY[0x1E69AE710]);
            v122 = __swift_allocate_boxed_opaque_existential_0Tm(&v185);
            v123 = v171;
            (*(v171 + 16))(v122, v121, v120);
            v184 = 0;
            v182 = 0u;
            v183 = 0u;
            sub_1A212E350(&v185, &v182, v51);

            v124 = sub_1A22E5C88();
            (*(*(v124 - 8) + 8))(v153, v124);
            (*(v123 + 8))(v121, v120);
            goto LABEL_4;
          }

          v126 = v120;
          v119 = v61;
          (*(v171 + 8))(v121, v126);
        }

        else
        {
          v125 = v120;
          v119 = v61;
          (*(v118 + 8))(v121, v125);
        }

        v117 = v153;
      }

      v127 = v175;
      v128 = v164;
      sub_1A22E5C58();
      v129 = v165;
      sub_1A22E5FA8();
      (v177)(v128, v127);
      if ((*(v78 + 48))(v129, 1, v77) == 1)
      {
        sub_1A210D9B0(v129, &qword_1EB089500);
        v130 = v119;
      }

      else
      {
        v131 = v156;
        (*(v78 + 32))(v156, v129, v77);
        v130 = v119;
        if (sub_1A22E5718())
        {
          v186 = v77;
          v132 = &qword_1ED9506E8;
          v133 = MEMORY[0x1E69AE6D0];
          goto LABEL_51;
        }

        (*(v78 + 8))(v131, v77);
      }

      v134 = v160;
      sub_1A22E5C58();
      v135 = v161;
      sub_1A22E5FF8();
      (v177)(v134, v127);
      v78 = v162;
      v77 = v163;
      if ((*(v162 + 48))(v135, 1, v163) == 1)
      {
        v136 = sub_1A22E5C88();
        (*(*(v136 - 8) + 8))(v117, v136);

        sub_1A210D9B0(v135, &qword_1EB0894F8);
LABEL_54:
        v57 = 1;
        v56 = v179;
        return (*(v178 + 56))(v55, v57, 1, v56);
      }

      v131 = v152;
      (*(v78 + 32))(v152, v135, v77);
      if ((sub_1A211A6BC() & 1) == 0)
      {

        v139 = sub_1A22E5C88();
        (*(*(v139 - 8) + 8))(v117, v139);
        (*(v78 + 8))(v131, v77);
        goto LABEL_54;
      }

      v186 = v77;
      v132 = &qword_1EB089528;
      v133 = MEMORY[0x1E69AE758];
LABEL_51:
      v187 = sub_1A22893B0(v132, v133);
      v137 = __swift_allocate_boxed_opaque_existential_0Tm(&v185);
      (*(v78 + 16))(v137, v131, v77);
      v184 = 0;
      v182 = 0u;
      v183 = 0u;
      sub_1A212E350(&v185, &v182, v51);

      v138 = sub_1A22E5C88();
      (*(*(v138 - 8) + 8))(v117, v138);
      (*(v78 + 8))(v131, v77);
      goto LABEL_4;
    }

    v84 = v149;
    sub_1A22E5B48();
    v85 = sub_1A22E5B38();
    v86 = *(v85 - 8);
    if ((*(v86 + 48))(v84, 1, v85) == 1)
    {
      sub_1A210D9B0(v84, &unk_1EB089440);
      v87 = 1;
      v88 = v155;
      v89 = v159;
    }

    else
    {
      v91 = v145;
      sub_1A22E5AD8();
      (*(v86 + 8))(v84, v85);
      v89 = v159;
      sub_1A22E5AB8();
      (*(v146 + 8))(v91, v147);
      v87 = 0;
      v88 = v155;
    }

    v92 = v88;
    v93 = *(v88 + 56);
    v94 = v151;
    v93(v89, v87, 1, v151);
    v95 = v154;
    (*(v92 + 104))(v154, *MEMORY[0x1E69AE5D8], v94);
    v93(v95, 0, 1, v94);
    v96 = *(v150 + 48);
    v97 = v89;
    v98 = v157;
    sub_1A2214CF8(v97, v157, &qword_1EB089518);
    v174 = v96;
    v99 = v98;
    v100 = v94;
    sub_1A2214CF8(v95, &v96[v98], &qword_1EB089518);
    v101 = *(v92 + 48);
    if (v101(v99, 1, v94) == 1)
    {
      sub_1A210D9B0(v95, &qword_1EB089518);
      v102 = v157;
      sub_1A210D9B0(v159, &qword_1EB089518);
      v103 = v101(&v174[v102], 1, v94);
      v104 = v181;
      v78 = v173;
      v105 = v143;
      if (v103 == 1)
      {
        sub_1A210D9B0(v102, &qword_1EB089518);
        v77 = v170;
LABEL_29:
        v113 = v141;
        if (sub_1A22E5718())
        {
          v186 = v105;
          v187 = sub_1A22893B0(&qword_1EB089538, MEMORY[0x1E69AE6F8]);
          v114 = __swift_allocate_boxed_opaque_existential_0Tm(&v185);
          v115 = v172;
          (*(v172 + 16))(v114, v113, v105);
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          sub_1A212E350(&v185, &v182, v51);

          v116 = sub_1A22E5C88();
          (*(*(v116 - 8) + 8))(v153, v116);
          (*(v115 + 8))(v113, v105);
          goto LABEL_3;
        }

        (*(v172 + 8))(v113, v105);
        goto LABEL_32;
      }
    }

    else
    {
      v106 = v148;
      sub_1A2214CF8(v99, v148, &qword_1EB089518);
      v107 = v174;
      if (v101(&v174[v99], 1, v94) != 1)
      {
        v108 = v106;
        v109 = v155;
        v110 = v144;
        (*(v155 + 32))(v144, &v107[v99], v100);
        sub_1A22893B0(&qword_1ED950748, MEMORY[0x1E69AE5E8]);
        v111 = v108;
        LODWORD(v174) = sub_1A22E6568();
        v112 = *(v109 + 8);
        v112(v110, v100);
        sub_1A210D9B0(v154, &qword_1EB089518);
        sub_1A210D9B0(v159, &qword_1EB089518);
        v112(v111, v100);
        sub_1A210D9B0(v99, &qword_1EB089518);
        v104 = v181;
        v77 = v170;
        v78 = v173;
        v105 = v143;
        if (v174)
        {
          goto LABEL_29;
        }

LABEL_27:
        (*(v172 + 8))(v141, v105);
LABEL_32:
        v55 = v180;
        goto LABEL_33;
      }

      sub_1A210D9B0(v154, &qword_1EB089518);
      v102 = v157;
      sub_1A210D9B0(v159, &qword_1EB089518);
      (*(v155 + 8))(v106, v94);
      v78 = v173;
      v105 = v143;
    }

    sub_1A210D9B0(v102, &qword_1EB089510);
    v77 = v170;
    goto LABEL_27;
  }

  (*(v43 + 16))(v46, v52 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v42);

  v53 = sub_1A22E5C88();
  (*(*(v53 - 8) + 8))(a1, v53);
  v54 = *(v43 + 32);
  v54(v48, v46, v42);
  v54(v51, v48, v42);
LABEL_3:
  v55 = v180;
LABEL_4:
  v56 = v179;
  swift_storeEnumTagMultiPayload();
  sub_1A2288F28(v51, v55, type metadata accessor for SessionAccessoryView.ViewModel);
  v57 = 0;
  return (*(v178 + 56))(v55, v57, 1, v56);
}

void sub_1A2286834(uint64_t a1, void *a2)
{
  v3 = a2;

  sub_1A2283E88(a2);
}

uint64_t sub_1A2286874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = sub_1A22E5B38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  if (sub_1A22E5B78())
  {
    v19 = [objc_opt_self() tapToConnect];
    v20 = sub_1A22E65C8();
    v22 = v21;

    *a3 = v20;
    a3[1] = v22;
LABEL_14:
    a3[2] = 0;
    a3[3] = 0;
    goto LABEL_15;
  }

  v48 = v16;
  v49 = a2;
  sub_1A22E5B48();
  v23 = *(v13 + 48);
  if (v23(v11, 1, v12) == 1)
  {
    sub_1A210D9B0(v11, &unk_1EB089440);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    sub_1A22E5B18();
    if (v28 || (sub_1A22E5B28(), v29))
    {

      *a3 = sub_1A22E5B18();
      a3[1] = v30;
      v31 = sub_1A22E5B28();
      v33 = v32;
      (*(v13 + 8))(v18, v12);
      a3[2] = v31;
      a3[3] = v33;
      a2 = v49;
      goto LABEL_15;
    }

    (*(v13 + 8))(v18, v12);
  }

  sub_1A22E5B48();
  if (v23(v9, 1, v12) != 1)
  {
    v34 = v48;
    (*(v13 + 32))(v48, v9, v12);
    v35 = objc_opt_self();
    sub_1A22E5B08();
    v36 = sub_1A22E6598();

    v37 = [v35 localizedNameForBundleIdentifier_];

    a2 = v49;
    if (v37)
    {
      v38 = sub_1A22E65C8();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    (*(v13 + 8))(v34, v12);
    *a3 = v38;
    a3[1] = v40;
    goto LABEL_14;
  }

  sub_1A210D9B0(v9, &unk_1EB089440);
  v24 = [objc_opt_self() notPlaying];
  v25 = sub_1A22E65C8();
  v27 = v26;

  *a3 = v25;
  a3[1] = v27;
  a3[2] = 0;
  a3[3] = 0;
  a2 = v49;
LABEL_15:
  a3[4] = sub_1A22E59C8();
  a3[5] = v41;
  v42 = sub_1A212AE4C(a1);
  v44 = v43;
  v45 = sub_1A22E5C88();
  (*(*(v45 - 8) + 8))(a1, v45);
  a3[6] = v42;
  a3[7] = v44;
  v46 = type metadata accessor for SessionHeaderView.ViewModel(0);
  return sub_1A2129BD0(a2, a3 + *(v46 + 32), &qword_1EB089540);
}

uint64_t sub_1A2286CC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895A8);
    v2 = sub_1A22E7078();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A21033A8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1A210E174(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1A210E174(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1A210E174(v31, v32);
    result = sub_1A22E6E28();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1A210E174(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A2286F90(void *a1)
{
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    v8 = sub_1A2104EA0();
    (*(v3 + 16))(v6, v8, v2);
    v9 = a1;
    v10 = sub_1A22E6238();
    v11 = sub_1A22E6A78();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v12 = 136315394;
      v14 = sub_1A22E7388();
      v16 = sub_1A2103450(v14, v15, &v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2112;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v18;
      *v13 = v18;
      _os_log_impl(&dword_1A20FC000, v10, v11, "[%s] cannot launch Now Playing App with bundleID: %@", v12, 0x16u);
      sub_1A210D9B0(v13, &unk_1EB089E80);
      MEMORY[0x1A58DCD00](v13, -1, -1);
      v19 = v20;
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1A58DCD00](v19, -1, -1);
      MEMORY[0x1A58DCD00](v12, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

double sub_1A22871E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A210FF30(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A22878AC();
      v10 = v12;
    }

    sub_1A210E174((*(v10 + 56) + 32 * v8), a3);
    sub_1A2287540(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1A2287288(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895A0);
  v33 = a2;
  result = sub_1A22E7058();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1A210E174(v24, v34);
      }

      else
      {
        sub_1A21033A8(v24, v34);
      }

      sub_1A22E72A8();
      sub_1A22E6658();
      result = sub_1A22E72F8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A210E174(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A2287540(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A22E6DB8() + 1) & ~v5;
    do
    {
      sub_1A22E72A8();

      sub_1A22E6658();
      v10 = sub_1A22E72F8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1A22876F0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A210FF30(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A22878AC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A2287288(v16, a4 & 1);
    v11 = sub_1A210FF30(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A22E7208();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1A210E174(a1, v22);
  }

  else
  {
    sub_1A2287840(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1A2287840(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A210E174(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1A22878AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895A0);
  v2 = *v0;
  v3 = sub_1A22E7048();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1A21033A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A210E174(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A2287A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2287AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2287B1C(uint64_t a1)
{
  v33 = sub_1A22E5808();
  v2 = *(v33 - 8);
  v3 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v23 - v5;
  v6 = sub_1A22E58D8();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2130450();

  if ((sub_1A22E5C08() & 1) == 0)
  {
LABEL_10:
    v20 = sub_1A22E59C8();
    sub_1A212AE4C(a1);
LABEL_14:
    v22 = sub_1A22E5C88();
    (*(*(v22 - 8) + 8))(a1, v22);
    return v20;
  }

  result = sub_1A22E5BA8();
  v10 = result;
  v30 = *(result + 16);
  if (!v30)
  {

LABEL_13:
    v21 = [objc_opt_self() airplayTitle];
    sub_1A22E65C8();

    v20 = 0x2E79616C70726961;
    goto LABEL_14;
  }

  v24 = a1;
  v11 = 0;
  v29 = result + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v28 = v34 + 16;
  v27 = *MEMORY[0x1E69AE540];
  v12 = (v2 + 8);
  v25 = (v34 + 8);
  v26 = (v2 + 104);
  v13 = v31;
  while (v11 < *(v10 + 16))
  {
    (*(v34 + 16))(v8, v29 + *(v34 + 72) * v11, v6);
    sub_1A22E5818();
    v15 = v32;
    v14 = v33;
    (*v26)(v32, v27, v33);
    v16 = sub_1A22E57F8();
    v17 = v6;
    v18 = *v12;
    (*v12)(v15, v14);
    v18(v13, v14);
    if (v16)
    {
      v19 = sub_1A22E5828();
      result = (*v25)(v8, v17);
      v6 = v17;
      if ((v19 & 1) == 0)
      {

        a1 = v24;
        goto LABEL_10;
      }
    }

    else
    {
      result = (*v25)(v8, v17);
      v6 = v17;
    }

    if (v30 == ++v11)
    {

      a1 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A2287EF0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v31 = sub_1A22E5C88();
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[5] = 0;
  v1[6] = 0;
  v10 = v1 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_viewModel;
  v11 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  sub_1A22C7854(&v10[v11[5]]);
  v12 = v11[6];
  v13 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  sub_1A221DD38(&v10[v11[7]]);
  v14 = v11[8];
  v15 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v16 = &v10[v11[9]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v10[v11[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v10[v11[11]] = 0;
  *(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artwork) = 0;
  *(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_isEligibleForHardwareVolumeControls) = 0;
  *(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_isOnScreen) = 0;
  v18 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_hapticController;
  type metadata accessor for SessionHapticController();
  *(v2 + v18) = sub_1A22285C4();
  *(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController) = a1;
  type metadata accessor for SessionArtworkController();
  v19 = *(*a1 + 152);

  (v19)(v20);
  *(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artworkController) = sub_1A22A03BC(v9);
  type metadata accessor for WaveformController(0);
  v19();
  *(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_waveformController) = sub_1A22D27DC(v9);
  v21 = *(v2 + v18);
  v19();
  (*(v7 + 56))(v6, 0, 1, v31);
  v22 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v21) + 0x1A8))(v6);

  type metadata accessor for HapticPresenter();
  v2[4] = sub_1A22C7430(*(v2 + v18));
  v23 = *(*a1 + 280);

  v23(v24, &off_1F1440DF0);

  v25 = *(**(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artworkController) + 152);

  v25(v2, &off_1F1440E30);

  v26 = *(v2 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_hapticController);
  v27 = *((*v22 & *v26) + 0x140);

  v28 = v26;
  v27(v2, &off_1F1440E40);

  sub_1A211B958();
  sub_1A212EFD8();
  return v2;
}

unint64_t sub_1A22883B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895A0);
    v3 = sub_1A22E7078();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2214CF8(v4, &v13, &qword_1EB0894F0);
      v5 = v13;
      v6 = v14;
      result = sub_1A210FF30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A210E174(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A22884EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v8);

  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v6;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    v15 = sub_1A22E7388();
    v17 = a1;
    v18 = sub_1A2103450(v15, v16, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A2103450(0xD00000000000002ALL, 0x80000001A2305620, &v28);
    *(v14 + 22) = 2080;
    a1 = v17;
    *(v14 + 24) = sub_1A2103450(v17, a2, &v28);
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] %s %s", v14, 0x20u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v19, -1, -1);
    MEMORY[0x1A58DCD00](v14, -1, -1);

    v20 = (*(v7 + 8))(v10, v27);
  }

  else
  {

    v20 = (*(v7 + 8))(v10, v6);
  }

  result = (*(*v3 + 176))(v20);
  if (result)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(a1, a2, 1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22887B4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v8);

  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v6;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    v15 = sub_1A22E7388();
    v17 = a1;
    v18 = sub_1A2103450(v15, v16, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A2103450(0xD00000000000002ELL, 0x80000001A23055F0, &v28);
    *(v14 + 22) = 2080;
    a1 = v17;
    *(v14 + 24) = sub_1A2103450(v17, a2, &v28);
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] %s %s", v14, 0x20u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v19, -1, -1);
    MEMORY[0x1A58DCD00](v14, -1, -1);

    v20 = (*(v7 + 8))(v10, v27);
  }

  else
  {

    v20 = (*(v7 + 8))(v10, v6);
  }

  result = (*(*v3 + 176))(v20);
  if (result)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(a1, a2, 2, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2288A7C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v8);

  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v6;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    v15 = sub_1A22E7388();
    v17 = a1;
    v18 = sub_1A2103450(v15, v16, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A2103450(0xD00000000000002BLL, 0x80000001A23055C0, &v28);
    *(v14 + 22) = 2080;
    a1 = v17;
    *(v14 + 24) = sub_1A2103450(v17, a2, &v28);
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] %s %s", v14, 0x20u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v19, -1, -1);
    MEMORY[0x1A58DCD00](v14, -1, -1);

    v20 = (*(v7 + 8))(v10, v27);
  }

  else
  {

    v20 = (*(v7 + 8))(v10, v6);
  }

  result = (*(*v3 + 176))(v20);
  if (result)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(a1, a2, 0, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2288D44(char a1)
{
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A68();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v15[7] = a1;
    sub_1A22892B4();
    v11 = sub_1A22E71D8();
    v13 = sub_1A2103450(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A20FC000, v7, v8, "HapticController gave status: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_1A211B958();
}

uint64_t sub_1A2288F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2288FB8()
{
  result = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A2289094()
{
  type metadata accessor for SessionHeaderView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A22891D8(319, qword_1ED950658, type metadata accessor for NowPlayingTimeControlsView.ViewModel);
    if (v1 <= 0x3F)
    {
      sub_1A22891D8(319, qword_1ED950BE0, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
      if (v2 <= 0x3F)
      {
        sub_1A228922C(319, qword_1ED950240);
        if (v3 <= 0x3F)
        {
          sub_1A228922C(319, qword_1ED94F598);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A22891D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A22E6D68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A228922C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A22E6D68();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A22892B4()
{
  result = qword_1EB089598;
  if (!qword_1EB089598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089598);
  }

  return result;
}

unint64_t sub_1A2289308()
{
  result = qword_1EB089EF0;
  if (!qword_1EB089EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089EF0);
  }

  return result;
}

unint64_t sub_1A228935C()
{
  result = qword_1EB0895B8;
  if (!qword_1EB0895B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0895B8);
  }

  return result;
}

uint64_t sub_1A22893B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A22893FC(unsigned __int8 a1)
{
  v1 = 0x6576697463612ELL;
  v2 = 0x6C696176616E752ELL;
  v3 = 0x656C62617369642ELL;
  if (a1 != 3)
  {
    v3 = 0x6F707075736E752ELL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x76697463616E692ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A22894C0()
{
  v1 = *v0;
  v2 = 0x6576697463612ELL;
  v3 = 0x6C696176616E752ELL;
  v4 = 0x656C62617369642ELL;
  if (v1 != 3)
  {
    v4 = 0x6F707075736E752ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x76697463616E692ELL;
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

uint64_t sub_1A2289570(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x2844496D6164612ELL;
  }

  else
  {
    v3 = 0x28637273692ELL;
  }

  v5 = v3;
  MEMORY[0x1A58DA8D0]();
  MEMORY[0x1A58DA8D0](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_1A22895E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1A22E71E8();
  }
}

uint64_t sub_1A2289624(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1A22E71E8();
  }
}

id sub_1A22896F4()
{
  v0 = [objc_opt_self() sharedManager];

  return v0;
}

uint64_t sub_1A2289734()
{
  v1 = v0 + OBJC_IVAR___MRUHapticController_mediaCode;
  swift_beginAccess();
  v2 = *v1;
  sub_1A22897A4(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_1A22897A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1A22897BC();
  }

  return result;
}

void (*sub_1A22897C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = v1 + OBJC_IVAR___MRUHapticController_mediaCode;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v4 + 24) = *v5;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  sub_1A22897A4(v6, v7, v8);
  return sub_1A2289868;
}

void sub_1A2289868(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_1A22897A4(*(*a1 + 24), v4, v5);
    sub_1A212FFCC(v3, v4, v5);
    sub_1A212FFB4(*(v2 + 24), *(v2 + 32), *(v2 + 40));
  }

  else
  {
    sub_1A212FFCC(*(*a1 + 24), v4, v5);
  }

  free(v2);
}

uint64_t sub_1A22899E4(char a1)
{
  v3 = OBJC_IVAR___MRUHapticController_status;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1A212F334(v4);
}

id HapticController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HapticController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___MRUHapticController__legacyObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895C0);
  *&v0[v2] = sub_1A22CE154();
  v3 = OBJC_IVAR___MRUHapticController__observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895C8);
  *&v0[v3] = sub_1A22CE154();
  v4 = OBJC_IVAR___MRUHapticController_hapticsManager;
  *&v1[v4] = [objc_opt_self() sharedManager];
  v5 = &v1[OBJC_IVAR___MRUHapticController_mediaCode];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = -1;
  v1[OBJC_IVAR___MRUHapticController_needsToCheckTrackAvailability] = 1;
  v1[OBJC_IVAR___MRUHapticController_isHapticTrackAvailable] = 0;
  v1[OBJC_IVAR___MRUHapticController_status] = 1;
  *&v1[OBJC_IVAR___MRUHapticController_hapticsStatusObservationToken] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HapticController();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1A228A258();
  sub_1A228A924();

  return v6;
}

uint64_t sub_1A2289BC0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___MRUHapticController__observers;
  v6 = *(**(v2 + OBJC_IVAR___MRUHapticController__observers) + 120);

  v8 = v6(v7);

  v9 = *(v8 + 16) + 1;
  v10 = 32;
  while (--v9)
  {
    v11 = *(v8 + v10);
    v10 += 16;
    if (v11 == a1)
    {
    }
  }

  v13 = *(**(v2 + v5) + 136);

  v14 = v13(v22);
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1A228B63C(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1A228B63C((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = a1;
  v21[5] = a2;
  swift_unknownObjectRetain();
  v14(v22, 0);
}

uint64_t sub_1A2289D84(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MRUHapticController__legacyObservers;
  v5 = *(**(v1 + OBJC_IVAR___MRUHapticController__legacyObservers) + 120);

  v7 = v5(v6);

  if (v7 >> 62)
  {
LABEL_20:
    v8 = sub_1A22E6DE8();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v8 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1A58DB0F0](i, v7);
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(v7 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    if (v10 == a1)
    {
    }
  }

  v11 = *(**(v2 + v4) + 136);

  v12 = v11(v17);
  v14 = v13;
  v15 = swift_unknownObjectRetain();
  MEMORY[0x1A58DA960](v15);
  if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A22E6768();
  }

  sub_1A22E67A8();
  v12(v17, 0);
}

uint64_t sub_1A2289FFC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC8);

  return v8(v5, a2, v6);
}

void sub_1A228A150()
{
  sub_1A22E69F8();
  v1 = MEMORY[0x1A58DAC20]();
  [v1 setHapticMusicActive_];
}

void sub_1A228A258()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x1E696F720];
  v5 = objc_opt_self();
  v6 = [v5 mainQueue];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_1A228B8C4;
  v24 = v7;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1A228A5BC;
  v22 = &block_descriptor_29;
  v8 = _Block_copy(&v19);

  v9 = [v3 addObserverForName:v4 object:0 queue:v6 usingBlock:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();

  sub_1A22E69F8();
  v10 = MEMORY[0x1A58DAC20]();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  v23 = sub_1A228B914;
  v24 = v12;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1A210E3F0;
  v22 = &block_descriptor_36;
  v13 = _Block_copy(&v19);

  [v10 registerUpdateBlock:v13 forRetrieveSelector:sel_hapticMusicActive withListener:v1];
  _Block_release(v13);

  if (*MEMORY[0x1E69E4D80])
  {
    v14 = *MEMORY[0x1E69E4D80];
    v15 = [v5 mainQueue];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_1A228B91C;
    v24 = v16;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A228A5BC;
    v22 = &block_descriptor_40_0;
    v17 = _Block_copy(&v19);

    v18 = [v3 addObserverForName:v14 object:0 queue:v15 usingBlock:v17];

    _Block_release(v17);
    swift_unknownObjectRelease();

    v3 = v15;
  }
}

uint64_t sub_1A228A5BC(uint64_t a1)
{
  v2 = sub_1A22E5488();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1A22E5478();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_1A228A6B0()
{
  v0 = sub_1A22E6248();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A2298A60(v2);
  v5 = sub_1A22E6238();
  v6 = sub_1A22E6A98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    v9 = sub_1A22E7388();
    v11 = sub_1A2103450(v9, v10, v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1A20FC000, v5, v6, "[%s] axSettingsDidChange", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58DCD00](v8, -1, -1);
    MEMORY[0x1A58DCD00](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong[OBJC_IVAR___MRUHapticController_needsToCheckTrackAvailability], Strong, v13 == 1))
  {
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      return;
    }

    v15 = v14;
    sub_1A228ADB0();
  }

  else
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      return;
    }

    v15 = v16;
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x178))();
  }
}

id sub_1A228A924()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___MRUHapticController_hapticsManager);
  result = [v2 musicHapticsEnabled];
  v4 = OBJC_IVAR___MRUHapticController_hapticsStatusObservationToken;
  v5 = *(v0 + OBJC_IVAR___MRUHapticController_hapticsStatusObservationToken);
  if (result)
  {
    if (!v5)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = ObjectType;
      v10[4] = sub_1A228B8BC;
      v10[5] = v7;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1A228AD34;
      v10[3] = &block_descriptor_13;
      v8 = _Block_copy(v10);

      v9 = [v2 addStatusObserver_];
      _Block_release(v8);
      *(v0 + v4) = v9;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v5)
    {
      [v2 removeStatusObserver_];
    }

    *(v0 + v4) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A228AABC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_1A2298A60(v8);
    v12 = sub_1A22E6238();
    v13 = sub_1A22E6A68();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315394;
      v16 = sub_1A22E7388();
      v18 = sub_1A2103450(v16, v17, v24);
      v23 = v6;
      v19 = a3;
      v20 = v18;

      *(v14 + 4) = v20;
      a3 = v19;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v19 & 1;
      _os_log_impl(&dword_1A20FC000, v12, v13, "[%s] hapticsStatusObservation isAvailable: %{BOOL}d", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1A58DCD00](v15, -1, -1);
      MEMORY[0x1A58DCD00](v14, -1, -1);

      (*(v7 + 8))(v10, v23);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      *(Strong + OBJC_IVAR___MRUHapticController_isHapticTrackAvailable) = a3 & 1;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x178))();
    }
  }
}

uint64_t sub_1A228AD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1A22E65C8();
  v7 = v6;

  v4(v5, v7, a3);
}

void sub_1A228ADB0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___MRUHapticController_needsToCheckTrackAvailability;
  if (*(v0 + OBJC_IVAR___MRUHapticController_needsToCheckTrackAvailability) == 1)
  {
    v3 = ObjectType;
    v4 = *(v0 + OBJC_IVAR___MRUHapticController_hapticsManager);
    if ([v4 musicHapticsEnabled])
    {
      if ([v4 isActive])
      {
        *(v0 + v2) = 0;
        v5 = MEMORY[0x1E69E7D40];
        v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
        if (v8 == -1)
        {
          *(v0 + OBJC_IVAR___MRUHapticController_isHapticTrackAvailable) = 0;
          v15 = *((*v5 & *v0) + 0x178);

          v15();
        }

        else
        {
          v9 = v6;
          v10 = v7;
          [v4 setTreatCodesAsAdamIDs_];
          v11 = sub_1A22E6598();
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = v12;
          v13[5] = v3;
          v16[4] = sub_1A228B9D4;
          v16[5] = v13;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 1107296256;
          v16[2] = sub_1A2262D4C;
          v16[3] = &block_descriptor_47;
          v14 = _Block_copy(v16);

          [v4 checkHapticTrackAvailabilityForMediaMatchingCode:v11 completionHandler:v14];
          _Block_release(v14);
        }
      }
    }
  }
}

void sub_1A228B00C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v10);

  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a4;
    v29[0] = v17;
    v18 = v17;
    *v16 = 136315650;
    v19 = sub_1A22E7388();
    v21 = sub_1A2103450(v19, v20, v29);
    v27 = v8;
    v22 = a1;
    v23 = v21;

    *(v16 + 4) = v23;
    a1 = v22;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1A2103450(v26, a3, v29);
    *(v16 + 22) = 1024;
    *(v16 + 24) = v22 & 1;
    _os_log_impl(&dword_1A20FC000, v13, v14, "[%s] checkHapticTrackAvailability(%s) completion isAvailable: %{BOOL}d", v16, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v18, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);

    (*(v9 + 8))(v12, v27);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    *(Strong + OBJC_IVAR___MRUHapticController_isHapticTrackAvailable) = a1 & 1;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x178))();
  }
}

uint64_t sub_1A228B2AC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v4);
  v7 = v1;
  v8 = sub_1A22E6238();
  v9 = sub_1A22E6A68();
  v10 = &qword_1EB089000;
  v11 = &selRef_metadataController_didChangeArtwork_;
  if (os_log_type_enabled(v8, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315906;
    v14 = sub_1A22E7388();
    v16 = sub_1A2103450(v14, v15, &v24);

    *(v12 + 4) = v16;
    v23 = v2;
    *(v12 + 12) = 1024;
    v17 = *&v7[OBJC_IVAR___MRUHapticController_hapticsManager];
    LODWORD(v16) = [v17 musicHapticsEnabled];

    *(v12 + 14) = v16;
    *(v12 + 18) = 1024;
    LODWORD(v17) = [v17 isActive];

    *(v12 + 20) = v17;
    *(v12 + 24) = 1024;
    v18 = v7[OBJC_IVAR___MRUHapticController_isHapticTrackAvailable];

    *(v12 + 26) = v18;
    _os_log_impl(&dword_1A20FC000, v8, v9, "[%s] resolveStatus musicHapticsEnabled: %{BOOL}d, hapticsManager.isActive: %{BOOL}d, isHapticTrackAvailable: %{BOOL}d", v12, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v19 = v13;
    v10 = &qword_1EB089000;
    MEMORY[0x1A58DCD00](v19, -1, -1);
    v20 = v12;
    v11 = &selRef_metadataController_didChangeArtwork_;
    MEMORY[0x1A58DCD00](v20, -1, -1);

    (*(v3 + 8))(v6, v23);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v21 = *&v7[v10[191]];
  if (![v21 v11[98]])
  {
    return 3;
  }

  if (![v21 isActive])
  {
    return 1;
  }

  if (v7[OBJC_IVAR___MRUHapticController_isHapticTrackAvailable])
  {
    return 0;
  }

  return 2;
}

id HapticController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HapticController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A228B63C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089610);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A228B8C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A228A924();
  }
}

void sub_1A228B91C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A228ADB0();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))();
  }
}

id sub_1A228BA24()
{
  sub_1A22224EC();
  v1[0] = xmmword_1A230DE00;
  v1[1] = xmmword_1A230DE10;
  v1[2] = xmmword_1A230DE20;
  v2 = 1064262697;
  v4 = 0;
  v3 = 0;
  v5 = 0;
  v6 = 1065353216;
  return sub_1A22C6F6C(v1);
}

uint64_t sub_1A228BAA0(void *a1, char a2)
{
  v4 = [a1 userInterfaceStyle];
  if ([a1 accessibilityContrast] == 1)
  {
    return 0;
  }

  if (v4 == 1)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A230DE30;
      sub_1A22224EC();
      v10 = xmmword_1A230DE40;
      v11 = xmmword_1A230DE50;
      v12 = xmmword_1A230DE60;
      *v13 = xmmword_1A230DE70;
      *&v13[16] = xmmword_1A230DE80;
LABEL_10:
      v8 = sub_1A22C6F6C(&v10);
      result = v7;
      *(v7 + 32) = v8;
      return result;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A230DE30;
    sub_1A22224EC();
    v10 = xmmword_1A230DE00;
    v11 = xmmword_1A230DE10;
    v12 = xmmword_1A230DE20;
    strcpy(v13, ")\\o?");
    memset(&v13[5], 0, 19);
    *&v13[24] = 1065353216;
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A230DE30;
  sub_1A22224EC();
  if (a2)
  {
    v10 = xmmword_1A230DE00;
    v11 = xmmword_1A230DE10;
    v12 = xmmword_1A230DE20;
    *v13 = 1064262697;
    memset(&v13[4], 0, 20);
    *&v13[24] = 1065353216;
  }

  else
  {
    v10 = xmmword_1A230DE40;
    v11 = xmmword_1A230DE50;
    v12 = xmmword_1A230DE60;
    *v13 = xmmword_1A230DE70;
    *&v13[16] = xmmword_1A230DE80;
  }

  v9 = sub_1A22C6F6C(&v10);
  result = v6;
  *(v6 + 32) = v9;
  return result;
}

id sub_1A228BD18(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  sub_1A22224EC();
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = xmmword_1A230DE80;
  return sub_1A22C6F6C(v9);
}

uint64_t sub_1A228BD78(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  if ([a1 accessibilityContrast] == 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A230DE30;
  sub_1A22224EC();
  if (v2 == 2)
  {
    v6 = xmmword_1A230DDC0;
    v7 = xmmword_1A230DDD0;
    v8 = xmmword_1A230DDE0;
    *v9 = xmmword_1A230DDF0;
    *&v9[16] = 0;
  }

  else
  {
    v6 = xmmword_1A230DE00;
    v7 = xmmword_1A230DE10;
    v8 = xmmword_1A230DE20;
    strcpy(v9, ")\\o?");
    memset(&v9[5], 0, 19);
  }

  v10 = 1065353216;
  v5 = sub_1A22C6F6C(&v6);
  result = v4;
  *(v4 + 32) = v5;
  return result;
}

uint64_t sub_1A228BECC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A228BF38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088BD8);
}

void (*sub_1A228BFA0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v9, v8, &qword_1EB088BD8);
  return sub_1A228C0D0;
}

void sub_1A228C0D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1A2214CF8(*(*a1 + 96), v6, &qword_1EB088BD8);
    sub_1A2214CF8(v7 + v4, v5, &qword_1EB088BD8);
    swift_beginAccess();
    sub_1A21165D0(v6, v7 + v4);
    swift_endAccess();
    sub_1A211546C(v5);
    sub_1A210D9B0(v5, &qword_1EB088BD8);
  }

  else
  {
    sub_1A2214CF8(v7 + v4, v6, &qword_1EB088BD8);
    swift_beginAccess();
    sub_1A21165D0(v3, v7 + v4);
    swift_endAccess();
    sub_1A211546C(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088BD8);
  sub_1A210D9B0(v3, &qword_1EB088BD8);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A228C28C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A228C2F8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

id sub_1A228C3BC()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1A228C430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 116) = BYTE4(a3) & 1;
  *(v4 + 120) = a4;
  return result;
}

id sub_1A228C49C()
{
  v0 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v2 = v1;
  v3 = sub_1A21146A4(v1, *MEMORY[0x1E69DB970]);

  return v3;
}

__n128 sub_1A228C550@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v11 = *(a2 + 48);
  *a7 = a1 & 1;
  *(a7 + 8) = a8;
  *(a7 + 16) = a9;
  v12 = *(a2 + 16);
  *(a7 + 24) = *a2;
  *(a7 + 40) = v12;
  result = *(a2 + 32);
  *(a7 + 56) = result;
  *(a7 + 72) = v11 & 1;
  *(a7 + 80) = a10;
  *(a7 + 88) = a11;
  *(a7 + 96) = a3;
  *(a7 + 104) = a4;
  *(a7 + 112) = a5;
  *(a7 + 116) = BYTE4(a5) & 1;
  *(a7 + 120) = a6;
  return result;
}

double sub_1A228C5A8@<D0>(uint64_t a1@<X8>)
{
  sub_1A224A928(v14);
  v2 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v4 = v3;
  v5 = sub_1A21146A4(v3, *MEMORY[0x1E69DB970]);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v14[1];
  *(a1 + 24) = v14[0];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v12;
  *(a1 + 56) = v14[2];
  *(a1 + 72) = v15;
  result = 8.0;
  *(a1 + 80) = xmmword_1A230DED0;
  *(a1 + 96) = v5;
  *(a1 + 104) = v7;
  *(a1 + 112) = v9;
  *(a1 + 116) = BYTE4(v9) & 1;
  *(a1 + 120) = v11;
  return result;
}

id sub_1A228C6A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView];
  v3 = &v0[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_style];
  swift_beginAccess();
  v4 = *(v3 + 3);
  v32[2] = *(v3 + 2);
  v32[3] = v4;
  v5 = *(v3 + 1);
  v32[0] = *v3;
  v32[1] = v5;
  v6 = *(v3 + 7);
  v32[6] = *(v3 + 6);
  v32[7] = v6;
  v7 = *(v3 + 5);
  v32[4] = *(v3 + 4);
  v32[5] = v7;
  v8 = &v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style];
  v9 = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style];
  v10 = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style + 16];
  v11 = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style + 48];
  v33[2] = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style + 32];
  v33[3] = v11;
  v33[0] = v9;
  v33[1] = v10;
  v12 = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style + 64];
  v13 = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style + 80];
  v14 = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style + 112];
  v33[6] = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style + 96];
  v33[7] = v14;
  v33[4] = v12;
  v33[5] = v13;
  memmove(&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style], v3, 0x80uLL);
  sub_1A21229F8(v32, v35);
  sub_1A21229F8(v32, v35);
  sub_1A2122A30(v33);
  v15 = *&v2[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider];
  v16 = *(v8 + 40);
  v30[0] = *(v8 + 24);
  v30[1] = v16;
  v30[2] = *(v8 + 56);
  v31 = v8[72];
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0xA8))(v30);
  [v2 setNeedsLayout];
  sub_1A2122A30(v32);
  v17 = *&v1[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView];
  v18 = *(v3 + 3);
  v34[2] = *(v3 + 2);
  v34[3] = v18;
  v19 = *(v3 + 1);
  v34[0] = *v3;
  v34[1] = v19;
  v20 = *(v3 + 7);
  v34[6] = *(v3 + 6);
  v34[7] = v20;
  v21 = *(v3 + 5);
  v34[4] = *(v3 + 4);
  v34[5] = v21;
  v22 = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style];
  v23 = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style + 16];
  v24 = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style + 48];
  v35[2] = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style + 32];
  v35[3] = v24;
  v35[0] = v22;
  v35[1] = v23;
  v25 = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style + 64];
  v26 = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style + 80];
  v27 = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style + 112];
  v35[6] = *&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style + 96];
  v35[7] = v27;
  v35[4] = v25;
  v35[5] = v26;
  memmove(&v17[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style], v3, 0x80uLL);
  sub_1A21229F8(v34, v29);
  sub_1A21229F8(v34, v29);
  sub_1A2122A30(v35);
  [v17 setNeedsLayout];
  sub_1A2122A30(v34);
  return [v1 setNeedsLayout];
}

uint64_t sub_1A228C8A8(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_style);
  swift_beginAccess();
  v4 = v3[5];
  v16[4] = v3[4];
  v16[5] = v4;
  v5 = v3[7];
  v16[6] = v3[6];
  v16[7] = v5;
  v6 = v3[1];
  v16[0] = *v3;
  v16[1] = v6;
  v7 = v3[3];
  v16[2] = v3[2];
  v16[3] = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[3];
  v3[2] = a1[2];
  v3[3] = v10;
  *v3 = v8;
  v3[1] = v9;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  v3[4] = v11;
  v3[5] = v12;
  sub_1A21229F8(a1, v15);
  sub_1A2122A30(v16);
  sub_1A228C6A0();
  return sub_1A2122A30(a1);
}

id (*sub_1A228C95C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A228C9C0;
}

id sub_1A228C9C0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A228C6A0();
  }

  return result;
}

double sub_1A228C9F4()
{
  v1 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_contentScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A228CA38(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_contentScale;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView);
  *&v4[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_contentScale] = a1;
  [v4 setNeedsLayout];
  sub_1A228F8C4();
}

void (*sub_1A228CAB0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_contentScale;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A228CB38;
}

void sub_1A228CB38(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView);
    *&v5[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_contentScale] = *(v4 + v3[4]);
    [v5 setNeedsLayout];
    sub_1A228F8C4();
  }

  free(v3);
}

id sub_1A228CBDC(void (*a1)(void))
{
  a1();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_1A228CC60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0))(v4);
}

uint64_t (*sub_1A228CD14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A228CD78;
}

uint64_t sub_1A228CD78(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x1E0))(result);
  }

  return result;
}

id sub_1A228CE04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
    [v7 setStyle_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_1A228CE94()
{
  v1 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___displayLink;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___displayLink);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___displayLink);
  }

  else
  {
    v4 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_updateElapsedTimeWithDisplayLink_];
    sub_1A22E6AC8();
    [v4 setPreferredFrameRateRange_];
    v5 = [objc_opt_self() mainRunLoop];
    [v4 addToRunLoop:v5 forMode:*MEMORY[0x1E695DA28]];

    [v4 setPaused_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*sub_1A228CFC8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A228CE94();
  return sub_1A228D010;
}

void sub_1A228D010(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___displayLink);
  *(v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___displayLink) = v2;
}

uint64_t sub_1A228D028()
{
  v1 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A228D06C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_onScreen;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_1A228E500();
  }
}

void (*sub_1A228D0D0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_onScreen;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A228D164;
}

void sub_1A228D164(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_1A228E500();
  }

  free(v1);
}

char *sub_1A228D1B8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_viewModel;
  v10 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_style];
  sub_1A224A928(v46);
  v12 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v14 = v13;
  v15 = sub_1A21146A4(v13, *MEMORY[0x1E69DB970]);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v46[1];
  *(v11 + 24) = v46[0];
  v45 = BYTE4(v19) & 1;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 40) = v22;
  *(v11 + 56) = v46[2];
  v11[72] = v47;
  *(v11 + 5) = xmmword_1A230DED0;
  *(v11 + 12) = v15;
  *(v11 + 13) = v17;
  *(v11 + 28) = v19;
  v11[116] = BYTE4(v19) & 1;
  *(v11 + 15) = v21;
  *&v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_contentScale] = 0x3FF0000000000000;
  v23 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView;
  type metadata accessor for FiniteView();
  *&v4[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView;
  type metadata accessor for LiveView();
  *&v4[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_visualStylingProvider] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___elapsedTimeFormatter] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___durationTimeFormatter] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___displayLink] = 0;
  v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_onScreen] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_accessibilitySeekInterval] = 0x4024000000000000;
  v44.receiver = v4;
  v44.super_class = type metadata accessor for NowPlayingTimeControlsView(0);
  v25 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView;
  v27 = *(*&v25[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
  v28 = v25;
  [v27 addTarget:v28 action:sel_sliderEditingChangedWithSender_ forControlEvents:327680];
  v29 = *(*&v25[v26] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
  v30 = v28;
  [v29 addTarget:v30 action:sel_sliderValueChangedWithSender_ forControlEvents:4096];
  [*(*&v25[v26] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider) addTarget:v30 action:sel_sliderEditingDidEndWithSender_ forControlEvents:0x40000];
  v31 = *(*&v25[v26] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = MEMORY[0x1E69E7D40];
  v34 = *((*MEMORY[0x1E69E7D40] & *v31) + 0x130);
  v35 = v31;

  v34(sub_1A22914B8, v32);

  v36 = *(*&v25[v26] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v36;

  v39 = *((*v33 & *v38) + 0x148);

  v39(sub_1A22914C0, v37);

  [v30 addSubview_];
  [v30 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1A2308E80;
  v41 = sub_1A22E6378();
  v42 = MEMORY[0x1E69DC2B0];
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  MEMORY[0x1A58DAE60](v40, sel_updateContentSizeCategory);
  swift_unknownObjectRelease();

  sub_1A2115288(0, &qword_1ED94EA40);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  sub_1A228E8D8();
  sub_1A228F8C4();
  sub_1A228F70C();
  [*(*&v25[v26] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel) setIsAccessibilityElement_];
  [*(*&v25[v26] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel) setIsAccessibilityElement_];

  return v30;
}

id sub_1A228D76C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  [v1 invalidate];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NowPlayingTimeControlsView(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A228D988()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NowPlayingTimeControlsView(0);
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [*&v0[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView] setFrame_];
  return [*&v0[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView] setFrame_];
}

double sub_1A228DAF4(double a1)
{
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(&v6);
  v4 = sub_1A2122A30(&v6);
  (*((*v3 & *v1) + 0xF8))(v4);
  return a1;
}

uint64_t sub_1A228DC34(void *a1)
{
  v30 = a1;
  v2 = sub_1A22E5738();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E5E18();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &ObjectType - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089640);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &ObjectType - v16;
  v18 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v15);
  v19 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
  {
    v20 = &qword_1EB088BD8;
    v21 = v10;
    return sub_1A210D9B0(v21, v20);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548);
    sub_1A210D7E4(&v10[*(v23 + 48)], v17);
    v24 = sub_1A22E5A98();
    (*(*(v24 - 8) + 8))(v10, v24);
    sub_1A2214CF8(v17, v14, &qword_1EB089640);
    v25 = v32;
    if ((*(v32 + 48))(v14, 1, v5) == 1)
    {
      sub_1A210D9B0(v17, &qword_1EB089640);
      v21 = v14;
      v20 = &qword_1EB089640;
    }

    else
    {
      v26 = (*(v25 + 32))(v7, v14, v5);
      if ((*((*v18 & *v1) + 0xC8))(v26))
      {
        v28 = v27;
        ObjectType = swift_getObjectType();
        [v30 value];
        sub_1A22E5E08();
        (*(v28 + 8))(v1, v4, ObjectType, v28);
        swift_unknownObjectRelease();
        (*(v31 + 8))(v4, v2);
      }

      (*(v25 + 8))(v7, v5);
      v20 = &qword_1EB089640;
      v21 = v17;
    }

    return sub_1A210D9B0(v21, v20);
  }

  return sub_1A210D854(v10);
}

id sub_1A228E140(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1A22E5A98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView);
  v11 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  result = [*(v10 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider) isEnabled];
  if (result)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
    v13 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
    if ((*(*(v13 - 8) + 48))(v5, 1, v13) == 1)
    {
      return sub_1A210D9B0(v5, &qword_1EB088BD8);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1A210D854(v5);
    }

    else
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548) + 48);
      (*(v7 + 32))(v9, v5, v6);
      sub_1A210D9B0(&v5[v14], &qword_1EB089640);
      [*(v10 + v11) sendActionsForControlEvents_];
      if (a1)
      {
        v15 = 10.0;
      }

      else
      {
        v15 = -10.0;
      }

      sub_1A22E5A48();
      v17 = v15 + v16;
      sub_1A22E5A78();
      if (v17 <= v18)
      {
        v17 = v18;
      }

      sub_1A22E5A88();
      if (v19 >= v17)
      {
        v19 = v17;
      }

      *&v19 = v19;
      [*(v10 + v11) setValue:1 animated:v19];
      [*(v10 + v11) sendActionsForControlEvents_];
      [*(v10 + v11) sendActionsForControlEvents_];
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

id sub_1A228E414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingTimeControlsView(0);
  objc_msgSendSuper2(&v2, sel_setNeedsLayout);
  [*&v0[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView] setNeedsLayout];
  return [*&v0[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView] setNeedsLayout];
}

void sub_1A228E500()
{
  v1 = v0;
  v2 = sub_1A22E5A98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v23 - v11;
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))(v10);
  (*((*v13 & *v0) + 0xB0))();
  v15 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  v16 = 1;
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) != 1)
  {
    sub_1A2214CF8(v12, v9, &qword_1EB088BD8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A210D854(v9);
    }

    else
    {
      v24 = v3;
      (*(v3 + 32))(v5, v9, v2);
      v17 = *(*(v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView) + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
      v18 = *((*v13 & *v17) + 0xE8);
      v19 = v17;
      LOBYTE(v18) = v18();

      if ((v18 & 1) != 0 || ((*((*v13 & *v1) + 0x170))() & 1) == 0)
      {
        v16 = 1;
      }

      else
      {
        sub_1A22E5A68();
        v16 = v20 == 0.0;
      }

      v21 = v24;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548) + 48);
      (*(v21 + 8))(v5, v2);
      sub_1A210D9B0(&v9[v22], &qword_1EB089640);
    }
  }

  sub_1A210D9B0(v12, &qword_1EB088BD8);
  [v14 setPaused_];
}

id sub_1A228E8D8()
{
  v1 = v0;
  v2 = sub_1A22E5A98();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v75 = &v73 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v73 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v73 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v73 - v19;
  v21 = MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v82 = (*MEMORY[0x1E69E7D40] & *v0) + 176;
  v83 = v22;
  (v22)(v18);
  v23 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v80 = v24 + 48;
  v81 = v25;
  if (v25(v20, 1, v23) == 1)
  {
    goto LABEL_4;
  }

  sub_1A2214CF8(v20, v17, &qword_1EB088BD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A210D854(v17);
LABEL_4:
    v26 = *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView);
    [*(v26 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider) value];
    v28 = v27;
    goto LABEL_9;
  }

  (*(v76 + 32))(v6, v17, v77);
  v29 = *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView);
  v79 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  v30 = *(v29 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
  v31 = *((*v21 & *v30) + 0xE8);
  v32 = v30;
  LOBYTE(v31) = v31();

  if (v31)
  {
    v33 = v29;
    [*(v29 + v79) value];
    v28 = v34;
  }

  else
  {
    v33 = v29;
    sub_1A22E5A48();
    v28 = v35;
  }

  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548) + 48);
  (*(v76 + 8))(v6, v77);
  sub_1A210D9B0(&v17[v36], &qword_1EB089640);
  v26 = v33;
LABEL_9:
  v37 = sub_1A210D9B0(v20, &qword_1EB088BD8);
  (v83)(v37);
  v38 = v81(v14, 1, v23);
  v79 = v26;
  if (v38 == 1)
  {
LABEL_12:
    [*(v26 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider) value];
    v41 = v40;
    goto LABEL_14;
  }

  v39 = v75;
  sub_1A2214CF8(v14, v75, &qword_1EB088BD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A210D854(v39);
    goto LABEL_12;
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548) + 48);
  v44 = v76;
  v43 = v77;
  v45 = v74;
  (*(v76 + 32))(v74, v39, v77);
  sub_1A22E5A88();
  v41 = v46;
  (*(v44 + 8))(v45, v43);
  sub_1A210D9B0(v39 + v42, &qword_1EB089640);
LABEL_14:
  sub_1A210D9B0(v14, &qword_1EB088BD8);
  v47 = sub_1A228CDE4();
  v48 = [v47 stringFromSeconds_];

  v49 = sub_1A22E65C8();
  v51 = v50;

  v52 = sub_1A228CDF4();
  v53 = [v52 stringFromSeconds_];

  v54 = sub_1A22E65C8();
  v56 = v55;

  v57 = v78;
  v83();
  LODWORD(v52) = v81(v57, 1, v23);
  sub_1A210D9B0(v57, &qword_1EB088BD8);
  if (v52 == 1)
  {
    aBlock = v49;
    v85 = v51;
    v92 = 25692;
    v93 = 0xE200000000000000;
    v90 = 9666786;
    v91 = 0xA300000000000000;
    sub_1A2291E98();
    sub_1A22E6D78();

    aBlock = v54;
    v85 = v56;
    v91 = 0xA300000000000000;
    v92 = 25692;
    v93 = 0xE200000000000000;
    v90 = 9666786;
    sub_1A22E6D78();
  }

  v58 = v79;
  v59 = *(v79 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel);
  v60 = sub_1A22E6598();

  [v59 setText_];

  v61 = *(v58 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel);
  v62 = sub_1A22E6598();

  [v61 setText_];

  v63 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  v64 = *(v58 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
  v65 = objc_opt_self();
  v66 = v64;
  v67 = [v65 accessibilityTrackPositionLabel];
  if (!v67)
  {
    sub_1A22E65C8();
    v67 = sub_1A22E6598();
  }

  [v66 setAccessibilityLabel_];

  v68 = *(v58 + v63);
  v69 = swift_allocObject();
  *(v69 + 16) = v28;
  *(v69 + 24) = v41;
  v88 = sub_1A2291EEC;
  v89 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1A2241A5C;
  v87 = &block_descriptor_14;
  v70 = _Block_copy(&aBlock);
  v71 = v68;

  [v71 setAccessibilityValueBlock_];
  _Block_release(v70);

  return [v1 setNeedsLayout];
}

void sub_1A228F148(int a1)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v33 - v4;
  v5 = sub_1A22E5A98();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView);
  v15 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  v16 = *(v14 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider);
  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v16) + 0xE8);
  v19 = v16;
  LOBYTE(v18) = v18();

  if ((v18 & 1) == 0)
  {
    (*((*v17 & *v2) + 0xB0))();
    v20 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
    if ((*(*(v20 - 8) + 48))(v13, 1, v20) != 1)
    {
      sub_1A2214CF8(v13, v11, &qword_1EB088BD8);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548) + 48);
        v23 = v33;
        v22 = v34;
        (*(v33 + 32))(v7, v11, v34);
        v24 = v35;
        sub_1A210D7E4(&v11[v21], v35);
        v25 = *(v14 + v15);
        sub_1A22E5A78();
        *&v26 = v26;
        [v25 setMinimumValue_];

        v27 = *(v14 + v15);
        sub_1A22E5A88();
        *&v28 = v28;
        [v27 setMaximumValue_];

        v29 = *(v14 + v15);
        v30 = sub_1A22E5E18();
        [v29 setEnabled_];
        v31 = *(v14 + v15);
        sub_1A22E5A48();
        *&v32 = v32;
        [v31 setValue:v36 & 1 animated:v32];

        (*(v23 + 8))(v7, v22);
        sub_1A210D9B0(v24, &qword_1EB089640);
        goto LABEL_7;
      }

      sub_1A210D854(v11);
    }

    [*(v14 + v15) setValue:v36 & 1 animated:0.0];
    [*(v14 + v15) setEnabled_];
LABEL_7:
    sub_1A210D9B0(v13, &qword_1EB088BD8);
  }
}

void sub_1A228F584()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v2);
  v5 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1A210D9B0(v4, &qword_1EB088BD8);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(*(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView) + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_label);
    v7 = sub_1A22E6598();

    [v6 setText_];
  }

  else
  {
    sub_1A210D854(v4);
  }
}

uint64_t sub_1A228F70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - v6;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v5);
  v8 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1 || (sub_1A2214CF8(v7, v4, &qword_1EB088BD8), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_1A210D854(v4), EnumCaseMultiPayload != 1))
  {
    v10 = 0.0;
    v11 = 1.0;
  }

  else
  {
    v10 = 1.0;
    v11 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView) setAlpha_];
  [*(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView) setAlpha_];
  return sub_1A210D9B0(v7, &qword_1EB088BD8);
}

void sub_1A228F8C4()
{
  v1 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v25(v27);
  v2 = v28;
  LOBYTE(v33[0]) = v31;
  v3 = sub_1A22675B4(v28, v29, v30 | (v31 << 32), v32);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [v0 traitCollection];
  v11 = *((*v1 & *v0) + 0xF8);
  v12 = v11();
  v13 = sub_1A21275D8(v10, v3, v5, v7 | ((HIDWORD(v7) & 1) << 32), v9, v12);

  v14 = *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView);
  v15 = *(v14 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel);
  v26 = v13;
  [v15 setFont_];
  v16 = *(v14 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel);
  [v16 &selRef:v26 setAnimationDirection:?];

  v17 = *(*(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView) + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_label);
  v25(v33);
  v18 = v33[12];
  v19 = v33[13];
  v20 = v34;
  LOBYTE(v9) = v35;
  v21 = v36;
  v22 = [v0 traitCollection];
  v23 = v11();
  v24 = sub_1A21275D8(v22, v18, v19, v20 | (v9 << 32), v21, v23);

  [v17 setFont_];
  [v0 setNeedsLayout];
}

void sub_1A228FBA8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView];
  v3 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  v4 = [*(v2 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider) isTracking];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x110);
  v6 = v5();
  if (v6)
  {
    v7 = v6;
    v8 = *(v2 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel);
    v9 = [v1 traitCollection];
    (*(*v7 + 160))(v4 ^ 1, v8, v9);
  }

  v10 = v5();
  if (v10)
  {
    v11 = v10;
    v12 = *(v2 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel);
    v13 = [v1 traitCollection];
    (*(*v11 + 160))(v4 ^ 1, v12, v13);
  }

  v14 = v5();
  if (v14)
  {
    v15 = v14;
    v16 = *(*&v1[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_label);
    v17 = [v1 traitCollection];
    (*(*v15 + 160))(v4 ^ 1, v16, v17);
  }

  v18 = v5();
  if (v18)
  {
    v19 = v18;
    v20 = *(*&v1[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView] + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_backgroundView);
    v21 = [v1 traitCollection];
    (*(*v19 + 160))(3, v20, v21);
  }

  v22 = [v1 traitCollection];
  sub_1A22E62F8();
  v42[0] = 0;
  sub_1A2292034(&qword_1ED94E9D8, type metadata accessor for UIAccessibilityContrast);
  v23 = sub_1A22E6B68();

  v24 = v5();
  if (v24)
  {
    v25 = *(*v24 + 168);
    v26 = *(v2 + v3);
    v25();
  }

  v27 = [*(v2 + v3) isTracking];
  v28 = *(v2 + v3);
  v29 = v5();
  v30 = v29;
  if (v29)
  {
    (*(*v29 + 104))(v40);

    if (v27)
    {
      v31 = 0;
    }

    else
    {
      v31 = 2;
    }

    v32 = sub_1A22DF514(v31);

    v30 = [v32 resolvedColorWithTraitCollection_];
  }

  [v28 setTintColor_];

  v33 = [*(v2 + v3) isTracking];
  v34 = v5();
  if (v34)
  {
    (*(*v34 + 104))(v41);

    v35 = sub_1A22DF514(v33 ^ 1u);

    v36 = [v35 resolvedColorWithTraitCollection_];
  }

  else
  {
    v36 = 0;
  }

  v37 = (v5)([*(v2 + v3) setMinimumTrackTintColor_]);
  if (v37)
  {
    (*(*v37 + 104))(v42);

    v38 = sub_1A22DF514(2u);

    v39 = [v38 resolvedColorWithTraitCollection_];
  }

  else
  {
    v39 = 0;
  }

  [*(v2 + v3) setMaximumTrackTintColor_];
}

uint64_t sub_1A2290224()
{
  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEB0(v4);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_1A21179EC(v4, sub_1A2292084, v1, 0, 0);

  return sub_1A2116928(v4);
}

uint64_t sub_1A22902D0()
{
  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEE0(v4);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_1A21179EC(v4, sub_1A2291754, v1, 0, 0);

  return sub_1A2116928(v4);
}

uint64_t sub_1A229037C()
{
  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEB0(v4);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_1A21179EC(v4, sub_1A2292084, v1, 0, 0);

  return sub_1A2116928(v4);
}

uint64_t sub_1A2290428()
{
  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEE0(v4);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_1A21179EC(v4, sub_1A2292084, v1, 0, 0);

  return sub_1A2116928(v4);
}

char *sub_1A22904D4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  type metadata accessor for Slider();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = &v4[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style];
  sub_1A224A928(v31);
  v13 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v15 = v14;
  v16 = sub_1A21146A4(v14, *MEMORY[0x1E69DB970]);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v31[1];
  *(v12 + 24) = v31[0];
  v30 = BYTE4(v20) & 1;
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 40) = v23;
  *(v12 + 56) = v31[2];
  v12[72] = v32;
  *(v12 + 5) = xmmword_1A230DED0;
  *(v12 + 12) = v16;
  *(v12 + 13) = v18;
  *(v12 + 28) = v20;
  v12[116] = BYTE4(v20) & 1;
  *(v12 + 15) = v22;
  *&v4[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_contentScale] = 0x3FF0000000000000;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for FiniteView();
  v24 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  v26 = *&v24[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider];
  v27 = v24;
  [v26 setSemanticContentAttribute_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

id sub_1A229074C()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for FiniteView();
  objc_msgSendSuper2(&v38, sel_layoutSubviews);
  [v0 bounds];
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v5 = &v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style];
  v6 = v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style];
  MinX = CGRectGetMinX(v39);
  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  if (v6 == 1)
  {
    MinY = CGRectGetMinY(*&v8);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v13 = CGRectGetWidth(v40);
    v14 = v5[2];
  }

  else
  {
    v15 = CGRectGetWidth(*&v8);
    sub_1A210F570(x, y, width, height, MinX, 0.0, v15, v5[2]);
    MinX = v16;
    MinY = v17;
    v13 = v18;
    v14 = v19;
  }

  [*&v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider] setFrame_];
  v41.origin.x = MinX;
  v41.origin.y = MinY;
  v41.size.width = v13;
  v41.size.height = v14;
  CGRectGetMaxY(v41);
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2127EF0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *&v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel];
  [v28 sizeThatFits_];
  [v28 setFrame_];
  v31 = *&v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel];
  [v31 sizeThatFits_];
  v33 = v32;
  v35 = v34;
  v42.origin.x = v21;
  v42.origin.y = v23;
  v42.size.width = v25;
  v42.size.height = v27;
  v36 = CGRectGetMaxX(v42) - v33;
  v43.origin.x = v21;
  v43.origin.y = v23;
  v43.size.width = v25;
  v43.size.height = v27;
  return [v31 setFrame_];
}

char *sub_1A2290A30(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_label;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v11 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_gradientLayer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v12 = &v4[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style];
  sub_1A224A928(v53);
  v13 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v15 = v14;
  v16 = sub_1A21146A4(v14, *MEMORY[0x1E69DB970]);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v53[1];
  *(v12 + 24) = v53[0];
  v52 = BYTE4(v20) & 1;
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 40) = v23;
  *(v12 + 56) = v53[2];
  v12[72] = v54;
  *(v12 + 5) = xmmword_1A230DED0;
  *(v12 + 12) = v16;
  *(v12 + 13) = v18;
  *(v12 + 28) = v20;
  v12[116] = BYTE4(v20) & 1;
  *(v12 + 15) = v22;
  v51.receiver = v4;
  v51.super_class = type metadata accessor for LiveView();
  v24 = objc_msgSendSuper2(&v51, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_gradientLayer;
  v26 = *&v24[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_gradientLayer];
  v27 = v24;
  [v26 setStartPoint_];
  [*&v24[v25] setEndPoint_];
  v28 = *&v24[v25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A230B9B0;
  v30 = objc_opt_self();
  v50 = v28;
  v31 = [v30 blackColor];
  v32 = [v31 CGColor];

  type metadata accessor for CGColor(0);
  v34 = v33;
  *(v29 + 56) = v33;
  *(v29 + 32) = v32;
  v35 = [v30 &selRef__selectActiveSystemRouteIfNeeded + 5];
  v36 = [v35 CGColor];

  *(v29 + 88) = v34;
  *(v29 + 64) = v36;
  v37 = [v30 clearColor];
  v38 = [v37 CGColor];

  *(v29 + 120) = v34;
  *(v29 + 96) = v38;
  v39 = [v30 clearColor];
  v40 = [v39 CGColor];

  *(v29 + 152) = v34;
  *(v29 + 128) = v40;
  v41 = [v30 blackColor];
  v42 = [v41 CGColor];

  *(v29 + 184) = v34;
  *(v29 + 160) = v42;
  v43 = [v30 blackColor];
  v44 = [v43 CGColor];

  *(v29 + 216) = v34;
  *(v29 + 192) = v44;
  v45 = sub_1A22E6738();

  [v50 setColors_];

  v46 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_backgroundView;
  v47 = [*&v27[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_backgroundView] layer];
  [v47 setMask_];

  v48 = *&v27[v46];
  sub_1A225CA7C();

  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

void sub_1A2290EE4()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for LiveView();
  objc_msgSendSuper2(&v36, sel_layoutSubviews);
  [v0 bounds];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v5 = &v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style];
  v6 = v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style];
  MinX = CGRectGetMinX(v37);
  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  if (v6 == 1)
  {
    MinY = CGRectGetMinY(*&v8);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v13 = CGRectGetWidth(v38);
    v14 = v5[2];
  }

  else
  {
    v15 = CGRectGetWidth(*&v8);
    sub_1A210F570(x, y, width, height, MinX, 0.0, v15, v5[2]);
    MinX = v16;
    MinY = v17;
  }

  v18 = *&v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_backgroundView];
  v19 = v13;
  rect_24 = v13;
  v20 = v14;
  [v18 setFrame_];
  v21 = *&v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_label];
  [v21 sizeThatFits_];
  sub_1A2128200(MinX, MinY, v19, v20, 0.0, 0.0, v22, v23);
  rect_16 = v24;
  v26 = v25;
  rect = v25;
  v28 = v27;
  v30 = v29;
  [v21 setFrame_];
  v31 = *&v0[OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_gradientLayer];
  [v18 bounds];
  [v31 setFrame_];
  v39.origin.x = MinX;
  v39.origin.y = MinY;
  v39.size.width = rect_24;
  v39.size.height = v20;
  CGRectGetWidth(v39);
  v40.origin.x = v26;
  v40.origin.y = v28;
  v40.size.width = v30;
  v40.size.height = rect_16;
  CGRectGetMinX(v40);
  v41.origin.x = MinX;
  v41.origin.y = MinY;
  v41.size.width = rect_24;
  v41.size.height = v20;
  CGRectGetWidth(v41);
  v42.origin.x = rect;
  v42.origin.y = v28;
  v42.size.width = v30;
  v42.size.height = rect_16;
  CGRectGetMaxX(v42);
  v43.origin.x = MinX;
  v43.origin.y = MinY;
  v43.size.width = rect_24;
  v43.size.height = v20;
  CGRectGetWidth(v43);
  sub_1A22E6F38();
  sub_1A2115288(0, &qword_1ED94E950);
  sub_1A22E6C78();
  sub_1A22E6F08();
  sub_1A22E6F48();
  sub_1A22E6F58();
  sub_1A22E6F18();
  sub_1A22E6C78();
  sub_1A22E6F08();
  sub_1A22E6F48();
  sub_1A22E6F58();
  sub_1A22E6F18();
  sub_1A22E6C78();
  sub_1A22E6F08();
  sub_1A22E6F48();
  sub_1A22E6F58();
  sub_1A22E6F18();
  sub_1A22E6C78();
  sub_1A22E6F08();
  sub_1A22E6F48();
  sub_1A22E6F58();
  sub_1A22E6F18();
  sub_1A22E6C78();
  sub_1A22E6F08();
  sub_1A22E6F48();
  sub_1A22E6F58();
  sub_1A22E6F18();
  v32 = sub_1A22E6738();

  [v31 setLocations_];
}

id sub_1A2291364(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A22913C0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = (a1 + *a6);
  v11 = v10[5];
  v16[4] = v10[4];
  v16[5] = v11;
  v12 = v10[7];
  v16[6] = v10[6];
  v16[7] = v12;
  v13 = v10[1];
  v16[0] = *v10;
  v16[1] = v13;
  v14 = v10[3];
  v16[2] = v10[2];
  v16[3] = v14;
  return sub_1A2122A30(v16);
}

void sub_1A22914C8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A228E140(a1 & 1);
  }
}

void sub_1A2291520()
{
  v1 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_viewModel;
  v2 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_style;
  sub_1A224A928(v17);
  v4 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v6 = v5;
  v7 = sub_1A21146A4(v5, *MEMORY[0x1E69DB970]);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v17[1];
  *(v3 + 24) = v17[0];
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 40) = v14;
  *(v3 + 56) = v17[2];
  *(v3 + 72) = v18;
  *(v3 + 80) = xmmword_1A230DED0;
  *(v3 + 96) = v7;
  *(v3 + 104) = v9;
  *(v3 + 112) = v11;
  *(v3 + 116) = BYTE4(v11) & 1;
  *(v3 + 120) = v13;
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_contentScale) = 0x3FF0000000000000;
  v15 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView;
  type metadata accessor for FiniteView();
  *(v0 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView;
  type metadata accessor for LiveView();
  *(v0 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_visualStylingProvider) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___elapsedTimeFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___durationTimeFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView____lazy_storage___displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_onScreen) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_accessibilitySeekInterval) = 0x4024000000000000;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A229175C()
{
  result = qword_1EB089658;
  if (!qword_1EB089658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089658);
  }

  return result;
}

void sub_1A22917B8()
{
  sub_1A2291894();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A2291894()
{
  if (!qword_1ED950658[0])
  {
    type metadata accessor for NowPlayingTimeControlsView.ViewModel(255);
    v0 = sub_1A22E6D68();
    if (!v1)
    {
      atomic_store(v0, qword_1ED950658);
    }
  }
}

void sub_1A22918EC()
{
  sub_1A2291960();
  if (v0 <= 0x3F)
  {
    sub_1A22919E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A2291960()
{
  if (!qword_1ED950750)
  {
    sub_1A22E5A98();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB089640);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED950750);
    }
  }
}

uint64_t sub_1A22919E0()
{
  result = qword_1ED94EB08;
  if (!qword_1ED94EB08)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ED94EB08);
  }

  return result;
}

uint64_t sub_1A2291A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A2291A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A2291AEC()
{
  v1 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  type metadata accessor for Slider();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = v0 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style;
  sub_1A224A928(v16);
  v5 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v7 = v6;
  v8 = sub_1A21146A4(v6, *MEMORY[0x1E69DB970]);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v16[1];
  *(v4 + 24) = v16[0];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = v15;
  *(v4 + 56) = v16[2];
  *(v4 + 72) = v17;
  *(v4 + 80) = xmmword_1A230DED0;
  *(v4 + 96) = v8;
  *(v4 + 104) = v10;
  *(v4 + 112) = v12;
  *(v4 + 116) = BYTE4(v12) & 1;
  *(v4 + 120) = v14;
  *(v0 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_contentScale) = 0x3FF0000000000000;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A2291C94()
{
  v1 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v4 = v0 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style;
  sub_1A224A928(v16);
  v5 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v7 = v6;
  v8 = sub_1A21146A4(v6, *MEMORY[0x1E69DB970]);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v16[1];
  *(v4 + 24) = v16[0];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = v15;
  *(v4 + 56) = v16[2];
  *(v4 + 72) = v17;
  *(v4 + 80) = xmmword_1A230DED0;
  *(v4 + 96) = v8;
  *(v4 + 104) = v10;
  *(v4 + 112) = v12;
  *(v4 + 116) = BYTE4(v12) & 1;
  *(v4 + 120) = v14;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A2291E98()
{
  result = qword_1ED94EB20;
  if (!qword_1ED94EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EB20);
  }

  return result;
}

id sub_1A2291EEC()
{
  v0 = [objc_opt_self() accessibilityTrackPositionValue];
  sub_1A22E65C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A230A140;
  result = AXDurationStringForDuration();
  if (result)
  {
    v3 = result;
    v4 = sub_1A22E65C8();
    v6 = v5;

    v7 = MEMORY[0x1E69E6158];
    *(v1 + 56) = MEMORY[0x1E69E6158];
    v8 = sub_1A2233A8C();
    *(v1 + 64) = v8;
    *(v1 + 32) = v4;
    *(v1 + 40) = v6;
    result = AXDurationStringForDuration();
    if (result)
    {
      v9 = result;
      v10 = sub_1A22E65C8();
      v12 = v11;

      *(v1 + 96) = v7;
      *(v1 + 104) = v8;
      *(v1 + 72) = v10;
      *(v1 + 80) = v12;
      v13 = sub_1A22E65F8();

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2292034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2292088(char a1)
{
  if (a1)
  {
    return 0x736165726365642ELL;
  }

  else
  {
    return 0x73616572636E692ELL;
  }
}

uint64_t sub_1A22920BC()
{
  if (*v0)
  {
    return 0x6573616572636564;
  }

  else
  {
    return 0x6573616572636E69;
  }
}

uint64_t sub_1A22920E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573616572636E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A22E71E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616572636564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A22E71E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A22921B8(uint64_t a1)
{
  v2 = sub_1A2292624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A22921F4(uint64_t a1)
{
  v2 = sub_1A2292624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A229223C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A2292278(uint64_t a1)
{
  v2 = sub_1A2292678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A22922B4(uint64_t a1)
{
  v2 = sub_1A2292678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A22922F0(uint64_t a1)
{
  v2 = sub_1A22926CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A229232C(uint64_t a1)
{
  v2 = sub_1A22926CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2292368(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089688);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089690);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089698);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2292624();
  sub_1A22E7318();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1A2292678();
    sub_1A22E7158();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1A22926CC();
    sub_1A22E7158();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1A2292624()
{
  result = qword_1EB08ED50;
  if (!qword_1EB08ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08ED50);
  }

  return result;
}

unint64_t sub_1A2292678()
{
  result = qword_1EB08ED58;
  if (!qword_1EB08ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08ED58);
  }

  return result;
}

unint64_t sub_1A22926CC()
{
  result = qword_1EB08ED60[0];
  if (!qword_1EB08ED60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08ED60);
  }

  return result;
}

uint64_t sub_1A229273C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A22938EC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1A2292788()
{
  if (*v0)
  {
    return 0x736165726365642ELL;
  }

  else
  {
    return 0x73616572636E692ELL;
  }
}

uint64_t sub_1A22927C0()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2292804(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_value;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

double sub_1A22928C4()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_style;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A2292908(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_style;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_1A2292968(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2264BE8;
}

id sub_1A22929CC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC738]);

  return [v0 init];
}

void *sub_1A2292A04()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A2292A50(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton) setPreferredSymbolConfiguration:v5 forImageInState:0];
  [*(v1 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton) setPreferredSymbolConfiguration:*(v1 + v3) forImageInState:0];
}

void (*sub_1A2292AF0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2292B78;
}

void sub_1A2292B78(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    [*(v5 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton) setPreferredSymbolConfiguration:*(v5 + v4) forImageInState:0];
    [*(v5 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton) setPreferredSymbolConfiguration:*(v5 + v4) forImageInState:0];
  }

  free(v3);
}

void *sub_1A2292C04()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1A2292C64(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2292CEC;
}

void *sub_1A2292CF8()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A2292D58(void *a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  [*(v3 + *a3) setImage:v8 forState:0];
}

void (*sub_1A2292DE0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2292E68;
}

void sub_1A2292E74(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v5[3] + *a3) setImage:*(v5[3] + v5[4]) forState:0];
  }

  free(v5);
}

uint64_t sub_1A2292F2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(v4);
}