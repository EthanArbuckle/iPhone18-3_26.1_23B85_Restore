void *sub_1DAF3D6AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E250, &unk_1DB0A01E0);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1DAF3D7FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E258, &qword_1DB0B2710);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
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
        result = v18;
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

void *sub_1DAF3D958()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2D0, &qword_1DB0A0258);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DAF3DAB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DB09DFD4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_1DAF3DC18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A8, &qword_1DB0A0230);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 112 * v17);
        v20 = v19[6];
        v22 = v19[3];
        v21 = v19[4];
        v37 = v19[5];
        v38 = v20;
        v35 = v22;
        v36 = v21;
        v24 = v19[1];
        v23 = v19[2];
        v32 = *v19;
        v33 = v24;
        v34 = v23;
        *(*(v4 + 48) + v17) = v18;
        v25 = (*(v4 + 56) + 112 * v17);
        v26 = v32;
        v27 = v34;
        v25[1] = v33;
        v25[2] = v27;
        *v25 = v26;
        v28 = v35;
        v29 = v36;
        v30 = v38;
        v25[5] = v37;
        v25[6] = v30;
        v25[3] = v28;
        v25[4] = v29;
        result = sub_1DAF406C8(&v32, &v31);
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

uint64_t sub_1DAF3DDCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1DAF3523C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1DAF3DE18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DAF3523C(*(v3 + 56) + 40 * v13, v22);
    *&v24 = v16;
    *(&v24 + 1) = v15;
    sub_1DAF332B8(v22, &v25);

    v18 = *(&v24 + 1);
    v19 = v24;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v25;
      v22[2] = v26;
      v23 = v27;
      v21(v22);
      return sub_1DAF40AEC(v22, &qword_1ECC0E398, &unk_1DB0A0320);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1DAF3DF90(void *a1@<X8>)
{
  v2 = *v1;
  v3 = -1 << *(*v1 + 32);
  v4 = ~v3;
  *a1 = *v1;
  v7 = *(v2 + 64);
  v5 = v2 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = v5;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
}

unint64_t sub_1DAF3DFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E3A0, &unk_1DB0A28E0);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, &v13, &qword_1ECC0E188, &qword_1DB09FFC0);
      v5 = v13;
      v6 = v14;
      result = sub_1DAF3550C(v13, v14, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DAF332B8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1DAF3E128(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E388, &unk_1DB0A0310);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, &v13, &qword_1ECC0E390, &unk_1DB0A51A0);
      v5 = v13;
      v6 = v14;
      result = sub_1DAF3550C(v13, v14, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DAF183D0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1DAF3E280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E378, &qword_1DB0A0300);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v10, &qword_1ECC0E380, &qword_1DB0A0308);
      result = sub_1DAF35340(v10[0], ODIErrorPropertyKey.rawValue.getter, sub_1DAF357D8);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1DAF183D0(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_1DAF3E3C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E360, &qword_1DB0A02E8);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v10, &qword_1ECC0E368, &unk_1DB0A02F0);
      result = sub_1DAF35340(v10[0], DIPErrorPropertyKey.rawValue.getter, sub_1DAF35CCC);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1DAF183D0(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_1DAF3E510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E350, &qword_1DB0A02D8);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v10, &qword_1ECC0E358, &qword_1DB0A02E0);
      result = sub_1DAF35340(v10[0], ODIErrorPropertyKey.rawValue.getter, sub_1DAF357D8);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1DAF183D0(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_1DAF3E658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E348, &qword_1DB0A02D0);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1DAF3E794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E280, &qword_1DB0A0210);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, &v11, &unk_1ECC0E288, &qword_1DB0A0218);
      v5 = v11;
      result = sub_1DAF35424(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DAF183D0(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1DAF3E8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E330, &qword_1DB0A02B8);
  v3 = sub_1DB09DFF4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1DAF35474(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_1DAF40674(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_1DAF35474(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAF3E9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E338, &qword_1DB0A02C0);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v13, &qword_1ECC0E340, &qword_1DB0A02C8);
      result = sub_1DAF353E0(v13);
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
      result = sub_1DAF183D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *sub_1DAF3EB04(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E260, &qword_1DB0A01F0);
  v3 = sub_1DB09DFF4();

  memcpy(__dst, a1 + 4, 0x180uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_1DAF40A84(__dst, v15, &qword_1ECC0E308, &qword_1DB0A0290);
  v6 = sub_1DAF3550C(v4, v5, MEMORY[0x1E69E60C8], sub_1DAF35720);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 52);
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 368 * v6), &__dst[2], 0x170uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x180uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1DAF40A84(__dst, v15, &qword_1ECC0E308, &qword_1DB0A0290);
    v6 = sub_1DAF3550C(v4, v5, MEMORY[0x1E69E60C8], sub_1DAF35720);
    v8 += 384;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAF3ECE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E268, &qword_1DB0A01F8);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1DAF3EE1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2E0, &qword_1DB0A0268);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DAF3EF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2D8, &qword_1DB0A0260);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1DAF40674(v5, v6);
      v8 = v7;
      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E6969048], sub_1DAF365B8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1DAF3F070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E310, &qword_1DB0A0298);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v24[-v6];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E300, &qword_1DB0A0288);
  v9 = sub_1DB09DFF4();
  v10 = *(v2 + 48);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = *(v3 + 72);

  sub_1DAF40A84(a1 + v11, v7, &qword_1ECC0E310, &qword_1DB0A0298);
  memcpy(v24, v7, 0x414uLL);
  v13 = sub_1DAF355A0(v24);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v9;
  }

  v15 = v13;
  v16 = a1 + v12 + v11;
  while (1)
  {
    *(v9 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    memmove((v9[6] + 1048 * v15), v7, 0x414uLL);
    v17 = v9[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
    result = sub_1DAF40828(&v7[v10], v17 + *(*(v18 - 8) + 72) * v15);
    v20 = v9[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      break;
    }

    v9[2] = v22;
    if (!--v8)
    {
      goto LABEL_8;
    }

    sub_1DAF40A84(v16, v7, &qword_1ECC0E310, &qword_1DB0A0298);
    memcpy(v24, v7, 0x414uLL);
    v15 = sub_1DAF355A0(v24);
    v16 += v12;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAF3F2B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E298, &qword_1DB0A0220);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1DAF40674(v5, v6);
      sub_1DAF40674(v7, v8);
      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E6969048], sub_1DAF365B8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1DAF3F3F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A0, &qword_1DB0A0228);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DAF3F518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2E8, &qword_1DB0A0270);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1DAF3F644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E220, &qword_1DB0A01B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E228, &qword_1DB0A01C0);
    v9 = sub_1DB09DFF4();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1DAF40A84(v11, v7, &qword_1ECC0E220, &qword_1DB0A01B8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1DAF3550C(*v7, v14, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for AnyODIKnownBinding(0);
      result = sub_1DAF40398(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1DAF3F840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E270, &qword_1DB0A0200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E278, &qword_1DB0A0208);
    v9 = sub_1DB09DFF4();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1DAF40A84(v11, v7, &qword_1ECC0E270, &qword_1DB0A0200);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1DAF3550C(*v7, v14, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1DB09D154();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1DAF3FA54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E250, &unk_1DB0A01E0);
    v3 = sub_1DB09DFF4();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1DAF35670(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1DAF3FB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2C8, &qword_1DB0A0250);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DAF3FC90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1DAF3550C(v7, v8, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1DAF3FDB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A8, &qword_1DB0A0230);
  v3 = sub_1DB09DFF4();
  v4 = *(a1 + 48);
  *v29 = *(a1 + 32);
  v5 = *(a1 + 96);
  v6 = *(a1 + 128);
  *&v29[80] = *(a1 + 112);
  *&v29[96] = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  *&v29[16] = v4;
  *&v29[32] = v7;
  *&v29[112] = *(a1 + 144);
  *&v29[48] = v8;
  *&v29[64] = v5;
  v9 = v29[0];
  result = sub_1DAF35670(v29[0]);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1DAF40A84(v29, v28, &qword_1ECC0E2B0, &qword_1DB0A0238);
    return v3;
  }

  v12 = a1 + 152;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v9;
    v13 = (v3[7] + 112 * result);
    v14 = *&v29[8];
    v15 = *&v29[40];
    v13[1] = *&v29[24];
    v13[2] = v15;
    *v13 = v14;
    v16 = *&v29[56];
    v17 = *&v29[72];
    v18 = *&v29[104];
    v13[5] = *&v29[88];
    v13[6] = v18;
    v13[3] = v16;
    v13[4] = v17;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1DAF40A84(v29, v28, &qword_1ECC0E2B0, &qword_1DB0A0238);
    v22 = *(v12 + 16);
    *v29 = *v12;
    v23 = *(v12 + 64);
    v24 = *(v12 + 96);
    *&v29[80] = *(v12 + 80);
    *&v29[96] = v24;
    v25 = *(v12 + 32);
    v26 = *(v12 + 48);
    *&v29[16] = v22;
    *&v29[32] = v25;
    *&v29[112] = *(v12 + 112);
    *&v29[48] = v26;
    *&v29[64] = v23;
    v9 = v29[0];
    result = sub_1DAF35670(v29[0]);
    v12 += 120;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAF3FF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v38 = a1;
  v39 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v40 = v8;
  v41 = 0;
  v42 = v11 & v9;
  v43 = a2;
  v44 = a3;

  sub_1DAF3DE18(&v35);
  v12 = v36;
  if (!v36)
  {
LABEL_18:
    sub_1DAF333A4();
  }

  while (1)
  {
    v16 = v35;
    sub_1DAF332B8(&v37, v34);
    v17 = *a5;
    v18 = sub_1DAF3550C(v16, v12, MEMORY[0x1E69E60C8], sub_1DAF35720);
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (*(v17 + 24) < v23)
    {
      sub_1DAF3761C(v23, a4 & 1);
      v25 = *a5;
      v18 = sub_1DAF3550C(v16, v12, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v24)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v18;
    sub_1DAF3C3E8();
    v18 = v31;
    if (v24)
    {
LABEL_6:
      v13 = *a5;
      v14 = 40 * v18;
      sub_1DAF3523C(*(*a5 + 56) + 40 * v18, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);

      v15 = *(v13 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v15 + v14));
      sub_1DAF332B8(v33, v15 + v14);
      goto LABEL_7;
    }

LABEL_14:
    v27 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v28 = (v27[6] + 16 * v18);
    *v28 = v16;
    v28[1] = v12;
    sub_1DAF332B8(v34, v27[7] + 40 * v18);
    v29 = v27[2];
    v22 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v27[2] = v30;
LABEL_7:
    sub_1DAF3DE18(&v35);
    v12 = v36;
    a4 = 1;
    if (!v36)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

unint64_t sub_1DAF401FC()
{
  result = qword_1ECC0E1F0;
  if (!qword_1ECC0E1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E1F8, &qword_1DB09FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E1F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator(uint64_t result, int a2, int a3)
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

uint64_t sub_1DAF40398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF40458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF404BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF4062C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DAF40674(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DAF40780(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DAF40828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF408F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF40964(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF409DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DAF40A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAF40AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DAF40BC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF40BE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1DAF40C1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1DAF40CD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAF40D24()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF40D6C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF40DB0()
{
  v1 = 0x6E6F6973726576;
  v2 = 1684955506;
  if (*v0 == 2)
  {
    v2 = 0x656D697464;
  }

  if (*v0)
  {
    v1 = 0x656D697473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAF40E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAF49C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAF40E48(uint64_t a1)
{
  v2 = sub_1DAF410F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF40E84(uint64_t a1)
{
  v2 = sub_1DAF410F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ODIClientGUIDSeeds.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E420, &qword_1DB0A0530);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF410F8();
  sub_1DB09E434();
  v20 = 0;
  v14 = v16[7];
  sub_1DB09E154();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1DB09E154();
  v18 = 2;
  sub_1DB09E154();
  v17 = 3;
  sub_1DB09E154();
  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DAF410F8()
{
  result = qword_1EE3028F0;
  if (!qword_1EE3028F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028F0);
  }

  return result;
}

uint64_t ODIClientGUIDSeeds.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E428, &qword_1DB0A0538);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF410F8();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1DB09E084();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_1DB09E084();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1DB09E084();
  v27 = v15;
  v35 = 3;
  v16 = sub_1DB09E084();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_1DAF41440(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_1DAF41478(v34);
}

uint64_t sub_1DAF414D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DB09E254();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DAF41538()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF4158C()
{
  v1 = *v0;
  sub_1DB09D794();
}

uint64_t sub_1DAF415C4()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF41614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAF49DA4();
  *a2 = result;
  return result;
}

uint64_t ODIClientGUID.asString.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t ODIClientGUID.seeds.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  *a1 = v2 + 49;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
}

uint64_t ODIClientGUID.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v10 = *(v0 + 6);
  v11 = *(v0 + 8);
  v12 = *(v0 + 7);
  v13 = *(v0 + 10);
  v14 = *(v0 + 9);
  v15 = *(v0 + 12);
  v18 = *(v0 + 13);
  v16 = *(v0 + 11);
  v17 = *(v0 + 14);
  v7 = *(v0 + 15);
  v8 = *(v0 + 16);
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0x5547746E65696C43, 0xEB00000000204449);
  MEMORY[0x1E127FE90](v7, v8);
  MEMORY[0x1E127FE90](0x6F6973726576202ELL, 0xEC000000203D206ELL);
  sub_1DB09DF94();
  MEMORY[0x1E127FE90](0x3D2064697364202CLL, 0xE900000000000020);
  MEMORY[0x1E127FE90](v2, v3);
  MEMORY[0x1E127FE90](0x203D2064696D202CLL, 0xE800000000000000);
  MEMORY[0x1E127FE90](v4, v5);
  MEMORY[0x1E127FE90](0x444970696863202CLL, 0xEB00000000203D20);
  MEMORY[0x1E127FE90](v6, v10);
  MEMORY[0x1E127FE90](0x3D2064696365202CLL, 0xE900000000000020);
  MEMORY[0x1E127FE90](v12, v11);
  MEMORY[0x1E127FE90](0x726576726573202CLL, 0xEF203D20656D6954);
  MEMORY[0x1E127FE90](v14, v13);
  MEMORY[0x1E127FE90](0x656369766564202CLL, 0xEF203D20656D6954);
  MEMORY[0x1E127FE90](v16, v15);
  MEMORY[0x1E127FE90](0x3D20646E6172202CLL, 0xE900000000000020);
  MEMORY[0x1E127FE90](v18, v17);
  return 0;
}

uint64_t DIPClientGUIDFactory.init(primaryDSIDBehavior:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 288) = a1;
  *(v2 + 235) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAF41980, 0, 0);
}

uint64_t sub_1DAF41980()
{
  v12 = v0;
  v1 = *(v0 + 235);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000036, 0x80000001DB0C21D0);
  v2 = 0x64756F6C4369;
  v3 = 1684628325;
  if (v1 != 2)
  {
    v3 = 1869903201;
  }

  if (v1)
  {
    v2 = 0x73656E755469;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v1 <= 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = *(v0 + 235);
  MEMORY[0x1E127FE90](v4, v5);

  v7 = v10;
  LOBYTE(v10) = 10;
  CoreODILogger.info(_:category:)(v7, v11, &v10);

  *(v0 + 234) = v6;
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_1DAF41B14;

  return sub_1DAF42E8C(v0 + 233, (v0 + 234));
}

uint64_t sub_1DAF41B14(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 296);
  v8 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {
    v6 = sub_1DAF42E10;
  }

  else
  {
    v6 = sub_1DAF41C2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAF41DF8()
{
  if (*(*(v0 + 328) + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF41FC8, 0, 0);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 336) = v1;
    *v1 = v0;
    v1[1] = sub_1DAF41ECC;
    v2 = *(v0 + 328);

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAF41ECC()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF41FC8, 0, 0);
}

uint64_t sub_1DAF41FC8()
{
  v6 = v0;
  if (*(v0 + 236) == 2)
  {
    v5 = 10;
    CoreODILogger.info(_:category:)(0xD00000000000002DLL, 0x80000001DB0C22C0, &v5);

    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    v1 = *(v0 + 328);

    return MEMORY[0x1EEE6DFA0](sub_1DAF42224, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 344) = v2;
    *v2 = v0;
    v2[1] = sub_1DAF420E4;
    v3 = *(v0 + 328);

    return sub_1DAFC91BC();
  }
}

uint64_t sub_1DAF420E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = sub_1DAF42E28;
    v10 = 0;
  }

  else
  {
    v6[45] = a1;
    v6[46] = a2;
    v10 = v6[41];
    v9 = sub_1DAF42224;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1DAF42224()
{
  v1 = v0[41];
  v2 = sub_1DAF4AA44(&qword_1EE303990, type metadata accessor for ODIDeviceInfo);
  v0[47] = v2;
  v3 = swift_task_alloc();
  v0[48] = v3;
  v3[2] = v1;
  v3[3] = 0x444970696843;
  v3[4] = 0xE600000000000000;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[49] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
  v0[50] = v6;
  *v5 = v0;
  v5[1] = sub_1DAF42388;

  return MEMORY[0x1EEE6DDE0](v0 + 28, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF49C08, v3, v6);
}

uint64_t sub_1DAF42388()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v5 = *v0;

  *(v1 + 408) = *(v1 + 224);
  *(v1 + 237) = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1DAF424C8, 0, 0);
}

