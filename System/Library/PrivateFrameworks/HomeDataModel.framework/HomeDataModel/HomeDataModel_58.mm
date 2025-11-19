uint64_t sub_1D1BCE418(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = v34 - v8;
  v9 = type metadata accessor for StaticService(0);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v41 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  if (*(a1 + *(type metadata accessor for StaticAccessory(0) + 104)))
  {
    return 0;
  }

  v34[1] = v1;
  result = StaticAccessory.staticServicesExcludingComponents.getter();
  v16 = result;
  v39 = *(result + 16);
  if (v39)
  {
    v35 = v7;
    v17 = 0;
    v42 = 0x80000001D1EB3580;
    v18 = MEMORY[0x1E69E7CC0];
    v36 = result;
    v38 = v9;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v44 = *(v40 + 72);
      v45 = v18;
      sub_1D1BCEF78(v16 + v19 + v44 * v17, v14, type metadata accessor for StaticService);
      v46 = v14[*(v9 + 104)];
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v42 == v20)
      {
      }

      else
      {
        v21 = sub_1D1E6904C();

        if ((v21 & 1) == 0)
        {
          result = sub_1D1BCEFE0(v14, type metadata accessor for StaticService);
          goto LABEL_6;
        }
      }

      v43 = v19;
      v22 = &v14[*(v9 + 116)];
      v23 = v37;
      sub_1D1741C08(v22, v37, &qword_1EC642590, qword_1D1E71260);
      v24 = sub_1D1E66A7C();
      v25 = v14;
      v26 = *(*(v24 - 8) + 48);
      v27 = v26(v23, 1, v24);
      sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
      if (v27 != 1)
      {
        goto LABEL_17;
      }

      v9 = v38;
      v28 = v35;
      sub_1D1741C08(v25 + *(v38 + 148), v35, &qword_1EC642590, qword_1D1E71260);
      if (v26(v28, 1, v24) != 1)
      {
        sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
LABEL_17:
        sub_1D17978CC(v25, v41);
        v18 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v18;
        v14 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D17915E0(0, *(v18 + 16) + 1, 1);
          v18 = v47;
        }

        v9 = v38;
        v16 = v36;
        v30 = v43;
        v32 = *(v18 + 16);
        v31 = *(v18 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D17915E0(v31 > 1, v32 + 1, 1);
          v18 = v47;
        }

        *(v18 + 16) = v32 + 1;
        result = sub_1D17978CC(v41, v18 + v30 + v32 * v44);
        goto LABEL_7;
      }

      sub_1D1BCEFE0(v25, type metadata accessor for StaticService);
      result = sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
      v16 = v36;
      v14 = v25;
LABEL_6:
      v18 = v45;
LABEL_7:
      if (v39 == ++v17)
      {
        goto LABEL_23;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v33 = *(v18 + 16);

  return v33 == 0;
}

