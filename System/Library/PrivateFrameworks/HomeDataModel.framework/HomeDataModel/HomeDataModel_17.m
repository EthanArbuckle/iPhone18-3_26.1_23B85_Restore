uint64_t sub_1D184CF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticLightProfile();
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v63 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v72 = v63 - v12;
  v79 = sub_1D1E66A7C();
  v74 = *(v79 - 8);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x1EEE9AC00](v79);
  v73 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645570, &qword_1D1E79B18);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v19);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v70 = v63 - v22;
  v67 = v4;
  v23 = 0;
  v24 = *(a1 + 64);
  v63[0] = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v63[1] = v74 + 16;
  v64 = v11;
  v77 = (v74 + 32);
  v68 = (v74 + 8);
  v69 = a1;
  v65 = v28;
  v66 = v8;
  while (v27)
  {
    v75 = (v27 - 1) & v27;
    v31 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_18:
    v37 = v74;
    v38 = v71;
    v39 = v79;
    (*(v74 + 16))(v71, *(a1 + 48) + *(v74 + 72) * v31, v79);
    v40 = *(a1 + 56) + *(v78 + 72) * v31;
    v41 = v72;
    sub_1D186155C(v40, v72, type metadata accessor for StaticLightProfile);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v45 = v76;
    v44(v76, v38, v39);
    v46 = &v45[v43];
    v34 = v45;
    sub_1D18614F4(v41, v46, type metadata accessor for StaticLightProfile);
    (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
    v11 = v64;
LABEL_19:
    v47 = v70;
    sub_1D1741A90(v34, v70, &qword_1EC645570, &qword_1D1E79B18);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
    v50 = v49 == 1;
    if (v49 == 1)
    {
      return v50;
    }

    a1 = v69;
    v51 = *(v48 + 48);
    v52 = v73;
    v53 = v79;
    (*v77)(v73, v47, v79);
    sub_1D18614F4(v47 + v51, v11, type metadata accessor for StaticLightProfile);
    v54 = sub_1D1742188(v52);
    v56 = v55;
    (*v68)(v52, v53);
    if ((v56 & 1) == 0)
    {
      goto LABEL_31;
    }

    v57 = v66;
    sub_1D186155C(*(a2 + 56) + *(v78 + 72) * v54, v66, type metadata accessor for StaticLightProfile);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v57 + v67[5]) != v11[v67[5]] || (v58 = v67[6], v59 = &v11[v58], *(v57 + v58) != v11[v58]))
    {
LABEL_30:
      sub_1D18615C4(v57, type metadata accessor for StaticLightProfile);
LABEL_31:
      sub_1D18615C4(v11, type metadata accessor for StaticLightProfile);
      return 0;
    }

    v60 = *(v57 + v58 + 1);
    v61 = v59[1];
    if (v60 == 2)
    {
      if (v61 != 2)
      {
        goto LABEL_30;
      }
    }

    else if (v61 == 2 || ((v60 ^ v61) & 1) != 0)
    {
      goto LABEL_30;
    }

    v29 = v67[7];
    v30 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D18615C4(v57, type metadata accessor for StaticLightProfile);
    result = sub_1D18615C4(v11, type metadata accessor for StaticLightProfile);
    v28 = v65;
    v27 = v75;
    if ((v30 & 1) == 0)
    {
      return v50;
    }
  }

  if (v28 <= v23 + 1)
  {
    v32 = v23 + 1;
  }

  else
  {
    v32 = v28;
  }

  v33 = v32 - 1;
  v34 = v76;
  while (1)
  {
    v35 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v35 >= v28)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
      (*(*(v62 - 8) + 56))(v34, 1, 1, v62);
      v75 = 0;
      v23 = v33;
      goto LABEL_19;
    }

    v36 = *(v63[0] + 8 * v35);
    ++v23;
    if (v36)
    {
      v75 = (v36 - 1) & v36;
      v31 = __clz(__rbit64(v36)) | (v35 << 6);
      v23 = v35;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184D5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTelevisionProfile();
  v5 = *(v4 - 8);
  v79 = v4;
  v80 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v77 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - v11;
  v81 = sub_1D1E66A7C();
  v13 = *(v81 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v81);
  v76 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645560, &qword_1D1E79B08);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v21);
  v26 = &v63 - v25;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v27 = 0;
  v28 = *(a1 + 64);
  v63 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v68 = a1;
  v69 = v13 + 16;
  v78 = (v13 + 32);
  v71 = (v13 + 8);
  v72 = a2;
  v64 = v32;
  v65 = v12;
  v66 = v18;
  v67 = v13;
  v70 = v23;
  while (v31)
  {
    v74 = (v31 - 1) & v31;
    v37 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_17:
    v42 = v81;
    (*(v13 + 16))(v18, *(a1 + 48) + *(v13 + 72) * v37, v81);
    sub_1D186155C(*(a1 + 56) + *(v80 + 72) * v37, v12, type metadata accessor for StaticTelevisionProfile);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    v44 = *(v43 + 48);
    (*(v13 + 32))(v23, v18, v42);
    sub_1D18614F4(v12, &v23[v44], type metadata accessor for StaticTelevisionProfile);
    (*(*(v43 - 8) + 56))(v23, 0, 1, v43);
LABEL_18:
    sub_1D1741A90(v23, v26, &qword_1EC645560, &qword_1D1E79B08);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    v46 = (*(*(v45 - 8) + 48))(v26, 1, v45) == 1;
    result = v46;
    if (v46)
    {
      return result;
    }

    v73 = v46;
    v47 = *(v45 + 48);
    v48 = v76;
    v49 = v81;
    (*v78)(v76, v26, v81);
    v50 = v77;
    sub_1D18614F4(&v26[v47], v77, type metadata accessor for StaticTelevisionProfile);
    v51 = v72;
    v52 = sub_1D1742188(v48);
    LOBYTE(v47) = v53;
    (*v71)(v48, v49);
    if ((v47 & 1) == 0)
    {
      goto LABEL_31;
    }

    v54 = v75;
    sub_1D186155C(*(v51 + 56) + *(v80 + 72) * v52, v75, type metadata accessor for StaticTelevisionProfile);
    v55 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v23 = v70;
    if ((v55 & 1) == 0)
    {
      goto LABEL_30;
    }

    v56 = *(v79 + 20);
    v57 = *(v54 + v56);
    v58 = *(v50 + v56);
    v59 = *(v57 + 16);
    if (v59 != *(v58 + 16))
    {
      goto LABEL_30;
    }

    if (v59 && v57 != v58)
    {
      v60 = (v57 + 32);
      v61 = (v58 + 32);
      while (*v60 == *v61)
      {
        ++v60;
        ++v61;
        if (!--v59)
        {
          goto LABEL_6;
        }
      }

LABEL_30:
      sub_1D18615C4(v54, type metadata accessor for StaticTelevisionProfile);
LABEL_31:
      sub_1D18615C4(v50, type metadata accessor for StaticTelevisionProfile);
      return 0;
    }

LABEL_6:
    v33 = *(v79 + 24);
    v34 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v35 = v54;
    v36 = v34;
    sub_1D18615C4(v35, type metadata accessor for StaticTelevisionProfile);
    sub_1D18615C4(v50, type metadata accessor for StaticTelevisionProfile);
    v13 = v67;
    a1 = v68;
    v12 = v65;
    v18 = v66;
    v32 = v64;
    v31 = v74;
    result = v73;
    if ((v36 & 1) == 0)
    {
      return result;
    }
  }

  if (v32 <= v27 + 1)
  {
    v38 = v27 + 1;
  }

  else
  {
    v38 = v32;
  }

  v39 = v38 - 1;
  while (1)
  {
    v40 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v40 >= v32)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
      (*(*(v62 - 8) + 56))(v23, 1, 1, v62);
      v74 = 0;
      v27 = v39;
      goto LABEL_18;
    }

    v41 = *(v63 + 8 * v40);
    ++v27;
    if (v41)
    {
      v74 = (v41 - 1) & v41;
      v37 = __clz(__rbit64(v41)) | (v40 << 6);
      v27 = v40;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D184DC4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1D171D2F0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D184DD88(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1D171D2F0(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A8, &qword_1D1E79B58);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1D1E684FC();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D184DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v46 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v47 = (v8 + 63) >> 6;
  v48 = a1;
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v12 = (v10 - 1) & v10;
LABEL_13:
    v16 = v11 | (v7 << 6);
    v17 = *(*(v6 + 48) + 8 * v16);
    v18 = *(v6 + 56) + 32 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = v17;
    v24 = v19;
    v25 = v19;
    v26 = v20;
    v27 = v20;
    v28 = v21;
    sub_1D17418FC(v25, v27, v21, v22);
    v29 = v23 == 0;
    if (!v23)
    {
      return v29;
    }

    v49 = v12;
    v30 = sub_1D171D368(v23);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      v37 = v24;
      v38 = v26;
      v39 = v28;
      goto LABEL_54;
    }

    v33 = *(a2 + 56) + 32 * v30;
    v10 = *v33;
    a1 = *(v33 + 8);
    v6 = *(v33 + 16);
    v4 = *(v33 + 24);
    v50[0] = *v33;
    v50[1] = a1;
    v50[2] = v6;
    v51 = v4;
    v14 = v24;
    v52 = v24;
    v53 = v26;
    a3 = v26;
    a4 = v28;
    v54 = v28;
    v55 = v22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        if (v22 != 2)
        {
          v40 = a1;
          swift_bridgeObjectRetain_n();
          a1 = v40;
          v14 = v24;
          a3 = v26;
          a4 = v28;
          goto LABEL_53;
        }

        if (v10 != v24)
        {

          sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
          return 0;
        }

        if (a1 == v26 && v6 == v28)
        {

          goto LABEL_46;
        }

        LOBYTE(v4) = sub_1D1E6904C();

        a1 = sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
        v6 = v48;
        v10 = v49;
        if ((v4 & 1) == 0)
        {
          return v29;
        }
      }

      else
      {
        if (v6 | a1 | v10)
        {
          if (v10 == 1 && (v6 | a1) == 0)
          {
            v10 = 1;
            if (v22 != 3 || v24 != 1)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v10 = 2;
            if (v22 != 3 || v24 != 2)
            {
              goto LABEL_53;
            }
          }

          if (v28 | v26)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v22 != 3)
          {
            goto LABEL_53;
          }

          if (v28 | v26 | v24)
          {
            goto LABEL_52;
          }
        }

LABEL_46:
        a1 = sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
        v6 = v48;
        v10 = v49;
      }
    }

    else
    {
      if (v4)
      {
        if (v22 != 1)
        {
          goto LABEL_53;
        }
      }

      else if (v22)
      {
        goto LABEL_53;
      }

      a1 = sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
      v35 = v10 ^ v24;
      v6 = v48;
      v10 = v49;
      if (v35)
      {
        return v29;
      }
    }
  }

  v13 = v7;
  v14 = v47;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= v47)
    {
      return 1;
    }

    v15 = *(v46 + 8 * v7);
    ++v13;
    if (v15)
    {
      v11 = __clz(__rbit64(v15));
      v12 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_52:
  LOBYTE(v22) = 3;
LABEL_53:
  v41 = v14;
  v42 = a1;
  v43 = a3;
  v44 = a4;
  sub_1D17418FC(v14, a3, a4, v22);
  sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
  sub_1D1757A60(v10, v42, v6, v4);
  v37 = v41;
  v38 = v43;
  v39 = v44;
LABEL_54:
  sub_1D1757A60(v37, v38, v39, v22);
  return 0;
}