uint64_t sub_1DAF424C8()
{
  if (*(v0 + 237) == 1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v1 = MEMORY[0x1E69E7CC0];
    v2 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v2 + 16))
    {
      v3 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v4)
      {
        sub_1DAF409DC(*(v2 + 56) + 32 * v3, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v1 = *(v0 + 256);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1DAF72EC0(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_1DAF72EC0((v5 > 1), v6 + 1, 1, v1);
    }

    v7 = *(v0 + 368);
    v8 = *(v0 + 312);
    *(v1 + 2) = v6 + 1;
    v9 = &v1[56 * v6];
    *(v9 + 4) = 0xD000000000000015;
    *(v9 + 5) = 0x80000001DB0C2240;
    *(v9 + 6) = 0xD00000000000001FLL;
    *(v9 + 7) = 0x80000001DB0C2260;
    *(v9 + 8) = 0xD00000000000001ALL;
    *(v9 + 9) = 0x80000001DB0C2280;
    *(v9 + 10) = 163;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v1;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_1DB09D6B4();
    v13 = sub_1DB09D604();
    [v11 initWithDomain:v12 code:-1111 userInfo:v13];

    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 328);
    *(v0 + 264) = *(v0 + 408);
    *(v0 + 208) = sub_1DB09E1D4();
    *(v0 + 216) = v17;
    *(v0 + 416) = v17;

    return MEMORY[0x1EEE6DFA0](sub_1DAF42838, v16, 0);
  }
}

uint64_t sub_1DAF42838()
{
  v1 = v0[47];
  v2 = v0[41];
  v3 = swift_task_alloc();
  v0[53] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "UniqueChipID");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_1DAF42958;
  v6 = v0[50];

  return MEMORY[0x1EEE6DDE0](v0 + 30, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF4AC38, v3, v6);
}

uint64_t sub_1DAF42958()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v5 = *v0;

  *(v1 + 440) = *(v1 + 240);
  *(v1 + 238) = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1DAF42A98, 0, 0);
}

uint64_t sub_1DAF42A98()
{
  if (*(v0 + 238) == 1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v1 = MEMORY[0x1E69E7CC0];
    v2 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v2 + 16))
    {
      v3 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v4)
      {
        sub_1DAF409DC(*(v2 + 56) + 32 * v3, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v1 = *(v0 + 272);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1DAF72EC0(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_1DAF72EC0((v5 > 1), v6 + 1, 1, v1);
    }

    v23 = *(v0 + 416);
    v7 = *(v0 + 368);
    v8 = *(v0 + 312);
    *(v1 + 2) = v6 + 1;
    v9 = &v1[56 * v6];
    *(v9 + 4) = 0xD000000000000012;
    *(v9 + 5) = 0x80000001DB0C22A0;
    *(v9 + 6) = 0xD00000000000001FLL;
    *(v9 + 7) = 0x80000001DB0C2260;
    *(v9 + 8) = 0xD00000000000001ALL;
    *(v9 + 9) = 0x80000001DB0C2280;
    *(v9 + 10) = 168;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v1;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_1DB09D6B4();
    v13 = sub_1DB09D604();
    [v11 initWithDomain:v12 code:-1112 userInfo:v13];

    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 416);
    v16 = *(v0 + 208);
    v17 = *(v0 + 236);
    v22 = *(v0 + 304);
    v24 = *(v0 + 360);
    v18 = *(v0 + 288);
    *(v0 + 280) = *(v0 + 440);
    v19 = sub_1DB09E1D4();
    *v18 = v22;
    *(v18 + 16) = v24;
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
    *(v18 + 48) = v19;
    *(v18 + 56) = v20;
    *(v18 + 64) = v17;
    *(v18 + 72) = 0;
    *(v18 + 80) = 0xE000000000000000;
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_1DAF42E28()
{
  v1 = v0[39];

  v2 = v0[44];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAF42E8C(uint64_t a1, _BYTE *a2)
{
  *(v2 + 448) = a1;
  *(v2 + 570) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAF42EB4, 0, 0);
}

uint64_t sub_1DAF42EB4()
{
  v8 = v0;
  if (*(v0 + 570) > 1u)
  {
    if (*(v0 + 570) == 2)
    {
      v3 = swift_task_alloc();
      *(v0 + 520) = v3;
      *v3 = v0;
      v3[1] = sub_1DAF43F10;

      return sub_1DAF47880();
    }

    else
    {
      v7 = 10;
      CoreODILogger.info(_:category:)(0xD000000000000015, 0x80000001DB0C2470, &v7);

      *(v0 + 568) = 0;
      v5 = swift_task_alloc();
      *(v0 + 536) = v5;
      *v5 = v0;
      v5[1] = sub_1DAF443CC;
      v6 = *(v0 + 448);

      return sub_1DAF42E8C(v6, v0 + 568);
    }
  }

  else if (*(v0 + 570))
  {
    v4 = swift_task_alloc();
    *(v0 + 488) = v4;
    *v4 = v0;
    v4[1] = sub_1DAF437D8;

    return sub_1DAF48250();
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 456) = v1;
    *v1 = v0;
    v1[1] = sub_1DAF430D4;

    return sub_1DAF47E88();
  }
}

uint64_t sub_1DAF430D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = a2;
  v5 = v3[57];
  v7 = *v2;
  v4[58] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF431DC, 0, 0);
}

uint64_t sub_1DAF431DC()
{
  v8 = v0;
  v1 = v0[58];
  if (v1)
  {
    v2 = v0[39];
    v3 = v0[56];
    v7 = 10;
    CoreODILogger.info(_:category:)(0xD000000000000011, 0x80000001DB0C25E0, &v7);

    *v3 = 0;
    v4 = v0[1];

    return v4(v2, v1);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[59] = v6;
    *v6 = v0;
    v6[1] = sub_1DAF43310;

    return sub_1DAF48250();
  }
}

uint64_t sub_1DAF43310(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[41] = v2;
  v4[42] = a1;
  v4[43] = a2;
  v5 = v3[59];
  v7 = *v2;
  v4[60] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF43418, 0, 0);
}

uint64_t sub_1DAF43418()
{
  v19 = v0;
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = *(v0 + 336);
    v3 = *(v0 + 448);
    v18[0] = 10;
    CoreODILogger.info(_:category:)(0xD00000000000001DLL, 0x80000001DB0C25C0, v18);

    *v3 = 1;
    v4 = *(v0 + 8);

    return v4(v2, v1);
  }

  else
  {
    v18[0] = 10;
    CoreODILogger.warning(_:category:)(0xD00000000000002CLL, 0x80000001DB0C2520, v18);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 208);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 440);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD000000000000028;
    *(v12 + 5) = 0x80000001DB0C2590;
    *(v12 + 6) = 0xD00000000000001FLL;
    *(v12 + 7) = 0x80000001DB0C2260;
    *(v12 + 8) = 0x2844495344746567;
    *(v12 + 9) = 0xEB00000000293A5FLL;
    *(v12 + 10) = 283;
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 240) = v6;
    sub_1DAF40D20((v0 + 240), (v0 + 272));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 272), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-5 userInfo:{v16, v7}];

    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF437D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[44] = v2;
  v4[45] = a1;
  v4[46] = a2;
  v5 = v3[61];
  v7 = *v2;
  v4[62] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF438E0, 0, 0);
}

uint64_t sub_1DAF438E0()
{
  v8 = v0;
  v1 = v0[62];
  if (v1)
  {
    v2 = v0[45];
    v3 = v0[56];
    v7 = 10;
    CoreODILogger.info(_:category:)(0xD000000000000011, 0x80000001DB0C2570, &v7);

    *v3 = 1;
    v4 = v0[1];

    return v4(v2, v1);
  }

  else
  {
    v7 = 10;
    CoreODILogger.info(_:category:)(0xD00000000000001CLL, 0x80000001DB0C2500, &v7);

    v6 = swift_task_alloc();
    v0[63] = v6;
    *v6 = v0;
    v6[1] = sub_1DAF43A5C;

    return sub_1DAF47E88();
  }
}

uint64_t sub_1DAF43A5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[47] = v2;
  v4[48] = a1;
  v4[49] = a2;
  v5 = v3[63];
  v7 = *v2;
  v4[64] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF43B64, 0, 0);
}

uint64_t sub_1DAF43B64()
{
  v19 = v0;
  v1 = *(v0 + 512);
  if (v1)
  {
    v2 = *(v0 + 384);
    v3 = *(v0 + 448);
    v18[0] = 10;
    CoreODILogger.info(_:category:)(0xD00000000000001DLL, 0x80000001DB0C2550, v18);

    *v3 = 0;
    v4 = *(v0 + 8);

    return v4(v2, v1);
  }

  else
  {
    v18[0] = 10;
    CoreODILogger.warning(_:category:)(0xD00000000000002CLL, 0x80000001DB0C2520, v18);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 432);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD00000000000002CLL;
    *(v12 + 5) = 0x80000001DB0C2520;
    *(v12 + 6) = 0xD00000000000001FLL;
    *(v12 + 7) = 0x80000001DB0C2260;
    *(v12 + 8) = 0x2844495344746567;
    *(v12 + 9) = 0xEB00000000293A5FLL;
    *(v12 + 10) = 297;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v6;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-5 userInfo:v16];

    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF43F10(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[50] = v2;
  v4[51] = a1;
  v4[52] = a2;
  v5 = v3[65];
  v7 = *v2;
  v4[66] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF44018, 0, 0);
}

uint64_t sub_1DAF44018()
{
  v19 = v0;
  v1 = *(v0 + 528);
  if (v1)
  {
    v2 = *(v0 + 408);
    v3 = *(v0 + 448);
    v18[0] = 10;
    CoreODILogger.info(_:category:)(0x434520676E697355, 0xEA00000000004449, v18);

    *v3 = 2;
    v4 = *(v0 + 8);

    return v4(v2, v1);
  }

  else
  {
    v18[0] = 10;
    CoreODILogger.warning(_:category:)(0xD000000000000011, 0x80000001DB0C24E0, v18);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 424);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD000000000000011;
    *(v12 + 5) = 0x80000001DB0C24E0;
    *(v12 + 6) = 0xD00000000000001FLL;
    *(v12 + 7) = 0x80000001DB0C2260;
    *(v12 + 8) = 0x2844495344746567;
    *(v12 + 9) = 0xEB00000000293A5FLL;
    *(v12 + 10) = 306;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v6;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-28 userInfo:v16];

    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF443CC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 536);
  v7 = *v3;
  *(v7 + 544) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF4451C, 0, 0);
  }

  else
  {
    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t sub_1DAF4451C()
{
  v6 = v0;
  v1 = *(v0 + 544);
  v5 = 10;
  CoreODILogger.warning(_:category:)(0xD000000000000044, 0x80000001DB0C2490, &v5);

  *(v0 + 569) = 2;
  v2 = swift_task_alloc();
  *(v0 + 552) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF44610;
  v3 = *(v0 + 448);

  return sub_1DAF42E8C(v3, v0 + 569);
}

uint64_t sub_1DAF44610(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 552);
  v7 = *v3;
  *(v7 + 560) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF44760, 0, 0);
  }

  else
  {
    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t DIPClientGUIDFactory.init(primaryDSIDBehavior:stsFetcher:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a3;
  *(v4 + 280) = a4;
  *(v4 + 264) = a1;
  *(v4 + 352) = *a2;
  v5 = swift_task_alloc();
  *(v4 + 288) = v5;
  *v5 = v4;
  v5[1] = sub_1DAF44820;

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v4 + 16, (v4 + 352));
}

uint64_t sub_1DAF44820()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1DAF44C18;
  }

  else
  {
    v3 = sub_1DAF44934;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF44934()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 64);
  *(v0 + 224) = *(v0 + 48);
  *(v0 + 240) = v2;
  v3 = *(v0 + 88);
  *(v0 + 256) = *(v0 + 80);
  v4 = *(v0 + 32);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 208) = v4;
  v5 = *(v0 + 96);
  *(v0 + 304) = v3;
  *(v0 + 312) = v5;
  v10 = (v1 + *v1);
  v6 = v1[1];
  v7 = swift_task_alloc();
  *(v0 + 320) = v7;
  *v7 = v0;
  v7[1] = sub_1DAF44A40;
  v8 = *(v0 + 280);

  return v10();
}

uint64_t sub_1DAF44A40(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 320);
  v8 = *v3;
  *(*v3 + 328) = v2;

  if (v2)
  {
    v9 = sub_1DAF44C7C;
  }

  else
  {
    *(v6 + 336) = a2;
    *(v6 + 344) = a1;
    v9 = sub_1DAF44B74;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DAF44B74()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);

  *v5 = *(v0 + 192);
  v6 = *(v0 + 208);
  v7 = *(v0 + 240);
  v8 = *(v0 + 256);
  *(v5 + 32) = *(v0 + 224);
  *(v5 + 48) = v7;
  *(v5 + 16) = v6;
  *(v5 + 64) = v8;
  *(v5 + 72) = v1;
  *(v5 + 80) = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DAF44C18()
{
  v1 = v0[35];

  v2 = v0[37];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAF44C7C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);

  v4 = *(v0 + 192);
  *(v0 + 120) = *(v0 + 208);
  v5 = *(v0 + 240);
  *(v0 + 136) = *(v0 + 224);
  *(v0 + 152) = v5;
  v6 = *(v0 + 256);
  *(v0 + 104) = v4;
  *(v0 + 168) = v6;
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;
  sub_1DAF49C14(v0 + 104);
  v7 = *(v0 + 328);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t DIPClientGUIDFactory.createNewAssessmentGUID()(uint64_t a1)
{
  v3 = *(v1 + 72);
  *(v2 + 80) = *(v1 + 64);
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  *(v2 + 104) = a1;
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v1 + 80);
  return MEMORY[0x1EEE6DFA0](sub_1DAF44D50, 0, 0);
}

