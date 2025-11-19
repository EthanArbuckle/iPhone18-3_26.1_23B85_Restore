__n128 SFFluidCollectionView.DataSource.Transaction.itemDifference.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Transaction.sectionDifference.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_18BC1E3F8();
  sub_18BC1E3F8();

  return sub_18BC1E3F8();
}

__n128 SFFluidCollectionView.DataSource.Transaction.sectionDifference.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Transaction.collectionElementDifference.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_18BC1E3F8();
  sub_18BC1E3F8();

  return sub_18BC1E3F8();
}

__n128 SFFluidCollectionView.DataSource.Transaction.collectionElementDifference.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Transaction.reloadedItems.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Transaction.reloadedSections.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Transaction.initialSnapshot.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  return sub_18BC1E3F8();
}

__n128 SFFluidCollectionView.DataSource.Transaction.initialSnapshot.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u64[0];
  v7 = a1[2].n128_u64[1];

  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  result = a1[1];
  *(v1 + 104) = result;
  *(v1 + 120) = v5;
  *(v1 + 128) = v7;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Transaction.finalSnapshot.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  return sub_18BC1E3F8();
}

__n128 SFFluidCollectionView.DataSource.Transaction.finalSnapshot.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u64[0];
  v7 = a1[2].n128_u64[1];

  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  result = a1[1];
  *(v1 + 152) = result;
  *(v1 + 168) = v5;
  *(v1 + 176) = v7;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Transaction.description.getter()
{
  if (*(v0 + 184))
  {
    return 0x207974706D65207BLL;
  }

  type metadata accessor for SFFluidCollectionView.Element();
  swift_getWitnessTable();
  if ((sub_18BC21098() & 1) == 0)
  {
    sub_18BC21AD8();
    MEMORY[0x18CFFC150](0x69747265736E6920, 0xED0000203A736E6FLL);
    sub_18BC210E8();
    swift_getWitnessTable();
    sub_18BC21F98();
    MEMORY[0x18CFFC150](59, 0xE100000000000000);
    MEMORY[0x18CFFC150](0, 0xE000000000000000);
  }

  if ((sub_18BC21098() & 1) == 0)
  {
    MEMORY[0x18CFFC150](0x6C61766F6D657220, 0xEB00000000203A73);
    sub_18BC210E8();
    swift_getWitnessTable();
    sub_18BC21F98();
    MEMORY[0x18CFFC150](59, 0xE100000000000000);
    MEMORY[0x18CFFC150](0, 0xE000000000000000);
  }

  if ((sub_18BC21098() & 1) == 0)
  {
    MEMORY[0x18CFFC150](0x203A7365766F6D20, 0xE800000000000000);
    sub_18BC210E8();
    swift_getWitnessTable();
    sub_18BC21F98();
    MEMORY[0x18CFFC150](59, 0xE100000000000000);
    MEMORY[0x18CFFC150](0, 0xE000000000000000);
  }

  if ((sub_18BC21098() & 1) == 0)
  {
    MEMORY[0x18CFFC150](0x7364616F6C657220, 0xEA0000000000203ALL);
    sub_18BC210E8();
    swift_getWitnessTable();
    sub_18BC21F98();
    MEMORY[0x18CFFC150](0, 0xE000000000000000);
  }

  MEMORY[0x18CFFC150](32032, 0xE200000000000000);
  return 123;
}

void *sub_18BB29030()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7048);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;
        sub_18BC1E3F8();
        result = sub_18B9929A4(v22, v24);
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

char *sub_18BB291BC()
{
  v1 = v0;
  v2 = type metadata accessor for TabIconPool.Request(0);
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_18BC1EC08();
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72C0);
  v5 = *v0;
  v6 = sub_18BC21D68();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_18B8152B0(v26 + v28, v37, type metadata accessor for TabIconPool.Request);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_18B80D424(v29, *(v18 + 56) + v28, type metadata accessor for TabIconPool.Request);
        v15 = v41;
      }

      while (v41);
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

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

void *sub_18BB294F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70B0);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 24 * v17);
        *v23 = *v18;
        v23[1] = v20;
        v23[2] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        v24 = v19;
        result = sub_18BC1E3F8();
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

void *sub_18BB29670()
{
  v1 = v0;
  v30 = sub_18BC1EC08();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70A8);
  v3 = *v0;
  v4 = sub_18BC21D68();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = sub_18BC1E1A8())
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_18BB29968(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a4;
  v6 = v4;
  v7 = a1(0);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v37 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v4;
  v10 = sub_18BC21D68();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v6;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    for (i = (v17 + 63) >> 6; v19; result = sub_18BA93A88(&v44, v43))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = v21 | (v15 << 6);
      v25 = *(v41 + 72) * v24;
      v26 = v39;
      v27 = v40;
      sub_18B8152B0(*(v9 + 48) + v25, v39, v40);
      v24 *= 80;
      v28 = (*(v9 + 56) + v24);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[3];
      *(v47 + 9) = *(v28 + 57);
      v47[0] = v31;
      v44 = *v28;
      v45 = v30;
      v46 = v29;
      v32 = v42;
      sub_18B80D424(v26, *(v42 + 48) + v25, v27);
      v33 = (*(v32 + 56) + v24);
      v34 = v45;
      v35 = v46;
      v36 = v47[0];
      *(v33 + 57) = *(v47 + 9);
      v33[2] = v35;
      v33[3] = v36;
      v33[1] = v34;
      *v33 = v44;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= i)
      {

        v6 = v38;
        v11 = v42;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_18BB29C24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7298);
  v2 = *v0;
  v3 = sub_18BC21D68();
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

void *sub_18BB29D84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70D0);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        sub_18B7B193C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_18B7B1AD4(v25, (*(v4 + 56) + v22));
        result = sub_18BC1E3F8();
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

void *sub_18BB29F28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7220);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        sub_18BC1E3F8();
        result = sub_18BC1E1A8();
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

void *sub_18BB2A0AC(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_18BC1EC08();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_18BC21D68();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        result = sub_18BC1E3F8();
        v15 = v36;
      }

      while (v36);
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

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

char *sub_18BB2A324()
{
  v1 = v0;
  v33 = sub_18BC1EC08();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7208);
  v3 = *v0;
  v4 = sub_18BC21D68();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = sub_18BC1E1A8();
        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_18BB2A5E0()
{
  v1 = v0;
  v2 = _s4PageVMa_0();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71B0);
  v5 = *v0;
  v6 = sub_18BC21D68();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
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
        v21 = *(v27 + 72) * v20;
        sub_18B8152B0(*(v5 + 48) + v21, v4, _s4PageVMa_0);
        v20 <<= 6;
        sub_18B9D50A0(*(v5 + 56) + v20, v28);
        result = sub_18B80D424(v4, *(v7 + 48) + v21, _s4PageVMa_0);
        v22 = (*(v7 + 56) + v20);
        v24 = v28[2];
        v23 = v28[3];
        v25 = v28[1];
        *v22 = v28[0];
        v22[1] = v25;
        v22[2] = v24;
        v22[3] = v23;
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

        v1 = v26;
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

void *sub_18BB2A8A0(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v6 = v4;
  v7 = a1(0);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v4;
  v10 = sub_18BC21D68();
  v11 = v10;
  if (*(v9 + 16))
  {
    v32 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v37 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = *(v9 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    v33 = v9;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        v29 = v36;
        sub_18B8152B0(*(v9 + 48) + v28, v34, v36);
        v30 = *(*(v9 + 56) + 8 * v26);
        v31 = v37;
        result = sub_18B80D424(v27, *(v37 + 48) + v28, v29);
        *(*(v31 + 56) + 8 * v26) = v30;
        v9 = v33;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v6 = v32;
        v11 = v37;
        goto LABEL_21;
      }

      v25 = *(v13 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

id sub_18BB2AB28(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  v8 = a1(0);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v11 = *v4;
  v12 = sub_18BC21D68();
  v13 = v12;
  if (*(v11 + 16))
  {
    v30 = v7;
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, (v11 + 64), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = *(v11 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = *(v31 + 72) * v26;
        sub_18B8152B0(*(v11 + 48) + v27, v10, a4);
        v26 *= 16;
        v28 = *(v13 + 48);
        v32 = *(*(v11 + 56) + v26);
        sub_18B80D424(v10, v28 + v27, a4);
        v29 = v32;
        *(*(v13 + 56) + v26) = v32;
        result = v29;
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v30;
        goto LABEL_21;
      }

      v25 = *(v11 + 64 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_18BB2AD94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70E0);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        result = sub_18B7F44EC(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

void *sub_18BB2AF24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72A0);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        v18 = 40 * v17;
        sub_18B7F44EC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_18B7B193C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_18B7B1AD4(v22, (*(v4 + 56) + v17));
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

void *sub_18BB2B0C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7230);
  v4 = *v0;
  v5 = sub_18BC21D68();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_18B7CA054(*(v4 + 48) + v22, v28, &unk_1EA9D92F0);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v30;
        sub_18B7CF39C(v21, *(v30 + 48) + v22, &unk_1EA9D92F0);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
        result = sub_18BC1E1A8();
      }

      while (v15);
    }

    v18 = v10;
    v6 = v30;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_18BB2B320()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7010);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = (*(v4 + 48) + 32 * v17);
        v21 = v18[1];
        *v20 = *v18;
        v20[1] = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = sub_18BC1E3F8();
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

void *sub_18BB2B49C(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v29 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v6 = *v1;
  v7 = sub_18BC21D68();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v3;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v32 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v30;
        v24 = *(v31 + 72) * v22;
        sub_18B7CA054(*(v6 + 48) + v24, v30, &unk_1EA9D92F0);
        v25 = *(*(v6 + 56) + 8 * v22);
        v26 = v6;
        v27 = v32;
        sub_18B7CF39C(v23, *(v32 + 48) + v24, &unk_1EA9D92F0);
        v28 = *(v27 + 56);
        v6 = v26;
        *(v28 + 8 * v22) = v25;
        result = sub_18BC1E3F8();
      }

      while (v17);
    }

    v20 = v12;
    v8 = v32;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v3 = v29;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
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