BOOL sub_1D184E2A0(uint64_t a1, uint64_t a2)
{
  v70[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_101:
    result = 1;
    goto LABEL_109;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_108;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v68 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v11 = v4;
        do
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
          }

          if (v4 >= v9)
          {
            goto LABEL_101;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
        }

        while (!v12);
        v10 = __clz(__rbit64(v12));
        v68 = (v12 - 1) & v12;
LABEL_13:
        v13 = v10 | (v4 << 6);
        v14 = *(*(v3 + 48) + 8 * v13);
        v15 = *(v3 + 56) + 24 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = v14;
        sub_1D1741830(v16, v17, v18);
        result = v19 == 0;
        if (!v19)
        {
          goto LABEL_109;
        }

        v21 = sub_1D171D368(v19);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_107;
        }

        v24 = *(v2 + 56) + 24 * v21;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        if (v27 <= 2)
        {
          break;
        }

        if (v27 == 3)
        {
          if (v18 != 3)
          {
            v62 = *(v24 + 8);

            goto LABEL_104;
          }

          if (v26 == v16 && v25 == v17)
          {
            v42 = *(v24 + 8);

            sub_1D1778940(v16, v17, 3);
            v34 = v16;
            v35 = v17;
            v41 = 3;
            goto LABEL_83;
          }

          v37 = *v24;
          v38 = *(v24 + 8);
          v39 = sub_1D1E6904C();

          sub_1D1778940(v26, v38, 3);
          sub_1D1778940(v16, v17, 3);
          v3 = a1;
          v8 = v68;
          result = 0;
          if ((v39 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else if (v27 == 4)
        {
          if (v18 != 4)
          {
            v62 = *(v24 + 8);
            sub_1D1741854(*v24, v25);
LABEL_104:
            v25 = v62;
            goto LABEL_106;
          }

          v29 = v25 >> 62;
          v30 = v17 >> 62;
          if (v25 >> 62 == 3)
          {
            v31 = *&v26 == 0.0 && v25 == 0xC000000000000000;
            v32 = 0;
            v33 = v31 && v17 >> 62 == 3;
            if (v33 && *&v16 == 0.0 && v17 == 0xC000000000000000)
            {
              sub_1D1741854(0, 0xC000000000000000);
              sub_1D1778940(0, 0xC000000000000000, 4);
              v34 = 0;
              v35 = 0xC000000000000000;
              goto LABEL_82;
            }
          }

          else if (v29 > 1)
          {
            if (v29 == 2)
            {
              v44 = *(v26 + 16);
              v43 = *(v26 + 24);
              v45 = __OFSUB__(v43, v44);
              v32 = v43 - v44;
              if (v45)
              {
                goto LABEL_113;
              }
            }

            else
            {
              v32 = 0;
            }
          }

          else if (v29)
          {
            LODWORD(v32) = HIDWORD(v26) - v26;
            if (__OFSUB__(HIDWORD(v26), v26))
            {
              goto LABEL_114;
            }

            v32 = v32;
          }

          else
          {
            v32 = BYTE6(v25);
          }

          if (v30 > 1)
          {
            if (v30 != 2)
            {
              if (v32)
              {
LABEL_105:
                v63 = v25;
                sub_1D1741854(v26, v25);
                v25 = v63;
                LOBYTE(v18) = 4;
                goto LABEL_106;
              }

LABEL_81:
              v52 = v25;
              sub_1D1741854(v26, v25);
              sub_1D1778940(v26, v52, 4);
              v34 = v16;
              v35 = v17;
LABEL_82:
              v41 = 4;
              goto LABEL_83;
            }

            v48 = *(v16 + 16);
            v47 = *(v16 + 24);
            v45 = __OFSUB__(v47, v48);
            v46 = v47 - v48;
            if (v45)
            {
              goto LABEL_112;
            }
          }

          else if (v30)
          {
            LODWORD(v46) = HIDWORD(v16) - v16;
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              goto LABEL_111;
            }

            v46 = v46;
          }

          else
          {
            v46 = BYTE6(v17);
          }

          if (v32 != v46)
          {
            goto LABEL_105;
          }

          if (v32 < 1)
          {
            goto LABEL_81;
          }

          v66 = v2;
          if (v29 > 1)
          {
            if (v29 != 2)
            {
              memset(v70, 0, 14);
              v61 = v25;
              sub_1D1741830(v26, v25, 4);
              sub_1D1741830(v26, v61, 4);
              sub_1D1741830(v16, v17, 4);
              sub_1D199EDB4(v70, v16, v17, &v69);
              sub_1D1778940(v16, v17, 4);
              sub_1D1778940(v26, v61, 4);
              v50 = v26;
              v51 = v61;
              goto LABEL_98;
            }

            v53 = *(v26 + 16);
            v65 = *(v26 + 24);
            v54 = v25;
            sub_1D1741830(v26, v25, 4);
            sub_1D1741830(v26, v54, 4);
            sub_1D1741830(v16, v17, 4);
            v55 = v54;
            v56 = sub_1D1E6616C();
            if (v56)
            {
              v57 = sub_1D1E6619C();
              if (__OFSUB__(v53, v57))
              {
                goto LABEL_117;
              }

              v56 += v53 - v57;
            }

            if (__OFSUB__(v65, v53))
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (!v29)
            {
              v70[0] = v26;
              LOWORD(v70[1]) = v25;
              BYTE2(v70[1]) = BYTE2(v25);
              BYTE3(v70[1]) = BYTE3(v25);
              BYTE4(v70[1]) = BYTE4(v25);
              BYTE5(v70[1]) = BYTE5(v25);
              v49 = v25;
              sub_1D1741830(v26, v25, 4);
              sub_1D1741830(v26, v49, 4);
              sub_1D1741830(v16, v17, 4);
              sub_1D199EDB4(v70, v16, v17, &v69);
              sub_1D1778940(v16, v17, 4);
              sub_1D1778940(v26, v49, 4);
              v50 = v26;
              v51 = v49;
LABEL_98:
              sub_1D1778940(v50, v51, 4);
              sub_1D1778940(v16, v17, 4);
              v60 = v69;
              v3 = a1;
              goto LABEL_99;
            }

            if (v26 >> 32 < v26)
            {
              goto LABEL_115;
            }

            v58 = v25;
            sub_1D1741830(v26, v25, 4);
            sub_1D1741830(v26, v58, 4);
            sub_1D1741830(v16, v17, 4);
            v56 = sub_1D1E6616C();
            if (v56)
            {
              v59 = sub_1D1E6619C();
              if (__OFSUB__(v26, v59))
              {
                goto LABEL_118;
              }

              v56 += v26 - v59;
            }

            v55 = v58;
          }

          sub_1D1E6618C();
          sub_1D199EDB4(v56, v16, v17, v70);
          sub_1D1778940(v16, v17, 4);
          sub_1D1778940(v26, v55, 4);
          sub_1D1778940(v26, v55, 4);
          sub_1D1778940(v16, v17, 4);
          v60 = v70[0];
          v2 = v66;
          v3 = a1;
LABEL_99:
          v8 = v68;
          result = 0;
          if ((v60 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          sub_1D1778940(*v24, v25, 5);
          if (v18 != 5 || (v17 | v16) != 0)
          {
            goto LABEL_107;
          }

          v34 = 0;
          v35 = 0;
          v41 = 5;
LABEL_83:
          sub_1D1778940(v34, v35, v41);
          v3 = a1;
          v8 = v68;
        }
      }

      if (*(v24 + 16))
      {
        break;
      }

      sub_1D1778940(*v24, v25, 0);
      if (v18)
      {
        goto LABEL_107;
      }

      sub_1D1778940(v16, v17, 0);
      v3 = a1;
      v8 = v68;
      result = 0;
      if ((v26 ^ v16))
      {
        goto LABEL_109;
      }
    }

    if (v27 == 1)
    {
      break;
    }

    sub_1D1778940(*v24, v25, 2);
    if (v18 != 2)
    {
      goto LABEL_107;
    }

    sub_1D1778940(v16, v17, 2);
    v28 = v26 == v16;
LABEL_47:
    v3 = a1;
    v8 = v68;
    result = 0;
    if (!v28)
    {
      goto LABEL_109;
    }
  }

  if (v18 == 1)
  {
    sub_1D1778940(*v24, v25, 1);
    sub_1D1778940(v16, v17, 1);
    v28 = *&v26 == *&v16;
    goto LABEL_47;
  }

LABEL_106:
  sub_1D1778940(v26, v25, v27);
LABEL_107:
  sub_1D1778940(v16, v17, v18);
LABEL_108:
  result = 0;
LABEL_109:
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D184EAA0(uint64_t a1, uint64_t a2)
{
  v58 = sub_1D1E66A7C();
  v53 = *(v58 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x1EEE9AC00](v58);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C8, &qword_1D1E79A60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = v48 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = v13;
  v15 = 0;
  v49 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48[0] = v17;
  v48[1] = v53 + 16;
  v55 = v48 - v12;
  v56 = (v53 + 32);
  v50 = (v53 + 8);
  while (v21)
  {
    v57 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
    v28 = v49;
    v29 = v52;
    v30 = v53;
    v31 = v58;
    (*(v53 + 16))(v52, *(v49 + 48) + *(v53 + 72) * v23, v58);
    v32 = *(*(v28 + 56) + v23);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v51;
    v35(v51, v29, v31);
    *(v36 + v34) = v32;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    v14 = v55;
LABEL_17:
    sub_1D1741A90(v36, v14, &qword_1EC6454C8, &qword_1D1E79A60);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
    v38 = (*(*(v37 - 8) + 48))(v14, 1, v37);
    v39 = v38 == 1;
    if (v38 != 1)
    {
      v40 = *(v37 + 48);
      v41 = v54;
      v42 = v58;
      (*v56)(v54, v14, v58);
      v43 = v14[v40];
      v44 = sub_1D1742188(v41);
      LOBYTE(v40) = v45;
      result = (*v50)(v41, v42);
      if (v40)
      {
        v46 = v43 == *(*(a2 + 56) + v44);
        v14 = v55;
        v21 = v57;
        if (v46)
        {
          continue;
        }
      }
    }

    return v39;
  }

  if (v22 <= v15 + 1)
  {
    v24 = v15 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
      v36 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 1, v47);
      v57 = 0;
      v15 = v25;
      goto LABEL_17;
    }

    v27 = *(v48[0] + 8 * v26);
    ++v15;
    if (v27)
    {
      v57 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D184EF00(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v23 = (v5 + 63) >> 6;
    while (v7)
    {
      v8 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v11 = v8 | (v4 << 6);
      v12 = *(*(a1 + 48) + 8 * v11);
      v13 = *(*(a1 + 56) + 2 * v11);
      v14 = v12;
      if (!v12)
      {
        return;
      }

      v15 = v14;
      v16 = sub_1D171D3B8(v14);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        return;
      }

      v19 = *(*(a2 + 56) + 2 * v16);
      if (v19 >> 14)
      {
        if (v19 >> 14 == 1)
        {
          v20 = (v19 ^ v13);
          if ((v13 & 0xC000) != 0x4000 || v20 != 0)
          {
            return;
          }
        }

        else if (v13 != 0x8000)
        {
          return;
        }
      }

      else
      {
        if (v13 >= 0x4000)
        {
          return;
        }

        v22 = v19 ^ v13;
        if (v22 > 0xFF || (v22 & 1) != 0)
        {
          return;
        }
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v23)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v4);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v7 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D184F090(uint64_t a1, uint64_t a2)
{
  v58 = sub_1D1E66A7C();
  v52 = *(v58 - 8);
  v4 = *(v52 + 64);
  v5 = MEMORY[0x1EEE9AC00](v58);
  v53 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A8, &qword_1D1E79A40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v54 = v48 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v49 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48[0] = v17;
  v48[1] = v52 + 16;
  v55 = v12;
  v56 = (v52 + 32);
  v50 = (v52 + 8);
  while (v21)
  {
    v57 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_18:
    v28 = v49;
    v29 = v51;
    v30 = v52;
    v31 = v58;
    (*(v52 + 16))(v51, *(v49 + 48) + *(v52 + 72) * v23, v58);
    v32 = *(*(v28 + 56) + v23);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v12 = v55;
    v35(v55, v29, v31);
    v12[v34] = v32;
    (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
LABEL_19:
    v36 = v54;
    sub_1D1741A90(v12, v54, &qword_1EC6454A8, &qword_1D1E79A40);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v53;
    v42 = v58;
    (*v56)(v53, v36, v58);
    v43 = *(v36 + v40);
    v44 = sub_1D1742188(v41);
    LOBYTE(v40) = v45;
    result = (*v50)(v41, v42);
    if ((v40 & 1) == 0)
    {
      return v39;
    }

    v46 = *(*(a2 + 56) + v44);
    if (v46 < 0)
    {
      v12 = v55;
      if ((v43 & 0x80000000) == 0)
      {
        return v39;
      }
    }

    else
    {
      v12 = v55;
      if (v43 < 0)
      {
        return v39;
      }
    }

    v21 = v57;
    if ((v46 ^ v43))
    {
      return v39;
    }
  }

  if (v22 <= v15 + 1)
  {
    v24 = v15 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
      (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
      v57 = 0;
      v15 = v25;
      goto LABEL_19;
    }

    v27 = *(v48[0] + 8 * v26);
    ++v15;
    if (v27)
    {
      v57 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184F4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticActionSet();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645490, &qword_1D1E79A20);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E79A28;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticActionSet);
    v41 = &qword_1D1E79A28;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticActionSet);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645490, &qword_1D1E79A20);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticActionSet);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticActionSet);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticActionSet);
    v56 = static StaticActionSet.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticActionSet);
    result = sub_1D18615C4(v52, type metadata accessor for StaticActionSet);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184FAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraProfile();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645480, &unk_1D1E79A10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1EA2FA0;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticCameraProfile);
    v41 = &qword_1D1EA2FA0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticCameraProfile);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645480, &unk_1D1E79A10);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticCameraProfile);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticCameraProfile);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticCameraProfile);
    v56 = static StaticCameraProfile.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticCameraProfile);
    result = sub_1D18615C4(v52, type metadata accessor for StaticCameraProfile);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18500AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMediaSystem();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645470, &qword_1D1E79A00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E79A08;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticMediaSystem);
    v41 = &qword_1D1E79A08;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticMediaSystem);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645470, &qword_1D1E79A00);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticMediaSystem);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticMediaSystem);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticMediaSystem);
    v56 = static StaticMediaSystem.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticMediaSystem);
    result = sub_1D18615C4(v52, type metadata accessor for StaticMediaSystem);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1850684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMediaProfile();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645460, &unk_1D1E799F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &unk_1D1E995E0;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticMediaProfile);
    v41 = &unk_1D1E995E0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticMediaProfile);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645460, &unk_1D1E799F0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticMediaProfile);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticMediaProfile);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticMediaProfile);
    v56 = static StaticMediaProfile.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticMediaProfile);
    result = sub_1D18615C4(v52, type metadata accessor for StaticMediaProfile);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1850C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v11 = 0;
  v12 = *(a1 + 64);
  v35 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v41 = (v45 + 8);
  v42 = v45 + 16;
  v36 = v16;
  v37 = a1;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v18 = (v15 - 1) & v15;