uint64_t sub_1DAF44D50()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  *(v0 + 88) = v1;
  DIPClientGUIDFactory.createNewAssessmentGUID(serverTime:)(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPClientGUIDFactory.createNewAssessmentGUID(serverTime:)(CoreODIEssentials::ODIClientGUID *__return_ptr retstr, Swift::String serverTime)
{
  v4 = v3;
  object = serverTime._object;
  countAndFlagsBits = serverTime._countAndFlagsBits;
  v6 = sub_1DB09D734();
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB09D154();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[3];
  v96 = v2[2];
  v97 = v17;
  v100 = v19;
  v101 = v18;
  v20 = v2[4];
  v99 = v2[5];
  v21 = v2[7];
  v94 = v2[6];
  v95 = v20;
  v102 = v21;
  v104 = *(v2 + 64);
  sub_1DB09D144();
  sub_1DB09D104();
  v23 = *&v22;
  v24 = v22;
  (*(v12 + 8))(v16, v11);
  if ((v24 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v92 = v6;
  *&v115 = v23;
  v25 = sub_1DB09E1D4();
  v27 = v26;
  v28 = sub_1DB09D964();
  *(v28 + 16) = 6;
  *(v28 + 36) = 0;
  *(v28 + 32) = 0;
  v29 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 6uLL, (v28 + 32));
  if (!v29)
  {
    v91 = retstr;
    v34 = sub_1DAF49DF0(v28);
    v36 = v35;

    v37 = sub_1DB09D014();
    v39 = v38;
    sub_1DAF40780(v34, v36);
    v40 = v104;
    if (v104 < 3)
    {
      v88[1] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1DB0A04F0;
      *(v41 + 32) = v40 + 49;
      *(v41 + 40) = 0xE100000000000000;
      v42 = v96;
      *(v41 + 48) = v97;
      v43 = v100;
      *(v41 + 56) = v101;
      *(v41 + 64) = v42;
      v44 = v94;
      v45 = v95;
      *(v41 + 72) = v43;
      *(v41 + 80) = v45;
      *(v41 + 88) = v99;
      *(v41 + 96) = v44;
      v46 = object;
      v47 = countAndFlagsBits;
      *(v41 + 104) = v102;
      *(v41 + 112) = v47;
      *(v41 + 120) = v46;
      *(v41 + 128) = v25;
      v89 = v37;
      v90 = v25;
      *(v41 + 136) = v27;
      *(v41 + 144) = v37;
      *(v41 + 152) = v39;
      *&v115 = v41;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v48 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
      sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110);
      sub_1DB09D694();

      sub_1DB09D714();
      v49 = sub_1DB09D6D4();
      v51 = v50;

      (*(v93 + 8))(v10, v92);
      if (v51 >> 60 != 15)
      {
        v92 = v27;
        v93 = v48;
        v52 = sub_1DB09D004();
        v53 = DigestSha256(v52);

        if (v53)
        {
          v54 = sub_1DB09D034();
          v56 = v55;

          v57 = sub_1DB09CFE4();
          v59 = v58;
          v60 = sub_1DB09D014();
          v88[0] = v61;
          sub_1DAF18404(v49, v51);
          sub_1DAF40780(v57, v59);
          sub_1DAF40780(v54, v56);
          LOBYTE(v106) = v104;
          *(&v106 + 1) = *v131;
          DWORD1(v106) = *&v131[3];
          *(&v106 + 1) = v97;
          *&v107 = v101;
          *(&v107 + 1) = v96;
          *&v108 = v100;
          *(&v108 + 1) = v95;
          *&v109 = v99;
          *(&v109 + 1) = v94;
          *&v110 = v102;
          *(&v110 + 1) = countAndFlagsBits;
          *&v111 = object;
          *(&v111 + 1) = v90;
          *&v112 = v92;
          *(&v112 + 1) = v89;
          *&v113 = v93;
          *(&v113 + 1) = v60;
          v114 = v88[0];
          LOBYTE(v115) = v104;
          DWORD1(v115) = *&v131[3];
          *(&v115 + 1) = *v131;
          *(&v115 + 1) = v97;
          v116 = v101;
          v117 = v96;
          v118 = v100;
          v119 = v95;
          v120 = v99;
          v121 = v94;
          v122 = v102;
          v123 = countAndFlagsBits;
          v124 = object;
          v125 = v90;
          v126 = v92;
          v127 = v89;
          v128 = v93;
          v129 = v60;
          v130 = v88[0];
          sub_1DAF49ECC(&v106, v105);
          sub_1DAF49F04(&v115);
          v62 = v113;
          v63 = v91;
          *&v91->deviceTime._object = v112;
          *&v63->rand._object = v62;
          v63->hash._object = v114;
          v64 = v109;
          *&v63->mid._object = v108;
          *&v63->chipID._object = v64;
          v65 = v111;
          *&v63->ecid._object = v110;
          *&v63->serverTime._object = v65;
          v66 = v107;
          *&v63->version = v106;
          *&v63->dsid._object = v66;
          return;
        }

        sub_1DAF18404(v49, v51);
      }

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v79 = MEMORY[0x1E69E7CC0];
      v80 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v80 + 16))
      {
        v81 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v82)
        {
          sub_1DAF409DC(*(v80 + 56) + 32 * v81, &v115);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v79 = v106;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1DAF72EC0(0, *(v79 + 2) + 1, 1, v79);
      }

      v84 = *(v79 + 2);
      v83 = *(v79 + 3);
      if (v84 >= v83 >> 1)
      {
        v79 = sub_1DAF72EC0((v83 > 1), v84 + 1, 1, v79);
      }

      *(v79 + 2) = v84 + 1;
      v85 = &v79[56 * v84];
      *(v85 + 4) = 0xD00000000000001CLL;
      *(v85 + 5) = 0x80000001DB0C2370;
      *(v85 + 6) = 0xD00000000000001FLL;
      *(v85 + 7) = 0x80000001DB0C2260;
      *(v85 + 8) = 0xD000000000000024;
      *(v85 + 9) = 0x80000001DB0C2390;
      *(v85 + 10) = 210;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v115 = v79;
      sub_1DAF40D20(&v115, &v106);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v80;
      sub_1DAF3B11C(&v106, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v87 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v77 = sub_1DB09D6B4();
      v78 = sub_1DB09D604();
      [v87 initWithDomain:v77 code:-1117 userInfo:v78];
      goto LABEL_32;
    }

    v24 = "Unexpected DSID Type";
    v4 = "CoreODIEssentials/ODIGUID.swift";
    v11 = "fromDsidType(_:)";
    if (qword_1EE301E08 == -1)
    {
LABEL_11:
      v67 = v24 - 32;
      v68 = MEMORY[0x1E69E7CC0];
      v69 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v69 + 16))
      {
        v70 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v71)
        {
          sub_1DAF409DC(*(v69 + 56) + 32 * v70, &v115);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v68 = v106;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1DAF72EC0(0, *(v68 + 2) + 1, 1, v68);
      }

      v73 = *(v68 + 2);
      v72 = *(v68 + 3);
      if (v73 >= v72 >> 1)
      {
        v68 = sub_1DAF72EC0((v72 > 1), v73 + 1, 1, v68);
      }

      *(v68 + 2) = v73 + 1;
      v74 = &v68[56 * v73];
      *(v74 + 4) = 0xD000000000000014;
      *(v74 + 5) = v67 | 0x8000000000000000;
      *(v74 + 6) = 0xD00000000000001FLL;
      *(v74 + 7) = (v4 - 32) | 0x8000000000000000;
      *(v74 + 8) = 0xD000000000000010;
      *(v74 + 9) = (v11 - 32) | 0x8000000000000000;
      *(v74 + 10) = 54;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v115 = v68;
      sub_1DAF40D20(&v115, &v106);
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v69;
      sub_1DAF3B11C(&v106, 0x636F766E4949444FLL, 0xEE00736E6F697461, v75);
      v76 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v77 = sub_1DB09D6B4();
      v78 = sub_1DB09D604();
      [v76 initWithDomain:v77 code:-1116 userInfo:v78];
LABEL_32:

      goto LABEL_33;
    }

LABEL_37:
    swift_once();
    goto LABEL_11;
  }

  v30 = v29;

  LOBYTE(v115) = 113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 32) = 13;
  v32 = inited + 32;
  *(inited + 64) = MEMORY[0x1E69E72F0];
  *(inited + 40) = v30;
  v33 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(v32, &qword_1ECC0E380, &qword_1DB0A0308);
  ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001FLL, 0x80000001DB0C22F0, 0, &v115, 0, v33, 0xD00000000000001FLL, 0x80000001DB0C2260, 0xD00000000000001ALL, 0x80000001DB0C2310, 335);

LABEL_33:
  swift_willThrow();
}

uint64_t DIPClientGUIDFactory.createNewTrainingGUID()(uint64_t a1)
{
  v3 = *(v1 + 72);
  *(v2 + 80) = *(v1 + 64);
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  *(v2 + 104) = a1;
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v1 + 80);
  return MEMORY[0x1EEE6DFA0](sub_1DAF45A00, 0, 0);
}