LABEL_18:
    *v3 = v8;
  }

  return result;
}

void *sub_18BB2B6F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v30 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7020);
  v6 = *v0;
  v7 = sub_18BC21D68();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
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
    for (i = (v14 + 63) >> 6; v16; result = sub_18B7CF39C(v29, *(v28 + 56) + v24, &unk_1EA9D4F40))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = v18 | (v12 << 6);
      v22 = *(v33 + 72) * v21;
      v23 = v31;
      sub_18B7CA054(*(v6 + 48) + v22, v31, &unk_1EA9D92F0);
      v24 = *(v34 + 72) * v21;
      v25 = *(v6 + 56) + v24;
      v26 = v6;
      v27 = v32;
      sub_18B7CA054(v25, v32, &unk_1EA9D4F40);
      v28 = v35;
      sub_18B7CF39C(v23, *(v35 + 48) + v22, &unk_1EA9D92F0);
      v29 = v27;
      v6 = v26;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {

        v1 = v30;
        v8 = v35;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_18BB2BA04()
{
  v1 = v0;
  v2 = _s7SectionVMa_1();
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7030);
  v5 = *v0;
  v6 = sub_18BC21D68();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v1;
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
        v21 = *(v28 + 72) * v20;
        sub_18B8152B0(*(v5 + 48) + v21, v4, _s7SectionVMa_1);
        v20 *= 32;
        v22 = (*(v5 + 56) + v20);
        v23 = *(v7 + 48);
        v24 = *v22;
        v29 = v22[1];
        v30 = v24;
        result = sub_18B80D424(v4, v23 + v21, _s7SectionVMa_1);
        v25 = (*(v7 + 56) + v20);
        v26 = v29;
        *v25 = v30;
        v25[1] = v26;
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

        v1 = v27;
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

id sub_18BB2BC44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71F8);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = v19;
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

id sub_18BB2BDCC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18BC21D68();
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
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

id sub_18BB2BF18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7120);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_18B7CE7E4(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_18B7CDFCC(v19, *(v4 + 56) + 16 * v17);
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

void *sub_18BB2C1B0(uint64_t *a1)
{
  v3 = v1;
  v4 = _s4ItemVMa();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v6 = *v1;
  v7 = sub_18BC21D68();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v3;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v14;
    v15 = 1 << *(v6 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v6 + 64);
    v18 = (v15 + 63) >> 6;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v31;
        v24 = *(v32 + 72) * v22;
        sub_18B8152B0(*(v6 + 48) + v24, v31, _s4ItemVMa);
        v25 = *(*(v6 + 56) + 8 * v22);
        v26 = v6;
        v27 = v33;
        sub_18B80D424(v23, *(v33 + 48) + v24, _s4ItemVMa);
        v28 = *(v27 + 56);
        v6 = v26;
        *(v28 + 8 * v22) = v25;
        result = sub_18BC1E1A8();
        v17 = v34;
      }

      while (v34);
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

        v3 = v30;
        v8 = v33;
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v34 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v8;
  }

  return result;
}

char *sub_18BB2C47C(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a4;
  v6 = v4;
  v7 = a1(0);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v33 - v8;
  v9 = _s4ItemVMa();
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v11 = *v4;
  v12 = sub_18BC21D68();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v34 = v6;
    v35 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v41 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v36;
    if (v21)
    {
      do
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_14:
        v27 = v24 | (v17 << 6);
        v28 = *(v37 + 72) * v27;
        sub_18B8152B0(*(v11 + 48) + v28, v23, _s4ItemVMa);
        v29 = v38;
        v30 = *(v39 + 72) * v27;
        v31 = v40;
        sub_18B8152B0(*(v11 + 56) + v30, v38, v40);
        v32 = v41;
        sub_18B80D424(v23, *(v41 + 48) + v28, _s4ItemVMa);
        result = sub_18B80D424(v29, *(v32 + 56) + v30, v31);
        v21 = v42;
      }

      while (v42);
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v34;
        v13 = v41;
        goto LABEL_18;
      }

      v26 = *(v35 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v42 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

void *sub_18BB2C76C()
{
  v1 = v0;
  v2 = _s4ItemVMa();
  v25 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7118);
  v8 = *v0;
  v9 = sub_18BC21D68();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
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
        v23 = *(v25 + 72) * (v20 | (v14 << 6));
        sub_18B8152B0(*(v8 + 48) + v23, v7, _s4ItemVMa);
        sub_18B8152B0(*(v8 + 56) + v23, v5, _s4ItemVMa);
        sub_18B80D424(v7, *(v10 + 48) + v23, _s4ItemVMa);
        result = sub_18B80D424(v5, *(v10 + 56) + v23, _s4ItemVMa);
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

        v1 = v24;
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

id sub_18BB2C9F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7280);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

id sub_18BB2CB68(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18BC21D68();
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
        sub_18BC1E3F8();
        result = v21;
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

void *sub_18BB2CCEC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18BC21D68();
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
        sub_18BC1E3F8();
        result = sub_18BC1E1A8();
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

uint64_t sub_18BB2CE74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7048);
  v38 = a2;
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = v23[1];
      v39 = *v23;
      v25 = *(v5 + 56) + v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v38 & 1) == 0)
      {
        sub_18BC1E3F8();
        sub_18B9929A4(v26, v27);
      }

      sub_18BC22158();
      sub_18BC20C28();
      result = sub_18BC221A8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v39;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18BB2D144(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TabIconPool.Request(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1EC08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72C0);
  v43 = a2;
  result = sub_18BC21D78();
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
        sub_18B80D424(v27 + v28 * v24, v47, type metadata accessor for TabIconPool.Request);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_18B8152B0(v29 + v28 * v24, v47, type metadata accessor for TabIconPool.Request);
      }

      sub_18B80D494();
      result = sub_18BC20A68();
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
      result = sub_18B80D424(v47, *(v12 + 56) + v28 * v20, type metadata accessor for TabIconPool.Request);
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