LABEL_14:
    v21 = v17 | (v11 << 6);
    v22 = *(*(a1 + 48) + v21);
    v23 = *(*(a1 + 56) + 8 * v21);

    if (!v23)
    {
      return 1;
    }

    v38 = v18;
    v24 = sub_1D171D408(v22);
    if ((v25 & 1) == 0 || (v44 = *(*(a2 + 56) + 8 * v24), v26 = *(v44 + 16), v26 != *(v23 + 16)))
    {
LABEL_27:

      return 0;
    }

    if (v26 && v44 != v23)
    {
      v34 = a2;
      v27 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v39 = v23 + v27;
      v40 = v44 + v27;

      v28 = 0;
      while (v28 < *(v44 + 16))
      {
        v29 = *(v45 + 72) * v28;
        v30 = *(v45 + 16);
        result = v30(v10, v40 + v29, v4);
        if (v28 >= *(v23 + 16))
        {
          goto LABEL_32;
        }

        v31 = v43;
        v30(v43, v39 + v29, v4);
        sub_1D1861484(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v32 = sub_1D1E6775C();
        v33 = *v41;
        (*v41)(v31, v4);
        result = v33(v10, v4);
        if ((v32 & 1) == 0)
        {

          goto LABEL_27;
        }

        if (v26 == ++v28)
        {

          a2 = v34;
          goto LABEL_6;
        }
      }

      goto LABEL_31;
    }

LABEL_6:

    v16 = v36;
    a1 = v37;
    v15 = v38;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return 1;
    }

    v20 = *(v35 + 8 * v11);
    ++v19;
    if (v20)
    {
      v17 = __clz(__rbit64(v20));
      v18 = (v20 - 1) & v20;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D1850FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v86 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v73 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v73 - v11;
  v13 = sub_1D1E66A7C();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = *(v94 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v90 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645520, &qword_1D1E79AB8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v23);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v78 = &v73 - v27;
  v28 = 0;
  v29 = *(a1 + 64);
  v73 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v82 = (v94 + 32);
  v93 = (v94 + 8);
  v80 = v25;
  v74 = v33;
  v91 = v94 + 16;
  v92 = v20;
  v76 = a1;
  v77 = a2;
  v85 = v10;
  v75 = v12;
  while (v32)
  {
    v79 = (v32 - 1) & v32;
    v34 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
    v39 = v94;
    v40 = v95;
    (*(v94 + 16))(v20, *(a1 + 48) + *(v94 + 72) * v34, v95);
    sub_1D186155C(*(a1 + 56) + *(v83 + 72) * v34, v12, type metadata accessor for StaticZone);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    v42 = *(v41 + 48);
    v43 = *(v39 + 32);
    v25 = v80;
    v43(v80, v20, v40);
    sub_1D18614F4(v12, &v25[v42], type metadata accessor for StaticZone);
    (*(*(v41 - 8) + 56))(v25, 0, 1, v41);
LABEL_18:
    v44 = v78;
    sub_1D1741A90(v25, v78, &qword_1EC645520, &qword_1D1E79AB8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    v46 = 1;
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      return v46;
    }

    v47 = *(v45 + 48);
    v48 = v81;
    v49 = v95;
    (*v82)(v81, v44, v95);
    sub_1D18614F4(v44 + v47, v10, type metadata accessor for StaticZone);
    v50 = v77;
    v51 = sub_1D1742188(v48);
    v53 = v52;
    v89 = *v93;
    v89(v48, v49);
    if ((v53 & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_1D186155C(*(v50 + 56) + *(v83 + 72) * v51, v86, type metadata accessor for StaticZone);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_35;
    }

    v54 = *(v84 + 20);
    v55 = (v86 + v54);
    result = *(v86 + v54);
    v56 = *(v86 + v54 + 8);
    v57 = &v85[v54];
    if (*v55 != *v57 || v56 != *(v57 + 1))
    {
      result = sub_1D1E6904C();
      if ((result & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v58 = *(v84 + 24);
    v59 = *(v86 + v58);
    v60 = *&v85[v58];
    v61 = *(v59 + 16);
    if (v61 != *(v60 + 16))
    {
LABEL_35:
      sub_1D18615C4(v86, type metadata accessor for StaticZone);
      v10 = v85;
LABEL_36:
      sub_1D18615C4(v10, type metadata accessor for StaticZone);
      return 0;
    }

    if (v61 && v59 != v60)
    {
      v62 = 0;
      v63 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v87 = v60 + v63;
      v88 = v59 + v63;
      while (v62 < *(v59 + 16))
      {
        v64 = v95;
        v65 = *(v94 + 72) * v62;
        v66 = *(v94 + 16);
        v67 = v92;
        result = v66(v92, v88 + v65, v95);
        if (v62 >= *(v60 + 16))
        {
          goto LABEL_41;
        }

        v68 = v87 + v65;
        v69 = v90;
        v66(v90, v68, v64);
        sub_1D1861484(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v70 = sub_1D1E6775C();
        v71 = v89;
        v89(v69, v64);
        result = v71(v67, v64);
        if ((v70 & 1) == 0)
        {
          goto LABEL_35;
        }

        if (v61 == ++v62)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_40;
    }

LABEL_6:
    sub_1D18615C4(v86, type metadata accessor for StaticZone);
    v10 = v85;
    result = sub_1D18615C4(v85, type metadata accessor for StaticZone);
    v12 = v75;
    a1 = v76;
    v20 = v92;
    v32 = v79;
    v25 = v80;
    v33 = v74;
  }

  if (v33 <= v28 + 1)
  {
    v35 = v28 + 1;
  }

  else
  {
    v35 = v33;
  }

  v36 = v35 - 1;
  while (1)
  {
    v37 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v37 >= v33)
    {
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
      (*(*(v72 - 8) + 56))(v25, 1, 1, v72);
      v79 = 0;
      v28 = v36;
      goto LABEL_18;
    }

    v38 = *(v73 + 8 * v37);
    ++v28;
    if (v38)
    {
      v79 = (v38 - 1) & v38;
      v34 = __clz(__rbit64(v38)) | (v37 << 6);
      v28 = v37;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1D18517B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645510, &qword_1D1E79AA8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E79AB0;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticRoom);
    v41 = &qword_1D1E79AB0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticRoom);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645510, &qword_1D1E79AA8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticRoom);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticRoom);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticRoom);
    v56 = static StaticRoom.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticRoom);
    result = sub_1D18615C4(v52, type metadata accessor for StaticRoom);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1851D8C(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for StaticUser();
  v70 = *(v72 - 1);
  v4 = *(v70 + 64);
  v5 = MEMORY[0x1EEE9AC00](v72);
  v73 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v74 = v58 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v64 = v58 - v9;
  v71 = sub_1D1E66A7C();
  v66 = *(v71 - 8);
  v10 = *(v66 + 64);
  v11 = MEMORY[0x1EEE9AC00](v71);
  v65 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645500, &qword_1D1E79A98);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = v58 - v20;
  v69 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v69 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v22 = 0;
  v23 = *(v69 + 64);
  v58[0] = v69 + 64;
  v24 = 1 << *(v69 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v58[1] = v66 + 16;
  v59 = v58 - v20;
  v68 = (v66 + 32);
  v61 = v27;
  v62 = (v66 + 8);
  v60 = v18;
  while (v26)
  {
    v67 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v22 << 6);
LABEL_16:
    v33 = v69;
    v34 = v66;
    (*(v66 + 16))(v63, *(v69 + 48) + *(v66 + 72) * v28, v71);
    v35 = v64;
    sub_1D186155C(*(v33 + 56) + *(v70 + 72) * v28, v64, type metadata accessor for StaticUser);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
    v37 = *(v36 + 48);
    v18 = v60;
    (*(v34 + 32))();
    sub_1D18614F4(v35, &v18[v37], type metadata accessor for StaticUser);
    (*(*(v36 - 8) + 56))(v18, 0, 1, v36);
    v21 = v59;
LABEL_17:
    sub_1D1741A90(v18, v21, &qword_1EC645500, &qword_1D1E79A98);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
    v39 = (*(*(v38 - 8) + 48))(v21, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = v65;
    v43 = v71;
    (*v68)(v65, v21, v71);
    sub_1D18614F4(&v21[v41], v74, type metadata accessor for StaticUser);
    v44 = sub_1D1742188(v42);
    v46 = v45;
    (*v62)(v42, v43);
    if ((v46 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1D186155C(*(a2 + 56) + *(v70 + 72) * v44, v73, type metadata accessor for StaticUser);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || ((v47 = v72[5], v48 = (v73 + v47), v49 = *(v73 + v47), v50 = *(v73 + v47 + 8), v51 = (v74 + v47), *v48 != *v51) || v50 != v51[1]) && (sub_1D1E6904C() & 1) == 0 || (v52 = v72[6], (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0) || *(v73 + v72[7]) != *(v74 + v72[7]))
    {
      sub_1D18615C4(v73, type metadata accessor for StaticUser);
LABEL_30:
      sub_1D18615C4(v74, type metadata accessor for StaticUser);
      return 0;
    }

    v53 = v72[8];
    v54 = *(v73 + v53);
    v55 = v74;
    v56 = *(v74 + v53);
    sub_1D18615C4(v73, type metadata accessor for StaticUser);
    result = sub_1D18615C4(v55, type metadata accessor for StaticUser);
    v27 = v61;
    v26 = v67;
    if (v54 != v56)
    {
      return v40;
    }
  }

  if (v27 <= v22 + 1)
  {
    v29 = v22 + 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
      (*(*(v57 - 8) + 56))(v18, 1, 1, v57);
      v67 = 0;
      v22 = v30;
      goto LABEL_17;
    }

    v32 = *(v58[0] + 8 * v31);
    ++v22;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v22 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1852428(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for StaticHH2Update(0);
  v91 = *(v93 - 1);
  v4 = *(v91 + 64);
  v5 = MEMORY[0x1EEE9AC00](v93);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v75 - v11;
  v92 = sub_1D1E66A7C();
  v87 = *(v92 - 8);
  v12 = *(v87 + 64);
  v13 = MEMORY[0x1EEE9AC00](v92);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F0, &qword_1D1E79A88);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v75 - v22;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v24 = 0;
  v81 = a1;
  v27 = *(a1 + 64);
  v26 = a1 + 64;
  v25 = v27;
  v28 = 1 << *(v26 - 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v75 = (v28 + 63) >> 6;
  v76 = v26;
  v79 = v87 + 16;
  v80 = v20;
  v90 = (v87 + 32);
  v82 = v7;
  v83 = (v87 + 8);
  v88 = &v75 - v22;
  v77 = v10;
  v78 = a2;
  while (v30)
  {
    v89 = (v30 - 1) & v30;
    v32 = __clz(__rbit64(v30)) | (v24 << 6);
LABEL_20:
    v37 = v81;
    v38 = v87;
    (*(v87 + 16))(v84, *(v81 + 48) + *(v87 + 72) * v32, v92);
    v39 = v85;
    sub_1D186155C(*(v37 + 56) + *(v91 + 72) * v32, v85, type metadata accessor for StaticHH2Update);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    v41 = *(v40 + 48);
    v20 = v80;
    (*(v38 + 32))();
    sub_1D18614F4(v39, &v20[v41], type metadata accessor for StaticHH2Update);
    (*(*(v40 - 8) + 56))(v20, 0, 1, v40);
    v10 = v77;
    a2 = v78;
    v23 = v88;
LABEL_21:
    sub_1D1741A90(v20, v23, &qword_1EC6454F0, &qword_1D1E79A88);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    v43 = (*(*(v42 - 8) + 48))(v23, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v42 + 48);
    v46 = v86;
    v47 = v92;
    (*v90)(v86, v23, v92);
    sub_1D18614F4(&v23[v45], v10, type metadata accessor for StaticHH2Update);
    v48 = sub_1D1742188(v46);
    v50 = v49;
    (*v83)(v46, v47);
    if ((v50 & 1) == 0)
    {
      goto LABEL_68;
    }

    sub_1D186155C(*(a2 + 56) + *(v91 + 72) * v48, v7, type metadata accessor for StaticHH2Update);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_67;
    }

    v51 = v93[5];
    v52 = v7[v51];
    v53 = v10[v51];
    if (v52 > 4)
    {
      switch(v52)
      {
        case 5:
          if (v53 != 5)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 6:
          if (v53 != 6)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 7:
          if (v53 != 7)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
      }
    }

    else
    {
      switch(v52)
      {
        case 2:
          if (v53 != 2)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 3:
          if (v53 != 3)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 4:
          if (v53 != 4)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
      }
    }

    if (v53 - 2) < 6 || ((v53 ^ v52))
    {
      goto LABEL_67;
    }

LABEL_46:
    v55 = v93[6];
    v56 = &v7[v55];
    v58 = *&v7[v55];
    v57 = *(v56 + 1);
    v59 = &v10[v55];
    v61 = *v59;
    v60 = *(v59 + 1);
    if (!v57)
    {
      if (v60)
      {
        sub_1D18614CC(*v59, *(v59 + 1));
        v57 = 0;
        goto LABEL_66;
      }

      sub_1D18614E0(v58, 0);
      v62 = v61;
      v63 = 0;
      goto LABEL_56;
    }

    if (v57 == 1)
    {
      if (v60 != 1)
      {
        sub_1D18614CC(*v59, *(v59 + 1));
        v57 = 1;
        goto LABEL_66;
      }

      sub_1D18614E0(v58, 1uLL);
      v62 = v61;
      v63 = 1;
      goto LABEL_56;
    }

    if (v60 < 2)
    {
      sub_1D18614CC(*v59, *(v59 + 1));
      sub_1D18614CC(v58, v57);
LABEL_66:
      sub_1D18614E0(v58, v57);
      sub_1D18614E0(v61, v60);
      v7 = v82;
LABEL_67:
      sub_1D18615C4(v7, type metadata accessor for StaticHH2Update);
LABEL_68:
      sub_1D18615C4(v10, type metadata accessor for StaticHH2Update);
      return 0;
    }

    if (v58 == v61 && v57 == v60)
    {
      sub_1D18614CC(v58, *(v56 + 1));
      sub_1D18614CC(v58, v57);
      sub_1D18614E0(v58, v57);
      v62 = v58;
      v63 = v57;
LABEL_56:
      sub_1D18614E0(v62, v63);
      v7 = v82;
      goto LABEL_57;
    }

    v71 = *(v56 + 1);
    v72 = *v59;
    v73 = *(v59 + 1);
    v74 = sub_1D1E6904C();
    sub_1D18614CC(v61, v60);
    sub_1D18614CC(v58, v57);
    sub_1D18614E0(v58, v57);
    sub_1D18614E0(v61, v60);
    v7 = v82;
    if ((v74 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_57:
    v64 = v93;
    v65 = &v7[v93[7]];
    v66 = *v65;
    v67 = v65[8];
    sub_1D18615C4(v7, type metadata accessor for StaticHH2Update);
    v68 = &v10[v64[7]];
    v69 = *v68;
    v70 = v68[8];
    result = sub_1D18615C4(v10, type metadata accessor for StaticHH2Update);
    if (v67)
    {
      v23 = v88;
      v30 = v89;
      if ((v70 & 1) == 0)
      {
        return v44;
      }
    }

    else
    {
      if (v66 == v69)
      {
        v31 = v70;
      }

      else
      {
        v31 = 1;
      }

      v23 = v88;
      v30 = v89;
      if (v31)
      {
        return v44;
      }
    }
  }

  if (v75 <= v24 + 1)
  {
    v33 = v24 + 1;
  }

  else
  {
    v33 = v75;
  }

  v34 = v33 - 1;
  while (1)
  {
    v35 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v35 >= v75)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
      (*(*(v54 - 8) + 56))(v20, 1, 1, v54);
      v89 = 0;
      v24 = v34;
      goto LABEL_21;
    }

    v36 = *(v76 + 8 * v35);
    ++v24;
    if (v36)
    {
      v89 = (v36 - 1) & v36;
      v32 = __clz(__rbit64(v36)) | (v35 << 6);
      v24 = v35;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1852C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident();
  v5 = *(v4 - 8);
  v90 = v4;
  v91 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v74 - v13;
  v92 = sub_1D1E66A7C();
  v88 = *(v92 - 8);
  v14 = *(v88 + 64);
  v15 = MEMORY[0x1EEE9AC00](v92);
  v86 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E0, &qword_1D1E79A78);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  result = MEMORY[0x1EEE9AC00](v20);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v82 = &v74 - v22;
  v83 = v23;
  v24 = 0;
  v25 = *(a1 + 64);
  v76 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v75 = (v26 + 63) >> 6;
  v79 = v88 + 16;
  v80 = a2;
  v89 = (v88 + 32);
  v81 = (v88 + 8);
  v77 = a1;
  v78 = v9;
  while (v28)
  {
    v87 = (v28 - 1) & v28;
    v29 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_16:
    v35 = v88;
    v36 = v84;
    v37 = v92;
    (*(v88 + 16))(v84, *(a1 + 48) + *(v88 + 72) * v29, v92);
    v38 = v85;
    sub_1D186155C(*(a1 + 56) + *(v91 + 72) * v29, v85, type metadata accessor for StaticResident);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    v40 = *(v39 + 48);
    v41 = *(v35 + 32);
    v32 = v83;
    v41(v83, v36, v37);
    sub_1D18614F4(v38, v32 + v40, type metadata accessor for StaticResident);
    (*(*(v39 - 8) + 56))(v32, 0, 1, v39);
    v9 = v78;
    a2 = v80;
LABEL_17:
    v42 = v32;
    v43 = v82;
    sub_1D1741A90(v42, v82, &qword_1EC6454E0, &qword_1D1E79A78);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v86;
    v49 = v92;
    (*v89)(v86, v43, v92);
    sub_1D18614F4(v43 + v47, v12, type metadata accessor for StaticResident);
    v50 = sub_1D1742188(v48);
    v52 = v51;
    (*v81)(v48, v49);
    if ((v52 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_1D186155C(*(a2 + 56) + *(v91 + 72) * v50, v9, type metadata accessor for StaticResident);
    v53 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v54 = v90;
    if ((v53 & 1) == 0 || ((v55 = v90[5], v56 = *&v9[v55], v57 = *&v9[v55 + 8], v58 = &v12[v55], v56 != *v58) || v57 != *(v58 + 1)) && (sub_1D1E6904C() & 1) == 0)
    {
LABEL_37:
      sub_1D18615C4(v9, type metadata accessor for StaticResident);
LABEL_38:
      sub_1D18615C4(v12, type metadata accessor for StaticResident);
      return 0;
    }

    v59 = v54[6];
    v60 = &v9[v59];
    v61 = *&v9[v59 + 8];
    v62 = &v12[v59];
    v63 = *(v62 + 1);
    if (v61)
    {
      if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v63)
    {
      goto LABEL_37;
    }

    if ((sub_1D17B30EC(*&v9[v54[7]], *&v12[v54[7]]) & 1) == 0)
    {
      goto LABEL_37;
    }

    if ((sub_1D17B30EC(*&v9[v54[8]], *&v12[v54[8]]) & 1) == 0)
    {
      goto LABEL_37;
    }

    v64 = v54[9];
    v65 = v9[v64 + 8];
    v95 = *&v9[v64];
    v96 = v65;
    v66 = &v12[v64];
    v68 = v66[8];
    v93 = *v66;
    v67 = v93;
    v94 = v68;
    sub_1D1771B4C(v95, v65);
    v69 = v68;
    v70 = v90;
    sub_1D1771B4C(v67, v69);
    LOBYTE(v67) = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v95, &v93);
    sub_1D1771B5C(v93, v94);
    sub_1D1771B5C(v95, v96);
    if ((v67 & 1) == 0)
    {
      goto LABEL_37;
    }

    v71 = v70[10];
    v72 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D18615C4(v9, type metadata accessor for StaticResident);
    result = sub_1D18615C4(v12, type metadata accessor for StaticResident);
    a1 = v77;
    v28 = v87;
    if ((v72 & 1) == 0)
    {
      return v46;
    }
  }

  if (v75 <= v24 + 1)
  {
    v30 = v24 + 1;
  }

  else
  {
    v30 = v75;
  }

  v31 = v30 - 1;
  v32 = v83;
  while (1)
  {
    v33 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v33 >= v75)
    {
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
      (*(*(v73 - 8) + 56))(v32, 1, 1, v73);
      v87 = 0;
      v24 = v31;
      goto LABEL_17;
    }

    v34 = *(v76 + 8 * v33);
    ++v24;
    if (v34)
    {
      v87 = (v34 - 1) & v34;
      v29 = __clz(__rbit64(v34)) | (v33 << 6);
      v24 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18533F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHome();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645440, &qword_1D1E799D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E799D8;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticHome);
    v41 = &qword_1D1E799D8;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645448, &qword_1D1E799D8);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticHome);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645440, &qword_1D1E799D0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645448, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticHome);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticHome);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticHome);
    v56 = _s13HomeDataModel06StaticA0V2eeoiySbAC_ACtFZ_0(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticHome);
    result = sub_1D18615C4(v52, type metadata accessor for StaticHome);
    v20 = v68;
    v27 = v70;
    if (!v56)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645448, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18539C8(uint64_t a1, uint64_t a2)
{
  v60 = sub_1D1E66A7C();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644288, &qword_1D1E755F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v50 - v13;
  v14 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v50[0] = v16;
  v50[1] = v55 + 16;
  v58 = (v55 + 32);
  v52 = (v55 + 8);
  while (v20)
  {
    v59 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v27 = v51;
    v28 = v54;
    v29 = v55;
    v30 = v60;
    (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v22, v60);
    v31 = *(*(v27 + 56) + 8 * v22);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v35 = v57;
    v34(v57, v28, v30);
    *(v35 + v33) = v31;
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

LABEL_17:
    v36 = v53;
    sub_1D1741A90(v35, v53, &qword_1EC644288, &qword_1D1E755F8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v56;
    v42 = v60;
    (*v58)(v56, v36, v60);
    v43 = *(v36 + v40);
    v44 = sub_1D1742188(v41);
    LOBYTE(v40) = v45;
    (*v52)(v41, v42);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v46 = *(*(a2 + 56) + 8 * v44);

    v48 = sub_1D1853E54(v47, v43);

    v20 = v59;
    if ((v48 & 1) == 0)
    {
      return v39;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v35 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v59 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v26 = *(v50[0] + 8 * v25);
    ++v14;
    if (v26)
    {
      v59 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1853E54(uint64_t a1, uint64_t a2)
{
  v63 = sub_1D1E66A7C();
  v58 = *(v63 - 8);
  v4 = *(v58 + 64);
  v5 = MEMORY[0x1EEE9AC00](v63);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644280, &qword_1D1E755F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = v13;
  v15 = 0;
  v53 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v51 = v17;
  v52 = v58 + 16;
  v60 = &v50 - v12;
  v61 = (v58 + 32);
  v54 = (v58 + 8);
  while (v21)
  {
    v62 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
    v24 = v56;
LABEL_16:
    v29 = v53;
    v30 = v57;
    v31 = v58;
    v32 = v63;
    (*(v58 + 16))(v57, *(v53 + 48) + *(v58 + 72) * v23, v63);
    v33 = *(*(v29 + 56) + 8 * v23);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
    v35 = *(v34 + 48);
    (*(v31 + 32))(v24, v30, v32);
    *(v24 + v35) = v33;
    (*(*(v34 - 8) + 56))(v24, 0, 1, v34);

    v14 = v60;
LABEL_17:
    sub_1D1741A90(v24, v14, &qword_1EC644280, &qword_1D1E755F0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
    v37 = (*(*(v36 - 8) + 48))(v14, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v40 = v59;
    v41 = v63;
    (*v61)(v59, v14, v63);
    v42 = *&v14[v39];
    v43 = v55;
    v44 = sub_1D1742188(v40);
    v46 = v45;
    (*v54)(v40, v41);
    if ((v46 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for CameraController();
    v47 = *(*(v43 + 56) + 8 * v44);

    v48 = sub_1D1E684FC();

    v14 = v60;
    v21 = v62;
    if ((v48 & 1) == 0)
    {
      return v38;
    }
  }

  if (v22 <= v15 + 1)
  {
    v25 = v15 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v24 = v56;
  while (1)
  {
    v27 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
      v62 = 0;
      v15 = v26;
      goto LABEL_17;
    }

    v28 = *(v51 + 8 * v27);
    ++v15;
    if (v28)
    {
      v62 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v15 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18542F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeState();
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v61 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v61 - v12;
  v78 = sub_1D1E66A7C();
  v71 = *(v78 - 8);
  v13 = *(v71 + 64);
  v14 = MEMORY[0x1EEE9AC00](v78);
  v72 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645580, &qword_1D1E79B28);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v19);
  v73 = &v61 - v23;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v65 = v8;
  v66 = v4;
  v24 = 0;
  v64 = a1;
  v27 = *(a1 + 64);
  v26 = a1 + 64;
  v25 = v27;
  v28 = 1 << *(v26 - 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v61 = (v28 + 63) >> 6;
  v62 = v26;
  v63 = v71 + 16;
  v76 = (v71 + 32);
  v67 = (v71 + 8);
  v68 = v11;
  v74 = v21;
  while (v30)
  {
    v75 = (v30 - 1) & v30;
    v31 = __clz(__rbit64(v30)) | (v24 << 6);
LABEL_16:
    v37 = v64;
    v38 = v71;
    v39 = v69;
    v40 = v78;
    (*(v71 + 16))(v69, *(v64 + 48) + *(v71 + 72) * v31, v78);
    v41 = v70;
    sub_1D186155C(*(v37 + 56) + *(v77 + 72) * v31, v70, type metadata accessor for HomeState);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645588, &qword_1D1E79B30);
    v43 = *(v42 + 48);
    v44 = *(v38 + 32);
    v21 = v74;
    v44(v74, v39, v40);
    sub_1D18614F4(v41, &v21[v43], type metadata accessor for HomeState);
    (*(*(v42 - 8) + 56))(v21, 0, 1, v42);
    v34 = v73;
LABEL_17:
    sub_1D1741A90(v21, v34, &qword_1EC645580, &qword_1D1E79B28);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645588, &qword_1D1E79B30);
    v46 = (*(*(v45 - 8) + 48))(v34, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v48 = *(v45 + 48);
    v49 = v72;
    v50 = v78;
    (*v76)(v72, v34, v78);
    v51 = v34 + v48;
    v52 = v68;
    sub_1D18614F4(v51, v68, type metadata accessor for HomeState);
    v53 = sub_1D1742188(v49);
    v55 = v54;
    (*v67)(v49, v50);
    if ((v55 & 1) == 0)
    {
      goto LABEL_26;
    }

    v56 = v65;
    sub_1D186155C(*(a2 + 56) + *(v77 + 72) * v53, v65, type metadata accessor for HomeState);
    v57 = _s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(v56, v52);
    v58 = v66;
    if ((v57 & 1) == 0 || (sub_1D184A6D8(*(v56 + *(v66 + 20)), *(v52 + *(v66 + 20))) & 1) == 0)
    {
      sub_1D18615C4(v56, type metadata accessor for HomeState);
LABEL_26:
      sub_1D18615C4(v52, type metadata accessor for HomeState);
      return 0;
    }

    v59 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0((v56 + *(v58 + 24)), (v52 + *(v58 + 24)));
    sub_1D18615C4(v56, type metadata accessor for HomeState);
    result = sub_1D18615C4(v52, type metadata accessor for HomeState);
    v21 = v74;
    v30 = v75;
    if (!v59)
    {
      return v47;
    }
  }

  if (v61 <= v24 + 1)
  {
    v32 = v24 + 1;
  }

  else
  {
    v32 = v61;
  }

  v33 = v32 - 1;
  v34 = v73;
  while (1)
  {
    v35 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v35 >= v61)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645588, &qword_1D1E79B30);
      (*(*(v60 - 8) + 56))(v21, 1, 1, v60);
      v75 = 0;
      v24 = v33;
      goto LABEL_17;
    }

    v36 = *(v62 + 8 * v35);
    ++v24;
    if (v36)
    {
      v75 = (v36 - 1) & v36;
      v31 = __clz(__rbit64(v36)) | (v35 << 6);
      v24 = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1854940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v71 = (&v58 - v9);
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645430, &qword_1D1E799C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E799C8;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StateSnapshot);
    v41 = &qword_1D1E799C8;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StateSnapshot);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645430, &qword_1D1E799C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StateSnapshot);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StateSnapshot);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StateSnapshot);
    v56 = _s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StateSnapshot);
    result = sub_1D18615C4(v52, type metadata accessor for StateSnapshot);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1854F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterStateSnapshot();
  v84 = *(v4 - 1);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v68 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v68 - v12;
  v85 = sub_1D1E66A7C();
  v80 = *(v85 - 8);
  v13 = *(v80 + 64);
  v14 = MEMORY[0x1EEE9AC00](v85);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20);
  v26 = &v68 - v24;
  if (a1 == a2)
  {
    return 1;
  }

  v27 = *(v25 + 16);
  v77 = a2;
  if (v27 != *(a2 + 16))
  {
    return 0;
  }

  v28 = 0;
  v29 = *(v25 + 64);
  v68 = v25 + 64;
  v30 = 1 << *(v25 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v71 = v80 + 16;
  v72 = v22;
  v82 = &v68 - v24;
  v83 = (v80 + 32);
  v75 = v8;
  v76 = (v80 + 8);
  v73 = v16;
  v74 = v25;
  v69 = v33;
  v70 = v4;
  while (v32)
  {
    v35 = v11;
    v81 = (v32 - 1) & v32;
    v36 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_20:
    v41 = v80;
    v42 = v25;
    (*(v80 + 16))(v78, *(v25 + 48) + *(v80 + 72) * v36, v85);
    v43 = v79;
    sub_1D186155C(*(v42 + 56) + *(v84 + 72) * v36, v79, type metadata accessor for MatterStateSnapshot);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v45 = *(v44 + 48);
    v22 = v72;
    (*(v41 + 32))();
    sub_1D18614F4(v43, &v22[v45], type metadata accessor for MatterStateSnapshot);
    (*(*(v44 - 8) + 56))(v22, 0, 1, v44);
    v11 = v35;
    v16 = v73;
    v26 = v82;
LABEL_21:
    sub_1D1741A90(v22, v26, &qword_1EC645410, &unk_1D1E799A0);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v34 = 1;
    if ((*(*(v46 - 8) + 48))(v26, 1, v46) == 1)
    {
      return v34;
    }

    v47 = *(v46 + 48);
    v48 = v85;
    (*v83)(v16, v26, v85);
    sub_1D18614F4(&v26[v47], v11, type metadata accessor for MatterStateSnapshot);
    v49 = v77;
    v50 = sub_1D1742188(v16);
    v52 = v51;
    (*v76)(v16, v48);
    if ((v52 & 1) == 0)
    {
      goto LABEL_51;
    }

    v53 = v75;
    sub_1D186155C(*(v49 + 56) + *(v84 + 72) * v50, v75, type metadata accessor for MatterStateSnapshot);
    if ((*v53 != *v11 || v53[1] != v11[1]) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_50;
    }

    v54 = v4[5];
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D184A234(*(v53 + v4[6]), *(v11 + v4[6])) & 1) == 0 || (sub_1D184A6D8(*(v53 + v4[7]), *(v11 + v4[7])) & 1) == 0)
    {
      goto LABEL_50;
    }

    v55 = v74;
    v56 = v4[8];
    v57 = *(v53 + v56);
    v58 = *(v53 + v56 + 8);
    v59 = v11 + v56;
    v60 = *v59;
    v61 = v59[8];
    if (v58 == 255)
    {
      if (v61 != 255)
      {
LABEL_46:
        sub_1D186145C(v57, v58);
        sub_1D186145C(v60, v61);
        sub_1D1861470(v57, v58);
        v66 = v60;
        v67 = v61;
        goto LABEL_49;
      }

      LOBYTE(v58) = -1;
      sub_1D186145C(v57, 255);
      sub_1D186145C(v60, 255);
    }

    else
    {
      if (v61 == 255)
      {
        goto LABEL_46;
      }

      if (v58 <= 1)
      {
        if (!v58)
        {
          if (v59[8])
          {
            goto LABEL_47;
          }

          sub_1D186145C(v57, 0);
          sub_1D186145C(v60, 0);
          sub_1D186145C(v60, 0);
          sub_1D186145C(v57, 0);
          v62 = sub_1D17A6E98(v57, v60);
          sub_1D1861470(v60, 0);
          goto LABEL_8;
        }

        if (v61 != 1)
        {
LABEL_47:
          sub_1D186145C(v57, v58);
          sub_1D186145C(v60, v61);
          sub_1D186145C(v57, v58);

LABEL_48:
          v66 = v57;
          v67 = v58;
LABEL_49:
          sub_1D1861470(v66, v67);
LABEL_50:
          sub_1D18615C4(v53, type metadata accessor for MatterStateSnapshot);
LABEL_51:
          sub_1D18615C4(v11, type metadata accessor for MatterStateSnapshot);
          return 0;
        }

        LOBYTE(v62) = sub_1D17A7DC0(v57, *v59);
        sub_1D186145C(v57, 1);
        sub_1D186145C(v60, 1);
        v63 = v57;
        v64 = 1;
LABEL_7:
        sub_1D186145C(v63, v64);
LABEL_8:

        if ((v62 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_9;
      }

      if (v58 == 2)
      {
        if (v61 != 2)
        {
          goto LABEL_47;
        }

        LOBYTE(v62) = sub_1D17A7F14(v57, *v59);
        sub_1D186145C(v57, 2);
        sub_1D186145C(v60, 2);
        v63 = v57;
        v64 = 2;
        goto LABEL_7;
      }

      sub_1D186145C(v57, 3);
      if (v61 != 3 || v60)
      {
        sub_1D186145C(v60, v61);

        v66 = v57;
        v67 = 3;
        goto LABEL_49;
      }

      sub_1D186145C(0, 3);
    }

LABEL_9:
    sub_1D1861470(v57, v58);
    sub_1D18615C4(v53, type metadata accessor for MatterStateSnapshot);
    result = sub_1D18615C4(v11, type metadata accessor for MatterStateSnapshot);
    v25 = v55;
    v33 = v69;
    v4 = v70;
    v32 = v81;
    v26 = v82;
  }

  if (v33 <= v28 + 1)
  {
    v37 = v28 + 1;
  }

  else
  {
    v37 = v33;
  }

  v38 = v37 - 1;
  while (1)
  {
    v39 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v39 >= v33)
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      (*(*(v65 - 8) + 56))(v22, 1, 1, v65);
      v81 = 0;
      v28 = v38;
      goto LABEL_21;
    }

    v40 = *(v68 + 8 * v39);
    ++v28;
    if (v40)
    {
      v35 = v11;
      v81 = (v40 - 1) & v40;
      v36 = __clz(__rbit64(v40)) | (v39 << 6);
      v28 = v39;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t CoordinationSnapshot.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856F74(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1855824()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856F74(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1855874()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856F74(v3, v1);
  return sub_1D1E6926C();
}

uint64_t CoordinationSnapshot.UpdateType.description.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v8 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D186155C(v1, v10, type metadata accessor for CoordinationSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 7105601;
      }

      v19 = *v10;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D1E6884C();
      if (v19)
      {
        v20 = 0x676E6973756170;
      }

      else
      {
        v20 = 0x676E696D75736572;
      }

      if (v19)
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE800000000000000;
      }

      MEMORY[0x1D3890F70](v20, v21);

      MEMORY[0x1D3890F70](0x206D616572747320, 0xEF73657461647075);
      return v32;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v15 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48)];
      (*(v3 + 32))(v6, v10, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D1E6884C();

      v16 = 0x6120656C676E6953;
      v17 = 1836212588;
    }

    else
    {
      v15 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48)];
      (*(v3 + 32))(v6, v10, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D1E6884C();

      v16 = 0x7420656C676E6953;
      v17 = 1919249769;
    }

    v32 = v16;
    v33 = v17 | 0xEE00203A00000000;
    v26 = type metadata accessor for StaticTimer();
LABEL_25:
    v27 = MEMORY[0x1D3891260](v15, v26);
    v29 = v28;

    MEMORY[0x1D3890F70](v27, v29);

    MEMORY[0x1D3890F70](0x203A726F6620, 0xE600000000000000);
    sub_1D1861484(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v30 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v30);

    v25 = v32;
    (*(v3 + 8))(v6, v2);
    return v25;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48)];
      (*(v3 + 32))(v6, v10, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D1E6884C();

      v18 = 0x3A6D72616C61;
    }

    else
    {
      v15 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48)];
      (*(v3 + 32))(v6, v10, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D1E6884C();

      v18 = 0x3A72656D6974;
    }

    v32 = v18 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    v33 = 0xE700000000000000;
    v26 = type metadata accessor for StaticAlarm();
    goto LABEL_25;
  }

  v12 = *v10;
  if (EnumCaseMultiPayload)
  {
    v13 = 0x6F4665766F6D6572;
    v14 = 0xEB00000000203A72;
  }

  else
  {
    v13 = 0x3A726F4661746164;
    v14 = 0xE900000000000020;
  }

  v32 = v13;
  v33 = v14;
  v22 = MEMORY[0x1D3891260](v12, v2);
  v24 = v23;

  MEMORY[0x1D3890F70](v22, v24);

  return v32;
}