uint64_t sub_1DAF45A00()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  *(v0 + 88) = v1;
  DIPClientGUIDFactory.createNewTrainingGUID(serverTime:)(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPClientGUIDFactory.createNewTrainingGUID(serverTime:)(CoreODIEssentials::ODIClientGUID *__return_ptr retstr, Swift::String serverTime)
{
  v159 = retstr;
  object = serverTime._object;
  countAndFlagsBits = serverTime._countAndFlagsBits;
  v3 = sub_1DB09D734();
  v161 = *(v3 - 8);
  v162 = v3;
  v4 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v160 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v177 = &v159 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E450, &qword_1DB0A05A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v179 = &v159 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E458, &qword_1DB0A05A8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v184 = &v159 - v18;
  v185 = sub_1DB09D2F4();
  v178 = *(v185 - 8);
  v19 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v185, v20);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DB09CDC4();
  v175 = *(v23 - 8);
  v176 = v23;
  v24 = *(v175 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v182 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v213 = &v159 - v29;
  v30 = sub_1DB09D154();
  v180 = *(v30 - 8);
  v181 = v30;
  v31 = *(v180 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v174 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v159 - v36;
  v38 = *v2;
  v39 = v2[1];
  v165 = v2[2];
  v166 = v38;
  v40 = v2[4];
  v168 = v2[3];
  v169 = v39;
  v164 = v40;
  v41 = v2[5];
  v163 = v2[6];
  v170 = v2[7];
  v171 = v41;
  v173 = *(v2 + 64);
  sub_1DB09D144();
  sub_1DB09D2D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E460, &qword_1DB0A05B0);
  v42 = sub_1DB09D2E4();
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1DB0A0500;
  v47 = v46 + v45;
  v48 = *(v43 + 104);
  v48(v47, *MEMORY[0x1E6969A88], v42);
  v49 = v47 + v44;
  v50 = v213;
  v48(v49, *MEMORY[0x1E6969A98], v42);
  sub_1DAF49F34(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v183 = v37;
  sub_1DB09D2B4();

  v51 = v178;
  v52 = *(v178 + 8);
  v53 = v185;
  v52(v22, v185);
  (*(v51 + 56))(v184, 1, 1, v53);
  v54 = sub_1DB09D344();
  v55 = v179;
  (*(*(v54 - 8) + 56))();
  v56 = v50;
  v57 = sub_1DB09CD94();
  if (v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = v57;
  }

  if (v59 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    v56 = v50;
    v60 = sub_1DB09CDA4();
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = v60;
    }

    if (v62 != 0x8000000000000000)
    {
      sub_1DB09CDB4();
      sub_1DB09D2D4();
      v63 = v177;
      sub_1DB09D2C4();
      v52(v22, v185);
      v64 = v180;
      v65 = v181;
      if ((*(v180 + 48))(v63, 1, v181) == 1)
      {
        sub_1DAF40AEC(v63, &unk_1ECC0EAD0, &qword_1DB0AD520);
        v56 = "unable to calculate rounded date for guid";
        v55 = "CoreODIEssentials/ODIGUID.swift";
        v59 = "createNewTrainingGUID(serverTime:)";
        if (qword_1EE301E08 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_54;
      }

      v80 = v174;
      (*(v64 + 32))(v174, v63, v65);
      sub_1DB09D104();
      v82 = v213;
      if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v81 > -9.22337204e18)
      {
        if (v81 < 9.22337204e18)
        {
          *&v196 = v81;
          v83 = sub_1DB09E1D4();
          v85 = v84;
          v86 = sub_1DB09D964();
          *(v86 + 16) = 6;
          *(v86 + 36) = 0;
          *(v86 + 32) = 0;
          v87 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 6uLL, (v86 + 32));
          if (v87)
          {
            v88 = v87;

            LOBYTE(v196) = 113;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1DB0A04E0;
            *(inited + 32) = 13;
            v90 = inited + 32;
            *(inited + 64) = MEMORY[0x1E69E72F0];
            *(inited + 40) = v88;
            v91 = sub_1DAF3E280(inited);
            swift_setDeallocating();
            sub_1DAF40AEC(v90, &qword_1ECC0E380, &qword_1DB0A0308);
            ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001FLL, 0x80000001DB0C22F0, 0, &v196, 0, v91, 0xD00000000000001FLL, 0x80000001DB0C2260, 0xD00000000000001ALL, 0x80000001DB0C2310, 335);

            swift_willThrow();
            v92 = *(v64 + 8);
            v92(v174, v65);
            v93 = v176;
            v94 = *(v175 + 8);
            v94(v182, v176);
            v94(v82, v93);
            v92(v183, v65);
            return;
          }

          v95 = sub_1DAF49DF0(v86);
          v97 = v96;

          v98 = sub_1DB09D014();
          v100 = v99;
          sub_1DAF40780(v95, v97);
          v101 = v173;
          if (v173 < 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
            v102 = swift_allocObject();
            *(v102 + 16) = xmmword_1DB0A04F0;
            *(v102 + 32) = v101 + 49;
            *(v102 + 40) = 0xE100000000000000;
            v103 = v165;
            *(v102 + 48) = v166;
            v104 = v83;
            v105 = v170;
            *(v102 + 56) = v169;
            *(v102 + 64) = v103;
            v106 = v163;
            v107 = v164;
            *(v102 + 72) = v168;
            *(v102 + 80) = v107;
            v108 = object;
            *(v102 + 88) = v171;
            *(v102 + 96) = v106;
            v109 = countAndFlagsBits;
            *(v102 + 104) = v105;
            *(v102 + 112) = v109;
            *(v102 + 120) = v108;
            *(v102 + 128) = v104;
            v184 = v98;
            v185 = v104;
            *(v102 + 136) = v85;
            *(v102 + 144) = v98;
            *(v102 + 152) = v100;
            *&v196 = v102;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
            v110 = v100;
            sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110);
            sub_1DB09D694();

            v111 = v160;
            sub_1DB09D714();
            v112 = sub_1DB09D6D4();
            v114 = v113;

            (*(v161 + 8))(v111, v162);
            if (v114 >> 60 != 15)
            {
              v179 = v110;
              v115 = sub_1DB09D004();
              v116 = DigestSha256(v115);

              if (v116)
              {
                v117 = sub_1DB09D034();
                v119 = v118;

                v120 = sub_1DB09CFE4();
                v122 = v121;
                v178 = sub_1DB09D014();
                v124 = v123;
                sub_1DAF18404(v112, v114);
                sub_1DAF40780(v120, v122);
                sub_1DAF40780(v117, v119);
                LOBYTE(v187) = v173;
                *(&v187 + 1) = *v212;
                DWORD1(v187) = *&v212[3];
                *(&v187 + 1) = v166;
                *&v188 = v169;
                *(&v188 + 1) = v165;
                *&v189 = v168;
                *(&v189 + 1) = v164;
                *&v190 = v171;
                *(&v190 + 1) = v163;
                *&v191 = v170;
                *(&v191 + 1) = countAndFlagsBits;
                *&v192 = object;
                *(&v192 + 1) = v185;
                *&v193 = v85;
                *(&v193 + 1) = v184;
                *&v194 = v179;
                *(&v194 + 1) = v178;
                v195 = v124;
                LOBYTE(v196) = v173;
                DWORD1(v196) = *&v212[3];
                *(&v196 + 1) = *v212;
                *(&v196 + 1) = v166;
                v197 = v169;
                v198 = v165;
                v199 = v168;
                v200 = v164;
                v201 = v171;
                v202 = v163;
                v203 = v170;
                v204 = countAndFlagsBits;
                v205 = object;
                v206 = v185;
                v207 = v85;
                v208 = v184;
                v209 = v179;
                v210 = v178;
                v211 = v124;
                sub_1DAF49ECC(&v187, v186);
                sub_1DAF49F04(&v196);
                v125 = v181;
                v126 = *(v180 + 8);
                v126(v174, v181);
                v127 = v176;
                v128 = *(v175 + 8);
                v128(v182, v176);
                v128(v213, v127);
                v126(v183, v125);
                v129 = v194;
                v130 = v159;
                *&v159->deviceTime._object = v193;
                *&v130->rand._object = v129;
                v130->hash._object = v195;
                v131 = v190;
                *&v130->mid._object = v189;
                *&v130->chipID._object = v131;
                v132 = v192;
                *&v130->ecid._object = v191;
                *&v130->serverTime._object = v132;
                v133 = v188;
                *&v130->version = v187;
                *&v130->dsid._object = v133;
                return;
              }

              sub_1DAF18404(v112, v114);
            }

            if (qword_1EE301E08 != -1)
            {
              swift_once();
            }

            v146 = MEMORY[0x1E69E7CC0];
            v147 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
            if (*(v147 + 16))
            {
              v148 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
              if (v149)
              {
                sub_1DAF409DC(*(v147 + 56) + 32 * v148, &v196);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
                if (swift_dynamicCast())
                {
                  v146 = v187;
                }
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v146 = sub_1DAF72EC0(0, *(v146 + 2) + 1, 1, v146);
            }

            v151 = *(v146 + 2);
            v150 = *(v146 + 3);
            if (v151 >= v150 >> 1)
            {
              v146 = sub_1DAF72EC0((v150 > 1), v151 + 1, 1, v146);
            }

            *(v146 + 2) = v151 + 1;
            v152 = &v146[56 * v151];
            *(v152 + 4) = 0xD00000000000001CLL;
            *(v152 + 5) = 0x80000001DB0C2370;
            *(v152 + 6) = 0xD00000000000001FLL;
            *(v152 + 7) = 0x80000001DB0C2260;
            *(v152 + 8) = 0xD000000000000022;
            *(v152 + 9) = 0x80000001DB0C23F0;
            *(v152 + 10) = 229;
            v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
            *&v196 = v146;
            sub_1DAF40D20(&v196, &v187);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v186[0] = v147;
            sub_1DAF3B11C(&v187, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
            v154 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v144 = sub_1DB09D6B4();
            v145 = sub_1DB09D604();
            [v154 initWithDomain:v144 code:-1117 userInfo:{v145, v159}];
            goto LABEL_51;
          }

          v80 = "Unexpected DSID Type";
          v55 = "CoreODIEssentials/ODIGUID.swift";
          v63 = "fromDsidType(_:)";
          if (qword_1EE301E08 == -1)
          {
LABEL_30:
            v134 = v80 - 32;
            v135 = MEMORY[0x1E69E7CC0];
            v136 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
            if (*(v136 + 16))
            {
              v137 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
              if (v138)
              {
                sub_1DAF409DC(*(v136 + 56) + 32 * v137, &v196);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
                if (swift_dynamicCast())
                {
                  v135 = v187;
                }
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = sub_1DAF72EC0(0, *(v135 + 2) + 1, 1, v135);
            }

            v140 = *(v135 + 2);
            v139 = *(v135 + 3);
            if (v140 >= v139 >> 1)
            {
              v135 = sub_1DAF72EC0((v139 > 1), v140 + 1, 1, v135);
            }

            *(v135 + 2) = v140 + 1;
            v141 = &v135[56 * v140];
            *(v141 + 4) = 0xD000000000000014;
            *(v141 + 5) = v134 | 0x8000000000000000;
            *(v141 + 6) = 0xD00000000000001FLL;
            *(v141 + 7) = (v55 - 32) | 0x8000000000000000;
            *(v141 + 8) = 0xD000000000000010;
            *(v141 + 9) = (v63 - 32) | 0x8000000000000000;
            *(v141 + 10) = 54;
            v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
            *&v196 = v135;
            sub_1DAF40D20(&v196, &v187);
            v142 = swift_isUniquelyReferenced_nonNull_native();
            v186[0] = v136;
            sub_1DAF3B11C(&v187, 0x636F766E4949444FLL, 0xEE00736E6F697461, v142);
            v143 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v144 = sub_1DB09D6B4();
            v145 = sub_1DB09D604();
            [v143 initWithDomain:v144 code:-1116 userInfo:{v145, v159}];
LABEL_51:

            swift_willThrow();
            v155 = v181;
            v156 = *(v180 + 8);
            v156(v174, v181);
            v157 = v176;
            v158 = *(v175 + 8);
            v158(v182, v176);
            v158(v213, v157);
            v156(v183, v155);
            return;
          }

LABEL_58:
          swift_once();
          goto LABEL_30;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_11:
  v66 = v56 - 32;
  v67 = MEMORY[0x1E69E7CC0];
  v68 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v68 + 16))
  {
    v69 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v70)
    {
      sub_1DAF409DC(*(v68 + 56) + 32 * v69, &v196);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v67 = v187;
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v67 = sub_1DAF72EC0(0, *(v67 + 2) + 1, 1, v67);
  }

  v72 = *(v67 + 2);
  v71 = *(v67 + 3);
  if (v72 >= v71 >> 1)
  {
    v67 = sub_1DAF72EC0((v71 > 1), v72 + 1, 1, v67);
  }

  *(v67 + 2) = v72 + 1;
  v73 = &v67[56 * v72];
  *(v73 + 4) = 0xD000000000000029;
  *(v73 + 5) = v66 | 0x8000000000000000;
  *(v73 + 6) = 0xD00000000000001FLL;
  *(v73 + 7) = (v55 - 32) | 0x8000000000000000;
  *(v73 + 8) = 0xD000000000000022;
  *(v73 + 9) = (v59 - 32) | 0x8000000000000000;
  *(v73 + 10) = 223;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v196 = v67;
  sub_1DAF40D20(&v196, &v187);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v186[0] = v68;
  sub_1DAF3B11C(&v187, 0x636F766E4949444FLL, 0xEE00736E6F697461, v74);
  v75 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v76 = sub_1DB09D6B4();
  v77 = sub_1DB09D604();
  [v75 initWithDomain:v76 code:-1113 userInfo:v77];

  swift_willThrow();
  v78 = v176;
  v79 = *(v175 + 8);
  v79(v182, v176);
  v79(v213, v78);
  (*(v180 + 8))(v183, v181);
}

uint64_t sub_1DAF46F8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1DB09D734();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 64);
  if (v13 >= 3)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v52 = MEMORY[0x1E69E7CC0];
    v53 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v53 + 16))
    {
      v54 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v55)
      {
        sub_1DAF409DC(*(v53 + 56) + 32 * v54, &v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v52 = v92;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1DAF72EC0(0, *(v52 + 2) + 1, 1, v52);
    }

    v57 = *(v52 + 2);
    v56 = *(v52 + 3);
    if (v57 >= v56 >> 1)
    {
      v52 = sub_1DAF72EC0((v56 > 1), v57 + 1, 1, v52);
    }

    *(v52 + 2) = v57 + 1;
    v58 = &v52[56 * v57];
    *(v58 + 4) = 0xD000000000000014;
    *(v58 + 5) = 0x80000001DB0C2330;
    *(v58 + 6) = 0xD00000000000001FLL;
    *(v58 + 7) = 0x80000001DB0C2260;
    *(v58 + 8) = 0xD000000000000010;
    *(v58 + 9) = 0x80000001DB0C2350;
    *(v58 + 10) = 54;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v101 = v52;
    sub_1DAF40D20(&v101, &v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v53;
    sub_1DAF3B11C(&v92, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v60 = -1116;
  }

  else
  {
    v78 = a2;
    v79 = v3;
    v14 = a1[2];
    v89 = a1[3];
    v86 = a1[4];
    v87 = v14;
    v15 = a1[6];
    v118 = a1[5];
    v85 = v15;
    v16 = a1[7];
    v17 = *v2;
    v80 = v2[1];
    v81 = v12;
    v18 = v2[2];
    v19 = v2[3];
    v20 = v2[4];
    v90 = v2[5];
    v21 = v2[6];
    v88 = v2[7];
    v82 = v10;
    v83 = v9;
    v22 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB0A04F0;
    v76 = v17;
    v77 = v22;
    *(v23 + 32) = v22 + 49;
    *(v23 + 40) = 0xE100000000000000;
    *(v23 + 48) = v17;
    v24 = v80;
    *(v23 + 56) = v80;
    *(v23 + 64) = v18;
    v74 = v20;
    v75 = v18;
    v25 = v89;
    v26 = v90;
    *(v23 + 72) = v19;
    *(v23 + 80) = v20;
    *(v23 + 88) = v26;
    *(v23 + 96) = v21;
    v73 = v21;
    v27 = v87;
    *(v23 + 104) = v88;
    *(v23 + 112) = v27;
    v28 = v85;
    v29 = v86;
    *(v23 + 120) = v25;
    *(v23 + 128) = v29;
    v30 = v24;
    *(v23 + 136) = v118;
    *(v23 + 144) = v28;
    *(v23 + 152) = v16;
    *&v101 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v84 = v16;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DB09D694();

    v31 = v81;
    sub_1DB09D714();
    v32 = sub_1DB09D6D4();
    v34 = v33;

    (*(v82 + 8))(v31, v83);
    if (v34 >> 60 != 15)
    {
      v83 = v19;
      v35 = sub_1DB09D004();
      v36 = DigestSha256(v35);

      if (v36)
      {
        v37 = sub_1DB09D034();
        v39 = v38;

        v40 = sub_1DB09CFE4();
        v41 = v32;
        v43 = v42;
        v44 = sub_1DB09D014();
        v81 = v45;
        v82 = v44;
        sub_1DAF18404(v41, v34);
        sub_1DAF40780(v40, v43);
        sub_1DAF40780(v37, v39);
        LOBYTE(v92) = v77;
        *(&v92 + 1) = v117[0];
        DWORD1(v92) = *(v117 + 3);
        *(&v92 + 1) = v76;
        *&v93 = v30;
        *(&v93 + 1) = v75;
        *&v94 = v83;
        *(&v94 + 1) = v74;
        *&v95 = v90;
        *(&v95 + 1) = v73;
        *&v96 = v88;
        *(&v96 + 1) = v87;
        *&v97 = v89;
        *(&v97 + 1) = v86;
        *&v98 = v118;
        *(&v98 + 1) = v85;
        *&v99 = v84;
        *(&v99 + 1) = v82;
        v100 = v81;
        LOBYTE(v101) = v77;
        DWORD1(v101) = *(v117 + 3);
        *(&v101 + 1) = v117[0];
        *(&v101 + 1) = v76;
        v102 = v30;
        v103 = v75;
        v104 = v83;
        v105 = v74;
        v106 = v90;
        v107 = v73;
        v108 = v88;
        v109 = v87;
        v110 = v89;
        v111 = v86;
        v112 = v118;
        v113 = v85;
        v114 = v84;
        v115 = v82;
        v116 = v81;
        sub_1DAF49ECC(&v92, v91);
        result = sub_1DAF49F04(&v101);
        v47 = v99;
        v48 = v78;
        *(v78 + 96) = v98;
        *(v48 + 112) = v47;
        *(v48 + 128) = v100;
        v49 = v95;
        *(v48 + 32) = v94;
        *(v48 + 48) = v49;
        v50 = v97;
        *(v48 + 64) = v96;
        *(v48 + 80) = v50;
        v51 = v93;
        *v48 = v92;
        *(v48 + 16) = v51;
        return result;
      }

      sub_1DAF18404(v32, v34);
    }

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v61 = MEMORY[0x1E69E7CC0];
    v62 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v62 + 16))
    {
      v63 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v64)
      {
        sub_1DAF409DC(*(v62 + 56) + 32 * v63, &v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v61 = v92;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_1DAF72FF4(0, *(v61 + 2) + 1, 1, v61);
    }

    v66 = *(v61 + 2);
    v65 = *(v61 + 3);
    if (v66 >= v65 >> 1)
    {
      v61 = sub_1DAF72FF4((v65 > 1), v66 + 1, 1, v61);
    }

    *(v61 + 2) = v66 + 1;
    v67 = &v61[56 * v66];
    *(v67 + 4) = 0xD00000000000001CLL;
    *(v67 + 5) = 0x80000001DB0C2370;
    *(v67 + 6) = 0xD00000000000001FLL;
    *(v67 + 7) = 0x80000001DB0C2260;
    *(v67 + 8) = 0xD000000000000012;
    *(v67 + 9) = 0x80000001DB0C2420;
    *(v67 + 10) = 200;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v101 = v61;
    sub_1DAF40D20(&v101, &v92);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v62;
    sub_1DAF3B11C(&v92, 0x636F766E49504944, 0xEE00736E6F697461, v68);
    v60 = -1;
  }

  v69 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v70 = sub_1DB09D6B4();
  v71 = sub_1DB09D604();
  [v69 initWithDomain:v70 code:v60 userInfo:v71];

  return swift_willThrow();
}

uint64_t sub_1DAF4789C()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 40) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF47934, v1, 0);
}

uint64_t sub_1DAF47934()
{
  v1 = *(v0 + 40);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF47B14, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1DAF47A04;
    v3 = *(v0 + 40);

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAF47A04()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DAF47B14, v3, 0);
}

uint64_t sub_1DAF47B14()
{
  v1 = v0[5];
  v2 = sub_1DAF4AA44(&qword_1EE303990, type metadata accessor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "UniqueChipID");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
  *v5 = v0;
  v5[1] = sub_1DAF47C7C;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF4AC38, v3, v6);
}

uint64_t sub_1DAF47C7C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  *(v1 + 72) = *(v1 + 16);
  *(v1 + 25) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DAF47DBC, 0, 0);
}