uint64_t sub_18BB2D5C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70B0);
  v37 = a2;
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = *(v5 + 48) + 24 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v27 = v24;
        sub_18BC1E3F8();
      }

      sub_18BC22158();
      sub_18BC215D8();
      sub_18BC20C28();
      result = sub_18BC221A8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18BB2D890(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70A8);
  v39 = a2;
  result = sub_18BC21D78();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
    v45 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v25 = *(v9 + 48);
      v42 = *(v6 + 72);
      v43 = v21;
      v26 = v25 + v42 * v24;
      if (v39)
      {
        (*v40)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
      }

      else
      {
        (*v37)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
        sub_18BC1E1A8();
      }

      sub_18B80D494();
      result = sub_18BC20A68();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v44, v45);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
      v16 = v43;
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
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_18BB2DC44(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = _s4ItemVMa_4();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7078);
  v41 = a2;
  result = sub_18BC21D78();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
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
    v38 = v7;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 48);
      v42 = *(v39 + 72);
      if (v41)
      {
        sub_18B80D424(v23 + v42 * v22, v6, _s4ItemVMa_4);
        v24 = (*(v7 + 56) + 80 * v22);
        v48 = v24[1];
        v49 = v24[2];
        v50[0] = v24[3];
        *(v50 + 9) = *(v24 + 57);
        v47 = *v24;
      }

      else
      {
        sub_18B8152B0(v23 + v42 * v22, v6, _s4ItemVMa_4);
        v25 = (*(v7 + 56) + 80 * v22);
        v27 = v25[1];
        v26 = v25[2];
        v28 = *(v25 + 57);
        v46[0] = v25[3];
        *(v46 + 9) = v28;
        v43 = *v25;
        v44 = v27;
        v45 = v26;
        sub_18BA93A88(&v43, &v47);
        v49 = v45;
        v50[0] = v46[0];
        *(v50 + 9) = *(v46 + 9);
        v47 = v43;
        v48 = v44;
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v7 = v38;
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
      v7 = v38;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_18B80D424(v6, *(v9 + 48) + v42 * v17, _s4ItemVMa_4);
      v18 = (*(v9 + 56) + 80 * v17);
      *v18 = v47;
      *(v18 + 57) = *(v50 + 9);
      v18[3] = v50[0];
      v18[2] = v49;
      v18[1] = v48;
      ++*(v9 + 16);
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

uint64_t sub_18BB2E0FC(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = _s4ItemVMa();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7158);
  v41 = a2;
  result = sub_18BC21D78();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
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
    v38 = v7;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 48);
      v42 = *(v39 + 72);
      if (v41)
      {
        sub_18B80D424(v23 + v42 * v22, v6, _s4ItemVMa);
        v24 = (*(v7 + 56) + 80 * v22);
        v48 = v24[1];
        v49 = v24[2];
        v50[0] = v24[3];
        *(v50 + 9) = *(v24 + 57);
        v47 = *v24;
      }

      else
      {
        sub_18B8152B0(v23 + v42 * v22, v6, _s4ItemVMa);
        v25 = (*(v7 + 56) + 80 * v22);
        v27 = v25[1];
        v26 = v25[2];
        v28 = *(v25 + 57);
        v46[0] = v25[3];
        *(v46 + 9) = v28;
        v43 = *v25;
        v44 = v27;
        v45 = v26;
        sub_18BA93A88(&v43, &v47);
        v49 = v45;
        v50[0] = v46[0];
        *(v50 + 9) = *(v46 + 9);
        v47 = v43;
        v48 = v44;
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v7 = v38;
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
      v7 = v38;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_18B80D424(v6, *(v9 + 48) + v42 * v17, _s4ItemVMa);
      v18 = (*(v9 + 56) + 80 * v17);
      *v18 = v47;
      *(v18 + 57) = *(v50 + 9);
      v18[3] = v50[0];
      v18[2] = v49;
      v18[1] = v48;
      ++*(v9 + 16);
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

uint64_t sub_18BB2E5B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7298);
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_18BC22148();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_18BB2E818(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70D0);
  v33 = a2;
  result = sub_18BC21D78();
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
        sub_18B7B1AD4(v24, v34);
      }

      else
      {
        sub_18B7B193C(v24, v34);
        sub_18BC1E3F8();
      }

      sub_18BC22158();
      sub_18BC20C28();
      result = sub_18BC221A8();
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
      result = sub_18B7B1AD4(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_18BB2EB0C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s4ItemVMa_4();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7068);
  v39 = a2;
  result = sub_18BC21D78();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
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
      v41 = *(v37 + 72);
      v24 = v23 + v41 * v22;
      if (v39)
      {
        sub_18B80D424(v24, v7, _s4ItemVMa_4);
        v40 = *(*(v8 + 56) + 16 * v22);
      }

      else
      {
        sub_18B8152B0(v24, v7, _s4ItemVMa_4);
        v40 = *(*(v8 + 56) + 16 * v22);
        v25 = v40;
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v8 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v8 = v36;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_18B80D424(v7, *(v10 + 48) + v41 * v18, _s4ItemVMa_4);
      *(*(v10 + 56) + 16 * v18) = v40;
      ++*(v10 + 16);
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

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_18BB2EEF8(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v47 = a6;
  v8 = v6;
  v10 = a3(0);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v39 - v11;
  v12 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v44 = a2;
  result = sub_18BC21D78();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v6;
    v41 = v12;
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
    v21 = result + 64;
    v22 = v45;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v44)
      {
        sub_18B80D424(v29, v22, v47);
      }

      else
      {
        sub_18B8152B0(v29, v22, v47);
      }

      v30 = *(*(v12 + 56) + 8 * v27);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v22 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v22 = v45;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_18B80D424(v22, *(v14 + 48) + v46 * v23, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v12 = v41;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v8 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v12 + 32);
    v8 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_18BB2F2E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70E0);
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
      }

      else
      {
        sub_18B7F44EC(v23, &v36);
      }

      v26 = *(*(v5 + 56) + 8 * v22);
      result = sub_18BC21A38();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_18BB2F580(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7230);
  v36 = a2;
  result = sub_18BC21D78();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v35 + 72);
      v23 = *(v7 + 48) + v22 * v21;
      if (v36)
      {
        sub_18B7CF39C(v23, v37, &unk_1EA9D92F0);
        v24 = *(*(v7 + 56) + 8 * v21);
      }

      else
      {
        sub_18B7CA054(v23, v37, &unk_1EA9D92F0);
        v24 = *(*(v7 + 56) + 8 * v21);
        sub_18BC1E1A8();
      }

      sub_18BC22158();
      sub_18B83ADFC(v38);
      result = sub_18BC221A8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_18B7CF39C(v37, *(v9 + 48) + v22 * v17, &unk_1EA9D92F0);
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_18BB2F8EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7010);
  result = sub_18BC21D78();
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
      v21 = (*(v5 + 48) + 32 * v20);
      v35 = v21[1];
      v36 = *v21;
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        sub_18BC1E3F8();
      }

      sub_18BC22158();
      v23 = *&v35;
      if (*&v35 == 0.0)
      {
        v23 = 0.0;
      }

      MEMORY[0x18CFFD690](*&v23);
      v24 = *(&v35 + 1);
      if (*(&v35 + 1) == 0.0)
      {
        v24 = 0.0;
      }

      MEMORY[0x18CFFD690](*&v24);
      v25 = *&v36;
      if (*&v36 == 0.0)
      {
        v25 = 0.0;
      }

      MEMORY[0x18CFFD690](*&v25);
      v26 = *(&v36 + 1);
      if (*(&v36 + 1) == 0.0)
      {
        v26 = 0.0;
      }

      MEMORY[0x18CFFD690](*&v26);
      result = sub_18BC221A8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v36;
      v16[1] = v35;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_43;
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

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_41;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_41:
  *v3 = v7;
  return result;
}

uint64_t sub_18BB2FBE8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7020);
  v47 = a2;
  result = sub_18BC21D78();
  v12 = v10;
  v13 = result;
  if (*(v10 + 16))
  {
    v43 = v3;
    v44 = v10;
    v14 = 0;
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
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v45 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v47)
      {
        sub_18B7CF39C(v28, v9, &unk_1EA9D92F0);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_18B7CF39C(v29 + v31 * v26, v48, &unk_1EA9D4F40);
      }

      else
      {
        sub_18B7CA054(v28, v9, &unk_1EA9D92F0);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_18B7CA054(v32 + v31 * v26, v48, &unk_1EA9D4F40);
      }

      sub_18BC22158();
      v33 = v30;
      sub_18B83ADFC(v49);
      result = sub_18BC221A8();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_18B7CF39C(v33, *(v13 + 48) + v27 * v21, &unk_1EA9D92F0);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      result = sub_18B7CF39C(v48, v22, &unk_1EA9D4F40);
      ++*(v13 + 16);
      v12 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
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

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_18BB30030(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s7SectionVMa_1();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7030);
  v40 = a2;
  result = sub_18BC21D78();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
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
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v8 + 48);
      v43 = *(v38 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        sub_18B80D424(v26, v7, _s7SectionVMa_1);
      }

      else
      {
        sub_18B8152B0(v26, v7, _s7SectionVMa_1);
      }

      v27 = (*(v8 + 56) + 32 * v24);
      v28 = *v27;
      v41 = v27[1];
      v42 = v28;
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      sub_18BC22178();
      result = sub_18BC221A8();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_18B80D424(v7, *(v10 + 48) + v43 * v18, _s7SectionVMa_1);
      v19 = (*(v10 + 56) + 32 * v18);
      v20 = v41;
      *v19 = v42;
      v19[1] = v20;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_18BB303EC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = _s4ItemVMa_0();
  v40 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71C0);
  v41 = a2;
  result = sub_18BC21D78();
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
      v18 = __clz(__rbit64(v14));
      v19 = (v14 - 1) & v14;
LABEL_15:
      v22 = v18 | (v10 << 6);
      v23 = *(v7 + 48);
      v43 = *(v40 + 72);
      v44 = v19;
      v24 = v23 + v43 * v22;
      if (v41)
      {
        sub_18B80D424(v24, v6, _s4ItemVMa_0);
      }

      else
      {
        sub_18B8152B0(v24, v6, _s4ItemVMa_0);
      }

      v42 = *(*(v7 + 56) + 8 * v22);
      sub_18BC22158();
      sub_18BC22178();
      sub_18BC22178();
      v25 = v45;
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      v26 = *&v6[*(v25 + 28)];
      sub_18BC22178();
      if (v26)
      {
        v27 = v26;
        sub_18BC215D8();
      }

      v28 = v45;
      sub_18BC22178();
      sub_18BC22178();
      if (*&v6[*(v28 + 40) + 8])
      {
        sub_18BC22178();
        sub_18BC20C28();
      }

      else
      {
        sub_18BC22178();
      }

      v7 = v39;
      result = sub_18BC221A8();
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

LABEL_41:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_18B80D424(v6, *(v9 + 48) + v43 * v17, _s4ItemVMa_0);
      *(*(v9 + 56) + 8 * v17) = v42;
      ++*(v9 + 16);
      v14 = v44;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_39;
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

LABEL_39:
  *v3 = v9;
  return result;
}