unint64_t sub_1D1855DE0()
{
  result = sub_1D18D9138(MEMORY[0x1E69E7CC0]);
  qword_1EE081410 = result;
  return result;
}

uint64_t sub_1D1855E28(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_35;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_11:
      v13 = __clz(__rbit64(v7)) | (v11 << 6);
      v14 = *(*(v2 + 48) + 8 * v13);
      v15 = *(v2 + 56) + 16 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v14;
      sub_1D1741AF8(v16, v17);
      if (!v18)
      {
LABEL_35:

        return MEMORY[0x1D3892850](v10);
      }

      v42 = a1[2];
      v43 = a1[3];
      v44 = *(a1 + 8);
      v40 = *a1;
      v41 = a1[1];
      sub_1D1E6850C();

      if (v17 <= 1)
      {
        if (!v17)
        {
          MEMORY[0x1D3892850](0);
          sub_1D1E6922C();
          goto LABEL_5;
        }

        v23 = 1;
        goto LABEL_23;
      }

      if (v17 == 2)
      {
        v23 = 2;
LABEL_23:
        MEMORY[0x1D3892850](v23);
        MEMORY[0x1D3892850](v16);
        goto LABEL_5;
      }

      if (v17 != 3)
      {
        MEMORY[0x1D3892850](4);
        MEMORY[0x1D3892850](*(v16 + 16));
        v24 = v16;
        v25 = *(v16 + 16);
        if (!v25)
        {
          sub_1D1757AE8(v24, 4u);
          goto LABEL_5;
        }

        v33 = v10;
        v34 = v8;
        v35 = v4;
        v36 = v2;
        v37 = a1;
        v39 = v24;
        v26 = (v24 + 52);
        while (2)
        {
          v27 = *(v26 - 5);
          v28 = *(v26 - 3);
          v29 = *(v26 - 8);
          v30 = *(v26 - 1);
          v31 = *v26;
          v32 = *(v26 - 16);
          sub_1D1E6924C();
          sub_1D1E6922C();
          if (v29 == 1)
          {
            sub_1D1E6922C();
            if (v31)
            {
LABEL_32:
              sub_1D1E6922C();
LABEL_27:
              v26 += 24;
              if (!--v25)
              {
                sub_1D1757AE8(v39, 4u);
                v2 = v36;
                a1 = v37;
                v8 = v34;
                v4 = v35;
                v10 = v33;
                goto LABEL_5;
              }

              continue;
            }
          }

          else
          {
            sub_1D1E6922C();
            sub_1D1E6924C();
            if (v31)
            {
              goto LABEL_32;
            }
          }

          break;
        }

        sub_1D1E6922C();
        sub_1D1E6924C();
        goto LABEL_27;
      }

      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](*(v16 + 16));
      v19 = v16;
      v20 = *(v16 + 16);
      if (v20)
      {
        v38 = v19;
        v21 = (v19 + 32);
        do
        {
          v22 = *v21++;
          sub_1D1E6924C();
          --v20;
        }

        while (v20);
        v19 = v38;
      }

      sub_1D1757AE8(v19, 3u);