uint64_t sub_1D1BCE89C(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D1BCE9FC(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1D1BCEF00(v9, v4, v2);
  result = MEMORY[0x1D3893640](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1BCE9FC(unint64_t *a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v39 = a1;
  v43 = type metadata accessor for StaticService(0);
  v46 = *(v43 - 8);
  v4 = *(v46 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v47 = v7;
  v48 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v40 = 0;
  v41 = 0x80000001D1EB2DA0;
  v44 = v15;
  v45 = v10;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v49 = (v14 - 1) & v14;
LABEL_14:
    v19 = v16 | (v8 << 6);
    sub_1D1BCEF78(v48[7] + *(v46 + 72) * v19, v7, type metadata accessor for StaticService);
    if (qword_1EE07AB40 != -1)
    {
      swift_once();
    }

    v20 = qword_1EE081448;
    if (!*(qword_1EE081448 + 16))
    {
      goto LABEL_6;
    }

    v21 = *(v43 + 104);
    v22 = v7[v21];
    v23 = *(qword_1EE081448 + 40);
    sub_1D1E6920C();
    v51 = v22;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v24 = sub_1D1E6926C();
    v25 = -1 << *(v20 + 32);
    v26 = v24 & ~v25;
    if ((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
    {
      v42 = v21;
      v37 = v19;
      v27 = ~v25;
      while (1)
      {
        v50 = *(*(v20 + 48) + v26);
        v51 = v22;
        v28 = ServiceKind.rawValue.getter();
        v30 = v29;
        if (v28 == ServiceKind.rawValue.getter() && v30 == v31)
        {
          break;
        }

        v33 = sub_1D1E6904C();

        if (v33)
        {
          goto LABEL_27;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_27:
      v7 = v47;
      v50 = v47[v42];
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v41 == v34)
      {

        goto LABEL_6;
      }

      v35 = sub_1D1E6904C();

      result = sub_1D1BCEFE0(v7, type metadata accessor for StaticService);
      v15 = v44;
      v10 = v45;
      v14 = v49;
      if ((v35 & 1) == 0)
      {
        *(v39 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        if (__OFADD__(v40++, 1))
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = v47;
      result = sub_1D1BCEFE0(v47, type metadata accessor for StaticService);
      v15 = v44;
      v10 = v45;
      v14 = v49;
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_1D188B1C8(v39, v38, v40, v48);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v49 = (v18 - 1) & v18;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_1D1BCEE60(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
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

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

void *sub_1D1BCEF00(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D1BCE9FC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D1BCEF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BCEFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticAccessory.statusString(with:)(_BYTE *a1)
{
  v3 = type metadata accessor for MatterStateSnapshot();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = type metadata accessor for StaticAccessory(0);
  v20 = v1 + *(v19 + 144);
  if (*(v20 + 8))
  {
    goto LABEL_12;
  }

  v21 = v19;
  v42 = v1;
  v43 = a1;
  v41 = *v20;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v22 = qword_1EE07DC60;
  swift_getKeyPath();
  v44 = v22;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v23 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (*(v24 + 16))
  {
    v25 = *(v21 + 48);

    v26 = sub_1D1742188(v42 + v25);
    if (v27)
    {
      sub_1D1BD4044(*(v24 + 56) + *(v4 + 72) * v26, v11, type metadata accessor for MatterStateSnapshot);
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    a1 = v43;
  }

  else
  {
    v28 = 1;
    a1 = v43;
  }

  (*(v4 + 56))(v11, v28, 1, v3);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1D1741A30(v11, &unk_1EC64F390, &qword_1D1E92B10);
LABEL_12:
    v29 = type metadata accessor for StaticMatterDevice();
    (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
    goto LABEL_13;
  }

  sub_1D1BD4044(v11, v7, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v11, &unk_1EC64F390, &qword_1D1E92B10);
  v32 = *&v7[*(v3 + 24)];

  sub_1D1BD40AC(v7, type metadata accessor for MatterStateSnapshot);
  if (*(v32 + 16) && (v33 = sub_1D17420B0(v41), (v34 & 1) != 0))
  {
    v35 = v33;
    v36 = *(v32 + 56);
    v37 = type metadata accessor for StaticMatterDevice();
    v38 = *(v37 - 8);
    v39 = v36 + *(v38 + 72) * v35;
    a1 = v43;
    sub_1D1BD4044(v39, v16, type metadata accessor for StaticMatterDevice);

    (*(v38 + 56))(v16, 0, 1, v37);
  }

  else
  {

    v40 = type metadata accessor for StaticMatterDevice();
    (*(*(v40 - 8) + 56))(v16, 1, 1, v40);
  }

LABEL_13:
  sub_1D1BCF544(v16, v18);
  v30 = StaticAccessory.statusString(with:associatedMatterDevice:)(a1, v18);
  sub_1D1741A30(v18, &qword_1EC643650, &qword_1D1E71D40);
  return v30;
}

uint64_t sub_1D1BCF544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t StaticAccessory.statusString(with:associatedMatterDevice:)(_BYTE *a1, uint64_t a2)
{
  v45 = a1;
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v44 = a2;
  sub_1D1741C08(a2, v12, &qword_1EC643650, &qword_1D1E71D40);
  v15 = type metadata accessor for StaticMatterDevice();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v12, 1, v15);
  v43 = v14;
  if (v18 == 1)
  {
    v19 = type metadata accessor for StaticAccessory(0);
    v20 = v46;
    sub_1D1741C08(&v46[*(v19 + 152)], v14, &qword_1EC643650, &qword_1D1E71D40);
    if (v17(v12, 1, v15) != 1)
    {
      sub_1D1741A30(v12, &qword_1EC643650, &qword_1D1E71D40);
    }
  }

  else
  {
    sub_1D1BD410C(v12, v14, type metadata accessor for StaticMatterDevice);
    (*(v16 + 56))(v14, 0, 1, v15);
    v20 = v46;
  }

  v21 = type metadata accessor for StaticAccessory(0);
  v22 = v21;
  if (v20[*(v21 + 124)])
  {
    v23 = *&v20[*(v21 + 84)];
    MEMORY[0x1EEE9AC00](v21);
    v24 = v20;
    *(&v43 - 2) = v20;
    result = sub_1D17868B8(sub_1D1820ECC, (&v43 - 4), v25);
    v27 = result;
    v28 = 0;
    v29 = *(result + 16);
    while (1)
    {
      v30 = v29 == v28;
      if (v29 == v28)
      {
LABEL_10:

        v32 = v43;
        v20 = v24;
        goto LABEL_12;
      }

      if (v28 >= *(v27 + 16))
      {
        break;
      }

      sub_1D1BD4044(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28++, v7, type metadata accessor for StaticService);
      *&v50[0] = *&v7[*(v3 + 128)];
      LOBYTE(v47) = v7[*(v3 + 104)];

      v31 = StaticCharacteristicsBag.isReachable(for:)(&v47);

      result = sub_1D1BD40AC(v7, type metadata accessor for StaticService);
      if (!v31)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = 0;
    v32 = v43;
LABEL_12:
    v33 = v20[*(v22 + 128)];
    v34 = StaticAccessory.isUpdating.getter() & 1;
    v35 = v45;
    v36 = v32;
    v37 = sub_1D1BCFFD8(v45, v32);
    v39 = v38;
    LOBYTE(v50[0]) = v35[4];
    v40 = sub_1D1BCFA04(v50, v44);
    LOBYTE(v47) = v30;
    BYTE1(v47) = v33;
    WORD1(v47) = 514;
    BYTE4(v47) = v34;
    *(&v47 + 1) = v37;
    *&v48 = v39;
    *(&v48 + 1) = v40;
    v49 = v41;
    v42 = StatusStrings.string(for:)(v35);
    v50[0] = v47;
    v50[1] = v48;
    v51 = v49;
    sub_1D1A46590(v50);
    sub_1D1741A30(v36, &qword_1EC643650, &qword_1D1E71D40);
    return v42;
  }

  return result;
}

uint64_t sub_1D1BCFA04(unsigned __int8 *a1, uint64_t a2)
{
  v41 = a2;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v38[-v11];
  v13 = type metadata accessor for StaticMatterDevice();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  v19 = type metadata accessor for StaticAccessory(0);
  v20 = v19[30];
  v43 = v18;
  result = sub_1D1D32844(v2 + v20, &v43);
  if (!v22)
  {
    v40 = v4;
    v23 = v41;
    v24 = *(v2 + v19[33]);
    v42 = v18;
    result = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v24, &v42);
    if (!v25)
    {
      v39 = v18;
      sub_1D1741C08(v23, v12, &qword_1EC643650, &qword_1D1E71D40);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        v26 = sub_1D1741A30(v12, &qword_1EC643650, &qword_1D1E71D40);
        v27 = v5;
      }

      else
      {
        sub_1D1BD410C(v12, v17, type metadata accessor for StaticMatterDevice);
        if (sub_1D1BD3934(v17))
        {
          v28 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC63C0);
          sub_1D1BD40AC(v17, type metadata accessor for StaticMatterDevice);
          return v28;
        }

        v27 = v5;
        v26 = sub_1D1BD40AC(v17, type metadata accessor for StaticMatterDevice);
      }

      v29 = *(v2 + v19[21]);
      MEMORY[0x1EEE9AC00](v26);
      *&v38[-16] = v2;
      result = sub_1D17868B8(sub_1D1823318, &v38[-32], v30);
      v31 = result;
      v32 = *(result + 16);
      if (v32)
      {
        v33 = 0;
        v34 = *(v40 + 40);
        v35 = result + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v36 = v39;
        while (1)
        {
          if (v33 >= *(v31 + 16))
          {
            __break(1u);
            return result;
          }

          sub_1D1BD4044(v35 + *(v27 + 72) * v33, v8, type metadata accessor for StaticService);
          v37 = v8[v34];
          result = sub_1D1BD40AC(v8, type metadata accessor for StaticService);
          if (v37 != 2 && (v37 & 1) != 0)
          {
            break;
          }

          if (v32 == ++v33)
          {
            goto LABEL_16;
          }
        }

        if (v36 != 2)
        {
          return 0;
        }

        return static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC63C0);
      }

      else
      {
LABEL_16:

        return 0;
      }
    }
  }

  return result;
}

BOOL StaticAccessory.allServicesAreTheSameKind.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1BD0D48();
  v6 = *(v5 + 16);
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D178CF80(0, v6, 0);
    v7 = v17;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    do
    {
      sub_1D1BD4044(v8, v4, type metadata accessor for StaticService);
      v10 = v4[*(v0 + 104)];
      sub_1D1BD40AC(v4, type metadata accessor for StaticService);
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D178CF80((v11 > 1), v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + v12 + 32) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D1784388(v7);

  v14 = *(v13 + 16);

  return v14 == 1;
}

uint64_t sub_1D1BCFFD8(_BYTE *a1, uint64_t a2)
{
  v125 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v116 - v6;
  v8 = type metadata accessor for StaticMatterDevice();
  v123 = *(v8 - 8);
  *&v124 = v8;
  v9 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v120 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v116 - v15;
  v17 = type metadata accessor for StaticService(0);
  v128 = *(v17 - 8);
  v18 = *(v128 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v117 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v118 = &v116 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v116 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v116 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v116 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v116 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v126 = &v116 - v35;
  v36 = sub_1D1BD0D48();
  v119 = type metadata accessor for StaticAccessory(0);
  v37 = v2 + *(v119 + 92);
  v38 = *(v37 + 8);
  if (v38 != 255)
  {
    if (v38 != 2)
    {

      return 0;
    }

    sub_1D1771B4C(*v37, 2);
  }

  v116 = v7;
  v122 = v36;
  v127 = v2;
  StaticAccessory.primaryStaticService.getter(v16);
  v39 = *(v128 + 48);
  if (v39(v16, 1, v17) != 1)
  {
    sub_1D1BD410C(v16, v126, type metadata accessor for StaticService);
    v41 = v125;
    if (v125[4] != 2)
    {
      goto LABEL_25;
    }

    v42 = v120;
    StaticAccessory.primaryStaticService.getter(v120);
    if (v39(v42, 1, v17) == 1)
    {
      sub_1D1741A30(v42, &qword_1EC6436F0, &qword_1D1E99BC0);
      v43 = 0;
    }

    else
    {
      v43 = *(v42 + *(v17 + 104));
      sub_1D1BD40AC(v42, type metadata accessor for StaticService);
    }

    v129 = v43;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v49)
    {
    }

    else
    {
      v51 = sub_1D1E6904C();

      if ((v51 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v52 = *(v127 + *(v119 + 84));
    MEMORY[0x1EEE9AC00](v50);
    *(&v116 - 2) = v53;
    result = sub_1D17868B8(sub_1D1823318, (&v116 - 4), v54);
    v55 = result;
    v56 = 0;
    v57 = *(result + 16);
    while (v57 != v56)
    {
      if (v56 >= *(v55 + 16))
      {
        goto LABEL_78;
      }

      sub_1D1BD4044(v55 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v56++, v34, type metadata accessor for StaticService);
      v58 = sub_1D17C4E00(v34[*(v17 + 104)], &unk_1F4D621A0);
      result = sub_1D1BD40AC(v34, type metadata accessor for StaticService);
      if (v58)
      {

        v46 = sub_1D1BD16CC();
        v47 = type metadata accessor for StaticService;
        v48 = v126;
        goto LABEL_23;
      }
    }

    v41 = v125;
LABEL_25:
    v120 = sub_1D1BD26AC(v122, v41, v127, v126);
    v121 = v59;

    v123 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v60 = swift_allocObject();
    v124 = xmmword_1D1E739C0;
    *(v60 + 16) = xmmword_1D1E739C0;
    v61 = sub_1D1BD0D48();
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = 0;
      v64 = *(v128 + 80);
      v122 = v61;
      v65 = v61 + ((v64 + 32) & ~v64);
      v66 = *(v128 + 72);
      while (1)
      {
        sub_1D1BD4044(v65, v31, type metadata accessor for StaticService);
        v67 = StaticService.isActivated.getter();
        result = sub_1D1BD40AC(v31, type metadata accessor for StaticService);
        v68 = __OFADD__(v63, v67 & 1);
        v63 += v67 & 1;
        if (v68)
        {
          break;
        }

        v65 += v66;
        if (!--v62)
        {

          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {

      v63 = 0;
LABEL_31:
      v69 = MEMORY[0x1E69E6530];
      v70 = MEMORY[0x1E69E65A8];
      *(v60 + 56) = MEMORY[0x1E69E6530];
      *(v60 + 64) = v70;
      *(v60 + 32) = v63;
      v122 = sub_1D1E6783C();
      v123 = v71;

      v72 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC63E0);
      v73 = swift_allocObject();
      *(v73 + 16) = v124;
      v74 = sub_1D1BD0D48();
      v75 = *(v74 + 16);
      if (!v75)
      {

        v76 = 0;
LABEL_37:
        *(v73 + 56) = v69;
        *(v73 + 64) = v70;
        *(v73 + 32) = v76;
        v81 = sub_1D1E6783C();
        v83 = v82;

        v84 = *(sub_1D1BD0D48() + 16);

        if (v84 == 1)
        {
LABEL_38:
          sub_1D1BD40AC(v126, type metadata accessor for StaticService);
        }

        else
        {
          v85 = sub_1D1BD0D48();
          v86 = *(v85 + 16);
          if (v86)
          {
            v87 = 0;
            v88 = v85 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
            v89 = *(v128 + 72);
            while (1)
            {
              sub_1D1BD4044(v88, v25, type metadata accessor for StaticService);
              v90 = StaticService.isActivated.getter();
              result = sub_1D1BD40AC(v25, type metadata accessor for StaticService);
              v68 = __OFADD__(v87, v90 & 1);
              v87 += v90 & 1;
              if (v68)
              {
                goto LABEL_76;
              }

              v88 += v89;
              if (!--v86)
              {

                if (v87 == 1 && !StaticAccessory.allServicesAreTheSameKind.getter())
                {
                  goto LABEL_38;
                }

                goto LABEL_48;
              }
            }
          }

LABEL_48:
          v91 = sub_1D1BD0D48();
          v92 = *(v91 + 16);
          if (v92)
          {
            v93 = 0;
            v94 = (*(v128 + 80) + 32) & ~*(v128 + 80);
            v95 = v91 + v94;
            v96 = *(v128 + 72);
            v97 = v118;
            while (1)
            {
              sub_1D1BD4044(v95, v97, type metadata accessor for StaticService);
              v98 = StaticService.isActivated.getter();
              result = sub_1D1BD40AC(v97, type metadata accessor for StaticService);
              v68 = __OFADD__(v93, v98 & 1);
              v93 += v98 & 1;
              if (v68)
              {
                break;
              }

              v95 += v96;
              if (!--v92)
              {

                if (v93 <= 0)
                {
                  goto LABEL_60;
                }

                v99 = sub_1D1BD0D48();
                v100 = *(v99 + 16);
                if (v100)
                {
                  v101 = 0;
                  v102 = v99 + v94;
                  v103 = v117;
                  while (1)
                  {
                    sub_1D1BD4044(v102, v103, type metadata accessor for StaticService);
                    v104 = StaticService.isActivated.getter();
                    result = sub_1D1BD40AC(v103, type metadata accessor for StaticService);
                    v105 = (v104 & 1) == 0;
                    v68 = __OFADD__(v101, v105);
                    v101 += v105;
                    if (v68)
                    {
                      goto LABEL_79;
                    }

                    v102 += v96;
                    if (!--v100)
                    {

                      if (v101 <= 0)
                      {
                        goto LABEL_60;
                      }

                      v106 = swift_allocObject();
                      *(v106 + 16) = xmmword_1D1E73A90;
                      v107 = MEMORY[0x1E69E6158];
                      *(v106 + 56) = MEMORY[0x1E69E6158];
                      v108 = sub_1D1757D20();
                      v109 = v123;
                      *(v106 + 32) = v122;
                      *(v106 + 40) = v109;
                      *(v106 + 96) = v107;
                      *(v106 + 104) = v108;
                      *(v106 + 64) = v108;
                      *(v106 + 72) = v81;
                      *(v106 + 80) = v83;
                      v110 = sub_1D1E6783C();

                      sub_1D1BD40AC(v126, type metadata accessor for StaticService);
                      return v110;
                    }
                  }
                }

                goto LABEL_59;
              }
            }

LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

LABEL_59:

LABEL_60:
          if (StaticAccessory.allServicessOn.getter())
          {

            v111 = *(sub_1D1BD0D48() + 16);

            if (v111 > 3 || (v115 = *(sub_1D1BD0D48() + 16), , v115 == 2) && StaticAccessory.allServicesAreTheSameKind.getter())
            {
              v112 = v122;
            }

            else
            {

              v112 = static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EBA580);
            }

            sub_1D1BD40AC(v126, type metadata accessor for StaticService);
            return v112;
          }

          if (StaticAccessory.allServicesOff.getter())
          {

            v113 = *(sub_1D1BD0D48() + 16);

            if (v113 <= 3)
            {
              v114 = *(sub_1D1BD0D48() + 16);

              if (v114 != 2 || !StaticAccessory.allServicesAreTheSameKind.getter())
              {

                v81 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA5A0);
              }
            }

            sub_1D1BD40AC(v126, type metadata accessor for StaticService);
            return v81;
          }

          sub_1D1BD40AC(v126, type metadata accessor for StaticService);
        }

        return v120;
      }

      *&v124 = v72;
      v76 = 0;
      v77 = v74 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v78 = *(v128 + 72);
      while (1)
      {
        sub_1D1BD4044(v77, v28, type metadata accessor for StaticService);
        v79 = StaticService.isActivated.getter();
        result = sub_1D1BD40AC(v28, type metadata accessor for StaticService);
        v80 = (v79 & 1) == 0;
        v68 = __OFADD__(v76, v80);
        v76 += v80;
        if (v68)
        {
          break;
        }

        v77 += v78;
        if (!--v75)
        {

          v69 = MEMORY[0x1E69E6530];
          v70 = MEMORY[0x1E69E65A8];
          goto LABEL_37;
        }
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sub_1D1741A30(v16, &qword_1EC6436F0, &qword_1D1E99BC0);
  v40 = v116;
  sub_1D1741C08(a2, v116, &qword_1EC643650, &qword_1D1E71D40);
  if ((*(v123 + 48))(v40, 1, v124) == 1)
  {
    sub_1D1741A30(v40, &qword_1EC643650, &qword_1D1E71D40);
    return 0;
  }

  v45 = v121;
  sub_1D1BD410C(v40, v121, type metadata accessor for StaticMatterDevice);
  v46 = sub_1D1BD132C(v125, v45);
  v47 = type metadata accessor for StaticMatterDevice;
  v48 = v45;
LABEL_23:
  sub_1D1BD40AC(v48, v47);
  return v46;
}

uint64_t sub_1D1BD0D48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v48 = &v46 - v2;
  v49 = type metadata accessor for StaticService(0);
  v54 = *(v49 - 8);
  v3 = *(v54 + 64);
  v4 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v46 - v6;
  result = StaticAccessory.visibleStaticServices.getter();
  v53 = *(result + 16);
  if (v53)
  {
    v8 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    v50 = result;
    while (1)
    {
      if (v8 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v52 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v51 = *(v54 + 72);
      sub_1D1BD4044(result + v52 + v51 * v8, v55, type metadata accessor for StaticService);
      if (qword_1EC642398 != -1)
      {
        swift_once();
      }

      v9 = qword_1EC6BE1B0;
      if (*(qword_1EC6BE1B0 + 16))
      {
        v10 = *(v49 + 104);
        v11 = *(v55 + v10);
        v12 = *(qword_1EC6BE1B0 + 40);
        sub_1D1E6920C();
        v56 = v11;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v13 = sub_1D1E6926C();
        v14 = -1 << *(v9 + 32);
        v15 = v13 & ~v14;
        if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v57 = *(*(v9 + 48) + v15);
            v56 = v11;
            v17 = ServiceKind.rawValue.getter();
            v19 = v18;
            if (v17 == ServiceKind.rawValue.getter() && v19 == v20)
            {
              break;
            }

            v22 = sub_1D1E6904C();

            if (v22)
            {
              goto LABEL_17;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_17:
          v23 = v48;
          sub_1D1741C08(v55 + *(v49 + 116), v48, &qword_1EC642590, qword_1D1E71260);
          v24 = sub_1D1E66A7C();
          v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
          sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
          if (v25 == 1)
          {
            if (qword_1EC642390 != -1)
            {
              swift_once();
            }

            v26 = off_1EC64C610;
            if (*(off_1EC64C610 + 2))
            {
              v27 = *(v55 + v10);
              v28 = *(off_1EC64C610 + 5);
              sub_1D1E6920C();
              v56 = v27;
              ServiceKind.rawValue.getter();

              sub_1D1E678EC();

              v29 = sub_1D1E6926C();
              v30 = -1 << v26[32];
              v31 = v29 & ~v30;
              if ((*&v26[((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v31))
              {
                v32 = ~v30;
                while (1)
                {
                  v57 = *(*(v26 + 6) + v31);
                  v56 = v27;
                  v33 = ServiceKind.rawValue.getter();
                  v35 = v34;
                  if (v33 == ServiceKind.rawValue.getter() && v35 == v36)
                  {
                    break;
                  }

                  v38 = sub_1D1E6904C();

                  if (v38)
                  {
                    goto LABEL_34;
                  }

                  v31 = (v31 + 1) & v32;
                  if (((*&v26[((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v31) & 1) == 0)
                  {
                    goto LABEL_29;
                  }
                }

LABEL_34:

                sub_1D1BD410C(v55, v46, type metadata accessor for StaticService);
                v39 = v47;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v58 = v39;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D17915E0(0, *(v39 + 16) + 1, 1);
                  v39 = v58;
                }

                v41 = v50;
                v42 = v51;
                v43 = v52;
                v45 = *(v39 + 16);
                v44 = *(v39 + 24);
                if (v45 >= v44 >> 1)
                {
                  sub_1D17915E0(v44 > 1, v45 + 1, 1);
                  v39 = v58;
                }

                *(v39 + 16) = v45 + 1;
                v47 = v39;
                sub_1D1BD410C(v46, v39 + v43 + v45 * v42, type metadata accessor for StaticService);
                result = v41;
                goto LABEL_31;
              }

LABEL_29:
            }
          }
        }
      }

LABEL_30:
      sub_1D1BD40AC(v55, type metadata accessor for StaticService);
      result = v50;
LABEL_31:
      if (++v8 == v53)
      {
        goto LABEL_40;
      }
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_40:

  return v47;
}

id sub_1D1BD132C(_BYTE *a1, uint64_t a2)
{
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for StaticEndpoint();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StaticMatterDevice();
  v20 = *(a2 + *(v19 + 56));
  v25 = a2;
  v27 = a2;

  sub_1D1746B78(sub_1D18076C8, v20, v11);

  v21 = *(v15 + 48);
  if (v21(v11, 1, v14) == 1)
  {

    sub_1D1771D7C(v22, v13);

    if (v21(v11, 1, v14) != 1)
    {
      sub_1D1741A30(v11, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1BD410C(v11, v13, type metadata accessor for StaticEndpoint);
    (*(v15 + 56))(v13, 0, 1, v14);
  }

  if (v21(v13, 1, v14) == 1)
  {
    sub_1D1741A30(v13, &qword_1EC644780, &qword_1D1E91AA0);
    return 0;
  }

  else
  {
    sub_1D1BD410C(v13, v18, type metadata accessor for StaticEndpoint);
    sub_1D1BD4044(v25, v6, type metadata accessor for StaticMatterDevice);
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    v24 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v26);
    sub_1D1741A30(v6, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1BD40AC(v18, type metadata accessor for StaticEndpoint);
    return v24;
  }
}

uint64_t sub_1D1BD16CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v113 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v123 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v122 = &v113 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v124 = &v113 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v125 = &v113 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v126 = &v113 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v127 = &v113 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v113 - v25;
  v27 = type metadata accessor for StaticService(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v129 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v130 = &v113 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v113 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v128 = &v113 - v37;
  v38 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + v38[22], v5, &qword_1EC642590, qword_1D1E71260);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    (*(v28 + 56))(v26, 1, 1, v27);
LABEL_9:
    sub_1D1741A30(v26, &qword_1EC6436F0, &qword_1D1E99BC0);
    return 0;
  }

  v131 = v27;
  (*(v7 + 32))(v10, v5, v6);
  v39 = *(v1 + v38[20]);
  if (*(v39 + 16))
  {
    v40 = *(v1 + v38[20]);

    v41 = sub_1D1742188(v10);
    if (v42)
    {
      sub_1D1BD4044(*(v39 + 56) + *(v28 + 72) * v41, v26, type metadata accessor for StaticService);
      (*(v7 + 8))(v10, v6);

      v43 = 0;
      goto LABEL_8;
    }
  }

  (*(v7 + 8))(v10, v6);
  v43 = 1;
LABEL_8:
  v44 = v131;
  v121 = *(v28 + 56);
  v121(v26, v43, 1, v131);
  v45 = *(v28 + 48);
  if (v45(v26, 1, v44) == 1)
  {
    goto LABEL_9;
  }

  v119 = v45;
  v120 = v1;
  v47 = v128;
  sub_1D1BD410C(v26, v128, type metadata accessor for StaticService);
  v133 = *(v47 + *(v44 + 128));
  v132 = 44;
  sub_1D1CE53A4(&v132);
  if (v49)
  {
    sub_1D1BD40AC(v47, type metadata accessor for StaticService);
    return 0;
  }

  v118 = v28 + 48;
  LOBYTE(v133) = 0;
  v115 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v133, v48);
  v117 = v50;
  v51 = *(v120 + v38[21]);
  MEMORY[0x1EEE9AC00](v115);
  *(&v113 - 2) = v52;
  result = sub_1D17868B8(sub_1D1823318, (&v113 - 4), v51);
  v53 = result;
  v54 = *(result + 16);
  if (v54)
  {
    v55 = 0;
    while (v55 < *(v53 + 16))
    {
      sub_1D1BD4044(v53 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v55, v36, type metadata accessor for StaticService);
      if (sub_1D17C4E00(v36[*(v44 + 104)], &unk_1F4D62128))
      {

        sub_1D1BD410C(v36, v127, type metadata accessor for StaticService);
        v56 = 0;
        goto LABEL_20;
      }

      ++v55;
      result = sub_1D1BD40AC(v36, type metadata accessor for StaticService);
      if (v54 == v55)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_18:

  v56 = 1;
LABEL_20:
  v57 = v127;
  v121(v127, v56, 1, v44);
  v58 = v126;
  sub_1D1741C08(v57, v126, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v119(v58, 1, v44) == 1)
  {
    v59 = sub_1D1741A30(v58, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_23:
    v114 = 0;
    v116 = 0;
    goto LABEL_25;
  }

  v133 = *(v58 + *(v44 + 128));
  v132 = 115;
  sub_1D1CE53A4(&v132);
  v61 = v60;
  v63 = v62;
  v59 = sub_1D1BD40AC(v58, type metadata accessor for StaticService);
  if (v63)
  {
    goto LABEL_23;
  }

  v59 = sub_1D19CB618(1, 0.0, 100.0, v61);
  v114 = v59;
  v116 = v64;
LABEL_25:
  MEMORY[0x1EEE9AC00](v59);
  *(&v113 - 2) = v120;
  v126 = v51;
  result = sub_1D17868B8(sub_1D1823318, (&v113 - 4), v51);
  v65 = result;
  v66 = *(result + 16);
  if (!v66)
  {
LABEL_32:

    v71 = 1;
    v72 = v125;
LABEL_35:
    v73 = v120;
    v74 = (v121)(v72, v71, 1, v131);
    MEMORY[0x1EEE9AC00](v74);
    *(&v113 - 2) = v73;
    result = sub_1D17868B8(sub_1D1823318, (&v113 - 4), v126);
    v75 = result;
    v76 = *(result + 16);
    if (v76)
    {
      v77 = 0;
      while (v77 < *(v75 + 16))
      {
        v78 = v129;
        sub_1D1BD4044(v75 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v77, v129, type metadata accessor for StaticService);
        LOBYTE(v133) = *(v78 + *(v131 + 104));
        if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v79)
        {

LABEL_44:

          v82 = v124;
          sub_1D1BD410C(v129, v124, type metadata accessor for StaticService);
          v81 = 0;
          goto LABEL_45;
        }

        v80 = sub_1D1E6904C();

        if (v80)
        {
          goto LABEL_44;
        }

        ++v77;
        result = sub_1D1BD40AC(v129, type metadata accessor for StaticService);
        if (v76 == v77)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_63;
    }

LABEL_42:

    v81 = 1;
    v82 = v124;
LABEL_45:
    v84 = v122;
    v83 = v123;
    v85 = v119;
    v86 = v131;
    v121(v82, v81, 1, v131);
    sub_1D1741C08(v72, v84, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (v85(v84, 1, v86) == 1)
    {
      sub_1D1741A30(v84, &qword_1EC6436F0, &qword_1D1E99BC0);
      v87 = v116;
    }

    else
    {
      v133 = *(v84 + *(v86 + 128));
      v132 = 41;
      sub_1D1CE53A4(&v132);
      v89 = v88;
      v91 = v90;
      sub_1D1BD40AC(v84, type metadata accessor for StaticService);
      v87 = v116;
      if ((v91 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    sub_1D1741C08(v82, v83, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (v119(v83, 1, v86) == 1)
    {
      sub_1D1741A30(v83, &qword_1EC6436F0, &qword_1D1E99BC0);
      goto LABEL_51;
    }

    v133 = *(v83 + *(v86 + 128));
    v132 = 41;
    sub_1D1CE53A4(&v132);
    v89 = v92;
    v94 = v93;
    sub_1D1BD40AC(v83, type metadata accessor for StaticService);
    if (v94)
    {
LABEL_51:
      v95 = 0;
      v96 = 0;
      if (v87)
      {
LABEL_52:
        if (!v96)
        {
          static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC6430);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v108 = swift_allocObject();
          *(v108 + 16) = xmmword_1D1E73A90;
          v109 = MEMORY[0x1E69E6158];
          *(v108 + 56) = MEMORY[0x1E69E6158];
          v110 = sub_1D1757D20();
          v111 = v117;
          *(v108 + 32) = v115;
          *(v108 + 40) = v111;
          *(v108 + 96) = v109;
          *(v108 + 104) = v110;
          v112 = v114;
          *(v108 + 64) = v110;
          *(v108 + 72) = v112;
          *(v108 + 80) = v87;
          v107 = sub_1D1E6784C();

          sub_1D1741A30(v82, &qword_1EC6436F0, &qword_1D1E99BC0);
          sub_1D1741A30(v72, &qword_1EC6436F0, &qword_1D1E99BC0);
          sub_1D1741A30(v127, &qword_1EC6436F0, &qword_1D1E99BC0);
          sub_1D1BD40AC(v128, type metadata accessor for StaticService);
          return v107;
        }

        static String.hfLocalized(_:)(0xD000000000000037, 0x80000001D1EC6460);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1D1E6F900;
        v98 = MEMORY[0x1E69E6158];
        *(v97 + 56) = MEMORY[0x1E69E6158];
        v99 = sub_1D1757D20();
        v100 = v117;
        *(v97 + 32) = v115;
        *(v97 + 40) = v100;
        *(v97 + 96) = v98;
        *(v97 + 104) = v99;
        *(v97 + 64) = v99;
        *(v97 + 72) = v95;
        *(v97 + 80) = v96;
        *(v97 + 136) = v98;
        *(v97 + 144) = v99;
        *(v97 + 112) = v114;
        *(v97 + 120) = v87;
LABEL_57:
        v107 = sub_1D1E6784C();

        sub_1D1741A30(v82, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v72, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v127, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1BD40AC(v128, type metadata accessor for StaticService);
        return v107;
      }

LABEL_55:
      if (!v96)
      {

        sub_1D1741A30(v82, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v72, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v127, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1BD40AC(v128, type metadata accessor for StaticService);
        return v95;
      }

      static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC6400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1D1E73A90;
      v104 = MEMORY[0x1E69E6158];
      *(v103 + 56) = MEMORY[0x1E69E6158];
      v105 = sub_1D1757D20();
      v106 = v117;
      *(v103 + 32) = v115;
      *(v103 + 40) = v106;
      *(v103 + 96) = v104;
      *(v103 + 104) = v105;
      *(v103 + 64) = v105;
      *(v103 + 72) = v95;
      *(v103 + 80) = v96;
      goto LABEL_57;
    }

LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v89;
    v95 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(inited, 1);
    v96 = v102;
    swift_setDeallocating();
    if (v87)
    {
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  v67 = 0;
  while (v67 < *(v65 + 16))
  {
    v68 = v130;
    sub_1D1BD4044(v65 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v67, v130, type metadata accessor for StaticService);
    LOBYTE(v133) = *(v68 + *(v131 + 104));
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB30D0 == v69)
    {

LABEL_34:

      v72 = v125;
      sub_1D1BD410C(v130, v125, type metadata accessor for StaticService);
      v71 = 0;
      goto LABEL_35;
    }

    v70 = sub_1D1E6904C();

    if (v70)
    {
      goto LABEL_34;
    }

    ++v67;
    result = sub_1D1BD40AC(v130, type metadata accessor for StaticService);
    if (v66 == v67)
    {
      goto LABEL_32;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1D1BD26AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v86 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v86 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v95 = &v86 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v90 = &v86 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v86 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v86 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v91 = &v86 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v92 = &v86 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v86 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v93 = &v86 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v94 = &v86 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v86 - v37;
  v39 = *(a1 + 16);
  if (v39 == 1)
  {
    v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    LOBYTE(v98) = *(a2 + 4);
    v99 = 0;
    return StaticService.characteristicStateString(context:temperatureScale:)(&v98, &v99).value._countAndFlagsBits;
  }

  StaticAccessory.primaryStaticService.getter(&v86 - v37);
  if ((*(v7 + 48))(v38, 1, v6) == 1)
  {
    sub_1D1741A30(v38, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_5:
    LOBYTE(v98) = *(a2 + 4);
    v99 = 0;
    return StaticService.characteristicStateString(context:temperatureScale:)(&v98, &v99).value._countAndFlagsBits;
  }

  v97 = v6;
  v42 = v38[*(v6 + 104)];
  sub_1D1BD40AC(v38, type metadata accessor for StaticService);
  if (v42 > 0x34)
  {
    goto LABEL_5;
  }

  if (((1 << v42) & 0x19000010014000) == 0)
  {
    if (((1 << v42) & 0x400000100000) != 0)
    {
      v64 = v95;
      sub_1D1BD4044(v96, v95, type metadata accessor for StaticService);
      v65 = v97;
      if (v39)
      {
        v66 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v67 = *(v7 + 72);
        while (1)
        {
          sub_1D1BD4044(v66, v11, type metadata accessor for StaticService);
          if (sub_1D17C4E00(v11[*(v65 + 104)], &unk_1F4D62150))
          {
            break;
          }

          sub_1D1BD40AC(v11, type metadata accessor for StaticService);
          v66 += v67;
          if (!--v39)
          {
            goto LABEL_50;
          }
        }

        v78 = v87;
        sub_1D1BD410C(v11, v87, type metadata accessor for StaticService);
        v79 = v88;
        sub_1D1BD410C(v78, v88, type metadata accessor for StaticService);
        if (StaticService.isActivated.getter() & 1) == 0 && (StaticService.isActivated.getter())
        {
          v98 = *(v79 + *(v65 + 128));
          v99 = 115;
          sub_1D1CE53A4(&v99);
          if ((v81 & 1) == 0)
          {
            v82 = sub_1D19CB618(1, 0.0, 100.0, v80);
            v84 = v83;
            static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EC64A0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
            v85 = swift_allocObject();
            *(v85 + 16) = xmmword_1D1E739C0;
            *(v85 + 56) = MEMORY[0x1E69E6158];
            *(v85 + 64) = sub_1D1757D20();
            *(v85 + 32) = v82;
            *(v85 + 40) = v84;
            countAndFlagsBits = sub_1D1E6783C();

            sub_1D1BD40AC(v64, type metadata accessor for StaticService);
            v75 = v79;
            goto LABEL_51;
          }
        }

        sub_1D1BD40AC(v79, type metadata accessor for StaticService);
      }

LABEL_50:
      LOBYTE(v98) = *(a2 + 4);
      v99 = 0;
      countAndFlagsBits = StaticService.characteristicStateString(context:temperatureScale:)(&v98, &v99).value._countAndFlagsBits;
      v75 = v64;
      goto LABEL_51;
    }

    goto LABEL_5;
  }

  if (!v39)
  {
    return 0;
  }

  v95 = a2;
  v43 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v44 = *(v7 + 72);
  v45 = v43;
  v46 = v39;
  while (1)
  {
    sub_1D1BD4044(v45, v31, type metadata accessor for StaticService);
    if ((StaticService.isActivated.getter() & 1) == 0)
    {
      goto LABEL_12;
    }

    LOBYTE(v98) = v31[*(v97 + 104)];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB31F0 == v48)
    {
      break;
    }

    v47 = sub_1D1E6904C();

    if (v47)
    {
      goto LABEL_17;
    }

LABEL_12:
    sub_1D1BD40AC(v31, type metadata accessor for StaticService);
    v45 += v44;
    if (!--v46)
    {
      goto LABEL_19;
    }
  }

LABEL_17:
  v49 = v31;
  v50 = v93;
  sub_1D1BD410C(v49, v93, type metadata accessor for StaticService);
  v51 = v94;
  sub_1D1BD410C(v50, v94, type metadata accessor for StaticService);
  v98 = *(v51 + *(v97 + 128));
  v99 = 12;
  v100 = StaticCharacteristicsBag.int(for:)(&v99);
  if (!v100.is_nil)
  {
    v68 = sub_1D19CB618(1, 0.0, 100.0, v100.value);
    v70 = v69;
    v71 = "HFCharacteristicValueSpeed";
    v72 = 0xD00000000000001FLL;
LABEL_45:
    static String.hfLocalized(_:)(v72, v71 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1D1E739C0;
    *(v77 + 56) = MEMORY[0x1E69E6158];
    *(v77 + 64) = sub_1D1757D20();
    *(v77 + 32) = v68;
    *(v77 + 40) = v70;
    countAndFlagsBits = sub_1D1E6783C();

    v75 = v51;
    goto LABEL_51;
  }

  sub_1D1BD40AC(v51, type metadata accessor for StaticService);
LABEL_19:
  v96 = 0x80000001D1EB35B0;
  v52 = v43;
  v53 = v39;
  while (2)
  {
    sub_1D1BD4044(v52, v24, type metadata accessor for StaticService);
    if ((StaticService.isActivated.getter() & 1) == 0)
    {
LABEL_21:
      sub_1D1BD40AC(v24, type metadata accessor for StaticService);
      v52 += v44;
      if (!--v53)
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  v55 = *(v97 + 104);
  LOBYTE(v98) = v24[v55];
  if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB2FB0 != v56)
  {
    v57 = sub_1D1E6904C();

    if (v57)
    {
      goto LABEL_29;
    }

    LOBYTE(v98) = v24[v55];
    if (ServiceKind.rawValue.getter() != 0xD000000000000024 || v96 != v58)
    {
      v54 = sub_1D1E6904C();

      if (v54)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

LABEL_29:
  v59 = v91;
  sub_1D1BD410C(v24, v91, type metadata accessor for StaticService);
  v51 = v92;
  sub_1D1BD410C(v59, v92, type metadata accessor for StaticService);
  v98 = *(v51 + *(v97 + 128));
  v99 = 115;
  sub_1D1CE53A4(&v99);
  if ((v61 & 1) == 0)
  {
    v68 = sub_1D19CB618(1, 0.0, 100.0, v60);
    v70 = v76;
    v71 = "TempHumidityAndFanSpeed";
    v72 = 0xD00000000000001ALL;
    goto LABEL_45;
  }

  sub_1D1BD40AC(v51, type metadata accessor for StaticService);
LABEL_31:
  v62 = v95;
  v63 = v90;
  while (1)
  {
    sub_1D1BD4044(v43, v63, type metadata accessor for StaticService);
    if (StaticService.isActivated.getter())
    {
      break;
    }

    sub_1D1BD40AC(v63, type metadata accessor for StaticService);
    result = 0;
    v43 += v44;
    if (!--v39)
    {
      return result;
    }
  }

  v73 = v89;
  sub_1D1BD410C(v63, v89, type metadata accessor for StaticService);
  LOBYTE(v98) = *(v62 + 4);
  v99 = 0;
  countAndFlagsBits = StaticService.characteristicStateString(context:temperatureScale:)(&v98, &v99).value._countAndFlagsBits;
  v75 = v73;
LABEL_51:
  sub_1D1BD40AC(v75, type metadata accessor for StaticService);
  return countAndFlagsBits;
}

uint64_t StaticAccessory.onServicesCount.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1BD0D48();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    while (1)
    {
      sub_1D1BD4044(v8, v4, type metadata accessor for StaticService);
      v10 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v4, type metadata accessor for StaticService);
      v12 = __OFADD__(v7, v10 & 1);
      v7 += v10 & 1;
      if (v12)
      {
        break;
      }

      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t StaticAccessory.offServicesCount.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1BD0D48();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    while (1)
    {
      sub_1D1BD4044(v8, v4, type metadata accessor for StaticService);
      v10 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v4, type metadata accessor for StaticService);
      v12 = (v10 & 1) == 0;
      v13 = __OFADD__(v7, v12);
      v7 += v12;
      if (v13)
      {
        break;
      }

      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t StaticAccessory.totalEligibleServicesCount.getter()
{
  v0 = *(sub_1D1BD0D48() + 16);

  return v0;
}

uint64_t StaticAccessory.allServicessOn.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = sub_1D1BD0D48();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = v8 + v11;
    v13 = *(v1 + 72);
    do
    {
      sub_1D1BD4044(v12, v7, type metadata accessor for StaticService);
      v14 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v7, type metadata accessor for StaticService);
      v16 = __OFADD__(v10, v14 & 1);
      v10 += v14 & 1;
      if (v16)
      {
        __break(1u);
        goto LABEL_16;
      }

      v12 += v13;
      --v9;
    }

    while (v9);

    if (v10 <= 0)
    {
      return 0;
    }

    v17 = sub_1D1BD0D48();
    v18 = *(v17 + 16);
    if (!v18)
    {

      return 1;
    }

    v19 = 0;
    v20 = v17 + v11;
    while (1)
    {
      sub_1D1BD4044(v20, v5, type metadata accessor for StaticService);
      v21 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v5, type metadata accessor for StaticService);
      v22 = (v21 & 1) == 0;
      v16 = __OFADD__(v19, v22);
      v19 += v22;
      if (v16)
      {
        break;
      }

      v20 += v13;
      if (!--v18)
      {

        return v19 == 0;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

BOOL StaticAccessory.tileShouldShowCount.getter()
{
  v0 = *(sub_1D1BD0D48() + 16);

  if (v0 > 3)
  {
    return 1;
  }

  v2 = *(sub_1D1BD0D48() + 16);

  if (v2 != 2)
  {
    return 0;
  }

  return StaticAccessory.allServicesAreTheSameKind.getter();
}

uint64_t StaticAccessory.allServicesOff.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = sub_1D1BD0D48();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = v8 + v11;
    v13 = *(v1 + 72);
    do
    {
      sub_1D1BD4044(v12, v7, type metadata accessor for StaticService);
      v14 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v7, type metadata accessor for StaticService);
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v10, v16);
      v10 += v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_16;
      }

      v12 += v13;
      --v9;
    }

    while (v9);

    if (v10 <= 0)
    {
      return 0;
    }

    v18 = sub_1D1BD0D48();
    v19 = *(v18 + 16);
    if (!v19)
    {

      return 1;
    }

    v20 = 0;
    v21 = v18 + v11;
    while (1)
    {
      sub_1D1BD4044(v21, v5, type metadata accessor for StaticService);
      v22 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v5, type metadata accessor for StaticService);
      v17 = __OFADD__(v20, v22 & 1);
      v20 += v22 & 1;
      if (v17)
      {
        break;
      }

      v21 += v13;
      if (!--v19)
      {

        return v20 == 0;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1D1BD3934(uint64_t a1)
{
  v2 = type metadata accessor for StaticCluster();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for StaticEndpoint();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for StaticClusterPowerSource();
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v58);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v47 - v19;
  v20 = *(a1 + *(type metadata accessor for StaticMatterDevice() + 56));
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 64);
  v24 = (v21 + 63) >> 6;
  v25 = (v13 + 56);
  v51 = v13;
  v26 = (v13 + 48);
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v29 = v28;
    if (!v23)
    {
      break;
    }

LABEL_8:
    sub_1D1BD4044(*(v20 + 56) + *(v56 + 72) * (__clz(__rbit64(v23)) | (v28 << 6)), v12, type metadata accessor for StaticEndpoint);
    v30 = *&v12[*(v57 + 36)];
    if (!*(v30 + 16))
    {
      goto LABEL_13;
    }

    v31 = sub_1D171D278(2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_13;
    }

    v33 = *(v30 + 56);
    v34 = v52;
    sub_1D1BD4044(v33 + *(v53 + 72) * v31, v52, type metadata accessor for StaticCluster);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1D1BD40AC(v34, type metadata accessor for StaticCluster);
LABEL_13:
      v35 = 1;
      goto LABEL_14;
    }

    sub_1D1BD410C(v34, v8, type metadata accessor for StaticClusterPowerSource);
    v35 = 0;
LABEL_14:
    v23 &= v23 - 1;
    v36 = v58;
    (*v25)(v8, v35, 1, v58);
    sub_1D1BD40AC(v12, type metadata accessor for StaticEndpoint);
    if ((*v26)(v8, 1, v36) == 1)
    {
      result = sub_1D1741A30(v8, &qword_1EC6448C8, &qword_1D1E94060);
    }

    else
    {
      sub_1D1BD410C(v8, v48, type metadata accessor for StaticClusterPowerSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1D177D8BC(0, v55[2] + 1, 1, v55);
      }

      v38 = v55[2];
      v37 = v55[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v47 = v38 + 1;
        v41 = sub_1D177D8BC(v37 > 1, v38 + 1, 1, v55);
        v39 = v47;
        v55 = v41;
      }

      v40 = v55;
      v55[2] = v39;
      result = sub_1D1BD410C(v48, v40 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, type metadata accessor for StaticClusterPowerSource);
    }
  }

  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v20 + 64 + 8 * v28);
    ++v29;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  if (v55[2])
  {
    v42 = v49;
    sub_1D1BD4044(v55 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v49, type metadata accessor for StaticClusterPowerSource);

    v43 = v50;
    sub_1D1BD410C(v42, v50, type metadata accessor for StaticClusterPowerSource);
    v44 = (v43 + *(v58 + 44));
    v45 = *v44;
    v46 = v44[1];
    sub_1D1BD40AC(v43, type metadata accessor for StaticClusterPowerSource);
    if ((v46 & 1) == 0)
    {
      return (v45 - 1) < 2;
    }
  }

  else
  {
  }

  return 0;
}

void *sub_1D1BD3F0C()
{
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC6BE1B0;

  result = sub_1D1B65564(&unk_1F4D5F3C8, v0);
  off_1EC64C610 = result;
  return result;
}

uint64_t sub_1D1BD3F80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1BD4018(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D1DE6908(v4);
}

uint64_t sub_1D1BD4044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BD40AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1BD410C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1BD4174(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v2 = v39[1];
    v4 = v39[2];
    v5 = v39[3];
    v6 = v39[4];
    v7 = v39[5];
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v2 < 0)
  {
    v18 = sub_1D1E6877C();
    if (!v18 || (v38 = v18, sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8), swift_dynamicCast(), v17 = v39[0], v15 = v6, v16 = v7, !v39[0]))
    {
LABEL_33:
      sub_1D1716918();
      return;
    }

LABEL_19:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      v12 = v17;
      goto LABEL_9;
    }

    v37 = v16;
    v20 = [v19 characteristic];
    v12 = [v20 service];

    if (v12)
    {
      v36 = a1;
      v21 = [v12 associatedServiceType];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1D1E6781C();
        v25 = v24;

        v26._countAndFlagsBits = v23;
        v26._object = v25;
        ServiceKind.init(rawValue:)(v26);
        v27 = v39[0];
        if (LOBYTE(v39[0]) == 53)
        {
          v27 = 0;
        }

        LOBYTE(v39[0]) = v27;
        sub_1D1BDB200(v39, &v38);
        v28 = v38;
        if (v38 != 8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v38) = 8;
      }

      v29 = [v12 serviceType];
      v30 = sub_1D1E6781C();
      v32 = v31;

      v33._countAndFlagsBits = v30;
      v33._object = v32;
      ServiceKind.init(rawValue:)(v33);
      v34 = v39[0];
      if (LOBYTE(v39[0]) == 53)
      {
        v34 = 0;
      }

      v40 = v34;
      ServiceKind.umbrellaCategory.getter(v39);
      v28 = LOBYTE(v39[0]);
LABEL_31:
      v39[0] = v36;

      sub_1D176989C(&v38, v28);
      v35 = v39[0];

      a1 = v35;
      goto LABEL_32;
    }

    v12 = v17;
LABEL_32:
    v16 = v37;
LABEL_9:

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_33;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1D1BD451C()
{
  v1 = 0x6E69747563657865;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D1BD4570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1BDBA50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1BD4598(uint64_t a1)
{
  v2 = sub_1D1BD4AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD45D4(uint64_t a1)
{
  v2 = sub_1D1BD4AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BD4610(uint64_t a1)
{
  v2 = sub_1D1BD4BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD464C(uint64_t a1)
{
  v2 = sub_1D1BD4BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BD4688(uint64_t a1)
{
  v2 = sub_1D1BD4B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD46C4(uint64_t a1)
{
  v2 = sub_1D1BD4B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BD4700(uint64_t a1)
{
  v2 = sub_1D1BD4BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD473C(uint64_t a1)
{
  v2 = sub_1D1BD4BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticActionSet.ExecutionStatus.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C618, &qword_1D1E9FA60);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C620, &qword_1D1E9FA68);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C628, &qword_1D1E9FA70);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C630, &unk_1D1E9FA78);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BD4AF8();
  sub_1D1E6930C();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1D1BD4BA0();
      sub_1D1E68DFC();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1D1BD4B4C();
      v21 = v27;
      sub_1D1E68DFC();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1D1BD4BF4();
    sub_1D1E68DFC();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1D1BD4AF8()
{
  result = qword_1EC64C638;
  if (!qword_1EC64C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C638);
  }

  return result;
}

unint64_t sub_1D1BD4B4C()
{
  result = qword_1EC64C640;
  if (!qword_1EC64C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C640);
  }

  return result;
}

unint64_t sub_1D1BD4BA0()
{
  result = qword_1EC64C648;
  if (!qword_1EC64C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C648);
  }

  return result;
}

unint64_t sub_1D1BD4BF4()
{
  result = qword_1EC64C650;
  if (!qword_1EC64C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C650);
  }

  return result;
}

uint64_t StaticActionSet.ExecutionStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BD4CD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D1BDBB6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t StaticActionSet.Error.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t StaticActionSet.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticActionSet.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticActionSet() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticActionSet.actionSetKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticActionSet();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t StaticActionSet.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticActionSet() + 28);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticActionSet.tileIcon.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticActionSet() + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  *(a1 + 73) = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_1D18A9844(v11, &v10);
}

uint64_t StaticActionSet.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticActionSet() + 44));
}

uint64_t StaticActionSet.umbrellaCategories.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticActionSet() + 52));
}

unint64_t sub_1D1BD5078(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x65536E6F69746361;
      break;
    case 3:
      result = 0x6449656D6F68;
      break;
    case 4:
      result = 0x7463416F4E736168;
      break;
    case 5:
      result = 0x6E6F6349656C6974;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x7364496D6F6F72;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6176697463417369;
      break;
    case 11:
      result = 0x6F69747563657865;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1BD5208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1BDCE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1BD5230(uint64_t a1)
{
  v2 = sub_1D1BDC128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD526C(uint64_t a1)
{
  v2 = sub_1D1BDC128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticActionSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C658, &qword_1D1E9FA88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BDC128();
  sub_1D1E6930C();
  LOBYTE(v39[0]) = 0;
  sub_1D1E66A7C();
  sub_1D1BDC278(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  v44 = v3;
  v11 = v5;
  sub_1D1E68F1C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v28 = v6;
  v13 = type metadata accessor for StaticActionSet();
  v14 = (v44 + v13[5]);
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v39[0]) = 1;
  sub_1D1E68ECC();
  LOBYTE(v39[0]) = *(v44 + v13[6]);
  LOBYTE(v34) = 2;
  sub_1D18F1588();
  sub_1D1E68E5C();
  v17 = v13[7];
  LOBYTE(v39[0]) = 3;
  sub_1D1E68F1C();
  v18 = *(v44 + v13[8]);
  v43 = 4;
  sub_1D1E68EDC();
  v19 = (v44 + v13[9]);
  v20 = v19[3];
  v21 = v19[1];
  v40 = v19[2];
  v41 = v20;
  v22 = v19[3];
  *v42 = v19[4];
  *&v42[9] = *(v19 + 73);
  v23 = v19[1];
  v39[0] = *v19;
  v39[1] = v23;
  v36 = v40;
  v37 = v22;
  v38[0] = v19[4];
  *(v38 + 9) = *(v19 + 73);
  v34 = v39[0];
  v35 = v21;
  v33 = 5;
  sub_1D18A9844(v39, v31);
  sub_1D1BDC17C();
  sub_1D1E68F1C();
  v31[2] = v36;
  v31[3] = v37;
  *v32 = v38[0];
  *&v32[9] = *(v38 + 9);
  v31[0] = v34;
  v31[1] = v35;
  sub_1D18A98A0(v31);
  v30 = *(v44 + v13[10]);
  v29 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
  sub_1D1BDC314(&qword_1EC64C670);
  sub_1D1E68E5C();
  v30 = *(v44 + v13[11]);
  v29 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1BDC384(&qword_1EC646B10, &qword_1EE07B258);
  sub_1D1E68F1C();
  v24 = *(v44 + v13[12]);
  LOBYTE(v30) = 8;
  sub_1D1E68EDC();
  v30 = *(v44 + v13[13]);
  v29 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C678, &qword_1D1E9FA90);
  sub_1D1BDC420(&qword_1EC64C680, sub_1D1BDC1D0);
  sub_1D1E68F1C();
  v25 = *(v44 + v13[14]);
  LOBYTE(v30) = 10;
  sub_1D1E68EDC();
  LOBYTE(v30) = *(v44 + v13[15]);
  v29 = 11;
  sub_1D1BDC224();
  sub_1D1E68F1C();
  v26 = v13[16];
  LOBYTE(v30) = 12;
  sub_1D1E669FC();
  sub_1D1BDC278(&qword_1EC642EC8, MEMORY[0x1E6969530]);
  sub_1D1E68E5C();
  return (*(v28 + 8))(v9, v11);
}

uint64_t StaticActionSet.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v43 = sub_1D1E669FC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v36 - v9;
  sub_1D1E66A7C();
  sub_1D1BDC278(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticActionSet();
  v11 = (v1 + v10[5]);
  v12 = *v11;
  v13 = v11[1];
  sub_1D1E678EC();
  v14 = *(v1 + v10[6]);
  v42 = v4;
  sub_1D1E6922C();
  if (v14 != 7)
  {
    sub_1D1E678EC();
  }

  v15 = v1 + v10[7];
  sub_1D1E676EC();
  v16 = *(v2 + v10[8]);
  sub_1D1E6922C();
  v17 = (v2 + v10[9]);
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  v21 = v17[3];
  v22 = v17[4];
  v23 = *(v17 + 40);
  v25 = v17[6];
  v24 = v17[7];
  v26 = *(v17 + 64);
  v27 = v17[9];
  v38 = v17[10];
  v39 = v27;
  v40 = *(v17 + 88);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v20);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v23);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v26);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v40);
  v28 = *(v2 + v10[10]);
  sub_1D1E6922C();
  if (v28)
  {
    sub_1D185B98C(a1, v28);
  }

  v30 = v42;
  v29 = v43;
  sub_1D176D4E8(a1, *(v2 + v10[11]));
  v31 = *(v2 + v10[12]);
  sub_1D1E6922C();
  sub_1D176E30C(a1, *(v2 + v10[13]));
  v32 = *(v2 + v10[14]);
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v2 + v10[15]));
  v33 = v41;
  sub_1D1741C08(v2 + v10[16], v41, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v30 + 48))(v33, 1, v29) == 1)
  {
    return sub_1D1E6922C();
  }

  v35 = v37;
  (*(v30 + 32))(v37, v33, v29);
  sub_1D1E6922C();
  sub_1D1BDC278(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  return (*(v30 + 8))(v35, v29);
}

uint64_t StaticActionSet.hashValue.getter()
{
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticActionSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v40 - v5;
  v6 = sub_1D1E66A7C();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C698, &qword_1D1E9FA98);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = type metadata accessor for StaticActionSet();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BDC128();
  v51 = v16;
  v22 = v52;
  sub_1D1E692FC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v10;
  v52 = a1;
  v43 = v17;
  v44 = v20;
  LOBYTE(v54) = 0;
  sub_1D1BDC278(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v23 = v48;
  sub_1D1E68D7C();
  v24 = *(v47 + 32);
  v25 = v44;
  v24(v44, v23, v6);
  LOBYTE(v54) = 1;
  v26 = sub_1D1E68D2C();
  v41 = v6;
  v48 = 0;
  v40 = v24;
  v27 = v25;
  v28 = v43;
  v29 = &v27[v43[5]];
  *v29 = v26;
  v29[1] = v30;
  LOBYTE(v53) = 2;
  sub_1D18F187C();
  sub_1D1E68CBC();
  v44[v28[6]] = v54;
  LOBYTE(v54) = 3;
  v31 = v42;
  v32 = v41;
  sub_1D1E68D7C();
  v33 = v31;
  v34 = v44;
  v40(&v44[v28[7]], v33, v32);
  LOBYTE(v54) = 4;
  v34[v28[8]] = sub_1D1E68D3C() & 1;
  v60 = 5;
  sub_1D1BDC2C0();
  sub_1D1E68D7C();
  v35 = &v34[v28[9]];
  v36 = v57;
  *(v35 + 2) = v56;
  *(v35 + 3) = v36;
  *(v35 + 4) = v58[0];
  *(v35 + 73) = *(v58 + 9);
  v37 = v55;
  *v35 = v54;
  *(v35 + 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
  v59 = 6;
  sub_1D1BDC314(&qword_1EC64C6A8);
  sub_1D1E68CBC();
  *&v44[v28[10]] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v59 = 7;
  sub_1D1BDC384(&qword_1EC646B78, &qword_1EC644B20);
  sub_1D1E68D7C();
  *&v44[v28[11]] = v53;
  LOBYTE(v53) = 8;
  v44[v28[12]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C678, &qword_1D1E9FA90);
  v59 = 9;
  sub_1D1BDC420(&qword_1EC64C6B0, sub_1D1BDC498);
  sub_1D1E68D7C();
  *&v44[v43[13]] = v53;
  LOBYTE(v53) = 10;
  v44[v43[14]] = sub_1D1E68D3C() & 1;
  v59 = 11;
  sub_1D1BDC4EC();
  sub_1D1E68D7C();
  v44[v43[15]] = v53;
  sub_1D1E669FC();
  LOBYTE(v53) = 12;
  sub_1D1BDC278(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  (*(v50 + 8))(v51, v49);
  v38 = v44;
  sub_1D1741A90(v46, &v44[v43[16]], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1BDD270(v38, v45, type metadata accessor for StaticActionSet);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_1D1BDD340(v38, type metadata accessor for StaticActionSet);
}

uint64_t sub_1D1BD695C()
{
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BD69A0()
{
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticActionSet.foregroundColor.getter()
{
  if (!*(v0 + *(type metadata accessor for StaticActionSet() + 40)) || (v1 = , (result = Color.init(_:)(v1)) == 0))
  {
    if (qword_1EC642158 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t StaticActionSet.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t StaticActionSet.statusString(with:associatedMatterDevice:)()
{
  v1 = type metadata accessor for StaticActionSet();
  result = 0;
  if (*(v0 + *(v1 + 60)) == 2)
  {
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
  }

  return result;
}

uint64_t StaticActionSet.set(showInDashboard:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1BD6C88;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BD6C88(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BD6D88, 0, 0);
}

uint64_t sub_1D1BD6D88()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = StaticActionSet.get(from:)(*(v0 + 32));

    if (v3)
    {
      v4 = *(v0 + 40);
      v5 = v3;
      HMActionSet.shouldShowInDashboard.setter(v4);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t StaticActionSet.actionSet.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BD6EC4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BD6EC4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BD6FC4, 0, 0);
}

uint64_t sub_1D1BD6FC4()
{
  isa = v0[4].super.isa;
  if (isa)
  {
    v2 = v0[2].super.isa;
    v3 = StaticActionSet.get(from:)(v0[4]);
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[1].super.isa;

  return v4(v3);
}

uint64_t sub_1D1BD705C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a2[2] = v12;
  a2[3] = v4;
  a2[4] = v5;
  *(a2 + 73) = v6;
  *a2 = v7;
  a2[1] = v8;
  return sub_1D18A9844(v11, &v10);
}

uint64_t sub_1D1BD70BC(uint64_t a1)
{
  if (!*(v1 + *(a1 + 40)) || (v2 = , (result = Color.init(_:)(v2)) == 0))
  {
    if (qword_1EC642158 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t sub_1D1BD716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + *(a3 + 60)) == 2)
  {
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1BD71BC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1BD6C88;

  return sub_1D1E387D4();
}

uint64_t static StaticActionSet.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticActionSet() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (v8 || (v9 = 1, v10 = *v7, v11 = v7[1], (sub_1D1E6904C() & 1) == 0) && (v9 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v9;
}

uint64_t sub_1D1BD7364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, v9 = *v6, v10 = v6[1], (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v8;
}

uint64_t sub_1D1BD7434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 8);
  v8 = (a1 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
LABEL_8:
    v12 = MEMORY[0x1D3890070](a2, a1) ^ 1;
    return v12 & 1;
  }

  v10 = *v8;
  v11 = v8[1];
  if ((sub_1D1E6904C() & 1) == 0)
  {
    if ((sub_1D1E6904C() & 1) == 0)
    {
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_8;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1D1BD74E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  if (v4 == *v6 && v5 == v6[1])
  {
LABEL_8:
    v12 = MEMORY[0x1D3890070](a1, a2) ^ 1;
    return v12 & 1;
  }

  v8 = a1;
  v9 = a2;
  v10 = *v6;
  v11 = v6[1];
  if ((sub_1D1E6904C() & 1) == 0)
  {
    v13 = sub_1D1E6904C();
    a2 = v9;
    a1 = v8;
    if ((v13 & 1) == 0)
    {
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_8;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1D1BD7598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a2 + v3 + 8);
  v6 = (a1 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, v9 = *v6, v10 = v6[1], (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v8;
}

uint64_t sub_1D1BD7668@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v52 = a5;
  v53 = a6;
  v49 = a3;
  v55 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v48 - v13;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v15 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v54 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E66A7C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - v23;
  v25 = *a1;
  v26 = sub_1D1CC905C(a2);
  if (v26 && (v27 = v26, v28 = [v25 uniqueIdentifier], sub_1D1E66A5C(), v28, LOBYTE(v28) = sub_1D1719534(v24, v27), , (*(v18 + 8))(v24, v17), (v28 & 1) == 0))
  {
    v40 = type metadata accessor for StaticActionSet();
    return (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  }

  else
  {
    v29 = v54;
    sub_1D1BDD270(v49, v54, type metadata accessor for StateSnapshot.UpdateType);
    if (a4)
    {
      v30 = v25;
      v31 = [v25 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(a4 + 16) && (v32 = sub_1D1742188(v22), (v33 & 1) != 0))
      {
        v34 = v32;
        v35 = *(a4 + 56);
        v36 = type metadata accessor for StaticActionSet();
        v37 = *(v36 - 8);
        v38 = v35 + *(v37 + 72) * v34;
        v30 = v25;
        v39 = v50;
        sub_1D1BDD270(v38, v50, type metadata accessor for StaticActionSet);
        (*(v18 + 8))(v22, v17);
        (*(v37 + 56))(v39, 0, 1, v36);
        v29 = v54;
      }

      else
      {
        (*(v18 + 8))(v22, v17);
        v42 = type metadata accessor for StaticActionSet();
        v39 = v50;
        (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
      }
    }

    else
    {
      v43 = type metadata accessor for StaticActionSet();
      v39 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v30 = v25;
      v44 = v25;
    }

    v45 = v52;

    v46 = v53;

    v47 = v51;
    return sub_1D1BD7AC8(v29, v30, v39, v45, v46, v47, v55);
  }
}

uint64_t sub_1D1BD7AC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v164 = a6;
  v161 = a4;
  v162 = a5;
  v166 = a7;
  v167 = a3;
  v170 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v149 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v157 = &v149 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v149 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v152 = &v149 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v150 = &v149 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v149 - v25;
  v26 = sub_1D1E669FC();
  v27 = *(v26 - 8);
  v158 = v26;
  v159 = v27;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v153 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v149 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v149 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v160 = (&v149 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x1EEE9AC00](v38);
  v156 = &v149 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v151 = &v149 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v154 = &v149 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v149 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v149 - v49;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v52 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v54 = (&v149 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for StaticActionSet();
  v56 = *(v55 - 8);
  v168 = v55;
  v169 = v56;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v163 = &v149 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = a1;
  sub_1D1BDD270(a1, v54, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D1BDD340(v54, type metadata accessor for StateSnapshot.UpdateType);
    goto LABEL_11;
  }

  v59 = *v54;
  if (!*(v59 + 16) || (v60 = sub_1D171D3B8(v170), (v61 & 1) == 0))
  {

LABEL_11:
    v76 = v167;
    sub_1D1741C08(v167, v20, &qword_1EC643718, &qword_1D1E71E70);
    v77 = v168;
    v78 = *(v169 + 48);
    if (v78(v20, 1, v168) == 1)
    {
      sub_1D1741A30(v20, &qword_1EC643718, &qword_1D1E71E70);
    }

    else
    {
      v79 = v20[v77[15]];
      sub_1D1BDD340(v20, type metadata accessor for StaticActionSet);
      if (v79 == 1)
      {
        v80 = v157;
        sub_1D1741C08(v76, v157, &qword_1EC643718, &qword_1D1E71E70);
        v81 = v78(v80, 1, v77);
        v82 = v170;
        if (v81 != 1)
        {

          v88 = *(v80 + v77[14]);
          sub_1D1BDD340(v80, type metadata accessor for StaticActionSet);
          goto LABEL_18;
        }

        sub_1D1741A30(v80, &qword_1EC643718, &qword_1D1E71E70);
        v83 = [v82 actions];
        sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
        sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
        v77 = v168;
        v84 = sub_1D1E6816C();

        v85 = v161;

        v86 = v162;

        sub_1D1BDB7F8(1u, v84, v85, v86);
        v88 = v87;

        swift_bridgeObjectRelease_n();
LABEL_17:
        swift_bridgeObjectRelease_n();
LABEL_18:
        v96 = v160;
        sub_1D1741C08(v76, v15, &qword_1EC643718, &qword_1D1E71E70);
        if (v78(v15, 1, v77) == 1)
        {
          sub_1D1741A30(v15, &qword_1EC643718, &qword_1D1E71E70);
          v97 = 0;
        }

        else
        {
          v97 = v15[v77[15]];
          sub_1D1BDD340(v15, type metadata accessor for StaticActionSet);
        }

        sub_1D1741C08(v76, v12, &qword_1EC643718, &qword_1D1E71E70);
        v98 = v78(v12, 1, v77);
        v64 = v163;
        if (v98 == 1)
        {
          sub_1D1741A30(v12, &qword_1EC643718, &qword_1D1E71E70);
          (*(v159 + 56))(v96, 1, 1, v158);
        }

        else
        {
          sub_1D1741C08(&v12[v77[16]], v96, &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1BDD340(v12, type metadata accessor for StaticActionSet);
        }

        sub_1D1BDA3F8(v170, v88 & 1, v97, v96, v164, v64);
        v99 = v76;
        goto LABEL_25;
      }
    }

    v89 = [v170 actions];
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v77 = v168;
    v90 = sub_1D1E6816C();

    v91 = v15;
    v92 = v12;
    v93 = v161;

    v94 = v162;

    sub_1D1BDB7F8(1u, v90, v93, v94);
    v88 = v95;

    v12 = v92;
    v15 = v91;
    swift_bridgeObjectRelease_n();
    goto LABEL_17;
  }

  v62 = *(*(v59 + 56) + 2 * v60);

  if (v62 >> 14)
  {
    v63 = v170;
    v64 = v163;
    v65 = v158;
    if (v62 >> 14 != 1)
    {
      v108 = [v170 actions];
      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
      v109 = sub_1D1E6816C();

      v110 = v161;

      v111 = v162;

      v112 = 1;
      sub_1D1BDB7F8(1u, v109, v110, v111);
      v114 = v113;

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v115 = [v63 isExecuting];
      v116 = [v63 lastExecutionDate];
      if (v116)
      {
        v117 = v116;
        sub_1D1E669BC();

        v112 = 0;
      }

      v118 = v167;
      v77 = v168;
      (*(v159 + 56))(v50, v112, 1, v65);
      sub_1D1BDA3F8(v63, v114 & 1, v115, v50, v164, v64);
      v99 = v118;
      goto LABEL_25;
    }

    v66 = [v170 lastExecutionDate];
    if (!v66)
    {
      goto LABEL_39;
    }

    v67 = v66;
    sub_1D1E669BC();

    v68 = v159;
    v69 = *(v159 + 32);
    v69(v35, v33, v65);
    v70 = v65;
    v71 = v155;
    sub_1D1741C08(v167, v155, &qword_1EC643718, &qword_1D1E71E70);
    v72 = *(v169 + 48);
    v73 = v35;
    v74 = v168;
    v149 = v169 + 48;
    v160 = v72;
    if (v72(v71, 1, v168) == 1)
    {
      (*(v68 + 8))(v73, v70);
      sub_1D1741A30(v71, &qword_1EC643718, &qword_1D1E71E70);
      v75 = v154;
      (*(v68 + 56))(v154, 1, 1, v70);
      v65 = v70;
    }

    else
    {
      v157 = v73;
      v119 = v71 + v74[16];
      v75 = v154;
      sub_1D1741C08(v119, v154, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1BDD340(v71, type metadata accessor for StaticActionSet);
      v65 = v70;
      if ((*(v68 + 48))(v75, 1, v70) != 1)
      {
        v131 = v153;
        v69(v153, v75, v70);
        sub_1D1BDC278(&unk_1EC649E50, MEMORY[0x1E6969530]);
        v132 = v157;
        if ((sub_1D1E6771C() & 1) == 0)
        {
          v134 = [v63 actions];
          sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
          sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
          v135 = sub_1D1E6816C();

          v136 = v161;

          v137 = v162;

          sub_1D1BDB7F8(1u, v135, v136, v137);
          v139 = v138;

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v140 = v150;
          sub_1D1741C08(v167, v150, &qword_1EC643718, &qword_1D1E71E70);
          v141 = v168;
          if (v160(v140, 1, v168) == 1)
          {
            sub_1D1741A30(v140, &qword_1EC643718, &qword_1D1E71E70);
            v142 = 0;
          }

          else
          {
            v142 = *(v140 + v141[15]);
            sub_1D1BDD340(v140, type metadata accessor for StaticActionSet);
          }

          v143 = v159;
          v144 = v152;
          sub_1D1741C08(v167, v152, &qword_1EC643718, &qword_1D1E71E70);
          if (v160(v144, 1, v141) == 1)
          {
            sub_1D1741A30(v144, &qword_1EC643718, &qword_1D1E71E70);
            v145 = v151;
            (*(v143 + 56))(v151, 1, 1, v70);
          }

          else
          {
            v146 = v151;
            sub_1D1741C08(v144 + v141[16], v151, &qword_1EC642570, &qword_1D1E6C6A0);
            v147 = v144;
            v145 = v146;
            sub_1D1BDD340(v147, type metadata accessor for StaticActionSet);
          }

          v77 = v141;
          sub_1D1BDA3F8(v63, v139 & 1, v142, v145, v164, v64);
          sub_1D1741A30(v167, &qword_1EC643718, &qword_1D1E71E70);
          sub_1D1BDD340(v165, type metadata accessor for StateSnapshot.UpdateType);
          v148 = *(v143 + 8);
          v148(v131, v65);
          v148(v157, v65);
          goto LABEL_26;
        }

        v133 = *(v159 + 8);
        v133(v131, v70);
        v133(v132, v70);
        goto LABEL_39;
      }

      (*(v68 + 8))(v157, v70);
    }

    sub_1D1741A30(v75, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_39:
    v120 = [v63 actions];
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v121 = sub_1D1E6816C();

    v122 = v161;

    v123 = v162;

    v124 = 1;
    sub_1D1BDB7F8(1u, v121, v122, v123);
    v126 = v125;

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v127 = [v63 lastExecutionDate];
    if (v127)
    {
      v128 = v156;
      v129 = v127;
      sub_1D1E669BC();

      v124 = 0;
      v130 = v167;
      v77 = v168;
    }

    else
    {
      v130 = v167;
      v77 = v168;
      v128 = v156;
    }

    (*(v159 + 56))(v128, v124, 1, v65);
    sub_1D1BDA3F8(v63, v126 & 1, v62, v128, v164, v64);
    v99 = v130;
LABEL_25:
    sub_1D1741A30(v99, &qword_1EC643718, &qword_1D1E71E70);
    sub_1D1BDD340(v165, type metadata accessor for StateSnapshot.UpdateType);
LABEL_26:
    v100 = v166;
    goto LABEL_27;
  }

  v102 = v170;
  v103 = [v170 lastExecutionDate];
  v100 = v166;
  v104 = v167;
  v64 = v163;
  v105 = v158;
  if (v103)
  {
    v106 = v103;
    sub_1D1E669BC();

    v107 = 0;
  }

  else
  {
    v107 = 1;
  }

  (*(v159 + 56))(v48, v107, 1, v105);
  sub_1D1BDA3F8(v102, v62 & 1, SBYTE1(v62), v48, v164, v64);
  sub_1D1741A30(v104, &qword_1EC643718, &qword_1D1E71E70);
  sub_1D1BDD340(v165, type metadata accessor for StateSnapshot.UpdateType);
  v77 = v168;
LABEL_27:
  sub_1D1BDD2D8(v64, v100, type metadata accessor for StaticActionSet);
  return (*(v169 + 56))(v100, 0, 1, v77);
}

void sub_1D1BD8C8C(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v157 = a4;
  v171 = a3;
  v175 = a2;
  v152 = a5;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643720, &qword_1D1E71E78);
  v169 = *(v177 - 8);
  v6 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v170 = &v142 - v7;
  v8 = type metadata accessor for StaticMediaProfile();
  v149 = *(v8 - 8);
  v9 = *(v149 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v148 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v142 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C778, &qword_1D1EA02E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v172 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v142 - v17;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C780, &qword_1D1EA02E8);
  v163 = *(v178 - 8);
  v18 = *(v163 + 64);
  v19 = MEMORY[0x1EEE9AC00](v178);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v142 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v142 - v26);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v142 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v142 - v31;
  v159 = type metadata accessor for StaticCharacteristic();
  v160 = *(v159 - 8);
  v33 = *(v160 + 64);
  v34 = MEMORY[0x1EEE9AC00](v159);
  v161 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v162 = (&v142 - v36);
  v164 = type metadata accessor for StaticService(0);
  v165 = *(v164 - 8);
  v37 = *(v165 + 8);
  v38 = MEMORY[0x1EEE9AC00](v164);
  v167 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v168 = &v142 - v40;
  v166 = sub_1D1E66A7C();
  v174 = *(v166 - 8);
  v41 = *(v174 + 64);
  v42 = MEMORY[0x1EEE9AC00](v166);
  v44 = &v142 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v142 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v173 = &v142 - v48;
  LODWORD(v49) = *a1;
  v50 = *v175;
  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (v51)
  {
    v145 = v49;
    v52 = v152;
    v53 = v51;
    v54 = [v51 characteristic];
    v55 = [v54 service];

    if (v55)
    {
      v56 = [v55 uniqueIdentifier];

      sub_1D1E66A5C();
      v58 = v173;
      v57 = v174;
      (*(v174 + 32))(v173, v47, v166);
      v59 = v171;
      if (*(v171 + 16) && (v60 = sub_1D1742188(v58), (v61 & 1) != 0))
      {
        v62 = *(v59 + 56) + *(v165 + 9) * v60;
        v63 = v167;
        sub_1D1BDD270(v62, v167, type metadata accessor for StaticService);
        v64 = v168;
        sub_1D1BDD2D8(v63, v168, type metadata accessor for StaticService);
        v65 = [v53 characteristic];
        v66 = [v65 characteristicType];

        v67 = sub_1D1E6781C();
        v69 = v68;

        v70._countAndFlagsBits = v67;
        v70._object = v69;
        CharacteristicKind.init(rawValue:)(v70);
        v71 = v182;
        if (v182 != 174)
        {
          v72 = *(v64 + *(v164 + 128));
          if (*(v72 + 16))
          {
            v73 = sub_1D171D140(v182);
            if (v74)
            {
              v75 = *(v72 + 56) + *(v160 + 72) * v73;
              v76 = v161;
              sub_1D1BDD270(v75, v161, type metadata accessor for StaticCharacteristic);
              v27 = v162;
              sub_1D1BDD2D8(v76, v162, type metadata accessor for StaticCharacteristic);
              LOBYTE(v182) = v71;
              if (CharacteristicKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB4E30 == v77)
              {

                LOBYTE(v49) = v145;
              }

              else
              {
                v136 = sub_1D1E6904C();

                LOBYTE(v49) = v145;
                if ((v136 & 1) == 0)
                {
LABEL_72:
                  v137 = v27 + *(v159 + 24);
                  v138 = *(v137 + 1);
                  v139 = v137[16];
                  v182 = *v137;
                  v183 = v138;
                  LOBYTE(v184) = v139;
                  sub_1D1778244(v182, v138, v139);
                  v140 = [v53 targetValue];
                  IsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0 = _s13HomeDataModel20StaticCharacteristicV026typedValueIsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0(&v182);

                  sub_1D1778284(v182, v183, v184);
                  sub_1D1BDD340(v27, type metadata accessor for StaticCharacteristic);
                  (*(v57 + 8))(v58, v166);
                  LOBYTE(v49) = v49 & IsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0;
                  goto LABEL_73;
                }
              }

              sub_1D1BDD340(v27, type metadata accessor for StaticCharacteristic);
              (*(v57 + 8))(v58, v166);
LABEL_73:
              sub_1D1BDD340(v64, type metadata accessor for StaticService);
              goto LABEL_68;
            }
          }
        }

        (*(v57 + 8))(v58, v166);
        sub_1D1BDD340(v64, type metadata accessor for StaticService);
      }

      else
      {
        (*(v57 + 8))(v58, v166);
      }
    }

    LOBYTE(v49) = 0;
LABEL_68:
    *v52 = v49;
    return;
  }

  v78 = v152;
  v165 = v44;
  v168 = v32;
  v155 = v30;
  v153 = v27;
  v150 = v24;
  v151 = v21;
  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  if (!v79)
  {
    v52 = v78;
    goto LABEL_68;
  }

  v80 = v79;
  v145 = v49;
  v81 = [v79 state];
  v82 = 0x5000403020100uLL >> (8 * v81);
  if (v81 >= 7)
  {
    LODWORD(v82) = 0;
  }

  LODWORD(v162) = v82;
  v167 = [v80 playbackArchive];
  v83 = [v80 volume];
  v84 = v83;
  if (v83)
  {
    [v83 floatValue];
    v86 = v85;

    v160 = v86;
  }

  else
  {
    v160 = 0;
  }

  v64 = v177;
  v58 = v172;
  v161 = v84;
  v87 = [v80 playbackArchive];
  if (v87)
  {
    v88 = v87;
    LODWORD(v159) = [v87 BOOLValueForOption_];
  }

  else
  {
    LODWORD(v159) = 2;
  }

  v89 = [v80 playbackArchive];
  if (v89)
  {
    v90 = v89;
    v158 = [v89 BOOLValueForOption_];
  }

  else
  {
    v158 = 2;
  }

  v91 = v153;
  v92 = [v80 mediaProfiles];
  v93 = sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
  v94 = sub_1D1E6816C();

  v95 = swift_allocObject();
  *(v95 + 16) = v157;
  v144 = v95;
  v143 = v94;
  v146 = v93;
  if ((v94 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();

    sub_1D1E686EC();
    sub_1D1E681BC();
    v96 = v182;
    v156 = v183;
    v97 = v184;
    v98 = v185;
    v53 = v186;
  }

  else
  {
    v99 = -1 << *(v94 + 32);
    v100 = *(v94 + 56);
    v156 = v94 + 56;
    v97 = ~v99;
    v101 = -v99;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    else
    {
      v102 = -1;
    }

    v53 = v102 & v100;
    swift_bridgeObjectRetain_n();

    v98 = 0;
    v96 = v94;
  }

  v142 = v97;
  v49 = (v97 + 64) >> 6;
  v154 = (v174 + 8);
  v173 = (v169 + 56);
  v174 = v169 + 48;
  v164 = v163 + 56;
  v163 += 48;
  v175 = v98;
  v52 = v178;
  v171 = v96;
  v169 = v49;
  while (1)
  {
    while ((v96 & 0x8000000000000000) == 0)
    {
      v103 = v175;
      v104 = v176;
      if (!v53)
      {
        while (1)
        {
          v57 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            __break(1u);
            goto LABEL_72;
          }

          if (v57 >= v49)
          {
            break;
          }

          v53 = *(v156 + 8 * v57);
          v103 = (v103 + 1);
          if (v53)
          {
            v175 = v57;
            goto LABEL_42;
          }
        }

        v53 = 0;
        if (v49 <= (v175 + 1))
        {
          v123 = v175 + 1;
        }

        else
        {
          v123 = v49;
        }

        v122 = 1;
        v175 = v123 - 1;
        goto LABEL_58;
      }

      v57 = v175;
LABEL_42:
      v105 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v106 = *(*(v96 + 48) + ((v57 << 9) | (8 * v105)));
LABEL_45:
      v108 = v165;
      if (!v106)
      {
        v122 = 1;
        v64 = v177;
        v52 = v178;
        goto LABEL_58;
      }

      v109 = [v106 uniqueIdentifier];
      sub_1D1E66A5C();

      v110 = v157;
      if (*(v157 + 16) && (v111 = sub_1D1742188(v108), (v112 & 1) != 0))
      {
        v113 = v148;
        sub_1D1BDD270(*(v110 + 56) + *(v149 + 72) * v111, v148, type metadata accessor for StaticMediaProfile);
        (*v154)(v108, v166);
        v114 = v113;
        v115 = v147;
        sub_1D1BDD2D8(v114, v147, type metadata accessor for StaticMediaProfile);
        v116 = v177;
        v117 = *(v177 + 48);
        *v91 = v106;
        v64 = v116;
        v118 = v115;
        v58 = v172;
        sub_1D1BDD2D8(v118, v91 + v117, type metadata accessor for StaticMediaProfile);
        (*v173)(v91, 0, 1, v64);
      }

      else
      {
        (*v154)(v108, v166);
        v119 = v177;
        (*v173)(v91, 1, 1, v177);

        v64 = v119;
      }

      v120 = v155;
      v27 = &qword_1D1EA02E8;
      sub_1D1741A90(v91, v155, &qword_1EC64C780, &qword_1D1EA02E8);
      if ((*v174)(v120, 1, v64) != 1)
      {
        v121 = v120;
        v104 = v176;
        sub_1D1741A90(v121, v176, &qword_1EC64C780, &qword_1D1EA02E8);
        v122 = 0;
        v52 = v178;
        v49 = v169;
        goto LABEL_58;
      }

      sub_1D1741A30(v120, &qword_1EC64C780, &qword_1D1EA02E8);
      v52 = v178;
      v96 = v171;
      v49 = v169;
    }

    v107 = sub_1D1E6877C();
    if (v107)
    {
      v180 = v107;
      swift_dynamicCast();
      v106 = v181;
      v104 = v176;
      goto LABEL_45;
    }

    v122 = 1;
    v104 = v176;
    v52 = v178;
LABEL_58:
    (*v164)(v104, v122, 1, v52);
    sub_1D1741A90(v104, v58, &qword_1EC64C778, &qword_1D1EA02E0);
    if ((*v163)(v58, 1, v52) == 1)
    {
      v124 = v168;
      (*v173)(v168, 1, 1, v64);
      v125 = (*v174)(v124, 1, v64);
      goto LABEL_62;
    }

    v126 = v150;
    sub_1D1741A90(v58, v150, &qword_1EC64C780, &qword_1D1EA02E8);
    v127 = v151;
    sub_1D1741C08(v126, v151, &qword_1EC64C780, &qword_1D1EA02E8);
    v128 = v64;
    v129 = v174;
    v130 = *v174;
    if ((*v174)(v127, 1, v128) == 1)
    {
      break;
    }

    v131 = v127;
    v124 = v168;
    sub_1D1741A90(v131, v168, &qword_1EC643720, &qword_1D1E71E78);
    sub_1D1741A30(v126, &qword_1EC64C780, &qword_1D1EA02E8);
    (*v173)(v124, 0, 1, v128);
    v91 = v153;
    v49 = v169;
    v125 = v130(v124, 1, v128);
LABEL_62:
    if (v125 == 1)
    {
      LOBYTE(v49) = v145;
      goto LABEL_67;
    }

    v132 = v161 == 0;
    v129 = v170;
    v27 = &qword_1EC643720;
    sub_1D1741A90(v124, v170, &qword_1EC643720, &qword_1D1E71E78);
    LOBYTE(v181) = v132;
    v133 = v179;
    v134 = sub_1D1BD9F00(v129, v160 | (v132 << 32), v162, v167, v159, v158);
    v179 = v133;
    if (v133)
    {
      goto LABEL_75;
    }

    v135 = v134;
    sub_1D1741A30(v129, &qword_1EC643720, &qword_1D1E71E78);
    v64 = v177;
    v52 = v178;
    v96 = v171;
    v58 = v172;
    if ((v135 & 1) == 0)
    {
      LOBYTE(v49) = 0;
LABEL_67:

      sub_1D1716918();

      v52 = v152;
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_75:

  sub_1D1741A30(v129, &qword_1EC643720, &qword_1D1E71E78);
  sub_1D1716918();

  __break(1u);
}

uint64_t sub_1D1BD9F00(uint64_t a1, uint64_t a2, char a3, void *a4, int a5, int a6)
{
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643720, &qword_1D1E71E78);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v44 - v12);
  v14 = type metadata accessor for StaticMediaProfile();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(a1, v13, &qword_1EC643720, &qword_1D1E71E78);
  v18 = *v13;
  sub_1D1BDD2D8(v13 + *(v10 + 56), v17, type metadata accessor for StaticMediaProfile);
  v19 = [v18 mediaSession];
  v20 = v19;
  v21 = 1;
  if ((a2 & 0x100000000) == 0 && v19)
  {
    v22 = [v19 audioControl];
    [v22 volume];
    v24 = v23;

    v21 = vabds_f32(*&a2 / 100.0, v24) <= 0.02;
  }

  if (a3 == 2)
  {
    if (!v21 || v17[*(v14 + 76)] < 2u)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (a3 == 1)
  {
    if (!v21 || v17[*(v14 + 76)] != 1)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (v48)
    {
      v26 = v48;
      v27 = [v18 mediaSession];
      if (v27)
      {
        v28 = v27;
        v44 = [v27 shuffleState];
        v45 = [v28 repeatState];
        v29 = [v28 mediaUniqueIdentifier];
        if (v29)
        {
          v30 = v29;
          v31 = sub_1D1E6781C();
          v33 = v32;
        }

        else
        {
          v31 = 0;
          v33 = 0;
        }

        v48 = v26;
        v34 = [v26 playbackSessionIdentifier];
        if (v34)
        {
          v35 = v34;
          v36 = v31;
          v37 = sub_1D1E6781C();
          v39 = v38;

          if (v33)
          {
            v40 = v47;
            if (v39)
            {
              if (v36 == v37 && v33 == v39)
              {

                LODWORD(v33) = 0;
              }

              else
              {
                v43 = sub_1D1E6904C();

                LODWORD(v33) = v43 ^ 1;
              }

              goto LABEL_34;
            }
          }

          else
          {
            v40 = v47;
            if (!v39)
            {
              LODWORD(v33) = 0;
              goto LABEL_34;
            }
          }
        }

        else
        {
          v40 = v47;
          if (!v33)
          {
LABEL_34:
            v41 = 1;
            if (v46 != 2 && (((v44 == 1) ^ v46) & 1) != 0)
            {
              v41 = [v28 shuffleState] == 0;
            }

            if (v40 == 2 || (((v45 == 1) ^ v40) & 1) == 0)
            {
              sub_1D1BDD340(v17, type metadata accessor for StaticMediaProfile);
            }

            else
            {
              v42 = [v28 repeatState];

              sub_1D1BDD340(v17, type metadata accessor for StaticMediaProfile);
              v21 = v42 != 0;
              if (((v33 | v41) & 1) == 0)
              {
                return v21;
              }
            }

            return 0;
          }
        }

        LODWORD(v33) = 1;
        goto LABEL_34;
      }

      sub_1D1BDD340(v17, type metadata accessor for StaticMediaProfile);
    }

    else
    {
      sub_1D1BDD340(v17, type metadata accessor for StaticMediaProfile);
    }

    return 1;
  }

  if (a3)
  {
LABEL_13:
    sub_1D1BDD340(v17, type metadata accessor for StaticMediaProfile);

    return 0;
  }

  sub_1D1BDD340(v17, type metadata accessor for StaticMediaProfile);

  return v21;
}

uint64_t sub_1D1BDA3F8@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v12 = [a1 name];
  v13 = sub_1D1E6781C();
  v15 = v14;

  v16 = type metadata accessor for StaticActionSet();
  v17 = (a6 + v16[5]);
  *v17 = v13;
  v17[1] = v15;
  v18 = v16;
  *(a6 + v16[14]) = a2;
  *(a6 + v16[15]) = a3;
  v67 = a6;
  v71 = a4;
  sub_1D1741C08(a4, a6 + v16[16], &qword_1EC642570, &qword_1D1E6C6A0);
  v68 = a1;
  v19 = [a1 actions];
  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v20 = sub_1D1E6816C();

  *&v73[0] = MEMORY[0x1E69E7CD0];
  v70 = v18;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1E681BC();
    v21 = v75;
    v22 = v76;
    v23 = v77;
    v24 = v78;
    v25 = v79;
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v22 = v20 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 56);

    v24 = 0;
    v21 = v20;
  }

  v29 = (v23 + 64) >> 6;
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  while (sub_1D1E6877C())
  {
    swift_dynamicCast();
    v23 = v72[0];
    v30 = v24;
    v31 = v25;
    if (!v72[0])
    {
      break;
    }

    while (1)
    {
      v72[0] = v23;
      sub_1D1BDAB8C(v73, v72);

      v24 = v30;
      v25 = v31;
      if (v21 < 0)
      {
        break;
      }

LABEL_11:
      v32 = v24;
      v33 = v25;
      v30 = v24;
      if (!v25)
      {
        while (1)
        {
          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v30 >= v29)
          {
            goto LABEL_18;
          }

          v33 = *(v22 + 8 * v30);
          ++v32;
          if (v33)
          {
            goto LABEL_15;
          }
        }

        __break(1u);

        sub_1D1716918();

        __break(1u);
        return result;
      }

LABEL_15:
      v31 = (v33 - 1) & v33;
      v23 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v33)))));
      if (!v23)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
  sub_1D1716918();

  v34 = *&v73[0];
  if (*(*&v73[0] + 16))
  {
    v35 = a5;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v36 = sub_1D1E66A7C();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D1E739C0;
    v35 = a5;
    v41 = [a5 roomForEntireHome];
    v42 = [v41 uniqueIdentifier];

    sub_1D1E66A5C();
    v34 = sub_1D179BE14(v40);
    swift_setDeallocating();
    (*(v37 + 8))(v40 + v39, v36);
    swift_deallocClassInstance();
  }

  *(v67 + v70[11]) = v34;
  v43 = [v68 actionSetType];
  sub_1D1E6781C();

  HMActionSet.ActionSetKind.init(rawValue:)(v73);
  *(v67 + v70[6]) = v73[0];
  HMActionSet.icon.getter(v73);
  v44 = (v67 + v70[9]);
  v45 = v73[3];
  v44[2] = v73[2];
  v44[3] = v45;
  v44[4] = v74[0];
  *(v44 + 73) = *(v74 + 9);
  v46 = v73[1];
  *v44 = v73[0];
  v44[1] = v46;
  v47 = HMActionSet.iconTintDictionary.getter();
  if (!v47)
  {
    if (MEMORY[0x1E69815E0])
    {
      if (MEMORY[0x1E69815E8])
      {
        if (MEMORY[0x1E69815C8])
        {
          if (MEMORY[0x1E69815A8])
          {
            if (MEMORY[0x1E69815B0])
            {
              if (MEMORY[0x1E69815B8])
              {
                v47 = HMActionSet.defaultTint.getter();
                if (v47)
                {
                  v55 = Color.colorDictionary.getter();

                  v47 = v55;
                }
              }
            }
          }
        }
      }
    }
  }

  *(v67 + v70[10]) = v47;
  v48 = [v68 actions];
  v49 = sub_1D1E6816C();

  sub_1D1BD4174(MEMORY[0x1E69E7CD0], v49);
  v51 = v50;

  *(v67 + v70[13]) = v51;
  v52 = [v68 actions];
  v53 = sub_1D1E6816C();

  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = sub_1D1E6873C();
  }

  else
  {
    v54 = *(v53 + 16);
  }

  *(v67 + v70[8]) = v54 == 0;
  if (!v54)
  {
    goto LABEL_39;
  }

  v56 = [v68 applicationData];
  v57 = sub_1D1E677EC();
  v58 = [v56 objectForKeyedSubscript_];

  if (!v58)
  {
    v60 = [v68 home];
    if (!v60 || (v61 = v60, v62 = HMHome.showPredictedScenesOnDashboard.getter(), v61, (v62 & 1) != 0))
    {
      v63 = [v68 actionSetType];
      sub_1D1E6781C();

      HMActionSet.ActionSetKind.init(rawValue:)(v72);
      v59 = sub_1D17C5604(v72[0], &unk_1F4D65F90);
      goto LABEL_40;
    }

LABEL_39:
    v59 = 0;
    goto LABEL_40;
  }

  swift_unknownObjectRelease();
  v59 = HMActionSet.shouldShowInDashboard.getter();
LABEL_40:
  *(v67 + v70[12]) = v59 & 1;
  v64 = [v35 uniqueIdentifier];
  v65 = v67 + v70[7];
  sub_1D1E66A5C();

  return sub_1D1741A30(v71, &qword_1EC642570, &qword_1D1E6C6A0);
}

void sub_1D1BDAB8C(uint64_t a1, void **a2)
{
  v5 = sub_1D1E66A7C();
  v76 = *(v5 - 8);
  v6 = *(v76 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v65 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v77 = v65 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = v65 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v65 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v65 - v20;
  v22 = *a2;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClassUnconditional();
    v24 = v22;
    v25 = [v23 characteristic];
    v26 = [v25 service];

    if (v26 && (v27 = [v26 accessory], v26, v27) && (v28 = objc_msgSend(v27, sel_room), v27, v28))
    {
      v29 = [v28 uniqueIdentifier];

      sub_1D1E66A5C();
      v30 = v76;
      (*(v76 + 32))(v21, v19, v5);
      v31 = v77;
      (*(v30 + 16))(v77, v21, v5);
      v32 = v78;
      sub_1D1762CB8(v78, v31);

      v33 = *(v30 + 8);
      v33(v32, v5);
      v33(v21, v5);
    }

    else
    {
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v34 = a1;
      v73 = v9;
      objc_opt_self();
      v35 = swift_dynamicCastObjCClassUnconditional();
      v66 = v22;
      v36 = [v35 mediaProfiles];
      v37 = sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
      v38 = sub_1D1E6816C();

      v74 = v34;
      v75 = v5;
      v67 = v2;
      if ((v38 & 0xC000000000000001) != 0)
      {
        sub_1D1E686EC();
        sub_1D1E681BC();
        v38 = v80;
        v39 = v81;
        v40 = v82;
        v41 = v83;
        v42 = v84;
      }

      else
      {
        v41 = 0;
        v43 = -1 << *(v38 + 32);
        v39 = v38 + 56;
        v40 = ~v43;
        v44 = -v43;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        else
        {
          v45 = -1;
        }

        v42 = v45 & *(v38 + 56);
      }

      v65[1] = v40;
      v46 = (v40 + 64) >> 6;
      v69 = (v76 + 16);
      v70 = (v76 + 32);
      v68 = (v76 + 8);
      v71 = v38;
      v72 = v12;
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      v47 = sub_1D1E6877C();
      if (v47)
      {
        v79 = v47;
        swift_dynamicCast();
        v48 = v85;
        v49 = v41;
        v50 = v42;
        while (v48)
        {
          v53 = [v48 accessory];
          if (v53)
          {
            v76 = v50;
            v54 = v53;
            v55 = [v53 room];

            if (v55)
            {
              v56 = [v55 uniqueIdentifier];

              v57 = v73;
              sub_1D1E66A5C();

              v58 = v37;
              v59 = v72;
              v60 = v75;
              (*v70)(v72, v57, v75);
              v61 = v77;
              (*v69)(v77, v59, v60);
              v62 = v78;
              sub_1D1762CB8(v78, v61);

              v63 = *v68;
              (*v68)(v62, v60);
              v64 = v59;
              v37 = v58;
              v38 = v71;
              v63(v64, v60);
            }

            else
            {
            }

            v41 = v49;
            v42 = v76;
            if (v38 < 0)
            {
              goto LABEL_17;
            }
          }

          else
          {

            v41 = v49;
            v42 = v50;
            if (v38 < 0)
            {
              goto LABEL_17;
            }
          }

LABEL_19:
          v51 = v41;
          v52 = v42;
          v49 = v41;
          if (!v42)
          {
            while (1)
            {
              v49 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                break;
              }

              if (v49 >= v46)
              {
                goto LABEL_31;
              }

              v52 = *(v39 + 8 * v49);
              ++v51;
              if (v52)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            return;
          }

LABEL_23:
          v50 = (v52 - 1) & v52;
          v48 = *(*(v38 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v52)))));
        }
      }

LABEL_31:
      sub_1D1716918();
    }
  }
}

void sub_1D1BDB200(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v3[1] = *a1;
  ServiceKind.umbrellaCategory.getter(v3);
  *a2 = v3[0];
}

BOOL _s13HomeDataModel15StaticActionSetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for StaticActionSet();
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v23 = v17[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 7)
  {
    if (v25 != 7)
    {
      return 0;
    }
  }

  else if (v25 == 7 || (sub_1D179F2F8(v24, v25) & 1) == 0)
  {
    return 0;
  }

  v26 = v17[7];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v17[8]) != *(a2 + v17[8]))
  {
    return 0;
  }

  v27 = (a1 + v17[9]);
  v28 = v27[3];
  v29 = v27[1];
  v60 = v27[2];
  v61 = v28;
  v30 = v27[3];
  v62[0] = v27[4];
  *(v62 + 9) = *(v27 + 73);
  v31 = v27[1];
  v59[0] = *v27;
  v59[1] = v31;
  v56 = v60;
  v57 = v30;
  v58[0] = v27[4];
  *(v58 + 9) = *(v27 + 73);
  v54 = v59[0];
  v55 = v29;
  v32 = (a2 + v17[9]);
  v33 = v32[3];
  v34 = v32[1];
  v64 = v32[2];
  v65 = v33;
  v35 = v32[3];
  v66[0] = v32[4];
  *(v66 + 9) = *(v32 + 73);
  v36 = v32[1];
  v63[0] = *v32;
  v63[1] = v36;
  v51 = v64;
  v52 = v35;
  v53[0] = v32[4];
  *(v53 + 9) = *(v32 + 73);
  v49 = v63[0];
  v50 = v34;
  LODWORD(v47) = _s13HomeDataModel4IconV2eeoiySbAC_ACtFZ_0(&v54, &v49);
  v67[2] = v51;
  v67[3] = v52;
  v68[0] = v53[0];
  *(v68 + 9) = *(v53 + 9);
  v67[0] = v49;
  v67[1] = v50;
  sub_1D18A9844(v59, v48);
  sub_1D18A9844(v63, v48);
  sub_1D18A98A0(v67);
  v69[2] = v56;
  v69[3] = v57;
  v70[0] = v58[0];
  *(v70 + 9) = *(v58 + 9);
  v69[0] = v54;
  v69[1] = v55;
  sub_1D18A98A0(v69);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

  v37 = v17[10];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v46 = v38;
    v47 = v39;

    LODWORD(v46) = sub_1D184DC4C(v46, v47);

    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  if ((sub_1D17A6E98(*(a1 + v17[11]), *(a2 + v17[11])) & 1) == 0 || *(a1 + v17[12]) != *(a2 + v17[12]) || (sub_1D17A8A48(*(a1 + v17[13]), *(a2 + v17[13])) & 1) == 0 || *(a1 + v17[14]) != *(a2 + v17[14]) || *(a1 + v17[15]) != *(a2 + v17[15]))
  {
    return 0;
  }

  v40 = v17[16];
  v41 = *(v13 + 48);
  sub_1D1741C08(a1 + v40, v16, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(a2 + v40, &v16[v41], &qword_1EC642570, &qword_1D1E6C6A0);
  v42 = *(v5 + 48);
  if (v42(v16, 1, v4) == 1)
  {
    if (v42(&v16[v41], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
      return 1;
    }

    goto LABEL_30;
  }

  sub_1D1741C08(v16, v12, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v42(&v16[v41], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_30:
    sub_1D1741A30(v16, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v41], v4);
  sub_1D1BDC278(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v44 = sub_1D1E6775C();
  v45 = *(v5 + 8);
  v45(v8, v4);
  v45(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
  return (v44 & 1) != 0;
}

void sub_1D1BDB7F8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v26 = a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v6 = v25[1];
    v7 = v25[2];
    v8 = v25[3];
    v9 = v25[4];
    v10 = v25[5];
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = a2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a2 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  v23 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (v19)
    {
      do
      {
        v25[0] = v19;
        sub_1D1BD8C8C(&v26, v25, a3, a4, &v24);

        if (v5)
        {
          break;
        }

        v26 = v24;
        v9 = v17;
        v10 = v18;
        v6 = v23;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v20 = sub_1D1E6877C();
        if (!v20)
        {
          break;
        }

        v24 = v20;
        sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
        swift_dynamicCast();
        v19 = v25[0];
        v17 = v9;
        v18 = v10;
      }

      while (v25[0]);
    }

LABEL_19:
    sub_1D1716918();
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v7 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1BDBA50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69747563657865 && a2 == 0xE900000000000067 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1BDBB6C(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C758, &qword_1D1EA02C0);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C760, &qword_1D1EA02C8);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C768, &qword_1D1EA02D0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C770, &qword_1D1EA02D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D1BD4AF8();
  v18 = v39;
  sub_1D1E692FC();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1D1E68DDC();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1D18085C8();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1D1BD4BA0();
          sub_1D1E68C4C();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1D1BD4B4C();
        v29 = v15;
        sub_1D1E68C4C();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1D1BD4BF4();
        v29 = v15;
        sub_1D1E68C4C();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1D1E688EC();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v27 = &type metadata for StaticActionSet.ExecutionStatus;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

uint64_t type metadata accessor for StaticActionSet()
{
  result = qword_1EE07D748;
  if (!qword_1EE07D748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1BDC128()
{
  result = qword_1EC64C660;
  if (!qword_1EC64C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C660);
  }

  return result;
}

unint64_t sub_1D1BDC17C()
{
  result = qword_1EC64C668;
  if (!qword_1EC64C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C668);
  }

  return result;
}

unint64_t sub_1D1BDC1D0()
{
  result = qword_1EC64C688;
  if (!qword_1EC64C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C688);
  }

  return result;
}

unint64_t sub_1D1BDC224()
{
  result = qword_1EC64C690;
  if (!qword_1EC64C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C690);
  }

  return result;
}

uint64_t sub_1D1BDC278(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1BDC2C0()
{
  result = qword_1EC64C6A0;
  if (!qword_1EC64C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6A0);
  }

  return result;
}

uint64_t sub_1D1BDC314(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643420, &qword_1D1E718A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1BDC384(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1BDC278(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1BDC420(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C678, &qword_1D1E9FA90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BDC498()
{
  result = qword_1EC64C6B8;
  if (!qword_1EC64C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6B8);
  }

  return result;
}

unint64_t sub_1D1BDC4EC()
{
  result = qword_1EC64C6C0;
  if (!qword_1EC64C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6C0);
  }

  return result;
}

unint64_t sub_1D1BDC544()
{
  result = qword_1EC64C6C8;
  if (!qword_1EC64C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6C8);
  }

  return result;
}

unint64_t sub_1D1BDC59C()
{
  result = qword_1EC64C6D0;
  if (!qword_1EC64C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6D0);
  }

  return result;
}

uint64_t sub_1D1BDC638(void *a1)
{
  a1[1] = sub_1D1BDC278(&qword_1EC64C6E0, type metadata accessor for StaticActionSet);
  a1[2] = sub_1D1BDC278(&qword_1EC64C6E8, type metadata accessor for StaticActionSet);
  a1[3] = sub_1D1BDC278(&qword_1EC64BFF0, type metadata accessor for StaticActionSet);
  a1[4] = sub_1D1BDC278(&qword_1EC64C060, type metadata accessor for StaticActionSet);
  a1[5] = sub_1D1BDC278(&qword_1EC643500, type metadata accessor for StaticActionSet);
  result = sub_1D1BDC278(&qword_1EC64C6F0, type metadata accessor for StaticActionSet);
  a1[6] = result;
  return result;
}

void sub_1D1BDC784()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1BDC8A0();
    if (v1 <= 0x3F)
    {
      sub_1D1BDC8F0();
      if (v2 <= 0x3F)
      {
        sub_1D1791340();
        if (v3 <= 0x3F)
        {
          sub_1D1BDC954();
          if (v4 <= 0x3F)
          {
            sub_1D17B77BC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D1BDC8A0()
{
  if (!qword_1EE07B688)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B688);
    }
  }
}

void sub_1D1BDC8F0()
{
  if (!qword_1EE07B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643420, &qword_1D1E718A0);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B778);
    }
  }
}

void sub_1D1BDC954()
{
  if (!qword_1EE07B6B0)
  {
    sub_1D1B4DF78();
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B6B0);
    }
  }
}

unint64_t sub_1D1BDCA24()
{
  result = qword_1EC64C6F8;
  if (!qword_1EC64C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6F8);
  }

  return result;
}

unint64_t sub_1D1BDCA7C()
{
  result = qword_1EC64C700;
  if (!qword_1EC64C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C700);
  }

  return result;
}

unint64_t sub_1D1BDCAD4()
{
  result = qword_1EC64C708;
  if (!qword_1EC64C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C708);
  }

  return result;
}

unint64_t sub_1D1BDCB2C()
{
  result = qword_1EC64C710;
  if (!qword_1EC64C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C710);
  }

  return result;
}

unint64_t sub_1D1BDCB84()
{
  result = qword_1EC64C718;
  if (!qword_1EC64C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C718);
  }

  return result;
}

unint64_t sub_1D1BDCBDC()
{
  result = qword_1EC64C720;
  if (!qword_1EC64C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C720);
  }

  return result;
}

unint64_t sub_1D1BDCC34()
{
  result = qword_1EC64C728;
  if (!qword_1EC64C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C728);
  }

  return result;
}

unint64_t sub_1D1BDCC8C()
{
  result = qword_1EC64C730;
  if (!qword_1EC64C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C730);
  }

  return result;
}

unint64_t sub_1D1BDCCE4()
{
  result = qword_1EC64C738;
  if (!qword_1EC64C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C738);
  }

  return result;
}

unint64_t sub_1D1BDCD3C()
{
  result = qword_1EC64C740;
  if (!qword_1EC64C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C740);
  }

  return result;
}

unint64_t sub_1D1BDCD94()
{
  result = qword_1EC64C748;
  if (!qword_1EC64C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C748);
  }

  return result;
}

unint64_t sub_1D1BDCDEC()
{
  result = qword_1EC64C750;
  if (!qword_1EC64C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C750);
  }

  return result;
}

uint64_t sub_1D1BDCE40(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x65536E6F69746361 && a2 == 0xED0000646E694B74 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463416F4E736168 && a2 == 0xEC000000736E6F69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6349656C6974 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC6510 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6530 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6176697463417369 && a2 == 0xEB00000000646574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEF7375746174536ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC6550 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D1BDD270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BDD2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BDD340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1BDD3B8(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_23:
        sub_1D1716918();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = [v14 characteristic];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x1D3891220]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1D1BDD65C(uint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_1D1716918();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1D3891220]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D1BDD8E0()
{
  v1[10] = v0;
  v2 = sub_1D1E669FC();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BDD9AC, 0, 0);
}

uint64_t sub_1D1BDD9AC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = [v5 valueUpdatedTime];
  sub_1D1E669BC();

  v7 = [v5 notificationEnabledTime];
  sub_1D1E669BC();

  LOBYTE(v7) = sub_1D1E6695C();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {
    if ([*(v0 + 80) value])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    *(v0 + 48) = v16;
    *(v0 + 64) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 128);
    }

    else
    {
      v12 = 2;
    }

    v14 = *(v0 + 104);
    v13 = *(v0 + 112);

    v15 = *(v0 + 8);

    return v15(v12);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_1D1BDDBD0;
    v10 = *(v0 + 80);

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }
}