uint64_t sub_18BB30830(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = v6;
  v11 = a3(0);
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v45 = a2;
  result = sub_18BC21D78();
  v16 = result;
  if (*(v14 + 16))
  {
    v41 = v6;
    v42 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    v43 = a6;
    v48 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v47 = *(v44 + 72);
      v30 = v29 + v47 * v28;
      if (v45)
      {
        sub_18B80D424(v30, v48, a6);
        v46 = *(*(v14 + 56) + 16 * v28);
      }

      else
      {
        sub_18B8152B0(v30, v48, a6);
        v46 = *(*(v14 + 56) + 16 * v28);
        v31 = v46;
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v32 = -1 << *(v16 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        a6 = v43;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      a6 = v43;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_18B80D424(v48, *(v16 + 48) + v47 * v24, a6);
      *(*(v16 + 56) + 16 * v24) = v46;
      ++*(v16 + 16);
      v14 = v42;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v9 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v9 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_18BB30BF4(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = v6;
  v11 = a3(0);
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v46 = a2;
  result = sub_18BC21D78();
  v16 = result;
  if (*(v14 + 16))
  {
    v42 = v6;
    v43 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    v44 = a6;
    v47 = v13;
    while (v21)
    {
      v25 = a6;
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v45 + 72);
      v31 = *(v14 + 48) + v30 * v29;
      if (v46)
      {
        sub_18B80D424(v31, v47, v25);
      }

      else
      {
        sub_18B8152B0(v31, v47, v25);
      }

      v32 = *(*(v14 + 56) + 8 * v29);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v33 = -1 << *(v16 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        a6 = v44;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v23 + 8 * v35);
          if (v39 != -1)
          {
            v24 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      a6 = v44;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_18B80D424(v47, *(v16 + 48) + v30 * v24, a6);
      *(*(v16 + 56) + 8 * v24) = v32;
      ++*(v16 + 16);
      v14 = v43;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v25 = a6;
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v14 + 32);
    v9 = v42;
    if (v40 >= 64)
    {
      bzero(v18, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v40;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_18BB30F80(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = _s4ItemVMa();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v39 = a2;
  result = sub_18BC21D78();
  v11 = result;
  if (*(v9 + 16))
  {
    v35 = v3;
    v36 = v9;
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
    v19 = v40;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v37 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v39)
      {
        sub_18B80D424(v26, v19, _s4ItemVMa);
        v41 = *(*(v9 + 56) + 8 * v24);
      }

      else
      {
        sub_18B8152B0(v26, v19, _s4ItemVMa);
        v41 = *(*(v9 + 56) + 8 * v24);
        sub_18BC1E1A8();
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v40;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v40;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_18B80D424(v19, *(v11 + 48) + v25 * v20, _s4ItemVMa);
      *(*(v11 + 56) + 8 * v20) = v41;
      ++*(v11 + 16);
      v9 = v36;
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

    if ((v39 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v5 = v11;
  return result;
}

uint64_t sub_18BB313AC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = v6;
  v11 = a3(0);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v44 - v12;
  v13 = _s4ItemVMa();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v50 = a2;
  result = sub_18BC21D78();
  v18 = result;
  if (*(v16 + 16))
  {
    v52 = v15;
    v44 = v6;
    v45 = v16;
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    v46 = a6;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v19 << 6);
      v31 = *(v16 + 48);
      v51 = *(v47 + 72);
      v32 = v31 + v51 * v30;
      if (v50)
      {
        sub_18B80D424(v32, v52, _s4ItemVMa);
        v33 = *(v16 + 56);
        v34 = *(v49 + 72);
        sub_18B80D424(v33 + v34 * v30, v53, a6);
      }

      else
      {
        sub_18B8152B0(v32, v52, _s4ItemVMa);
        v35 = *(v16 + 56);
        v34 = *(v49 + 72);
        sub_18B8152B0(v35 + v34 * v30, v53, a6);
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        a6 = v46;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      a6 = v46;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_18B80D424(v52, *(v18 + 48) + v51 * v26, _s4ItemVMa);
      result = sub_18B80D424(v53, *(v18 + 56) + v34 * v26, a6);
      ++*(v18 + 16);
      v16 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v16 + 32);
    v9 = v44;
    if (v43 >= 64)
    {
      bzero(v20, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t sub_18BB31804(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s4ItemVMa();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7118);
  v40 = a2;
  result = sub_18BC21D78();
  v12 = result;
  if (*(v10 + 16))
  {
    v36 = v2;
    v37 = v10;
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
    v19 = result + 64;
    v42 = v9;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = *(v10 + 48);
      v41 = *(v38 + 72);
      v26 = v41 * (v22 | (v13 << 6));
      if (v40)
      {
        sub_18B80D424(v25 + v26, v42, _s4ItemVMa);
        sub_18B80D424(*(v10 + 56) + v26, v43, _s4ItemVMa);
      }

      else
      {
        sub_18B8152B0(v25 + v26, v42, _s4ItemVMa);
        sub_18B8152B0(*(v10 + 56) + v26, v43, _s4ItemVMa);
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = v41 * v20;
      sub_18B80D424(v42, *(v12 + 48) + v41 * v20, _s4ItemVMa);
      result = sub_18B80D424(v43, *(v12 + 56) + v21, _s4ItemVMa);
      ++*(v12 + 16);
      v10 = v37;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_18BB31C04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7280);
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_18BC22148();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_18BB31E80(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_18BC21D78();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
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
      if ((v36 & 1) == 0)
      {
        sub_18BC1E3F8();
        v26 = v25;
      }

      sub_18BC22158();
      sub_18BC20C28();
      result = sub_18BC221A8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
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

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_18BB32130(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_18BC21D78();
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
        sub_18BC1E3F8();
        sub_18BC1E1A8();
      }

      sub_18BC22158();
      sub_18BC20C28();
      result = sub_18BC221A8();
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

unint64_t sub_18BB323D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_18BB32424(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18BC1EC08();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for TabIconPool.Request(0);
  result = sub_18B80D424(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for TabIconPool.Request);
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

unint64_t sub_18BB32514(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a5[7] + 8 * result) = a6;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

uint64_t sub_18BB32564(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_18BC1EC08();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_18BB3267C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_18B80D424(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  v14 = (a4[7] + 80 * a1);
  *(v14 + 57) = *(a3 + 57);
  v15 = a3[3];
  v14[2] = a3[2];
  v14[3] = v15;
  v16 = a3[1];
  *v14 = *a3;
  v14[1] = v16;
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_18BB32744(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

unint64_t sub_18BB327A0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_18BB327E4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_18B7B1AD4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_18BB328D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_18B80D424(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_18BB329AC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_18BB329F4(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v7 = (a3[6] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  *(a3[7] + 8 * result) = a2;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t sub_18BB32A40(unint64_t result, char a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_18BB32A94(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_18BB32B30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = _s4ItemVMa();
  result = sub_18B80D424(a2, v8 + *(*(v9 - 8) + 72) * a1, _s4ItemVMa);
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

uint64_t sub_18BB32C3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = _s4ItemVMa();
  sub_18B80D424(a2, v12 + *(*(v13 - 8) + 72) * a1, _s4ItemVMa);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_18B80D424(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_18BB32D2C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_18BB32D74()
{
  result = qword_1EA9D9680[0];
  if (!qword_1EA9D9680[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D9678);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D9680);
  }

  return result;
}

uint64_t sub_18BB32DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_18BC20E28())
  {
    sub_18BC21AB8();
    v15 = sub_18BC21AA8();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_18BC20E28();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_18BC20E08();
    sub_18BC20DC8();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_18BC21B08();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_18BC20A68();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_18BC20AE8();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_18BB331C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18BB33200()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18BB33254()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_18BB332CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_18BB33314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void SFPlaceholderView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride);
  v2 = *MEMORY[0x1E69DE788];
  *v1 = *MEMORY[0x1E69DE788];
  v1[1] = v2;
  sub_18BC21CF8();
  __break(1u);
}

char *SFPlaceholderView.init(matchingIntrinsicContentSizeOf:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride];
  v4 = *MEMORY[0x1E69DE788];
  *v3 = *MEMORY[0x1E69DE788];
  *(v3 + 1) = v4;
  [a1 frame];
  v12.receiver = v1;
  v12.super_class = SFPlaceholderView;
  v5 = objc_msgSendSuper2(&v12, sel_initWithFrame_);
  [a1 intrinsicContentSize];
  v7 = v6;
  v9 = v8;

  v10 = &v5[OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride];
  swift_beginAccess();
  *v10 = v7;
  *(v10 + 1) = v9;

  return v5;
}

double SFPlaceholderView.intrinsicContentSizeOverride.getter()
{
  v1 = v0 + OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride;
  swift_beginAccess();
  return *v1;
}

id SFPlaceholderView.intrinsicContentSizeOverride.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void __swiftcall SFPlaceholderView.init(frame:)(SFPlaceholderView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

uint64_t sub_18BB33854()
{
  v1 = *v0;
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      sub_18BB37FA0();
      return sub_18BC20968();
    }

    else
    {
      v15 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0);
      return sub_18BC20BF8();
    }
  }

  else
  {
    if (*(v0 + 32))
    {
      if (v1 >> 62)
      {
        v29 = *v0;
        v30 = sub_18BC219A8();
        v1 = v29;
        v3 = v30;
      }

      else
      {
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v3)
      {
        v4 = v1;
        v42 = MEMORY[0x1E69E7CC0];
        result = sub_18B7B7A54(0, v3 & ~(v3 >> 63), 0);
        if (v3 < 0)
        {
          __break(1u);
          return result;
        }

        v5 = v4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = 0;
          v31 = v3;
          do
          {
            v7 = MEMORY[0x18CFFD010](v6, v5);
            v33 = *(v7 + OBJC_IVAR___SFEditableProperty_value);
            v34 = *(v7 + OBJC_IVAR___SFEditableProperty_value + 8);
            v36 = *(v7 + OBJC_IVAR___SFEditableProperty_value + 16);
            v38 = *(v7 + OBJC_IVAR___SFEditableProperty_value + 24);
            v40 = *(v7 + OBJC_IVAR___SFEditableProperty_value + 32);
            v8 = sub_18B9882C8(v33, v34, v36, v38, v40);
            v9 = sub_18BB33854(v8);
            v11 = v10;
            swift_unknownObjectRelease();
            sub_18B9882E8(v33, v34, v36, v38, v40);
            v13 = *(v42 + 16);
            v12 = *(v42 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_18B7B7A54((v12 > 1), v13 + 1, 1);
            }

            ++v6;
            *(v42 + 16) = v13 + 1;
            v14 = v42 + 16 * v13;
            *(v14 + 32) = v9;
            *(v14 + 40) = v11;
            v5 = v4;
          }

          while (v31 != v6);
        }

        else
        {
          v16 = (v4 + 32);
          do
          {
            v32 = v3;
            v17 = *v16 + OBJC_IVAR___SFEditableProperty_value;
            v18 = *v17;
            v35 = *(v17 + 8);
            v37 = *(v17 + 16);
            v39 = *(v17 + 24);
            v41 = *(v17 + 32);
            v19 = sub_18B9882C8(*v17, v35, v37, v39, v41);
            v20 = sub_18BB33854(v19);
            v22 = v21;
            sub_18B9882E8(v18, v35, v37, v39, v41);
            v24 = *(v42 + 16);
            v23 = *(v42 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_18B7B7A54((v23 > 1), v24 + 1, 1);
            }

            *(v42 + 16) = v24 + 1;
            v25 = v42 + 16 * v24;
            *(v25 + 32) = v20;
            *(v25 + 40) = v22;
            ++v16;
            v3 = v32 - 1;
          }

          while (v32 != 1);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
      sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0);
      v26 = sub_18BC20AB8();
      v28 = v27;

      MEMORY[0x18CFFC150](v26, v28);

      MEMORY[0x18CFFC150](32032, 0xE200000000000000);
      return 8315;
    }

    if (v1)
    {
      return 1702195828;
    }

    else
    {
      return 0x65736C6166;
    }
  }
}

double sub_18BB33C40()
{
  v1 = sub_18BC20B98();
  v2 = [v0 objectForKeyedSubscript_];

  if (!v2)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v3 = *&v2[OBJC_IVAR___SFEditableProperty_value];
  v4 = *&v2[OBJC_IVAR___SFEditableProperty_value + 8];
  v5 = *&v2[OBJC_IVAR___SFEditableProperty_value + 16];
  v6 = *&v2[OBJC_IVAR___SFEditableProperty_value + 24];
  v7 = v2[OBJC_IVAR___SFEditableProperty_value + 32];
  sub_18B9882C8(v3, v4, v5, v6, v2[OBJC_IVAR___SFEditableProperty_value + 32]);

  if (v7 != 2)
  {
    v26 = v3;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    v30 = v7;
LABEL_15:
    sub_18B9882E8(v26, v27, v28, v29, v30);
    return *MEMORY[0x1E69DDCE0];
  }

  v8 = sub_18BC20B98();
  v9 = [v0 objectForKeyedSubscript_];

  if (!v9)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v10 = *&v9[OBJC_IVAR___SFEditableProperty_value];
  v11 = *&v9[OBJC_IVAR___SFEditableProperty_value + 8];
  v12 = *&v9[OBJC_IVAR___SFEditableProperty_value + 16];
  v13 = *&v9[OBJC_IVAR___SFEditableProperty_value + 24];
  v14 = v9[OBJC_IVAR___SFEditableProperty_value + 32];
  sub_18B9882C8(v10, v11, v12, v13, v9[OBJC_IVAR___SFEditableProperty_value + 32]);

  if (v14 != 2)
  {
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    goto LABEL_15;
  }

  v15 = sub_18BC20B98();
  v16 = [v0 objectForKeyedSubscript_];

  if (v16)
  {
    v17 = *&v16[OBJC_IVAR___SFEditableProperty_value];
    v18 = *&v16[OBJC_IVAR___SFEditableProperty_value + 8];
    v19 = *&v16[OBJC_IVAR___SFEditableProperty_value + 16];
    v20 = *&v16[OBJC_IVAR___SFEditableProperty_value + 24];
    v21 = v16[OBJC_IVAR___SFEditableProperty_value + 32];
    sub_18B9882C8(v17, v18, v19, v20, v16[OBJC_IVAR___SFEditableProperty_value + 32]);

    if (v21 != 2)
    {
      v26 = v17;
LABEL_14:
      v27 = v18;
      v28 = v19;
      v29 = v20;
      v30 = v21;
      goto LABEL_15;
    }

    v22 = sub_18BC20B98();
    v23 = [v0 objectForKeyedSubscript_];

    if (v23)
    {
      v24 = *&v23[OBJC_IVAR___SFEditableProperty_value];
      v18 = *&v23[OBJC_IVAR___SFEditableProperty_value + 8];
      v19 = *&v23[OBJC_IVAR___SFEditableProperty_value + 16];
      v20 = *&v23[OBJC_IVAR___SFEditableProperty_value + 24];
      v21 = v23[OBJC_IVAR___SFEditableProperty_value + 32];
      sub_18B9882C8(v24, v18, v19, v20, v23[OBJC_IVAR___SFEditableProperty_value + 32]);

      if (v21 == 2)
      {
        return *&v3;
      }

      v26 = v24;
      goto LABEL_14;
    }
  }

  return *MEMORY[0x1E69DDCE0];
}

void *sub_18BB34328(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SFEditableProperty_value);
  if (*(v2 + OBJC_IVAR___SFEditableProperty_value + 32) != 1)
  {
    return 0;
  }

  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *v3 & 0xFFFFFFFFFFFFFF8;
  if (*v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18BC219A8())
  {
    sub_18BC1E3F8();
    if (!i)
    {
      break;
    }

    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = i;
    v12 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x18CFFD010](v12, v6);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_25;
        }

        v13 = *(v6 + 8 * v12 + 32);
      }

      v14 = v13;
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = v10;
      v8 = [v13 name];
      v16 = sub_18BC20BD8();
      v18 = v17;

      if (v16 == a1 && v18 == a2)
      {

        goto LABEL_21;
      }

      v7 = sub_18BC21FD8();

      if (v7)
      {
        goto LABEL_21;
      }

      ++v12;
      v10 = v15;
      if (v9 == v24)
      {
        v14 = 0;
LABEL_21:
        v8 = v22;
        v7 = v23;
        v9 = v21;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v14 = 0;
LABEL_22:
  sub_18B9882E8(v6, v7, v8, v9, 1);
  return v14;
}

uint64_t SFEditableProperty.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_18B998960(a1, &v28);
  if (v31)
  {
    if (swift_dynamicCast())
    {
      v3 = v23;
      v4 = [v23 name];
      v5 = sub_18BC20BD8();
      v7 = v6;

      v8 = [v1 name];
      v9 = sub_18BC20BD8();
      v11 = v10;

      if (v5 == v9 && v7 == v11)
      {

LABEL_9:
        v14 = *(v23 + OBJC_IVAR___SFEditableProperty_value + 8);
        v15 = *(v23 + OBJC_IVAR___SFEditableProperty_value + 16);
        v16 = *(v23 + OBJC_IVAR___SFEditableProperty_value + 24);
        v17 = *(v23 + OBJC_IVAR___SFEditableProperty_value + 32);
        v28 = *(v23 + OBJC_IVAR___SFEditableProperty_value);
        v29 = v14;
        v30 = v15;
        v31 = v16;
        v32 = v17;
        v18 = *&v1[OBJC_IVAR___SFEditableProperty_value + 8];
        v19 = *&v1[OBJC_IVAR___SFEditableProperty_value + 16];
        v20 = *&v1[OBJC_IVAR___SFEditableProperty_value + 24];
        v21 = v1[OBJC_IVAR___SFEditableProperty_value + 32];
        v23 = *&v1[OBJC_IVAR___SFEditableProperty_value];
        v24 = v18;
        v25 = v19;
        v26 = v20;
        v27 = v21;
        sub_18B9882C8(v28, v14, v15, v16, v17);
        sub_18B9882C8(v23, v18, v19, v20, v21);
        v12 = _sSo18SFEditablePropertyC12MobileSafariE5ValueO2eeoiySbAE_AEtFZ_0(&v28, &v23);

        sub_18B9882E8(v23, v24, v25, v26, v27);
        sub_18B9882E8(v28, v29, v30, v31, v32);
        return v12 & 1;
      }

      v13 = sub_18BC21FD8();

      if (v13)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_18B7E0F80(&v28);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t SFEditableProperty.hash.getter()
{
  v1 = [v0 name];
  v2 = sub_18BC20BD8();
  v4 = v3;

  v5 = MEMORY[0x18CFFC190](v2, v4);

  v7 = *&v0[OBJC_IVAR___SFEditableProperty_value + 8];
  v8 = *&v0[OBJC_IVAR___SFEditableProperty_value + 16];
  v9 = *&v0[OBJC_IVAR___SFEditableProperty_value + 24];
  v10 = v0[OBJC_IVAR___SFEditableProperty_value + 32];
  v14 = *&v0[OBJC_IVAR___SFEditableProperty_value];
  v6 = v14;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  sub_18BC22158();
  sub_18B9882C8(v14, v7, v8, v9, v10);
  SFEditableProperty.Value.hash(into:)(&v13);
  v11 = sub_18BC221A8();
  sub_18B9882E8(v6, v7, v8, v9, v10);
  return v11 ^ v5;
}

uint64_t SFEditableProperty.Value.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_18BC22158();
  SFEditableProperty.Value.hash(into:)(v4);
  return sub_18BC221A8();
}

id SFEditableProperty.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_18BB34AB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18BC21FD8();
  }

  return v8 & 1;
}

uint64_t sub_18BB34B4C()
{
  sub_18BC22158();
  sub_18BC20C28();

  return sub_18BC221A8();
}

uint64_t sub_18BB34BC4()
{
  sub_18BC20C28();
}

uint64_t sub_18BB34C28()
{
  sub_18BC22158();
  sub_18BC20C28();

  return sub_18BC221A8();
}

uint64_t sub_18BB34C9C@<X0>(char *a1@<X8>)
{
  v2 = sub_18BC21E28();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_18BB34CFC(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_18BB34D30()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_18BB34D60@<X0>(char *a1@<X8>)
{
  v2 = sub_18BC21E28();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_18BB34DC4(uint64_t a1)
{
  v2 = sub_18BB371FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB34E00(uint64_t a1)
{
  v2 = sub_18BB371FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFEditableProperty.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BB371FC();
  sub_18BC221F8();
  v9 = [v3 name];
  sub_18BC20BD8();

  LOBYTE(v16) = 0;
  sub_18BC21EF8();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v11 = *&v3[OBJC_IVAR___SFEditableProperty_value + 8];
    v12 = *&v3[OBJC_IVAR___SFEditableProperty_value + 16];
    v13 = *&v3[OBJC_IVAR___SFEditableProperty_value + 24];
    v14 = v3[OBJC_IVAR___SFEditableProperty_value + 32];
    v16 = *&v3[OBJC_IVAR___SFEditableProperty_value];
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v15[7] = 1;
    sub_18B9882C8(v16, v11, v12, v13, v14);
    sub_18BB37250();
    sub_18BC21F28();
    sub_18B9882E8(v16, v17, v18, v19, v20);
    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_18BB3505C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_18BB36FB8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18BB350AC(uint64_t a1)
{
  v2 = sub_18BB37408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB350E8(uint64_t a1)
{
  v2 = sub_18BB37408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18BB35124()
{
  v1 = 1819242338;
  v2 = 0x74616F6C66;
  if (*v0 != 2)
  {
    v2 = 0x6567616D69;
  }

  if (*v0)
  {
    v1 = 0x646E756F706D6F63;
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

uint64_t sub_18BB35190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18BB37D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18BB351C4(uint64_t a1)
{
  v2 = sub_18BB372A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB35200(uint64_t a1)
{
  v2 = sub_18BB372A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18BB3523C(uint64_t a1)
{
  v2 = sub_18BB373A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB35278(uint64_t a1)
{
  v2 = sub_18BB373A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18BB352B4()
{
  v1 = 0x65676E6172;
  if (*v0 != 1)
  {
    v1 = 1885697139;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_18BB352F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18BB37E94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18BB35320(uint64_t a1)
{
  v2 = sub_18BB3734C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB3535C(uint64_t a1)
{
  v2 = sub_18BB3734C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18BB35398(uint64_t a1)
{
  v2 = sub_18BB372F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB353D4(uint64_t a1)
{
  v2 = sub_18BB372F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFEditableProperty.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9858);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9860);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9868);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9870);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9878);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v40 = *v1;
  v17 = v1[1];
  v18 = v1[2];
  v19 = v1[3];
  v20 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BB372A4();
  sub_18BC221F8();
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      LOBYTE(v44) = 2;
      sub_18BB3734C();
      v23 = v37;
      v24 = v42;
      v25 = v16;
      sub_18BC21EC8();
      v44 = v40;
      v46 = 0;
      sub_18B992D74();
      v26 = v39;
      v27 = v41;
      sub_18BC21F28();
      if (v27)
      {
        (*(v38 + 8))(v23, v26);
        return (*(v43 + 8))(v16, v24);
      }

      v44 = v17;
      v45 = v18;
      v46 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4268);
      sub_18BB3745C(&qword_1EA9D42A0, sub_18B992D74);
      sub_18BC21F28();
      v44 = v19;
      v46 = 2;
      sub_18BC21F28();
      v30 = v38;
    }

    else
    {
      LOBYTE(v44) = 3;
      sub_18BB372F8();
      v23 = v34;
      v24 = v42;
      v25 = v16;
      sub_18BC21EC8();
      v44 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3EB0);
      sub_18B7B0B08(&qword_1EA9D3F08, &qword_1EA9D3EB0);
      v26 = v36;
      sub_18BC21F28();
      v30 = v35;
    }

    v28 = *(v30 + 8);
    v29 = v23;
  }

  else
  {
    if (!v20)
    {
      LOBYTE(v44) = 0;
      sub_18BB37408();
      v21 = v42;
      sub_18BC21EC8();
      sub_18BC21F08();
      (*(v31 + 8))(v12, v10);
      return (*(v43 + 8))(v16, v21);
    }

    LOBYTE(v44) = 1;
    sub_18BB373A0();
    v24 = v42;
    v25 = v16;
    sub_18BC21EC8();
    v44 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A50);
    sub_18BB374D4(&qword_1EA9D98A0, &qword_1EA9D3A30);
    v26 = v33;
    sub_18BC21F28();
    v28 = *(v32 + 8);
    v29 = v9;
  }

  v28(v29, v26);
  return (*(v43 + 8))(v25, v24);
}

void SFEditableProperty.Value.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 32) > 1u)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    if (*(v2 + 32) == 2)
    {
      MEMORY[0x18CFFD660](2);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x18CFFD690](v8);
      if (*&v5 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = *&v5;
      }

      MEMORY[0x18CFFD690](*&v9);
      if (*&v6 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = *&v6;
      }

      MEMORY[0x18CFFD690](*&v10);
      if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x18CFFD690](v11);
    }

    else
    {
      MEMORY[0x18CFFD660](3);
      if (!v4)
      {
        goto LABEL_25;
      }

      sub_18BC22178();
      v12 = v4;
      sub_18BC215D8();

      sub_18B9882E8(v4, v5, v6, v7, 3);
    }
  }

  else
  {
    if (!*(v2 + 32))
    {
      MEMORY[0x18CFFD660](0);
LABEL_25:
      sub_18BC22178();
      return;
    }

    MEMORY[0x18CFFD660](1);

    sub_18BB367BC(a1, v4);
  }
}

uint64_t SFEditableProperty.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D98B0);
  v4 = *(v3 - 8);
  v54 = v3;
  *&v55 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v47 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D98B8);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D98C0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D98C8);
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D98D0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v17 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  sub_18BB372A4();
  v18 = v61;
  sub_18BC221D8();
  if (!v18)
  {
    v48 = v10;
    v20 = v58;
    v19 = v59;
    v49 = 0;
    v50 = v16;
    v61 = v14;
    v21 = sub_18BC21EB8();
    v22 = *(v21 + 16);
    if (!v22 || ((LODWORD(v23) = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_18BC21B48();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FE8);
      *v27 = &type metadata for SFEditableProperty.Value;
      v28 = v50;
      sub_18BC21E48();
      sub_18BC21B38();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v61 + 8))(v28, v13);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v62);
    }

    if (*(v21 + 32) > 1u)
    {
      v53 = v21;
      v31 = v57;
      if (v23 == 2)
      {
        LOBYTE(v65) = 2;
        sub_18BB3734C();
        v32 = v20;
        v33 = v49;
        v34 = v50;
        sub_18BC21E38();
        v35 = v61;
        if (v33)
        {
          (*(v61 + 8))(v34, v13);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1Tm(v62);
        }

        LODWORD(v52) = 2;
        LOBYTE(v65) = 0;
        sub_18B992B4C();
        sub_18BC21EA8();
        v59 = v13;
        v44 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4268);
        LOBYTE(v64) = 1;
        sub_18BB3745C(&qword_1EA9D4270, sub_18B992B4C);
        v23 = v60;
        sub_18BC21EA8();
        v55 = v65;
        v63 = 2;
        sub_18BC21EA8();
        (*(v56 + 8))(v32, v23);
        (*(v35 + 8))(v34, v59);
        swift_unknownObjectRelease();
        v43 = v64;
        LOBYTE(v23) = v52;
        v45 = v55;
        goto LABEL_27;
      }

      LOBYTE(v65) = 3;
      sub_18BB372F8();
      v38 = v49;
      v39 = v50;
      sub_18BC21E38();
      v40 = v61;
      if (v38)
      {
        (*(v61 + 8))(v39, v13);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1Tm(v62);
      }

      LODWORD(v52) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3EB0);
      sub_18B7B0B08(&qword_1EA9D3EB8, &qword_1EA9D3EB0);
      v23 = v54;
      sub_18BC21EA8();
      (*(v55 + 8))(v19, v23);
      (*(v40 + 8))(v39, v13);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = v65;
      v45 = 0uLL;
      LOBYTE(v23) = v52;
    }

    else
    {
      if (!*(v21 + 32))
      {
        LODWORD(v52) = 0;
        LOBYTE(v65) = 0;
        sub_18BB37408();
        v30 = v49;
        v23 = v50;
        sub_18BC21E38();
        if (v30)
        {
          (*(v61 + 8))(v23, v13);
          goto LABEL_9;
        }

        v41 = v48;
        v42 = sub_18BC21E88();
        (*(v51 + 8))(v12, v41);
        (*(v61 + 8))(v23, v13);
        swift_unknownObjectRelease();
        v43 = 0;
        v44 = v42 & 1;
        v45 = 0uLL;
        v31 = v57;
        LOBYTE(v23) = v52;
LABEL_27:
        *v31 = v44;
        *(v31 + 8) = v45;
        *(v31 + 24) = v43;
        *(v31 + 32) = v23;
        return __swift_destroy_boxed_opaque_existential_1Tm(v62);
      }

      LOBYTE(v65) = 1;
      sub_18BB373A0();
      v36 = v49;
      v37 = v50;
      sub_18BC21E38();
      if (v36)
      {
        (*(v61 + 8))(v37, v13);
        goto LABEL_9;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A50);
      sub_18BB374D4(&qword_1EA9D98D8, &qword_1EA9D39E8);
      v46 = v53;
      sub_18BC21EA8();
      (*(v52 + 8))(v9, v46);
      (*(v61 + 8))(v37, v13);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = v65;
      v45 = 0uLL;
    }

    v31 = v57;
    goto LABEL_27;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v62);
}

uint64_t sub_18BB36678()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BB366AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BB366E0()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_18BC22158();
  SFEditableProperty.Value.hash(into:)(v4);
  return sub_18BC221A8();
}

uint64_t sub_18BB36738()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_18BC22158();
  SFEditableProperty.Value.hash(into:)(v4);
  return sub_18BC221A8();
}

void sub_18BB367BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_18BC219A8();
    MEMORY[0x18CFFD660](v8);
    v3 = sub_18BC219A8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x18CFFD660](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x18CFFD010](i, a2);
      sub_18BC215D8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_18BC215D8();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_18BB368AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18CFFD660](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      v9 = *(v5 - 32);
      v8 = *(v5 - 24);
      if (*(v5 - 16) == 1)
      {
        if (v9 | v8)
        {
          v10 = 2;
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x18CFFD660](v10);
      }

      else
      {
        MEMORY[0x18CFFD660](1);
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v6 = v9;
        }

        else
        {
          v6 = 0;
        }

        MEMORY[0x18CFFD690](v6);
        if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = v8;
        }

        else
        {
          v7 = 0;
        }

        MEMORY[0x18CFFD690](v7);
      }

      sub_18BC1E3F8();
      sub_18BC20C28();

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _sSo18SFEditablePropertyC12MobileSafariE5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v11 != 2)
      {
        goto LABEL_25;
      }

      sub_18B9882E8(*a1, v2, v5, v4, 2);
      sub_18B9882E8(v8, v7, v10, v9, 2);
      if (v3 == *&v8 && *&v2 == *&v7 && *&v5 == *&v10)
      {
        v12 = *&v4 == *&v9;
        return v12 & 1;
      }

LABEL_27:
      v12 = 0;
      return v12 & 1;
    }

    if (v11 != 3)
    {
      v18 = *&v3;
      goto LABEL_25;
    }

    if (v3 == 0.0)
    {
      if (*&v8 == 0.0)
      {
        sub_18B9882C8(0, *(a2 + 8), v10, v9, 3);
        sub_18B9882E8(0, v2, v5, v4, 3);
        sub_18B9882E8(0, v7, v10, v9, 3);
        v12 = 1;
        return v12 & 1;
      }

      v24 = v8;
      v3 = 0.0;
    }

    else
    {
      if (*&v8 != 0.0)
      {
        sub_18B7B0AC0(0, &qword_1ED6514F0);
        sub_18B9882C8(v8, v7, v10, v9, 3);
        sub_18B9882C8(*&v3, v2, v5, v4, 3);
        sub_18B9882C8(v8, v7, v10, v9, 3);
        sub_18B9882C8(*&v3, v2, v5, v4, 3);
        v17 = sub_18BC215C8();
        sub_18B9882E8(*&v3, v2, v5, v4, 3);
        sub_18B9882E8(v8, v7, v10, v9, 3);
        sub_18B9882E8(v8, v7, v10, v9, 3);
        sub_18B9882E8(*&v3, v2, v5, v4, 3);
        if (v17)
        {
          v12 = 1;
          return v12 & 1;
        }

        goto LABEL_27;
      }

      sub_18B9882C8(0, *(a2 + 8), v10, v9, 3);
      sub_18B9882C8(0, v7, v10, v9, 3);
      sub_18B9882C8(*&v3, v2, v5, v4, 3);
    }

    sub_18B9882E8(*&v3, v2, v5, v4, 3);
    v19 = v8;
    v20 = v7;
    v21 = v10;
    v22 = v9;
    v23 = 3;
    goto LABEL_26;
  }

  if (*(a1 + 32))
  {
    if (v11 == 1)
    {
      sub_18B9882C8(*a2, *(a2 + 8), v10, v9, 1);
      sub_18B9882C8(*&v3, v2, v5, v4, 1);
      v15 = sub_18B98D6A8(*&v3, v8);
      sub_18B9882E8(*&v3, v2, v5, v4, 1);
      sub_18B9882E8(v8, v7, v10, v9, 1);
      return v15 & 1;
    }

    sub_18BC1E3F8();
    goto LABEL_25;
  }

  if (*(a2 + 32))
  {
LABEL_25:
    sub_18B9882C8(v8, v7, v10, v9, v11);
    sub_18B9882E8(*&v3, v2, v5, v4, v6);
    v19 = v8;
    v20 = v7;
    v21 = v10;
    v22 = v9;
    v23 = v11;
LABEL_26:
    sub_18B9882E8(v19, v20, v21, v22, v23);
    goto LABEL_27;
  }

  sub_18B9882E8(*a1, v2, v5, v4, 0);
  sub_18B9882E8(v8, v7, v10, v9, 0);
  v12 = v8 ^ LOBYTE(v3) ^ 1;
  return v12 & 1;
}

id sub_18BB36D70(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v25 = objc_opt_self();
  v26 = sub_18BC20B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18BC42C20;
  v28 = sub_18BC20B98();
  v29 = [v25 floatValue:v28 named:a1 min:a5 max:a9 roundedTo:a13];

  *(v27 + 32) = v29;
  v30 = sub_18BC20B98();
  v31 = [v25 floatValue:v30 named:a2 min:a6 max:a10 roundedTo:a13];

  *(v27 + 40) = v31;
  v32 = sub_18BC20B98();
  v33 = [v25 floatValue:v32 named:a3 min:a7 max:a11 roundedTo:a13];

  *(v27 + 48) = v33;
  v34 = sub_18BC20B98();
  v35 = [v25 floatValue:v34 named:a4 min:a8 max:a12 roundedTo:a13];

  *(v27 + 56) = v35;
  type metadata accessor for SFEditableProperty(v36);
  v37 = sub_18BC20D88();

  v38 = [v25 compoundValueNamed:v26 components:v37];

  return v38;
}

void *sub_18BB36FB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9990);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BB371FC();
  sub_18BC221D8();
  if (!v1)
  {
    LOBYTE(v21) = 0;
    v8 = sub_18BC21E78();
    v10 = v9;
    v11 = v8;
    v24 = 1;
    sub_18BB37FF4();
    sub_18BC21EA8();
    v13 = v23;
    v18 = v22;
    v19 = v21;
    v14 = objc_allocWithZone(SFEditableProperty);
    v15 = &v14[OBJC_IVAR___SFEditableProperty_name];
    *v15 = v11;
    *(v15 + 1) = v10;
    v16 = &v14[OBJC_IVAR___SFEditableProperty_value];
    v17 = v18;
    *v16 = v19;
    *(v16 + 1) = v17;
    v16[32] = v13;
    v20.receiver = v14;
    v20.super_class = SFEditableProperty;
    v7 = objc_msgSendSuper2(&v20, sel_init);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_18BB371FC()
{
  result = qword_1EA9D9848;
  if (!qword_1EA9D9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9848);
  }

  return result;
}