uint64_t sub_1DAF47DBC()
{
  v6 = v0;
  if (*(v0 + 25))
  {
    v5 = 10;
    CoreODILogger.warning(_:category:)(0xD000000000000014, 0x80000001DB0C2640, &v5);

    v1 = 0;
    v2 = 0;
  }

  else
  {
    *(v0 + 32) = *(v0 + 72);
    v1 = sub_1DB09E1D4();
  }

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1DAF47EA4()
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302B58;
  v2 = type metadata accessor for ODIAccountManager();
  v0[5] = v2;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1DAF47FA4;

  return sub_1DB04DA34();
}

uint64_t sub_1DAF47FA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = sub_1DAF48144;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v9 = sub_1DAF480D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DAF480D8()
{
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[14];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1DAF48144()
{
  v7 = v0;
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001DLL, 0x80000001DB0C2600);
  swift_getErrorValue();
  v2 = v0[7];
  v3 = v0[8];
  sub_1DB09E234();
  LOBYTE(v6[0]) = 10;
  CoreODILogger.warning(_:category:)(0, 0xE000000000000000, v6);

  v4 = v0[1];

  return v4(0, 0);
}

uint64_t sub_1DAF4826C()
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302B58;
  v2 = type metadata accessor for ODIAccountManager();
  v0[5] = v2;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v1;
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[11] = v3;
  v4 = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1DAF48344, v4, 0);
}

uint64_t sub_1DAF48344()
{
  v1 = **(v0 + 88);
  v2 = sub_1DB04E1DC();
  *(v0 + 96) = 0;
  *(v0 + 104) = v3;
  *(v0 + 112) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF4AC34, 0, 0);
}

uint64_t sub_1DAF483D8()
{
  v7 = v0;
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001DLL, 0x80000001DB0C2620);
  swift_getErrorValue();
  v2 = v0[7];
  v3 = v0[8];
  sub_1DB09E234();
  LOBYTE(v6[0]) = 10;
  CoreODILogger.warning(_:category:)(0, 0xE000000000000000, v6);

  v4 = v0[1];

  return v4(0, 0);
}