uint64_t sub_1D1BDDBD0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDDCCC, 0, 0);
}

uint64_t sub_1D1BDDCCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v1 = 2;
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_1D1BDDD78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticActionSet.toggle()(a1);
}

uint64_t StaticActionSet.toggle()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v2[7] = updated;
  v4 = *(*(updated - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C788, &qword_1D1EA02F8) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v2;
  v6[1] = sub_1D1BDDF1C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDDF1C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDE01C, 0, 0);
}

uint64_t sub_1D1BDE01C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
    v3 = v0[6];
    if (v2)
    {

      v4 = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
      v0[12] = v4;
      if (*(v3 + *(type metadata accessor for StaticActionSet() + 56)) == 1)
      {
        v5 = swift_task_alloc();
        v0[13] = v5;
        *v5 = v0;
        v5[1] = sub_1D1BDE2E4;
        v6 = v0[9];
        v7 = v0[6];

        return sub_1D1BE364C(v6, v4);
      }

      else
      {
        v16 = swift_task_alloc();
        v0[14] = v16;
        *v16 = v0;
        v16[1] = sub_1D1BDE42C;
        v17 = v0[9];
        v18 = v0[6];

        return sub_1D1BE2660(v17, v4, 0, 1);
      }
    }

    else if (*(v3 + *(type metadata accessor for StaticActionSet() + 56)))
    {
      v14 = swift_task_alloc();
      v0[18] = v14;
      *v14 = v0;
      v14[1] = sub_1D1BDEB1C;
      v15 = v0[6];

      return StaticActionSet.turnPowerAndActiveActionsOff(homeManager:)(v1);
    }

    else
    {
      v19 = swift_task_alloc();
      v0[17] = v19;
      *v19 = v0;
      v19[1] = sub_1D1BDE9CC;
      v20 = v0[6];

      return StaticActionSet.execute(timeout:homeManager:)(0, 1, v1);
    }
  }

  else
  {
    v9 = v0[5];
    v10 = type metadata accessor for StateSnapshot(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = v0[8];
    v11 = v0[9];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D1BDE2E4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 96);
  if (v0)
  {

    v6 = sub_1D1BDE760;
  }

  else
  {

    v6 = sub_1D1BDE574;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1BDE42C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  v5 = *(v2 + 96);
  if (v0)
  {

    v6 = sub_1D1BDE760;
  }

  else
  {

    v6 = sub_1D1BDE574;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1BDE574()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 40);

    sub_1D1741A30(v1, &qword_1EC64C788, &qword_1D1EA02F8);
    v4 = type metadata accessor for StateSnapshot(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v1 + *(v2 + 48));
    *(v0 + 120) = v9;
    v10 = *(MEMORY[0x1E69E86A8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v11 = v0;
    v11[1] = sub_1D1BDE814;
    v14 = *(v0 + 40);
    v15 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v14, v9, v12, v13, v15);
  }
}

uint64_t sub_1D1BDE760()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1BDE814()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 120);

    v5 = sub_1D1BDF68C;
  }

  else
  {
    v5 = sub_1D1BDE938;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1BDE938()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[9];

  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1BDE9CC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  *(v2 + 152) = v5;
  *v5 = v4;
  v5[1] = sub_1D1BDEC58;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDEB1C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v5 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v5;
  v3[1] = sub_1D1BDEC58;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDEC58(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDED58, 0, 0);
}