unint64_t sub_18BB37250()
{
  result = qword_1EA9D9850;
  if (!qword_1EA9D9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9850);
  }

  return result;
}

unint64_t sub_18BB372A4()
{
  result = qword_1EA9D9880;
  if (!qword_1EA9D9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9880);
  }

  return result;
}

unint64_t sub_18BB372F8()
{
  result = qword_1EA9D9888;
  if (!qword_1EA9D9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9888);
  }

  return result;
}

unint64_t sub_18BB3734C()
{
  result = qword_1EA9D9890;
  if (!qword_1EA9D9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9890);
  }

  return result;
}

unint64_t sub_18BB373A0()
{
  result = qword_1EA9D9898;
  if (!qword_1EA9D9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9898);
  }

  return result;
}

unint64_t sub_18BB37408()
{
  result = qword_1EA9D98A8;
  if (!qword_1EA9D98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D98A8);
  }

  return result;
}

uint64_t sub_18BB3745C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D4268);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18BB374D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D3A50);
    sub_18BB3755C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18BB3755C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SFEditableProperty(0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18BB375A0()
{
  result = qword_1EA9D98E0;
  if (!qword_1EA9D98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D98E0);
  }

  return result;
}

uint64_t sub_18BB37600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18BB37648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_18BB3770C()
{
  result = qword_1EA9D98F8;
  if (!qword_1EA9D98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D98F8);
  }

  return result;
}