LABEL_5:
      v7 &= v7 - 1;
      result = sub_1D1E6926C();
      v10 ^= result;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18560F4(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v37 = v8;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_35;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_11:
      v13 = __clz(__rbit64(v7)) | (v11 << 6);
      v14 = (*(v2 + 48) + 8 * v13);
      v15 = *v14;
      v16 = *(v14 + 4);
      v17 = *(v2 + 56) + 16 * v13;
      v18 = *(v17 + 8);
      v38 = *v17;
      sub_1D1741AF8(*v17, *(v17 + 8));
      if (v18 == 255)
      {
LABEL_35:

        return MEMORY[0x1D3892850](v10);
      }

      v41 = a1[2];
      v42 = a1[3];
      v43 = *(a1 + 8);
      v39 = *a1;
      v40 = a1[1];
      sub_1D1E6924C();
      v19 = dword_1D1E79BBC[v16];
      sub_1D1E6924C();
      if (v18 <= 1)
      {
        if (!v18)
        {
          MEMORY[0x1D3892850](0);
          sub_1D1E6922C();
          goto LABEL_5;
        }

        v24 = 1;
        goto LABEL_23;
      }

      if (v18 == 2)
      {
        v24 = 2;
LABEL_23:
        MEMORY[0x1D3892850](v24);
        MEMORY[0x1D3892850](v38);
        goto LABEL_5;
      }

      if (v18 != 3)
      {
        MEMORY[0x1D3892850](4);
        MEMORY[0x1D3892850](*(v38 + 16));
        v25 = *(v38 + 16);
        if (!v25)
        {
          sub_1D1757AE8(v38, 4u);
          goto LABEL_5;
        }

        v33 = v10;
        v34 = v4;
        v35 = v2;
        v36 = a1;
        v26 = (v38 + 52);
        while (2)
        {
          v27 = *(v26 - 5);
          v28 = *(v26 - 3);
          v29 = *(v26 - 8);
          v30 = *(v26 - 1);
          v31 = *v26;
          v32 = *(v26 - 16);
          sub_1D1E6924C();
          sub_1D1E6922C();
          if (v29 == 1)
          {
            sub_1D1E6922C();
            if (v31)
            {
LABEL_32:
              sub_1D1E6922C();
LABEL_27:
              v26 += 24;
              if (!--v25)
              {
                sub_1D1757AE8(v38, 4u);
                v2 = v35;
                a1 = v36;
                v10 = v33;
                v4 = v34;
                goto LABEL_5;
              }

              continue;
            }
          }

          else
          {
            sub_1D1E6922C();
            sub_1D1E6924C();
            if (v31)
            {
              goto LABEL_32;
            }
          }

          break;
        }

        sub_1D1E6922C();
        sub_1D1E6924C();
        goto LABEL_27;
      }

      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](*(v38 + 16));
      v20 = v38;
      v21 = *(v38 + 16);
      if (v21)
      {
        v22 = (v38 + 32);
        do
        {
          v23 = *v22++;
          sub_1D1E6924C();
          --v21;
        }

        while (v21);
        v20 = v38;
      }

      sub_1D1757AE8(v20, 3u);