uint64_t sub_1D1BDED58()
{
  isa = v0[20].super.isa;
  if (isa && (v2 = v0[6].super.isa, v3 = StaticActionSet.get(from:)(v0[20]), isa, v3) && (v4 = [v3 home], v0[21].super.isa = v4, v3, v4))
  {
    v0[22].super.isa = sub_1D1E67E1C();
    v0[23].super.isa = sub_1D1E67E0C();
    v6 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BDEEC4, v6, v5);
  }

  else
  {
    v7 = v0[5].super.isa;

    v8 = type metadata accessor for StateSnapshot(0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v10 = v0[8].super.isa;
    v9 = v0[9].super.isa;

    v11 = v0[1].super.isa;

    return v11();
  }
}

uint64_t sub_1D1BDEEC4()
{
  v1 = *(v0 + 184);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BDEF5C, 0, 0);
}

uint64_t sub_1D1BDEF5C()
{
  v1 = *(v0 + 176);
  *(v0 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BDEFE8, v3, v2);
}

uint64_t sub_1D1BDEFE8()
{
  v1 = *(v0 + 192);

  *(v0 + 200) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF05C, 0, 0);
}

uint64_t sub_1D1BDF05C()
{
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v0[26] = qword_1EE07CD98;
  v0[27] = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();
  v0[28] = v3;
  v0[29] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF124, v3, v2);
}