unint64_t sub_18BB37764()
{
  result = qword_1EA9D9900;
  if (!qword_1EA9D9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9900);
  }

  return result;
}

unint64_t sub_18BB377BC()
{
  result = qword_1EA9D9908;
  if (!qword_1EA9D9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9908);
  }

  return result;
}

unint64_t sub_18BB37814()
{
  result = qword_1EA9D9910;
  if (!qword_1EA9D9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9910);
  }

  return result;
}

unint64_t sub_18BB3786C()
{
  result = qword_1EA9D9918;
  if (!qword_1EA9D9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9918);
  }

  return result;
}

unint64_t sub_18BB378C4()
{
  result = qword_1EA9D9920;
  if (!qword_1EA9D9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9920);
  }

  return result;
}

unint64_t sub_18BB3791C()
{
  result = qword_1EA9D9928;
  if (!qword_1EA9D9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9928);
  }

  return result;
}

unint64_t sub_18BB37974()
{
  result = qword_1EA9D9930;
  if (!qword_1EA9D9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9930);
  }

  return result;
}

unint64_t sub_18BB379CC()
{
  result = qword_1EA9D9938;
  if (!qword_1EA9D9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9938);
  }

  return result;
}

unint64_t sub_18BB37A24()
{
  result = qword_1EA9D9940;
  if (!qword_1EA9D9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9940);
  }

  return result;
}