uint64_t sub_1DAF484E4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E488, &qword_1DB0A0950);
  if (swift_dynamicCast())
  {
    sub_1DAF332B8(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1DB09CDD4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DAF40AEC(__src, &qword_1ECC0E490, &qword_1DB0A0958);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DB09DEC4();
  }

  sub_1DAF493C4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DAF4A91C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0], v9);
  v10 = sub_1DAF4948C(sub_1DAF4A9BC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DB09CFC4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DAFED704(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DB09D7E4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DB09D814();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DB09DEC4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DAFED704(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DB09D7F4();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1DB09CFD4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1DB09CFD4();
    sub_1DAF18404(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DAF18404(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DAF40674(*&__src[0], *(&__src[0] + 1));

  sub_1DAF40780(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1DAF48A04(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1DAFB75C0(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1DB0415A8(v3, v4);
    }

    else
    {
      v6 = sub_1DB041624(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_1DAF48AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v7 = sub_1DB09D4C4();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB09D4F4();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A8, &qword_1DB0A0970);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v28 - v21;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *(a2 + 112);
  (*(v18 + 16))(v22, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  *(v25 + 24) = a4;
  (*(v18 + 32))(v25 + v24, v22, v17);
  aBlock[4] = sub_1DAF4AB94;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_38;
  v26 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1DAF4AA44(&unk_1EE301990, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF4AA8C(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v16, v11, v26);
  _Block_release(v26);
  (*(v32 + 8))(v11, v7);
  (*(v30 + 8))(v16, v31);
}

uint64_t sub_1DAF48E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v7 = sub_1DB09D4C4();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB09D4F4();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E480, &qword_1DB0A0940);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v28 - v21;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *(a2 + 112);
  (*(v18 + 16))(v22, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  *(v25 + 24) = a4;
  (*(v18 + 32))(v25 + v24, v22, v17);
  aBlock[4] = sub_1DAF4A8DC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor;
  v26 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1DAF4AA44(&unk_1EE301990, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF4AA8C(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v16, v11, v26);
  _Block_release(v26);
  (*(v32 + 8))(v11, v7);
  (*(v30 + 8))(v16, v31);
}

uint64_t sub_1DAF49278()
{
  v0 = sub_1DB09D6B4();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A8, &qword_1DB0A0970);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAF49328()
{
  v0 = sub_1DB09D6B4();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E480, &qword_1DB0A0940);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAF493C4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1DAFB75C0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1DB09CD84();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1DB09CD34();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1DB09CFB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1DAF4948C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1DAF40780(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1DAF40780(v6, v5);
    *v3 = xmmword_1DB0A0510;
    sub_1DAF40780(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DB09CD44() && __OFSUB__(v6, sub_1DB09CD74()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1DB09CD84();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1DB09CD24();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1DAF4989C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1DAF40780(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1DB0A0510;
    sub_1DAF40780(0, 0xC000000000000000);
    sub_1DB09CF74();
    result = sub_1DAF4989C(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1DAF49830(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DAF4989C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DB09CD44();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DB09CD74();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DB09CD64();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DAF49950@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1DB09DE54();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17CoreODIEssentials13ODIClientGUIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v34 = a1[6];
  v35 = a1[5];
  v31 = a1[8];
  v32 = a1[7];
  v27 = a1[10];
  v28 = a1[9];
  v23 = a1[12];
  v24 = a1[11];
  v19 = a1[14];
  v20 = a1[13];
  v15 = a1[16];
  v16 = a1[15];
  v7 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v33 = a2[6];
  v29 = a2[8];
  v30 = a2[7];
  v25 = a2[10];
  v26 = a2[9];
  v21 = a2[12];
  v22 = a2[11];
  v17 = a2[14];
  v18 = a2[13];
  v13 = a2[16];
  v14 = a2[15];
  if (*a1 == *a2)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = sub_1DB09E254();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v2 != v7 || v3 != v6) && (sub_1DB09E254() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_1DB09E254() & 1) == 0 || (v35 != v10 || v34 != v33) && (sub_1DB09E254() & 1) == 0 || (v32 != v30 || v31 != v29) && (sub_1DB09E254() & 1) == 0 || (v28 != v26 || v27 != v25) && (sub_1DB09E254() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1DB09E254() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1DB09E254() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1DB09E254();
}

uint64_t sub_1DAF49C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D697473 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697464 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684955506 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DAF49DA4()
{
  v0 = sub_1DB09E004();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAF49DF0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
  v10 = sub_1DAF4AA8C(&qword_1EE301910, &qword_1ECC0E4A0, &qword_1DB0A0968);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1DB040508(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_1DAF49F34(uint64_t a1)
{
  v2 = sub_1DB09D2E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E498, &qword_1DB0A0960);
    v12 = sub_1DB09DDF4();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_1DAF4AA44(&qword_1EE3044C8, MEMORY[0x1E6969AD0]);
      v20 = sub_1DB09D674();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_1DAF4AA44(&qword_1EE3044C0, MEMORY[0x1E6969AD0]);
          v27 = sub_1DB09D6A4();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAF4A268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DAF4A2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DAF4A344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF4A38C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DAF4A420(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DAF4A468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIClientGUID.GUIDSeedVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIClientGUID.GUIDSeedVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIClientGUIDSeeds.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIClientGUIDSeeds.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAF4A780()
{
  result = qword_1ECC0E468;
  if (!qword_1ECC0E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E468);
  }

  return result;
}

unint64_t sub_1DAF4A7D8()
{
  result = qword_1ECC0E470;
  if (!qword_1ECC0E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E470);
  }

  return result;
}

unint64_t sub_1DAF4A830()
{
  result = qword_1EE3028E0;
  if (!qword_1EE3028E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028E0);
  }

  return result;
}

unint64_t sub_1DAF4A888()
{
  result = qword_1EE3028E8;
  if (!qword_1EE3028E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028E8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAF4A91C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DAFB75A0(result);
    }

    else
    {
      v2 = sub_1DB09CD84();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1DB09CD54();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DB09CFB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1DAF4A9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DAF49830(sub_1DAF4AA24, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1DAF4AA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAF4AA8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DAF4ABBC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t DIPError(_:fromError:code:forceCode:properties:file:function:line:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int16 *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOBYTE(v12) = a5;
  v14 = *a4;
  if (qword_1EE300B90 != -1)
  {
LABEL_67:
    swift_once();
  }

  v15 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v16 = v15;
  v85 = a6;
  if (!a3)
  {
    goto LABEL_17;
  }

  v17 = v15;
  v18 = a3;
  v19 = sub_1DB09CE64();
  v20 = [v19 domain];
  v21 = sub_1DB09D6C4();
  v23 = v22;

  if (v21 == 0x726F727245504944 && v23 == 0xE800000000000000)
  {
    goto LABEL_10;
  }

  v25 = sub_1DB09E254();

  if (v25)
  {
LABEL_11:
    if ((v12 & 1) == 0)
    {
      DIPErrorCode.init(rawValue:)([v19 code]);
      if (v92 == 462)
      {
        v14 = v14;
      }

      else
      {
        v14 = v92;
      }
    }

    v30 = [v19 userInfo];
    v16 = sub_1DB09D624();

    goto LABEL_16;
  }

  v26 = [v19 domain];
  v27 = sub_1DB09D6C4();
  v29 = v28;

  if (v27 == 0x726F72724549444FLL && v29 == 0xE800000000000000)
  {
LABEL_10:

    goto LABEL_11;
  }

  v75 = sub_1DB09E254();

  if (v75)
  {
    goto LABEL_11;
  }

  v76 = *MEMORY[0x1E696AA08];
  v77 = sub_1DB09D6C4();
  v79 = v78;
  *(&v93 + 1) = sub_1DAF4D7A4();
  *&v92 = v19;
  sub_1DAF40D20(&v92, &v89);
  v12 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v88[0] = v17;
  sub_1DAF3B11C(&v89, v77, v79, isUniquelyReferenced_nonNull_native);

  v16 = *&v88[0];
LABEL_16:
  a6 = v85;
LABEL_17:
  if (!a6)
  {
LABEL_53:
    v61 = *(v16 + 16);

    if (v61 && (v62 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v63 & 1) != 0) && (sub_1DAF409DC(*(v16 + 56) + 32 * v62, &v92), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), (swift_dynamicCast() & 1) != 0))
    {
      v64 = v89;
    }

    else
    {
      v64 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1DAF72FF4(0, *(v64 + 2) + 1, 1, v64);
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_1DAF72FF4((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[56 * v66];
    *(v67 + 4) = a1;
    *(v67 + 5) = a2;
    *(v67 + 6) = a7;
    *(v67 + 7) = a8;
    *(v67 + 8) = a9;
    *(v67 + 9) = a10;
    *(v67 + 10) = a11;
    *(&v93 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v92 = v64;
    sub_1DAF40D20(&v92, &v89);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v16;
    sub_1DAF3B11C(&v89, 0x636F766E49504944, 0xEE00736E6F697461, v68);
    v69 = qword_1DB0A1320[v14];
    v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v71 = sub_1DB09D6B4();
    v72 = sub_1DB09D604();
    v73 = [v70 initWithDomain:v71 code:v69 userInfo:v72];

    return v73;
  }

  v31 = *(v16 + 16);

  v81 = v14;
  if (v31 && (v32 = sub_1DAF35210(0x65706F7250504944, 0xED00007365697472), (v33 & 1) != 0) && (sub_1DAF409DC(*(v16 + 56) + 32 * v32, &v92), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4B0, &qword_1DB0A09A8), (swift_dynamicCast() & 1) != 0))
  {
    a3 = v89;
  }

  else
  {
    a3 = sub_1DAF3E3C8(MEMORY[0x1E69E7CC0]);
  }

  v34 = 0;
  v35 = a6 + 64;
  v36 = 1 << *(a6 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v14 = v37 & *(a6 + 64);
  v38 = (v36 + 63) >> 6;
  v82 = v16;
  while (1)
  {
    while (1)
    {
      v39 = v34;
      if (!v14)
      {
        if (v38 <= v34 + 1)
        {
          v41 = v34 + 1;
        }

        else
        {
          v41 = v38;
        }

        v34 = v41 - 1;
        while (1)
        {
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v40 >= v38)
          {
            v14 = 0;
            v91 = 0;
            v89 = 0u;
            v90 = 0u;
            goto LABEL_36;
          }

          v14 = *(v35 + 8 * v40);
          ++v39;
          if (v14)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v40 = v34;
LABEL_35:
      v42 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v43 = v42 | (v40 << 6);
      v44 = *(*(a6 + 48) + v43);
      sub_1DAF409DC(*(a6 + 56) + 32 * v43, v88);
      LOBYTE(v89) = v44;
      sub_1DAF40D20(v88, (&v89 + 8));
      v34 = v40;
LABEL_36:
      v92 = v89;
      v93 = v90;
      v94 = v91;
      if (!v91)
      {

        *(&v93 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4B0, &qword_1DB0A09A8);
        *&v92 = a3;
        sub_1DAF40D20(&v92, &v89);

        v60 = swift_isUniquelyReferenced_nonNull_native();
        *&v88[0] = v16;
        sub_1DAF3B11C(&v89, 0x65706F7250504944, 0xED00007365697472, v60);

        v16 = *&v88[0];
        LOWORD(v14) = v81;
        goto LABEL_53;
      }

      v12 = v92;
      sub_1DAF40D20((&v92 + 8), &v89);
      if (!a3[2])
      {
        break;
      }

      v45 = sub_1DAF35314(v12);
      if ((v46 & 1) == 0)
      {
        break;
      }

      sub_1DAF409DC(a3[7] + 32 * v45, v88);
      __swift_destroy_boxed_opaque_existential_1Tm(&v89);
      sub_1DAF4D73C(v88);
    }

    memset(v88, 0, sizeof(v88));
    sub_1DAF4D73C(v88);
    sub_1DAF409DC(&v89, v88);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_1DAF35314(v12);
    v50 = a3[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_66;
    }

    v53 = v48;
    if (a3[3] >= v52)
    {
      if ((v47 & 1) == 0)
      {
        sub_1DAF3C910();
      }
    }

    else
    {
      sub_1DAF3831C(v52, v47);
      v54 = sub_1DAF35314(v12);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_69;
      }

      v49 = v54;
    }

    if (v53)
    {
      v56 = (a3[7] + 32 * v49);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      sub_1DAF40D20(v88, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(&v89);
      goto LABEL_51;
    }

    a3[(v49 >> 6) + 8] |= 1 << v49;
    *(a3[6] + v49) = v12;
    sub_1DAF40D20(v88, (a3[7] + 32 * v49));
    __swift_destroy_boxed_opaque_existential_1Tm(&v89);
    v57 = a3[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      break;
    }

    a3[2] = v59;
LABEL_51:
    v16 = v82;
    a6 = v85;
  }

  __break(1u);
LABEL_69:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

uint64_t sub_1DAF4B4C0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a2 || (v6 = 0xE000000000000000, a3 != 0xE000000000000000))
  {
    v8 = 0xE000000000000000;
    if (sub_1DB09E254())
    {
      v7 = 0;
    }

    else
    {

      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      v7 = a2;
      v8 = a3;
    }

    v6 = 0xE000000000000000;
    if (sub_1DB09E254())
    {
      v18 = 0;
    }

    else
    {

      MEMORY[0x1E127FE90](10, 0xE100000000000000);
      v6 = a3;
      v18 = a2;
    }
  }

  else
  {
    v18 = 0;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  sub_1DB09DB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB0A0500;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1DAF4DC24();
  *(v9 + 64) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_1DAF4DC78(a1);
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  *(v9 + 80) = v13;
  sub_1DB09D444();

  sub_1DB09DB44();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB0A0500;
  *(v14 + 56) = v10;
  *(v14 + 64) = v11;
  *(v14 + 32) = v18;
  *(v14 + 40) = v6;
  v15 = sub_1DAF4E33C(a1);
  *(v14 + 96) = v10;
  *(v14 + 104) = v11;
  *(v14 + 72) = v15;
  *(v14 + 80) = v16;
  sub_1DB09D444();
}

CoreODIEssentials::DIPErrorCode_optional __swiftcall DIPErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > -30)
  {
    if (rawValue <= 39999)
    {
      if (rawValue <= 19999)
      {
        v2 = 0;
        switch(rawValue)
        {
          case -29:
            v2 = 23;
            goto LABEL_166;
          case -28:
            v2 = 22;
            goto LABEL_166;
          case -22:
            v2 = 21;
            goto LABEL_166;
          case -21:
            v2 = 20;
            goto LABEL_166;
          case -20:
            v2 = 19;
            goto LABEL_166;
          case -19:
            v2 = 18;
            goto LABEL_166;
          case -18:
            v2 = 17;
            goto LABEL_166;
          case -17:
            v2 = 16;
            goto LABEL_166;
          case -16:
            v2 = 15;
            goto LABEL_166;
          case -15:
            v2 = 14;
            goto LABEL_166;
          case -14:
            v2 = 13;
            goto LABEL_166;
          case -13:
            v2 = 12;
            goto LABEL_166;
          case -12:
            v2 = 11;
            goto LABEL_166;
          case -11:
            v2 = 10;
            goto LABEL_166;
          case -10:
            v2 = 9;
            goto LABEL_166;
          case -9:
            v2 = 8;
            goto LABEL_166;
          case -8:
            v2 = 7;
            goto LABEL_166;
          case -7:
            v2 = 6;
            goto LABEL_166;
          case -6:
            v2 = 5;
            goto LABEL_166;
          case -5:
            v2 = 4;
            goto LABEL_166;
          case -4:
            v2 = 3;
            goto LABEL_166;
          case -3:
            v2 = 2;
            goto LABEL_166;
          case -2:
            v2 = 1;
            goto LABEL_166;
          case -1:
            goto LABEL_166;
          case 200:
            v2 = 24;
            goto LABEL_166;
          default:
            goto LABEL_168;
        }
      }

      switch(rawValue)
      {
        case 20000:
          v2 = 25;
          goto LABEL_166;
        case 20001:
          v2 = 26;
          goto LABEL_166;
        case 20100:
          v2 = 27;
          goto LABEL_166;
      }
    }

    else
    {
      if (rawValue <= 40400)
      {
        switch(rawValue)
        {
          case 40000:
            v2 = 28;
            goto LABEL_166;
          case 40010:
            v2 = 29;
            goto LABEL_166;
          case 40011:
            v2 = 30;
            goto LABEL_166;
          case 40012:
            v2 = 31;
            goto LABEL_166;
          case 40013:
            v2 = 32;
            goto LABEL_166;
          case 40014:
            v2 = 33;
            goto LABEL_166;
          case 40015:
            v2 = 34;
            goto LABEL_166;
          case 40020:
            v2 = 35;
            goto LABEL_166;
          case 40021:
            v2 = 36;
            goto LABEL_166;
          case 40022:
            v2 = 37;
            goto LABEL_166;
          case 40023:
            v2 = 38;
            goto LABEL_166;
          case 40024:
            v2 = 39;
            goto LABEL_166;
          case 40025:
            v2 = 40;
            goto LABEL_166;
          case 40026:
            v2 = 41;
            goto LABEL_166;
          case 40027:
            v2 = 42;
            goto LABEL_166;
          case 40028:
            v2 = 43;
            goto LABEL_166;
          case 40029:
            v2 = 44;
            goto LABEL_166;
          case 40030:
            v2 = 45;
            goto LABEL_166;
          case 40101:
            v2 = 46;
            goto LABEL_166;
          case 40102:
            v2 = 47;
            goto LABEL_166;
          case 40200:
            v2 = 48;
            goto LABEL_166;
          case 40201:
            v2 = 49;
            goto LABEL_166;
          case 40205:
            v2 = 50;
            goto LABEL_166;
          default:
            goto LABEL_168;
        }
      }

      if (rawValue <= 40600)
      {
        if (rawValue <= 40403)
        {
          if (rawValue == 40401)
          {
            v2 = 51;
          }

          else if (rawValue == 40402)
          {
            v2 = 52;
          }

          else
          {
            v2 = 53;
          }

          goto LABEL_166;
        }

        switch(rawValue)
        {
          case 40404:
            v2 = 54;
            goto LABEL_166;
          case 40500:
            v2 = 55;
            goto LABEL_166;
          case 40600:
            v2 = 56;
            goto LABEL_166;
        }
      }

      else if (rawValue <= 50001)
      {
        switch(rawValue)
        {
          case 40601:
            v2 = 57;
            goto LABEL_166;
          case 50000:
            v2 = 58;
            goto LABEL_166;
          case 50001:
            v2 = 59;
            goto LABEL_166;
        }
      }

      else if (rawValue > 99991)
      {
        if (rawValue == 99992)
        {
          v2 = 62;
          goto LABEL_166;
        }

        if (rawValue == 99993)
        {
          v2 = 63;
          goto LABEL_166;
        }
      }

      else
      {
        if (rawValue == 50002)
        {
          v2 = 60;
          goto LABEL_166;
        }

        if (rawValue == 99991)
        {
          v2 = 61;
          goto LABEL_166;
        }
      }
    }
  }

  else
  {
    if (rawValue > -1408)
    {
      switch(rawValue)
      {
        case -1407:
          v2 = 83;
          goto LABEL_166;
        case -1406:
          v2 = 82;
          goto LABEL_166;
        case -1405:
          v2 = 81;
          goto LABEL_166;
        case -1404:
          v2 = 80;
          goto LABEL_166;
        case -1403:
          v2 = 79;
          goto LABEL_166;
        case -1402:
          v2 = 78;
          goto LABEL_166;
        case -1401:
          v2 = 77;
          goto LABEL_166;
        case -1317:
          v2 = 98;
          goto LABEL_166;
        case -1316:
          v2 = 97;
          goto LABEL_166;
        case -1315:
          v2 = 96;
          goto LABEL_166;
        case -1314:
          v2 = 95;
          goto LABEL_166;
        case -1311:
          v2 = 94;
          goto LABEL_166;
        case -1310:
          v2 = 93;
          goto LABEL_166;
        case -1309:
          v2 = 92;
          goto LABEL_166;
        case -1308:
          v2 = 91;
          goto LABEL_166;
        case -1307:
          v2 = 90;
          goto LABEL_166;
        case -1306:
          v2 = 89;
          goto LABEL_166;
        case -1305:
          v2 = 88;
          goto LABEL_166;
        case -1304:
          v2 = 87;
          goto LABEL_166;
        case -1303:
          v2 = 86;
          goto LABEL_166;
        case -1302:
          v2 = 85;
          goto LABEL_166;
        case -1301:
          v2 = 84;
          goto LABEL_166;
        case -1204:
          v2 = 76;
          goto LABEL_166;
        case -1203:
          v2 = 75;
          goto LABEL_166;
        case -1202:
          v2 = 74;
          goto LABEL_166;
        case -1201:
          v2 = 73;
          goto LABEL_166;
        case -1109:
          v2 = 72;
          goto LABEL_166;
        case -1108:
          v2 = 71;
          goto LABEL_166;
        case -1107:
          v2 = 70;
          goto LABEL_166;
        case -1106:
          v2 = 69;
          goto LABEL_166;
        case -1105:
          v2 = 68;
          goto LABEL_166;
        case -1104:
          v2 = 67;
          goto LABEL_166;
        case -1103:
          v2 = 66;
          goto LABEL_166;
        case -1102:
          v2 = 65;
          goto LABEL_166;
        case -1101:
          v2 = 64;
          goto LABEL_166;
        default:
          goto LABEL_168;
      }
    }

    if (rawValue <= -3103)
    {
      if (rawValue > -3107)
      {
        if (rawValue > -3105)
        {
          if (rawValue == -3104)
          {
            v2 = 123;
          }

          else
          {
            v2 = 122;
          }
        }

        else if (rawValue == -3106)
        {
          v2 = 125;
        }

        else
        {
          v2 = 124;
        }

        goto LABEL_166;
      }

      switch(rawValue)
      {
        case -131600:
          v2 = 99;
          goto LABEL_166;
        case -3108:
          v2 = 127;
          goto LABEL_166;
        case -3107:
          v2 = 126;
          goto LABEL_166;
      }
    }

    else
    {
      switch(rawValue)
      {
        case -2120:
          v2 = 119;
          goto LABEL_166;
        case -2119:
          v2 = 118;
          goto LABEL_166;
        case -2118:
          v2 = 117;
          goto LABEL_166;
        case -2117:
          v2 = 116;
          goto LABEL_166;
        case -2116:
          v2 = 115;
          goto LABEL_166;
        case -2115:
          v2 = 114;
          goto LABEL_166;
        case -2114:
          v2 = 113;
          goto LABEL_166;
        case -2113:
          v2 = 112;
          goto LABEL_166;
        case -2112:
          v2 = 111;
          goto LABEL_166;
        case -2111:
          v2 = 110;
          goto LABEL_166;
        case -2110:
          v2 = 109;
          goto LABEL_166;
        case -2109:
          v2 = 108;
          goto LABEL_166;
        case -2108:
          v2 = 107;
          goto LABEL_166;
        case -2107:
          v2 = 106;
          goto LABEL_166;
        case -2106:
          v2 = 105;
          goto LABEL_166;
        case -2105:
          v2 = 104;
          goto LABEL_166;
        case -2104:
          v2 = 103;
          goto LABEL_166;
        case -2103:
          v2 = 102;
          goto LABEL_166;
        case -2102:
          v2 = 101;
          goto LABEL_166;
        case -2101:
          v2 = 100;
          goto LABEL_166;
        default:
          if (rawValue == -3102)
          {
            v2 = 121;
            goto LABEL_166;
          }

          if (rawValue == -3101)
          {
            v2 = 120;
            goto LABEL_166;
          }

          break;
      }
    }
  }

LABEL_168:
  if (rawValue > -3301)
  {
    v2 = 128;
    switch(rawValue)
    {
      case -3300:
        v2 = 161;
        goto LABEL_166;
      case -3203:
        v2 = 152;
        goto LABEL_166;
      case -3202:
        v2 = 151;
        goto LABEL_166;
      case -3201:
        v2 = 150;
        goto LABEL_166;
      case -3200:
        v2 = 149;
        goto LABEL_166;
      case -3178:
        v2 = 160;
        goto LABEL_166;
      case -3177:
        v2 = 159;
        goto LABEL_166;
      case -3176:
        v2 = 158;
        goto LABEL_166;
      case -3175:
        v2 = 157;
        goto LABEL_166;
      case -3174:
        v2 = 156;
        goto LABEL_166;
      case -3173:
        v2 = 155;
        goto LABEL_166;
      case -3172:
        v2 = 154;
        goto LABEL_166;
      case -3171:
        v2 = 153;
        goto LABEL_166;
      case -3167:
        v2 = 148;
        goto LABEL_166;
      case -3166:
        v2 = 147;
        goto LABEL_166;
      case -3165:
        v2 = 146;
        goto LABEL_166;
      case -3164:
        v2 = 145;
        goto LABEL_166;
      case -3163:
        v2 = 144;
        goto LABEL_166;
      case -3162:
        v2 = 143;
        goto LABEL_166;
      case -3161:
        v2 = 142;
        goto LABEL_166;
      case -3159:
        v2 = 141;
        goto LABEL_166;
      case -3158:
        v2 = 140;
        goto LABEL_166;
      case -3157:
        v2 = 139;
        goto LABEL_166;
      case -3156:
        v2 = 138;
        goto LABEL_166;
      case -3155:
        v2 = 137;
        goto LABEL_166;
      case -3154:
        v2 = 136;
        goto LABEL_166;
      case -3153:
        v2 = 135;
        goto LABEL_166;
      case -3152:
        v2 = 134;
        goto LABEL_166;
      case -3151:
        v2 = 133;
        goto LABEL_166;
      case -3113:
        v2 = 132;
        goto LABEL_166;
      case -3112:
        v2 = 131;
        goto LABEL_166;
      case -3111:
        v2 = 130;
        goto LABEL_166;
      case -3110:
        v2 = 129;
        goto LABEL_166;
      case -3109:
        goto LABEL_166;
      default:
        goto LABEL_226;
    }
  }

  if (rawValue <= -5103)
  {
    if (rawValue > -5107)
    {
      if (rawValue > -5105)
      {
        if (rawValue == -5104)
        {
          v2 = 185;
        }

        else
        {
          v2 = 184;
        }
      }

      else if (rawValue == -5106)
      {
        v2 = 187;
      }

      else
      {
        v2 = 186;
      }

      goto LABEL_166;
    }

    if (rawValue > -5202)
    {
      if (rawValue == -5201)
      {
        v2 = 189;
        goto LABEL_166;
      }

      if (rawValue == -5107)
      {
        v2 = 188;
        goto LABEL_166;
      }
    }

    else
    {
      if (rawValue == -5203)
      {
        v2 = 191;
        goto LABEL_166;
      }

      if (rawValue == -5202)
      {
        v2 = 190;
        goto LABEL_166;
      }
    }
  }

  else
  {
    switch(rawValue)
    {
      case -4120:
        v2 = 181;
        goto LABEL_166;
      case -4119:
        v2 = 180;
        goto LABEL_166;
      case -4118:
        v2 = 179;
        goto LABEL_166;
      case -4117:
        v2 = 178;
        goto LABEL_166;
      case -4116:
        v2 = 177;
        goto LABEL_166;
      case -4115:
        v2 = 176;
        goto LABEL_166;
      case -4114:
        v2 = 175;
        goto LABEL_166;
      case -4113:
        v2 = 174;
        goto LABEL_166;
      case -4112:
        v2 = 173;
        goto LABEL_166;
      case -4111:
        v2 = 172;
        goto LABEL_166;
      case -4110:
        v2 = 171;
        goto LABEL_166;
      case -4109:
        v2 = 170;
        goto LABEL_166;
      case -4108:
        v2 = 169;
        goto LABEL_166;
      case -4107:
        v2 = 168;
        goto LABEL_166;
      case -4106:
        v2 = 167;
        goto LABEL_166;
      case -4105:
        v2 = 166;
        goto LABEL_166;
      case -4104:
        v2 = 165;
        goto LABEL_166;
      case -4103:
        v2 = 164;
        goto LABEL_166;
      case -4102:
        v2 = 163;
        goto LABEL_166;
      case -4101:
        v2 = 162;
        goto LABEL_166;
      default:
        if (rawValue == -5102)
        {
          v2 = 183;
          goto LABEL_166;
        }

        if (rawValue == -5101)
        {
          v2 = 182;
          goto LABEL_166;
        }

        break;
    }
  }

LABEL_226:
  if (rawValue <= -5703)
  {
    switch(rawValue)
    {
      case -6105:
        v2 = 241;
        goto LABEL_166;
      case -6104:
        v2 = 240;
        goto LABEL_166;
      case -6103:
        v2 = 239;
        goto LABEL_166;
      case -6102:
        v2 = 238;
        goto LABEL_166;
      case -6101:
        v2 = 237;
        goto LABEL_166;
      case -6100:
      case -6099:
      case -6098:
      case -6097:
      case -6096:
      case -6095:
      case -6094:
      case -6093:
      case -6092:
      case -6091:
      case -6090:
      case -6089:
      case -6088:
      case -6087:
      case -6086:
      case -6085:
      case -6084:
      case -6083:
      case -6082:
      case -6081:
      case -6080:
      case -6079:
      case -6078:
      case -6077:
      case -6076:
      case -6075:
      case -6074:
      case -6073:
      case -6072:
      case -6071:
      case -6070:
      case -6069:
      case -6068:
      case -6067:
      case -6066:
      case -6065:
      case -6064:
      case -6063:
      case -6062:
      case -6061:
      case -6060:
      case -6059:
      case -6058:
      case -6057:
      case -6056:
      case -6055:
      case -6054:
      case -6053:
      case -6052:
      case -6051:
      case -6050:
      case -6049:
      case -6048:
      case -6047:
      case -6046:
      case -6045:
      case -6044:
      case -6043:
      case -6042:
      case -6041:
      case -6040:
      case -6039:
      case -6038:
      case -6037:
      case -6036:
      case -6035:
      case -6034:
      case -6033:
      case -6032:
      case -6031:
      case -6030:
      case -6029:
      case -6028:
      case -6027:
      case -6026:
      case -6025:
      case -6024:
      case -6023:
      case -6022:
      case -6021:
      case -6020:
      case -6019:
      case -6018:
      case -6017:
      case -6016:
      case -6015:
      case -6014:
      case -6013:
      case -6012:
      case -6011:
      case -6000:
      case -5999:
      case -5998:
      case -5997:
      case -5996:
      case -5995:
      case -5994:
      case -5993:
      case -5992:
      case -5991:
      case -5990:
      case -5989:
      case -5988:
      case -5987:
      case -5986:
      case -5985:
      case -5984:
      case -5983:
      case -5982:
      case -5981:
      case -5980:
      case -5979:
      case -5978:
      case -5977:
      case -5976:
      case -5975:
      case -5974:
      case -5973:
      case -5972:
      case -5971:
      case -5970:
      case -5969:
      case -5968:
      case -5967:
      case -5966:
      case -5965:
      case -5964:
      case -5963:
      case -5962:
      case -5961:
      case -5960:
      case -5959:
      case -5958:
      case -5957:
      case -5956:
      case -5955:
      case -5954:
      case -5953:
      case -5952:
      case -5951:
      case -5950:
      case -5949:
      case -5948:
      case -5947:
      case -5946:
      case -5945:
      case -5944:
      case -5943:
      case -5942:
      case -5941:
      case -5940:
      case -5939:
      case -5938:
      case -5937:
      case -5936:
      case -5935:
      case -5934:
      case -5933:
      case -5932:
      case -5931:
      case -5930:
      case -5929:
      case -5928:
      case -5927:
      case -5926:
      case -5925:
      case -5924:
      case -5923:
      case -5922:
      case -5921:
      case -5920:
      case -5919:
      case -5918:
      case -5917:
      case -5916:
      case -5915:
      case -5914:
      case -5913:
        goto LABEL_266;
      case -6010:
        v2 = 236;
        goto LABEL_166;
      case -6009:
        v2 = 235;
        goto LABEL_166;
      case -6008:
        v2 = 234;
        goto LABEL_166;
      case -6007:
        v2 = 233;
        goto LABEL_166;
      case -6006:
        v2 = 232;
        goto LABEL_166;
      case -6005:
        v2 = 231;
        goto LABEL_166;
      case -6004:
        v2 = 230;
        goto LABEL_166;
      case -6003:
        v2 = 229;
        goto LABEL_166;
      case -6002:
        v2 = 228;
        goto LABEL_166;
      case -6001:
        v2 = 227;
        goto LABEL_166;
      case -5912:
        v2 = 226;
        goto LABEL_166;
      case -5911:
        v2 = 225;
        goto LABEL_166;
      case -5910:
        v2 = 224;
        goto LABEL_166;
      case -5909:
        v2 = 223;
        goto LABEL_166;
      case -5908:
        v2 = 222;
        goto LABEL_166;
      case -5907:
        v2 = 221;
        goto LABEL_166;
      case -5906:
        v2 = 220;
        goto LABEL_166;
      case -5905:
        v2 = 219;
        goto LABEL_166;
      case -5904:
        v2 = 218;
        goto LABEL_166;
      case -5903:
        v2 = 217;
        goto LABEL_166;
      case -5902:
        v2 = 216;
        goto LABEL_166;
      case -5901:
        v2 = 215;
        goto LABEL_166;
      default:
        switch(rawValue)
        {
          case -7013:
            v2 = 255;
            goto LABEL_166;
          case -7012:
            v2 = 254;
            goto LABEL_166;
          case -7011:
            v2 = 253;
            goto LABEL_166;
          case -7010:
            v2 = 252;
            goto LABEL_166;
          case -7009:
            v2 = 251;
            goto LABEL_166;
          case -7008:
            v2 = 250;
            goto LABEL_166;
          case -7007:
            v2 = 249;
            goto LABEL_166;
          case -7006:
            v2 = 248;
            goto LABEL_166;
          case -7005:
            v2 = 247;
            goto LABEL_166;
          case -7004:
            v2 = 246;
            goto LABEL_166;
          case -7003:
            v2 = 245;
            goto LABEL_166;
          case -7002:
            v2 = 244;
            goto LABEL_166;
          case -7001:
            v2 = 243;
            goto LABEL_166;
          case -7000:
            v2 = 242;
            goto LABEL_166;
          default:
            goto LABEL_266;
        }
    }
  }

  if (rawValue <= -5502)
  {
    if (rawValue > -5603)
    {
      if (rawValue == -5602)
      {
        v2 = 212;
        goto LABEL_166;
      }

      if (rawValue == -5601)
      {
        v2 = 211;
        goto LABEL_166;
      }
    }

    else
    {
      if (rawValue == -5702)
      {
        v2 = 214;
        goto LABEL_166;
      }

      if (rawValue == -5701)
      {
        v2 = 213;
        goto LABEL_166;
      }
    }
  }

  else
  {
    v2 = 192;
    switch(rawValue)
    {
      case -5301:
        v2 = 208;
        goto LABEL_166;
      case -5300:
      case -5299:
      case -5298:
      case -5297:
      case -5296:
      case -5295:
      case -5294:
      case -5293:
      case -5292:
      case -5291:
      case -5290:
      case -5289:
      case -5288:
      case -5287:
      case -5286:
      case -5285:
      case -5284:
      case -5283:
      case -5282:
      case -5281:
      case -5280:
      case -5279:
      case -5278:
      case -5277:
      case -5276:
      case -5275:
      case -5274:
      case -5273:
      case -5272:
      case -5271:
      case -5270:
      case -5269:
      case -5268:
      case -5267:
      case -5266:
      case -5265:
      case -5264:
      case -5263:
      case -5262:
      case -5261:
      case -5260:
      case -5259:
      case -5258:
      case -5257:
      case -5256:
      case -5255:
      case -5254:
      case -5253:
      case -5252:
      case -5251:
      case -5250:
      case -5249:
      case -5248:
      case -5247:
      case -5246:
      case -5245:
      case -5244:
      case -5243:
      case -5242:
      case -5241:
      case -5240:
      case -5239:
      case -5238:
      case -5237:
      case -5236:
      case -5235:
      case -5234:
      case -5233:
      case -5232:
      case -5231:
      case -5230:
      case -5229:
      case -5228:
      case -5227:
      case -5226:
      case -5225:
      case -5224:
      case -5223:
      case -5222:
      case -5221:
      case -5220:
        break;
      case -5219:
        v2 = 207;
        goto LABEL_166;
      case -5218:
        v2 = 206;
        goto LABEL_166;
      case -5217:
        v2 = 205;
        goto LABEL_166;
      case -5216:
        v2 = 204;
        goto LABEL_166;
      case -5215:
        v2 = 203;
        goto LABEL_166;
      case -5214:
        v2 = 202;
        goto LABEL_166;
      case -5213:
        v2 = 201;
        goto LABEL_166;
      case -5212:
        v2 = 200;
        goto LABEL_166;
      case -5211:
        v2 = 199;
        goto LABEL_166;
      case -5210:
        v2 = 198;
        goto LABEL_166;
      case -5209:
        v2 = 197;
        goto LABEL_166;
      case -5208:
        v2 = 196;
        goto LABEL_166;
      case -5207:
        v2 = 195;
        goto LABEL_166;
      case -5206:
        v2 = 194;
        goto LABEL_166;
      case -5205:
        v2 = 193;
        goto LABEL_166;
      case -5204:
        goto LABEL_166;
      default:
        if (rawValue == -5501)
        {
          v2 = 210;
          goto LABEL_166;
        }

        if (rawValue == -5401)
        {
          v2 = 209;
          goto LABEL_166;
        }

        break;
    }
  }

LABEL_266:
  if (rawValue <= -10002)
  {
    switch(rawValue)
    {
      case -11107:
        v2 = 319;
        goto LABEL_166;
      case -11106:
        v2 = 318;
        goto LABEL_166;
      case -11105:
        v2 = 317;
        goto LABEL_166;
      case -11104:
        v2 = 316;
        goto LABEL_166;
      case -11103:
        v2 = 315;
        goto LABEL_166;
      case -11102:
        v2 = 314;
        goto LABEL_166;
      case -11101:
        v2 = 313;
        goto LABEL_166;
      case -11100:
      case -11099:
      case -11098:
      case -11097:
      case -11096:
      case -11095:
      case -11094:
      case -11093:
      case -11092:
      case -11091:
      case -11090:
      case -11089:
      case -11088:
      case -11087:
      case -11086:
      case -11085:
      case -11084:
      case -11083:
      case -11082:
      case -11081:
      case -11080:
      case -11079:
      case -11078:
      case -11077:
      case -11076:
      case -11075:
      case -11074:
      case -11073:
      case -11072:
      case -11071:
      case -11070:
      case -11069:
      case -11068:
      case -11067:
      case -11066:
      case -11065:
      case -11064:
      case -11063:
      case -11062:
      case -11061:
      case -11060:
      case -11059:
      case -11058:
      case -11057:
      case -11056:
      case -11055:
      case -11054:
      case -11053:
      case -11052:
      case -11051:
      case -11050:
      case -11049:
      case -11048:
      case -11047:
      case -11046:
      case -11045:
      case -11044:
      case -11043:
      case -11042:
      case -11041:
      case -11040:
      case -11039:
      case -11038:
      case -11037:
      case -11036:
        goto LABEL_341;
      case -11035:
        v2 = 312;
        goto LABEL_166;
      case -11034:
        v2 = 311;
        goto LABEL_166;
      case -11033:
        v2 = 310;
        goto LABEL_166;
      case -11032:
        v2 = 309;
        goto LABEL_166;
      case -11031:
        v2 = 308;
        goto LABEL_166;
      case -11030:
        v2 = 307;
        goto LABEL_166;
      case -11029:
        v2 = 306;
        goto LABEL_166;
      case -11028:
        v2 = 305;
        goto LABEL_166;
      case -11027:
        v2 = 304;
        goto LABEL_166;
      case -11026:
        v2 = 303;
        goto LABEL_166;
      case -11025:
        v2 = 302;
        goto LABEL_166;
      case -11024:
        v2 = 301;
        goto LABEL_166;
      case -11023:
        v2 = 300;
        goto LABEL_166;
      case -11022:
        v2 = 299;
        goto LABEL_166;
      case -11021:
        v2 = 298;
        goto LABEL_166;
      case -11020:
        v2 = 297;
        goto LABEL_166;
      case -11019:
        v2 = 296;
        goto LABEL_166;
      case -11018:
        v2 = 295;
        goto LABEL_166;
      case -11017:
        v2 = 294;
        goto LABEL_166;
      case -11016:
        v2 = 293;
        goto LABEL_166;
      case -11015:
        v2 = 292;
        goto LABEL_166;
      case -11014:
        v2 = 291;
        goto LABEL_166;
      case -11013:
        v2 = 290;
        goto LABEL_166;
      case -11012:
        v2 = 289;
        goto LABEL_166;
      case -11011:
        v2 = 288;
        goto LABEL_166;
      case -11010:
        v2 = 287;
        goto LABEL_166;
      case -11009:
        v2 = 286;
        goto LABEL_166;
      case -11008:
        v2 = 285;
        goto LABEL_166;
      case -11007:
        v2 = 284;
        goto LABEL_166;
      case -11006:
        v2 = 283;
        goto LABEL_166;
      case -11005:
        v2 = 282;
        goto LABEL_166;
      case -11004:
        v2 = 281;
        goto LABEL_166;
      case -11003:
        v2 = 280;
        goto LABEL_166;
      case -11002:
        v2 = 279;
        goto LABEL_166;
      case -11001:
        v2 = 278;
        goto LABEL_166;
      default:
        if (rawValue != -10002)
        {
          goto LABEL_341;
        }

        v2 = 277;
        break;
    }

    goto LABEL_166;
  }

  if (rawValue > -8305)
  {
    if (rawValue > -7017)
    {
      switch(rawValue)
      {
        case -7016:
          v2 = 258;
          break;
        case -7014:
          v2 = 256;
          break;
        case -7015:
          v2 = 257;
          break;
        default:
          goto LABEL_341;
      }
    }

    else
    {
      switch(rawValue)
      {
        case -8304:
          v2 = 261;
          break;
        case -8301:
          v2 = 260;
          break;
        case -8001:
          v2 = 259;
          break;
        default:
          goto LABEL_341;
      }
    }
  }

  else
  {
    switch(rawValue)
    {
      case -8504:
        v2 = 274;
        break;
      case -8503:
        v2 = 273;
        break;
      case -8502:
        v2 = 272;
        break;
      case -8501:
        v2 = 271;
        break;
      case -8500:
        v2 = 270;
        break;
      case -8499:
      case -8498:
      case -8497:
      case -8496:
      case -8495:
      case -8494:
      case -8493:
      case -8492:
      case -8491:
      case -8490:
      case -8489:
      case -8488:
      case -8487:
      case -8486:
      case -8485:
      case -8484:
      case -8483:
      case -8482:
      case -8481:
      case -8480:
      case -8479:
      case -8478:
      case -8477:
      case -8476:
      case -8475:
      case -8474:
      case -8473:
      case -8472:
      case -8471:
      case -8470:
      case -8469:
      case -8468:
      case -8467:
      case -8466:
      case -8465:
      case -8464:
      case -8463:
      case -8462:
      case -8461:
      case -8460:
      case -8459:
      case -8458:
      case -8457:
      case -8456:
      case -8455:
      case -8454:
      case -8453:
      case -8452:
      case -8451:
      case -8450:
      case -8449:
      case -8448:
      case -8447:
      case -8446:
      case -8445:
      case -8444:
      case -8443:
      case -8442:
      case -8441:
      case -8440:
      case -8439:
      case -8438:
      case -8437:
      case -8436:
      case -8435:
      case -8432:
      case -8431:
      case -8430:
      case -8427:
      case -8426:
      case -8425:
      case -8424:
      case -8423:
      case -8422:
      case -8421:
      case -8420:
      case -8419:
      case -8418:
      case -8417:
      case -8416:
      case -8415:
      case -8414:
      case -8413:
      case -8412:
      case -8411:
      case -8410:
      case -8409:
      case -8408:
      case -8407:
      case -8406:
      case -8405:
      case -8402:
        goto LABEL_341;
      case -8434:
        v2 = 269;
        break;
      case -8433:
        v2 = 268;
        break;
      case -8429:
        v2 = 267;
        break;
      case -8428:
        v2 = 266;
        break;
      case -8404:
        v2 = 265;
        break;
      case -8403:
        v2 = 264;
        break;
      case -8401:
        v2 = 263;
        break;
      case -8400:
        v2 = 262;
        break;
      default:
        if (rawValue != -10001)
        {
          if (rawValue == -10000)
          {
            v2 = 275;
            break;
          }

LABEL_341:
          switch(rawValue)
          {
            case -12052:
              v2 = 383;
              goto LABEL_166;
            case -12051:
            case -12006:
            case -12004:
              break;
            case -12050:
              v2 = 382;
              goto LABEL_166;
            case -12049:
              v2 = 381;
              goto LABEL_166;
            case -12048:
              v2 = 380;
              goto LABEL_166;
            case -12047:
              v2 = 379;
              goto LABEL_166;
            case -12046:
              v2 = 378;
              goto LABEL_166;
            case -12045:
              v2 = 377;
              goto LABEL_166;
            case -12044:
              v2 = 376;
              goto LABEL_166;
            case -12043:
              v2 = 375;
              goto LABEL_166;
            case -12042:
              v2 = 374;
              goto LABEL_166;
            case -12041:
              v2 = 373;
              goto LABEL_166;
            case -12040:
              v2 = 372;
              goto LABEL_166;
            case -12039:
              v2 = 371;
              goto LABEL_166;
            case -12038:
              v2 = 370;
              goto LABEL_166;
            case -12037:
              v2 = 369;
              goto LABEL_166;
            case -12036:
              v2 = 368;
              goto LABEL_166;
            case -12035:
              v2 = 367;
              goto LABEL_166;
            case -12034:
              v2 = 366;
              goto LABEL_166;
            case -12033:
              v2 = 365;
              goto LABEL_166;
            case -12032:
              v2 = 364;
              goto LABEL_166;
            case -12031:
              v2 = 363;
              goto LABEL_166;
            case -12030:
              v2 = 362;
              goto LABEL_166;
            case -12029:
              v2 = 361;
              goto LABEL_166;
            case -12028:
              v2 = 360;
              goto LABEL_166;
            case -12027:
              v2 = 359;
              goto LABEL_166;
            case -12026:
              v2 = 358;
              goto LABEL_166;
            case -12025:
              v2 = 357;
              goto LABEL_166;
            case -12024:
              v2 = 356;
              goto LABEL_166;
            case -12023:
              v2 = 355;
              goto LABEL_166;
            case -12022:
              v2 = 354;
              goto LABEL_166;
            case -12021:
              v2 = 353;
              goto LABEL_166;
            case -12020:
              v2 = 352;
              goto LABEL_166;
            case -12019:
              v2 = 351;
              goto LABEL_166;
            case -12018:
              v2 = 350;
              goto LABEL_166;
            case -12017:
              v2 = 349;
              goto LABEL_166;
            case -12016:
              v2 = 348;
              goto LABEL_166;
            case -12015:
              v2 = 347;
              goto LABEL_166;
            case -12014:
              v2 = 346;
              goto LABEL_166;
            case -12013:
              v2 = 345;
              goto LABEL_166;
            case -12012:
              v2 = 344;
              goto LABEL_166;
            case -12011:
              v2 = 343;
              goto LABEL_166;
            case -12010:
              v2 = 342;
              goto LABEL_166;
            case -12009:
              v2 = 341;
              goto LABEL_166;
            case -12008:
              v2 = 340;
              goto LABEL_166;
            case -12007:
              v2 = 339;
              goto LABEL_166;
            case -12005:
              v2 = 338;
              goto LABEL_166;
            case -12003:
              v2 = 337;
              goto LABEL_166;
            case -12002:
              v2 = 336;
              goto LABEL_166;
            case -12001:
              v2 = 335;
              goto LABEL_166;
            case -12000:
              v2 = 334;
              goto LABEL_166;
            default:
              v2 = 320;
              switch(rawValue)
              {
                case -11207:
                  v2 = 333;
                  goto LABEL_166;
                case -11202:
                  v2 = 332;
                  goto LABEL_166;
                case -11201:
                  v2 = 331;
                  goto LABEL_166;
                case -11158:
                  v2 = 330;
                  goto LABEL_166;
                case -11157:
                  v2 = 329;
                  goto LABEL_166;
                case -11156:
                  v2 = 328;
                  goto LABEL_166;
                case -11155:
                  v2 = 327;
                  goto LABEL_166;
                case -11154:
                  v2 = 326;
                  goto LABEL_166;
                case -11153:
                  v2 = 325;
                  goto LABEL_166;
                case -11152:
                  v2 = 324;
                  goto LABEL_166;
                case -11151:
                  v2 = 323;
                  goto LABEL_166;
                case -11150:
                  v2 = 322;
                  goto LABEL_166;
                case -11109:
                  v2 = 321;
                  goto LABEL_166;
                case -11108:
                  goto LABEL_166;
                default:
                  goto LABEL_464;
              }
          }

LABEL_464:
          v3 = 444;
          v2 = 384;
          switch(rawValue)
          {
            case -12119:
              *v1 = 447;
              return rawValue;
            case -12118:
              *v1 = 446;
              return rawValue;
            case -12117:
              *v1 = 445;
              return rawValue;
            case -12116:
              goto LABEL_167;
            case -12113:
              v2 = 443;
              goto LABEL_166;
            case -12112:
              v2 = 442;
              goto LABEL_166;
            case -12111:
              v2 = 441;
              goto LABEL_166;
            case -12110:
              v2 = 440;
              goto LABEL_166;
            case -12109:
              v2 = 439;
              goto LABEL_166;
            case -12108:
              v2 = 438;
              goto LABEL_166;
            case -12107:
              v2 = 437;
              goto LABEL_166;
            case -12106:
              v2 = 436;
              goto LABEL_166;
            case -12105:
              v2 = 435;
              goto LABEL_166;
            case -12104:
              v2 = 434;
              goto LABEL_166;
            case -12103:
              v2 = 433;
              goto LABEL_166;
            case -12102:
              v2 = 432;
              goto LABEL_166;
            case -12101:
              v2 = 431;
              goto LABEL_166;
            case -12100:
              v2 = 430;
              goto LABEL_166;
            case -12099:
              v2 = 429;
              goto LABEL_166;
            case -12098:
              v2 = 428;
              goto LABEL_166;
            case -12097:
              v2 = 427;
              goto LABEL_166;
            case -12096:
              v2 = 426;
              goto LABEL_166;
            case -12095:
              v2 = 425;
              goto LABEL_166;
            case -12094:
              v2 = 424;
              goto LABEL_166;
            case -12093:
              v2 = 423;
              goto LABEL_166;
            case -12092:
              v2 = 422;
              goto LABEL_166;
            case -12091:
              v2 = 421;
              goto LABEL_166;
            case -12090:
              v2 = 420;
              goto LABEL_166;
            case -12089:
              v2 = 419;
              goto LABEL_166;
            case -12088:
              v2 = 418;
              goto LABEL_166;
            case -12087:
              v2 = 417;
              goto LABEL_166;
            case -12086:
              v2 = 416;
              goto LABEL_166;
            case -12085:
              v2 = 415;
              goto LABEL_166;
            case -12084:
              v2 = 414;
              goto LABEL_166;
            case -12083:
              v2 = 413;
              goto LABEL_166;
            case -12082:
              v2 = 412;
              goto LABEL_166;
            case -12081:
              v2 = 411;
              goto LABEL_166;
            case -12080:
              v2 = 410;
              goto LABEL_166;
            case -12079:
              v2 = 409;
              goto LABEL_166;
            case -12078:
              v2 = 408;
              goto LABEL_166;
            case -12077:
              v2 = 407;
              goto LABEL_166;
            case -12076:
              v2 = 406;
              goto LABEL_166;
            case -12075:
              v2 = 405;
              goto LABEL_166;
            case -12074:
              v2 = 404;
              goto LABEL_166;
            case -12073:
              v2 = 403;
              goto LABEL_166;
            case -12072:
              v2 = 402;
              goto LABEL_166;
            case -12071:
              v2 = 401;
              goto LABEL_166;
            case -12070:
              v2 = 400;
              goto LABEL_166;
            case -12069:
              v2 = 399;
              goto LABEL_166;
            case -12068:
              v2 = 398;
              goto LABEL_166;
            case -12067:
              v2 = 397;
              goto LABEL_166;
            case -12066:
              v2 = 396;
              goto LABEL_166;
            case -12065:
              v2 = 395;
              goto LABEL_166;
            case -12064:
              v2 = 394;
              goto LABEL_166;
            case -12062:
              v2 = 393;
              goto LABEL_166;
            case -12061:
              v2 = 392;
              goto LABEL_166;
            case -12060:
              v2 = 391;
              goto LABEL_166;
            case -12059:
              v2 = 390;
              goto LABEL_166;
            case -12058:
              v2 = 389;
              goto LABEL_166;
            case -12057:
              v2 = 388;
              goto LABEL_166;
            case -12056:
              v2 = 387;
              goto LABEL_166;
            case -12055:
              v2 = 386;
              goto LABEL_166;
            case -12054:
              v2 = 385;
              goto LABEL_166;
            case -12053:
              goto LABEL_166;
            default:
              if (rawValue > -12125)
              {
                if (rawValue <= -12122)
                {
                  if (rawValue == -12124)
                  {
                    *v1 = 452;
                  }

                  else if (rawValue == -12123)
                  {
                    *v1 = 451;
                  }

                  else
                  {
                    *v1 = 450;
                  }

                  return rawValue;
                }

                if (rawValue > -12064)
                {
                  if (rawValue == -12063)
                  {
                    *v1 = 455;
                    return rawValue;
                  }

                  if (rawValue == -12051)
                  {
                    *v1 = 454;
                    return rawValue;
                  }
                }

                else
                {
                  if (rawValue == -12121)
                  {
                    *v1 = 449;
                    return rawValue;
                  }

                  if (rawValue == -12120)
                  {
                    *v1 = 448;
                    return rawValue;
                  }
                }
              }

              else if (rawValue <= -14001)
              {
                switch(rawValue)
                {
                  case -14003:
                    *v1 = 461;
                    return rawValue;
                  case -14002:
                    *v1 = 460;
                    return rawValue;
                  case -14001:
                    *v1 = 459;
                    return rawValue;
                }
              }

              else if (rawValue > -12201)
              {
                if (rawValue == -12200)
                {
                  *v1 = 456;
                  return rawValue;
                }

                if (rawValue == -12125)
                {
                  *v1 = 453;
                  return rawValue;
                }
              }

              else
              {
                if (rawValue == -14000)
                {
                  *v1 = 458;
                  return rawValue;
                }

                if (rawValue == -13000)
                {
                  *v1 = 457;
                  return rawValue;
                }
              }

              *v1 = 462;
              return rawValue;
          }
        }

        v2 = 276;
        break;
    }
  }

LABEL_166:
  v3 = v2;
LABEL_167:
  *v1 = v3;
  return rawValue;
}

uint64_t sub_1DAF4CC88()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A1320[v1]);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF4CD10()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A1320[v1]);
  return sub_1DB09E3E4();
}

CoreODIEssentials::DIPErrorPropertyKey_optional __swiftcall DIPErrorPropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E2B4();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t DIPErrorPropertyKey.rawValue.getter()
{
  result = 0x666B726F576F6E69;
  switch(*v0)
  {
    case 1:
      result = 0x69766F72506F6E69;
      break;
    case 2:
      result = 0x6C666B726F577073;
      break;
    case 3:
      result = 0x6469766F72507073;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x5255726576726573;
      break;
    case 7:
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 8:
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x4974736575716572;
      break;
    case 0xA:
      result = 0x61737265766E6F63;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x63655264756F6C63;
      break;
    case 0xF:
      result = 0x6552656369766564;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x6761735574726563;
      break;
    case 0x12:
      result = 0x6573616261746164;
      break;
    case 0x13:
      result = 0x74737973656C6966;
      break;
    case 0x14:
      result = 0x69796C7265646E75;
      break;
    case 0x15:
      result = 0x636E456567616D69;
      break;
    case 0x16:
      result = 1701273968;
      break;
    case 0x17:
      result = 0x636E75614C6F6E69;
      break;
    case 0x18:
      result = 0x746E756F43797274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAF4D1D8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = DIPErrorPropertyKey.rawValue.getter();
  v4 = v3;
  if (v2 == DIPErrorPropertyKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DB09E254();
  }

  return v7 & 1;
}

uint64_t sub_1DAF4D274()
{
  v1 = *v0;
  sub_1DB09E3A4();
  DIPErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF4D2DC()
{
  v2 = *v0;
  DIPErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DAF4D340()
{
  v1 = *v0;
  sub_1DB09E3A4();
  DIPErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAF4D3B0@<X0>(unint64_t *a1@<X8>)
{
  result = DIPErrorPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DAF4D3D8()
{
  v0 = objc_opt_self();
  v1 = sub_1DB09D6B4();
  v3[4] = sub_1DAF4D4B8;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1DAF4D5C4;
  v3[3] = &block_descriptor_0;
  v2 = _Block_copy(v3);
  [v0 setUserInfoValueProviderForDomain:v1 provider:v2];
  _Block_release(v2);
}

uint64_t sub_1DAF4D4B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *MEMORY[0x1E696A578];
  if (sub_1DB09D6C4() == a2 && v9 == a3)
  {

    goto LABEL_13;
  }

  v11 = sub_1DB09E254();

  if (v11)
  {
LABEL_13:
    result = sub_1DAF4DC78(a1);
    goto LABEL_14;
  }

  v12 = *MEMORY[0x1E696A278];
  if (sub_1DB09D6C4() == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = sub_1DB09E254();

    if ((v15 & 1) == 0)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  result = sub_1DAF4E33C(a1);
LABEL_14:
  *(a4 + 24) = MEMORY[0x1E69E6158];
  *a4 = result;
  *(a4 + 8) = v17;
  return result;
}

id sub_1DAF4D5C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DB09D6C4();

  v5 = a2;
  v4(v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7, v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1DB09E244();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_1DAF4D73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E370, &qword_1DB0A09B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAF4D7A4()
{
  result = qword_1EE300980;
  if (!qword_1EE300980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE300980);
  }

  return result;
}

unint64_t sub_1DAF4D7F4()
{
  result = qword_1ECC0E4B8;
  if (!qword_1ECC0E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E4B8);
  }

  return result;
}

unint64_t sub_1DAF4D84C()
{
  result = qword_1EE3027A0;
  if (!qword_1EE3027A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3027A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPErrorCode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE33)
  {
    goto LABEL_17;
  }

  if (a2 + 461 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 461 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 461;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 461;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 461;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1CE;
  v8 = v6 - 462;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DIPErrorCode(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 461 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 461 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE33)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE32)
  {
    v6 = ((a2 - 65075) >> 16) + 1;
    *result = a2 + 461;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 461;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPErrorPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}