uint64_t sub_1D1BDF124()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[30] = v3;
  if (v3)
  {
    v4 = qword_1EE07AE28;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = v0[26];
    v7 = v0[21];
    v8 = v0[7];
    *v0[8] = v7;
    swift_storeEnumTagMultiPayload();
    v9 = v7;
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_1D1BDF408;
    v11 = v0[21];
    v12 = v0[8];
    v13 = v0[5];

    return sub_1D1E5A250(v13, v12, v5, v11, v6);
  }

  else
  {
    v15 = v0[27];

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v16 = v0[21];
    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07B5D8);
    v18 = v16;
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[21];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v21;
      *v23 = v21;
      v24 = v21;
      _os_log_impl(&dword_1D16EC000, v19, v20, "skipping rebuildSnapshot for %@ due to missing homeManager", v22, 0xCu);
      sub_1D1741A30(v23, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    v25 = v0[5];
    v26 = type metadata accessor for StateSnapshot(0);
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

    return MEMORY[0x1EEE6DFA0](sub_1D1BDF614, 0, 0);
  }
}

uint64_t sub_1D1BDF408()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 64);
  v7 = *v0;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF560, v5, v4);
}

uint64_t sub_1D1BDF560()
{
  v1 = v0[30];
  v2 = v0[27];

  v3 = v0[5];
  v4 = type metadata accessor for StateSnapshot(0);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF614, 0, 0);
}