LABEL_5:
      v7 &= v7 - 1;
      result = sub_1D1E6926C();
      v10 ^= result;
      v8 = v37;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18563E0(__int128 *a1, uint64_t a2)
{
  v76 = a1;
  v77 = type metadata accessor for StaticCharacteristic();
  v70 = *(v77 - 8);
  v3 = *(v70 + 64);
  v4 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645540, &unk_1D1E96BA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - v12;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v68 = (v15 + 63) >> 6;
  v71 = a2;

  v19 = 0;
  v20 = 0;
  v72 = v11;
  v73 = v13;
  for (i = a2 + 64; ; v14 = i)
  {
    v78 = v19;
    if (!v17)
    {
      break;
    }

    v21 = v20;
LABEL_17:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    v26 = *(*(v71 + 48) + v25);
    v27 = v69;
    sub_1D186155C(*(v71 + 56) + *(v70 + 72) * v25, v69, type metadata accessor for StaticCharacteristic);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
    v29 = *(v28 + 48);
    *v11 = v26;
    sub_1D18614F4(v27, &v11[v29], type metadata accessor for StaticCharacteristic);
    (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
LABEL_18:
    sub_1D1741A90(v11, v13, &qword_1EC645540, &unk_1D1E96BA0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
    if ((*(*(v30 - 8) + 48))(v13, 1, v30) == 1)
    {

      return MEMORY[0x1D3892850](v78);
    }

    v31 = *(v30 + 48);
    v32 = *v13;
    v33 = v74;
    sub_1D18614F4(&v13[v31], v74, type metadata accessor for StaticCharacteristic);
    v34 = v76[3];
    v83 = v76[2];
    v84 = v34;
    v85 = *(v76 + 8);
    v35 = v76[1];
    v81 = *v76;
    v82 = v35;
    LOBYTE(v79) = v32;
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    sub_1D1E66A7C();
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    v36 = v77;
    LOBYTE(v79) = *(v33 + *(v77 + 20));
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    v37 = v33 + v36[6];
    v38 = *(v37 + 16);
    v79 = *v37;
    v80 = v38;
    CharacteristicKind.Value.hash(into:)();
    v39 = v36[7];
    sub_1D1E669FC();
    sub_1D1861484(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    v40 = v33 + v36[8];
    v41 = *v40;
    if (*(v40 + 24) > 1u)
    {
      v43 = *(v40 + 8);
      v44 = *(v40 + 16);
      if (*(v40 + 24) == 2)
      {
        MEMORY[0x1D3892850](3);
        MEMORY[0x1D3892850](v41);
        sub_1D1E678EC();
        goto LABEL_27;
      }

      if (v44 | v43 | v41)
      {
        if (v41 != 1 || v44 | v43)
        {
          v45 = 5;
        }

        else
        {
          v45 = 4;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      if (*(v40 + 24))
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      MEMORY[0x1D3892850](v42);
      v45 = v41 & 1;
    }

    MEMORY[0x1D3892850](v45);
LABEL_27:
    v46 = v77;
    MEMORY[0x1D3892850](*(v33 + *(v77 + 36)));
    v47 = v33 + *(v46 + 40);
    sub_1D1E676EC();
    v48 = (v33 + *(v46 + 44));
    v49 = v48[3];
    if (v49 >> 8 == 0xFFFFFFFF)
    {
      sub_1D1E6922C();
      v11 = v72;
LABEL_5:
      v13 = v73;
      goto LABEL_6;
    }

    v51 = *v48;
    v50 = v48[1];
    v52 = v48[2];
    v53 = v48[4];
    sub_1D1E6922C();
    v54 = v49 >> 62;
    if ((v49 >> 62) > 1)
    {
      v11 = v72;
      if (v54 == 2)
      {
        MEMORY[0x1D3892850](2);
        v59 = v51;
      }

      else
      {
        v59 = 3;
      }

      MEMORY[0x1D3892850](v59);
      goto LABEL_5;
    }

    if (v54)
    {
      MEMORY[0x1D3892850](1);
      if ((v51 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v56 = v51;
      }

      else
      {
        v56 = 0;
      }

      MEMORY[0x1D3892890](v56);
      if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v50;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1D3892890](v57);
      if ((v52 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v58 = v52;
      }

      else
      {
        v58 = 0;
      }

      MEMORY[0x1D3892890](v58);
      if (v49 == 8)
      {
        sub_1D1E6922C();
        v11 = v72;
        v13 = v73;
        if (!v53)
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_1D1E6922C();
        v13 = v73;
        v11 = v72;
        sub_1D1E678EC();

        if (!v53)
        {
LABEL_70:
          sub_1D1E6922C();
          goto LABEL_6;
        }
      }

      sub_1D1E6922C();
      v63 = *(v53 + 16);
      MEMORY[0x1D3892850](v63);
      if (v63)
      {
        v64 = (v53 + 32);
        do
        {
          v65 = *v64++;
          v66 = v65;
          if (v65 == 0.0)
          {
            v66 = 0.0;
          }

          MEMORY[0x1D3892890](*&v66);
          --v63;
        }

        while (v63);
      }
    }

    else
    {
      MEMORY[0x1D3892850](0);
      MEMORY[0x1D3892850](v51);
      MEMORY[0x1D3892850](v50);
      MEMORY[0x1D3892850](v52);
      if (v49 == 8)
      {
        sub_1D1E6922C();
        v11 = v72;
        v13 = v73;
        if (!v53)
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_1D1E6922C();
        v13 = v73;
        v11 = v72;
        sub_1D1E678EC();

        if (!v53)
        {
          goto LABEL_70;
        }
      }

      sub_1D1E6922C();
      MEMORY[0x1D3892850](*(v53 + 16));
      v60 = *(v53 + 16);
      if (v60)
      {
        v61 = (v53 + 32);
        do
        {
          v62 = *v61++;
          MEMORY[0x1D3892850](v62);
          --v60;
        }

        while (v60);
      }
    }

LABEL_6:
    sub_1D18615C4(v33, type metadata accessor for StaticCharacteristic);
    result = sub_1D1E6926C();
    v19 = result ^ v78;
  }

  if (v68 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v68;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v68)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
      (*(*(v55 - 8) + 56))(v11, 1, 1, v55);
      v17 = 0;
      v20 = v23;
      goto LABEL_18;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1856E34(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = *(*(a2 + 56) + 8 * v13);
    v15 = *(*(a2 + 48) + 2 * v13);
    v7 &= v7 - 1;
    v16 = *(a1 + 48);
    v18[2] = *(a1 + 32);
    v18[3] = v16;
    v19 = *(a1 + 64);
    v17 = *(a1 + 16);
    v18[0] = *a1;
    v18[1] = v17;
    sub_1D1E6923C();

    sub_1D18560F4(v18, v14);

    result = sub_1D1E6926C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1D3892850](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1856F74(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v67 = sub_1D1E66A7C();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v67);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455D8, &qword_1D1E79B88);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v53 - v13;
  v14 = *(a2 + 64);
  v63 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v54 = (v15 + 63) >> 6;
  v55 = v3 + 16;
  v66 = (v3 + 32);
  v58 = v3;
  v59 = a2;
  v60 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v56 = v12;
  while (1)
  {
    v68 = v19;
    if (!v17)
    {
      break;
    }

    v23 = v20;
LABEL_16:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v28 = v27 | (v23 << 6);
    v30 = v58;
    v29 = v59;
    v31 = v57;
    v32 = v67;
    (*(v58 + 16))(v57, *(v59 + 48) + *(v58 + 72) * v28, v67);
    v33 = (*(v29 + 56) + 32 * v28);
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[3];
    v65 = v33[2];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    v38 = &v56[*(v37 + 48)];
    v39 = *(v30 + 32);
    v12 = v56;
    v39(v56, v31, v32);
    *v38 = v34;
    *(v38 + 1) = v35;
    v40 = v65;
    *(v38 + 2) = v65;
    *(v38 + 3) = v36;
    (*(*(v37 - 8) + 56))(v12, 0, 1, v37);

    sub_1D1741C70(v40);
    sub_1D1741C70(v36);
    v26 = v64;
LABEL_17:
    sub_1D1741A90(v12, v26, &qword_1EC6455D8, &qword_1D1E79B88);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    if ((*(*(v41 - 8) + 48))(v26, 1, v41) == 1)
    {

      return MEMORY[0x1D3892850](v68);
    }

    v42 = v26;
    v43 = (v26 + *(v41 + 48));
    v44 = v67;
    v45 = v61;
    (*v66)(v61, v42, v67);
    v46 = *v43;
    v47 = v43[1];
    v48 = v43[2];
    v21 = v43[3];
    v49 = *(v62 + 48);
    v69[2] = *(v62 + 32);
    v69[3] = v49;
    v70 = *(v62 + 64);
    v50 = *(v62 + 16);
    v69[0] = *v62;
    v69[1] = v50;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*v60)(v45, v44);

    sub_1D1741C70(v48);
    sub_1D1741C70(v21);
    sub_1D176FB98(v69, v46);

    sub_1D176F8E4(v69, v47);

    if (v48 > 2)
    {
      switch(v48)
      {
        case 3:
          v51 = 3;
          break;
        case 4:
          v51 = 5;
          break;
        case 5:
          v51 = 6;
          break;
        default:
LABEL_30:
          MEMORY[0x1D3892850](4);
          sub_1D1E6850C();
          sub_1D1757B18(v48);
          if (v21 <= 2)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
      }
    }

    else if (v48)
    {
      if (v48 == 1)
      {
        v51 = 1;
      }

      else
      {
        if (v48 != 2)
        {
          goto LABEL_30;
        }

        v51 = 2;
      }
    }

    else
    {
      v51 = 0;
    }

    MEMORY[0x1D3892850](v51);
    if (v21 <= 2)
    {
LABEL_38:
      if (!v21)
      {
        MEMORY[0x1D3892850](0);

        v22 = 0;
        v21 = v48;
        goto LABEL_5;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          MEMORY[0x1D3892850](2);

          v21 = v48;
          v22 = 2;
          goto LABEL_5;
        }

        goto LABEL_43;
      }

      MEMORY[0x1D3892850](1);

      v21 = v48;
      v22 = 1;
      goto LABEL_5;
    }

LABEL_31:
    if (v21 == 3)
    {
      MEMORY[0x1D3892850](3);

      v21 = v48;
      v22 = 3;
      goto LABEL_5;
    }

    if (v21 != 4)
    {
      if (v21 == 5)
      {
        MEMORY[0x1D3892850](6);

        v21 = v48;
        v22 = 5;
        goto LABEL_5;
      }

LABEL_43:
      MEMORY[0x1D3892850](4);
      v22 = v21;
      sub_1D1E6850C();

      sub_1D1757B18(v48);
      goto LABEL_5;
    }

    MEMORY[0x1D3892850](5);

    v21 = v48;
    v22 = 4;
LABEL_5:
    sub_1D1757B18(v21);
    sub_1D1757B18(v22);
    result = sub_1D1E6926C();
    v19 = result ^ v68;
  }

  if (v54 <= v20 + 1)
  {
    v24 = v20 + 1;
  }

  else
  {
    v24 = v54;
  }

  v25 = v24 - 1;
  v26 = v64;
  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v54)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
      (*(*(v52 - 8) + 56))(v12, 1, 1, v52);
      v17 = 0;
      v20 = v25;
      goto LABEL_17;
    }

    v17 = *(v63 + 8 * v23);
    ++v20;
    if (v17)
    {
      v20 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CoordinationSnapshot.UpdateType()
{
  result = qword_1EE07A7F8;
  if (!qword_1EE07A7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1857700(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for ActionService();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645530, &qword_1D1E79AC8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for ActionService);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for ActionService);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC645530, &qword_1D1E79AC8);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for ActionService);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      ActionService.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for ActionService);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1857C7C(__int128 *a1, uint64_t a2)
{
  v67 = a1;
  v3 = type metadata accessor for StaticTelevisionProfile();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v71 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v55 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645560, &qword_1D1E79B08);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v55 = (v21 + 63) >> 6;
  v57 = v9 + 16;
  v69 = (v9 + 32);
  v60 = v9;
  v65 = (v9 + 8);
  v63 = a2;

  v25 = 0;
  v26 = 0;
  v70 = v19;
  v64 = v8;
  v56 = a2 + 64;
  v58 = v3;
  while (1)
  {
    v72 = v25;
    if (!v23)
    {
      break;
    }

    v29 = v26;
LABEL_15:
    v33 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v34 = v33 | (v29 << 6);
    v35 = v63;
    v36 = v60;
    v37 = v59;
    (*(v60 + 16))(v59, *(v63 + 48) + *(v60 + 72) * v34, v8);
    v38 = v61;
    sub_1D186155C(*(v35 + 56) + *(v62 + 72) * v34, v61, type metadata accessor for StaticTelevisionProfile);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    v40 = *(v39 + 48);
    v41 = *(v36 + 32);
    v32 = v68;
    v41(v68, v37, v8);
    sub_1D18614F4(v38, v32 + v40, type metadata accessor for StaticTelevisionProfile);
    (*(*(v39 - 8) + 56))(v32, 0, 1, v39);
    v3 = v58;
    v19 = v70;
    v20 = v56;
LABEL_16:
    sub_1D1741A90(v32, v19, &qword_1EC645560, &qword_1D1E79B08);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    if ((*(*(v42 - 8) + 48))(v19, 1, v42) == 1)
    {

      return MEMORY[0x1D3892850](v72);
    }

    v43 = *(v42 + 48);
    v44 = v66;
    v8 = v64;
    (*v69)(v66, v19, v64);
    v45 = &v19[v43];
    v46 = v71;
    sub_1D18614F4(v45, v71, type metadata accessor for StaticTelevisionProfile);
    v47 = v67[3];
    v75 = v67[2];
    v76 = v47;
    v77 = *(v67 + 8);
    v48 = v67[1];
    v73 = *v67;
    v74 = v48;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*v65)(v44, v8);
    sub_1D1E676EC();
    v49 = v3;
    v50 = *(v46 + *(v3 + 20));
    MEMORY[0x1D3892850](*(v50 + 16));
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = (v50 + 32);
      do
      {
        v53 = *v52++;
        MEMORY[0x1D3892850](v53);
        --v51;
      }

      while (v51);
    }

    v3 = v49;
    v27 = v71;
    v28 = v71 + *(v49 + 24);
    sub_1D1E676EC();
    sub_1D18615C4(v27, type metadata accessor for StaticTelevisionProfile);
    result = sub_1D1E6926C();
    v25 = result ^ v72;
    v19 = v70;
  }

  if (v55 <= v26 + 1)
  {
    v30 = v26 + 1;
  }

  else
  {
    v30 = v55;
  }

  v31 = v30 - 1;
  v32 = v68;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v55)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
      (*(*(v54 - 8) + 56))(v32, 1, 1, v54);
      v23 = 0;
      v26 = v31;
      goto LABEL_16;
    }

    v23 = *(v20 + 8 * v29);
    ++v26;
    if (v23)
    {
      v26 = v29;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18582DC(__int128 *a1, uint64_t a2)
{
  v64 = a1;
  v67 = type metadata accessor for StaticLightProfile();
  v60 = *(v67 - 8);
  v3 = *(v60 + 64);
  v4 = MEMORY[0x1EEE9AC00](v67);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v52 - v7;
  v69 = sub_1D1E66A7C();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v69);
  v63 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645570, &qword_1D1E79B18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v52 = (v21 + 63) >> 6;
  v54 = v8 + 16;
  v65 = (v8 + 32);
  v58 = v8;
  v61 = a2;
  v62 = (v8 + 8);

  v25 = 0;
  v26 = 0;
  v56 = v6;
  v55 = v17;
  v66 = v19;
  v53 = a2 + 64;
  while (1)
  {
    v68 = v25;
    if (!v23)
    {
      break;
    }

    v28 = v26;
LABEL_16:
    v31 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v61;
    v34 = v58;
    v35 = v57;
    v36 = v69;
    (*(v58 + 16))(v57, *(v61 + 48) + *(v58 + 72) * v32, v69);
    v37 = v59;
    sub_1D186155C(*(v33 + 56) + *(v60 + 72) * v32, v59, type metadata accessor for StaticLightProfile);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    v39 = *(v38 + 48);
    v40 = *(v34 + 32);
    v17 = v55;
    v40(v55, v35, v36);
    sub_1D18614F4(v37, &v17[v39], type metadata accessor for StaticLightProfile);
    (*(*(v38 - 8) + 56))(v17, 0, 1, v38);
    v6 = v56;
    v19 = v66;
    v20 = v53;
LABEL_17:
    sub_1D1741A90(v17, v19, &qword_1EC645570, &qword_1D1E79B18);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    if ((*(*(v41 - 8) + 48))(v19, 1, v41) == 1)
    {

      return MEMORY[0x1D3892850](v68);
    }

    v42 = *(v41 + 48);
    v43 = v63;
    v44 = v69;
    (*v65)(v63, v19, v69);
    sub_1D18614F4(&v19[v42], v6, type metadata accessor for StaticLightProfile);
    v45 = v64[3];
    v72 = v64[2];
    v73 = v45;
    v74 = *(v64 + 8);
    v46 = v64[1];
    v70 = *v64;
    v71 = v46;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*v62)(v43, v44);
    sub_1D1E676EC();
    v47 = v67;
    v48 = v6[*(v67 + 20)];
    sub_1D1E6922C();
    v49 = &v6[*(v47 + 24)];
    v50 = *v49;
    LODWORD(v47) = v49[1];
    sub_1D1E6922C();
    if (v47 != 2)
    {
      sub_1D1E6922C();
    }

    sub_1D1E6922C();
    v27 = &v6[*(v67 + 28)];
    sub_1D1E676EC();
    sub_1D18615C4(v6, type metadata accessor for StaticLightProfile);
    result = sub_1D1E6926C();
    v25 = result ^ v68;
    v19 = v66;
  }

  if (v52 <= v26 + 1)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v52;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v52)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
      (*(*(v51 - 8) + 56))(v17, 1, 1, v51);
      v23 = 0;
      v26 = v30;
      goto LABEL_17;
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185893C(__int128 *a1, uint64_t a2)
{
  v54 = a1;
  v52 = type metadata accessor for EndpointPath(0);
  v49 = *(v52 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645590, &qword_1D1E79B38);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v44 - v13;
  v14 = *(a2 + 64);
  v45 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v44 = (v15 + 63) >> 6;
  v46 = v5 + 16;
  v58 = (v5 + 32);
  v48 = v5;
  v50 = a2;
  v51 = (v5 + 8);

  v19 = 0;
  v47 = v12;
  v59 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v50;
      v26 = v48;
      v27 = v56;
      v28 = v57;
      (*(v48 + 16))(v57, *(v50 + 48) + *(v48 + 72) * v24, v56);
      v29 = v55;
      sub_1D186155C(*(v25 + 56) + *(v49 + 72) * v24, v55, type metadata accessor for EndpointPath);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
      v31 = *(v30 + 48);
      v32 = *(v26 + 32);
      v12 = v47;
      v32(v47, v28, v27);
      sub_1D18614F4(v29, &v12[v31], type metadata accessor for EndpointPath);
      (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
      v22 = v20;
LABEL_13:
      v33 = v53;
      sub_1D1741A90(v12, v53, &qword_1EC645590, &qword_1D1E79B38);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v57;
      v37 = v56;
      (*v58)(v57, v33, v56);
      v38 = v55;
      sub_1D18614F4(v33 + v35, v55, type metadata accessor for EndpointPath);
      v39 = v54[3];
      v62 = v54[2];
      v63 = v39;
      v64 = *(v54 + 8);
      v40 = v54[1];
      v60 = *v54;
      v61 = v40;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v51)(v36, v37);
      sub_1D1E676EC();
      v41 = v52;
      MEMORY[0x1D3892890](*(v38 + *(v52 + 20)));
      v42 = *(v38 + *(v41 + 24));
      sub_1D1E6923C();
      sub_1D18615C4(v38, type metadata accessor for EndpointPath);
      result = sub_1D1E6926C();
      v19 = v22;
      v59 ^= result;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v59);
  }

  else
  {
LABEL_5:
    if (v44 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v44;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v44)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
        (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v45 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1858EFC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticMatterDevice();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B8, &unk_1D1E79A50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticMatterDevice);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticMatterDevice);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC6454B8, &unk_1D1E79A50);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticMatterDevice);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticMatterDevice.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticMatterDevice);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1859478(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticServiceGroup();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645450, &qword_1D1E799E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticServiceGroup);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticServiceGroup);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC645450, &qword_1D1E799E0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticServiceGroup);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticServiceGroup.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticServiceGroup);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18599F4(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticService(0);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticService);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticService);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC643C68, &unk_1D1E764C0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticService);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticService.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticService);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1859F70(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticAccessory(0);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A0, &unk_1D1E79A30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticAccessory);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticAccessory);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC6454A0, &unk_1D1E79A30);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticAccessory);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticAccessory.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticAccessory);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185A4EC(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = type metadata accessor for StaticMatterDevice();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645420, &unk_1D1E799B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - v12);
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v37 = a2;

  v20 = 0;
  v35 = v11;
  v39 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v21 << 6);
      v26 = *(*(v37 + 48) + 8 * v25);
      sub_1D186155C(*(v37 + 56) + *(v36 + 72) * v25, v6, type metadata accessor for StaticMatterDevice);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
      v28 = *(v27 + 48);
      v11 = v35;
      *v35 = v26;
      sub_1D18614F4(v6, &v11[v28], type metadata accessor for StaticMatterDevice);
      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      v23 = v21;