unint64_t sub_18BB37A7C()
{
  result = qword_1EA9D9948;
  if (!qword_1EA9D9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9948);
  }

  return result;
}

unint64_t sub_18BB37AD4()
{
  result = qword_1EA9D9950;
  if (!qword_1EA9D9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9950);
  }

  return result;
}

unint64_t sub_18BB37B2C()
{
  result = qword_1EA9D9958;
  if (!qword_1EA9D9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9958);
  }

  return result;
}

unint64_t sub_18BB37B84()
{
  result = qword_1EA9D9960;
  if (!qword_1EA9D9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9960);
  }

  return result;
}

unint64_t sub_18BB37BDC()
{
  result = qword_1EA9D9968;
  if (!qword_1EA9D9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9968);
  }

  return result;
}

unint64_t sub_18BB37C34()
{
  result = qword_1EA9D9970;
  if (!qword_1EA9D9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9970);
  }

  return result;
}

unint64_t sub_18BB37C8C()
{
  result = qword_1EA9D9978;
  if (!qword_1EA9D9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9978);
  }

  return result;
}

unint64_t sub_18BB37CE4()
{
  result = qword_1EA9D9980;
  if (!qword_1EA9D9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9980);
  }

  return result;
}

uint64_t sub_18BB37D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E756F706D6F63 && a2 == 0xE800000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_18BC21FD8();

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