uint64_t sub_1D1BDF614()
{
  v1 = *(v0 + 88);

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1BDF68C()
{
  v1 = *(v0 + 72);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for StateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t StaticActionSet.toggle(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BDF780, 0, 0);
}

uint64_t sub_1D1BDF780()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for StaticActionSet() + 56)))
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1D1BDF8A8;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_1D1BE364C(v5, v3);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_1D17D0834;
    v8 = v0[3];
    v9 = v0[4];
    v10 = v0[2];

    return sub_1D1BE2660(v10, v8, 0, 1);
  }
}

uint64_t sub_1D1BDF8A8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t StaticActionSet.execute(timeout:homeManager:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 208) = a2;
  *(v4 + 64) = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v4 + 88) = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v7 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v4 + 112) = v8;
  *v8 = v4;
  v8[1] = sub_1D1BDFAA4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDFAA4(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFBA4, 0, 0);
}

uint64_t sub_1D1BDFBA4()
{
  isa = v0[15].super.isa;
  if (isa)
  {
    v2 = v0[10].super.isa;
    v3 = StaticActionSet.get(from:)(v0[15]);
    v0[16].super.isa = v3;

    if (v3)
    {
      v4 = [(objc_class *)v3 home];
      v0[17].super.isa = v4;
      if (v4)
      {
        v0[18].super.isa = sub_1D1E67E1C();
        v0[19].super.isa = sub_1D1E67E0C();
        v6 = sub_1D1E67D4C();

        return MEMORY[0x1EEE6DFA0](sub_1D1BDFCC8, v6, v5);
      }
    }
  }

  v8 = v0[12].super.isa;
  v7 = v0[13].super.isa;

  v9 = v0[1].super.isa;

  return v9();
}