LABEL_13:
      sub_1D1741A90(v11, v13, &qword_1EC645420, &unk_1D1E799B0);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
      if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
      {
        break;
      }

      v30 = *v13;
      sub_1D18614F4(v13 + *(v29 + 48), v6, type metadata accessor for StaticMatterDevice);
      v31 = *(v38 + 48);
      v40[2] = *(v38 + 32);
      v40[3] = v31;
      v41 = *(v38 + 64);
      v32 = *(v38 + 16);
      v40[0] = *v38;
      v40[1] = v32;
      MEMORY[0x1D3892890](v30);
      StaticMatterDevice.hash(into:)(v40);
      sub_1D18615C4(v6, type metadata accessor for StaticMatterDevice);
      result = sub_1D1E6926C();
      v20 = v23;
      v39 ^= result;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v39);
  }

  else
  {
LABEL_5:
    if (v18 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
        (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185A8E4(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = type metadata accessor for StaticEndpoint();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - v12);
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v37 = a2;

  v20 = 0;
  v35 = v11;
  v39 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v21 << 6);
      v26 = *(*(v37 + 48) + 2 * v25);
      sub_1D186155C(*(v37 + 56) + *(v36 + 72) * v25, v6, type metadata accessor for StaticEndpoint);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      v28 = *(v27 + 48);
      v11 = v35;
      *v35 = v26;
      sub_1D18614F4(v6, &v11[v28], type metadata accessor for StaticEndpoint);
      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      v23 = v21;
LABEL_13:
      sub_1D1741A90(v11, v13, &qword_1EC6455A0, &unk_1D1E79B48);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
      {
        break;
      }

      v30 = *v13;
      sub_1D18614F4(v13 + *(v29 + 48), v6, type metadata accessor for StaticEndpoint);
      v31 = *(v38 + 48);
      v40[2] = *(v38 + 32);
      v40[3] = v31;
      v41 = *(v38 + 64);
      v32 = *(v38 + 16);
      v40[0] = *v38;
      v40[1] = v32;
      sub_1D1E6923C();
      StaticEndpoint.hash(into:)(v40);
      sub_1D18615C4(v6, type metadata accessor for StaticEndpoint);
      result = sub_1D1E6926C();
      v20 = v23;
      v39 ^= result;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v39);
  }

  else
  {
LABEL_5:
    if (v18 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
        (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185ACDC(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = type metadata accessor for ActionEndpoint();
  v50 = *(v3 - 1);
  v4 = *(v50 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B0, &qword_1D1E79B60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = (&v48 - v14);
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v51 = a2;

  v21 = 0;
  v54 = v13;
  v55 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(v51 + 48) + 2 * v26);
      v28 = v49;
      sub_1D186155C(*(v51 + 56) + *(v50 + 72) * v26, v49, type metadata accessor for ActionEndpoint);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
      v30 = *(v29 + 48);
      v31 = v54;
      *v54 = v27;
      v13 = v31;
      sub_1D18614F4(v28, &v31[v30], type metadata accessor for ActionEndpoint);
      (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
      v24 = v22;
LABEL_13:
      v32 = v53;
      sub_1D1741A90(v13, v53, &qword_1EC6455B0, &qword_1D1E79B60);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = *v32;
      sub_1D18614F4(v32 + *(v33 + 48), v7, type metadata accessor for ActionEndpoint);
      v35 = *(v52 + 48);
      v56[2] = *(v52 + 32);
      v56[3] = v35;
      v57 = *(v52 + 64);
      v36 = *(v52 + 16);
      v56[0] = *v52;
      v56[1] = v36;
      sub_1D1E6923C();
      sub_1D1E66A7C();
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      sub_1D176D4E8(v56, *&v7[v3[5]]);
      v37 = &v7[v3[6]];
      v38 = *v37;
      v39 = *(v37 + 1);
      sub_1D1E678EC();
      v40 = v7[v3[7]];
      sub_1D1E6922C();
      v41 = v24;
      v42 = &v7[v3[8]];
      v13 = v54;
      sub_1D1E676EC();
      v43 = type metadata accessor for EndpointPath(0);
      MEMORY[0x1D3892890](*&v42[*(v43 + 20)]);
      v44 = *&v42[*(v43 + 24)];
      sub_1D1E6923C();
      v45 = &v7[v3[9]];
      MatterTileMetadata.hash(into:)();
      MEMORY[0x1D3892850](*&v7[v3[10]]);
      sub_1D176DB8C(v56, *&v7[v3[11]]);
      sub_1D185BAEC(v56, *&v7[v3[12]]);
      v46 = &v7[v3[13]];
      StaticClusterGroups.hash(into:)(v56);
      sub_1D176E508(v56, *&v7[v3[14]]);
      sub_1D18615C4(v7, type metadata accessor for ActionEndpoint);
      result = sub_1D1E6926C();
      v21 = v41;
      v55 ^= result;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v55);
  }

  else
  {
LABEL_5:
    if (v19 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
        (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185B23C(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = v59 - v5;
  v67 = type metadata accessor for StaticMediaSystemComponent();
  v62 = *(v67 - 8);
  v6 = *(v62 + 64);
  v7 = MEMORY[0x1EEE9AC00](v67);
  v74 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = v59 - v9;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v66 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645550, &qword_1D1E79AF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v70 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v59 - v20;
  v22 = *(a2 + 64);
  v71 = a2 + 64;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v59[0] = (v23 + 63) >> 6;
  v59[1] = v11 + 16;
  v26 = (v11 + 32);
  v65 = (v11 + 8);
  v60 = v11;
  v64 = (v11 + 48);
  v63 = a2;

  v28 = 0;
  v29 = 0;
  v73 = v21;
  v77 = (v11 + 32);
  for (i = v10; ; v10 = i)
  {
    v76 = v28;
    if (!v25)
    {
      break;
    }

    v31 = v29;
LABEL_16:
    v34 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v63;
    v37 = v60;
    v38 = v72;
    (*(v60 + 16))(v72, *(v63 + 48) + *(v60 + 72) * v35, v10);
    v39 = v61;
    sub_1D186155C(*(v36 + 56) + *(v62 + 72) * v35, v61, type metadata accessor for StaticMediaSystemComponent);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    v41 = *(v40 + 48);
    v42 = *(v37 + 32);
    v43 = v70;
    v44 = v38;
    v26 = v77;
    v42(v70, v44, v10);
    sub_1D18614F4(v39, v43 + v41, type metadata accessor for StaticMediaSystemComponent);
    (*(*(v40 - 8) + 56))(v43, 0, 1, v40);
    v21 = v73;
LABEL_17:
    sub_1D1741A90(v43, v21, &qword_1EC645550, &qword_1D1E79AF0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    if ((*(*(v45 - 8) + 48))(v21, 1, v45) == 1)
    {

      return MEMORY[0x1D3892850](v76);
    }

    v46 = *(v45 + 48);
    v47 = *v26;
    v48 = v66;
    v49 = i;
    (*v26)(v66, v21, i);
    v50 = v74;
    sub_1D18614F4(&v21[v46], v74, type metadata accessor for StaticMediaSystemComponent);
    v51 = *(v69 + 48);
    v78[2] = *(v69 + 32);
    v78[3] = v51;
    v79 = *(v69 + 64);
    v52 = *(v69 + 16);
    v78[0] = *v69;
    v78[1] = v52;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    v53 = *v65;
    (*v65)(v48, v49);
    sub_1D1E676EC();
    v54 = v50;
    v55 = v67;
    v56 = v54 + *(v67 + 20);
    StaticMediaProfile.hash(into:)(v78);
    MEMORY[0x1D3892850](*(v54 + v55[6]));
    sub_1D176D4E8(v78, *(v54 + v55[7]));
    v57 = v68;
    sub_1D17783E0(v54 + v55[8], v68);
    if ((*v64)(v57, 1, v49) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v30 = v72;
      v47(v72, v57, v49);
      sub_1D1E6922C();
      sub_1D1E676EC();
      v53(v30, v49);
    }

    sub_1D18615C4(v74, type metadata accessor for StaticMediaSystemComponent);
    result = sub_1D1E6926C();
    v26 = v77;
    v28 = result ^ v76;
    v21 = v73;
  }

  if (v59[0] <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v59[0];
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v59[0])
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
      v43 = v70;
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      v25 = 0;
      v29 = v33;
      goto LABEL_17;
    }

    v25 = *(v71 + 8 * v31);
    ++v29;
    if (v25)
    {
      v29 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185B98C(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];

    sub_1D1E678EC();

    if (v17 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    MEMORY[0x1D3892890](*&v18);
    result = sub_1D1E6926C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1D3892850](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185BAEC(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = type metadata accessor for StaticCluster();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C0, &qword_1D1E79B70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  v40 = a2;

  v19 = 0;
  v43 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = *(*(v40 + 48) + v24);
      sub_1D186155C(*(v40 + 56) + *(v39 + 72) * v24, v6, type metadata accessor for StaticCluster);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
      v27 = *(v26 + 48);
      v28 = v42;
      *v42 = v25;
      sub_1D18614F4(v6, &v28[v27], type metadata accessor for StaticCluster);
      (*(*(v26 - 8) + 56))(v28, 0, 1, v26);
      v22 = v20;
      v29 = v28;
LABEL_13:
      sub_1D1741A90(v29, v12, &qword_1EC6455C0, &qword_1D1E79B70);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
      if ((*(*(v30 - 8) + 48))(v12, 1, v30) == 1)
      {
        break;
      }

      v31 = *(v30 + 48);
      v32 = *v12;
      sub_1D18614F4(&v12[v31], v6, type metadata accessor for StaticCluster);
      v33 = *(v41 + 48);
      v44[2] = *(v41 + 32);
      v44[3] = v33;
      v45 = *(v41 + 64);
      v34 = *(v41 + 16);
      v44[0] = *v41;
      v44[1] = v34;
      v35 = dword_1D1E79BBC[v32];
      sub_1D1E6924C();
      StaticCluster.hash(into:)(v44);
      sub_1D18615C4(v6, type metadata accessor for StaticCluster);
      result = sub_1D1E6926C();
      v19 = v22;
      v43 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v43);
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
        v37 = v42;
        (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
        v29 = v37;
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185BEF0(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];

    v18 = v17;
    sub_1D1E678EC();

    sub_1D1E6850C();

    result = sub_1D1E6926C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1D3892850](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185C048(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v76 = type metadata accessor for StaticResident();
  v65 = *(v76 - 1);
  v3 = *(v65 + 64);
  v4 = MEMORY[0x1EEE9AC00](v76);
  v67 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = v60 - v6;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v69 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E0, &qword_1D1E79A78);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v60 - v18;
  v20 = *(a2 + 64);
  v72 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v60[0] = (v21 + 63) >> 6;
  v60[1] = v8 + 16;
  v73 = (v8 + 32);
  v63 = v8;
  v68 = (v8 + 8);
  v66 = a2;

  v25 = 0;
  v26 = 0;
  v61 = v17;
  v74 = v19;
  v70 = v7;
  while (1)
  {
    v75 = v25;
    if (!v23)
    {
      break;
    }

    v29 = v26;
LABEL_17:
    v32 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v66;
    v35 = v63;
    v36 = v62;
    (*(v63 + 16))(v62, *(v66 + 48) + *(v63 + 72) * v33, v7);
    v37 = v64;
    sub_1D186155C(*(v34 + 56) + *(v65 + 72) * v33, v64, type metadata accessor for StaticResident);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    v39 = *(v38 + 48);
    v40 = *(v35 + 32);
    v41 = v61;
    v40(v61, v36, v7);
    v42 = v37;
    v17 = v41;
    sub_1D18614F4(v42, &v41[v39], type metadata accessor for StaticResident);
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    v19 = v74;
LABEL_18:
    sub_1D1741A90(v17, v19, &qword_1EC6454E0, &qword_1D1E79A78);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    if ((*(*(v43 - 8) + 48))(v19, 1, v43) == 1)
    {

      return MEMORY[0x1D3892850](v75);
    }

    v44 = *(v43 + 48);
    v45 = v69;
    (*v73)(v69, v19, v7);
    v46 = v67;
    sub_1D18614F4(&v19[v44], v67, type metadata accessor for StaticResident);
    v47 = *(v71 + 48);
    v77[2] = *(v71 + 32);
    v77[3] = v47;
    v78 = *(v71 + 64);
    v48 = *(v71 + 16);
    v77[0] = *v71;
    v77[1] = v48;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*v68)(v45, v7);
    sub_1D1E676EC();
    v49 = v76;
    v50 = (v46 + v76[5]);
    v51 = *v50;
    v52 = v50[1];
    sub_1D1E678EC();
    v53 = (v46 + v49[6]);
    if (v53[1])
    {
      v54 = *v53;
      sub_1D1E6922C();
      sub_1D1E678EC();
    }

    else
    {
      sub_1D1E6922C();
    }

    v55 = v76;
    sub_1D1771CBC(v77, *(v46 + v76[7]));
    sub_1D1771CBC(v77, *(v46 + v55[8]));
    v56 = v46 + v55[9];
    v57 = *v56;
    v58 = *(v56 + 8);
    if (v58 > 1)
    {
      v19 = v74;
      if (v58 != 2)
      {
        if (v57 > 1)
        {
          if (v57 == 2)
          {
            v27 = 2;
          }

          else
          {
            v27 = 6;
          }
        }

        else
        {
          v27 = v57 != 0;
        }

        goto LABEL_5;
      }

      MEMORY[0x1D3892850](5);
      sub_1D1E6922C();
      sub_1D1E6922C();
    }

    else
    {
      v19 = v74;
      if (v58)
      {
        MEMORY[0x1D3892850](4);
        v27 = v57;
LABEL_5:
        MEMORY[0x1D3892850](v27);
        goto LABEL_6;
      }

      MEMORY[0x1D3892850](3);
      sub_1D1E6922C();
      if (v57)
      {
        sub_1D176D4E8(v77, v57);
      }
    }

LABEL_6:
    v7 = v70;
    v28 = v46 + v76[10];
    sub_1D1E676EC();
    sub_1D18615C4(v46, type metadata accessor for StaticResident);
    result = sub_1D1E6926C();
    v25 = result ^ v75;
  }

  if (v60[0] <= v26 + 1)
  {
    v30 = v26 + 1;
  }

  else
  {
    v30 = v60[0];
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v60[0])
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
      (*(*(v59 - 8) + 56))(v17, 1, 1, v59);
      v23 = 0;
      v26 = v31;
      goto LABEL_18;
    }

    v23 = *(v72 + 8 * v29);
    ++v26;
    if (v23)
    {
      v26 = v29;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185C7AC(__int128 *a1, uint64_t a2)
{
  v67 = a1;
  v73 = type metadata accessor for StaticHH2Update(0);
  v62 = *(v73 - 1);
  v3 = *(v62 + 64);
  v4 = MEMORY[0x1EEE9AC00](v73);
  v74 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v63 = v58 - v6;
  v71 = sub_1D1E66A7C();
  v7 = *(v71 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v71);
  v66 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F0, &qword_1D1E79A88);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v58 - v17;
  v19 = *(a2 + 64);
  v68 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v58[0] = (v20 + 63) >> 6;
  v58[1] = v7 + 16;
  v70 = (v7 + 32);
  v61 = v7;
  v64 = a2;
  v65 = (v7 + 8);

  v24 = 0;
  v25 = 0;
  v59 = v16;
  v69 = v18;
  while (1)
  {
    v72 = v24;
    if (!v22)
    {
      break;
    }

    v28 = v25;
LABEL_19:
    v31 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v64;
    v34 = v61;
    v35 = v60;
    v36 = v71;
    (*(v61 + 16))(v60, *(v64 + 48) + *(v61 + 72) * v32, v71);
    v37 = v63;
    sub_1D186155C(*(v33 + 56) + *(v62 + 72) * v32, v63, type metadata accessor for StaticHH2Update);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    v39 = *(v38 + 48);
    v40 = *(v34 + 32);
    v41 = v59;
    v40(v59, v35, v36);
    v42 = v37;
    v16 = v41;
    sub_1D18614F4(v42, &v41[v39], type metadata accessor for StaticHH2Update);
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    v18 = v69;
LABEL_20:
    sub_1D1741A90(v16, v18, &qword_1EC6454F0, &qword_1D1E79A88);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    if ((*(*(v43 - 8) + 48))(v18, 1, v43) == 1)
    {

      return MEMORY[0x1D3892850](v72);
    }

    v44 = *(v43 + 48);
    v45 = v71;
    v46 = v66;
    (*v70)(v66, v18, v71);
    v47 = v74;
    sub_1D18614F4(&v18[v44], v74, type metadata accessor for StaticHH2Update);
    v48 = v67[3];
    v77 = v67[2];
    v78 = v48;
    v79 = *(v67 + 8);
    v49 = v67[1];
    v75 = *v67;
    v76 = v49;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*v65)(v46, v45);
    sub_1D1E676EC();
    v50 = *(v47 + v73[5]);
    if ((v50 - 2) >= 6u)
    {
      MEMORY[0x1D3892850](5);
      v51 = v50 & 1;
    }

    else
    {
      v51 = qword_1D1E79C38[(v50 - 2)];
    }

    MEMORY[0x1D3892850](v51);
    v52 = (v74 + v73[6]);
    v53 = v52[1];
    if (!v53)
    {
      v54 = 0;
      goto LABEL_28;
    }

    if (v53 == 1)
    {
      v54 = 2;
LABEL_28:
      MEMORY[0x1D3892850](v54);
      goto LABEL_30;
    }

    v55 = *v52;
    MEMORY[0x1D3892850](1);
    v18 = v69;
    sub_1D1E678EC();
LABEL_30:
    v56 = (v74 + v73[7]);
    if (*(v56 + 8) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v26 = *v56;
      sub_1D1E6922C();
      if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x1D3892890](v27);
    }

    sub_1D18615C4(v74, type metadata accessor for StaticHH2Update);
    result = sub_1D1E6926C();
    v24 = result ^ v72;
  }

  if (v58[0] <= v25 + 1)
  {
    v29 = v25 + 1;
  }

  else
  {
    v29 = v58[0];
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v58[0])
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
      (*(*(v57 - 8) + 56))(v16, 1, 1, v57);
      v22 = 0;
      v25 = v30;
      goto LABEL_20;
    }

    v22 = *(v68 + 8 * v28);
    ++v25;
    if (v22)
    {
      v25 = v28;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185CE7C(__int128 *a1, uint64_t a2)
{
  v57 = a1;
  v55 = type metadata accessor for StaticUser();
  v52 = *(v55 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D1E66A7C();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645500, &qword_1D1E79A98);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v46 - v14;
  v15 = *(a2 + 64);
  v48 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v47 = (v16 + 63) >> 6;
  v49 = v6 + 16;
  v60 = (v6 + 32);
  v51 = v6;
  v53 = a2;
  v54 = (v6 + 8);

  v20 = 0;
  v50 = v13;
  v61 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v53;
      v27 = v51;
      v29 = v58;
      v28 = v59;
      (*(v51 + 16))(v59, *(v53 + 48) + *(v51 + 72) * v25, v58);
      sub_1D186155C(*(v26 + 56) + *(v52 + 72) * v25, v5, type metadata accessor for StaticUser);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v13 = v50;
      v32(v50, v28, v29);
      sub_1D18614F4(v5, &v13[v31], type metadata accessor for StaticUser);
      (*(*(v30 - 8) + 56))(v13, 0, 1, v30);
      v23 = v21;
LABEL_13:
      v33 = v56;
      sub_1D1741A90(v13, v56, &qword_1EC645500, &qword_1D1E79A98);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v59;
      v37 = v58;
      (*v60)(v59, v33, v58);
      sub_1D18614F4(v33 + v35, v5, type metadata accessor for StaticUser);
      v38 = v57[3];
      v64 = v57[2];
      v65 = v38;
      v66 = *(v57 + 8);
      v39 = v57[1];
      v62 = *v57;
      v63 = v39;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v54)(v36, v37);
      sub_1D1E676EC();
      v40 = v55;
      v41 = &v5[*(v55 + 20)];
      v42 = *v41;
      v43 = *(v41 + 1);
      sub_1D1E678EC();
      v44 = &v5[v40[6]];
      sub_1D1E676EC();
      MEMORY[0x1D3892850](v5[v40[7]]);
      MEMORY[0x1D3892850](v5[v40[8]]);
      sub_1D18615C4(v5, type metadata accessor for StaticUser);
      result = sub_1D1E6926C();
      v20 = v23;
      v61 ^= result;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v47;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v48 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185D454(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticRoom(0);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645510, &qword_1D1E79AA8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticRoom);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticRoom);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC645510, &qword_1D1E79AA8);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticRoom);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticRoom.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticRoom);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185D9D0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticMediaProfile();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645460, &unk_1D1E799F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticMediaProfile);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticMediaProfile);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC645460, &unk_1D1E799F0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticMediaProfile);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticMediaProfile.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticMediaProfile);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185DF4C(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticMediaSystem();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645470, &qword_1D1E79A00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticMediaSystem);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticMediaSystem);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC645470, &qword_1D1E79A00);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticMediaSystem);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticMediaSystem.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticMediaSystem);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185E4C8(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticCameraProfile();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645480, &unk_1D1E79A10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticCameraProfile);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticCameraProfile);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC645480, &unk_1D1E79A10);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticCameraProfile);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticCameraProfile.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticCameraProfile);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185EA44(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = type metadata accessor for StaticActionSet();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D1E66A7C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645490, &qword_1D1E79A20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a2 + 64);
  v48 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v47 = (v17 + 63) >> 6;
  v49 = v6 + 16;
  v58 = (v6 + 32);
  v52 = v6;
  v54 = a2;
  v55 = (v6 + 8);

  v21 = 0;
  v50 = v15;
  v51 = v13;
  v61 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = v52;
      v29 = v57;
      v30 = v59;
      (*(v52 + 16))(v57, *(v54 + 48) + *(v52 + 72) * v26, v59);
      v31 = v60;
      sub_1D186155C(*(v27 + 56) + *(v53 + 72) * v26, v60, type metadata accessor for StaticActionSet);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
      v33 = *(v32 + 48);
      v34 = *(v28 + 32);
      v35 = v51;
      v34(v51, v29, v30);
      v36 = v31;
      v13 = v35;
      sub_1D18614F4(v36, &v35[v33], type metadata accessor for StaticActionSet);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
      v24 = v22;
      v15 = v50;
