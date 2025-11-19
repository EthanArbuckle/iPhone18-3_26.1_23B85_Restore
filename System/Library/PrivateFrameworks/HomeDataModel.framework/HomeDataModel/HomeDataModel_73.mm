uint64_t sub_1D1D1D438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D1D20208(v10, v8, a3, v6, a2, type metadata accessor for StaticService, sub_1D188B1C8, type metadata accessor for StaticService, type metadata accessor for StaticService);
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
  v14 = sub_1D1B7441C(v13, v8, a3, v6, a2);
  result = MEMORY[0x1D3893640](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D1D1DB10(a1, a2, a3, type metadata accessor for StaticServiceGroup, sub_1D188B630, type metadata accessor for StaticServiceGroup, type metadata accessor for StaticServiceGroup);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1D6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D1D1DB10(a1, a2, a3, type metadata accessor for StaticMediaProfile, sub_1D188BA98, type metadata accessor for StaticMediaProfile, type metadata accessor for StaticMediaProfile);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1D744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D1D1DB10(a1, a2, a3, type metadata accessor for StaticMediaSystem, sub_1D188BF00, type metadata accessor for StaticMediaSystem, type metadata accessor for StaticMediaSystem);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1D7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D1D848(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1D1D890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D1D8F0(uint64_t a1, char a2, uint64_t (*a3)(char *, unint64_t, uint64_t, void), uint64_t (*a4)(void *, uint64_t, uint64_t, void))
{
  v7 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = a3(v11, v9, v7, a2 & 1);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v15 = swift_slowAlloc();
  v16 = sub_1D1D20890(v15, v9, v7, a2 & 1, a4);
  result = MEMORY[0x1D3893640](v15, -1, -1);
  if (!v4)
  {
    result = v16;
  }

LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1DA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D1D1DB10(a1, a2, a3, type metadata accessor for StaticAccessory, sub_1D188CC38, type metadata accessor for StaticAccessory, type metadata accessor for StaticAccessory);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1DB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v25 = a6;
  v13 = a1;
  v26 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 32);
  v15 = ((1 << v14) + 63) >> 6;
  v16 = 8 * v15;
  if ((v14 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    v23 = a5;
    v24 = &v23;
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v23 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
    result = sub_1D1D20208(&v23 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v15, a3, v13, a2, a4, v23, v25, a7);
    if (v7)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v24 = (((1 << v14) + 63) >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v24;
    goto LABEL_2;
  }

  v19 = swift_slowAlloc();
  v20 = a3;
  v21 = v19;
  v22 = sub_1D1D207C8(v19, v24, v20, v13, a2, a4, a5, v25, a7);
  result = MEMORY[0x1D3893640](v21, -1, -1);
  if (!v7)
  {
    result = v22;
  }

LABEL_4:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1DCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1D1D20528(v9, v7, a3, v5);
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

  v12 = swift_slowAlloc();
  v13 = sub_1D1D20A4C(v12, v7, a3, v5);
  result = MEMORY[0x1D3893640](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1DE58(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v37 = a2;
  v42 = a4;
  v38 = a1;
  v46 = type metadata accessor for StaticService(0);
  v41 = *(v46 - 8);
  v5 = *(v41 + 64);
  result = MEMORY[0x1EEE9AC00](v46);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v9 = 0;
  v43 = a3;
  v44 = v8;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v45 = (v15 - 1) & v15;
LABEL_13:
    v20 = v17 | (v9 << 6);
    v21 = v43[7];
    v22 = *(v41 + 72);
    v40 = v20;
    sub_1D1D1D7E0(v21 + v22 * v20, v8, type metadata accessor for StaticService);
    v23 = v8[*(v46 + 112)];
    if (v23 == 53)
    {
      LOBYTE(v23) = v8[*(v46 + 104)];
    }

    v48 = v23;
    ServiceKind.umbrellaCategory.getter(&v50);
    if ((sub_1D179F48C(v50, v42) & 1) == 0)
    {
      goto LABEL_5;
    }

    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC6BE1B0;
    if (!*(qword_1EC6BE1B0 + 16))
    {
      goto LABEL_5;
    }

    v25 = v44[*(v46 + 104)];
    v26 = *(qword_1EC6BE1B0 + 40);
    sub_1D1E6920C();
    v49 = v25;
    v50 = v25;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v27 = sub_1D1E6926C();
    v28 = -1 << *(v24 + 32);
    v29 = v27 & ~v28;
    if ((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v47 = ~v28;
      while (1)
      {
        v48 = *(*(v24 + 48) + v29);
        v50 = v49;
        v30 = ServiceKind.rawValue.getter();
        v32 = v31;
        if (v30 == ServiceKind.rawValue.getter() && v32 == v33)
        {
          break;
        }

        v35 = sub_1D1E6904C();

        if (v35)
        {
          goto LABEL_29;
        }

        v29 = (v29 + 1) & v47;
        if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_29:
      v8 = v44;
      result = sub_1D1D1D890(v44, type metadata accessor for StaticService);
      *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v36 = __OFADD__(v39++, 1);
      v15 = v45;
      if (v36)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_5:
      v8 = v44;
      result = sub_1D1D1D890(v44, type metadata accessor for StaticService);
      v15 = v45;
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_1D188B1C8(v38, v37, v39, v43);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v45 = (v19 - 1) & v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D1D1E228(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = a2;
  v26 = a4;
  v23 = a1;
  v5 = type metadata accessor for StaticService(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v25 + 72) * v18, v9, type metadata accessor for StaticService);
    if (v26)
    {
      v19 = v9[*(v5 + 96)];
      result = sub_1D1D1D890(v9, type metadata accessor for StaticService);
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_1D1D1D890(v9, type metadata accessor for StaticService);
LABEL_15:
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v23, v22, v24, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_1D188B1C8(v23, v22, v24, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1E440(unint64_t *a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v57 - v10;
  v11 = type metadata accessor for StaticService(0);
  v68 = *(v11 - 1);
  v12 = *(v68 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v16 = 0;
  v69 = result;
  v70 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v71 = 0x80000001D1EB3580;
  v72 = v15;
  v66 = v23;
  v67 = v18;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v73 = (v22 - 1) & v22;
LABEL_13:
    v27 = v24 | (v16 << 6);
    v28 = v70[7];
    v29 = *(v68 + 72);
    v64 = v27;
    sub_1D1D1D7E0(v28 + v29 * v27, v15, type metadata accessor for StaticService);
    v30 = v11[26];
    v74 = v15[v30];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v71 == v31)
    {

LABEL_17:
      v65 = v30;
      v33 = &v15[v11[29]];
      v34 = v63;
      sub_1D1741C08(v33, v63, &qword_1EC642590, qword_1D1E71260);
      v35 = sub_1D1E66A7C();
      v36 = *(*(v35 - 8) + 48);
      v37 = v36(v34, 1, v35);
      sub_1D1741A30(v34, &qword_1EC642590, qword_1D1E71260);
      if (v37 != 1)
      {
        goto LABEL_5;
      }

      v15 = v72;
      v38 = v62;
      sub_1D1741C08(&v72[v11[37]], v62, &qword_1EC642590, qword_1D1E71260);
      v39 = v36(v38, 1, v35);
      sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
      v30 = v65;
      if (v39 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

    v32 = sub_1D1E6904C();

    if (v32)
    {
      goto LABEL_17;
    }

LABEL_19:
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v40 = qword_1EC6BE1B0;
    if (!*(qword_1EC6BE1B0 + 16))
    {
      goto LABEL_5;
    }

    v41 = v15[v30];
    v42 = *(qword_1EC6BE1B0 + 40);
    sub_1D1E6920C();
    v75 = v41;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v43 = sub_1D1E6926C();
    v44 = -1 << *(v40 + 32);
    v45 = v43 & ~v44;
    if ((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
    {
      v46 = ~v44;
      while (1)
      {
        v74 = *(*(v40 + 48) + v45);
        v75 = v41;
        v47 = ServiceKind.rawValue.getter();
        v49 = v48;
        if (v47 == ServiceKind.rawValue.getter() && v49 == v50)
        {
          break;
        }

        v52 = sub_1D1E6904C();

        if (v52)
        {
          goto LABEL_32;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_32:
      v11 = v69;
      v15 = v72;
      v53 = v58;
      sub_1D1741C08(&v72[v69[29]], v58, &qword_1EC642590, qword_1D1E71260);
      v54 = sub_1D1E66A7C();
      v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
      sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      result = sub_1D1D1D890(v15, type metadata accessor for StaticService);
      v23 = v66;
      v18 = v67;
      v22 = v73;
      if (v55 == 1)
      {
        *(v60 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
        if (__OFADD__(v61++, 1))
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_5:
      v15 = v72;
      result = sub_1D1D1D890(v72, type metadata accessor for StaticService);
      v11 = v69;
      v23 = v66;
      v18 = v67;
      v22 = v73;
    }
  }

  v25 = v16;
  while (1)
  {
    v16 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      return sub_1D188B1C8(v60, v59, v61, v70);
    }

    v26 = v18[v16];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v73 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D1D1EA84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = type metadata accessor for StaticService(0);
  v24 = *(v4 - 1);
  v5 = *(v24 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v9 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v24 + 72) * v17, v8, type metadata accessor for StaticService);
    if (v8[v4[8]] == 1)
    {
      v18 = v8[v4[9]];
      if (v18 != 2 && (v18 & 1) != 0)
      {
        result = sub_1D1D1D890(v8, type metadata accessor for StaticService);
LABEL_18:
        *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v22, v21, v23, a3);
        }
      }

      else
      {
        v26 = *&v8[v4[32]];
        v25 = v8[v4[26]];

        v19 = StaticCharacteristicsBag.isReachable(for:)(&v25);

        result = sub_1D1D1D890(v8, type metadata accessor for StaticService);
        if (v19)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      result = sub_1D1D1D890(v8, type metadata accessor for StaticService);
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_1D188B1C8(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1ED70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a1;
  v4 = type metadata accessor for StaticMediaProfile();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v9 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v26 + 72) * v17, v8, type metadata accessor for StaticMediaProfile);
    v18 = &v8[*(v4 + 92)];
    v19 = v18[8];
    if (v19 <= 1)
    {
      if (v18[8])
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v20 = *v18;
    if (v19 == 2)
    {
      result = sub_1D1D1D890(v8, type metadata accessor for StaticMediaProfile);
      if ((v20 & 0x100) != 0)
      {
LABEL_22:
        *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return sub_1D188BA98(v24, v23, v25, a3);
        }
      }
    }

    else
    {
      if (v19 != 3)
      {
        goto LABEL_21;
      }

      if ((v20 - 2) >= 2)
      {
        if (v20)
        {
LABEL_21:
          result = sub_1D1D1D890(v8, type metadata accessor for StaticMediaProfile);
          goto LABEL_22;
        }

LABEL_19:
        result = sub_1D1D1D890(v8, type metadata accessor for StaticMediaProfile);
      }

      else
      {
        v21 = *(*&v8[*(v4 + 68)] + 16);
        result = sub_1D1D1D890(v8, type metadata accessor for StaticMediaProfile);
        if (!v21)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_1D188BA98(v24, v23, v25, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F000(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a1;
  v4 = type metadata accessor for StaticMediaProfile();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v23 + 72) * v17, v8, type metadata accessor for StaticMediaProfile);
    v18 = v8[*(v4 + 52)];
    result = sub_1D1D1D890(v8, type metadata accessor for StaticMediaProfile);
    if ((v18 & 1) == 0)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1D188BA98(v21, v20, v22, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_1D188BA98(v21, v20, v22, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F1EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  v4 = *(*(v57 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v40 - v7;
  v8 = type metadata accessor for StaticMediaProfile();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D1E66A7C();
  v11 = *(*(v51 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v51);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v13;
  v15 = 0;
  v58 = a3;
  v16 = *(a3 + 64);
  v45 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v43 = 0;
  v44 = (v17 + 63) >> 6;
  v47 = v13 + 8;
  v48 = v13 + 16;
  v20 = v51;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v59 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v15 << 6);
    v25 = v58;
    v26 = v49;
    v27 = v50;
    v28 = *(v50 + 16);
    v28(v49, v58[6] + *(v50 + 72) * v24, v20);
    v29 = v25[7];
    v30 = *(v53 + 72);
    v46 = v24;
    v31 = v29 + v30 * v24;
    v32 = v52;
    sub_1D1D1D7E0(v31, v52, type metadata accessor for StaticMediaProfile);
    v33 = v55;
    v28(v55, v26, v20);
    v34 = v57;
    sub_1D1D1D7E0(v32, &v33[*(v57 + 48)], type metadata accessor for StaticMediaProfile);
    v35 = v33;
    v36 = v56;
    sub_1D1741A90(v35, v56, &qword_1EC645468, &unk_1D1E995E0);
    v37 = v36 + *(v34 + 48);
    LODWORD(v34) = *(v37 + *(v54 + 60));
    sub_1D1D1D890(v37, type metadata accessor for StaticMediaProfile);
    v38 = *(v27 + 8);
    v38(v36, v20);
    sub_1D1D1D890(v32, type metadata accessor for StaticMediaProfile);
    result = (v38)(v26, v20);
    v19 = v59;
    if (v34 == 1)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return sub_1D188BA98(v42, v41, v43, v58);
      }
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v44)
    {
      return sub_1D188BA98(v42, v41, v43, v58);
    }

    v23 = *(v45 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v59 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F5D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  v4 = *(*(v57 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v40 - v7;
  v8 = type metadata accessor for StaticMediaSystem();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D1E66A7C();
  v11 = *(*(v51 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v51);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v13;
  v15 = 0;
  v58 = a3;
  v16 = *(a3 + 64);
  v45 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v43 = 0;
  v44 = (v17 + 63) >> 6;
  v47 = v13 + 8;
  v48 = v13 + 16;
  v20 = v51;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v59 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v15 << 6);
    v25 = v58;
    v26 = v49;
    v27 = v50;
    v28 = *(v50 + 16);
    v28(v49, v58[6] + *(v50 + 72) * v24, v20);
    v29 = v25[7];
    v30 = *(v53 + 72);
    v46 = v24;
    v31 = v29 + v30 * v24;
    v32 = v52;
    sub_1D1D1D7E0(v31, v52, type metadata accessor for StaticMediaSystem);
    v33 = v55;
    v28(v55, v26, v20);
    v34 = v57;
    sub_1D1D1D7E0(v32, &v33[*(v57 + 48)], type metadata accessor for StaticMediaSystem);
    v35 = v33;
    v36 = v56;
    sub_1D1741A90(v35, v56, &qword_1EC645478, &qword_1D1E79A08);
    v37 = v36 + *(v34 + 48);
    LODWORD(v34) = *(v37 + *(v54 + 52));
    sub_1D1D1D890(v37, type metadata accessor for StaticMediaSystem);
    v38 = *(v27 + 8);
    v38(v36, v20);
    sub_1D1D1D890(v32, type metadata accessor for StaticMediaSystem);
    result = (v38)(v26, v20);
    v19 = v59;
    if (v34 == 1)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return sub_1D188BF00(v42, v41, v43, v58);
      }
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v44)
    {
      return sub_1D188BF00(v42, v41, v43, v58);
    }

    v23 = *(v45 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v59 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1F9C4(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = a2;
  v26 = a4;
  v23 = a1;
  v5 = type metadata accessor for StaticAccessory(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v25 + 72) * v18, v9, type metadata accessor for StaticAccessory);
    if (v26)
    {
      v19 = v9[*(v5 + 72)];
      result = sub_1D1D1D890(v9, type metadata accessor for StaticAccessory);
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_1D1D1D890(v9, type metadata accessor for StaticAccessory);
LABEL_15:
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1D188CC38(v23, v22, v24, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_1D188CC38(v23, v22, v24, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1FBDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v4 = type metadata accessor for StaticAccessory(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v9 << 6);
    sub_1D1D1D7E0(*(a3 + 56) + *(v25 + 72) * v18, v8, type metadata accessor for StaticAccessory);
    v19 = &v8[*(v4 + 92)];
    v20 = v19[8];
    if (v20 == 2)
    {
      v14 = *v19;
      result = sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
      if ((v14 & 0x100) == 0)
      {
LABEL_16:
        *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_1D188CC38(v23, v22, v24, a3);
        }
      }
    }

    else
    {
      if (v20 == 255)
      {
        result = sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
        goto LABEL_16;
      }

      result = sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_1D188CC38(v23, v22, v24, a3);
    }

    v17 = *(a3 + 64 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1FE20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v4 = *(*(v57 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v40 - v7;
  v8 = type metadata accessor for StaticAccessory(0);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D1E66A7C();
  v11 = *(*(v51 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v51);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v13;
  v15 = 0;
  v58 = a3;
  v16 = *(a3 + 64);
  v45 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v43 = 0;
  v44 = (v17 + 63) >> 6;
  v47 = v13 + 8;
  v48 = v13 + 16;
  v20 = v51;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v59 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v15 << 6);
    v25 = v58;
    v26 = v49;
    v27 = v50;
    v28 = *(v50 + 16);
    v28(v49, v58[6] + *(v50 + 72) * v24, v20);
    v29 = v25[7];
    v30 = *(v53 + 72);
    v46 = v24;
    v31 = v29 + v30 * v24;
    v32 = v52;
    sub_1D1D1D7E0(v31, v52, type metadata accessor for StaticAccessory);
    v33 = v55;
    v28(v55, v26, v20);
    v34 = v57;
    sub_1D1D1D7E0(v32, &v33[*(v57 + 48)], type metadata accessor for StaticAccessory);
    v35 = v33;
    v36 = v56;
    sub_1D1741A90(v35, v56, &qword_1EC644B30, &qword_1D1E77280);
    v37 = v36 + *(v34 + 48);
    LOBYTE(v34) = *(v37 + *(v54 + 60));
    sub_1D1D1D890(v37, type metadata accessor for StaticAccessory);
    v38 = *(v27 + 8);
    v38(v36, v20);
    sub_1D1D1D890(v32, type metadata accessor for StaticAccessory);
    result = (v38)(v26, v20);
    v19 = v59;
    if ((v34 & 1) == 0)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return sub_1D188CC38(v42, v41, v43, v58);
      }
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v44)
    {
      return sub_1D188CC38(v42, v41, v43, v58);
    }

    v23 = *(v45 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v59 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D20208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  v50 = a4;
  v51 = a8;
  v40 = a2;
  v41 = a7;
  v42 = a1;
  v45 = a9;
  v10 = a6(0);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v39 - v12;
  v13 = sub_1D1E66A7C();
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v52 = a3;
  v53 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v21 = *(a3 + 64);
  v20 = a3 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v46 = v16 + 16;
  v47 = v16;
  v43 = 0;
  v44 = (v16 + 8);
  while (v24)
  {
    v54 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v18 << 6);
    v27 = v53;
LABEL_11:
    v30 = v52;
    (*(v47 + 16))(v27, *(v52 + 48) + *(v47 + 72) * v26, v13);
    v31 = v26;
    v32 = *(v30 + 56) + *(v49 + 72) * v26;
    v33 = v13;
    v34 = v48;
    sub_1D1D1D7E0(v32, v48, v51);
    v35 = v55;
    v36 = v50(v27, v34);
    v55 = v35;
    if (v35)
    {
      sub_1D1D1D890(v34, v45);
      return (*v44)(v27, v33);
    }

    v37 = v36;
    sub_1D1D1D890(v34, v45);
    result = (*v44)(v27, v33);
    v13 = v33;
    v24 = v54;
    if (v37)
    {
      *(v42 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return v41(v42, v40, v43, v52);
      }
    }
  }

  v28 = v18;
  v27 = v53;
  while (1)
  {
    v18 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      return v41(v42, v40, v43, v52);
    }

    v29 = *(v20 + 8 * v18);
    ++v28;
    if (v29)
    {
      v54 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) | (v18 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D20528(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for StaticMatterDevice();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v11 = 0;
  v31 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = v31[7];
    v32 = *(v31[6] + 8 * v22);
    sub_1D1D1D7E0(v23 + *(v29 + 72) * v22, v10, type metadata accessor for StaticMatterDevice);
    v24 = v30(&v32, v10);
    result = sub_1D1D1D890(v10, type metadata accessor for StaticMatterDevice);
    if (v4)
    {
      return result;
    }

    if (v24)
    {
      *(v27 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_1D188D804(v27, v26, v28, v31);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_1D188D804(v27, v26, v28, v31);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1D20740(void *result, uint64_t a2, void *a3, int a4)
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

    v8 = sub_1D1D1DE58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D1D207C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v10 = result;
      v17 = a2;
      v11 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      result = v10;
      a2 = v17;
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v11;
    }

    v16 = sub_1D1D20208(result, a2, a3, a4, a5, a6, a7, a8, a9);

    return v16;
  }

  return result;
}

void *sub_1D1D20890(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *, uint64_t, uint64_t, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4 & 1);

    return v10;
  }

  return result;
}

void *sub_1D1D20920(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

void *sub_1D1D209A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1D1D20A4C(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, char *))
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

    v8 = sub_1D1D20528(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D1D20ADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D16EEE20(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1D1D20B74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D16EEE20(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s13HomeDataModel8RoomTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoomType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E98, &unk_1D1E74290);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D1D1D7E0(a1, &v24 - v16, type metadata accessor for RoomType);
  sub_1D1D1D7E0(a2, &v17[v18], type metadata accessor for RoomType);
  v19 = *(v5 + 48);
  v20 = v19(v17, 4, v4);
  if (v20 <= 1)
  {
    if (!v20)
    {
      sub_1D1D1D7E0(v17, v12, type metadata accessor for RoomType);
      if (!v19(&v17[v18], 4, v4))
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v21 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v23 = *(v5 + 8);
        v23(v8, v4);
        v23(v12, v4);
        sub_1D1D1D890(v17, type metadata accessor for RoomType);
        return v21 & 1;
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_12;
    }

    if (v19(&v17[v18], 4, v4) == 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_1D1741A30(v17, &qword_1EC643E98, &unk_1D1E74290);
    v21 = 0;
    return v21 & 1;
  }

  if (v20 == 2)
  {
    if (v19(&v17[v18], 4, v4) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v20 != 3)
  {
    if (v19(&v17[v18], 4, v4) == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v19(&v17[v18], 4, v4) != 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1D1D1D890(v17, type metadata accessor for RoomType);
  v21 = 1;
  return v21 & 1;
}

uint64_t _s13HomeDataModel10StaticRoomV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = type metadata accessor for StaticRoom(0);
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v39 = v17;
  v40 = a2;
  v23 = *(v17 + 24);
  v24 = *(v13 + 48);
  sub_1D1741C08(a1 + v23, v16, &qword_1EC642570, &qword_1D1E6C6A0);
  v25 = v40 + v23;
  v26 = v40;
  sub_1D1741C08(v25, &v16[v24], &qword_1EC642570, &qword_1D1E6C6A0);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) != 1)
  {
    sub_1D1741C08(v16, v12, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v27(&v16[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v24], v4);
      sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      v28 = sub_1D1E6775C();
      v29 = *(v5 + 8);
      v29(v8, v4);
      v29(v12, v4);
      v26 = v40;
      sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_1D1741A30(v16, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_15;
  }

  if (v27(&v16[v24], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_14:
  v30 = v39;
  if (*(a1 + v39[7]) == *(v26 + v39[7]))
  {
    v33 = v39[8];
    v34 = *(a1 + v33);
    v35 = *(v26 + v33);
    if (v34)
    {
      if (!v35)
      {
        goto LABEL_15;
      }

      v36 = *(v26 + v33);

      v37 = sub_1D17ABBCC(v34, v35);

      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v35)
    {
      goto LABEL_15;
    }

    v38 = v30[9];
    if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (sub_1D1848AD4(*(a1 + v30[10]), *(v26 + v30[10])) & 1) != 0 && (sub_1D184F4FC(*(a1 + v30[11]), *(v26 + v30[11])) & 1) != 0 && (sub_1D184FAD4(*(a1 + v30[12]), *(v26 + v30[12])) & 1) != 0 && (sub_1D18500AC(*(a1 + v30[13]), *(v26 + v30[13])) & 1) != 0 && (sub_1D1850684(*(a1 + v30[14]), *(v26 + v30[14])) & 1) != 0 && (sub_1D1849684(*(a1 + v30[15]), *(v26 + v30[15])) & 1) != 0 && (sub_1D18490AC(*(a1 + v30[16]), *(v26 + v30[16])) & 1) != 0 && (sub_1D17796E4(*(a1 + v30[17]), *(v26 + v30[17])) & 1) != 0 && (sub_1D17796E4(*(a1 + v30[18]), *(v26 + v30[18])))
    {
      v31 = sub_1D1850C5C(*(a1 + v39[19]), *(v40 + v39[19]));
      return v31 & 1;
    }
  }

LABEL_15:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1D1D21434(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v228 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v241 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v240 = &v222 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v225 = &v222 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v222 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v246 = &v222 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v230 = &v222 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v222 - v28;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v30 = *(*(v254 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v254);
  v251 = &v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v222 - v33;
  v261 = type metadata accessor for StaticService(0);
  v243 = *(v261 - 8);
  v35 = *(v243 + 64);
  v36 = MEMORY[0x1EEE9AC00](v261);
  v235 = &v222 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v259 = &v222 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v222 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v262 = &v222 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v250 = &v222 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v249 = &v222 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v49);
  v244 = a3;
  v52 = a3[1];
  v256 = a5;
  if (v52 < 1)
  {
    swift_bridgeObjectRetain_n();
    v231 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v262 = *v228;
    if (!v262)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    v10 = v231;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v267 = v10;
      v212 = *(v10 + 16);
      if (v212 >= 2)
      {
        do
        {
          v213 = *v244;
          if (!*v244)
          {
            goto LABEL_185;
          }

          v214 = *(v10 + 16 * v212);
          v215 = *(v10 + 16 * (v212 - 1) + 40);
          v216 = *(v243 + 72);
          v217 = v213 + v216 * v214;
          v218 = v213 + v216 * *(v10 + 16 * (v212 - 1) + 32);
          v219 = v213 + v216 * v215;
          v220 = v256;

          sub_1D1D1CAEC(v217, v218, v219, v262, v220);
          if (v6)
          {
            break;
          }

          if (v215 < v214)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v212 - 2 >= *(v10 + 16))
          {
            goto LABEL_175;
          }

          v221 = (v10 + 16 * v212);
          *v221 = v214;
          v221[1] = v215;
          v267 = v10;
          sub_1D1E0BDB8(v212 - 1);
          v10 = v267;
          v212 = *(v267 + 16);
        }

        while (v212 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v10 = sub_1D1E0BE44(v10);
    goto LABEL_150;
  }

  v222 = &v222 - v50;
  v223 = v51;
  v252 = (v11 + 48);
  v242 = (v11 + 32);
  v248 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v231 = MEMORY[0x1E69E7CC0];
  v227 = a4;
  v253 = v10;
  v229 = v29;
  v53 = v251;
  v233 = v34;
  v255 = v42;
  v54 = 0;
LABEL_4:
  if (v54 + 1 >= v52)
  {
    v65 = v54 + 1;
    goto LABEL_49;
  }

  v247 = v52;
  v55 = *v244;
  v56 = *(v243 + 72);
  v57 = *v244 + v56 * (v54 + 1);
  v58 = v54;
  v59 = v222;
  sub_1D1D1D7E0(v57, v222, type metadata accessor for StaticService);
  v257 = v55;
  v60 = v55 + v56 * v58;
  v61 = v223;
  sub_1D1D1D7E0(v60, v223, type metadata accessor for StaticService);
  LODWORD(v260) = sub_1D1D0D3A0(v59, v61, v256);
  if (v6)
  {
    sub_1D1D1D890(v61, type metadata accessor for StaticService);
    sub_1D1D1D890(v59, type metadata accessor for StaticService);
    swift_bridgeObjectRelease_n();
  }

  v232 = 0;
  sub_1D1D1D890(v61, type metadata accessor for StaticService);
  sub_1D1D1D890(v59, type metadata accessor for StaticService);
  v226 = v58;
  v62 = v58 + 2;
  v258 = v56;
  v10 = v256;
  v63 = v257 + v56 * v62;
  while (1)
  {
    v65 = v247;
    if (v247 == v62)
    {
      break;
    }

    v66 = v249;
    sub_1D1D1D7E0(v63, v249, type metadata accessor for StaticService);
    v67 = v250;
    sub_1D1D1D7E0(v57, v250, type metadata accessor for StaticService);
    v68 = sub_1D18E4158(v66, v10);
    LOBYTE(v66) = v69;
    v70 = sub_1D18E4158(v67, v10);
    if (v66)
    {
      if ((v71 & 1) == 0)
      {
        v64 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      if (v71)
      {
        v64 = 1;
        goto LABEL_8;
      }

      if (v68 != v70)
      {
        v64 = v68 < v70;
        goto LABEL_8;
      }
    }

    v72 = *(v261 + 56);
    v73 = *(v254 + 48);
    v74 = v233;
    sub_1D1741C08(v249 + v72, v233, &qword_1EC642570, &qword_1D1E6C6A0);
    v257 = v73;
    sub_1D1741C08(v250 + v72, v74 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
    v75 = v253;
    v76 = *v252;
    if ((*v252)(v74, 1, v253) == 1)
    {
      if (v76(v74 + v257, 1, v75) == 1)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
      v64 = 0;
      v53 = v251;
    }

    else
    {
      v77 = v229;
      sub_1D1741C08(v74, v229, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v76(v74 + v257, 1, v75) == 1)
      {
        (*v248)(v77, v75);
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v64 = 1;
        v53 = v251;
        v10 = v256;
      }

      else
      {
        sub_1D1741C08(v74 + v257, v230, &qword_1EC642570, &qword_1D1E6C6A0);
        v78 = *v242;
        v79 = v224;
        (*v242)(v224, v77, v75);
        v80 = v225;
        v78(v225, v230, v75);
        sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
        if (sub_1D1E6775C())
        {
          v81 = *v248;
          (*v248)(v80, v75);
          v81(v79, v75);
LABEL_23:
          sub_1D1741A30(v74, &qword_1EC642AC0, &qword_1D1E6E810);
          v82 = *(v261 + 20);
          v83 = (v249 + v82);
          v85 = *(v249 + v82);
          v84 = *(v249 + v82 + 8);
          v86 = (v250 + v82);
          v88 = *v86;
          v87 = v86[1];
          if (*v83 == *v86 && v84 == v87 || (v89 = *v83, v90 = v83[1], v91 = *v86, v92 = v86[1], (sub_1D1E6904C() & 1) != 0))
          {
            v93 = sub_1D1E66A1C();
            v95 = v94;
            v96 = sub_1D1E66A1C();
            v53 = v251;
            if (v93 == v96 && v95 == v97)
            {

              v64 = 0;
            }

            else
            {
              v64 = sub_1D1E6904C();
            }

            v10 = v256;
          }

          else
          {
            v265 = v85;
            v266 = v84;
            v263 = v88;
            v264 = v87;
            sub_1D17D8EF0();
            v64 = sub_1D1E685FC() == -1;
            v10 = v256;
            v53 = v251;
          }

          goto LABEL_8;
        }

        v64 = sub_1D1E6696C();
        v98 = v80;
        v99 = v79;
        v100 = *v248;
        (*v248)(v98, v75);
        v100(v99, v75);
        v10 = v256;
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v53 = v251;
      }
    }

LABEL_8:
    sub_1D1D1D890(v250, type metadata accessor for StaticService);
    sub_1D1D1D890(v249, type metadata accessor for StaticService);
    ++v62;
    v63 += v258;
    v57 += v258;
    if ((v260 ^ v64))
    {
      v65 = v62 - 1;
      break;
    }
  }

  v6 = v232;
  a4 = v227;
  v54 = v226;
  if ((v260 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v65 < v226)
  {
    goto LABEL_180;
  }

  if (v226 < v65)
  {
    v101 = v65;
    v10 = v258;
    v102 = v258 * (v65 - 1);
    v103 = v65 * v258;
    v247 = v65;
    v104 = v226;
    v105 = v226 * v258;
    do
    {
      if (v104 != --v101)
      {
        v106 = *v244;
        if (!*v244)
        {
          goto LABEL_184;
        }

        sub_1D1D26328(v106 + v105, v235, type metadata accessor for StaticService);
        if (v105 < v102 || v106 + v105 >= (v106 + v103))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v105 != v102)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1D26328(v235, v106 + v102, type metadata accessor for StaticService);
        v6 = v232;
      }

      ++v104;
      v102 -= v10;
      v103 -= v10;
      v105 += v10;
    }

    while (v104 < v101);
    a4 = v227;
    v65 = v247;
    v54 = v226;
  }

LABEL_49:
  v107 = v244[1];
  if (v65 >= v107)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v65, v54))
  {
    goto LABEL_177;
  }

  if (v65 - v54 >= a4)
  {
LABEL_58:
    v109 = v65;
    goto LABEL_59;
  }

  if (__OFADD__(v54, a4))
  {
    goto LABEL_178;
  }

  if (v54 + a4 >= v107)
  {
    v108 = v244[1];
  }

  else
  {
    v108 = v54 + a4;
  }

  if (v108 < v54)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v65 == v108)
  {
    goto LABEL_58;
  }

  v232 = v6;
  v165 = *v244;
  v166 = *(v243 + 72);
  v167 = *v244 + v166 * (v65 - 1);
  v257 = -v166;
  v226 = v54;
  v168 = v54 - v65;
  v258 = v165;
  v234 = v166;
  v169 = v165 + v65 * v166;
  v170 = v255;
  v10 = v256;
  v236 = v108;
  while (2)
  {
    v247 = v65;
    v237 = v169;
    v238 = v168;
    v171 = v168;
    v239 = v167;
    v172 = v167;
LABEL_113:
    v173 = v262;
    sub_1D1D1D7E0(v169, v262, type metadata accessor for StaticService);
    sub_1D1D1D7E0(v172, v170, type metadata accessor for StaticService);
    v174 = sub_1D18E4158(v173, v10);
    LOBYTE(v173) = v175;
    v176 = sub_1D18E4158(v170, v10);
    if ((v173 & 1) == 0)
    {
      if (v177)
      {
        goto LABEL_123;
      }

      if (v174 == v176)
      {
        goto LABEL_118;
      }

      v205 = v174 < v176;
      goto LABEL_138;
    }

    if ((v177 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v260 = v171;
    v178 = *(v261 + 56);
    v179 = *(v254 + 48);
    sub_1D1741C08(v262 + v178, v53, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v170 + v178, v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
    v180 = v253;
    v181 = *v252;
    if ((*v252)(v53, 1, v253) == 1)
    {
      if (v181(v53 + v179, 1, v180) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_110:
      sub_1D1D1D890(v170, type metadata accessor for StaticService);
      sub_1D1D1D890(v262, type metadata accessor for StaticService);
LABEL_111:
      v65 = v247 + 1;
      v167 = v239 + v234;
      v168 = v238 - 1;
      v169 = v237 + v234;
      v109 = v236;
      if (v247 + 1 != v236)
      {
        continue;
      }

      v6 = v232;
      v54 = v226;
LABEL_59:
      v110 = v231;
      if (v109 < v54)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v236 = v109;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v110 = sub_1D177D070(0, *(v110 + 2) + 1, 1, v110);
      }

      v113 = *(v110 + 2);
      v112 = *(v110 + 3);
      v114 = v113 + 1;
      v10 = v256;
      if (v113 >= v112 >> 1)
      {
        v110 = sub_1D177D070((v112 > 1), v113 + 1, 1, v110);
      }

      *(v110 + 2) = v114;
      v115 = &v110[16 * v113];
      v116 = v236;
      *(v115 + 4) = v54;
      *(v115 + 5) = v116;
      v260 = *v228;
      if (!v260)
      {
        goto LABEL_186;
      }

      if (v113)
      {
        while (2)
        {
          v117 = v114 - 1;
          if (v114 >= 4)
          {
            v122 = &v110[16 * v114 + 32];
            v123 = *(v122 - 64);
            v124 = *(v122 - 56);
            v128 = __OFSUB__(v124, v123);
            v125 = v124 - v123;
            if (v128)
            {
              goto LABEL_163;
            }

            v127 = *(v122 - 48);
            v126 = *(v122 - 40);
            v128 = __OFSUB__(v126, v127);
            v120 = v126 - v127;
            v121 = v128;
            if (v128)
            {
              goto LABEL_164;
            }

            v129 = &v110[16 * v114];
            v131 = *v129;
            v130 = *(v129 + 1);
            v128 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v128)
            {
              goto LABEL_166;
            }

            v128 = __OFADD__(v120, v132);
            v133 = v120 + v132;
            if (v128)
            {
              goto LABEL_169;
            }

            if (v133 >= v125)
            {
              v151 = &v110[16 * v117 + 32];
              v153 = *v151;
              v152 = *(v151 + 1);
              v128 = __OFSUB__(v152, v153);
              v154 = v152 - v153;
              if (v128)
              {
                goto LABEL_173;
              }

              if (v120 < v154)
              {
                v117 = v114 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v121)
              {
                goto LABEL_165;
              }

              v134 = &v110[16 * v114];
              v136 = *v134;
              v135 = *(v134 + 1);
              v137 = __OFSUB__(v135, v136);
              v138 = v135 - v136;
              v139 = v137;
              if (v137)
              {
                goto LABEL_168;
              }

              v140 = &v110[16 * v117 + 32];
              v142 = *v140;
              v141 = *(v140 + 1);
              v128 = __OFSUB__(v141, v142);
              v143 = v141 - v142;
              if (v128)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v138, v143))
              {
                goto LABEL_172;
              }

              if (v138 + v143 < v120)
              {
                goto LABEL_93;
              }

              if (v120 < v143)
              {
                v117 = v114 - 2;
              }
            }
          }

          else
          {
            if (v114 == 3)
            {
              v118 = *(v110 + 4);
              v119 = *(v110 + 5);
              v128 = __OFSUB__(v119, v118);
              v120 = v119 - v118;
              v121 = v128;
              goto LABEL_79;
            }

            v144 = &v110[16 * v114];
            v146 = *v144;
            v145 = *(v144 + 1);
            v128 = __OFSUB__(v145, v146);
            v138 = v145 - v146;
            v139 = v128;
LABEL_93:
            if (v139)
            {
              goto LABEL_167;
            }

            v147 = &v110[16 * v117];
            v149 = *(v147 + 4);
            v148 = *(v147 + 5);
            v128 = __OFSUB__(v148, v149);
            v150 = v148 - v149;
            if (v128)
            {
              goto LABEL_170;
            }

            if (v150 < v138)
            {
              break;
            }
          }

          v155 = v117 - 1;
          if (v117 - 1 >= v114)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v156 = *v244;
          if (!*v244)
          {
            goto LABEL_183;
          }

          v10 = v110;
          v157 = *&v110[16 * v155 + 32];
          v158 = *&v110[16 * v117 + 40];
          v159 = *(v243 + 72);
          v160 = v156 + v159 * v157;
          v161 = v156 + v159 * *&v110[16 * v117 + 32];
          v162 = v156 + v159 * v158;
          v163 = v256;

          sub_1D1D1CAEC(v160, v161, v162, v260, v163);
          if (v6)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v158 < v157)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v155 >= *(v10 + 16))
          {
            goto LABEL_162;
          }

          v164 = v10 + 16 * v155;
          *(v164 + 32) = v157;
          *(v164 + 40) = v158;
          v267 = v10;
          sub_1D1E0BDB8(v117);
          v110 = v267;
          v114 = *(v267 + 16);
          v53 = v251;
          if (v114 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v231 = v110;
      v52 = v244[1];
      v54 = v236;
      a4 = v227;
      if (v236 >= v52)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v182 = v10;
  v183 = v246;
  sub_1D1741C08(v53, v246, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v181(v53 + v179, 1, v180) != 1)
  {
    sub_1D1741C08(v53 + v179, v245, &qword_1EC642570, &qword_1D1E6C6A0);
    v184 = *v242;
    v185 = v240;
    (*v242)(v240, v183, v180);
    v186 = v241;
    v184(v241, v245, v180);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if (sub_1D1E6775C())
    {
      v187 = *v248;
      (*v248)(v186, v180);
      v187(v185, v180);
      v170 = v255;
LABEL_126:
      sub_1D1741A30(v53, &qword_1EC642AC0, &qword_1D1E6E810);
      v188 = *(v261 + 20);
      v189 = (v262 + v188);
      v190 = *(v262 + v188);
      v191 = *(v262 + v188 + 8);
      v192 = (v170 + v188);
      v193 = *v192;
      v194 = v192[1];
      v195 = *v189 == *v192 && v191 == v194;
      if (v195 || (v196 = *v189, v197 = v189[1], v198 = *v192, v199 = v192[1], (sub_1D1E6904C() & 1) != 0))
      {
        v200 = sub_1D1E66A1C();
        v202 = v201;
        v170 = v255;
        v203 = sub_1D1E66A1C();
        v171 = v260;
        if (v200 == v203 && v202 == v204)
        {

          v10 = v256;
          v53 = v251;
          goto LABEL_110;
        }

        v205 = sub_1D1E6904C();

        v10 = v256;
        v53 = v251;
        goto LABEL_138;
      }

      v265 = v190;
      v266 = v191;
      v263 = v193;
      v264 = v194;
      sub_1D17D8EF0();
      v205 = sub_1D1E685FC() == -1;
      v170 = v255;
      v10 = v256;
      v53 = v251;
    }

    else
    {
      v205 = sub_1D1E6696C();
      v206 = v186;
      v207 = v185;
      v208 = *v248;
      (*v248)(v206, v180);
      v208(v207, v180);
      v10 = v256;
      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
      v170 = v255;
    }

    v171 = v260;
LABEL_138:
    sub_1D1D1D890(v170, type metadata accessor for StaticService);
    sub_1D1D1D890(v262, type metadata accessor for StaticService);
    if ((v205 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  (*v248)(v183, v180);
  sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
  v10 = v182;
  v170 = v255;
  v171 = v260;
LABEL_123:
  sub_1D1D1D890(v170, type metadata accessor for StaticService);
  sub_1D1D1D890(v262, type metadata accessor for StaticService);
LABEL_139:
  if (v258)
  {
    v209 = v259;
    sub_1D1D26328(v169, v259, type metadata accessor for StaticService);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1D26328(v209, v172, type metadata accessor for StaticService);
    v172 += v257;
    v169 += v257;
    if (__CFADD__(v171++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1D22BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v96 = a5;
  v93 = a1;
  v97 = sub_1D1E669FC();
  v8 = *(v97 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v97 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v76 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v20 = &v76 - v19;
  v98 = type metadata accessor for StaticService(0);
  v21 = *(*(v98 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v98);
  v94 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v76 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v76 - v28;
  v78 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v32 = (v8 + 48);
    v79 = (v8 + 32);
    v87 = (v8 + 8);
    v33 = v30 + v31 * (a3 - 1);
    v92 = -v31;
    v34 = v93 - a3;
    v93 = v30;
    v77 = v31;
    v35 = v30 + v31 * a3;
    v89 = v20;
    v90 = &v76 - v28;
    v95 = v32;
LABEL_6:
    v85 = v33;
    v86 = a3;
    v83 = v35;
    v84 = v34;
    while (1)
    {
      sub_1D1D1D7E0(v35, v29, type metadata accessor for StaticService);
      v36 = v103;
      sub_1D1D1D7E0(v33, v103, type metadata accessor for StaticService);
      v37 = v96;
      v38 = sub_1D18E4158(v29, v96);
      v40 = v39;
      v41 = sub_1D18E4158(v36, v37);
      if (v40)
      {
        v43 = v95;
        if ((v42 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v43 = v95;
        if (v42)
        {
          goto LABEL_17;
        }

        if (v38 != v41)
        {
          v71 = v38 < v41;
          goto LABEL_31;
        }
      }

      v44 = *(v98 + 56);
      v45 = *(v91 + 48);
      sub_1D1741C08(&v29[v44], v20, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v103 + v44, &v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      v46 = *v43;
      v47 = v97;
      if ((*v43)(v20, 1, v97) == 1)
      {
        if (v46(&v20[v45], 1, v47) != 1)
        {
          sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
          v29 = v90;
LABEL_4:
          sub_1D1D1D890(v103, type metadata accessor for StaticService);
          result = sub_1D1D1D890(v29, type metadata accessor for StaticService);
LABEL_5:
          a3 = v86 + 1;
          v33 = v85 + v77;
          v34 = v84 - 1;
          v35 = v83 + v77;
          if (v86 + 1 == v78)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v48 = v88;
      sub_1D1741C08(v20, v88, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v46(&v20[v45], 1, v47) == 1)
      {
        (*v87)(v48, v47);
        sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
        v29 = v90;
LABEL_17:
        sub_1D1D1D890(v103, type metadata accessor for StaticService);
        result = sub_1D1D1D890(v29, type metadata accessor for StaticService);
        goto LABEL_32;
      }

      v49 = v80;
      sub_1D1741C08(&v20[v45], v80, &qword_1EC642570, &qword_1D1E6C6A0);
      v50 = *v79;
      v51 = v81;
      (*v79)(v81, v48, v97);
      v52 = v51;
      v53 = v97;
      v54 = v82;
      v55 = v49;
      v56 = v52;
      v50(v82, v55, v97);
      sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      if (sub_1D1E6775C())
      {
        v57 = *v87;
        (*v87)(v54, v53);
        v57(v56, v53);
        v20 = v89;
LABEL_20:
        sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
        v58 = *(v98 + 20);
        v29 = v90;
        v59 = *&v90[v58];
        v60 = *&v90[v58 + 8];
        v61 = (v103 + v58);
        v63 = *v61;
        v62 = v61[1];
        v64 = v59 == *v61 && v60 == v62;
        if (v64 || (v65 = *v61, v66 = v61[1], (sub_1D1E6904C() & 1) != 0))
        {
          v67 = sub_1D1E66A1C();
          v69 = v68;
          if (v67 == sub_1D1E66A1C() && v69 == v70)
          {

            v20 = v89;
            goto LABEL_4;
          }

          v71 = sub_1D1E6904C();

          v20 = v89;
        }

        else
        {
          v101 = v59;
          v102 = v60;
          v99 = v63;
          v100 = v62;
          sub_1D17D8EF0();
          v71 = sub_1D1E685FC() == -1;
          v20 = v89;
        }

        goto LABEL_31;
      }

      v71 = sub_1D1E6696C();
      v72 = *v87;
      (*v87)(v54, v97);
      v72(v56, v97);
      v73 = v89;
      sub_1D1741A30(&v89[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v73, &qword_1EC642570, &qword_1D1E6C6A0);
      v20 = v73;
      v29 = v90;
LABEL_31:
      sub_1D1D1D890(v103, type metadata accessor for StaticService);
      result = sub_1D1D1D890(v29, type metadata accessor for StaticService);
      if ((v71 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v93)
      {
        __break(1u);
        return result;
      }

      v74 = v94;
      sub_1D1D26328(v35, v94, type metadata accessor for StaticService);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1D26328(v74, v33, type metadata accessor for StaticService);
      v33 += v92;
      v35 += v92;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1D23454(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StaticService(0);
        v8 = sub_1D1E67C8C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for StaticService(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_1D1D21434(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1D1D22BB8(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1D235D8(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFE0(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1D23454(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1D236C0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a2;
  v36 = a4;
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - v7;
  v40 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticMediaProfile();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v17 = 0;
  v41 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v37 = (v9 + 48);
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v26 = v25 | (v17 << 6);
LABEL_12:
    sub_1D1D1D7E0(v41[7] + *(v38 + 72) * v26, v16, type metadata accessor for StaticMediaProfile);
    sub_1D1741C08(&v16[*(v39 + 72)], v8, &qword_1EC643C58, &unk_1D1E995D0);
    if ((*v37)(v8, 1, v40) == 1)
    {
      sub_1D1741A30(v8, &qword_1EC643C58, &unk_1D1E995D0);
      result = sub_1D1D1D890(v16, type metadata accessor for StaticMediaProfile);
    }

    else
    {
      v29 = v35;
      sub_1D1D26328(v8, v35, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v30 = sub_1D17C567C(v29, v36);
      sub_1D1D1D890(v29, type metadata accessor for StaticAccessory.DeviceIdentifier);
      result = sub_1D1D1D890(v16, type metadata accessor for StaticMediaProfile);
      if ((v30 & 1) == 0)
      {
        *(v33 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
          return sub_1D188BA98(v33, v32, v34, v41);
        }
      }
    }
  }

  v27 = v17;
  while (1)
  {
    v17 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      return sub_1D188BA98(v33, v32, v34, v41);
    }

    v28 = v19[v17];
    ++v27;
    if (v28)
    {
      v23 = (v28 - 1) & v28;
      v26 = __clz(__rbit64(v28)) | (v17 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D23A6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a1;
  v33 = type metadata accessor for MatterTilePath(0);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  result = MEMORY[0x1EEE9AC00](v33);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v10 = 0;
  v36 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v18 = a4 + 56;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_13:
    v22 = v19 | (v10 << 6);
    sub_1D1D1D7E0(*(v36 + 48) + *(v35 + 72) * v22, v9, type metadata accessor for MatterTilePath);
    if (*(a4 + 16) && (v23 = *&v9[*(v33 + 20)], v24 = *(a4 + 40), v25 = sub_1D1E691FC(), v26 = -1 << *(a4 + 32), v27 = v25 & ~v26, ((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v28 = ~v26;
      while (*(*(a4 + 48) + 8 * v27) != v23)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_1D1D1D890(v9, type metadata accessor for MatterTilePath);
      *(v32 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_22:
        v30 = v36;

        return sub_1D19E1D04(v32, v31, v34, v30);
      }
    }

    else
    {
LABEL_5:
      result = sub_1D1D1D890(v9, type metadata accessor for MatterTilePath);
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_22;
    }

    v21 = *(v12 + 8 * v10);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v16 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D23D00(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *MEMORY[0x1E69E9840];
  v35 = type metadata accessor for MatterTilePath(0);
  v37 = *(v35 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v32 = v10;
    v33 = v3;
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v12);
    v34 = v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v11);
    v36 = 0;
    v10 = 0;
    v38 = a1;
    v3 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(a1 + 56);
    a1 = (v13 + 63) >> 6;
    v16 = a2 + 56;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v11 = v17 | (v10 << 6);
      sub_1D1D1D7E0(*(v38 + 48) + *(v37 + 72) * v11, v8, type metadata accessor for MatterTilePath);
      if (*(a2 + 16) && (v20 = *&v8[*(v35 + 20)], v21 = *(a2 + 40), v22 = sub_1D1E691FC(), v23 = -1 << *(a2 + 32), v24 = v22 & ~v23, ((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (*(*(a2 + 48) + 8 * v24) != v20)
        {
          v24 = (v24 + 1) & v25;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_1D1D1D890(v8, type metadata accessor for MatterTilePath);
        *&v34[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_23:
          v27 = sub_1D19E1D04(v34, v32, v36, v38);

          goto LABEL_24;
        }
      }

      else
      {
LABEL_6:
        sub_1D1D1D890(v8, type metadata accessor for MatterTilePath);
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= a1)
      {
        goto LABEL_23;
      }

      v19 = *(v3 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();

  v27 = sub_1D1D209A8(v30, v10, a1, a2, sub_1D1D23A6C);

  MEMORY[0x1D3893640](v30, -1, -1);

LABEL_24:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t sub_1D1D240D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for StaticService(0);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v53 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v19 = 0;
  v48 = a3;
  v20 = *(a3 + 64);
  v42 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v46 = v17;
  v47 = a4;
  v44 = a4 + 32;
  v45 = v24;
  v25 = (v17 + 56);
  v56 = (v17 + 48);
  if (v23)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (2)
  {
    v28 = v19;
    do
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v19 >= v24)
      {
        return sub_1D188B1C8(v43, v41, v50, v48);
      }

      v29 = *(v42 + 8 * v19);
      ++v28;
    }

    while (!v29);
    v27 = __clz(__rbit64(v29));
    v51 = (v29 - 1) & v29;
LABEL_13:
    v30 = v27 | (v19 << 6);
    v31 = v48[7];
    v32 = *(v46 + 72);
    v49 = v30;
    v52 = v32;
    sub_1D1D1D7E0(v31 + v32 * v30, v53, type metadata accessor for StaticService);
    v33 = *(v47 + 16);
    if (v33)
    {
      v34 = v44;
      do
      {
        sub_1D17419CC(v34, v55);
        sub_1D17419CC(v55, v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v35 = type metadata accessor for StaticServiceGroup();
        if (swift_dynamicCast())
        {
          (*(*(v35 - 8) + 56))(v9, 0, 1, v35);
          v36 = *&v9[*(v35 + 56)];

          sub_1D1D1D890(v9, type metadata accessor for StaticServiceGroup);
          if (*(v36 + 16) && (v37 = sub_1D1742188(v53), (v38 & 1) != 0))
          {
            sub_1D1D1D7E0(*(v36 + 56) + v37 * v52, v13, type metadata accessor for StaticService);
            __swift_destroy_boxed_opaque_existential_1(v55);

            v39 = 0;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v55);
            v39 = 1;
          }

          (*v25)(v13, v39, 1, v14);
          if ((*v56)(v13, 1, v14) != 1)
          {
            sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
            result = sub_1D1D1D890(v53, type metadata accessor for StaticService);
            v24 = v45;
            v23 = v51;
            if (!v51)
            {
              goto LABEL_8;
            }

LABEL_7:
            v27 = __clz(__rbit64(v23));
            v51 = (v23 - 1) & v23;
            goto LABEL_13;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v55);
          (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
          sub_1D1741A30(v9, &qword_1EC64CC40, &unk_1D1EAADA0);
          (*v25)(v13, 1, 1, v14);
        }

        sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
        v34 += 40;
        --v33;
      }

      while (v33);
    }

    result = sub_1D1D1D890(v53, type metadata accessor for StaticService);
    *(v43 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v23 = v51;
    v26 = __OFADD__(v50++, 1);
    v24 = v45;
    if (!v26)
    {
      if (!v51)
      {
        continue;
      }

      goto LABEL_7;
    }

    break;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D1D24618(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v14 = sub_1D1D209A8(v17, v11, a1, a2, a4);
      MEMORY[0x1D3893640](v17, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v13);
  bzero(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1D1D247E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for StaticService(0);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v53 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v19 = 0;
  v48 = a3;
  v20 = *(a3 + 64);
  v42 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v46 = v17;
  v47 = a4;
  v44 = a4 + 32;
  v45 = v24;
  v25 = (v17 + 56);
  v56 = (v17 + 48);
  if (v23)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (2)
  {
    v28 = v19;
    do
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v19 >= v24)
      {
        return sub_1D188B1C8(v43, v41, v50, v48);
      }

      v29 = *(v42 + 8 * v19);
      ++v28;
    }

    while (!v29);
    v27 = __clz(__rbit64(v29));
    v51 = (v29 - 1) & v29;
LABEL_13:
    v30 = v27 | (v19 << 6);
    v31 = v48[7];
    v32 = *(v46 + 72);
    v49 = v30;
    v52 = v32;
    sub_1D1D1D7E0(v31 + v32 * v30, v53, type metadata accessor for StaticService);
    v33 = *(v47 + 16);
    if (v33)
    {
      v34 = v44;
      do
      {
        sub_1D17419CC(v34, v55);
        sub_1D17419CC(v55, v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v35 = type metadata accessor for StaticAccessory(0);
        if (swift_dynamicCast())
        {
          (*(*(v35 - 8) + 56))(v9, 0, 1, v35);
          v36 = *&v9[*(v35 + 80)];

          sub_1D1D1D890(v9, type metadata accessor for StaticAccessory);
          if (*(v36 + 16) && (v37 = sub_1D1742188(v53), (v38 & 1) != 0))
          {
            sub_1D1D1D7E0(*(v36 + 56) + v37 * v52, v13, type metadata accessor for StaticService);
            __swift_destroy_boxed_opaque_existential_1(v55);

            v39 = 0;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v55);
            v39 = 1;
          }

          (*v25)(v13, v39, 1, v14);
          if ((*v56)(v13, 1, v14) != 1)
          {
            sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
            result = sub_1D1D1D890(v53, type metadata accessor for StaticService);
            v24 = v45;
            v23 = v51;
            if (!v51)
            {
              goto LABEL_8;
            }

LABEL_7:
            v27 = __clz(__rbit64(v23));
            v51 = (v23 - 1) & v23;
            goto LABEL_13;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v55);
          (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
          sub_1D1741A30(v9, &qword_1EC6436C8, &unk_1D1E97C40);
          (*v25)(v13, 1, 1, v14);
        }

        sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
        v34 += 40;
        --v33;
      }

      while (v33);
    }

    result = sub_1D1D1D890(v53, type metadata accessor for StaticService);
    *(v43 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v23 = v51;
    v26 = __OFADD__(v50++, 1);
    v24 = v45;
    if (!v26)
    {
      if (!v51)
      {
        continue;
      }

      goto LABEL_7;
    }

    break;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D1D24D28(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a2;
  v43 = a4;
  v34 = a1;
  v5 = type metadata accessor for StaticService(0);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D1E66A7C();
  v8 = *(*(v41 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v41);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  v12 = 0;
  v44 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v37 = v10 + 16;
  v35 = 0;
  v36 = v10 + 8;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v45 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v44;
    v26 = v38;
    v25 = v39;
    v27 = v41;
    (*(v39 + 16))(v38, v44[6] + *(v39 + 72) * v23, v41);
    v28 = v23;
    v29 = v24[7] + *(v42 + 72) * v23;
    v30 = v40;
    sub_1D1D1D7E0(v29, v40, type metadata accessor for StaticService);
    LOBYTE(v24) = sub_1D1D1850C(v26, v30, v43);
    sub_1D1D1D890(v30, type metadata accessor for StaticService);
    result = (*(v25 + 8))(v26, v27);
    v18 = v45;
    if (v24)
    {
      *(v34 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v34, v33, v35, v44);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1D188B1C8(v34, v33, v35, v44);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v45 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1D25034()
{
  result = qword_1EC64DAB8;
  if (!qword_1EC64DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DAB8);
  }

  return result;
}

uint64_t sub_1D1D25088(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D1D848(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D25124()
{
  result = qword_1EC64DAD8;
  if (!qword_1EC64DAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
    sub_1D1BDC1D0();
    sub_1D1D25088(&qword_1EC644D58, &qword_1EE07B258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DAD8);
  }

  return result;
}

uint64_t sub_1D1D251E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
    sub_1D1D1D848(a2, type metadata accessor for StaticZone);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D25284()
{
  result = qword_1EC64DAF0;
  if (!qword_1EC64DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
    sub_1D1BDC498();
    sub_1D1D25088(&qword_1EC644DA0, &qword_1EC644B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DAF0);
  }

  return result;
}

uint64_t sub_1D1D25380(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75616665447369 && a2 == 0xED00006D6F6F5274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F5A636974617473 && a2 == 0xEB0000000073656ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC8090 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC80B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC80D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D1EC80F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC8110 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC8150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC8430 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8450 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001D1EC8730 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1D1D258AC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a2;
  v43 = a4;
  v34 = a1;
  v5 = type metadata accessor for StaticAccessory(0);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D1E66A7C();
  v8 = *(*(v41 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v41);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  v12 = 0;
  v44 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v37 = v10 + 16;
  v35 = 0;
  v36 = v10 + 8;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v45 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v44;
    v26 = v38;
    v25 = v39;
    v27 = v41;
    (*(v39 + 16))(v38, v44[6] + *(v39 + 72) * v23, v41);
    v28 = v23;
    v29 = v24[7] + *(v42 + 72) * v23;
    v30 = v40;
    sub_1D1D1D7E0(v29, v40, type metadata accessor for StaticAccessory);
    LOBYTE(v24) = sub_1D1D17B58(v26, v30, v43);
    sub_1D1D1D890(v30, type metadata accessor for StaticAccessory);
    result = (*(v25 + 8))(v26, v27);
    v18 = v45;
    if (v24)
    {
      *(v34 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_1D188CC38(v34, v33, v35, v44);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1D188CC38(v34, v33, v35, v44);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v45 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1D25CB0()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1D2606C(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D1D25F5C();
      if (v2 <= 0x3F)
      {
        sub_1D1D25FC0(319, &qword_1EE07B7C8, type metadata accessor for StaticAccessory);
        if (v3 <= 0x3F)
        {
          sub_1D1D25FC0(319, &qword_1EE07B7C0, type metadata accessor for StaticActionSet);
          if (v4 <= 0x3F)
          {
            sub_1D1D25FC0(319, &qword_1EE07B798, type metadata accessor for StaticCameraProfile);
            if (v5 <= 0x3F)
            {
              sub_1D1D25FC0(319, &qword_1EE07B7B0, type metadata accessor for StaticMediaSystem);
              if (v6 <= 0x3F)
              {
                sub_1D1D25FC0(319, &qword_1EE07B7A8, type metadata accessor for StaticMediaProfile);
                if (v7 <= 0x3F)
                {
                  sub_1D1D25FC0(319, &qword_1EE07B7A0, type metadata accessor for StaticServiceGroup);
                  if (v8 <= 0x3F)
                  {
                    sub_1D1D25FC0(319, &qword_1EE07B7D8, type metadata accessor for StaticService);
                    if (v9 <= 0x3F)
                    {
                      sub_1D1D2606C(319, &qword_1EE07B750, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
                      if (v10 <= 0x3F)
                      {
                        sub_1D1D260D0();
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1D25F5C()
{
  if (!qword_1EE07B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B6E8);
    }
  }
}

void sub_1D1D25FC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D1E66A7C();
    a3(255);
    sub_1D1D1D848(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v5 = sub_1D1E6769C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1D2606C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D1D260D0()
{
  if (!qword_1EE07B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1B4DF78();
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B780);
    }
  }
}

uint64_t sub_1D1D26170()
{
  v0 = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1D1D261DC()
{
  result = qword_1EC64DC38;
  if (!qword_1EC64DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC38);
  }

  return result;
}

unint64_t sub_1D1D26234()
{
  result = qword_1EC64DC40;
  if (!qword_1EC64DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC40);
  }

  return result;
}

unint64_t sub_1D1D2628C()
{
  result = qword_1EC64DC48;
  if (!qword_1EC64DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC48);
  }

  return result;
}

uint64_t sub_1D1D26328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D263B0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v6 = *(*(updated - 1) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v57[-v14];
  v15 = type metadata accessor for StaticSoftwareUpdate(0);
  v61 = *(v15 - 8);
  v16 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  sub_1D1D2EE24(v18, [a2 softwareVersion], &v66);
  v58 = v66;
  v19 = [v18 documentation];
  v62 = v15;
  if (v19)
  {
    v20 = v19;
    v21 = [v20 releaseNotes];
    if (v21 || (v21 = [v20 releaseNotesSummary]) != 0)
    {
      v22 = v21;
      v23 = [v21 stringValue];
      v60 = sub_1D1E6781C();
      v25 = v24;

      goto LABEL_7;
    }
  }

  v60 = 0;
  v25 = 0;
LABEL_7:
  v26 = a2;
  v27 = sub_1D1E669FC();
  v28 = v64;
  (*(*(v27 - 8) + 56))(v64, 1, 1, v27);
  sub_1D1741C08(v28, v13, &qword_1EC642570, &qword_1D1E6C6A0);
  v29 = [v18 displayableVersion];
  v30 = sub_1D1E6781C();
  v32 = v31;

  if ([v18 downloadSize])
  {
    v65 = [v18 downloadSize];
    v66 = sub_1D1E68FAC();
    v67 = v33;
    MEMORY[0x1D3890F70](16973, 0xE200000000000000);
    v34 = v66;
    v35 = v67;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  *v8 = v60;
  v8[1] = v25;
  sub_1D1741A90(v13, v8 + updated[5], &qword_1EC642570, &qword_1D1E6C6A0);
  v36 = (v8 + updated[6]);
  *v36 = v30;
  v36[1] = v32;
  v37 = (v8 + updated[7]);
  *v37 = v34;
  v37[1] = v35;
  v38 = v26;
  v39 = [v26 category];
  v40 = [v39 categoryType];

  v41 = sub_1D1E6781C();
  v43 = v42;

  v44 = *MEMORY[0x1E696C9B0];
  if (v41 == sub_1D1E6781C() && v43 == v45)
  {

    v46 = v62;
  }

  else
  {
    v47 = sub_1D1E6904C();

    v46 = v62;
    if ((v47 & 1) == 0)
    {
LABEL_17:
      v52 = v59;
      v53 = &v59[*(v46 + 20)];
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
      sub_1D1D30108(v8, v53, type metadata accessor for StaticSoftwareUpdateMetadata);
      *(v53 + v54) = v58;
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      swift_storeEnumTagMultiPayload();
      v55 = [v38 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1D301E4(v8, type metadata accessor for StaticSoftwareUpdateMetadata);
      sub_1D1741A30(v64, &qword_1EC642570, &qword_1D1E6C6A0);
      v51 = v63;
      sub_1D1D30558(v52, v63, type metadata accessor for StaticSoftwareUpdate);
      v50 = 0;
      return (*(v61 + 56))(v51, v50, 1, v46);
    }
  }

  v48 = [v18 documentation];
  v49 = [v48 licenseAgreement];

  if (v49)
  {

    goto LABEL_17;
  }

  sub_1D1D301E4(v8, type metadata accessor for StaticSoftwareUpdateMetadata);
  sub_1D1741A30(v64, &qword_1EC642570, &qword_1D1E6C6A0);
  v50 = 1;
  v51 = v63;
  return (*(v61 + 56))(v51, v50, 1, v46);
}

uint64_t sub_1D1D269CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticHH2Update(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  v12 = a1;
  sub_1D1D2EF78(v12, [a2 softwareVersion], &v19);
  v10[v6[5]] = v19;
  v13 = [a2 category];
  v14 = [v13 categoryType];

  v15 = &v10[v6[6]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v10[v6[7]];
  *v16 = 0;
  v16[8] = 1;
  sub_1D1D30558(v10, a3, type metadata accessor for StaticHH2Update);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_1D1D26B94@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38[-v14];
  v16 = type metadata accessor for StaticHH2Update(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v38[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *a1;
  sub_1D1D30108(v3, v23, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return swift_storeEnumTagMultiPayload();
    }

LABEL_7:
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    sub_1D1D30558(v23, a2, type metadata accessor for StaticSoftwareUpdateMetadata);
    *(a2 + v28) = v24;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  v39 = v24;
  sub_1D1D30558(v23, v19, type metadata accessor for StaticHH2Update);
  v26 = v40;
  (*(v40 + 56))(v15, 1, 1, v6);
  sub_1D1741A90(v15, v13, &qword_1EC642590, qword_1D1E71260);
  v27 = *(v26 + 48);
  if (v27(v13, 1, v6) == 1)
  {
    (*(v26 + 16))(v41, v19, v6);
    if (v27(v13, 1, v6) != 1)
    {
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v26 + 32))(v41, v13, v6);
  }

  v29 = v16[7];
  v30 = &v19[v16[6]];
  v31 = *v30;
  v32 = v30[1];
  v33 = *&v19[v29];
  LODWORD(v40) = v19[v29 + 8];
  sub_1D18614CC(v31, v32);
  sub_1D1D301E4(v19, type metadata accessor for StaticHH2Update);
  (*(v26 + 32))(a2, v41, v6);
  v34 = v40;
  *(a2 + v16[5]) = v39;
  v35 = (a2 + v16[6]);
  *v35 = v31;
  v35[1] = v32;
  v36 = a2 + v16[7];
  *v36 = v33;
  *(v36 + 8) = v34;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D1D26F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v27 = a1;
  v30 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(v27, v15, &qword_1EC642590, qword_1D1E71260);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    (*(v17 + 16))(v20, v29, v16);
    if (v21(v15, 1, v16) != 1)
    {
      sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
  }

  sub_1D1741C08(v28, v6, &qword_1EC644768, &qword_1D1E75AE0);
  v22 = *(v8 + 48);
  if (v22(v6, 1, v7) == 1)
  {
    v23 = type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1D30108(v29 + *(v23 + 20), v11, type metadata accessor for StaticSoftwareUpdate.Kind);
    if (v22(v6, 1, v7) != 1)
    {
      sub_1D1741A30(v6, &qword_1EC644768, &qword_1D1E75AE0);
    }
  }

  else
  {
    sub_1D1D30558(v6, v11, type metadata accessor for StaticSoftwareUpdate.Kind);
  }

  v24 = v30;
  (*(v17 + 32))(v30, v20, v16);
  v25 = type metadata accessor for StaticSoftwareUpdate(0);
  return sub_1D1D30558(v11, v24 + *(v25 + 20), type metadata accessor for StaticSoftwareUpdate.Kind);
}

BOOL static StaticSoftwareUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for StaticSoftwareUpdate(0) + 20);

  return _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_1D1D273EC()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D1D27414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1D274E8(uint64_t a1)
{
  v2 = sub_1D1D3006C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D27524(uint64_t a1)
{
  v2 = sub_1D1D3006C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC50, &qword_1D1EA8330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3006C();
  sub_1D1E6930C();
  v11[15] = 0;
  sub_1D1E66A7C();
  sub_1D1D300C0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v1)
  {
    v9 = *(type metadata accessor for StaticSoftwareUpdate(0) + 20);
    v11[14] = 1;
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    sub_1D1D300C0(&qword_1EC64DC60, type metadata accessor for StaticSoftwareUpdate.Kind);
    sub_1D1E68F1C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StaticSoftwareUpdate.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = v0 + *(type metadata accessor for StaticSoftwareUpdate(0) + 20);
  return StaticSoftwareUpdate.Kind.hash(into:)();
}

uint64_t StaticSoftwareUpdate.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = v0 + *(type metadata accessor for StaticSoftwareUpdate(0) + 20);
  StaticSoftwareUpdate.Kind.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D1E66A7C();
  v26 = *(v30 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC68, &unk_1D1EA8338);
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v22 - v10;
  v12 = type metadata accessor for StaticSoftwareUpdate(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3006C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v33 = 0;
  sub_1D1D300C0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v18 = v28;
  v19 = v30;
  sub_1D1E68D7C();
  (*(v17 + 32))(v24, v18, v19);
  v32 = 1;
  sub_1D1D300C0(&qword_1EC64DC70, type metadata accessor for StaticSoftwareUpdate.Kind);
  sub_1D1E68D7C();
  (*(v29 + 8))(v11, v31);
  v20 = v24;
  sub_1D1D30558(v6, &v24[*(v23 + 20)], type metadata accessor for StaticSoftwareUpdate.Kind);
  sub_1D1D30108(v20, v25, type metadata accessor for StaticSoftwareUpdate);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D301E4(v20, type metadata accessor for StaticSoftwareUpdate);
}

BOOL sub_1D1D27CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static StaticSoftwareUpdate.Kind.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1D1D27D0C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = v1 + *(a1 + 20);
  StaticSoftwareUpdate.Kind.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D27DB0(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = v2 + *(a2 + 20);
  return StaticSoftwareUpdate.Kind.hash(into:)();
}

uint64_t sub_1D1D27E3C(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = v2 + *(a2 + 20);
  StaticSoftwareUpdate.Kind.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdateMetadata.init(releaseNote:releaseDate:versionString:downloadSizeString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  result = sub_1D1741A90(a3, a8 + updated[5], &qword_1EC642570, &qword_1D1E6C6A0);
  v16 = (a8 + updated[6]);
  *v16 = a4;
  v16[1] = a5;
  v17 = (a8 + updated[7]);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t StaticSoftwareUpdateMetadata.releaseNote.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StaticSoftwareUpdateMetadata.versionString.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticSoftwareUpdateMetadata.downloadSizeString.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_1D1D2809C()
{
  v1 = 0x4E657361656C6572;
  v2 = 0x536E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x44657361656C6572;
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

uint64_t sub_1D1D28130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D32AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D28158(uint64_t a1)
{
  v2 = sub_1D1D30190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D28194(uint64_t a1)
{
  v2 = sub_1D1D30190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdateMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC78, &qword_1D1EA8348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D30190();
  sub_1D1E6930C();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_1D1E68E0C();
  if (!v2)
  {
    updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
    v14 = updated[5];
    v22[14] = 1;
    sub_1D1E669FC();
    sub_1D1D300C0(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v15 = (v3 + updated[6]);
    v16 = *v15;
    v17 = v15[1];
    v22[13] = 2;
    sub_1D1E68E0C();
    v18 = (v3 + updated[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    sub_1D1E68E0C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticSoftwareUpdateMetadata.hash(into:)()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  if (v0[1])
  {
    v10 = *v0;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  sub_1D1741C08(v0 + updated[5], v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1D300C0(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  v12 = (v0 + updated[6]);
  if (v12[1])
  {
    v13 = *v12;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v14 = (v0 + updated[7]);
  if (!v14[1])
  {
    return sub_1D1E6922C();
  }

  v15 = *v14;
  sub_1D1E6922C();
  return sub_1D1E678EC();
}

uint64_t StaticSoftwareUpdateMetadata.hashValue.getter()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  sub_1D1E6920C();
  if (v0[1])
  {
    v10 = *v0;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  sub_1D1741C08(v0 + updated[5], v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1D300C0(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  v12 = (v0 + updated[6]);
  if (v12[1])
  {
    v13 = *v12;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v14 = (v0 + updated[7]);
  if (v14[1])
  {
    v15 = *v14;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdateMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC88, &qword_1D1EA8350);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v13 = *(*(updated - 1) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v15 = (v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D30190();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v17 = v31;
  v36 = 0;
  *v15 = sub_1D1E68C6C();
  v15[1] = v18;
  v28[1] = v18;
  sub_1D1E669FC();
  v35 = 1;
  sub_1D1D300C0(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  sub_1D1741A90(v7, v15 + updated[5], &qword_1EC642570, &qword_1D1E6C6A0);
  v34 = 2;
  v19 = sub_1D1E68C6C();
  v20 = v29;
  v21 = (v15 + updated[6]);
  *v21 = v19;
  v21[1] = v22;
  v33 = 3;
  v23 = sub_1D1E68C6C();
  v25 = v24;
  (*(v17 + 8))(v11, v32);
  v26 = (v15 + updated[7]);
  *v26 = v23;
  v26[1] = v25;
  sub_1D1D30108(v15, v30, type metadata accessor for StaticSoftwareUpdateMetadata);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1D1D301E4(v15, type metadata accessor for StaticSoftwareUpdateMetadata);
}

uint64_t sub_1D1D28D64(uint64_t a1, int *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  sub_1D1E6920C();
  if (v2[1])
  {
    v13 = *v2;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v2 + a2[5], v12, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D1D300C0(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  v14 = (v2 + a2[6]);
  if (v14[1])
  {
    v15 = *v14;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v16 = (v2 + a2[7]);
  if (v16[1])
  {
    v17 = *v16;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

unint64_t sub_1D1D29048()
{
  v1 = 0x7964616572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D1D290A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D32C7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D290CC(uint64_t a1)
{
  v2 = sub_1D1D30244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D29108(uint64_t a1)
{
  v2 = sub_1D1D30244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D29144(uint64_t a1)
{
  v2 = sub_1D1D30298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D29180(uint64_t a1)
{
  v2 = sub_1D1D30298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D291BC(uint64_t a1)
{
  v2 = sub_1D1D30340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D291F8(uint64_t a1)
{
  v2 = sub_1D1D30340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D29254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E657361656C6572 && a2 == 0xEB0000000065746FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1D292E0(uint64_t a1)
{
  v2 = sub_1D1D302EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2931C(uint64_t a1)
{
  v2 = sub_1D1D302EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHH2Update.HH2State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC90, &qword_1D1EA8358);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v23 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC98, &qword_1D1EA8360);
  v27 = *(v29 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCA0, &qword_1D1EA8368);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCA8, &qword_1D1EA8370);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = v1[1];
  v23 = *v1;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D30244();
  sub_1D1E6930C();
  if (!v17)
  {
    v32 = 0;
    sub_1D1D30340();
    sub_1D1E68DFC();
    (*(v24 + 8))(v11, v25);
    return (*(v13 + 8))(v16, v12);
  }

  if (v17 == 1)
  {
    v34 = 2;
    sub_1D1D30298();
    v19 = v28;
    sub_1D1E68DFC();
    (*(v30 + 8))(v19, v31);
    return (*(v13 + 8))(v16, v12);
  }

  v33 = 1;
  sub_1D1D302EC();
  v21 = v26;
  sub_1D1E68DFC();
  v22 = v29;
  sub_1D1E68ECC();
  (*(v27 + 8))(v21, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t StaticHH2Update.HH2State.hash(into:)()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1D3892850](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1D3892850](v2);
  }

  v4 = *v0;
  MEMORY[0x1D3892850](1);

  return sub_1D1E678EC();
}

uint64_t StaticHH2Update.HH2State.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E678EC();
      return sub_1D1E6926C();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1D3892850](v3);
  return sub_1D1E6926C();
}

uint64_t StaticHH2Update.HH2State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCD0, &qword_1D1EA8378);
  v51 = *(v47 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v43 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCD8, &qword_1D1EA8380);
  v48 = *(v46 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCE0, &qword_1D1EA8388);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCE8, &unk_1D1EA8390);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D1D30244();
  v19 = v53;
  sub_1D1E692FC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v44 = v8;
  v45 = 0;
  v21 = v49;
  v20 = v50;
  v53 = v13;
  v22 = v51;
  v23 = v52;
  v24 = sub_1D1E68DDC();
  v25 = (2 * *(v24 + 16)) | 1;
  v55 = v24;
  v56 = v24 + 32;
  v57 = 0;
  v58 = v25;
  v26 = sub_1D18085C8();
  if (v26 == 3 || v57 != v58 >> 1)
  {
    v29 = sub_1D1E688EC();
    swift_allocError();
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v31 = &type metadata for StaticHH2Update.HH2State;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v26)
  {
    v59 = 0;
    sub_1D1D30340();
    v34 = v45;
    sub_1D1E68C4C();
    if (!v34)
    {
      (*(v21 + 8))(v11, v44);
      (*(v53 + 8))(v16, v12);
      swift_unknownObjectRelease();
      v35 = 0;
      v36 = 0;
LABEL_17:
      v39 = v23;
      goto LABEL_18;
    }

LABEL_9:
    (*(v53 + 8))(v16, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  if (v26 != 1)
  {
    v59 = 2;
    sub_1D1D30298();
    v37 = v45;
    sub_1D1E68C4C();
    v38 = v53;
    if (v37)
    {
      goto LABEL_9;
    }

    (*(v22 + 8))(v20, v47);
    (*(v38 + 8))(v16, v12);
    swift_unknownObjectRelease();
    v35 = 0;
    v36 = 1;
    goto LABEL_17;
  }

  v59 = 1;
  sub_1D1D302EC();
  v27 = v45;
  sub_1D1E68C4C();
  v28 = v53;
  if (v27)
  {
    goto LABEL_9;
  }

  v39 = v23;
  v40 = v46;
  v35 = sub_1D1E68D2C();
  v41 = v7;
  v36 = v42;
  (*(v48 + 8))(v41, v40);
  (*(v28 + 8))(v16, v12);
  swift_unknownObjectRelease();
LABEL_18:
  *v39 = v35;
  v39[1] = v36;
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1D1D29E68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E678EC();
      return sub_1D1E6926C();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1D3892850](v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D29EE8()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1D3892850](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1D3892850](v2);
  }

  v4 = *v0;
  MEMORY[0x1D3892850](1);

  return sub_1D1E678EC();
}

uint64_t sub_1D1D29F70()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E678EC();
      return sub_1D1E6926C();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1D3892850](v3);
  return sub_1D1E6926C();
}

uint64_t StaticHH2Update.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticHH2Update(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t StaticHH2Update.hh2State.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticHH2Update(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D18614CC(v4, v5);
}

uint64_t StaticHH2Update.installingProgress.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticHH2Update(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

unint64_t sub_1D1D2A0CC()
{
  v1 = 25705;
  v2 = 0x6574617453326868;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_1D1D2A13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D32DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D2A164(uint64_t a1)
{
  v2 = sub_1D1D303B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2A1A0(uint64_t a1)
{
  v2 = sub_1D1D303B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHH2Update.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCF0, &qword_1D1EA83A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D303B4();
  sub_1D1E6930C();
  LOBYTE(v19) = 0;
  sub_1D1E66A7C();
  sub_1D1D300C0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticHH2Update(0);
    LOBYTE(v19) = *(v3 + v11[5]);
    v21 = 1;
    sub_1D1807450();
    sub_1D1E68F1C();
    v12 = (v3 + v11[6]);
    v13 = v12[1];
    v19 = *v12;
    v20 = v13;
    v21 = 2;
    sub_1D18614CC(v19, v13);
    sub_1D1D30408();
    sub_1D1E68F1C();
    sub_1D18614E0(v19, v20);
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v19) = 3;
    sub_1D1E68E2C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticHH2Update.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticHH2Update(0);
  v2 = *(v0 + v1[5]);
  if ((v2 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v3 = v2 & 1;
  }

  else
  {
    v3 = qword_1D1EAA0D0[(v2 - 2)];
  }

  MEMORY[0x1D3892850](v3);
  v4 = (v0 + v1[6]);
  v5 = v4[1];
  if (!v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v6 = 2;
LABEL_8:
    MEMORY[0x1D3892850](v6);
    goto LABEL_10;
  }

  v7 = *v4;
  MEMORY[0x1D3892850](1);
  sub_1D1E678EC();
LABEL_10:
  v8 = (v0 + v1[7]);
  if (*(v8 + 8) == 1)
  {
    return sub_1D1E6922C();
  }

  v10 = *v8;
  sub_1D1E6922C();
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1D3892890](v11);
}

uint64_t StaticHH2Update.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticHH2Update(0);
  v2 = *(v0 + v1[5]);
  if ((v2 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v3 = v2 & 1;
  }

  else
  {
    v3 = qword_1D1EAA0D0[(v2 - 2)];
  }

  MEMORY[0x1D3892850](v3);
  v4 = (v0 + v1[6]);
  v5 = v4[1];
  if (!v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v6 = 2;
LABEL_8:
    MEMORY[0x1D3892850](v6);
    goto LABEL_10;
  }

  v7 = *v4;
  MEMORY[0x1D3892850](1);
  sub_1D1E678EC();
LABEL_10:
  v8 = (v0 + v1[7]);
  if (*(v8 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v9 = *v8;
    sub_1D1E6922C();
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1D3892890](v10);
  }

  return sub_1D1E6926C();
}

uint64_t StaticHH2Update.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1D1E66A7C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD08, &qword_1D1EA83A8);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for StaticHH2Update(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D303B4();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v26;
  LOBYTE(v30) = 0;
  sub_1D1D300C0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  (*(v17 + 32))(v14, v29, v4);
  v31 = 1;
  sub_1D18074A4();
  sub_1D1E68D7C();
  v18 = v11;
  *(v16 + *(v11 + 20)) = v30;
  v31 = 2;
  sub_1D1D3045C();
  sub_1D1E68D7C();
  *(v16 + *(v11 + 24)) = v30;
  LOBYTE(v30) = 3;
  v19 = sub_1D1E68C8C();
  v21 = v20;
  (*(v27 + 8))(v10, v28);
  v22 = v16 + *(v18 + 28);
  *v22 = v19;
  *(v22 + 8) = v21 & 1;
  sub_1D1D30108(v16, v25, type metadata accessor for StaticHH2Update);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D301E4(v16, type metadata accessor for StaticHH2Update);
}

uint64_t sub_1D1D2AB8C(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = *(v2 + a2[5]);
  if ((v4 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v5 = v4 & 1;
  }

  else
  {
    v5 = qword_1D1EAA0D0[(v4 - 2)];
  }

  MEMORY[0x1D3892850](v5);
  v6 = (v2 + a2[6]);
  v7 = v6[1];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v8 = 2;
LABEL_8:
    MEMORY[0x1D3892850](v8);
    goto LABEL_10;
  }

  v9 = *v6;
  MEMORY[0x1D3892850](1);
  sub_1D1E678EC();
LABEL_10:
  v10 = (v2 + a2[7]);
  if (*(v10 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v11 = *v10;
    sub_1D1E6922C();
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1D3892890](v12);
  }

  return sub_1D1E6926C();
}

unint64_t sub_1D1D2AD34()
{
  v1 = 0x50656D6F48316868;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0x50656D6F48326868;
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

uint64_t sub_1D1D2ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D32F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D2ADD0(uint64_t a1)
{
  v2 = sub_1D1D304B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2AE0C(uint64_t a1)
{
  v2 = sub_1D1D304B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2AE48(uint64_t a1)
{
  v2 = sub_1D1D30614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2AE84(uint64_t a1)
{
  v2 = sub_1D1D30614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2AEC0(uint64_t a1)
{
  v2 = sub_1D1D30668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2AEFC(uint64_t a1)
{
  v2 = sub_1D1D30668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2AF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1D2B010(uint64_t a1)
{
  v2 = sub_1D1D305C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2B04C(uint64_t a1)
{
  v2 = sub_1D1D305C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2B088(uint64_t a1)
{
  v2 = sub_1D1D30504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2B0C4(uint64_t a1)
{
  v2 = sub_1D1D30504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.Kind.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD18, &qword_1D1EA83B0);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD20, &qword_1D1EA83B8);
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD28, &qword_1D1EA83C0);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v54 - v10;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v11 = *(*(updated - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](updated);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD30, &qword_1D1EA83C8);
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = type metadata accessor for StaticHH2Update(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD38, &unk_1D1EA83D0);
  v71 = *(v27 - 8);
  v72 = v27;
  v28 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v54 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D304B0();
  v70 = v30;
  sub_1D1E6930C();
  sub_1D1D30108(v69, v26, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
      v38 = v62;
      sub_1D1D30558(v26, v62, type metadata accessor for StaticSoftwareUpdateMetadata);
      v82 = 2;
      sub_1D1D305C0();
      v39 = v65;
      v40 = v72;
      v41 = v70;
      sub_1D1E68DFC();
      v81 = 0;
      sub_1D1D300C0(&qword_1EC64DD58, type metadata accessor for StaticSoftwareUpdateMetadata);
      v42 = v67;
      v43 = v73;
      sub_1D1E68F1C();
      if (!v43)
      {
        v80 = v37;
        v79 = 1;
        sub_1D1807450();
        sub_1D1E68F1C();
      }

      (*(v66 + 8))(v39, v42);
      sub_1D1D301E4(v38, type metadata accessor for StaticSoftwareUpdateMetadata);
      return (*(v71 + 8))(v41, v40);
    }

    else
    {
      v83 = 3;
      sub_1D1D30504();
      v51 = v57;
      v52 = v72;
      v53 = v70;
      sub_1D1E68DFC();
      (*(v58 + 8))(v51, v59);
      return (*(v71 + 8))(v53, v52);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v44 = v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    v45 = v60;
    sub_1D1D30558(v26, v60, type metadata accessor for StaticSoftwareUpdateMetadata);
    v78 = 1;
    sub_1D1D30614();
    v46 = v61;
    v47 = v72;
    v48 = v70;
    sub_1D1E68DFC();
    v77 = 0;
    sub_1D1D300C0(&qword_1EC64DD58, type metadata accessor for StaticSoftwareUpdateMetadata);
    v49 = v64;
    v50 = v73;
    sub_1D1E68F1C();
    if (!v50)
    {
      v76 = v44;
      v75 = 1;
      sub_1D1807450();
      sub_1D1E68F1C();
    }

    (*(v63 + 8))(v46, v49);
    sub_1D1D301E4(v45, type metadata accessor for StaticSoftwareUpdateMetadata);
    return (*(v71 + 8))(v48, v47);
  }

  else
  {
    sub_1D1D30558(v26, v22, type metadata accessor for StaticHH2Update);
    v74 = 0;
    sub_1D1D30668();
    v33 = v72;
    v34 = v70;
    sub_1D1E68DFC();
    sub_1D1D300C0(&qword_1EC64CDA0, type metadata accessor for StaticHH2Update);
    v35 = v56;
    sub_1D1E68F1C();
    (*(v55 + 8))(v18, v35);
    sub_1D1D301E4(v22, type metadata accessor for StaticHH2Update);
    return (*(v71 + 8))(v34, v33);
  }
}

uint64_t StaticSoftwareUpdate.Kind.hash(into:)()
{
  v1 = v0;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v3 = *(*(updated - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](updated - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = type metadata accessor for StaticHH2Update(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1D30108(v1, v16, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x1D3892850](3);
    }

    v20 = v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    sub_1D1D30558(v16, v6, type metadata accessor for StaticSoftwareUpdateMetadata);
    MEMORY[0x1D3892850](2);
    StaticSoftwareUpdateMetadata.hash(into:)();
    if ((v20 - 2) >= 6u)
    {
      MEMORY[0x1D3892850](5);
      v21 = v20 & 1;
    }

    else
    {
      v21 = qword_1D1EAA0D0[(v20 - 2)];
    }

    MEMORY[0x1D3892850](v21);
    v28 = type metadata accessor for StaticSoftwareUpdateMetadata;
    v29 = v6;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D1D30558(v16, v12, type metadata accessor for StaticHH2Update);
      MEMORY[0x1D3892850](0);
      sub_1D1E66A7C();
      sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v18 = v12[v9[5]];
      if ((v18 - 2) >= 6u)
      {
        MEMORY[0x1D3892850](5);
        v19 = v18 & 1;
      }

      else
      {
        v19 = qword_1D1EAA0D0[(v18 - 2)];
      }

      MEMORY[0x1D3892850](v19);
      v25 = &v12[v9[6]];
      v26 = *(v25 + 1);
      if (v26)
      {
        if (v26 != 1)
        {
          v30 = *v25;
          MEMORY[0x1D3892850](1);
          sub_1D1E678EC();
          goto LABEL_22;
        }

        v27 = 2;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x1D3892850](v27);
LABEL_22:
      v31 = &v12[v9[7]];
      if (v31[8] == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v32 = *v31;
        sub_1D1E6922C();
        if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        MEMORY[0x1D3892890](v33);
      }

      v28 = type metadata accessor for StaticHH2Update;
      v29 = v12;
      return sub_1D1D301E4(v29, v28);
    }

    v22 = v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    sub_1D1D30558(v16, v8, type metadata accessor for StaticSoftwareUpdateMetadata);
    MEMORY[0x1D3892850](1);
    StaticSoftwareUpdateMetadata.hash(into:)();
    if ((v22 - 2) >= 6u)
    {
      MEMORY[0x1D3892850](5);
      v23 = v22 & 1;
    }

    else
    {
      v23 = qword_1D1EAA0D0[(v22 - 2)];
    }

    MEMORY[0x1D3892850](v23);
    v28 = type metadata accessor for StaticSoftwareUpdateMetadata;
    v29 = v8;
  }

  return sub_1D1D301E4(v29, v28);
}

uint64_t StaticSoftwareUpdate.Kind.hashValue.getter()
{
  sub_1D1E6920C();
  StaticSoftwareUpdate.Kind.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD70, &qword_1D1EA83E0);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD78, &qword_1D1EA83E8);
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD80, &qword_1D1EA83F0);
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD88, &qword_1D1EA83F8);
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD90, &qword_1D1EA8400);
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v67 - v17;
  v19 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v67 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v67 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D1D304B0();
  v34 = v86;
  sub_1D1E692FC();
  if (!v34)
  {
    v67 = v29;
    v68 = v26;
    v35 = v84;
    v69 = v23;
    v37 = v82;
    v36 = v83;
    v70 = v31;
    v86 = v19;
    v39 = v80;
    v38 = v81;
    v40 = v85;
    v41 = sub_1D1E68DDC();
    v42 = (2 * *(v41 + 16)) | 1;
    v88 = v41;
    v89 = v41 + 32;
    v90 = 0;
    v91 = v42;
    v43 = sub_1D18085BC();
    if (v43 == 4 || v90 != v91 >> 1)
    {
      v47 = sub_1D1E688EC();
      swift_allocError();
      v48 = v18;
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v50 = v86;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v47 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v47);
      swift_willThrow();
      (*(v39 + 8))(v48, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v43 > 1u)
      {
        v53 = v38;
        if (v43 == 2)
        {
          v92 = 2;
          sub_1D1D305C0();
          v54 = v36;
          sub_1D1E68C4C();
          v58 = v40;
          type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v92 = 0;
          sub_1D1D300C0(&qword_1EC64DD98, type metadata accessor for StaticSoftwareUpdateMetadata);
          v59 = v69;
          sub_1D1E68D7C();
          v60 = v54;
          v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
          v92 = 1;
          sub_1D18074A4();
          v64 = v78;
          sub_1D1E68D7C();
          (*(v77 + 8))(v60, v64);
          (*(v39 + 8))(v18, v53);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v66 = v70;
          sub_1D1D30558(v59, v70, type metadata accessor for StaticSoftwareUpdate.Kind);
        }

        else
        {
          v92 = 3;
          sub_1D1D30504();
          sub_1D1E68C4C();
          v58 = v40;
          (*(v73 + 8))(v35, v74);
          (*(v39 + 8))(v18, v38);
          swift_unknownObjectRelease();
          v66 = v70;
          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v84 = v18;
        v44 = v39;
        if (v43)
        {
          v92 = 1;
          sub_1D1D30614();
          sub_1D1E68C4C();
          type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v92 = 0;
          sub_1D1D300C0(&qword_1EC64DD98, type metadata accessor for StaticSoftwareUpdateMetadata);
          v61 = v68;
          v62 = v76;
          sub_1D1E68D7C();
          v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
          v92 = 1;
          sub_1D18074A4();
          sub_1D1E68D7C();
          (*(v75 + 8))(v37, v62);
          (*(v44 + 8))(v84, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v61;
        }

        else
        {
          v92 = 0;
          sub_1D1D30668();
          v45 = v79;
          v46 = v84;
          sub_1D1E68C4C();
          type metadata accessor for StaticHH2Update(0);
          sub_1D1D300C0(&qword_1EC64CE48, type metadata accessor for StaticHH2Update);
          v55 = v67;
          v56 = v72;
          sub_1D1E68D7C();
          (*(v71 + 8))(v45, v56);
          (*(v44 + 8))(v46, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v55;
        }

        v66 = v70;
        sub_1D1D30558(v57, v70, type metadata accessor for StaticSoftwareUpdate.Kind);
        v58 = v40;
      }

      sub_1D1D30558(v66, v58, type metadata accessor for StaticSoftwareUpdate.Kind);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t sub_1D1D2CA6C()
{
  sub_1D1E6920C();
  StaticSoftwareUpdate.Kind.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D2CAB0()
{
  sub_1D1E6920C();
  StaticSoftwareUpdate.Kind.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D2CB34()
{
  if (*v0)
  {
    result = 0x7571655272657375;
  }

  else
  {
    result = 0x65746F6D6572;
  }

  *v0;
  return result;
}

uint64_t sub_1D1D2CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746F6D6572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7571655272657375 && a2 == 0xED00006465747365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1D2CC58(uint64_t a1)
{
  v2 = sub_1D1D306BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2CC94(uint64_t a1)
{
  v2 = sub_1D1D306BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2CCD0(uint64_t a1)
{
  v2 = sub_1D1D30764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2CD0C(uint64_t a1)
{
  v2 = sub_1D1D30764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2CD48(uint64_t a1)
{
  v2 = sub_1D1D30710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2CD84(uint64_t a1)
{
  v2 = sub_1D1D30710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.InstallingStateType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDA0, &qword_1D1EA8408);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDA8, &qword_1D1EA8410);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDB0, &qword_1D1EA8418);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D306BC();
  sub_1D1E6930C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D1D30710();
    v18 = v22;
    sub_1D1E68DFC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D1D30764();
    sub_1D1E68DFC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t StaticSoftwareUpdate.InstallingStateType.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.InstallingStateType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDD0, &qword_1D1EA8420);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDD8, &qword_1D1EA8428);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDE0, &qword_1D1EA8430);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D306BC();
  v16 = v36;
  sub_1D1E692FC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D1E68DDC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D18085D0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D1E688EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v26 = &type metadata for StaticSoftwareUpdate.InstallingStateType;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D1D30710();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D1D30764();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1D1D2D5D0(uint64_t a1)
{
  v2 = sub_1D1D30A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D60C(uint64_t a1)
{
  v2 = sub_1D1D30A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D648()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x696C6C6174736E69;
  if (v1 != 5)
  {
    v3 = 0x656C6C6174736E69;
  }

  v4 = 0x64616F6C6E776F64;
  if (v1 != 3)
  {
    v4 = 0x6574736575716572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C62616C69617661;
  if (v1 != 1)
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1D2D738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D33070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D2D760(uint64_t a1)
{
  v2 = sub_1D1D307B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D79C(uint64_t a1)
{
  v2 = sub_1D1D307B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D7D8(uint64_t a1)
{
  v2 = sub_1D1D3095C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D814(uint64_t a1)
{
  v2 = sub_1D1D3095C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D850(uint64_t a1)
{
  v2 = sub_1D1D309B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D88C(uint64_t a1)
{
  v2 = sub_1D1D309B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D8C8(uint64_t a1)
{
  v2 = sub_1D1D3080C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D904(uint64_t a1)
{
  v2 = sub_1D1D3080C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D940(uint64_t a1)
{
  v2 = sub_1D1D30860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D97C(uint64_t a1)
{
  v2 = sub_1D1D30860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D9B8(uint64_t a1)
{
  v2 = sub_1D1D30A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D9F4(uint64_t a1)
{
  v2 = sub_1D1D30A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2DA30(uint64_t a1)
{
  v2 = sub_1D1D30908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2DA6C(uint64_t a1)
{
  v2 = sub_1D1D30908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDE8, &qword_1D1EA8438);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDF0, &qword_1D1EA8440);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDF8, &qword_1D1EA8448);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE00, &qword_1D1EA8450);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE08, &qword_1D1EA8458);
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE10, &qword_1D1EA8460);
  v44 = *(v18 - 8);
  v19 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE18, &qword_1D1EA8468);
  v43 = *(v22 - 8);
  v23 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE20, &qword_1D1EA8470);
  v60 = *(v26 - 8);
  v61 = v26;
  v27 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = *v1;
  v29 = a1[3];
  v30 = a1[4];
  v31 = a1;
  v33 = &v42 - v32;
  __swift_project_boxed_opaque_existential_1(v31, v29);
  sub_1D1D307B8();
  sub_1D1E6930C();
  if (v28 > 4)
  {
    switch(v28)
    {
      case 5:
        v65 = 3;
        sub_1D1D3095C();
        v34 = v48;
        v35 = v61;
        sub_1D1E68DFC();
        v37 = v49;
        v36 = v50;
        goto LABEL_15;
      case 6:
        v66 = 4;
        sub_1D1D30908();
        v34 = v51;
        v35 = v61;
        sub_1D1E68DFC();
        v37 = v52;
        v36 = v53;
        goto LABEL_15;
      case 7:
        v69 = 6;
        sub_1D1D3080C();
        v34 = v54;
        v35 = v61;
        sub_1D1E68DFC();
        v37 = v56;
        v36 = v57;
        goto LABEL_15;
    }

LABEL_12:
    v68 = 5;
    sub_1D1D30860();
    v38 = v55;
    v39 = v61;
    sub_1D1E68DFC();
    v67 = v28 & 1;
    sub_1D1D308B4();
    v40 = v59;
    sub_1D1E68F1C();
    (*(v58 + 8))(v38, v40);
    return (*(v60 + 8))(v33, v39);
  }

  switch(v28)
  {
    case 2:
      v62 = 0;
      sub_1D1D30A58();
      v35 = v61;
      sub_1D1E68DFC();
      (*(v43 + 8))(v25, v22);
      break;
    case 3:
      v63 = 1;
      sub_1D1D30A04();
      v35 = v61;
      sub_1D1E68DFC();
      (*(v44 + 8))(v21, v18);
      break;
    case 4:
      v64 = 2;
      sub_1D1D309B0();
      v34 = v45;
      v35 = v61;
      sub_1D1E68DFC();
      v37 = v46;
      v36 = v47;
LABEL_15:
      (*(v37 + 8))(v34, v36);
      return (*(v60 + 8))(v33, v35);
    default:
      goto LABEL_12;
  }

  return (*(v60 + 8))(v33, v35);
}

uint64_t StaticSoftwareUpdate.State.hash(into:)()
{
  v1 = *v0;
  if ((*v0 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_1D1EAA0D0[(*v0 - 2)];
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t StaticSoftwareUpdate.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if ((v1 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_1D1EAA0D0[(v1 - 2)];
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.State.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE70, &qword_1D1EA8478);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE78, &qword_1D1EA8480);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE80, &qword_1D1EA8488);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE88, &qword_1D1EA8490);
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v56 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE90, &qword_1D1EA8498);
  v61 = *(v62 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v72 = &v56 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE98, &qword_1D1EA84A0);
  v59 = *(v60 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DEA0, &qword_1D1EA84A8);
  v58 = *(v20 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DEA8, &qword_1D1EA84B0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v56 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D1D307B8();
  v31 = v78;
  sub_1D1E692FC();
  if (!v31)
  {
    v32 = v23;
    v56 = v20;
    v57 = v19;
    v34 = v74;
    v33 = v75;
    v35 = v76;
    v78 = v25;
    v36 = sub_1D1E68DDC();
    v37 = (2 * *(v36 + 16)) | 1;
    v79 = v36;
    v80 = v36 + 32;
    v81 = 0;
    v82 = v37;
    v38 = sub_1D18085C4();
    v39 = v28;
    if (v38 != 7 && v81 == v82 >> 1)
    {
      if (v38 <= 2u)
      {
        if (v38)
        {
          if (v38 == 1)
          {
            v83 = 1;
            sub_1D1D30A04();
            v52 = v57;
            sub_1D1E68C4C();
            (*(v59 + 8))(v52, v60);
            (*(v78 + 8))(v39, v24);
            swift_unknownObjectRelease();
            v45 = 3;
          }

          else
          {
            v83 = 2;
            sub_1D1D309B0();
            v54 = v72;
            sub_1D1E68C4C();
            (*(v61 + 8))(v54, v62);
            (*(v78 + 8))(v39, v24);
            swift_unknownObjectRelease();
            v45 = 4;
          }
        }

        else
        {
          v83 = 0;
          sub_1D1D30A58();
          sub_1D1E68C4C();
          (*(v58 + 8))(v32, v56);
          (*(v78 + 8))(v28, v24);
          swift_unknownObjectRelease();
          v45 = 2;
        }
      }

      else
      {
        v40 = v28;
        if (v38 <= 4u)
        {
          v41 = v77;
          v42 = v78;
          v43 = v73;
          if (v38 == 3)
          {
            v83 = 3;
            sub_1D1D3095C();
            v44 = v71;
            sub_1D1E68C4C();
            (*(v63 + 8))(v44, v64);
            (*(v42 + 8))(v40, v24);
            swift_unknownObjectRelease();
            v45 = 5;
          }

          else
          {
            v83 = 4;
            sub_1D1D30908();
            sub_1D1E68C4C();
            (*(v65 + 8))(v34, v66);
            (*(v42 + 8))(v40, v24);
            swift_unknownObjectRelease();
            v45 = 6;
          }

          v50 = v41;
          goto LABEL_22;
        }

        v53 = v78;
        if (v38 == 5)
        {
          v83 = 5;
          sub_1D1D30860();
          sub_1D1E68C4C();
          sub_1D1D30AAC();
          v55 = v70;
          sub_1D1E68D7C();
          (*(v69 + 8))(v33, v55);
          (*(v53 + 8))(v40, v24);
          swift_unknownObjectRelease();
          v45 = v83;
        }

        else
        {
          v83 = 6;
          sub_1D1D3080C();
          sub_1D1E68C4C();
          (*(v67 + 8))(v35, v68);
          (*(v53 + 8))(v40, v24);
          swift_unknownObjectRelease();
          v45 = 7;
        }
      }

      v50 = v77;
      v43 = v73;
LABEL_22:
      *v43 = v45;
      return __swift_destroy_boxed_opaque_existential_1(v50);
    }

    v46 = sub_1D1E688EC();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v48 = &type metadata for StaticSoftwareUpdate.State;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    (*(v78 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v50 = v77;
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_1D1D2ED24()
{
  v1 = *v0;
  if ((*v0 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_1D1EAA0D0[(*v0 - 2)];
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t sub_1D1D2ED80()
{
  v1 = *v0;
  sub_1D1E6920C();
  if ((v1 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_1D1EAA0D0[(v1 - 2)];
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

void sub_1D1D2EE24(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 state];
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:

        v7 = 0;
        goto LABEL_22;
      case 4:
        v8 = [a1 version];
        if (v8)
        {
          v9 = v8;
          if (!a2)
          {

            goto LABEL_13;
          }

          sub_1D1D332D0();
          v10 = sub_1D1E684FC();

          if ((v10 & 1) == 0)
          {
LABEL_13:
            v7 = 2;
            goto LABEL_22;
          }
        }

        else
        {

          if (a2)
          {

            goto LABEL_13;
          }
        }

        v7 = 7;
        goto LABEL_22;
      case 5:

        v7 = 6;
        goto LABEL_22;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!v6)
  {

    v7 = 3;
    goto LABEL_22;
  }

  if (v6 == 1)
  {

    v7 = 4;
    goto LABEL_22;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v7 = 5;
LABEL_22:
  *a3 = v7;
}

void sub_1D1D2EF78(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v4 = a1;
  switch([a1 status])
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 0x11uLL:
      v7 = [v4 version];
      if (v7)
      {
        v8 = v7;
        if (a2)
        {
          sub_1D1D332D0();
          v9 = sub_1D1E684FC();

          if ((v9 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_12;
        }

LABEL_16:
        goto LABEL_17;
      }

      if (a2)
      {
        v4 = a2;
        goto LABEL_16;
      }

LABEL_12:
      v6 = 7;
LABEL_18:
      *a3 = v6;
      return;
    case 3uLL:

      v6 = 3;
      goto LABEL_18;
    case 4uLL:
    case 5uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x12uLL:

      v6 = 4;
      goto LABEL_18;
    case 6uLL:
    case 7uLL:
    case 8uLL:

      v6 = 5;
      goto LABEL_18;
    case 9uLL:
    case 0xAuLL:

      v6 = 0;
      goto LABEL_18;
    case 0xBuLL:

      v6 = 7;
      goto LABEL_18;
    default:

LABEL_17:
      v6 = 2;
      goto LABEL_18;
  }
}

uint64_t sub_1D1D2F0C0@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for StaticHH2Update(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticSoftwareUpdate(0);
  sub_1D1D30108(v1 + *(v11 + 20), v10, type metadata accessor for StaticSoftwareUpdate.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_1D1D30558(v10, v6, type metadata accessor for StaticHH2Update);
      if (*&v6[*(v3 + 24) + 8])
      {
        v13 = v6[*(v3 + 20)];
      }

      else
      {
        v13 = 8;
      }

      v14 = type metadata accessor for StaticHH2Update;
      v15 = v6;
      goto LABEL_10;
    }

LABEL_6:
    v13 = v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    v14 = type metadata accessor for StaticSoftwareUpdateMetadata;
    v15 = v10;
LABEL_10:
    result = sub_1D1D301E4(v15, v14);
    goto LABEL_11;
  }

  if (result == 2)
  {
    goto LABEL_6;
  }

  v13 = 3;
LABEL_11:
  *a1 = v13;
  return result;
}

uint64_t _s13HomeDataModel15StaticHH2UpdateV0E5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1D18614E0(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1D18614E0(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_1D1E6904C();
      sub_1D18614CC(v4, v5);
      sub_1D18614CC(v2, v3);
      sub_1D18614E0(v2, v3);
      sub_1D18614E0(v4, v5);
      return v11 & 1;
    }

    sub_1D18614CC(v9, v3);
    sub_1D18614CC(v2, v3);
    sub_1D18614E0(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1D18614CC(*a2, *(a2 + 8));
    sub_1D18614CC(v2, v3);
    sub_1D18614E0(v2, v3);
    sub_1D18614E0(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_1D18614E0(*a1, 1uLL);
  sub_1D18614E0(v4, 1uLL);
  return v6;
}

BOOL _s13HomeDataModel15StaticHH2UpdateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticHH2Update(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 > 4)
  {
    switch(v6)
    {
      case 5:
        if (v7 != 5)
        {
          return 0;
        }

        goto LABEL_23;
      case 6:
        if (v7 != 6)
        {
          return 0;
        }

        goto LABEL_23;
      case 7:
        if (v7 != 7)
        {
          return 0;
        }

        goto LABEL_23;
    }

LABEL_17:
    if (v7 - 2) < 6 || ((v7 ^ v6))
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v6 != 4)
  {
    goto LABEL_17;
  }

  if (v7 != 4)
  {
    return 0;
  }

LABEL_23:
  v8 = v4;
  v9 = *(v4 + 24);
  v10 = *(a1 + v9 + 8);
  v22 = *(a1 + v9);
  v23 = v10;
  v11 = (a2 + v9);
  v12 = v11[1];
  v20 = *v11;
  v21 = v12;
  sub_1D18614CC(v22, v10);
  sub_1D18614CC(v20, v12);
  updated = _s13HomeDataModel15StaticHH2UpdateV0E5StateO2eeoiySbAE_AEtFZ_0(&v22, &v20);
  sub_1D18614E0(v20, v21);
  sub_1D18614E0(v22, v23);
  if (updated)
  {
    v14 = *(v8 + 28);
    v15 = (a1 + v14);
    v16 = *(a1 + v14 + 8);
    v17 = (a2 + v14);
    v18 = *(a2 + v14 + 8);
    if ((v16 & 1) == 0)
    {
      if (*v15 != *v17)
      {
        v18 = 1;
      }

      return (v18 & 1) == 0;
    }

    if (v18)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s13HomeDataModel20StaticSoftwareUpdateV5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 4)
  {
    switch(v2)
    {
      case 2u:
        return v3 == 2;
      case 3u:
        return v3 == 3;
      case 4u:
        return v3 == 4;
    }

LABEL_16:
    if ((v3 - 2) >= 6)
    {
      return ((v3 ^ v2) & 1) == 0;
    }

    return 0;
  }

  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 != 6)
  {
    if (v2 == 7)
    {
      return v3 == 7;
    }

    goto LABEL_16;
  }

  return v3 == 6;
}

uint64_t _s13HomeDataModel28StaticSoftwareUpdateMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v20 = a1;
  v21 = a2;
  v42 = updated;
  v43 = v20;
  v22 = *(updated + 20);
  v23 = *(v13 + 48);
  sub_1D1741C08(v20 + v22, v16, &qword_1EC642570, &qword_1D1E6C6A0);
  v24 = v21 + v22;
  v25 = v21;
  sub_1D1741C08(v24, &v16[v23], &qword_1EC642570, &qword_1D1E6C6A0);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) != 1)
  {
    sub_1D1741C08(v16, v12, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v26(&v16[v23], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v23], v4);
      sub_1D1D300C0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      v28 = sub_1D1E6775C();
      v29 = *(v5 + 8);
      v29(v8, v4);
      v29(v12, v4);
      v25 = v21;
      sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_1D1741A30(v16, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  if (v26(&v16[v23], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_17:
  v31 = v42;
  v30 = v43;
  v32 = *(v42 + 24);
  v33 = (v43 + v32);
  v34 = *(v43 + v32 + 8);
  v35 = (v25 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = *(v31 + 28);
  v38 = (v30 + v37);
  v39 = *(v30 + v37 + 8);
  v40 = (v25 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (sub_1D1E6904C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v41)
  {
    return 1;
  }

  return 0;
}

BOOL _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v5 = *(*(updated - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](updated - 8);
  v46 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v45 = (&v45 - v8);
  v9 = type metadata accessor for StaticHH2Update(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v45 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E0C0, &qword_1D1EAA0C8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v45 - v26;
  v28 = &v45 + *(v25 + 56) - v26;
  sub_1D1D30108(a1, &v45 - v26, type metadata accessor for StaticSoftwareUpdate.Kind);
  sub_1D1D30108(a2, v28, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_26:
        sub_1D1741A30(v27, &qword_1EC64E0C0, &qword_1D1EAA0C8);
        return 0;
      }

      goto LABEL_22;
    }

    sub_1D1D30108(v27, v17, type metadata accessor for StaticSoftwareUpdate.Kind);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    v33 = *(v17 + v32);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v30 = type metadata accessor for StaticSoftwareUpdateMetadata;
      v31 = v17;
      goto LABEL_25;
    }

    v34 = v28[v32];
    v35 = v28;
    v36 = v46;
    sub_1D1D30558(v35, v46, type metadata accessor for StaticSoftwareUpdateMetadata);
    v37 = _s13HomeDataModel28StaticSoftwareUpdateMetadataV2eeoiySbAC_ACtFZ_0(v17, v36);
    sub_1D1D301E4(v36, type metadata accessor for StaticSoftwareUpdateMetadata);
    sub_1D1D301E4(v17, type metadata accessor for StaticSoftwareUpdateMetadata);
    if (v37)
    {
      if (v33 > 4)
      {
        switch(v33)
        {
          case 5:
            goto LABEL_41;
          case 6:
            goto LABEL_45;
          case 7:
            goto LABEL_37;
        }
      }

      else
      {
        switch(v33)
        {
          case 2:
            goto LABEL_39;
          case 3:
            goto LABEL_43;
          case 4:
            goto LABEL_19;
        }
      }

      if (v34 - 2) < 6 || ((v34 ^ v33))
      {
        goto LABEL_49;
      }

      goto LABEL_22;
    }

LABEL_49:
    sub_1D1D301E4(v27, type metadata accessor for StaticSoftwareUpdate.Kind);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D1D30108(v27, v20, type metadata accessor for StaticSoftwareUpdate.Kind);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    v39 = *(v20 + v38);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for StaticSoftwareUpdateMetadata;
      v31 = v20;
      goto LABEL_25;
    }

    v34 = v28[v38];
    v40 = v28;
    v41 = v45;
    sub_1D1D30558(v40, v45, type metadata accessor for StaticSoftwareUpdateMetadata);
    v42 = _s13HomeDataModel28StaticSoftwareUpdateMetadataV2eeoiySbAC_ACtFZ_0(v20, v41);
    sub_1D1D301E4(v41, type metadata accessor for StaticSoftwareUpdateMetadata);
    sub_1D1D301E4(v20, type metadata accessor for StaticSoftwareUpdateMetadata);
    if (v42)
    {
      if (v39 <= 4)
      {
        if (v39 != 2)
        {
          if (v39 != 3)
          {
            if (v39 == 4)
            {
LABEL_19:
              if (v34 != 4)
              {
                goto LABEL_49;
              }

LABEL_22:
              sub_1D1D301E4(v27, type metadata accessor for StaticSoftwareUpdate.Kind);
              return 1;
            }

LABEL_47:
            if (v34 - 2) < 6 || ((v34 ^ v39))
            {
              goto LABEL_49;
            }

            goto LABEL_22;
          }

LABEL_43:
          if (v34 != 3)
          {
            goto LABEL_49;
          }

          goto LABEL_22;
        }

LABEL_39:
        if (v34 != 2)
        {
          goto LABEL_49;
        }

        goto LABEL_22;
      }

      if (v39 != 5)
      {
        if (v39 != 6)
        {
          if (v39 != 7)
          {
            goto LABEL_47;
          }

LABEL_37:
          if (v34 != 7)
          {
            goto LABEL_49;
          }

          goto LABEL_22;
        }

LABEL_45:
        if (v34 != 6)
        {
          goto LABEL_49;
        }

        goto LABEL_22;
      }

LABEL_41:
      if (v34 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_22;
    }

    goto LABEL_49;
  }

  sub_1D1D30108(v27, v22, type metadata accessor for StaticSoftwareUpdate.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    v30 = type metadata accessor for StaticHH2Update;
    v31 = v22;
LABEL_25:
    sub_1D1D301E4(v31, v30);
    goto LABEL_26;
  }

  sub_1D1D30558(v28, v12, type metadata accessor for StaticHH2Update);
  v43 = _s13HomeDataModel15StaticHH2UpdateV2eeoiySbAC_ACtFZ_0(v22, v12);
  sub_1D1D301E4(v12, type metadata accessor for StaticHH2Update);
  sub_1D1D301E4(v22, type metadata accessor for StaticHH2Update);
  sub_1D1D301E4(v27, type metadata accessor for StaticSoftwareUpdate.Kind);
  return v43;
}

unint64_t sub_1D1D3006C()
{
  result = qword_1EC64DC58;
  if (!qword_1EC64DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC58);
  }

  return result;
}

uint64_t sub_1D1D300C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1D30108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1D30190()
{
  result = qword_1EC64DC80;
  if (!qword_1EC64DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC80);
  }

  return result;
}

uint64_t sub_1D1D301E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1D30244()
{
  result = qword_1EC64DCB0;
  if (!qword_1EC64DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCB0);
  }

  return result;
}

unint64_t sub_1D1D30298()
{
  result = qword_1EC64DCB8;
  if (!qword_1EC64DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCB8);
  }

  return result;
}

unint64_t sub_1D1D302EC()
{
  result = qword_1EC64DCC0;
  if (!qword_1EC64DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCC0);
  }

  return result;
}

unint64_t sub_1D1D30340()
{
  result = qword_1EC64DCC8;
  if (!qword_1EC64DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCC8);
  }

  return result;
}

unint64_t sub_1D1D303B4()
{
  result = qword_1EC64DCF8;
  if (!qword_1EC64DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCF8);
  }

  return result;
}

unint64_t sub_1D1D30408()
{
  result = qword_1EC64DD00;
  if (!qword_1EC64DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD00);
  }

  return result;
}

unint64_t sub_1D1D3045C()
{
  result = qword_1EC64DD10;
  if (!qword_1EC64DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD10);
  }

  return result;
}

unint64_t sub_1D1D304B0()
{
  result = qword_1EC64DD40;
  if (!qword_1EC64DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD40);
  }

  return result;
}

unint64_t sub_1D1D30504()
{
  result = qword_1EC64DD48;
  if (!qword_1EC64DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD48);
  }

  return result;
}

uint64_t sub_1D1D30558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1D305C0()
{
  result = qword_1EC64DD50;
  if (!qword_1EC64DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD50);
  }

  return result;
}

unint64_t sub_1D1D30614()
{
  result = qword_1EC64DD60;
  if (!qword_1EC64DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD60);
  }

  return result;
}

unint64_t sub_1D1D30668()
{
  result = qword_1EC64DD68;
  if (!qword_1EC64DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD68);
  }

  return result;
}

unint64_t sub_1D1D306BC()
{
  result = qword_1EC64DDB8;
  if (!qword_1EC64DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DDB8);
  }

  return result;
}

unint64_t sub_1D1D30710()
{
  result = qword_1EC64DDC0;
  if (!qword_1EC64DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DDC0);
  }

  return result;
}

unint64_t sub_1D1D30764()
{
  result = qword_1EC64DDC8;
  if (!qword_1EC64DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DDC8);
  }

  return result;
}

unint64_t sub_1D1D307B8()
{
  result = qword_1EC64DE28;
  if (!qword_1EC64DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE28);
  }

  return result;
}

unint64_t sub_1D1D3080C()
{
  result = qword_1EC64DE30;
  if (!qword_1EC64DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE30);
  }

  return result;
}

unint64_t sub_1D1D30860()
{
  result = qword_1EC64DE38;
  if (!qword_1EC64DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE38);
  }

  return result;
}

unint64_t sub_1D1D308B4()
{
  result = qword_1EC64DE40;
  if (!qword_1EC64DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE40);
  }

  return result;
}

unint64_t sub_1D1D30908()
{
  result = qword_1EC64DE48;
  if (!qword_1EC64DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE48);
  }

  return result;
}

unint64_t sub_1D1D3095C()
{
  result = qword_1EC64DE50;
  if (!qword_1EC64DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE50);
  }

  return result;
}

unint64_t sub_1D1D309B0()
{
  result = qword_1EC64DE58;
  if (!qword_1EC64DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE58);
  }

  return result;
}

unint64_t sub_1D1D30A04()
{
  result = qword_1EC64DE60;
  if (!qword_1EC64DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE60);
  }

  return result;
}

unint64_t sub_1D1D30A58()
{
  result = qword_1EC64DE68;
  if (!qword_1EC64DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE68);
  }

  return result;
}

unint64_t sub_1D1D30AAC()
{
  result = qword_1EC64DEB0;
  if (!qword_1EC64DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEB0);
  }

  return result;
}

unint64_t sub_1D1D30B94()
{
  result = qword_1EC64DEC8;
  if (!qword_1EC64DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEC8);
  }

  return result;
}

unint64_t sub_1D1D30C7C()
{
  result = qword_1EC64DEE0;
  if (!qword_1EC64DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEE0);
  }

  return result;
}

unint64_t sub_1D1D30CD4()
{
  result = qword_1EC64DEE8;
  if (!qword_1EC64DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEE8);
  }

  return result;
}

uint64_t sub_1D1D30D50()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StaticSoftwareUpdate.Kind(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D1D30DFC()
{
  sub_1D17BDF80(319, qword_1EE07D1F8);
  if (v0 <= 0x3F)
  {
    sub_1D17B77BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1D30EC4()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07D1E8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel15StaticHH2UpdateV0E5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D1D30F88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1D30FDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D1D31038(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1D1D31068()
{
  type metadata accessor for StaticHH2Update(319);
  if (v0 <= 0x3F)
  {
    sub_1D1D310DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D1D310DC()
{
  if (!qword_1EE07D230[0])
  {
    type metadata accessor for StaticSoftwareUpdateMetadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE07D230);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticSoftwareUpdate.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StaticSoftwareUpdate.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
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
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D1D312B0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D1D312C4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1D1D31458()
{
  result = qword_1EC64DEF0;
  if (!qword_1EC64DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEF0);
  }

  return result;
}

unint64_t sub_1D1D314B0()
{
  result = qword_1EC64DEF8;
  if (!qword_1EC64DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEF8);
  }

  return result;
}

unint64_t sub_1D1D31508()
{
  result = qword_1EC64DF00;
  if (!qword_1EC64DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF00);
  }

  return result;
}

unint64_t sub_1D1D31560()
{
  result = qword_1EC64DF08;
  if (!qword_1EC64DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF08);
  }

  return result;
}

unint64_t sub_1D1D315B8()
{
  result = qword_1EC64DF10;
  if (!qword_1EC64DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF10);
  }

  return result;
}

unint64_t sub_1D1D31610()
{
  result = qword_1EC64DF18;
  if (!qword_1EC64DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF18);
  }

  return result;
}

unint64_t sub_1D1D31668()
{
  result = qword_1EC64DF20;
  if (!qword_1EC64DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF20);
  }

  return result;
}

unint64_t sub_1D1D316C0()
{
  result = qword_1EC64DF28;
  if (!qword_1EC64DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF28);
  }

  return result;
}

unint64_t sub_1D1D31718()
{
  result = qword_1EC64DF30;
  if (!qword_1EC64DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF30);
  }

  return result;
}

unint64_t sub_1D1D31770()
{
  result = qword_1EC64DF38;
  if (!qword_1EC64DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF38);
  }

  return result;
}

unint64_t sub_1D1D317C8()
{
  result = qword_1EC64DF40;
  if (!qword_1EC64DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF40);
  }

  return result;
}

unint64_t sub_1D1D31820()
{
  result = qword_1EC64DF48;
  if (!qword_1EC64DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF48);
  }

  return result;
}

unint64_t sub_1D1D31878()
{
  result = qword_1EC64DF50;
  if (!qword_1EC64DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF50);
  }

  return result;
}

unint64_t sub_1D1D318D0()
{
  result = qword_1EC64DF58;
  if (!qword_1EC64DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF58);
  }

  return result;
}

unint64_t sub_1D1D31928()
{
  result = qword_1EC64DF60;
  if (!qword_1EC64DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF60);
  }

  return result;
}

unint64_t sub_1D1D31980()
{
  result = qword_1EC64DF68;
  if (!qword_1EC64DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF68);
  }

  return result;
}

unint64_t sub_1D1D319D8()
{
  result = qword_1EC64DF70;
  if (!qword_1EC64DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF70);
  }

  return result;
}

unint64_t sub_1D1D31A30()
{
  result = qword_1EC64DF78;
  if (!qword_1EC64DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF78);
  }

  return result;
}

unint64_t sub_1D1D31A88()
{
  result = qword_1EC64DF80;
  if (!qword_1EC64DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF80);
  }

  return result;
}

unint64_t sub_1D1D31AE0()
{
  result = qword_1EC64DF88;
  if (!qword_1EC64DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF88);
  }

  return result;
}

unint64_t sub_1D1D31B38()
{
  result = qword_1EC64DF90;
  if (!qword_1EC64DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF90);
  }

  return result;
}

unint64_t sub_1D1D31B90()
{
  result = qword_1EC64DF98;
  if (!qword_1EC64DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF98);
  }

  return result;
}

unint64_t sub_1D1D31BE8()
{
  result = qword_1EC64DFA0;
  if (!qword_1EC64DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFA0);
  }

  return result;
}

unint64_t sub_1D1D31C40()
{
  result = qword_1EC64DFA8;
  if (!qword_1EC64DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFA8);
  }

  return result;
}

unint64_t sub_1D1D31C98()
{
  result = qword_1EC64DFB0;
  if (!qword_1EC64DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFB0);
  }

  return result;
}

unint64_t sub_1D1D31CF0()
{
  result = qword_1EC64DFB8;
  if (!qword_1EC64DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFB8);
  }

  return result;
}

unint64_t sub_1D1D31D48()
{
  result = qword_1EC64DFC0;
  if (!qword_1EC64DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFC0);
  }

  return result;
}

unint64_t sub_1D1D31DA0()
{
  result = qword_1EC64DFC8;
  if (!qword_1EC64DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFC8);
  }

  return result;
}

unint64_t sub_1D1D31DF8()
{
  result = qword_1EC64DFD0;
  if (!qword_1EC64DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFD0);
  }

  return result;
}

unint64_t sub_1D1D31E50()
{
  result = qword_1EC64DFD8;
  if (!qword_1EC64DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFD8);
  }

  return result;
}

unint64_t sub_1D1D31EA8()
{
  result = qword_1EC64DFE0;
  if (!qword_1EC64DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFE0);
  }

  return result;
}

unint64_t sub_1D1D31F00()
{
  result = qword_1EC64DFE8;
  if (!qword_1EC64DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFE8);
  }

  return result;
}

unint64_t sub_1D1D31F58()
{
  result = qword_1EC64DFF0;
  if (!qword_1EC64DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFF0);
  }

  return result;
}

unint64_t sub_1D1D31FB0()
{
  result = qword_1EC64DFF8;
  if (!qword_1EC64DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFF8);
  }

  return result;
}

unint64_t sub_1D1D32008()
{
  result = qword_1EC64E000;
  if (!qword_1EC64E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E000);
  }

  return result;
}

unint64_t sub_1D1D32060()
{
  result = qword_1EC64E008;
  if (!qword_1EC64E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E008);
  }

  return result;
}

unint64_t sub_1D1D320B8()
{
  result = qword_1EC64E010;
  if (!qword_1EC64E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E010);
  }

  return result;
}

unint64_t sub_1D1D32110()
{
  result = qword_1EC64E018;
  if (!qword_1EC64E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E018);
  }

  return result;
}

unint64_t sub_1D1D32168()
{
  result = qword_1EC64E020;
  if (!qword_1EC64E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E020);
  }

  return result;
}

unint64_t sub_1D1D321C0()
{
  result = qword_1EC64E028;
  if (!qword_1EC64E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E028);
  }

  return result;
}

unint64_t sub_1D1D32218()
{
  result = qword_1EC64E030;
  if (!qword_1EC64E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E030);
  }

  return result;
}

unint64_t sub_1D1D32270()
{
  result = qword_1EC64E038;
  if (!qword_1EC64E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E038);
  }

  return result;
}

unint64_t sub_1D1D322C8()
{
  result = qword_1EC64E040;
  if (!qword_1EC64E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E040);
  }

  return result;
}

unint64_t sub_1D1D32320()
{
  result = qword_1EC64E048;
  if (!qword_1EC64E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E048);
  }

  return result;
}

unint64_t sub_1D1D32378()
{
  result = qword_1EC64E050;
  if (!qword_1EC64E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E050);
  }

  return result;
}

unint64_t sub_1D1D323D0()
{
  result = qword_1EC64E058;
  if (!qword_1EC64E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E058);
  }

  return result;
}

unint64_t sub_1D1D32428()
{
  result = qword_1EC64E060;
  if (!qword_1EC64E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E060);
  }

  return result;
}

unint64_t sub_1D1D32480()
{
  result = qword_1EC64E068;
  if (!qword_1EC64E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E068);
  }

  return result;
}

unint64_t sub_1D1D324D8()
{
  result = qword_1EC64E070;
  if (!qword_1EC64E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E070);
  }

  return result;
}

unint64_t sub_1D1D32530()
{
  result = qword_1EC64E078;
  if (!qword_1EC64E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E078);
  }

  return result;
}

unint64_t sub_1D1D32588()
{
  result = qword_1EC64E080;
  if (!qword_1EC64E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E080);
  }

  return result;
}

unint64_t sub_1D1D325E0()
{
  result = qword_1EC64E088;
  if (!qword_1EC64E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E088);
  }

  return result;
}

unint64_t sub_1D1D32638()
{
  result = qword_1EC64E090;
  if (!qword_1EC64E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E090);
  }

  return result;
}

unint64_t sub_1D1D32690()
{
  result = qword_1EC64E098;
  if (!qword_1EC64E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E098);
  }

  return result;
}

unint64_t sub_1D1D326E8()
{
  result = qword_1EC64E0A0;
  if (!qword_1EC64E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0A0);
  }

  return result;
}

unint64_t sub_1D1D32740()
{
  result = qword_1EC64E0A8;
  if (!qword_1EC64E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0A8);
  }

  return result;
}

unint64_t sub_1D1D32798()
{
  result = qword_1EC64E0B0;
  if (!qword_1EC64E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0B0);
  }

  return result;
}

unint64_t sub_1D1D327F0()
{
  result = qword_1EC64E0B8;
  if (!qword_1EC64E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0B8);
  }

  return result;
}

uint64_t sub_1D1D32844(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for StaticSoftwareUpdate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a2;
  sub_1D1741C08(a1, v7, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1D1D30558(v7, v12, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1D2F0C0(&v20);
    if (v20 == 8 || (v13 & 0xFFFFFFFB) == 0)
    {
      goto LABEL_17;
    }

    if (v20 > 4u)
    {
      if (v20 != 5)
      {
        if (v20 == 6)
        {
          v16 = 0x80000001D1EC7980;
          v15 = 0xD000000000000019;
          goto LABEL_21;
        }

        if (v20 != 7)
        {
          goto LABEL_13;
        }

LABEL_17:
        sub_1D1D301E4(v12, type metadata accessor for StaticSoftwareUpdate);
        return 0;
      }
    }

    else
    {
      if (v20 == 2)
      {
        goto LABEL_17;
      }

      if (v20 != 3)
      {
        if (v20 == 4)
        {
          v14 = "HFSoftwareUpdateRequested";
          v15 = 0xD000000000000026;
LABEL_16:
          v16 = v14 | 0x8000000000000000;
LABEL_21:
          v18 = static String.hfLocalized(_:)(v15, v16);
          sub_1D1D301E4(v12, type metadata accessor for StaticSoftwareUpdate);
          return v18;
        }

LABEL_13:
        v14 = "StateDescriptionUpdateAvailable";
        v15 = 0xD000000000000025;
        goto LABEL_16;
      }
    }

    if ((v13 & 0xFE) == 2)
    {
      v14 = "toggle(options:context:)";
      v15 = 0xD00000000000002FLL;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  sub_1D1741A30(v7, &qword_1EC644760, &unk_1D1E9E530);
  return 0;
}