uint64_t sub_1D1BDFCC8()
{
  v1 = *(v0 + 152);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFD60, 0, 0);
}

uint64_t sub_1D1BDFD60()
{
  v1 = *(v0 + 144);
  *(v0 + 160) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFDEC, v3, v2);
}

uint64_t sub_1D1BDFDEC()
{
  v1 = *(v0 + 160);

  *(v0 + 168) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFE60, 0, 0);
}

uint64_t sub_1D1BDFE60()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v1;
  *(inited + 40) = 256;
  v5 = v1;
  v6 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v3 = v6;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1D1BDFF9C;
  v8 = v0[21];
  v9 = v0[17];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[9];

  return sub_1D1E5A250(v10, v11, v12, v9, 0);
}

uint64_t sub_1D1BDFF9C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v5 = *v0;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE00F8, 0, 0);
}

uint64_t sub_1D1BE00F8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 208);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = v3 & 1;
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_1D1BE0200;
  v9 = MEMORY[0x1E69E7CA8] + 8;
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v8, v9, v10, 0, 0, &unk_1D1EA0330, v6, v11);
}

uint64_t sub_1D1BE0200()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1D1BE0394;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1D1BE031C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1BE031C()
{
  v1 = *(v0 + 128);

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1BE0394()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);

  v5 = *(v0 + 8);
  v6 = *(v0 + 200);

  return v5();
}

uint64_t StaticActionSet.turnPowerAndActiveActionsOff(homeManager:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_1D1E66A7C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v2[25] = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v8 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[28] = v9;
  *v9 = v2;
  v9[1] = sub_1D1BE0580;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BE0580(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0680, 0, 0);
}

uint64_t sub_1D1BE0680()
{
  isa = v0[29].super.isa;
  if (isa)
  {
    v2 = v0[21].super.isa;
    v3 = StaticActionSet.get(from:)(v0[29]);
    v0[30].super.isa = v3;

    if (v3)
    {
      v4 = [(objc_class *)v3 home];
      v0[31].super.isa = v4;
      if (v4)
      {
        v0[32].super.isa = sub_1D1E67E1C();
        v0[33].super.isa = sub_1D1E67E0C();
        v6 = sub_1D1E67D4C();

        return MEMORY[0x1EEE6DFA0](sub_1D1BE07AC, v6, v5);
      }
    }
  }

  v8 = v0[26].super.isa;
  v7 = v0[27].super.isa;
  v9 = v0[24].super.isa;

  v10 = v0[1].super.isa;

  return v10();
}

uint64_t sub_1D1BE07AC()
{
  v1 = *(v0 + 264);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0844, 0, 0);
}

uint64_t sub_1D1BE0844()
{
  v1 = *(v0 + 256);
  *(v0 + 272) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE08D0, v3, v2);
}

uint64_t sub_1D1BE08D0()
{
  v1 = *(v0 + 272);

  *(v0 + 280) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0944, 0, 0);
}

uint64_t sub_1D1BE0944()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];
  v0[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v1;
  *(inited + 40) = 257;
  v5 = v1;
  v6 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v3 = v6;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[37] = v7;
  *v7 = v0;
  v7[1] = sub_1D1BE0A84;
  v8 = v0[35];
  v9 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[20];

  return sub_1D1E5A250(v10, v11, v12, v9, 0);
}

uint64_t sub_1D1BE0A84()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v5 = *v0;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0BE0, 0, 0);
}

uint64_t sub_1D1BE0BE0()
{
  v75 = v0;
  v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v2 = [*(v0 + 240) actions];
  *(v0 + 304) = sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  *(v0 + 312) = sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v3 = sub_1D1E6816C();

  sub_1D1BDD3B8(v3);
  v5 = v4;
  *(v0 + 320) = 0;

  v74 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v0 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = [v8 characteristicType];
      v11 = sub_1D1E6781C();
      v1 = v12;

      v13._countAndFlagsBits = v11;
      v13._object = v1;
      CharacteristicKind.init(rawValue:)(v13);
      if (v72 != 174 && (v72 == 3 || v72 == 105))
      {
        sub_1D1E6896C();
        v14 = v74[2];
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      else
      {
      }

      ++v7;
      if (v0 == v6)
      {
        v15 = v74;
        v0 = i;
        v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v6 = sub_1D1E6873C();
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *(v0 + 328) = v15;

  v16 = swift_allocObject();
  *(v0 + 336) = v16;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v16 + 24) = 0;
  *(v16 + 32) = 2;
  if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
  {
    v18 = *(v15 + 16);
    *(v0 + 344) = v18;
    if (v18)
    {
      goto LABEL_23;
    }

LABEL_42:
    v38 = *(v0 + 320);
    v37 = *(v0 + 328);
    v40 = *(v0 + 304);
    v39 = *(v0 + 312);
    v41 = *(v0 + 240);

    v42 = [v41 v1[108]];
    v43 = sub_1D1E6816C();

    sub_1D1BDD65C(v43);
    v45 = v44;

    v74 = v17;
    if (v45 >> 62)
    {
      goto LABEL_57;
    }

    for (j = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D1E6873C())
    {
      v47 = 0;
      v0 = v45 & 0xC000000000000001;
      while (1)
      {
        if (v0)
        {
          v48 = MEMORY[0x1D3891EF0](v47, v45);
        }

        else
        {
          if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v48 = *(v45 + 8 * v47 + 32);
        }

        v49 = v48;
        v50 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if ([v48 state] == 1)
        {
          sub_1D1E6896C();
          v51 = v74[2];
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v47;
        if (v50 == j)
        {
          v52 = v74;
          v0 = i;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v52 = MEMORY[0x1E69E7CC0];
LABEL_59:

    v73 = MEMORY[0x1E69E7CD0];
    if ((v52 & 0x8000000000000000) != 0 || (v52 & 0x4000000000000000) != 0)
    {
      goto LABEL_73;
    }

    for (k = *(v52 + 16); k; k = sub_1D1E6873C())
    {
      v54 = 0;
      while (1)
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x1D3891EF0](v54, v52);
        }

        else
        {
          if (v54 >= *(v52 + 16))
          {
            goto LABEL_72;
          }

          v55 = *(v52 + 8 * v54 + 32);
        }

        v56 = v55;
        v0 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        v57 = [v55 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v58 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v59 = sub_1D1E6815C();

        v60 = [v58 initWithMediaProfiles:v59 playbackState:2 volume:0];

        sub_1D1768400(&v74, v60);
        ++v54;
        v61 = v0 == k;
        v0 = i;
        if (v61)
        {
          v62 = v73;
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    v62 = MEMORY[0x1E69E7CD0];
LABEL_75:
    *(v0 + 384) = v62;
    v63 = *(v0 + 336);
    v64 = *(v0 + 248);

    v65 = swift_task_alloc();
    *(v0 + 392) = v65;
    v65[2] = v63;
    v65[3] = v62;
    v65[4] = v64;
    v66 = *(MEMORY[0x1E69E88A0] + 4);
    v67 = swift_task_alloc();
    *(v0 + 400) = v67;
    *v67 = v0;
    v67[1] = sub_1D1BE1B24;
    v68 = MEMORY[0x1E69E7CA8] + 8;
    v77 = MEMORY[0x1E69E7CA8] + 8;
    v69 = MEMORY[0x1E69E7CA8] + 8;
    v70 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v67, v68, v69, 0, 0, &unk_1D1EA0348, v65, v70);
  }

LABEL_41:
  v36 = sub_1D1E6873C();
  *(v0 + 344) = v36;
  if (!v36)
  {
    goto LABEL_42;
  }

LABEL_23:
  v19 = 0;
  while (1)
  {
    v20 = *(v0 + 328);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1D3891EF0](v19);
    }

    else
    {
      if (v19 >= *(v20 + 16))
      {
        goto LABEL_40;
      }

      v21 = *(v20 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = v19 + 1;
    *(v0 + 352) = v21;
    *(v0 + 360) = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (sub_1D1E67F7C())
    {
      break;
    }

    v24 = [v22 service];
    *(v0 + 368) = v24;
    if (v24)
    {
      v35 = swift_task_alloc();
      *(v0 + 376) = v35;
      *v35 = v0;
      v35[1] = sub_1D1BE1398;

      return sub_1D1BDD8E0();
    }

    v25 = *(v0 + 344);

    ++v19;
    if (v23 == v25)
    {
      goto LABEL_42;
    }
  }

  v26 = *(v0 + 328);
  v27 = *(v0 + 336);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);

  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  v32 = *(v0 + 192);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D1BE1398(char a1)
{
  v2 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1498, 0, 0);
}

uint64_t sub_1D1BE1498()
{
  v68 = v1;
  v2 = *(v1 + 464);
  if (v2 == 2)
  {
    v3 = v1[46];

LABEL_9:
    goto LABEL_10;
  }

  v3 = v1[46];
  v4 = v1[44];
  if ((v2 & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v1[42];
  v6 = v1[23];
  v0 = v1[24];
  v7 = v65[22];
  v8 = [v1[44] characteristicType];
  v9 = sub_1D1E6781C();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  CharacteristicKind.init(rawValue:)(v12);
  if (v67 == 174)
  {
    v13 = 0;
  }

  else
  {
    v13 = v67;
  }

  v14 = [v3 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1BECA54(0, v13, v0, (v5 + 16));
  v1 = v65;
  (*(v6 + 8))(v0, v7);
LABEL_10:
  v15 = v1[45];
  if (v15 == v1[43])
  {
LABEL_11:
    v17 = v1[40];
    v16 = v1[41];
    v18 = v1[38];
    v19 = v1[39];
    v20 = v1[30];

    v21 = [v20 actions];
    v22 = sub_1D1E6816C();

    sub_1D1BDD65C(v22);
    v0 = v23;

    v67 = MEMORY[0x1E69E7CC0];
    if (v0 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v25 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1D3891EF0](v25, v0);
        }

        else
        {
          if (v25 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v26 = *(v0 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if ([v26 state] == 1)
        {
          sub_1D1E6896C();
          v29 = v67[2];
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v25;
        if (v28 == i)
        {
          v35 = v67;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v66 = MEMORY[0x1E69E7CD0];
    v46 = v65;
    if ((v35 & 0x8000000000000000) != 0 || (v35 & 0x4000000000000000) != 0)
    {
      goto LABEL_58;
    }

    for (j = *(v35 + 16); j; j = sub_1D1E6873C())
    {
      v48 = 0;
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x1D3891EF0](v48, v35);
        }

        else
        {
          if (v48 >= *(v35 + 16))
          {
            goto LABEL_57;
          }

          v49 = *(v35 + 8 * v48 + 32);
        }

        v50 = v49;
        v51 = (v48 + 1);
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v46 = j;
        v52 = [v49 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v53 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v54 = sub_1D1E6815C();

        v55 = [v53 initWithMediaProfiles:v54 playbackState:2 volume:0];

        sub_1D1768400(&v67, v55);
        j = v46;

        ++v48;
        if (v51 == v46)
        {
          v56 = v66;
          v46 = v65;
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

    v56 = MEMORY[0x1E69E7CD0];
LABEL_60:
    v46[48] = v56;
    v57 = v46[42];
    v58 = v46[31];

    v59 = swift_task_alloc();
    v46[49] = v59;
    v59[2] = v57;
    v59[3] = v56;
    v59[4] = v58;
    v60 = *(MEMORY[0x1E69E88A0] + 4);
    v61 = swift_task_alloc();
    v46[50] = v61;
    *v61 = v46;
    v61[1] = sub_1D1BE1B24;
    v62 = MEMORY[0x1E69E7CA8] + 8;
    v70 = MEMORY[0x1E69E7CA8] + 8;
    v63 = MEMORY[0x1E69E7CA8] + 8;
    v64 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v61, v62, v63, 0, 0, &unk_1D1EA0348, v59, v64);
  }

  else
  {
    while (1)
    {
      v30 = v1[41];
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1D3891EF0](v15);
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        v31 = *(v30 + 8 * v15 + 32);
      }

      v32 = v31;
      v0 = v15 + 1;
      v1[44] = v31;
      v1[45] = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_41;
      }

      if (sub_1D1E67F7C())
      {
        break;
      }

      v33 = [v32 service];
      v1[46] = v33;
      if (v33)
      {
        v45 = swift_task_alloc();
        v1[47] = v45;
        *v45 = v1;
        v45[1] = sub_1D1BE1398;

        return sub_1D1BDD8E0();
      }

      v34 = v65[43];

      ++v15;
      v1 = v65;
      if (v0 == v34)
      {
        goto LABEL_11;
      }
    }

    v36 = v1[41];
    v37 = v1[42];
    v38 = v1[30];
    v39 = v1[31];

    v41 = v1[26];
    v40 = v1[27];
    v42 = v1[24];

    v43 = v1[1];

    return v43();
  }
}

uint64_t sub_1D1BE1B24()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v8 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_1D1BE2140;
  }

  else
  {
    v5 = *(v2 + 384);
    v6 = *(v2 + 392);

    v4 = sub_1D1BE1C48;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1BE1C48()
{
  v1 = *(v0 + 256);
  *(v0 + 416) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1CD4, v3, v2);
}

uint64_t sub_1D1BE1CD4()
{
  v1 = *(v0 + 416);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1D3C, 0, 0);
}

uint64_t sub_1D1BE1D3C()
{
  v1 = *(v0 + 256);
  *(v0 + 424) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1DC8, v3, v2);
}

uint64_t sub_1D1BE1DC8()
{
  v1 = *(v0 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1E30, 0, 0);
}

uint64_t sub_1D1BE1E30()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 0;
  v6 = v2;
  v7 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v4 = v7;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  v0[54] = v8;
  *v8 = v0;
  v8[1] = sub_1D1BE1F58;
  v9 = v0[35];
  v10 = v0[31];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[20];

  return sub_1D1E5A250(v11, v12, v13, v10, 0);
}

uint64_t sub_1D1BE1F58()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v5 = *v0;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE20B4, 0, 0);
}

uint64_t sub_1D1BE20B4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 240);

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1BE2140()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[32];

  v0[55] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE21DC, v5, v4);
}