uint64_t sub_18BB37E94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885697139 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_18BC21FD8();

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

unint64_t sub_18BB37FA0()
{
  result = qword_1EA9D9988;
  if (!qword_1EA9D9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9988);
  }

  return result;
}

unint64_t sub_18BB37FF4()
{
  result = qword_1EA9D9998;
  if (!qword_1EA9D9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9998);
  }

  return result;
}

uint64_t sub_18BB38060(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration;
  v5 = *(v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration);
  v6 = *(v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration + 8);
  v7 = *(v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration + 16);
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  if (v5 == (result & 1))
  {
    if (a3)
    {
      if (v7)
      {
        v8 = v6 == a2 && v7 == a3;
        if (v8 || (sub_18BC21FD8() & 1) != 0)
        {
          goto LABEL_3;
        }
      }
    }

    else if (!v7)
    {
      return result;
    }
  }

  sub_18BB38BA0();
LABEL_3:
}

void sub_18BB38100()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration);
  if (!v2 || (v3 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_beginAccess(), *(v2 + 24) = sub_18BB392F0, *(v2 + 32) = v3, , (v4 = *(v0 + v1)) == 0))
  {
    v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView);
    goto LABEL_6;
  }

  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView);
  if (!v5)
  {
LABEL_6:
    v9 = sub_18BC20B98();
    v7 = [objc_opt_self() systemImageNamed_];

    v8 = 0;
    goto LABEL_7;
  }

  v7 = v5;
  v8 = v7;
LABEL_7:
  [v6 setImage_];
}

void sub_18BB38244(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView);
    v5 = a1;
    if (!a1)
    {
      v6 = sub_18BC20B98();
      v5 = [objc_opt_self() systemImageNamed_];
    }

    v7 = a1;
    [v4 setImage_];
  }
}

id sub_18BB38348(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView) *a2];
    v7 = [v6 constraintEqualToConstant_];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_18BB38408(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageHeightConstraint] = 0;
  v10 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageWidthConstraint] = 0;
  v11 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v12 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_unreadIndicator;
  *&v4[v13] = [objc_allocWithZone(SFUnreadIndicator) init];
  v16.receiver = v4;
  v16.super_class = _s9TitleViewCMa();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BB386C4();

  return v14;
}

id sub_18BB38574(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageHeightConstraint] = 0;
  v4 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageWidthConstraint] = 0;
  v5 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v6 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_unreadIndicator;
  *&v1[v7] = [objc_allocWithZone(SFUnreadIndicator) init];
  v12.receiver = v1;
  v12.super_class = _s9TitleViewCMa();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_18BB386C4();
  }

  return v9;
}

id sub_18BB386C4()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView];
  [v1 setContentMode_];
  [v1 setTintAdjustmentMode_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTintColor_];

  v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView];
  [v3 setAlignment_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  [v4 setAdjustsFontForContentSizeCategory_];
  if (qword_1EA9D2348 != -1)
  {
    swift_once();
  }

  [v4 setFont_];
  [v0 addSubview_];
  [v3 addArrangedSubview_];
  [v3 addArrangedSubview_];
  [v3 addArrangedSubview_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC4EA80;
  *(v7 + 32) = sub_18BB38334();
  *(v7 + 40) = sub_18BB38320();
  v8 = [v3 bottomAnchor];
  v9 = [v0 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 48) = v10;
  v11 = [v3 centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  LODWORD(v14) = 1144750080;
  [v13 setPriority_];
  *(v7 + 56) = v13;
  v15 = [v3 leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor_];

  *(v7 + 64) = v17;
  v18 = [v3 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v7 + 72) = v20;
  v21 = [v3 trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v7 + 80) = v23;
  sub_18BA497D0();
  v24 = sub_18BC20D88();

  [v6 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18BC3E410;
  v26 = sub_18BC1FF28();
  v27 = MEMORY[0x1E69DC2B0];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  MEMORY[0x18CFFCA40](v25, sel_contentSizeCategoryDidChange);
  swift_unknownObjectRelease();

  sub_18BB38BA0();
  sub_18BB38DF0();

  return [v0 tintColorDidChange];
}

uint64_t sub_18BB38BA0()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  if (*&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration + 16])
  {
    sub_18BC1E3F8();
    v2 = sub_18BC20B98();
  }

  else
  {
    v2 = 0;
  }

  [v1 setText_];

  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = inited;
  v6[3] = sub_18BB392F8;
  v6[4] = v4;
  v15 = sub_18B7D80AC;
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_18B7B0DB0;
  v14 = &block_descriptor_47;
  v7 = _Block_copy(&v11);
  swift_retain_n();
  v8 = v0;
  sub_18BC1E1A8();

  v15 = CGRectMake;
  v16 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_18B8043A0;
  v14 = &block_descriptor_24_0;
  v9 = _Block_copy(&v11);

  [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v9);
  _Block_release(v7);
}

id sub_18BB38DF0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  v3 = sub_18BC21438();

  v4 = 16.0;
  if (v3)
  {
    v5 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:v1];
    [v5 capHeight];
    v4 = v6;
  }

  v7 = sub_18BB38334();
  [v7 setConstant_];

  v8 = sub_18BB38320();
  [v8 setConstant_];

  v9 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  v10 = [v0 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = sub_18BC21438();

  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  return [v9 setNumberOfLines_];
}

id sub_18BB38FA4()
{
  v8.receiver = v0;
  v8.super_class = _s9TitleViewCMa();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  v3 = sub_18BB38334();
  [v3 constant];
  v5 = v4;

  [*&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView] spacing];
  return [v1 setPreferredMaxLayoutWidth_];
}

void sub_18BB390A8()
{

  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_unreadIndicator);
}

id sub_18BB3914C()
{
  v2.receiver = v0;
  v2.super_class = _s9TitleViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BB39264(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration);
  if (v3)
  {
    v4 = a1;
    swift_beginAccess();
    *(v3 + 24) = CGRectMake;
    *(v3 + 32) = 0;

    a1 = v4;
  }

  *(v1 + v2) = a1;
  sub_18BC1E1A8();

  sub_18BB38100();
}

uint64_t sub_18BB39364(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC21848();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 1392))(v7);
}

uint64_t sub_18BB39468(uint64_t a1)
{
  v27 = a1;
  v24 = *v1;
  v2 = v24;
  v3 = *(v24 + 1328);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v23 = &v22 - v5;
  v6 = sub_18BC21848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v22 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v22 - v10;
  v12 = *(v2 + 1352);
  swift_beginAccess();
  v13 = *(TupleTypeMetadata2 + 48);
  v26 = v7;
  v14 = *(v7 + 16);
  v14(v11, v1 + v12, v6);
  v14(&v11[v13], v27, v6);
  v27 = v4;
  v15 = *(v4 + 48);
  if (v15(v11, 1, v3) == 1)
  {
    if (v15(&v11[v13], 1, v3) == 1)
    {
      return (*(v26 + 8))(v11, v6);
    }

    goto LABEL_6;
  }

  v14(v28, v11, v6);
  if (v15(&v11[v13], 1, v3) == 1)
  {
    (*(v27 + 8))(v28, v3);
LABEL_6:
    (*(v25 + 8))(v11, TupleTypeMetadata2);
    return sub_18B8657E0();
  }

  v17 = v27;
  v18 = v23;
  (*(v27 + 32))(v23, &v11[v13], v3);
  v19 = v28;
  v20 = sub_18BC20AE8();
  v21 = *(v17 + 8);
  v21(v18, v3);
  v21(v19, v3);
  result = (*(v26 + 8))(v11, v6);
  if ((v20 & 1) == 0)
  {
    return sub_18B8657E0();
  }

  return result;
}

uint64_t sub_18BB39848(uint64_t a1)
{
  sub_18BB3C1D0(a1);
  v2 = sub_18BC21848();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*sub_18BB398D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_18BC21848();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = *(*v1 + 1352);
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_18BB39A48;
}