LABEL_13:
      sub_1D1741A90(v13, v15, &qword_1EC645490, &qword_1D1E79A20);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v57;
      v40 = v59;
      (*v58)(v57, v15, v59);
      v41 = &v15[v38];
      v42 = v60;
      sub_1D18614F4(v41, v60, type metadata accessor for StaticActionSet);
      v43 = *(v56 + 48);
      v62[2] = *(v56 + 32);
      v62[3] = v43;
      v63 = *(v56 + 64);
      v44 = *(v56 + 16);
      v62[0] = *v56;
      v62[1] = v44;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v55)(v39, v40);
      StaticActionSet.hash(into:)(v62);
      sub_1D18615C4(v42, type metadata accessor for StaticActionSet);
      result = sub_1D1E6926C();
      v21 = v24;
      v61 ^= result;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v61);
  }

  else
  {
LABEL_5:
    if (v47 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v48 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185EFC0(__int128 *a1, uint64_t a2)
{
  v71 = a1;
  v70 = type metadata accessor for StaticZone();
  v66 = *(v70 - 8);
  v3 = *(v66 + 64);
  v4 = MEMORY[0x1EEE9AC00](v70);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v60 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645520, &qword_1D1E79AB8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v24 = *(a2 + 64);
  v72 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v61 = (v25 + 63) >> 6;
  v80 = v9 + 16;
  v73 = v9;
  v74 = (v9 + 32);
  v28 = (v9 + 8);
  v67 = a2;

  v30 = 0;
  v31 = 0;
  v75 = v23;
  v63 = (v9 + 8);
  v79 = v6;
  v68 = v21;
  v62 = v13;
  while (v27)
  {
    v77 = v31;
    v32 = v31;
LABEL_15:
    v78 = (v27 - 1) & v27;
    v35 = __clz(__rbit64(v27)) | (v32 << 6);
    v36 = v67;
    v37 = v73;
    v38 = v64;
    (*(v73 + 16))(v64, *(v67 + 48) + *(v73 + 72) * v35, v8);
    v39 = v65;
    sub_1D186155C(*(v36 + 56) + *(v66 + 72) * v35, v65, type metadata accessor for StaticZone);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    v41 = *(v40 + 48);
    (*(v37 + 32))(v21, v38, v8);
    sub_1D18614F4(v39, &v21[v41], type metadata accessor for StaticZone);
    (*(*(v40 - 8) + 56))(v21, 0, 1, v40);
    v23 = v75;
    v28 = v63;
    v13 = v62;
LABEL_16:
    sub_1D1741A90(v21, v23, &qword_1EC645520, &qword_1D1E79AB8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    if ((*(*(v42 - 8) + 48))(v23, 1, v42) == 1)
    {

      return MEMORY[0x1D3892850](v30);
    }

    v76 = v30;
    v43 = *(v42 + 48);
    v44 = v69;
    (*v74)(v69, v23, v8);
    v45 = v79;
    sub_1D18614F4(&v23[v43], v79, type metadata accessor for StaticZone);
    v46 = v71[3];
    v84 = v71[2];
    v85 = v46;
    v86 = *(v71 + 8);
    v47 = v71[1];
    v82 = *v71;
    v83 = v47;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    v81 = *v28;
    v81(v44, v8);
    sub_1D1E676EC();
    v48 = v70;
    v49 = (v45 + *(v70 + 20));
    v50 = *v49;
    v51 = v49[1];
    sub_1D1E678EC();
    v52 = *(v45 + *(v48 + 24));
    MEMORY[0x1D3892850](*(v52 + 16));
    v53 = *(v52 + 16);
    v54 = v13;
    v55 = v28;
    if (v53)
    {
      v56 = v52 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v57 = *(v73 + 72);
      v58 = *(v73 + 16);
      do
      {
        v58(v54, v56, v8);
        sub_1D1E676EC();
        v81(v54, v8);
        v56 += v57;
        --v53;
      }

      while (v53);
    }

    sub_1D18615C4(v79, type metadata accessor for StaticZone);
    result = sub_1D1E6926C();
    v23 = v75;
    v30 = result ^ v76;
    v21 = v68;
    v28 = v55;
    v13 = v54;
    v31 = v77;
    v27 = v78;
  }

  if (v61 <= v31 + 1)
  {
    v33 = v31 + 1;
  }

  else
  {
    v33 = v61;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v61)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
      (*(*(v59 - 8) + 56))(v21, 1, 1, v59);
      v77 = v34;
      v78 = 0;
      goto LABEL_16;
    }

    v27 = *(v72 + 8 * v32);
    ++v31;
    if (v27)
    {
      v77 = v32;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185F6BC(__int128 *a1, uint64_t a2)
{
  v49 = a1;
  v51 = sub_1D1E66A7C();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v51);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C8, &qword_1D1E79A60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = *(a2 + 64);
  v40 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v41 = v3 + 16;
  v50 = (v3 + 32);
  v45 = v3;
  v46 = a2;
  v47 = (v3 + 8);

  v21 = 0;
  v42 = v14;
  v43 = v12;
  v52 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v45;
      v28 = v46;
      (*(v45 + 16))(v44, *(v46 + 48) + *(v45 + 72) * v26, v51);
      LOBYTE(v28) = *(*(v28 + 56) + v26);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
      v30 = *(v29 + 48);
      v12 = v43;
      (*(v27 + 32))();
      v12[v30] = v28;
      (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
      v24 = v22;
      v14 = v42;
LABEL_13:
      sub_1D1741A90(v12, v14, &qword_1EC6454C8, &qword_1D1E79A60);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
      if ((*(*(v31 - 8) + 48))(v14, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v31 + 48);
      v33 = v51;
      v34 = v48;
      (*v50)(v48, v14, v51);
      v35 = v14[v32];
      v36 = v49[3];
      v55 = v49[2];
      v56 = v36;
      v57 = *(v49 + 8);
      v37 = v49[1];
      v53 = *v49;
      v54 = v37;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v47)(v34, v33);
      sub_1D1E6922C();
      result = sub_1D1E6926C();
      v21 = v24;
      v52 ^= result;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v52);
  }

  else
  {
LABEL_5:
    if (v19 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
        (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v40 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185FB54(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = *(*(a2 + 48) + 8 * v12);
    v14 = *(a2 + 56) + 24 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = v13;
    sub_1D1741830(v15, v16, v17);
    if (!v18)
    {
LABEL_27:

      return MEMORY[0x1D3892850](v9);
    }

    v27 = a1[2];
    v28 = a1[3];
    v29 = *(a1 + 8);
    v25 = *a1;
    v26 = a1[1];
    sub_1D1E6850C();

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        MEMORY[0x1D3892850](3);
        sub_1D1E678EC();
        v20 = v15;
        v21 = v16;
        v22 = 3;
        goto LABEL_23;
      }

      if (v17 == 4)
      {
        MEMORY[0x1D3892850](4);
        sub_1D1E668CC();
        v20 = v15;
        v21 = v16;
        v22 = 4;
LABEL_23:
        sub_1D1778940(v20, v21, v22);
        goto LABEL_5;
      }

      v23 = 5;
      goto LABEL_26;
    }

    if (!v17)
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
      goto LABEL_5;
    }

    if (v17 != 1)
    {
      MEMORY[0x1D3892850](2);
      v23 = v15;
LABEL_26:
      MEMORY[0x1D3892850](v23);
      goto LABEL_5;
    }

    MEMORY[0x1D3892850](1);
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x1D3892890](v19);
LABEL_5:
    v6 &= v6 - 1;
    result = sub_1D1E6926C();
    v9 ^= result;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      goto LABEL_27;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185FD68(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v23 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = *(*(a2 + 48) + 8 * v11);
      v13 = *(a2 + 56) + 32 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = v12;
      sub_1D17418FC(v14, v15, v16, v17);
      if (!v18)
      {
LABEL_27:

        return MEMORY[0x1D3892850](v23);
      }

      v26 = a1[2];
      v27 = a1[3];
      v28 = *(a1 + 8);
      v24 = *a1;
      v25 = a1[1];
      sub_1D1E6850C();

      if (v17 <= 1)
      {
        break;
      }

      if (v17 != 2)
      {
        if (v16 | v15 | v14)
        {
          if (v14 == 1 && (v16 | v15) == 0)
          {
            v20 = 4;
          }

          else
          {
            v20 = 5;
          }
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_16;
      }

      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](v14);
      sub_1D1E678EC();
      sub_1D1757A60(v14, v15, v16, 2);
LABEL_17:
      v6 &= v6 - 1;
      result = sub_1D1E6926C();
      v23 ^= result;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (v17)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    MEMORY[0x1D3892850](v19);
    v20 = v14 & 1;
LABEL_16:
    MEMORY[0x1D3892850](v20);
    goto LABEL_17;
  }

LABEL_4:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_27;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185FF70(__int128 *a1, uint64_t a2)
{
  v49 = a1;
  v51 = sub_1D1E66A7C();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v51);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A8, &qword_1D1E79A40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = *(a2 + 64);
  v40 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v41 = v3 + 16;
  v50 = (v3 + 32);
  v45 = v3;
  v46 = a2;
  v47 = (v3 + 8);

  v21 = 0;
  v42 = v14;
  v43 = v12;
  v52 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v45;
      v28 = v46;
      (*(v45 + 16))(v44, *(v46 + 48) + *(v45 + 72) * v26, v51);
      LOBYTE(v28) = *(*(v28 + 56) + v26);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
      v30 = *(v29 + 48);
      v12 = v43;
      (*(v27 + 32))();
      v12[v30] = v28;
      (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
      v24 = v22;
      v14 = v42;
LABEL_13:
      sub_1D1741A90(v12, v14, &qword_1EC6454A8, &qword_1D1E79A40);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
      if ((*(*(v31 - 8) + 48))(v14, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v31 + 48);
      v33 = v51;
      v34 = v48;
      (*v50)(v48, v14, v51);
      v35 = v14[v32];
      v36 = v49[3];
      v55 = v49[2];
      v56 = v36;
      v57 = *(v49 + 8);
      v37 = v49[1];
      v53 = *v49;
      v54 = v37;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v47)(v34, v33);
      MEMORY[0x1D3892850](v35 >> 7);
      sub_1D1E6922C();
      result = sub_1D1E6926C();
      v21 = v24;
      v52 ^= result;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v52);
  }

  else
  {
LABEL_5:
    if (v19 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
        (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v40 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}