uint64_t sub_1D1BE21DC()
{
  v1 = *(v0 + 440);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE2244, 0, 0);
}

uint64_t sub_1D1BE2244()
{
  v1 = *(v0 + 256);
  *(v0 + 448) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE22D0, v3, v2);
}

uint64_t sub_1D1BE22D0()
{
  v1 = *(v0 + 448);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE2338, 0, 0);
}

uint64_t sub_1D1BE2338()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 16386;
  v6 = v2;
  v7 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v4 = v7;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  v0[57] = v8;
  *v8 = v0;
  v8[1] = sub_1D1BE2464;
  v9 = v0[35];
  v10 = v0[31];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[20];

  return sub_1D1E5A250(v11, v12, v13, v10, 0);
}

uint64_t sub_1D1BE2464()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v5 = *v0;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE25C0, 0, 0);
}

uint64_t sub_1D1BE25C0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 336);
  v3 = *(v0 + 240);

  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1BE2660(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 272) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v5 + 120) = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v9 = *(type metadata accessor for StaticActionSet() - 8);
  *(v5 + 144) = v9;
  *(v5 + 152) = *(v9 + 64);
  *(v5 + 160) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  *(v5 + 176) = v11;
  v12 = *(v11 - 8);
  *(v5 + 184) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE2840, 0, 0);
}

uint64_t sub_1D1BE2840()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE28D4, v0, 0);
}

uint64_t sub_1D1BE28D4()
{
  v46 = v0;
  v2 = v0;
  v3 = v0[12];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v6);
    sub_1D1747DDC(&v45);

    v7 = v45;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[14];
  v11 = *(v0[23] + 16);
  v11(v0[26], v10, v9);
  v11(v8, v10, v9);
  v43 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v42 = v7 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v1 = v7;
      v16 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v44 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v16 = *(v7 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v2;
    v19 = v2[25];
    v20 = [v16 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1778988, v22, v21);

    if (v23)
    {
      v12 = v13;
      v7 = v1;
      v2 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v43)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v7);
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v42 + 8 * v12);
      }

      v26 = v25;
      v27 = v2[26];
      v29 = v2[22];
      v28 = v2[23];
      v30 = [v25 actionSets];
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v2;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[27] = v34;

      v1 = *(v28 + 8);
      v33[28] = v1;
      v33[29] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v27, v29);

      v12 = v33[25];
      v14 = v33[22];
      if (v34)
      {

        v1(v12, v14);
        v35 = sub_1D1BE2E80;
        goto LABEL_26;
      }

LABEL_34:
      v35 = (v1)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v35, v39, v40);
    }
  }

  else if (v12 != *(v44 + 16))
  {
    goto LABEL_19;
  }

  v36 = v2[25];
  v37 = v2[22];
  v38 = *(v2[23] + 8);
  v38(v2[26], v37);

  v38(v36, v37);
  v35 = sub_1D1BE2D78;
LABEL_26:
  v39 = 0;
  v40 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v39, v40);
}

uint64_t sub_1D1BE2D78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[16];
  v7 = v0[17];
  (*(*(v1 - 8) + 56))(v0[11], 1, 1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1BE2E80()
{
  v1 = [*(v0 + 216) home];
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v35 = v3;
    v36 = *(v0 + 216);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v37 = *(v0 + 128);
    v38 = *(v0 + 120);
    v34 = *(v0 + 272);
    v7 = *(v0 + 112);
    v33 = *(v0 + 104);
    v8 = *(v0 + 96);
    v9 = sub_1D1E67E7C();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_1D1BED4F0(v7, v4, type metadata accessor for StaticActionSet);
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = (v10 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    sub_1D1BED33C(v4, v13 + v10, type metadata accessor for StaticActionSet);
    v14 = v13 + ((v10 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v14 = v33;
    *(v14 + 8) = v34 & 1;
    *(v13 + v11) = v36;
    *(v13 + v12) = v2;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v15 = v36;
    v16 = v2;

    *(v0 + 248) = sub_1D1B02614(0, 0, v35, &unk_1D1EA03F0, v13);
    v17 = *(v8 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v15;
    *(inited + 40) = 256;
    v19 = v15;
    v20 = sub_1D18DA708(inited);
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
    *v37 = v20;
    swift_storeEnumTagMultiPayload();
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_1D1BE323C;
    v22 = *(v0 + 128);

    return sub_1D1AB6894(v22, 0, 0, 0, 0);
  }

  else
  {

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    v27 = *(v0 + 192);
    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    v31 = *(v0 + 128);
    v30 = *(v0 + 136);
    (*(*(v24 - 8) + 56))(*(v0 + 88), 1, 1);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1D1BE323C(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 264) = a1;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE3370, 0, 0);
}

uint64_t sub_1D1BE3370()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = [*(v0 + 240) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 192));
    v5 = *(v0 + 240);
    v6 = *(v0 + 216);
    v7 = *(v0 + 224);
    v8 = *(v0 + 192);
    v9 = *(v0 + 176);
    if (v10)
    {
      v36 = *(v0 + 136);
      v11 = *(*(v0 + 264) + 56);
      v37 = *(v0 + 232);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1BED4F0(v11 + *(v13 + 72) * v4, v36, type metadata accessor for StateSnapshot);

      v7(v8, v9);

      v14 = 0;
      goto LABEL_7;
    }

    v7(v8, v9);
  }

  else
  {
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v18 = *(v0 + 216);
    v17 = *(v0 + 224);
    v19 = *(v0 + 192);
    v20 = *(v0 + 176);
    v21 = *(v0 + 264);

    v17(v19, v20);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  v22 = *(v0 + 248);
  v23 = *(v0 + 136);
  v24 = *(v0 + 88);
  (*(v13 + 56))(v23, v14, 1, v12);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v26 = *(v25 + 48);
  sub_1D1B0ABE4(v23, v24);
  *(v24 + v26) = v22;
  v28 = *(v0 + 200);
  v27 = *(v0 + 208);
  v29 = *(v0 + 192);
  v31 = *(v0 + 160);
  v30 = *(v0 + 168);
  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  (*(*(v25 - 8) + 56))(*(v0 + 88), 0, 1, v25);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D1BE364C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(type metadata accessor for StaticActionSet() - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[18] = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v11 = *(v10 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE3828, 0, 0);
}

uint64_t sub_1D1BE3828()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE38BC, v0, 0);
}

uint64_t sub_1D1BE38BC()
{
  v46 = v0;
  v2 = v0;
  v3 = v0[12];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v6);
    sub_1D1747DDC(&v45);

    v7 = v45;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[13];
  v11 = *(v0[22] + 16);
  v11(v0[25], v10, v9);
  v11(v8, v10, v9);
  v43 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v42 = v7 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v1 = v7;
      v16 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v44 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v16 = *(v7 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v2;
    v19 = v2[24];
    v20 = [v16 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1749C64, v22, v21);

    if (v23)
    {
      v12 = v13;
      v7 = v1;
      v2 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v43)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v7);
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v42 + 8 * v12);
      }

      v26 = v25;
      v27 = v2[25];
      v29 = v2[21];
      v28 = v2[22];
      v30 = [v25 actionSets];
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v2;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[26] = v34;

      v1 = *(v28 + 8);
      v33[27] = v1;
      v33[28] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v27, v29);

      v12 = v33[24];
      v14 = v33[21];
      if (v34)
      {

        v1(v12, v14);
        v35 = sub_1D1BE3E68;
        goto LABEL_26;
      }

LABEL_34:
      v35 = (v1)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v35, v39, v40);
    }
  }

  else if (v12 != *(v44 + 16))
  {
    goto LABEL_19;
  }

  v36 = v2[24];
  v37 = v2[21];
  v38 = *(v2[22] + 8);
  v38(v2[25], v37);

  v38(v36, v37);
  v35 = sub_1D1BE3D60;
LABEL_26:
  v39 = 0;
  v40 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v39, v40);
}

uint64_t sub_1D1BE3D60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[16];
  v7 = v0[17];
  (*(*(v1 - 8) + 56))(v0[11], 1, 1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1BE3E68()
{
  v1 = [*(v0 + 208) home];
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = *(v0 + 208);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(*(v0 + 96) + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v2;
    *(inited + 40) = 257;
    v7 = v2;
    v8 = sub_1D18DA708(inited);
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
    *v3 = v8;
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *(v0 + 240) = v9;
    *v9 = v0;
    v9[1] = sub_1D1BE40C4;
    v10 = *(v0 + 152);

    return sub_1D1AB6894(v10, 0, 0, 0, 0);
  }

  else
  {

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v15 = *(v0 + 184);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    (*(*(v12 - 8) + 56))(*(v0 + 88), 1, 1);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1D1BE40C4(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 248) = a1;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE41F8, 0, 0);
}

uint64_t sub_1D1BE41F8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);
  v3 = [*(v0 + 232) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 184));
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    if (v9)
    {
      v10 = *(v0 + 160);
      v11 = *(*(v0 + 248) + 56);
      v12 = *(type metadata accessor for StateSnapshot(0) - 8);
      sub_1D1BED4F0(v11 + *(v12 + 72) * v4, v10, type metadata accessor for StateSnapshot);
      v6(v7, v8);

      goto LABEL_7;
    }

    v6(v7, v8);
  }

  else
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = *(v0 + 248);

    v14(v15, v16);
  }

  v12 = *(type metadata accessor for StateSnapshot(0) - 8);
LABEL_7:
  v42 = *(v0 + 208);
  v43 = *(v0 + 232);
  v44 = *(v0 + 160);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v24 = *(v0 + 88);
  (*(v12 + 56))();
  v25 = sub_1D1E67E7C();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  sub_1D1BED4F0(v23, v19, type metadata accessor for StaticActionSet);
  v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v27 = (v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_1D1BED33C(v19, v29 + v26, type metadata accessor for StaticActionSet);
  *(v29 + v27) = v22;
  *(v29 + v28) = v42;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;

  v30 = sub_1D1B02614(0, 0, v18, &unk_1D1EA03A8, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v32 = *(v31 + 48);
  sub_1D1B0ABE4(v44, v24);
  *(v24 + v32) = v30;
  v33 = *(v0 + 192);
  v34 = *(v0 + 200);
  v35 = *(v0 + 184);
  v37 = *(v0 + 152);
  v36 = *(v0 + 160);
  v39 = *(v0 + 128);
  v38 = *(v0 + 136);
  (*(*(v31 - 8) + 56))(*(v0 + 88), 0, 1, v31);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1D1BE45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 81) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE466C, 0, 0);
}

uint64_t sub_1D1BE466C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 81);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = sub_1D1E67E7C();
  v8 = (*(v7 - 8) + 56);
  v27 = *v8;
  (*v8)(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v3;
  v10 = v6;
  v11 = v4;
  v12 = v3;
  sub_1D1A01DDC(v1, &unk_1D1EA0388, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v2 & 1) == 0)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07B5D8);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6835C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 48);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&dword_1D16EC000, v14, v15, "executing actionSet with timeout: %f", v17, 0xCu);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 16);

    v27(v18, 1, 1, v7);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    sub_1D1A01DDC(v18, &unk_1D1EA0398, v21);
    sub_1D1741A30(v18, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v22 = *(MEMORY[0x1E69E8708] + 4);
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v23 = v0;
  v23[1] = sub_1D1BE494C;
  v25 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 80, 0, 0, v24);
}

uint64_t sub_1D1BE494C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D18BD2D8;
  }

  else
  {
    v3 = sub_1D1BE4A60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BE4A60()
{
  v1 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D16EC000, v3, v4, "actionSet execution has completed, cancelling timeout", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1BE4BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v6[33] = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v10 = sub_1D1E6702C();
  v6[36] = v10;
  v11 = *(v10 - 8);
  v6[37] = v11;
  v12 = *(v11 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v13 = sub_1D1E66FDC();
  v6[40] = v13;
  v14 = *(v13 - 8);
  v6[41] = v14;
  v15 = *(v14 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE4D6C, 0, 0);
}

uint64_t sub_1D1BE4D6C()
{
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = sub_1D1E6701C();
  v0[46] = __swift_project_value_buffer(v2, qword_1EE07AE50);
  sub_1D1E66FCC();
  v3 = sub_1D1E66FFC();
  v4 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v7, "actionSetExecution", "", v6, 2u);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v8 = v0[44];
  v9 = v0[45];
  v10 = v0[40];
  v11 = v0[41];
  v13 = v0[30];
  v12 = v0[31];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_1D1E6705C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[47] = sub_1D1E6704C();
  v17 = *(v11 + 8);
  v0[48] = v17;
  v0[49] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v10);
  v0[2] = v0;
  v0[3] = sub_1D1BE4FE8;
  v18 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_54;
  v0[14] = v18;
  [v13 executeActionSet:v12 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1BE4FE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_1D1BE5CD0;
  }

  else
  {
    v3 = sub_1D1BE50F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BE50F8()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[43];
  v4 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v5 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v6 = v0[47];
    v7 = v0[39];
    v8 = v0[36];
    v9 = v0[37];

    sub_1D1E6706C();

    if ((*(v9 + 88))(v7, v8) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[37] + 8))(v0[39], v0[36]);
      v10 = "";
    }

    v11 = v0[43];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v4, v5, v13, "actionSetExecution", v10, v12, 2u);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v15 = v0[48];
  v14 = v0[49];
  v16 = v0[43];
  v17 = v0[40];

  v15(v16, v17);
  v0[51] = sub_1D1E67E1C();
  v0[52] = sub_1D1E67E0C();
  v19 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE52C0, v19, v18);
}

uint64_t sub_1D1BE52C0()
{
  v1 = *(v0 + 416);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5358, 0, 0);
}

uint64_t sub_1D1BE5358()
{
  v1 = *(v0 + 408);
  *(v0 + 424) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE53E4, v3, v2);
}

uint64_t sub_1D1BE53E4()
{
  v1 = *(v0 + 424);

  *(v0 + 432) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5458, 0, 0);
}

uint64_t sub_1D1BE5458()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v3;
  *(inited + 40) = 1;
  v5 = v3;
  v6 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v2 = v6;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[55] = v7;
  *v7 = v0;
  v7[1] = sub_1D1BE5594;
  v8 = v0[54];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[32];
  v12 = v0[30];

  return sub_1D1E5A250(v9, v10, v11, v12, 0);
}

uint64_t sub_1D1BE5594()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v5 = *v0;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE56F0, 0, 0);
}

uint64_t sub_1D1BE56F0()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
  v9 = v0[34];
  v8 = v0[35];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1BE57BC()
{
  v1 = *(v0 + 456);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5854, 0, 0);
}

uint64_t sub_1D1BE5854()
{
  v1 = *(v0 + 448);
  *(v0 + 464) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE58E0, v3, v2);
}

uint64_t sub_1D1BE58E0()
{
  v1 = *(v0 + 464);

  *(v0 + 472) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5954, 0, 0);
}

uint64_t sub_1D1BE5954()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v3;
  *(inited + 40) = 16386;
  v5 = v3;
  v6 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v2 = v6;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[60] = v7;
  *v7 = v0;
  v7[1] = sub_1D1BE5A90;
  v8 = v0[59];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[32];
  v12 = v0[30];

  return sub_1D1E5A250(v9, v10, v11, v12, 0);
}

uint64_t sub_1D1BE5A90()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v5 = *v0;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5BEC, 0, 0);
}

uint64_t sub_1D1BE5BEC()
{
  v1 = v0[50];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[35];
  v13 = v0[34];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[50];

  return v10();
}

uint64_t sub_1D1BE5CD0()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[42];
  swift_willThrow();
  v5 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v6 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v7 = v0[47];
    v9 = v0[37];
    v8 = v0[38];
    v10 = v0[36];

    sub_1D1E6706C();

    if ((*(v9 + 88))(v8, v10) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[37] + 8))(v0[38], v0[36]);
      v11 = "";
    }

    v12 = v0[42];
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v5, v6, v14, "actionSetExecution", v11, v13, 2u);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  v16 = v0[48];
  v15 = v0[49];
  v17 = v0[42];
  v18 = v0[40];

  v16(v17, v18);
  v0[56] = sub_1D1E67E1C();
  v0[57] = sub_1D1E67E0C();
  v20 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE57BC, v20, v19);
}

uint64_t sub_1D1BE5EA8(double a1)
{
  *(v1 + 32) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 40) = v2;
  v3 = *(v2 - 8);
  *(v1 + 48) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5F68, 0, 0);
}

uint64_t sub_1D1BE5F68()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE6044;
  v7 = v0[7];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1BE6044()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v5 = sub_1D1BEDBBC;
  }

  else
  {
    v5 = sub_1D1BE61AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1BE61AC()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "actionSet execution timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  type metadata accessor for HMError(0);
  v0[3] = 8;
  sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
  sub_1D1BED2E4();
  sub_1D1E6654C();
  v5 = v0[2];
  swift_willThrow();
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}