uint64_t sub_1D17A6444(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D17A6588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v30 - v17;
  v19 = v1[9];
  v20 = (v3 + 48);
  if (v19)
  {
LABEL_2:
    v21 = *(v19 + 16);
    v22 = v2[10];
    if (v22 == v21)
    {
      v23 = type metadata accessor for StaticServiceCharacteristicDoublet();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      sub_1D1741A30(v18, &qword_1EC643870, &qword_1D1E72028);
      goto LABEL_4;
    }

    if (v22 >= v21)
    {
      __break(1u);
    }

    else
    {
      v28 = type metadata accessor for StaticServiceCharacteristicDoublet();
      v29 = *(v28 - 8);
      sub_1D17A6E14(v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v18, type metadata accessor for StaticServiceCharacteristicDoublet);
      v2[10] = v22 + 1;
      (*(v29 + 56))(v18, 0, 1, v28);
      return sub_1D1741A90(v18, v31, &qword_1EC643870, &qword_1D1E72028);
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      sub_1D1B434F0(v13);
      v25 = v2[7];
      v24 = v2[8];
      sub_1D1741A90(v13, v11, &qword_1EC643C68, &unk_1D1E764C0);
      if ((*v20)(v11, 1, v32) == 1)
      {
        break;
      }

      sub_1D1741A90(v11, v6, &qword_1EC642DB0, &unk_1D1E6F360);
      v25(&v33, v6);
      sub_1D1741A30(v6, &qword_1EC642DB0, &unk_1D1E6F360);
      v19 = v33;
      v26 = v2[9];

      v2[9] = v19;
      v2[10] = 0;
      if (v19)
      {
        goto LABEL_2;
      }
    }

    v27 = type metadata accessor for StaticServiceCharacteristicDoublet();
    return (*(*(v27 - 8) + 56))(v31, 1, 1, v27);
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticTriggerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && ((v4 = type metadata accessor for StaticTrigger(), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1D1E6904C()) && *(a1 + v4[6]) == *(a2 + v4[6]) && (sub_1D17A9294(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && (sub_1D17AA3B4(*(a1 + v4[8]), *(a2 + v4[8])) & 1) != 0 && (sub_1D17A6E98(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10])))
  {
    v10 = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D17A6A50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D17A6B50()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17A6C24();
    if (v1 <= 0x3F)
    {
      sub_1D17A6CB8();
      if (v2 <= 0x3F)
      {
        sub_1D1791340();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D17A6C24()
{
  if (!qword_1EC643C48)
  {
    type metadata accessor for Event();
    sub_1D17A6A50(&qword_1EC643578, type metadata accessor for Event);
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC643C48);
    }
  }
}

void sub_1D17A6CB8()
{
  if (!qword_1EC643C50)
  {
    type metadata accessor for Action();
    sub_1D17A6A50(&qword_1EC643570, type metadata accessor for Action);
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC643C50);
    }
  }
}

uint64_t sub_1D17A6D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17A6DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D17A6E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17A6E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v28 = sub_1D1E676DC();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v33 = sub_1D1E6775C();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A7248(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1D1E6920C();

    sub_1D1E678EC();
    v17 = sub_1D1E6926C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1D1E6904C() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A7400(uint64_t a1, uint64_t a2)
{
  v75 = sub_1D1E66A7C();
  v4 = *(v75 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v75);
  v73 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v74 = &v54 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v77 = a2 + 56;
  v71 = v4 + 16;
  v64 = v4 + 32;
  v72 = (v4 + 8);
  v63 = v18;
  if (!v17)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v19 = __clz(__rbit64(v17));
    v65 = (v17 - 1) & v17;
LABEL_13:
    v22 = *(*(a1 + 48) + 8 * (v19 | (v13 << 6)));
    v23 = *(a2 + 40);
    sub_1D1E6920C();
    if (v22 == 2)
    {
      v24 = 2;
      goto LABEL_17;
    }

    if (v22 == 1)
    {
      v24 = 0;
LABEL_17:
      MEMORY[0x1D3892850](v24);
      goto LABEL_20;
    }

    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
    if (v22)
    {

      sub_1D176D4E8(v78, v22);
    }

LABEL_20:
    v25 = sub_1D1E6926C();
    v26 = -1 << *(a2 + 32);
    v27 = v25 & ~v26;
    if (((*(v77 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
LABEL_66:
      sub_1D1771B10(v22);
      return 0;
    }

    v76 = ~v26;
    v67 = v22 - 1;
    v70 = v22 + 56;
    while (1)
    {
      v28 = *(*(a2 + 48) + 8 * v27);
      if (v28 == 2)
      {
        v29 = 2;
        if (v22 == 2)
        {
          goto LABEL_61;
        }

        sub_1D1771B24(v22);
        v30 = 2;
        goto LABEL_30;
      }

      if (v28 == 1)
      {
        v29 = 1;
        if (v22 == 1)
        {
          goto LABEL_61;
        }

        sub_1D1771B24(v22);
        v30 = 1;
        goto LABEL_30;
      }

      if (v67 < 2)
      {
        goto LABEL_29;
      }

      if (v28)
      {
        break;
      }

      sub_1D1771B24(v22);
      sub_1D1771B24(v22);
      sub_1D1771B24(0);
      sub_1D1771B10(0);
      sub_1D1771B10(v22);
      v28 = v22;
      if (!v22)
      {
        v29 = 0;
        goto LABEL_62;
      }

LABEL_32:
      sub_1D1771B10(v28);
      v27 = (v27 + 1) & v76;
      if (((*(v77 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (!v22)
    {
      sub_1D1771B24(0);
      sub_1D1771B24(0);
      sub_1D1771B24(v28);
      v30 = v28;
      v28 = 0;
      goto LABEL_31;
    }

    if (v28 != v22)
    {
      if (*(v28 + 16) == *(v22 + 16))
      {
        v66 = a1;
        v31 = v12;
        v32 = v4;
        v57 = a2;
        v33 = *(v28 + 56);
        v54 = v28 + 56;
        v34 = 1 << *(v28 + 32);
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v36 = v35 & v33;
        sub_1D1771B24(v22);
        sub_1D1771B24(v28);
        sub_1D1771B24(v22);
        result = sub_1D1771B24(v28);
        v37 = 0;
        v38 = (v34 + 63) >> 6;
        v55 = v38;
        v59 = v32;
        v62 = v31;
        v61 = v13;
        v60 = v14;
        if (!v36)
        {
LABEL_43:
          v40 = v37;
          v4 = v32;
          v12 = v31;
          a1 = v66;
          while (1)
          {
            v37 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_69;
            }

            if (v37 >= v38)
            {
              sub_1D1771B10(v22);
              sub_1D1771B10(v28);
              sub_1D1771B10(v22);
              v29 = v22;
              a2 = v57;
              goto LABEL_61;
            }

            v41 = *(v54 + 8 * v37);
            ++v40;
            if (v41)
            {
              v58 = (v41 - 1) & v41;
              v39 = __clz(__rbit64(v41)) | (v37 << 6);
              goto LABEL_48;
            }
          }
        }

        while (1)
        {
          v58 = (v36 - 1) & v36;
          v39 = __clz(__rbit64(v36)) | (v37 << 6);
          v4 = v32;
          v12 = v31;
          a1 = v66;
LABEL_48:
          v42 = *(v4 + 72);
          v43 = *(v28 + 48) + v42 * v39;
          v44 = v75;
          v68 = *(v4 + 16);
          v69 = v42;
          v68(v12, v43, v75);
          (*(v4 + 32))(v74, v12, v44);
          v45 = *(v22 + 40);
          sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8]);
          v46 = sub_1D1E676DC();
          v47 = -1 << *(v22 + 32);
          v48 = v46 & ~v47;
          if (((*(v70 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
            break;
          }

          v56 = v72 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v49 = ~v47;
          while (1)
          {
            v50 = v73;
            v51 = v75;
            v68(v73, *(v22 + 48) + v48 * v69, v75);
            sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8]);
            v52 = sub_1D1E6775C();
            v53 = *v72;
            (*v72)(v50, v51);
            if (v52)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v70 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              a1 = v66;
              v4 = v59;
              v53(v74, v75);
              goto LABEL_58;
            }
          }

          result = (v53)(v74, v75);
          v32 = v59;
          v31 = v62;
          v13 = v61;
          v14 = v60;
          v38 = v55;
          v36 = v58;
          if (!v58)
          {
            goto LABEL_43;
          }
        }

        (*v72)(v74, v75);
LABEL_58:
        sub_1D1771B10(v22);
        sub_1D1771B10(v28);
        v30 = v22;
        a2 = v57;
        v12 = v62;
        v13 = v61;
        v14 = v60;
        goto LABEL_31;
      }

LABEL_29:
      sub_1D1771B24(v22);
      sub_1D1771B24(v28);
      v30 = v28;
LABEL_30:
      v28 = v22;
LABEL_31:
      sub_1D1771B10(v30);
      goto LABEL_32;
    }

    v28 = v22;
    v29 = v22;
LABEL_61:
    sub_1D1771B10(v28);
LABEL_62:
    result = sub_1D1771B10(v29);
    v18 = v63;
    v17 = v65;
    if (v65)
    {
      continue;
    }

    break;
  }

LABEL_8:
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
      return 1;
    }

    v21 = *(v14 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v65 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1D17A7B94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) == *(a2 + 16))
  {
    v2 = 0;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    v8 = a2 + 56;
LABEL_7:
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      goto LABEL_14;
    }

    v10 = v2;
    do
    {
      v2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v2 >= v7)
      {
        return 1;
      }

      v11 = *(v3 + 8 * v2);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v6 = (v11 - 1) & v11;
LABEL_14:
    v12 = result;
    v13 = *(*(result + 48) + (v9 | (v2 << 6)));
    v14 = a2;
    v15 = *(a2 + 40);
    sub_1D1E6920C();
    v16 = v13 >> 6;
    sub_1D1E6923C();
    sub_1D1E678EC();
    v17 = sub_1D1E6926C();
    v18 = -1 << *(v14 + 32);
    v19 = v17 & ~v18;
    if ((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      a2 = v14;
      v20 = ~v18;
      result = v12;
      do
      {
        v21 = *(*(v14 + 48) + v19);
        if (v21 >> 6)
        {
          if (v21 >> 6 == 1)
          {
            if (v16 == 1)
            {
              goto LABEL_16;
            }
          }

          else if (v16 == 2)
          {
LABEL_16:
            if (((v21 ^ v13) & 0x3F) == 0)
            {
              goto LABEL_7;
            }
          }
        }

        else if (v13 <= 0x3F && v21 == v13)
        {
          goto LABEL_7;
        }

        v19 = (v19 + 1) & v20;
      }

      while (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1D17A7DC0(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_1D1E691FC();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A7F14(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1D1E6920C();
    v15 = dword_1D1E735CC[v13];
    sub_1D1E6924C();
    result = sub_1D1E6926C();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (dword_1D1E735CC[*(*(a2 + 48) + v17)] != v15)
    {
      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8098(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 2 * v13);
    result = MEMORY[0x1D3892820](*(a2 + 40), *(*(v3 + 48) + 2 * v13), 2);
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 2 * v16) != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A81F0(uint64_t a1, uint64_t a2)
{
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v4 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v66 - v5;
  v80 = sub_1D1E66A7C();
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v66 - v11;
  v12 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v66 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v66 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v66 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v31 = &v66 - v30;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v32 = 0;
  v33 = a1 + 56;
  v34 = 1 << *(a1 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(a1 + 56);
  v37 = (v34 + 63) >> 6;
  v75 = (v7 + 32);
  v79 = (v7 + 8);
  v84 = a2 + 56;
  v81 = a2;
  v73 = v29;
  v70 = a1;
  v69 = v28;
  v76 = v26;
  v68 = v31;
  v67 = a1 + 56;
  v66 = v37;
  if (!v36)
  {
    goto LABEL_8;
  }

  do
  {
    v38 = __clz(__rbit64(v36));
    v71 = (v36 - 1) & v36;
LABEL_13:
    v72 = v32;
    v41 = *(a1 + 48);
    v83 = *(v28 + 72);
    sub_1D17B2FB0(v41 + v83 * (v38 | (v32 << 6)), v31, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D17B3078(v31, v26, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v42 = *(a2 + 40);
    sub_1D1E6920C();
    v43 = v26;
    v44 = v73;
    sub_1D17B2FB0(v43, v73, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v45 = v74;
      v46 = v80;
      (*v75)(v74, v44, v80);
      MEMORY[0x1D3892850](1);
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v79)(v45, v46);
    }

    else
    {
      v47 = *v44;
      v48 = v44[1];
      MEMORY[0x1D3892850](0);
      sub_1D1E678EC();
      a2 = v81;
    }

    v49 = sub_1D1E6926C();
    v50 = -1 << *(a2 + 32);
    v51 = v49 & ~v50;
    v26 = v76;
    if (((*(v84 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
    {
LABEL_37:
      sub_1D17B3018(v26, type metadata accessor for StaticAccessory.DeviceIdentifier);
      return 0;
    }

    v82 = ~v50;
    while (1)
    {
      sub_1D17B2FB0(*(a2 + 48) + v51 * v83, v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v52 = &v6[*(v85 + 48)];
      sub_1D17B2FB0(v22, v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
      sub_1D17B2FB0(v26, v52, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D17B2FB0(v6, v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = v12;
        v54 = v19;
        v55 = v16;
        v56 = v77;
        v57 = v80;
        (*v75)(v77, v52, v80);
        v78 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v58 = *v79;
        v59 = v56;
        v16 = v55;
        v19 = v54;
        v12 = v53;
        v26 = v76;
        (*v79)(v59, v57);
        sub_1D17B3018(v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v58(v16, v57);
        if (v78)
        {
          goto LABEL_34;
        }

LABEL_31:
        sub_1D17B3018(v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
        a2 = v81;
        goto LABEL_20;
      }

      sub_1D17B3018(v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
      (*v79)(v16, v80);
LABEL_19:
      sub_1D1741A30(v6, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_20:
      v51 = (v51 + 1) & v82;
      if (((*(v84 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_1D17B2FB0(v6, v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v61 = *v19;
    v60 = v19[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17B3018(v22, type metadata accessor for StaticAccessory.DeviceIdentifier);

      a2 = v81;
      goto LABEL_19;
    }

    v62 = *v52;
    v63 = *(v52 + 1);
    if (v61 != v62 || v60 != v63)
    {
      v65 = sub_1D1E6904C();

      sub_1D17B3018(v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (v65)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    sub_1D17B3018(v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_34:
    sub_1D17B3018(v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
    result = sub_1D17B3018(v26, type metadata accessor for StaticAccessory.DeviceIdentifier);
    a2 = v81;
    a1 = v70;
    v28 = v69;
    v31 = v68;
    v32 = v72;
    v33 = v67;
    v37 = v66;
    v36 = v71;
  }

  while (v71);
LABEL_8:
  v39 = v32;
  while (1)
  {
    v32 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v32 >= v37)
    {
      return 1;
    }

    v40 = *(v33 + 8 * v32);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v71 = (v40 - 1) & v40;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8A48(uint64_t result, uint64_t a2)
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
  v27 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v28 = v8;
  v29 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    v15 = sub_1D1CDA80C();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = *(*(a2 + 48) + v17);
      if (v19 > 3)
      {
        if (*(*(a2 + 48) + v17) > 5u)
        {
          if (v19 == 6)
          {
            v22 = "17-A590-755E1AAC02AE";
            if (v13 <= 3)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v22 = "73-8FBD-0E8978A33403";
            if (v13 <= 3)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v24 = v19 == 4;
          v22 = "60-AD68-D91053B75F44";
          if (!v24)
          {
            v22 = "7E-BE63-1D00B1500545";
          }

          if (v13 <= 3)
          {
LABEL_24:
            if (v13 > 1)
            {
              v23 = "73-A058-C5E64BC487B2";
              if (v13 != 2)
              {
                v23 = "CE-986D-63B28F62C9E3";
              }
            }

            else
            {
              v23 = "00-8000-0026BB765291";
              if (v13)
              {
                v23 = "13-AA62-01754F256DD5";
              }
            }

            goto LABEL_40;
          }
        }
      }

      else
      {
        v20 = "73-A058-C5E64BC487B2";
        if (v19 != 2)
        {
          v20 = "CE-986D-63B28F62C9E3";
        }

        v21 = "00-8000-0026BB765291";
        if (*(*(a2 + 48) + v17))
        {
          v21 = "13-AA62-01754F256DD5";
        }

        if (*(*(a2 + 48) + v17) <= 1u)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        if (v13 <= 3)
        {
          goto LABEL_24;
        }
      }

      v23 = "17-A590-755E1AAC02AE";
      if (v13 != 6)
      {
        v23 = "73-8FBD-0E8978A33403";
      }

      v25 = "60-AD68-D91053B75F44";
      if (v13 != 4)
      {
        v25 = "7E-BE63-1D00B1500545";
      }

      if (v13 <= 5)
      {
        v23 = v25;
      }

LABEL_40:
      if ((v22 | 0x8000000000000000) == (v23 | 0x8000000000000000))
      {
        break;
      }

      v26 = sub_1D1E6904C();

      if (v26)
      {
        goto LABEL_50;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_50:
    v8 = v28;
    v3 = v29;
    v7 = v30;
  }

  while (v30);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v27 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8D54(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v13);
    result = sub_1D1E6926C();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (v13 != *(*(a2 + 48) + v16))
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8EC4(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v13);
    result = sub_1D1E6926C();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A9034(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v33 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v31 = (v7 - 1) & v7;
LABEL_13:
      v12 = (*(result + 48) + 32 * (v9 | (v3 << 6)));
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      v17 = *(a2 + 40);
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v13);

      sub_1D1E678EC();
      v32 = v16;
      sub_1D176D34C(v34, v16);
      v18 = sub_1D1E6926C();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v33 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      while (1)
      {
        v24 = (*(a2 + 48) + 32 * v20);
        if (*v24 == v13)
        {
          v25 = v24[3];
          v26 = v24[1] == v14 && v24[2] == v15;
          if (v26 || (v27 = v24[2], (sub_1D1E6904C() & 1) != 0))
          {

            v23 = sub_1D17A7B94(v22, v32);

            if (v23)
            {
              break;
            }
          }
        }

        v20 = (v20 + 1) & v21;
        if (((*(v33 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v4 = v29;
      result = v30;
      v8 = v28;
      v7 = v31;
      if (!v31)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A9294(uint64_t a1, uint64_t a2)
{
  v120 = type metadata accessor for Event.CharacteristicEvent();
  v4 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event.TimeEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v122 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438E0, &qword_1D1E72978);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v105 - v12;
  v131 = type metadata accessor for Event();
  v14 = *(*(v131 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v131);
  v127 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v105 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v105 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v105 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v30 = &v105 - v29;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v31 = 0;
  v32 = a1 + 56;
  v33 = 1 << *(a1 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(a1 + 56);
  v36 = (v33 + 63) >> 6;
  v130 = a2 + 56;
  v121 = v6;
  v126 = v10;
  v123 = v28;
  v125 = v25;
  v112 = a1 + 56;
  v111 = v36;
  if (!v35)
  {
    goto LABEL_8;
  }

  do
  {
    v37 = __clz(__rbit64(v35));
    v106 = (v35 - 1) & v35;
LABEL_13:
    v107 = v31;
    v110 = a1;
    v40 = *(a1 + 48);
    v109 = v27;
    v129 = *(v27 + 72);
    sub_1D17B2FB0(v40 + v129 * (v37 | (v31 << 6)), v30, type metadata accessor for Event);
    v108 = v30;
    sub_1D17B3078(v30, v25, type metadata accessor for Event);
    v41 = *(a2 + 40);
    sub_1D1E6920C();
    Event.hash(into:)(&v135);
    v42 = sub_1D1E6926C();
    v43 = -1 << *(a2 + 32);
    v44 = v42 & ~v43;
    if (((*(v130 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
LABEL_84:
      sub_1D17B3018(v25, type metadata accessor for Event);
      return 0;
    }

    v128 = ~v43;
    v118 = a2;
    while (1)
    {
      sub_1D17B2FB0(*(a2 + 48) + v44 * v129, v22, type metadata accessor for Event);
      v45 = &v13[*(v10 + 48)];
      sub_1D17B2FB0(v22, v13, type metadata accessor for Event);
      sub_1D17B2FB0(v25, v45, type metadata accessor for Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v60 = v127;
        sub_1D17B2FB0(v13, v127, type metadata accessor for Event);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v61 = v45;
          v62 = v121;
          sub_1D17B3078(v61, v121, type metadata accessor for Event.CharacteristicEvent);
          if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
          {
            goto LABEL_68;
          }

          v63 = *(v120 + 20);
          v64 = *(v60 + v63);
          LOBYTE(v63) = *(v62 + v63);
          LOBYTE(v135) = v64;
          LOBYTE(v132) = v63;
          v65 = CharacteristicKind.rawValue.getter();
          v67 = v66;
          if (v65 == CharacteristicKind.rawValue.getter() && v67 == v68)
          {

            v62 = v121;
            v69 = v127;
            goto LABEL_49;
          }

          v79 = sub_1D1E6904C();

          v62 = v121;
          v69 = v127;
          if (v79)
          {
LABEL_49:
            v80 = *(v120 + 24);
            v81 = v69 + v80;
            v82 = *v81;
            v83 = *(v81 + 8);
            v84 = *(v81 + 16);
            v85 = v62 + v80;
            v87 = *v85;
            v86 = *(v85 + 8);
            v88 = *(v85 + 16);
            v119 = *v81;
            if (v84 >> 6)
            {
              if (v84 >> 6 == 1)
              {
                if ((v88 & 0xC0) != 0x40)
                {
LABEL_67:
                  v113 = v22;
                  v94 = v87;
                  v95 = v82;
                  v96 = v86;
                  v97 = v88;
                  sub_1D179178C(v95, v83, v84, sub_1D1778244);
                  sub_1D179178C(v94, v96, v97, sub_1D1778244);
                  sub_1D179178C(*&v119, v83, v84, sub_1D1778284);
                  v98 = v94;
                  v22 = v113;
                  v99 = v97;
                  v25 = v125;
                  sub_1D179178C(v98, v96, v99, sub_1D1778284);
                  v10 = v126;
                  goto LABEL_68;
                }
              }

              else if ((v88 & 0xC0) != 0x80)
              {
                goto LABEL_67;
              }

              *&v135 = v82;
              *(&v135 + 1) = v83;
              v136 = v84 & 0x3F;
              v132 = v87;
              v133 = v86;
              v134 = v88 & 0x3F;
            }

            else
            {
              if (v88 >= 0x40)
              {
                goto LABEL_67;
              }

              *&v135 = v82;
              *(&v135 + 1) = v83;
              v136 = v84;
              v132 = v87;
              v133 = v86;
              v134 = v88;
            }

            v117 = v87;
            v115 = v86;
            v116 = v88;
            sub_1D179178C(v87, v86, v88, sub_1D1778244);
            sub_1D179178C(v82, v83, v84, sub_1D1778244);
            v114 = v84;
            sub_1D179178C(v82, v83, v84, sub_1D1778244);
            v89 = v115;
            sub_1D179178C(v117, v115, v116, sub_1D1778244);
            LODWORD(v113) = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v135, &v132);
            v90 = *&v119;
            sub_1D179178C(*&v119, v83, v84, sub_1D1778284);
            v91 = v117;
            v92 = v89;
            v93 = v116;
            sub_1D179178C(v117, v92, v116, sub_1D1778284);
            a2 = v118;
            sub_1D17B3018(v62, type metadata accessor for Event.CharacteristicEvent);
            sub_1D17B3018(v22, type metadata accessor for Event);
            sub_1D179178C(v91, v115, v93, sub_1D1778284);
            sub_1D179178C(v90, v83, v114, sub_1D1778284);
            v10 = v126;
            if (v113)
            {
              sub_1D17B3018(v25, type metadata accessor for Event);
              sub_1D17B3018(v127, type metadata accessor for Event.CharacteristicEvent);
              v104 = v13;
              goto LABEL_81;
            }
          }

          else
          {
LABEL_68:
            sub_1D17B3018(v62, type metadata accessor for Event.CharacteristicEvent);
            sub_1D17B3018(v22, type metadata accessor for Event);
          }

          sub_1D17B3018(v127, type metadata accessor for Event.CharacteristicEvent);
LABEL_70:
          sub_1D17B3018(v13, type metadata accessor for Event);
          goto LABEL_18;
        }

        sub_1D17B3018(v22, type metadata accessor for Event);
        sub_1D17B3018(v60, type metadata accessor for Event.CharacteristicEvent);
        goto LABEL_17;
      }

      v47 = a2;
      v48 = v123;
      sub_1D17B2FB0(v13, v123, type metadata accessor for Event);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48);
      v50 = *(v48 + v49);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1D17B3018(v22, type metadata accessor for Event);
        sub_1D17B3018(v48, type metadata accessor for Event.TimeEvent);
        v25 = v125;
        goto LABEL_16;
      }

      v51 = *(v45 + v49);
      v52 = v45;
      v53 = v122;
      sub_1D17B3078(v52, v122, type metadata accessor for Event.TimeEvent);
      v54 = _s13HomeDataModel5EventO04TimeD0O2eeoiySbAE_AEtFZ_0(v48, v53);
      sub_1D17B3018(v53, type metadata accessor for Event.TimeEvent);
      sub_1D17B3018(v22, type metadata accessor for Event);
      sub_1D17B3018(v48, type metadata accessor for Event.TimeEvent);
      if (v54)
      {
        v25 = v125;
        if (v50 == v51)
        {
          sub_1D17B3018(v125, type metadata accessor for Event);
          v104 = v13;
          v10 = v126;
          a2 = v47;
          goto LABEL_81;
        }

        sub_1D17B3018(v13, type metadata accessor for Event);
        v10 = v126;
      }

      else
      {
        sub_1D17B3018(v13, type metadata accessor for Event);
        v10 = v126;
        v25 = v125;
      }

      a2 = v47;
LABEL_18:
      v44 = (v44 + 1) & v128;
      if (((*(v130 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    v47 = a2;
    v55 = v124;
    sub_1D17B2FB0(v13, v124, type metadata accessor for Event);
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D17B3018(v22, type metadata accessor for Event);
      sub_1D1771BD4(v56, v57, v58, v59);
      v10 = v126;
LABEL_16:
      a2 = v47;
LABEL_17:
      sub_1D1741A30(v13, &qword_1EC6438E0, &qword_1D1E72978);
      goto LABEL_18;
    }

    v71 = *v45;
    v70 = *(v45 + 8);
    v119 = *(v45 + 16);
    v72 = *(v45 + 24);
    if (v59)
    {
      sub_1D17B3018(v22, type metadata accessor for Event);
      if (v72)
      {
        v73 = v70;
        v74 = *&v70;
        v75 = *&v119;
        v76 = v119;
        sub_1D1771BD4(v56, v57, v58, 1);
        sub_1D1771BD4(v71, v73, v75, 1);
        v78 = *&v56 == *&v71 && *&v57 == v74 && *&v58 == v76;
        a2 = v118;
        v10 = v126;
        v25 = v125;
        if (v78)
        {
          goto LABEL_80;
        }

        goto LABEL_70;
      }

      sub_1D1771BD4(v56, v57, v58, 1);
      sub_1D1771BD4(v71, v70, *&v119, 0);
LABEL_54:
      a2 = v118;
      v10 = v126;
LABEL_55:
      v25 = v125;
      goto LABEL_70;
    }

    if (v72)
    {
      sub_1D1771BD4(v56, v57, v58, 0);
      sub_1D1771BD4(v71, v70, *&v119, 1);
      sub_1D17B3018(v22, type metadata accessor for Event);
      goto LABEL_54;
    }

    v10 = v126;
    if (v56 != v71)
    {
      sub_1D1771BD4(v56, v57, v58, 0);
      sub_1D1771BD4(v71, v70, *&v119, 0);
      sub_1D17B3018(v22, type metadata accessor for Event);
      a2 = v118;
      goto LABEL_55;
    }

    if (*&v57 != 0.0)
    {
      v25 = v125;
      if (v57 != 1)
      {
        v100 = v70;
        v101 = v70;
        if (v70 >= 2)
        {
          v103 = *&v119;
          sub_1D17979F0(v56, v101, *&v119, 0);
          sub_1D17979F0(v56, v57, v58, 0);
          sub_1D17979F0(v56, v100, v103, 0);
          sub_1D17979F0(v56, v57, v58, 0);
          LODWORD(v117) = sub_1D17A6E98(v57, v100);
          sub_1D1771BE4(v57);
          sub_1D1771BE4(v100);
          sub_1D1771BD4(v56, v57, v58, 0);
          sub_1D1771BD4(v56, v100, v103, 0);
          sub_1D1771BD4(v56, v100, v103, 0);
          sub_1D1771BD4(v56, v57, v58, 0);
          sub_1D17B3018(v22, type metadata accessor for Event);
          a2 = v118;
          if (v117)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v102 = *&v119;
          sub_1D17979F0(v56, v101, *&v119, 0);
          sub_1D17979F0(v56, v57, v58, 0);
          sub_1D17979F0(v56, v100, v102, 0);
          sub_1D17979F0(v56, v57, v58, 0);
          sub_1D1771BE4(v57);
          sub_1D1771BE4(v100);
          sub_1D1771BD4(v56, v57, v58, 0);
          sub_1D1771BD4(v56, v100, v102, 0);
          sub_1D1771BD4(v56, v100, v102, 0);
          sub_1D1771BD4(v56, v57, v58, 0);
          sub_1D17B3018(v22, type metadata accessor for Event);
          a2 = v118;
        }

        goto LABEL_70;
      }

      sub_1D17974E0(v70);
      sub_1D1771BD4(v56, 1uLL, v58, 0);
      sub_1D1771BD4(v56, v70, *&v119, 0);
      sub_1D17B3018(v22, type metadata accessor for Event);
      sub_1D1771BE4(1uLL);
      a2 = v118;
      if (v70 == 1)
      {
        goto LABEL_79;
      }

      goto LABEL_73;
    }

    sub_1D17974E0(v70);
    sub_1D1771BD4(v56, 0, v58, 0);
    sub_1D1771BD4(v56, v70, *&v119, 0);
    sub_1D17B3018(v22, type metadata accessor for Event);
    sub_1D1771BE4(0);
    a2 = v118;
    v25 = v125;
    if (*&v70 != 0.0)
    {
LABEL_73:
      sub_1D1771BE4(v70);
      goto LABEL_70;
    }

LABEL_79:
    sub_1D1771BE4(v57);
LABEL_80:
    sub_1D17B3018(v13, type metadata accessor for Event);
    v104 = v25;
LABEL_81:
    result = sub_1D17B3018(v104, type metadata accessor for Event);
    a1 = v110;
    v27 = v109;
    v30 = v108;
    v31 = v107;
    v32 = v112;
    v36 = v111;
    v35 = v106;
  }

  while (v106);
LABEL_8:
  v38 = v31;
  while (1)
  {
    v31 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v31 >= v36)
    {
      return 1;
    }

    v39 = *(v32 + 8 * v31);
    ++v38;
    if (v39)
    {
      v37 = __clz(__rbit64(v39));
      v106 = (v39 - 1) & v39;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17AA3B4(uint64_t a1, uint64_t a2)
{
  v165 = type metadata accessor for ActionCommand(0);
  v167 = *(v165 - 1);
  v4 = *(v167 + 64);
  v5 = MEMORY[0x1EEE9AC00](v165);
  v7 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v166 = &v143 - v8;
  v162 = type metadata accessor for Action.NaturalLightAction(0);
  v9 = *(*(v162 - 1) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v172 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v143 - v18;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v20 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v143 - v21;
  v159 = type metadata accessor for Action.CharacteristicAction(0);
  v22 = *(*(v159 - 1) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v168 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643088, &qword_1D1E71158);
  v24 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v26 = &v143 - v25;
  v176 = type metadata accessor for Action();
  v27 = *(*(v176 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v176);
  v175 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v173 = &v143 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v169 = &v143 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v174 = &v143 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v181 = &v143 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v180 = &v143 - v39;
  result = MEMORY[0x1EEE9AC00](v38);
  v43 = &v143 - v42;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v44 = 0;
  v45 = a1 + 56;
  v46 = 1 << *(a1 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(a1 + 56);
  v49 = (v46 + 63) >> 6;
  v179 = a2 + 56;
  v155 = (v12 + 48);
  v144 = (v12 + 32);
  v153 = (v12 + 8);
  v164 = a2;
  v170 = v7;
  v156 = v11;
  v154 = v19;
  v145 = v15;
  v152 = a1 + 56;
  v151 = v49;
  while (2)
  {
    v50 = v171;
    if (v48)
    {
      v51 = __clz(__rbit64(v48));
      v146 = (v48 - 1) & v48;
    }

    else
    {
      v52 = v44;
      do
      {
        v44 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
          goto LABEL_117;
        }

        if (v44 >= v49)
        {
          return 1;
        }

        v53 = *(v45 + 8 * v44);
        ++v52;
      }

      while (!v53);
      v51 = __clz(__rbit64(v53));
      v146 = (v53 - 1) & v53;
    }

    v147 = v44;
    v150 = a1;
    v54 = *(a1 + 48);
    v149 = v41;
    v178 = *(v41 + 72);
    v55 = v43;
    sub_1D17B2FB0(v54 + v178 * (v51 | (v44 << 6)), v43, type metadata accessor for Action);
    v148 = v55;
    sub_1D17B3078(v55, v180, type metadata accessor for Action);
    v56 = *(a2 + 40);
    sub_1D1E6920C();
    Action.hash(into:)(&v185);
    v57 = sub_1D1E6926C();
    v58 = -1 << *(a2 + 32);
    v59 = v57 & ~v58;
    if (((*(v179 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
    {
LABEL_114:
      sub_1D17B3018(v180, type metadata accessor for Action);
      return 0;
    }

    v177 = ~v58;
    while (1)
    {
      v60 = v181;
      sub_1D17B2FB0(*(a2 + 48) + v59 * v178, v181, type metadata accessor for Action);
      v61 = &v26[*(v50 + 48)];
      sub_1D17B2FB0(v60, v26, type metadata accessor for Action);
      sub_1D17B2FB0(v180, v61, type metadata accessor for Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v63 = v174;
          sub_1D17B2FB0(v26, v174, type metadata accessor for Action);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1D17B3018(v181, type metadata accessor for Action);
            v64 = type metadata accessor for Action.CharacteristicAction;
LABEL_52:
            sub_1D17B3018(v63, v64);
            goto LABEL_17;
          }

          v93 = v168;
          sub_1D17B3078(v61, v168, type metadata accessor for Action.CharacteristicAction);
          if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
          {
            goto LABEL_98;
          }

          v94 = v159[5];
          v95 = *(v63 + v94);
          LOBYTE(v94) = *(v93 + v94);
          LOBYTE(v185) = v95;
          LOBYTE(v182) = v94;
          v96 = CharacteristicKind.rawValue.getter();
          v98 = v97;
          if (v96 == CharacteristicKind.rawValue.getter() && v98 == v99)
          {

            v100 = v168;
            v101 = v174;
          }

          else
          {
            v102 = sub_1D1E6904C();

            v100 = v168;
            v50 = v171;
            v101 = v174;
            if ((v102 & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          v103 = v159;
          v104 = v159[6];
          v105 = *(v101 + v104 + 8);
          v106 = *(v101 + v104 + 16);
          *&v185 = *(v101 + v104);
          *(&v185 + 1) = v105;
          v186 = v106;
          v107 = v100 + v104;
          v108 = v100;
          v109 = v101;
          v111 = *(v107 + 8);
          v112 = *(v107 + 16);
          v182 = *v107;
          v110 = v182;
          v183 = v111;
          v184 = v112;
          sub_1D1778244(v185, v105, v106);
          sub_1D1778244(v110, v111, v112);
          LOBYTE(v110) = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v185, &v182);
          sub_1D1778284(v182, v183, v184);
          sub_1D1778284(v185, *(&v185 + 1), v186);
          if ((v110 & 1) == 0)
          {
            sub_1D17B3018(v181, type metadata accessor for Action);
            v50 = v171;
LABEL_68:
            v67 = type metadata accessor for Action.CharacteristicAction;
            sub_1D17B3018(v168, type metadata accessor for Action.CharacteristicAction);
            v68 = &v188;
            goto LABEL_69;
          }

          v113 = v103[7];
          v114 = *(v157 + 48);
          v115 = v158;
          sub_1D17783E0(v109 + v113, v158);
          sub_1D17783E0(v108 + v113, v115 + v114);
          v116 = *v155;
          v117 = v156;
          if ((*v155)(v115, 1, v156) == 1)
          {
            if (v116(v115 + v114, 1, v117) == 1)
            {
              sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
              v50 = v171;
              goto LABEL_92;
            }

            sub_1D17B3018(v181, type metadata accessor for Action);
            goto LABEL_90;
          }

          v120 = v154;
          sub_1D17783E0(v115, v154);
          if (v116(v115 + v114, 1, v117) == 1)
          {
            sub_1D17B3018(v181, type metadata accessor for Action);
            (*v153)(v120, v117);
LABEL_90:
            v50 = v171;
            sub_1D1741A30(v115, &qword_1EC642980, &unk_1D1E6E6E0);
            goto LABEL_68;
          }

          v128 = v115 + v114;
          v129 = v145;
          (*v144)(v145, v128, v117);
          sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v130 = sub_1D1E6775C();
          v131 = *v153;
          (*v153)(v129, v117);
          v131(v120, v117);
          sub_1D1741A30(v158, &qword_1EC642590, qword_1D1E71260);
          v50 = v171;
          if (v130)
          {
LABEL_92:
            v132 = v159[8];
            v133 = (v174 + v132);
            v134 = *(v174 + v132 + 8);
            v135 = (v168 + v132);
            v136 = v135[1];
            if (!v134)
            {
              sub_1D17B3018(v181, type metadata accessor for Action);
              if (!v136)
              {
                goto LABEL_110;
              }

              goto LABEL_68;
            }

            if (v136)
            {
              if (*v133 != *v135 || v134 != v136)
              {
                v137 = v135[1];
                v138 = sub_1D1E6904C();
                sub_1D17B3018(v181, type metadata accessor for Action);
                if (v138)
                {
                  goto LABEL_110;
                }

                goto LABEL_68;
              }

              sub_1D17B3018(v181, type metadata accessor for Action);
LABEL_110:
              v141 = type metadata accessor for Action.CharacteristicAction;
              sub_1D17B3018(v168, type metadata accessor for Action.CharacteristicAction);
              v142 = &v188;
              goto LABEL_111;
            }
          }

LABEL_98:
          sub_1D17B3018(v181, type metadata accessor for Action);
          goto LABEL_68;
        }

        v69 = v169;
        sub_1D17B2FB0(v26, v169, type metadata accessor for Action);
        v70 = *v69;
        v71 = *(v69 + 8);
        v72 = *(v69 + 16);
        v73 = *(v69 + 24);
        v74 = *(v69 + 32);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D17B3018(v181, type metadata accessor for Action);

          v7 = v170;
          goto LABEL_17;
        }

        v75 = *v61;
        v76 = v61[8];
        v77 = *(v61 + 2);
        v78 = v61[24];
        v79 = *(v61 + 4);
        if ((sub_1D17A6E98(v70, v75) & 1) == 0 || (v163 = v75, v71 != v76))
        {
          sub_1D17B3018(v181, type metadata accessor for Action);

          a2 = v164;
          v7 = v170;
          v50 = v171;
          goto LABEL_70;
        }

        if (v73)
        {
          v7 = v170;
          v50 = v171;
          if (!v78)
          {
LABEL_36:
            sub_1D17B3018(v181, type metadata accessor for Action);

            a2 = v164;
LABEL_70:
            sub_1D17B3018(v26, type metadata accessor for Action);
            goto LABEL_18;
          }
        }

        else
        {
          if (v72 == v77)
          {
            v118 = v78;
          }

          else
          {
            v118 = 1;
          }

          v7 = v170;
          v50 = v171;
          if (v118)
          {
            goto LABEL_36;
          }
        }

        if (v74)
        {
          a2 = v164;
          if (v79)
          {

            v119 = sub_1D17A7248(v74, v79);

            sub_1D17B3018(v181, type metadata accessor for Action);

            if (v119)
            {
              goto LABEL_112;
            }
          }

          else
          {
            sub_1D17B3018(v181, type metadata accessor for Action);
          }

          goto LABEL_70;
        }

        sub_1D17B3018(v181, type metadata accessor for Action);

        a2 = v164;
        if (v79)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_70;
        }

        goto LABEL_112;
      }

      v65 = v175;
      if (EnumCaseMultiPayload == 2)
      {
        v63 = v173;
        sub_1D17B2FB0(v26, v173, type metadata accessor for Action);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_1D17B3018(v181, type metadata accessor for Action);
          v64 = type metadata accessor for Action.NaturalLightAction;
          goto LABEL_52;
        }

        sub_1D17B3078(v61, v172, type metadata accessor for Action.NaturalLightAction);
        if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
        {
          goto LABEL_29;
        }

        v66 = v162[5];
        if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*(v63 + v162[6]), *(v172 + v162[6])) & 1) == 0 || *(v63 + v162[7]) != *(v172 + v162[7]))
        {
          goto LABEL_29;
        }

        v121 = v162[8];
        v122 = (v63 + v121);
        v123 = *(v63 + v121 + 8);
        v124 = (v172 + v121);
        v125 = v124[1];
        if (!v123)
        {
          sub_1D17B3018(v181, type metadata accessor for Action);
          if (!v125)
          {
            goto LABEL_108;
          }

          goto LABEL_30;
        }

        if (v125)
        {
          if (*v122 == *v124 && v123 == v125)
          {
            sub_1D17B3018(v181, type metadata accessor for Action);
LABEL_108:
            v141 = type metadata accessor for Action.NaturalLightAction;
            sub_1D17B3018(v172, type metadata accessor for Action.NaturalLightAction);
            v142 = &v187;
LABEL_111:
            sub_1D17B3018(*(v142 - 32), v141);
LABEL_112:
            v139 = v26;
            v140 = v180;
            goto LABEL_105;
          }

          v126 = v124[1];
          v127 = sub_1D1E6904C();
          sub_1D17B3018(v181, type metadata accessor for Action);
          if (v127)
          {
            goto LABEL_108;
          }
        }

        else
        {
LABEL_29:
          sub_1D17B3018(v181, type metadata accessor for Action);
        }

LABEL_30:
        v67 = type metadata accessor for Action.NaturalLightAction;
        sub_1D17B3018(v172, type metadata accessor for Action.NaturalLightAction);
        v68 = &v187;
LABEL_69:
        sub_1D17B3018(*(v68 - 32), v67);
        goto LABEL_70;
      }

      sub_1D17B2FB0(v26, v175, type metadata accessor for Action);
      v80 = *(v65 + 1);
      result = swift_getEnumCaseMultiPayload();
      if (result == 3)
      {
        break;
      }

      sub_1D17B3018(v181, type metadata accessor for Action);

LABEL_17:
      sub_1D1741A30(v26, &qword_1EC643088, &qword_1D1E71158);
LABEL_18:
      v59 = (v59 + 1) & v177;
      if (((*(v179 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    v81 = *(v61 + 1);
    if (*v65 != *v61 || (v82 = *(v81 + 16), v163 = *(v80 + 16), v163 != v82))
    {
LABEL_66:
      sub_1D17B3018(v181, type metadata accessor for Action);

      sub_1D17B3018(v26, type metadata accessor for Action);
      a2 = v164;
      v50 = v171;
      goto LABEL_18;
    }

    if (!v163 || v80 == v81)
    {
LABEL_104:
      sub_1D17B3018(v181, type metadata accessor for Action);

      v139 = v180;
      v140 = v26;
      a2 = v164;
LABEL_105:
      sub_1D17B3018(v139, type metadata accessor for Action);
      result = sub_1D17B3018(v140, type metadata accessor for Action);
      a1 = v150;
      v41 = v149;
      v43 = v148;
      v44 = v147;
      v45 = v152;
      v49 = v151;
      v48 = v146;
      continue;
    }

    break;
  }

  v83 = 0;
  v84 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v161 = v80 + v84;
  v160 = v81 + v84;
  while (v83 < *(v80 + 16))
  {
    v85 = *(v167 + 72) * v83;
    v86 = v166;
    result = sub_1D17B2FB0(v161 + v85, v166, type metadata accessor for ActionCommand);
    if (v83 >= *(v81 + 16))
    {
      goto LABEL_118;
    }

    sub_1D17B2FB0(v160 + v85, v7, type metadata accessor for ActionCommand);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v86 + v165[5]) != *&v7[v165[5]] || *(v86 + v165[6]) != *&v7[v165[6]])
    {
      sub_1D17B3018(v7, type metadata accessor for ActionCommand);
      sub_1D17B3018(v86, type metadata accessor for ActionCommand);
      goto LABEL_66;
    }

    v87 = (v86 + v165[7]);
    v88 = v86;
    v89 = v87[3];
    v90 = v87[4];
    v91 = v165;
    __swift_project_boxed_opaque_existential_1(v87, v89);
    v92 = v91[7];
    v7 = v170;
    LOBYTE(v89) = MatterCommand.isEqual(_:)(&v170[v92], v89, v90);
    sub_1D17B3018(v7, type metadata accessor for ActionCommand);
    result = sub_1D17B3018(v88, type metadata accessor for ActionCommand);
    if ((v89 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (v163 == ++v83)
    {
      goto LABEL_104;
    }
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

void sub_1D17AB954(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1D17B27C8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_1D1E684EC();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_1D1E684FC();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_1D17ABBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v82 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - v11;
  v77 = type metadata accessor for StaticZone();
  v13 = *(*(v77 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v77);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v62 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v62 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v22 = 0;
  v23 = *(a1 + 56);
  v64 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v63 = (v24 + 63) >> 6;
  v81 = v83 + 16;
  v27 = (v83 + 8);
  v74 = a2 + 56;
  v85 = v10;
  v79 = v20;
  v76 = a2;
  v68 = a1;
  v67 = v12;
  v66 = v19;
  v65 = &v62 - v18;
  if (v26)
  {
    while (1)
    {
      v28 = __clz(__rbit64(v26));
      v69 = (v26 - 1) & v26;
LABEL_13:
      v70 = v22;
      v31 = *(a1 + 48);
      v75 = *(v19 + 72);
      sub_1D17B2FB0(v31 + v75 * (v28 | (v22 << 6)), v21, type metadata accessor for StaticZone);
      v32 = v21;
      v33 = v78;
      sub_1D17B3078(v32, v78, type metadata accessor for StaticZone);
      v34 = *(a2 + 40);
      sub_1D1E6920C();
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v35 = v77;
      v36 = (v33 + *(v77 + 20));
      v37 = v36[1];
      v72 = *v36;
      v71 = v37;
      sub_1D1E678EC();
      v38 = *(v33 + *(v35 + 24));
      MEMORY[0x1D3892850](*(v38 + 16));
      v84 = v38;
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = v84 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
        v41 = *(v83 + 72);
        v42 = *(v83 + 16);
        do
        {
          v42(v12, v40, v4);
          sub_1D1E676EC();
          (*v27)(v12, v4);
          v40 += v41;
          --v39;
        }

        while (v39);
      }

      v43 = sub_1D1E6926C();
      v44 = v76;
      v45 = -1 << *(v76 + 32);
      v46 = v43 & ~v45;
      v47 = v85;
      v48 = v79;
      if (((*(v74 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
LABEL_36:
        sub_1D17B3018(v78, type metadata accessor for StaticZone);
        return 0;
      }

      v73 = ~v45;
      while (1)
      {
        sub_1D17B2FB0(*(v44 + 48) + v46 * v75, v48, type metadata accessor for StaticZone);
        if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
        {
          v49 = (v79 + *(v77 + 20));
          result = *v49;
          v50 = *v49 == v72 && v49[1] == v71;
          if (v50 || (result = sub_1D1E6904C(), (result & 1) != 0))
          {
            v51 = *(v79 + *(v77 + 24));
            v52 = *(v51 + 16);
            if (v52 == *(v84 + 16))
            {
              break;
            }
          }
        }

LABEL_18:
        v48 = v79;
        sub_1D17B3018(v79, type metadata accessor for StaticZone);
        v46 = (v46 + 1) & v73;
        v44 = v76;
        if (((*(v74 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v52 && v51 != v84)
      {
        break;
      }

LABEL_33:
      sub_1D17B3018(v79, type metadata accessor for StaticZone);
      result = sub_1D17B3018(v78, type metadata accessor for StaticZone);
      a2 = v76;
      a1 = v68;
      v12 = v67;
      v19 = v66;
      v21 = v65;
      v22 = v70;
      v26 = v69;
      if (!v69)
      {
        goto LABEL_8;
      }
    }

    v53 = 0;
    v54 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v80 = v51 + v54;
    v55 = v84 + v54;
    while (v53 < *(v51 + 16))
    {
      v56 = *(v83 + 72) * v53;
      v57 = *(v83 + 16);
      result = v57(v47, v80 + v56, v4);
      if (v53 >= *(v84 + 16))
      {
        goto LABEL_39;
      }

      v58 = v82;
      v57(v82, v55 + v56, v4);
      sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v59 = sub_1D1E6775C();
      v60 = *v27;
      v61 = v58;
      v47 = v85;
      (*v27)(v61, v4);
      result = (v60)(v47, v4);
      if ((v59 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v52 == ++v53)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_8:
    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v63)
      {
        return 1;
      }

      v30 = *(v64 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v69 = (v30 - 1) & v30;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17AC314(uint64_t a1, uint64_t a2)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FE8, &qword_1D1EB2A90);
  v4 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v43 - v5;
  v7 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v54 = &v43 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v21 = 0;
  v22 = *(a1 + 56);
  v43 = a1 + 56;
  v23 = 1 << *(a1 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v52 = a2 + 56;
  v44 = v26;
  v45 = v20;
  v47 = v18;
  v48 = a1;
  v46 = v14;
  if (v25)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
LABEL_13:
      v30 = *(a1 + 48);
      v31 = *(v18 + 72);
      v50 = v21;
      v51 = v31;
      sub_1D17B2FB0(v30 + v31 * (v27 | (v21 << 6)), v20, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v32 = v54;
      sub_1D17B3078(v20, v54, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v33 = *(a2 + 40);
      sub_1D1E6920C();
      sub_1D17B2FB0(v32, v14, type metadata accessor for WriteInProgressStatusViewModel.ID);
      MEMORY[0x1D3892850](0);
      v34 = sub_1D1E66A7C();
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v35 = *(*(v34 - 8) + 8);
      v35(v14, v34);
      v36 = sub_1D1E6926C();
      v37 = -1 << *(a2 + 32);
      v38 = v36 & ~v37;
      if (((*(v52 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        break;
      }

      v39 = ~v37;
      while (1)
      {
        v40 = a2;
        sub_1D17B2FB0(*(a2 + 48) + v38 * v51, v11, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v41 = *(v53 + 48);
        sub_1D17B2FB0(v11, v6, type metadata accessor for WriteInProgressStatusViewModel.ID);
        sub_1D17B2FB0(v54, &v6[v41], type metadata accessor for WriteInProgressStatusViewModel.ID);
        v42 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D17B3018(v11, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v35(&v6[v41], v34);
        v35(v6, v34);
        if (v42)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        a2 = v40;
        if (((*(v52 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_1D17B3018(v54, type metadata accessor for WriteInProgressStatusViewModel.ID);
      a2 = v40;
      v18 = v47;
      a1 = v48;
      v20 = v45;
      v14 = v46;
      v25 = v49;
      v21 = v50;
      v26 = v44;
      if (!v49)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1D17B3018(v54, type metadata accessor for WriteInProgressStatusViewModel.ID);
    return 0;
  }

LABEL_8:
  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      return 1;
    }

    v29 = *(v43 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v49 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t TriggerBuilder.debugDescription.getter()
{
  v1 = v0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EB9020);
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x1D3890F70](v2, v3);

  MEMORY[0x1D3890F70](0x7665202020200A2CLL, 0xEE00203A73746E65);
  swift_getKeyPath();
  v19 = v0;
  sub_1D1E66CAC();

  swift_beginAccess();
  v4 = v0[5];
  type metadata accessor for Event();
  sub_1D17ADC40(&qword_1EC643578, type metadata accessor for Event);

  v5 = sub_1D1E6819C();
  v7 = v6;

  MEMORY[0x1D3890F70](v5, v7);

  MEMORY[0x1D3890F70](0x6361202020200A2CLL, 0xEF203A736E6F6974);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  v8 = v19[6];
  type metadata accessor for Action();
  sub_1D17ADC40(&qword_1EC643570, type metadata accessor for Action);

  v9 = sub_1D1E6819C();
  v11 = v10;

  MEMORY[0x1D3890F70](v9, v11);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EB9040);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  v12 = v19[7];
  sub_1D1E66A7C();
  sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8]);

  v13 = sub_1D1E6817C();
  v15 = v14;

  MEMORY[0x1D3890F70](v13, v15);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EB9060);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  if (*(v19 + 64))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v1 + 64))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v16, v17);

  MEMORY[0x1D3890F70](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D17ACC98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D17ACD58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1D17ACEA8(v2, v3);
}

uint64_t sub_1D17ACD98()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t type metadata accessor for TriggerBuilder()
{
  result = qword_1EC643C98;
  if (!qword_1EC643C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D17ACEA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_1D1E6904C() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17ACFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void (*sub_1D17AD068(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17ACC48();
  return sub_1D17AD1A0;
}

uint64_t sub_1D17AD1FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1D17AD2E0()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1D17AD394(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

void (*sub_1D17AD4B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AD1AC();
  return sub_1D17AD5F0;
}

uint64_t sub_1D17AD64C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1D17AD730()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 33);
}

uint64_t sub_1D17AD7E4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 33) == v2)
  {
    *(v1 + 33) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

void (*sub_1D17AD908(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AD5FC();
  return sub_1D17ADA40;
}

uint64_t sub_1D17ADA9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D17ADB5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D17ADC88(v4);
}

uint64_t sub_1D17ADB88()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_1D17ADC40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D17ADC88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);

  v5 = sub_1D17A9294(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17ADDD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
}

void (*sub_1D17ADE38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17ADA4C();
  return sub_1D17ADF70;
}

uint64_t sub_1D17ADFCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D17AE08C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D17AE170(v4);
}

uint64_t sub_1D17AE0B8()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_1D17AE170(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);

  v5 = sub_1D17AA3B4(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17AE2B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
}

void (*sub_1D17AE320(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17ADF7C();
  return sub_1D17AE458;
}

uint64_t sub_1D17AE4B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D17AE574(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D17AE68C(v4);
}

uint64_t sub_1D17AE5A0()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1D17AE68C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);

  v5 = sub_1D17A6E98(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17AE7D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  *(a1 + 56) = a2;
}

void (*sub_1D17AE83C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AE464();
  return sub_1D17AE974;
}

uint64_t sub_1D17AE9D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1D17AEAB8()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 64);
}

uint64_t sub_1D17AEB8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1D17AEBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 33) = v2;
  return result;
}

uint64_t sub_1D17AEC88(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 64) == v2)
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

uint64_t sub_1D17AEDAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

void (*sub_1D17AEE00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AE980();
  return sub_1D17AEF38;
}

uint64_t sub_1D17AEF94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_1D17AF078()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1D17AF12C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 65) == v2)
  {
    *(v1 + 65) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

uint64_t sub_1D17AF250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

void (*sub_1D17AF2A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AEF44();
  return sub_1D17AF3DC;
}

void sub_1D17AF3E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v1);
}

uint64_t TriggerBuilder.__allocating_init(name:events:actions:activatedScenes:executesOnce:enabled:deletesAfterExecution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  *(v19 + 32) = 1;
  sub_1D1E66CDC();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  *(v19 + 64) = a6;
  *(v19 + 33) = a7;
  *(v19 + 65) = a8;
  return v19;
}

uint64_t TriggerBuilder.init(name:events:actions:activatedScenes:executesOnce:enabled:deletesAfterExecution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 32) = 1;
  sub_1D1E66CDC();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 33) = a7;
  *(v8 + 65) = a8;
  return v8;
}

uint64_t TriggerBuilder.__allocating_init(trigger:)(void *a1)
{
  v2 = type metadata accessor for StaticTrigger();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  StaticTrigger.init(trigger:)(v6, v5);
  v7 = _s13HomeDataModel14TriggerBuilderC06staticD0AcA06StaticD0V_tcfC_0(v5);

  return v7;
}

char *TriggerBuilder.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 6);

  v4 = *(v0 + 7);

  v5 = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  v6 = sub_1D1E66CEC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t TriggerBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 6);

  v4 = *(v0 + 7);

  v5 = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  v6 = sub_1D1E66CEC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t TriggerBuilder.createNewTrigger(in:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1D1E66FDC();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17AF83C, 0, 0);
}

uint64_t sub_1D17AF83C()
{
  v12 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v11 = 0;
  sub_1D1E66FCC();
  v0[24] = _s2os6LoggerV13HomeDataModelE11AutomationsO8didBegin_7trigger2idAA23OSSignpostIntervalStateCAF9OperationO_AD14TriggerBuilderCAA0K2IDVtFZ_0(&v11, v4, v1);
  (*(v2 + 8))(v1, v3);
  v6 = sub_1D17AFCAC(v5);
  v0[25] = v6;
  v7 = v6;
  v8 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D17AFA38;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C80, &qword_1D1E73420);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_1;
  v0[14] = v9;
  [v8 hdm:v7 addEventTriggerFromBuilder:v0 + 10 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D17AFA38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D17AFBF0;
  }

  else
  {
    v3 = sub_1D17AFB48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17AFB48()
{
  v8 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v7 = 0;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(&v7, v1, 0);
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D17AFBF0()
{
  v10 = v0;
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v9[0] = 0;
  v6 = v3;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(v9, v4, v3);

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

id sub_1D17AFCAC(void *a1)
{
  v3 = v2;
  sub_1D17B0574(a1);
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  v7 = sub_1D1E677EC();

  sub_1D1741B10(0, &unk_1EC643B70, 0x1E696CB78);
  v8 = sub_1D1E67BFC();

  v9 = [a1 hdm:v7 newEventTriggerBuilderWithName:v8 events:?];

  if (v9)
  {
    sub_1D17B1014(v9, a1);
    if (v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D17B2A14();
    swift_allocError();
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1D17AFE50(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t TriggerBuilder.update(trigger:in:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D1E66FDC();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17AFFEC, 0, 0);
}

uint64_t sub_1D17AFFEC()
{
  v21 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v19 = 1;
  sub_1D1E66FCC();
  *(v0 + 192) = _s2os6LoggerV13HomeDataModelE11AutomationsO8didBegin_7trigger2idAA23OSSignpostIntervalStateCAF9OperationO_AD14TriggerBuilderCAA0K2IDVtFZ_0(&v19, v4, v1);
  (*(v2 + 8))(v1, v3);
  v6 = [v5 copyAsBuilder];
  *(v0 + 200) = v6;
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + 160);
      sub_1D17B1014(v8, *(v0 + 152));
      v17 = *(v0 + 144);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D17B0250;
      v18 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_35;
      *(v0 + 112) = v18;
      [v17 updateWithBuilder:v9 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }
  }

  sub_1D17B2A14();
  v11 = swift_allocError();
  swift_willThrow();
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v20[0] = 1;
  v14 = v11;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(v20, v12, v11);

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D17B0250()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D17B040C;
  }

  else
  {
    v3 = sub_1D17B0360;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17B0360()
{
  v10 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v9 = 1;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(&v9, v1, 0);

  v5 = v4;

  v6 = v0[1];
  v7 = v0[18];

  return v6(v7);
}

uint64_t sub_1D17B040C()
{
  v10 = v0;
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v9[0] = 1;
  v6 = v3;
  _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(v9, v4, v3);

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D17B04C8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1D17B0574(void *a1)
{
  v3 = type metadata accessor for Event.CharacteristicEvent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event.TimeEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Event();
  v87 = *(v89 - 8);
  v10 = *(v87 + 64);
  v11 = MEMORY[0x1EEE9AC00](v89);
  v78 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v81 = &v75 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v75 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - v18;
  swift_getKeyPath();
  v91[0] = v1;
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v20 = *(v1 + 40);
  v76 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0];
  v21 = v20 + 56;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 56);
  v25 = (v22 + 63) >> 6;
  v88 = v20;
  result = swift_bridgeObjectRetain_n();
  v27 = 0;
  v28 = 0;
  *&v29 = 138412546;
  v77 = v29;
  v83 = v6;
  v84 = v17;
  v82 = v19;
  v85 = v25;
  v86 = v21;
  while (v24)
  {
    while (1)
    {
LABEL_11:
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      sub_1D17B2FB0(*(v88 + 48) + *(v87 + 72) * (v31 | (v27 << 6)), v19, type metadata accessor for Event);
      sub_1D17B2FB0(v19, v17, type metadata accessor for Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v36 = *v17;
        v35 = *(v17 + 1);
        v37 = *(v17 + 2);
        if (v17[24] == 1)
        {
          v63 = *v17;
          v64 = *(v17 + 1);
          v65 = *(v17 + 2);
          v66 = objc_allocWithZone(MEMORY[0x1E695FBB0]);
          v67 = sub_1D1E677EC();
          v68 = [v66 initWithCenter:v67 radius:*&v36 identifier:{*&v35, *&v37}];

          [objc_allocWithZone(MEMORY[0x1E696CBC8]) initWithRegion_];
          v17 = v84;
        }

        else
        {
          if (v35)
          {
            if (v35 != 1)
            {
              v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
              v91[3] = v38;
              v91[4] = sub_1D179747C();
              v91[0] = v35;
              __swift_project_boxed_opaque_existential_1(v91, v38);
              sub_1D17979F0(v36, v35, v37, 0);
              v39 = 0;
              if (sub_1D1E6827C())
              {
                goto LABEL_22;
              }

              v40 = [a1 users];
              sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
              v41 = sub_1D1E67C1C();

              MEMORY[0x1EEE9AC00](v42);
              *(&v75 - 2) = v91;
              v43 = sub_1D179689C(sub_1D17974F0, (&v75 - 4), v41);
              if (v43 >> 62)
              {
                if (!sub_1D1E6873C())
                {
LABEL_21:

                  v39 = 1;
LABEL_22:
                  sub_1D179732C();
                  v33 = swift_allocError();
                  *v44 = v39;
                  swift_willThrow();
                  __swift_destroy_boxed_opaque_existential_1(v91);
                  sub_1D1771BD4(v36, v35, v37, 0);
                  v90 = 0;
                  v6 = v83;
                  v34 = v81;
                  v19 = v82;
                  goto LABEL_23;
                }
              }

              else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              __swift_destroy_boxed_opaque_existential_1(v91);
              v90 = objc_allocWithZone(MEMORY[0x1E696CC18]);
              v72 = sub_1D1E67BFC();

              [v90 initWithPresenceEventType:v36 presenceUserType:3 users:v72];

              sub_1D1771BD4(v36, v35, v37, 0);
              v6 = v83;
              v17 = v84;
              goto LABEL_34;
            }

            [objc_allocWithZone(MEMORY[0x1E696CC18]) initWithPresenceEventType:v36 presenceUserType:2];
            v69 = v36;
            v70 = 1;
          }

          else
          {
            [objc_allocWithZone(MEMORY[0x1E696CC18]) initWithPresenceEventType:v36 presenceUserType:1];
            v69 = v36;
            v70 = 0;
          }

          sub_1D1771BD4(v69, v70, v37, 0);
        }

        v6 = v83;
LABEL_34:
        v19 = v82;
        goto LABEL_35;
      }

      if (EnumCaseMultiPayload == 2)
      {
        break;
      }

      v62 = v75;
      sub_1D17B3078(v17, v75, type metadata accessor for Event.TimeEvent);
      Event.TimeEvent.createEvent()();
      sub_1D17B3018(v62, type metadata accessor for Event.TimeEvent);
LABEL_35:
      v71 = sub_1D17B3018(v19, type metadata accessor for Event);
      MEMORY[0x1D3891220](v71);
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v73 = v28;
        v74 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
        v28 = v73;
      }

      result = sub_1D1E67CAC();
      v76 = v92;
      v25 = v85;
      v21 = v86;
      if (!v24)
      {
        goto LABEL_7;
      }
    }

    sub_1D17B3078(v17, v6, type metadata accessor for Event.CharacteristicEvent);
    Event.CharacteristicEvent.createEvent(in:)(a1);
    v33 = v28;
    if (!v28)
    {
      sub_1D17B3018(v6, type metadata accessor for Event.CharacteristicEvent);
      v17 = v84;
      goto LABEL_35;
    }

    sub_1D17B3018(v6, type metadata accessor for Event.CharacteristicEvent);
    v90 = 0;
    v34 = v81;
LABEL_23:
    if (qword_1EC642130 != -1)
    {
      swift_once();
    }

    v45 = sub_1D1E6709C();
    __swift_project_value_buffer(v45, qword_1EC643BF8);
    sub_1D17B2FB0(v19, v34, type metadata accessor for Event);
    v46 = v33;
    v47 = sub_1D1E6707C();
    v48 = sub_1D1E6833C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79 = v50;
      v80 = swift_slowAlloc();
      v91[0] = v80;
      *v49 = v77;
      v51 = v33;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      *(v49 + 12) = 2080;
      v53 = v34;
      sub_1D17B2FB0(v34, v78, type metadata accessor for Event);
      v54 = a1;
      v55 = sub_1D1E6789C();
      v57 = v56;
      v58 = v53;
      v19 = v82;
      sub_1D17B3018(v58, type metadata accessor for Event);
      v59 = sub_1D1B1312C(v55, v57, v91);
      v6 = v83;

      *(v49 + 14) = v59;
      a1 = v54;
      _os_log_impl(&dword_1D16EC000, v47, v48, "Error: %@ creating event from %s", v49, 0x16u);
      v60 = v79;
      sub_1D1741A30(v79, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v60, -1, -1);
      v61 = v80;
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1D3893640](v61, -1, -1);
      MEMORY[0x1D3893640](v49, -1, -1);
    }

    else
    {

      sub_1D17B3018(v34, type metadata accessor for Event);
    }

    v21 = v86;
    result = sub_1D17B3018(v19, type metadata accessor for Event);
    v17 = v84;
    v25 = v85;
    v28 = v90;
  }

LABEL_7:
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      return v76;
    }

    v24 = *(v21 + 8 * v30);
    ++v27;
    if (v24)
    {
      v27 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D17B1014(void *a1, objc_class *a2)
{
  v3 = v2;
  v27 = type metadata accessor for Event();
  v6 = *(*(v27 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = (&v27 - v10);
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  v32[0] = v2;
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  [a1 setEnabled_];
  swift_getKeyPath();
  v32[0] = v2;
  sub_1D1E66CAC();

  swift_beginAccess();
  v12 = *(v2 + 16);
  v11 = *(v2 + 24);

  v13 = sub_1D1E677EC();

  swift_getKeyPath();
  v32[0] = v3;
  sub_1D1E66CAC();

  swift_beginAccess();
  [a1 setName:v13 isConfigured:*(v3 + 32)];

  v30 = a2;
  sub_1D17B0574(a2);
  sub_1D1741B10(0, &unk_1EC643B70, 0x1E696CB78);
  v14 = sub_1D1E67BFC();

  [a1 setEvents_];

  swift_getKeyPath();
  v32[0] = v3;
  sub_1D1E66CAC();

  swift_beginAccess();
  [a1 setExecuteOnce_];
  swift_getKeyPath();
  v32[0] = v3;
  sub_1D1E66CAC();

  swift_beginAccess();
  v15 = *(v3 + 40);
  v32[0] = v15;
  v32[1] = sub_1D17B2408;
  v32[2] = 0;
  v32[3] = sub_1D17B28C8;
  v32[4] = 0;

  v16 = v32;
  v17 = sub_1D17779F4();
  if (v19)
  {
    goto LABEL_12;
  }

  if (*(v15 + 36) != v18)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 == 1 << *(v15 + 32))
  {

LABEL_7:
    v20 = 127;
    goto LABEL_8;
  }

  v16 = v28;
  sub_1D1790974(v17, v18, v15, v28);
  sub_1D17B2FB0(v16, v9, type metadata accessor for Event);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_13:
    sub_1D17B3018(v9, type metadata accessor for Event);
    sub_1D17B3018(v16, type metadata accessor for Event);
    __break(1u);
    return;
  }

  v20 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48)];
  sub_1D17B3018(v9, type metadata accessor for Event.TimeEvent);
  sub_1D17B3018(v16, type metadata accessor for Event);

  if (!v20)
  {
    goto LABEL_7;
  }

LABEL_8:
  v31[0] = v20;
  sub_1D17B35A0(v31);
  v21 = v30;
  v22 = sub_1D17B1654(v30);
  v23 = [a1 triggerOwnedActionSet];
  sub_1D1784E8C(v22);

  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D179E328();
  v24 = sub_1D1E6815C();

  [v23 setActions_];

  sub_1D17B1BBC(v21);
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v25 = sub_1D1E67BFC();

  [a1 setActionSets_];

  swift_getKeyPath();
  v31[0] = v3;
  sub_1D1E66CAC();

  swift_beginAccess();
  v26 = 0;
  if (*(v3 + 65) == 1)
  {
    v26 = [objc_opt_self() deleteAfterExecutionPolicy];
  }

  [a1 setPolicy_];
}

uint64_t sub_1D17B1654(objc_class *a1)
{
  v50.super.isa = a1;
  v45 = type metadata accessor for Action();
  v49 = *(v45 - 8);
  v2 = *(v49 + 64);
  v3 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  swift_getKeyPath();
  v54 = v1;
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v10 = *(v1 + 48);
  v41 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  *&v18 = 138412546;
  v42 = v18;
  v46 = v10;
  v48 = v10 + 56;
  v51 = v15;
  for (i = v9; v14; v15 = v51)
  {
LABEL_11:
    while (1)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      sub_1D17B2FB0(*(v10 + 48) + *(v49 + 72) * (v20 | (v17 << 6)), v9, type metadata accessor for Action);
      Action.createAction(in:)(v50);
      if (!v21)
      {
        break;
      }

      if (qword_1EC642130 != -1)
      {
        swift_once();
      }

      v22 = sub_1D1E6709C();
      __swift_project_value_buffer(v22, qword_1EC643BF8);
      sub_1D17B2FB0(v9, v7, type metadata accessor for Action);
      v23 = v21;
      v24 = sub_1D1E6707C();
      v25 = sub_1D1E6833C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v26 = v42;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        *(v26 + 12) = 2080;
        sub_1D17B2FB0(v7, v44, type metadata accessor for Action);
        v30 = sub_1D1E6789C();
        v32 = v31;
        sub_1D17B3018(v7, type metadata accessor for Action);
        v33 = sub_1D1B1312C(v30, v32, &v52);

        *(v26 + 14) = v33;
        v9 = i;
        v34 = v24;
        _os_log_impl(&dword_1D16EC000, v24, v25, "Error: %@ creating action from %s", v26, 0x16u);
        sub_1D1741A30(v27, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v27, -1, -1);
        v35 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1D3893640](v35, -1, -1);
        v36 = v26;
        v10 = v46;
        MEMORY[0x1D3893640](v36, -1, -1);
      }

      else
      {

        sub_1D17B3018(v7, type metadata accessor for Action);
      }

      v11 = v48;
      v15 = v51;
      result = sub_1D17B3018(v9, type metadata accessor for Action);
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    v37 = sub_1D17B3018(v9, type metadata accessor for Action);
    MEMORY[0x1D3891220](v37);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = v9;
      v39 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
      v9 = v38;
      v11 = v48;
    }

    result = sub_1D1E67CAC();
    v41 = v53;
    v10 = v46;
  }

LABEL_7:
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return v41;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17B1BBC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = sub_1D1E66A7C();
  v78 = *(isUniquelyReferenced_nonNull_native - 8);
  v3 = v78[8];
  v4 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v66 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - v8;
  v10 = [a1 actionSets];
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v11 = sub_1D1E67C1C();

  if (v11 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v76 = a1;
    v82 = isUniquelyReferenced_nonNull_native;
    if (i)
    {
      break;
    }

    v14 = MEMORY[0x1E69E7CC8];
LABEL_22:

    swift_getKeyPath();
    v32 = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
    v33 = j;
    v85 = j;
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder);
    a1 = v33 + v32;
    sub_1D1E66CAC();

    swift_beginAccess();
    v34 = v33[7];
    v67 = MEMORY[0x1E69E7CC0];
    v84 = MEMORY[0x1E69E7CC0];
    v35 = v34 + 56;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v34 + 56);
    v11 = (v36 + 63) >> 6;
    v80 = v34;
    v81 = (v78 + 2);
    v79 = (v78 + 1);
    swift_bridgeObjectRetain_n();
    v39 = 0;
    *&v40 = 136315394;
    v68 = v40;
    v41 = v69;
    v9 = v75;
    v77 = v11;
    for (j = v35; v38; v67 = v84)
    {
LABEL_32:
      while (1)
      {
        v44 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v45 = v78[2];
        v45(v9, *(v80 + 48) + v78[9] * (v44 | (v39 << 6)), isUniquelyReferenced_nonNull_native);
        if (v14[2])
        {
          v46 = sub_1D1742188(v9);
          if (v47)
          {
            break;
          }
        }

        if (qword_1EC642130 != -1)
        {
          swift_once();
        }

        v48 = sub_1D1E6709C();
        __swift_project_value_buffer(v48, qword_1EC643BF8);
        v45(v41, v9, isUniquelyReferenced_nonNull_native);
        v49 = v76;
        v50 = sub_1D1E6707C();
        a1 = sub_1D1E6833C();

        if (os_log_type_enabled(v50, a1))
        {
          v51 = swift_slowAlloc();
          v72 = a1;
          v52 = v41;
          v53 = v51;
          v71 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v83 = v73;
          *v53 = v68;
          sub_1D17ADC40(&qword_1EE07B250, MEMORY[0x1E69695A8]);
          v70 = v50;
          v54 = v52;
          v55 = sub_1D1E68FAC();
          v57 = v56;
          v42 = *v79;
          (*v79)(v54, v82);
          v58 = sub_1D1B1312C(v55, v57, &v83);
          isUniquelyReferenced_nonNull_native = v82;

          *(v53 + 4) = v58;
          *(v53 + 12) = 2112;
          *(v53 + 14) = v49;
          v59 = v71;
          *v71 = v76;
          v60 = v49;
          v61 = v70;
          _os_log_impl(&dword_1D16EC000, v70, v72, "Failed to find action set with identifier %s in home %@", v53, 0x16u);
          sub_1D1741A30(v59, &unk_1EC644000, &unk_1D1E75B00);
          MEMORY[0x1D3893640](v59, -1, -1);
          a1 = v73;
          __swift_destroy_boxed_opaque_existential_1(v73);
          MEMORY[0x1D3893640](a1, -1, -1);
          MEMORY[0x1D3893640](v53, -1, -1);

          v41 = v69;
        }

        else
        {

          v42 = *v79;
          (*v79)(v41, isUniquelyReferenced_nonNull_native);
        }

        v9 = v75;
        v42(v75, isUniquelyReferenced_nonNull_native);
        v35 = j;
        v11 = v77;
        if (!v38)
        {
          goto LABEL_28;
        }
      }

      v62 = *v79;
      v73 = *(v14[7] + 8 * v46);
      v63 = (v62)(v9, isUniquelyReferenced_nonNull_native);
      a1 = &v84;
      MEMORY[0x1D3891220](v63);
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
        v11 = v77;
      }

      sub_1D1E67CAC();
    }

LABEL_28:
    while (1)
    {
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v43 >= v11)
      {

        return v67;
      }

      v38 = *(v35 + 8 * v43);
      ++v39;
      if (v38)
      {
        v39 = v43;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v13 = 0;
  v80 = v11 & 0xFFFFFFFFFFFFFF8;
  v81 = v11 & 0xC000000000000001;
  v77 = v78 + 2;
  v79 = (v78 + 1);
  v14 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v81)
    {
      v16 = MEMORY[0x1D3891EF0](v13, v11);
    }

    else
    {
      if (v13 >= *(v80 + 16))
      {
        goto LABEL_45;
      }

      v16 = *(v11 + 8 * v13 + 32);
    }

    a1 = v16;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_44;
    }

    v18 = [v16 uniqueIdentifier];
    sub_1D1E66A5C();

    v19 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v14;
    a1 = v14;
    v20 = sub_1D1742188(v9);
    v22 = v14[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_46;
    }

    v26 = v21;
    if (v14[3] < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = v20;
      sub_1D1734844();
      v20 = v31;
    }

LABEL_17:
    isUniquelyReferenced_nonNull_native = v82;
    v14 = v85;
    if (v26)
    {
      v15 = v85[7];
      a1 = *(v15 + 8 * v20);
      *(v15 + 8 * v20) = v19;

      (*v79)(v9, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v85[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v78;
      a1 = v20;
      (v78[2])(v14[6] + v78[9] * v20, v9, isUniquelyReferenced_nonNull_native);
      *(v14[7] + 8 * a1) = v19;

      (v28[1])(v9, isUniquelyReferenced_nonNull_native);
      v29 = v14[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_47;
      }

      v14[2] = v30;
    }

    ++v13;
    if (v17 == i)
    {
      goto LABEL_22;
    }
  }

  sub_1D17218F8(v25, isUniquelyReferenced_nonNull_native);
  v20 = sub_1D1742188(v9);
  if ((v26 & 1) == (v27 & 1))
  {
    goto LABEL_17;
  }

  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D17B2408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B2FB0(a1, v7, type metadata accessor for Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for Event;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48)];
    v9 = type metadata accessor for Event.TimeEvent;
  }

  else
  {
    v10 = 0;
  }

  result = sub_1D17B3018(v7, v9);
  *a2 = v10;
  *(a2 + 8) = EnumCaseMultiPayload != 1;
  return result;
}

id sub_1D17B2540(void *a1)
{
  v1 = [a1 debugDescription];

  return v1;
}

uint64_t HMCalendarEvent.description.getter()
{
  v1 = [v0 debugDescription];
  v2 = sub_1D1E6781C();

  return v2;
}

id sub_1D17B25D0(void *a1)
{
  v1 = a1;
  HMCalendarEvent.debugDescription.getter();

  v2 = sub_1D1E677EC();

  return v2;
}

unint64_t HMCalendarEvent.debugDescription.getter()
{
  v1 = sub_1D1E662EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D1E6884C();

  v9 = 0xD000000000000026;
  v10 = 0x80000001D1EB90D0;
  v6 = [v0 fireDateComponents];
  sub_1D1E6621C();

  sub_1D17ADC40(&qword_1EC643948, MEMORY[0x1E6968278]);
  v7 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v7);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1D3890F70](32010, 0xE200000000000000);
  return v9;
}

void sub_1D17B27C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1D1E6873C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1D1E6878C();

      if ((v13 & 1) == 0)
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

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t _s13HomeDataModel14TriggerBuilderC06staticD0AcA06StaticD0V_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for StaticTrigger();
  v3 = (a1 + v2[5]);
  v4 = *(a1 + v2[7]);
  v5 = *(a1 + v2[8]);
  v6 = *(a1 + v2[9]);
  v16 = *(a1 + v2[10]);
  v8 = *v3;
  v7 = v3[1];
  v9 = *(a1 + v2[6]);
  v10 = *(a1 + v2[11]);
  v11 = type metadata accessor for TriggerBuilder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 32) = 1;

  sub_1D1E66CDC();
  sub_1D17B3018(a1, type metadata accessor for StaticTrigger);
  *(v14 + 16) = v8;
  *(v14 + 24) = v7;
  *(v14 + 40) = v4;
  *(v14 + 48) = v5;
  *(v14 + 56) = v6;
  *(v14 + 64) = v16;
  *(v14 + 33) = v9;
  *(v14 + 65) = v10;
  return v14;
}

unint64_t sub_1D17B2A14()
{
  result = qword_1EC643C88;
  if (!qword_1EC643C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643C88);
  }

  return result;
}

uint64_t sub_1D17B2A70()
{
  result = sub_1D1E66CEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D17B2F5C()
{
  result = qword_1EC643CA8;
  if (!qword_1EC643CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CA8);
  }

  return result;
}

uint64_t sub_1D17B2FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17B3018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D17B3078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TriggerRecurrenceWeekdays.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case '\x7F':
      return 0x7961647972657665;
    case 'A':
      return 0x646E656B656577;
    case '>':
      return 0x737961646B656577;
  }

  if ((v1 & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v3 = sub_1D177CF00(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = v4 + 1;
  if (v4 >= v5 >> 1)
  {
    v44 = v4 + 1;
    v33 = v3;
    v34 = *(v3 + 2);
    v35 = sub_1D177CF00((v5 > 1), v4 + 1, 1, v33);
    v4 = v34;
    v6 = v44;
    v3 = v35;
  }

  *(v3 + 2) = v6;
  v7 = &v3[16 * v4];
  *(v7 + 4) = 0x7961646E7573;
  *(v7 + 5) = 0xE600000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v9 = *(v3 + 3);
    v10 = v8 + 1;
    if (v8 >= v9 >> 1)
    {
      v45 = v8 + 1;
      v36 = v3;
      v37 = *(v3 + 2);
      v38 = sub_1D177CF00((v9 > 1), v8 + 1, 1, v36);
      v8 = v37;
      v10 = v45;
      v3 = v38;
    }

    *(v3 + 2) = v10;
    v11 = &v3[16 * v8];
    *(v11 + 4) = 0x7961646E6F6DLL;
    *(v11 + 5) = 0xE600000000000000;
  }

LABEL_18:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v39 = sub_1D177CF00((v12 > 1), v13 + 1, 1, v3);
      v14 = v13 + 1;
      v3 = v39;
    }

    *(v3 + 2) = v14;
    v15 = &v3[16 * v13];
    *(v15 + 4) = 0x79616473657574;
    *(v15 + 5) = 0xE700000000000000;
    if ((v1 & 8) == 0)
    {
LABEL_20:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
  }

  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v40 = sub_1D177CF00((v16 > 1), v17 + 1, 1, v3);
    v18 = v17 + 1;
    v3 = v40;
  }

  *(v3 + 2) = v18;
  v19 = &v3[16 * v17];
  *(v19 + 4) = 0x616473656E646577;
  *(v19 + 5) = 0xE900000000000079;
  if ((v1 & 0x10) == 0)
  {
LABEL_21:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_39:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v25 = *(v3 + 2);
    v24 = *(v3 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v42 = sub_1D177CF00((v24 > 1), v25 + 1, 1, v3);
      v26 = v25 + 1;
      v3 = v42;
    }

    *(v3 + 2) = v26;
    v27 = &v3[16 * v25];
    *(v27 + 4) = 0x796164697266;
    *(v27 + 5) = 0xE600000000000000;
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
  }

  v21 = *(v3 + 2);
  v20 = *(v3 + 3);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
    v41 = sub_1D177CF00((v20 > 1), v21 + 1, 1, v3);
    v22 = v21 + 1;
    v3 = v41;
  }

  *(v3 + 2) = v22;
  v23 = &v3[16 * v21];
  *(v23 + 4) = 0x7961647372756874;
  *(v23 + 5) = 0xE800000000000000;
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_22:
  if ((v1 & 0x40) != 0)
  {
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177CF00(0, *(v3 + 2) + 1, 1, v3);
    }

    v29 = *(v3 + 2);
    v28 = *(v3 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v43 = sub_1D177CF00((v28 > 1), v29 + 1, 1, v3);
      v30 = v29 + 1;
      v3 = v43;
    }

    *(v3 + 2) = v30;
    v31 = &v3[16 * v29];
    *(v31 + 4) = 0x7961647275746173;
    *(v31 + 5) = 0xE800000000000000;
  }

LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v32 = sub_1D1E6770C();

  return v32;
}

id sub_1D17B35A0(uint64_t *a1)
{
  v4 = *a1;
  v2 = sub_1D17B36F8();

  return [v1 setRecurrenceDays_];
}

unint64_t sub_1D17B3684()
{
  result = qword_1EE07B278;
  if (!qword_1EE07B278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643CB0, &qword_1D1E73640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07B278);
  }

  return result;
}

uint64_t sub_1D17B36F8()
{
  v1 = *v0;
  if ((*v0 & 2) != 0)
  {
    if ((v1 & 4) != 0)
    {
      result = 6;
      if ((v1 & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = 2;
      if ((v1 & 8) == 0)
      {
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_16;
  }

  if ((v1 & 4) != 0)
  {
    result = 4;
    if ((v1 & 8) == 0)
    {
LABEL_17:
      if ((v1 & 0x10) == 0)
      {
        if ((v1 & 0x20) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

LABEL_22:
      result |= 0x10uLL;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_16:
    result |= 8uLL;
    goto LABEL_17;
  }

  result = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_16;
  }

  if ((v1 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v1 & 0x20) == 0)
  {
    if ((v1 & 0x40) == 0)
    {
      if ((v1 & 1) == 0)
      {
        return result;
      }

      return result | 1;
    }

    goto LABEL_24;
  }

LABEL_23:
  result |= 0x20uLL;
  if ((v1 & 0x40) != 0)
  {
LABEL_24:
    result |= 0x40uLL;
    if ((v1 & 1) == 0)
    {
      return result;
    }

LABEL_25:
    if (result)
    {
      return result;
    }

    return result | 1;
  }

LABEL_20:
  if (v1)
  {
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_1D17B378C()
{
  result = qword_1EC643CB8;
  if (!qword_1EC643CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CB8);
  }

  return result;
}

unint64_t sub_1D17B37E4()
{
  result = qword_1EC643CC0;
  if (!qword_1EC643CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CC0);
  }

  return result;
}

unint64_t sub_1D17B3838()
{
  result = qword_1EC643CC8;
  if (!qword_1EC643CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CC8);
  }

  return result;
}

unint64_t sub_1D17B3890()
{
  result = qword_1EC643CD0;
  if (!qword_1EC643CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TriggerRecurrenceWeekdays(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TriggerRecurrenceWeekdays(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_1D17B3940()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  qword_1EC643CD8 = v2;
}

id static CameraClipsInternalPreferences.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642138 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EC643CD8;
  *a1 = qword_1EC643CD8;

  return v2;
}

id CameraClipsInternalPreferences.showDebugUI.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1D1E677EC();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

id CameraClipsInternalPreferences.overrideDisableHLS.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1D1E677EC();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

id CameraClipsInternalPreferences.overrideDisableScrubberAutoHideTimer.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1D1E677EC();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

uint64_t sub_1D17B3B54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1D17B3BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CameraClip.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for CameraClip()
{
  result = qword_1EC643CF0;
  if (!qword_1EC643CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraClip.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraClip() + 24);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraClip.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraClip() + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraClip.significantEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for CameraClip() + 40));
}

uint64_t CameraClip.init(id:eventID:date:creationDate:isComplete:duration:significantEvents:posterFrameURL:timelapseID:timelapseOffset:timelapseQualityAssetURL:highQualityAssetURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  v17 = type metadata accessor for CameraClip();
  v18 = v17[11];
  v19 = sub_1D1E6680C();
  v20 = *(*(v19 - 8) + 56);
  v20(a9 + v18, 1, 1, v19);
  v21 = v17[12];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = v17[14];
  v20(a9 + v23, 1, 1, v19);
  v24 = v17[15];
  v20(a9 + v24, 1, 1, v19);
  v25 = sub_1D1E66A7C();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  sub_1D1741A90(a2, a9 + v17[5], &qword_1EC643CE0, &qword_1D1E738D0);
  v26 = v17[6];
  v27 = sub_1D1E669FC();
  v28 = *(*(v27 - 8) + 32);
  v28(a9 + v26, a3, v27);
  v28(a9 + v17[7], a4, v27);
  *(a9 + v17[8]) = a5;
  *(a9 + v17[9]) = a10;
  *(a9 + v17[10]) = a6;
  sub_1D17B4270(a7, a9 + v18, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D17B4270(a8, a9 + v21, &qword_1EC643CE0, &qword_1D1E738D0);
  *(a9 + v17[13]) = a11;
  sub_1D17B4270(a12, a9 + v23, &qword_1EC642EA8, &qword_1D1E73C60);
  return sub_1D17B4270(a13, a9 + v24, &qword_1EC642EA8, &qword_1D1E73C60);
}

uint64_t sub_1D17B4270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t CameraClip.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E6680C();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v73 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v62 - v13;
  v14 = sub_1D1E66A7C();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v63 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v71 = &v62 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v62 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v67 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v62 - v33;
  v62 = sub_1D17B61EC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v35 = type metadata accessor for CameraClip();
  sub_1D1741C08(v1 + v35[5], v34, &qword_1EC643CE0, &qword_1D1E738D0);
  v36 = *(v18 + 48);
  v69 = v18 + 48;
  v70 = v17;
  v66 = v36;
  v37 = v36(v34, 1, v17);
  v65 = v14;
  if (v37 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1741A90(v34, v28, &qword_1EC642590, qword_1D1E71260);
    sub_1D1E6922C();
    sub_1D1741C08(v28, v26, &qword_1EC642590, qword_1D1E71260);
    v38 = v72;
    if ((*(v72 + 48))(v26, 1, v14) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v39 = v64;
      (*(v38 + 32))(v64, v26, v14);
      sub_1D1E6922C();
      sub_1D1E676EC();
      (*(v38 + 8))(v39, v14);
    }

    sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
  }

  v40 = v35[6];
  sub_1D1E669FC();
  sub_1D17B61EC(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v41 = v2 + v35[7];
  sub_1D1E676EC();
  v42 = *(v2 + v35[8]);
  sub_1D1E6922C();
  v43 = *(v2 + v35[9]);
  if (v43 == 0.0)
  {
    v43 = 0.0;
  }

  MEMORY[0x1D3892890](*&v43);
  sub_1D1770D00(a1, *(v2 + v35[10]));
  v44 = v68;
  sub_1D1741C08(v2 + v35[11], v68, &qword_1EC642EA8, &qword_1D1E73C60);
  v46 = v75;
  v45 = v76;
  v47 = *(v75 + 48);
  if (v47(v44, 1, v76) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v48 = v77;
    (*(v46 + 32))(v77, v44, v45);
    sub_1D1E6922C();
    sub_1D17B61EC(&qword_1EC643068, MEMORY[0x1E6968FB0]);
    sub_1D1E676EC();
    (*(v46 + 8))(v48, v45);
  }

  v49 = v67;
  sub_1D1741C08(v2 + v35[12], v67, &qword_1EC643CE0, &qword_1D1E738D0);
  v50 = v66(v49, 1, v70);
  v51 = v71;
  if (v50 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v70 = v47;
    sub_1D1741A90(v49, v71, &qword_1EC642590, qword_1D1E71260);
    sub_1D1E6922C();
    v52 = v63;
    sub_1D1741C08(v51, v63, &qword_1EC642590, qword_1D1E71260);
    v53 = v72;
    v54 = v65;
    if ((*(v72 + 48))(v52, 1, v65) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v55 = v64;
      (*(v53 + 32))(v64, v52, v54);
      sub_1D1E6922C();
      sub_1D1E676EC();
      (*(v53 + 8))(v55, v54);
    }

    sub_1D1741A30(v51, &qword_1EC642590, qword_1D1E71260);
    v45 = v76;
    v47 = v70;
  }

  v56 = *(v2 + v35[13]);
  if (v56 == 0.0)
  {
    v56 = 0.0;
  }

  MEMORY[0x1D3892890](*&v56);
  v57 = v73;
  sub_1D1741C08(v2 + v35[14], v73, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v47(v57, 1, v45) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v58 = v77;
    (*(v46 + 32))(v77, v57, v45);
    sub_1D1E6922C();
    sub_1D17B61EC(&qword_1EC643068, MEMORY[0x1E6968FB0]);
    sub_1D1E676EC();
    (*(v46 + 8))(v58, v45);
  }

  v59 = v74;
  sub_1D1741C08(v2 + v35[15], v74, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v47(v59, 1, v45) == 1)
  {
    return sub_1D1E6922C();
  }

  v61 = v77;
  (*(v46 + 32))(v77, v59, v45);
  sub_1D1E6922C();
  sub_1D17B61EC(&qword_1EC643068, MEMORY[0x1E6968FB0]);
  sub_1D1E676EC();
  return (*(v46 + 8))(v61, v45);
}

uint64_t CameraClip.hashValue.getter()
{
  sub_1D1E6920C();
  CameraClip.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B4CFC()
{
  sub_1D1E6920C();
  CameraClip.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B4D40()
{
  sub_1D1E6920C();
  CameraClip.hash(into:)(v1);
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel10CameraClipV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E6680C();
  v139 = *(v4 - 8);
  v5 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v131 = &v120 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v137 = &v120 - v15;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  v16 = *(*(v140 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v140);
  v130 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v133 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v120 - v21;
  v22 = sub_1D1E66A7C();
  v23 = *(v22 - 8);
  v145 = v22;
  v146 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v141 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v132 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v142 = &v120 - v31;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v32 = *(*(v144 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v144);
  v134 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v120 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v135 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v120 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D20, &qword_1D1E739B8);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v136 = &v120 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v120 - v46;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v124 = v12;
  v126 = v7;
  v127 = v4;
  v128 = type metadata accessor for CameraClip();
  v48 = v128[5];
  v125 = v42;
  v49 = *(v42 + 48);
  v129 = a1;
  sub_1D1741C08(a1 + v48, v47, &qword_1EC643CE0, &qword_1D1E738D0);
  sub_1D1741C08(a2 + v48, &v47[v49], &qword_1EC643CE0, &qword_1D1E738D0);
  v52 = *(v27 + 48);
  v51 = v27 + 48;
  v50 = v52;
  if (v52(v47, 1, v26) == 1)
  {
    if (v50(&v47[v49], 1, v26) == 1)
    {
LABEL_4:
      v122 = v50;
      v121 = v51;
      sub_1D1741A30(v47, &qword_1EC643CE0, &qword_1D1E738D0);
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  sub_1D1741C08(v47, v41, &qword_1EC643CE0, &qword_1D1E738D0);
  if (v50(&v47[v49], 1, v26) == 1)
  {
    sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
LABEL_15:
    v66 = &qword_1EC643D20;
    v67 = &qword_1D1E739B8;
LABEL_16:
    v68 = v47;
LABEL_17:
    sub_1D1741A30(v68, v66, v67);
    return 0;
  }

  v123 = a2;
  v70 = *(v144 + 48);
  v71 = v41;
  v72 = v143;
  sub_1D1741A90(v71, v143, &qword_1EC642590, qword_1D1E71260);
  v73 = v70;
  sub_1D1741A90(&v47[v49], v72 + v70, &qword_1EC642590, qword_1D1E71260);
  v74 = v145;
  v75 = *(v146 + 48);
  if (v75(v72, 1, v145) == 1)
  {
    if (v75(v72 + v73, 1, v74) == 1)
    {
      sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
      a2 = v123;
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v76 = v142;
  sub_1D1741C08(v72, v142, &qword_1EC642590, qword_1D1E71260);
  if (v75(v72 + v73, 1, v74) == 1)
  {
    (*(v146 + 8))(v76, v74);
LABEL_24:
    sub_1D1741A30(v72, &qword_1EC642980, &unk_1D1E6E6E0);
    v66 = &qword_1EC643CE0;
    v67 = &qword_1D1E738D0;
    goto LABEL_16;
  }

  v122 = v50;
  v121 = v51;
  v77 = v146;
  v78 = v72;
  v79 = v141;
  (*(v146 + 32))(v141, v72 + v73, v74);
  sub_1D17B61EC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v80 = sub_1D1E6775C();
  v81 = *(v77 + 8);
  v81(v79, v74);
  v81(v76, v74);
  a2 = v123;
  sub_1D1741A30(v78, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v47, &qword_1EC643CE0, &qword_1D1E738D0);
  if ((v80 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v54 = v128;
  v53 = v129;
  v55 = v128[6];
  if ((sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v56 = v54[7];
  if ((sub_1D1E669AC() & 1) == 0 || *(v53 + v54[8]) != *(a2 + v54[8]) || *(v53 + v54[9]) != *(a2 + v54[9]) || (sub_1D177BF78(*(v53 + v54[10]), *(a2 + v54[10])) & 1) == 0)
  {
    return 0;
  }

  v57 = v54[11];
  v58 = *(v140 + 48);
  v59 = v53 + v57;
  v60 = v138;
  sub_1D1741C08(v59, v138, &qword_1EC642EA8, &qword_1D1E73C60);
  v61 = v60;
  sub_1D1741C08(a2 + v57, v60 + v58, &qword_1EC642EA8, &qword_1D1E73C60);
  v62 = v139;
  v63 = *(v139 + 48);
  v64 = v127;
  v143 = v139 + 48;
  if ((v63)(v61, 1, v127) == 1)
  {
    if ((v63)(v61 + v58, 1, v64) == 1)
    {
      v142 = v63;
      v123 = a2;
      sub_1D1741A30(v61, &qword_1EC642EA8, &qword_1D1E73C60);
      v65 = v126;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v82 = v137;
  sub_1D1741C08(v61, v137, &qword_1EC642EA8, &qword_1D1E73C60);
  v142 = v63;
  if ((v63)(v61 + v58, 1, v64) == 1)
  {
    (*(v62 + 8))(v82, v64);
LABEL_29:
    v66 = &qword_1EC643D18;
    v67 = &unk_1D1E73EA0;
    v68 = v61;
    goto LABEL_17;
  }

  v123 = a2;
  v83 = v126;
  (*(v62 + 32))(v126, v61 + v58, v64);
  sub_1D17B61EC(&qword_1EC643D28, MEMORY[0x1E6968FB0]);
  v84 = v82;
  v65 = v83;
  LOBYTE(v83) = sub_1D1E6775C();
  v85 = *(v62 + 8);
  v85(v65, v64);
  v85(v84, v64);
  sub_1D1741A30(v61, &qword_1EC642EA8, &qword_1D1E73C60);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v86 = v54[12];
  v87 = *(v125 + 48);
  v88 = v136;
  sub_1D1741C08(v129 + v86, v136, &qword_1EC643CE0, &qword_1D1E738D0);
  v89 = v123;
  sub_1D1741C08(v123 + v86, v88 + v87, &qword_1EC643CE0, &qword_1D1E738D0);
  v90 = v26;
  v91 = v122;
  if (v122(v88, 1, v26) == 1)
  {
    if (v91(v88 + v87, 1, v26) == 1)
    {
LABEL_33:
      sub_1D1741A30(v88, &qword_1EC643CE0, &qword_1D1E738D0);
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  v97 = v135;
  sub_1D1741C08(v88, v135, &qword_1EC643CE0, &qword_1D1E738D0);
  if (v91(v88 + v87, 1, v90) == 1)
  {
    sub_1D1741A30(v97, &qword_1EC642590, qword_1D1E71260);
LABEL_40:
    v66 = &qword_1EC643D20;
    v67 = &qword_1D1E739B8;
    v68 = v88;
    goto LABEL_17;
  }

  v98 = *(v144 + 48);
  v99 = v88;
  v100 = v134;
  sub_1D1741A90(v97, v134, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v99 + v87, v100 + v98, &qword_1EC642590, qword_1D1E71260);
  v101 = v145;
  v102 = *(v146 + 48);
  if (v102(v100, 1, v145) == 1)
  {
    if (v102(v100 + v98, 1, v101) == 1)
    {
      sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
      v89 = v123;
      v88 = v136;
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  v103 = v132;
  sub_1D1741C08(v100, v132, &qword_1EC642590, qword_1D1E71260);
  if (v102(v100 + v98, 1, v101) == 1)
  {
    (*(v146 + 8))(v103, v101);
LABEL_46:
    sub_1D1741A30(v100, &qword_1EC642980, &unk_1D1E6E6E0);
    v66 = &qword_1EC643CE0;
    v67 = &qword_1D1E738D0;
    v68 = v136;
    goto LABEL_17;
  }

  v110 = v100;
  v111 = v146;
  v112 = v110 + v98;
  v113 = v141;
  (*(v146 + 32))(v141, v112, v101);
  sub_1D17B61EC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v114 = sub_1D1E6775C();
  v115 = *(v111 + 8);
  v115(v113, v101);
  v115(v103, v101);
  sub_1D1741A30(v110, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v136, &qword_1EC643CE0, &qword_1D1E738D0);
  v89 = v123;
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if (*(v129 + v128[13]) != *(v89 + v128[13]))
  {
    return 0;
  }

  v92 = v128[14];
  v93 = v89;
  v94 = *(v140 + 48);
  v95 = v133;
  sub_1D1741C08(v129 + v92, v133, &qword_1EC642EA8, &qword_1D1E73C60);
  v123 = v93;
  sub_1D1741C08(v93 + v92, v95 + v94, &qword_1EC642EA8, &qword_1D1E73C60);
  v96 = v142;
  if ((v142)(v95, 1, v64) == 1)
  {
    if (v96(v95 + v94, 1, v64) != 1)
    {
LABEL_56:
      v66 = &qword_1EC643D18;
      v67 = &unk_1D1E73EA0;
      v68 = v95;
      goto LABEL_17;
    }

    sub_1D1741A30(v95, &qword_1EC642EA8, &qword_1D1E73C60);
  }

  else
  {
    v104 = v131;
    sub_1D1741C08(v95, v131, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v96(v95 + v94, 1, v64) == 1)
    {
LABEL_55:
      (*(v139 + 8))(v104, v64);
      goto LABEL_56;
    }

    v105 = v139;
    (*(v139 + 32))(v65, v95 + v94, v64);
    sub_1D17B61EC(&qword_1EC643D28, MEMORY[0x1E6968FB0]);
    v106 = sub_1D1E6775C();
    v107 = *(v105 + 8);
    v107(v65, v64);
    v107(v104, v64);
    sub_1D1741A30(v95, &qword_1EC642EA8, &qword_1D1E73C60);
    if ((v106 & 1) == 0)
    {
      return 0;
    }
  }

  v108 = v128[15];
  v109 = *(v140 + 48);
  v95 = v130;
  sub_1D1741C08(v129 + v108, v130, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741C08(v123 + v108, v95 + v109, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v96(v95, 1, v64) != 1)
  {
    v116 = v65;
    v104 = v124;
    sub_1D1741C08(v95, v124, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v96(v95 + v109, 1, v64) != 1)
    {
      v117 = v139;
      (*(v139 + 32))(v116, v95 + v109, v64);
      sub_1D17B61EC(&qword_1EC643D28, MEMORY[0x1E6968FB0]);
      v118 = sub_1D1E6775C();
      v119 = *(v117 + 8);
      v119(v116, v64);
      v119(v104, v64);
      sub_1D1741A30(v95, &qword_1EC642EA8, &qword_1D1E73C60);
      return (v118 & 1) != 0;
    }

    goto LABEL_55;
  }

  if (v96(v95 + v109, 1, v64) != 1)
  {
    goto LABEL_56;
  }

  sub_1D1741A30(v95, &qword_1EC642EA8, &qword_1D1E73C60);
  return 1;
}

void sub_1D17B5FCC()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17B6124();
    if (v1 <= 0x3F)
    {
      sub_1D1E669FC();
      if (v2 <= 0x3F)
      {
        sub_1D17B6188(319, &qword_1EC643D08, type metadata accessor for SignificantEvent, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1D17B6188(319, &qword_1EC643D10, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D17B6124()
{
  if (!qword_1EC643D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC642590, qword_1D1E71260);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC643D00);
    }
  }
}

void sub_1D17B6188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D17B61EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ReachabilityEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ReachabilityEvent()
{
  result = qword_1EC643D38;
  if (!qword_1EC643D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReachabilityEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReachabilityEvent() + 24);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReachabilityEvent.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReachabilityEvent() + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReachabilityEvent.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReachabilityEvent() + 32);

  return sub_1D174A548(v3, a1);
}

uint64_t ReachabilityEvent.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReachabilityEvent() + 32);

  return sub_1D17B648C(a1, v3);
}

uint64_t sub_1D17B648C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReachabilityEvent.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReachabilityEvent();
  sub_1D174A548(v0 + *(v13 + 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC642570, &qword_1D1E6C6A0);
    static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EB9250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D1E739C0;
    (*(v9 + 16))(v5, v0 + *(v13 + 24), v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v15 = sub_1D17B681C(v5);
    v17 = v16;
    sub_1D1741A30(v5, &qword_1EC642570, &qword_1D1E6C6A0);
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D1757D20();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v18 = sub_1D1E6784C();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v19 = *(v13 + 24);
    v18 = sub_1D17B785C();
    (*(v9 + 8))(v12, v8);
  }

  return v18;
}

uint64_t sub_1D17B681C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1D1E669FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642570, &qword_1D1E6C6A0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v13 = sub_1D1E677EC();
    [v12 setLocalizedDateFormatFromTemplate_];

    v14 = sub_1D1E6694C();
    v15 = [v12 stringFromDate_];

    v16 = sub_1D1E6781C();
    (*(v7 + 8))(v10, v6);
    return v16;
  }
}

uint64_t ReachabilityEvent.init(id:reachable:date:creationDate:endDate:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ReachabilityEvent();
  v13 = v12[8];
  v14 = sub_1D1E669FC();
  v15 = *(v14 - 8);
  (*(v15 + 56))(a6 + v13, 1, 1, v14);
  v16 = sub_1D1E66A7C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *(a6 + v12[5]) = a2;
  v17 = *(v15 + 32);
  v17(a6 + v12[6], a3, v14);
  v17(a6 + v12[7], a4, v14);

  return sub_1D17B648C(a5, a6 + v13);
}

uint64_t ReachabilityEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  sub_1D1E66A7C();
  sub_1D17B7814(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v11 = type metadata accessor for ReachabilityEvent();
  v12 = *(v0 + v11[5]);
  sub_1D1E6922C();
  v13 = v11[6];
  sub_1D17B7814(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v14 = v1 + v11[7];
  sub_1D1E676EC();
  sub_1D174A548(v1 + v11[8], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1D1E6922C();
  sub_1D1E676EC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ReachabilityEvent.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17B7814(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v11 = type metadata accessor for ReachabilityEvent();
  v12 = *(v0 + v11[5]);
  sub_1D1E6922C();
  v13 = v11[6];
  sub_1D17B7814(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v14 = v1 + v11[7];
  sub_1D1E676EC();
  sub_1D174A548(v1 + v11[8], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D17B70C4(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = sub_1D1E669FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17B7814(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v14 = *(v2 + a2[5]);
  sub_1D1E6922C();
  v15 = a2[6];
  sub_1D17B7814(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v16 = v4 + a2[7];
  sub_1D1E676EC();
  sub_1D174A548(v4 + a2[8], v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel17ReachabilityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for ReachabilityEvent();
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    return 0;
  }

  v18 = v17;
  v19 = *(v17 + 24);
  if ((sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v20 = *(v18 + 28);
  if ((sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v18 + 32);
  v22 = *(v13 + 48);
  sub_1D174A548(a1 + v21, v16);
  sub_1D174A548(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1D174A548(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_1D1741A30(v16, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_1D17B7814(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v25 = sub_1D1E6775C();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
  return (v25 & 1) != 0;
}

void sub_1D17B7718()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1E669FC();
    if (v1 <= 0x3F)
    {
      sub_1D17B77BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D17B77BC()
{
  if (!qword_1EE07E020)
  {
    sub_1D1E669FC();
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07E020);
    }
  }
}

uint64_t sub_1D17B7814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D17B785C()
{
  v0 = sub_1D1E66BBC();
  v55 = *(v0 - 8);
  v56 = v0;
  v1 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v5 = sub_1D1E677EC();
  [v4 setLocalizedDateFormatFromTemplate_];

  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v7 = sub_1D1E677EC();
  [v6 setLocalizedDateFormatFromTemplate_];

  sub_1D1E66B9C();
  v8 = sub_1D1E66B7C();
  v9 = sub_1D1E66AFC();
  v10 = sub_1D1E6694C();
  v11 = [v4 stringFromDate_];

  v53 = sub_1D1E6781C();
  v54 = v12;

  v13 = sub_1D1E6694C();
  v14 = [v4 stringFromDate_];

  v51 = sub_1D1E6781C();
  v52 = v15;

  v16 = sub_1D1E6694C();
  v17 = [v6 stringFromDate_];

  v18 = sub_1D1E6781C();
  v20 = v19;

  if ((v8 & 1) == 0)
  {
    v28 = sub_1D1E6694C();
    v29 = [v6 stringFromDate_];

    v30 = sub_1D1E6781C();
    v32 = v31;

    if ((v9 & 1) == 0)
    {
      v50[1] = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EB9280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1D1E72CC0;
      v45 = MEMORY[0x1E69E6158];
      *(v44 + 56) = MEMORY[0x1E69E6158];
      v46 = sub_1D1757D20();
      v47 = v54;
      *(v44 + 32) = v53;
      *(v44 + 40) = v47;
      *(v44 + 96) = v45;
      *(v44 + 104) = v46;
      *(v44 + 64) = v46;
      *(v44 + 72) = v18;
      *(v44 + 80) = v20;
      *(v44 + 136) = v45;
      *(v44 + 144) = v46;
      v48 = v52;
      *(v44 + 112) = v51;
      *(v44 + 120) = v48;
      *(v44 + 176) = v45;
      *(v44 + 184) = v46;
      *(v44 + 152) = v30;
      *(v44 + 160) = v32;
      v27 = sub_1D1E6784C();
      goto LABEL_9;
    }

    static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EB92B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D1E6F900;
    v34 = MEMORY[0x1E69E6158];
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1D1757D20();
    v36 = v54;
    *(v33 + 32) = v53;
    *(v33 + 40) = v36;
    *(v33 + 96) = v34;
    *(v33 + 104) = v35;
    *(v33 + 64) = v35;
    *(v33 + 72) = v18;
    *(v33 + 80) = v20;
    *(v33 + 136) = v34;
    *(v33 + 144) = v35;
    v37 = v52;
    *(v33 + 112) = v51;
    *(v33 + 120) = v37;
LABEL_7:
    v27 = sub_1D1E6784C();
LABEL_9:

    goto LABEL_10;
  }

  if ((v9 & 1) == 0)
  {
    static String.hfLocalized(_:)(0xD00000000000002ELL, 0x80000001D1EB92E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1D1E6F900;
    v39 = MEMORY[0x1E69E6158];
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v40 = sub_1D1757D20();
    v41 = v54;
    *(v38 + 32) = v53;
    *(v38 + 40) = v41;
    *(v38 + 96) = v39;
    *(v38 + 104) = v40;
    v43 = v51;
    v42 = v52;
    *(v38 + 64) = v40;
    *(v38 + 72) = v43;
    *(v38 + 80) = v42;
    *(v38 + 136) = v39;
    *(v38 + 144) = v40;
    *(v38 + 112) = v18;
    *(v38 + 120) = v20;
    goto LABEL_7;
  }

  static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EB9310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D1E73A90;
  v22 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1D1757D20();
  v24 = v54;
  *(v21 + 32) = v53;
  *(v21 + 40) = v24;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  v26 = v51;
  v25 = v52;
  *(v21 + 64) = v23;
  *(v21 + 72) = v26;
  *(v21 + 80) = v25;
  v27 = sub_1D1E6784C();

LABEL_10:
  (*(v55 + 8))(v3, v56);
  return v27;
}

uint64_t ScrubberElement.ID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ScrubberElement.ID.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8]);

  return sub_1D1E676EC();
}

uint64_t ScrubberElement.ID.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17B7F10()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17B7F98()
{
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8]);

  return sub_1D1E676EC();
}

uint64_t sub_1D17B801C()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t ScrubberElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReachabilityEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CameraClip();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberElement(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v15, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v15, v7, type metadata accessor for ReachabilityEvent);
    v16 = sub_1D1E66A7C();
    (*(*(v16 - 8) + 16))(a1, v7, v16);
    v17 = type metadata accessor for ReachabilityEvent;
    v18 = v7;
  }

  else
  {
    sub_1D17BA164(v15, v11, type metadata accessor for CameraClip);
    v19 = sub_1D1E66A7C();
    (*(*(v19 - 8) + 16))(a1, v11, v19);
    v17 = type metadata accessor for CameraClip;
    v18 = v11;
  }

  return sub_1D17B82F0(v18, v17);
}

uint64_t sub_1D17B82F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ScrubberElement.eventID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v11, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    v13 = type metadata accessor for ScrubberElement;
    v14 = v11;
  }

  else
  {
    sub_1D17BA164(v11, v7, type metadata accessor for CameraClip);
    sub_1D1741C08(&v7[*(v4 + 20)], a1, &qword_1EC643CE0, &qword_1D1E738D0);
    v13 = type metadata accessor for CameraClip;
    v14 = v7;
  }

  return sub_1D17B82F0(v14, v13);
}

uint64_t ScrubberElement.date.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReachabilityEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CameraClip();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberElement(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v15, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v15, v7, type metadata accessor for ReachabilityEvent);
    v16 = *(v4 + 24);
    v17 = sub_1D1E669FC();
    (*(*(v17 - 8) + 16))(a1, &v7[v16], v17);
    v18 = type metadata accessor for ReachabilityEvent;
    v19 = v7;
  }

  else
  {
    sub_1D17BA164(v15, v11, type metadata accessor for CameraClip);
    v20 = *(v8 + 24);
    v21 = sub_1D1E669FC();
    (*(*(v21 - 8) + 16))(a1, &v11[v20], v21);
    v18 = type metadata accessor for CameraClip;
    v19 = v11;
  }

  return sub_1D17B82F0(v19, v18);
}

uint64_t ScrubberElement.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReachabilityEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CameraClip();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberElement(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v15, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v15, v7, type metadata accessor for ReachabilityEvent);
    v16 = *(v4 + 28);
    v17 = sub_1D1E669FC();
    (*(*(v17 - 8) + 16))(a1, &v7[v16], v17);
    v18 = type metadata accessor for ReachabilityEvent;
    v19 = v7;
  }

  else
  {
    sub_1D17BA164(v15, v11, type metadata accessor for CameraClip);
    v20 = *(v8 + 28);
    v21 = sub_1D1E669FC();
    (*(*(v21 - 8) + 16))(a1, &v11[v20], v21);
    v18 = type metadata accessor for CameraClip;
    v19 = v11;
  }

  return sub_1D17B82F0(v19, v18);
}

uint64_t ScrubberElement.isComplete.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberElement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v9, type metadata accessor for ScrubberElement);
    return 0;
  }

  else
  {
    sub_1D17BA164(v9, v5, type metadata accessor for CameraClip);
    v10 = v5[*(v2 + 32)];
    sub_1D17B82F0(v5, type metadata accessor for CameraClip);
  }

  return v10;
}

uint64_t ScrubberElement.duration.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberElement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v9, type metadata accessor for ScrubberElement);
    return 0;
  }

  else
  {
    sub_1D17BA164(v9, v5, type metadata accessor for CameraClip);
    v10 = *&v5[*(v2 + 36)];
    sub_1D17B82F0(v5, type metadata accessor for CameraClip);
  }

  return v10;
}

uint64_t ScrubberElement.significantEvents.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberElement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v9, type metadata accessor for ScrubberElement);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D17BA164(v9, v5, type metadata accessor for CameraClip);
    v10 = *&v5[*(v2 + 40)];

    sub_1D17B82F0(v5, type metadata accessor for CameraClip);
  }

  return v10;
}

uint64_t ScrubberElement.posterFrameURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v11, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D1E6680C();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    v13 = type metadata accessor for ScrubberElement;
    v14 = v11;
  }

  else
  {
    sub_1D17BA164(v11, v7, type metadata accessor for CameraClip);
    sub_1D1741C08(&v7[*(v4 + 44)], a1, &qword_1EC642EA8, &qword_1D1E73C60);
    v13 = type metadata accessor for CameraClip;
    v14 = v7;
  }

  return sub_1D17B82F0(v14, v13);
}

uint64_t ScrubberElement.timelapseID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v11, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    v13 = type metadata accessor for ScrubberElement;
    v14 = v11;
  }

  else
  {
    sub_1D17BA164(v11, v7, type metadata accessor for CameraClip);
    sub_1D1741C08(&v7[*(v4 + 48)], a1, &qword_1EC643CE0, &qword_1D1E738D0);
    v13 = type metadata accessor for CameraClip;
    v14 = v7;
  }

  return sub_1D17B82F0(v14, v13);
}

double ScrubberElement.timelapseOffset.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CameraClip();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberElement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v9, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v9, type metadata accessor for ScrubberElement);
    return 0.0;
  }

  else
  {
    sub_1D17BA164(v9, v5, type metadata accessor for CameraClip);
    v10 = *&v5[*(v2 + 52)];
    sub_1D17B82F0(v5, type metadata accessor for CameraClip);
  }

  return v10;
}

uint64_t ScrubberElement.timelapseQualityAssetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v11, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D1E6680C();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    v13 = type metadata accessor for ScrubberElement;
    v14 = v11;
  }

  else
  {
    sub_1D17BA164(v11, v7, type metadata accessor for CameraClip);
    sub_1D1741C08(&v7[*(v4 + 56)], a1, &qword_1EC642EA8, &qword_1D1E73C60);
    v13 = type metadata accessor for CameraClip;
    v14 = v7;
  }

  return sub_1D17B82F0(v14, v13);
}

uint64_t ScrubberElement.highQualityAssetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraClip();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberElement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v11, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D1E6680C();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    v13 = type metadata accessor for ScrubberElement;
    v14 = v11;
  }

  else
  {
    sub_1D17BA164(v11, v7, type metadata accessor for CameraClip);
    sub_1D1741C08(&v7[*(v4 + 60)], a1, &qword_1EC642EA8, &qword_1D1E73C60);
    v13 = type metadata accessor for CameraClip;
    v14 = v7;
  }

  return sub_1D17B82F0(v14, v13);
}

uint64_t ScrubberElement.updated(withSignificantEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SignificantEvent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrubberElement(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CameraClip();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v2, v13, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v13, type metadata accessor for ScrubberElement);
    return sub_1D17B99D4(v2, a2, type metadata accessor for ScrubberElement);
  }

  else
  {
    sub_1D17BA164(v13, v17, type metadata accessor for CameraClip);
    sub_1D17B99D4(v17, a2, type metadata accessor for CameraClip);
    v19 = 0;
    v20 = *(v14 + 40);
    v21 = *(a2 + v20);
    v22 = v21[2];
    while (v22 != v19)
    {
      v23 = v19 + 1;
      v24 = _s13HomeDataModel16SignificantEventV2eeoiySbAC_ACtFZ_0(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, a1);
      v19 = v23;
      if (v24)
      {
        sub_1D17B82F0(v17, type metadata accessor for CameraClip);
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1D17B99D4(a1, v9, type metadata accessor for SignificantEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D177D3B4(0, v21[2] + 1, 1, v21);
    }

    v26 = v21[2];
    v25 = v21[3];
    if (v26 >= v25 >> 1)
    {
      v21 = sub_1D177D3B4(v25 > 1, v26 + 1, 1, v21);
    }

    sub_1D17B82F0(v17, type metadata accessor for CameraClip);
    v21[2] = v26 + 1;
    sub_1D17BA164(v9, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, type metadata accessor for SignificantEvent);
    *(a2 + v20) = v21;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D17B99D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ScrubberElement.hash(into:)(uint64_t a1)
{
  v3 = sub_1D1E669FC();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ReachabilityEvent();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CameraClip();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScrubberElement(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v1, v22, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v22, v14, type metadata accessor for ReachabilityEvent);
    MEMORY[0x1D3892850](1);
    sub_1D1E66A7C();
    sub_1D17BA528(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    v23 = v14[v11[5]];
    sub_1D1E6922C();
    v24 = v11[6];
    sub_1D17BA528(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    v25 = &v14[v11[7]];
    sub_1D1E676EC();
    sub_1D1741C08(&v14[v11[8]], v10, &qword_1EC642570, &qword_1D1E6C6A0);
    v26 = v31;
    if ((*(v31 + 48))(v10, 1, v3) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      (*(v26 + 32))(v6, v10, v3);
      sub_1D1E6922C();
      sub_1D1E676EC();
      (*(v26 + 8))(v6, v3);
    }

    v27 = type metadata accessor for ReachabilityEvent;
    v28 = v14;
  }

  else
  {
    sub_1D17BA164(v22, v18, type metadata accessor for CameraClip);
    MEMORY[0x1D3892850](0);
    CameraClip.hash(into:)(a1);
    v27 = type metadata accessor for CameraClip;
    v28 = v18;
  }

  return sub_1D17B82F0(v28, v27);
}

uint64_t ScrubberElement.hashValue.getter()
{
  sub_1D1E6920C();
  ScrubberElement.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B9EBC()
{
  sub_1D1E6920C();
  ScrubberElement.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B9F00()
{
  sub_1D1E6920C();
  ScrubberElement.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17B9F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for ReachabilityEvent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CameraClip();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17B99D4(v4, v17, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v17, v9, type metadata accessor for ReachabilityEvent);
    v18 = sub_1D1E66A7C();
    (*(*(v18 - 8) + 16))(a2, v9, v18);
    v19 = type metadata accessor for ReachabilityEvent;
    v20 = v9;
  }

  else
  {
    sub_1D17BA164(v17, v14, type metadata accessor for CameraClip);
    v21 = sub_1D1E66A7C();
    (*(*(v21 - 8) + 16))(a2, v14, v21);
    v19 = type metadata accessor for CameraClip;
    v20 = v14;
  }

  return sub_1D17B82F0(v20, v19);
}

uint64_t sub_1D17BA164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s13HomeDataModel15ScrubberElementO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReachabilityEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CameraClip();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberElement(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D80, &qword_1D1E74300);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_1D17B99D4(a1, &v31 - v22, type metadata accessor for ScrubberElement);
  sub_1D17B99D4(a2, &v23[v24], type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B99D4(v23, v16, type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17BA164(&v23[v24], v7, type metadata accessor for ReachabilityEvent);
      v25 = _s13HomeDataModel17ReachabilityEventV2eeoiySbAC_ACtFZ_0(v16, v7);
      sub_1D17B82F0(v7, type metadata accessor for ReachabilityEvent);
      v26 = v16;
      v27 = type metadata accessor for ReachabilityEvent;
LABEL_9:
      sub_1D17B82F0(v26, v27);
      sub_1D17B82F0(v23, type metadata accessor for ScrubberElement);
      return v25;
    }

    v28 = type metadata accessor for ReachabilityEvent;
    v29 = v16;
  }

  else
  {
    sub_1D17B99D4(v23, v18, type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D17BA164(&v23[v24], v11, type metadata accessor for CameraClip);
      v25 = _s13HomeDataModel10CameraClipV2eeoiySbAC_ACtFZ_0(v18, v11);
      sub_1D17B82F0(v11, type metadata accessor for CameraClip);
      v26 = v18;
      v27 = type metadata accessor for CameraClip;
      goto LABEL_9;
    }

    v28 = type metadata accessor for CameraClip;
    v29 = v18;
  }

  sub_1D17B82F0(v29, v28);
  sub_1D17BA770(v23);
  return 0;
}

uint64_t sub_1D17BA528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D17BA668()
{
  result = type metadata accessor for CameraClip();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ReachabilityEvent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D17BA704()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D17BA770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D80, &qword_1D1E74300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ScrubberPositionData.element.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScrubberPositionData() + 28);

  return sub_1D17BA880(v3, a1);
}

uint64_t type metadata accessor for ScrubberPositionData()
{
  result = qword_1EC643D90;
  if (!qword_1EC643D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D17BA880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ScrubberPositionData.init(offset:clipOffset:timeElapsedInClip:clipWidth:element:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D3>)
{
  sub_1D1741A30(a2, &qword_1EC642570, &qword_1D1E6C6A0);
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  v11 = a3 + *(type metadata accessor for ScrubberPositionData() + 28);

  return sub_1D17BA978(a1, v11);
}

uint64_t sub_1D17BA978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ScrubberPositionData.addingOffset(_:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v54 = a1;
  v49 = type metadata accessor for ReachabilityEvent();
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CameraClip();
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E669FC();
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrubberElement(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v47 - v28;
  v31 = *v2;
  v30 = *(v2 + 8);
  ScrubberPositionData.timeElapsedInClip.getter();
  v32 = *(v2 + 16);
  v53 = type metadata accessor for ScrubberPositionData();
  v33 = *(v53 + 28);
  sub_1D17BA880(v2 + v33, v29);
  sub_1D17BA880(v2 + v33, v27);
  v34 = 1;
  v35 = (*(v12 + 48))(v27, 1, v11);
  v36 = v8;
  v37 = v52;
  if (v35 != 1)
  {
    sub_1D17BB5A8(v27, v18, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v18, v16);
    v38 = (v37 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v16;
      v40 = v50;
      sub_1D17BB5A8(v39, v50, type metadata accessor for ReachabilityEvent);
      v41 = v51;
      (*v38)(v51, v40 + *(v49 + 24), v36);
      v42 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v43 = v16;
      v40 = v48;
      sub_1D17BB5A8(v43, v48, type metadata accessor for CameraClip);
      v41 = v51;
      (*v38)(v51, v40 + *(v47 + 24), v36);
      v42 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v40, v42);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v37 + 8))(v41, v36);
    sub_1D17B82F0(v18, type metadata accessor for ScrubberElement);
    v34 = 0;
  }

  (*(v37 + 56))(v22, v34, 1, v36);
  sub_1D1741A30(v22, &qword_1EC642570, &qword_1D1E6C6A0);
  v44 = v53;
  v45 = v54;
  *v54 = v31 + a2;
  *(v45 + 1) = v30;
  *(v45 + 2) = v32;
  return sub_1D17BA978(v29, v45 + *(v44 + 28));
}

uint64_t ScrubberPositionData.timeElapsedInClip.getter()
{
  v1 = type metadata accessor for CameraClip();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrubberElement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for ScrubberPositionData();
  sub_1D17BA880(v0 + *(v14 + 28), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return sub_1D1741A30(v13, &qword_1EC643D88, &unk_1D1E73BE0);
  }

  sub_1D17BB544(v13, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17B82F0(v9, type metadata accessor for ScrubberElement);
    return sub_1D17B82F0(v13, type metadata accessor for ScrubberElement);
  }

  else
  {
    sub_1D17BB5A8(v9, v4, type metadata accessor for CameraClip);
    v16 = *&v4[*(v1 + 36)];
    sub_1D17B82F0(v4, type metadata accessor for CameraClip);
    result = sub_1D17B82F0(v13, type metadata accessor for ScrubberElement);
    v17 = v0[2];
    if (v17 > 0.0)
    {
      v18 = v16 / v17 * (v0[1] - *v0);
    }
  }

  return result;
}

uint64_t ScrubberPositionData.time.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v35 = type metadata accessor for ReachabilityEvent();
  v2 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for CameraClip();
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberElement(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(type metadata accessor for ScrubberPositionData() + 28);
  v37 = v1;
  sub_1D17BA880(v1 + v24, v23);
  v25 = 1;
  v26 = (*(v13 + 48))(v23, 1, v12);
  v27 = v38;
  if (v26 != 1)
  {
    sub_1D17BB5A8(v23, v19, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v19, v17);
    v28 = (v8 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v36;
      sub_1D17BB5A8(v17, v36, type metadata accessor for ReachabilityEvent);
      (*v28)(v11, v29 + *(v35 + 24), v7);
      v30 = type metadata accessor for ReachabilityEvent;
      v31 = v29;
    }

    else
    {
      sub_1D17BB5A8(v17, v6, type metadata accessor for CameraClip);
      (*v28)(v11, &v6[*(v34 + 24)], v7);
      v30 = type metadata accessor for CameraClip;
      v31 = v6;
    }

    sub_1D17B82F0(v31, v30);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v8 + 8))(v11, v7);
    sub_1D17B82F0(v19, type metadata accessor for ScrubberElement);
    v25 = 0;
  }

  return (*(v8 + 56))(v27, v25, 1, v7);
}

uint64_t sub_1D17BB544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D17BB5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ScrubberPositionData.updating(offset:clipOffset:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v54 = a1;
  v49 = type metadata accessor for ReachabilityEvent();
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CameraClip();
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E669FC();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ScrubberElement(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v47 - v30;
  ScrubberPositionData.timeElapsedInClip.getter();
  v32 = *(v3 + 16);
  v53 = type metadata accessor for ScrubberPositionData();
  v33 = *(v53 + 28);
  sub_1D17BA880(v3 + v33, v31);
  sub_1D17BA880(v3 + v33, v29);
  v34 = 1;
  v35 = (*(v14 + 48))(v29, 1, v13);
  v36 = v10;
  v37 = v52;
  if (v35 != 1)
  {
    sub_1D17BB5A8(v29, v20, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v20, v18);
    v38 = (v37 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v18;
      v40 = v50;
      sub_1D17BB5A8(v39, v50, type metadata accessor for ReachabilityEvent);
      v41 = v51;
      (*v38)(v51, v40 + *(v49 + 24), v36);
      v42 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v43 = v18;
      v40 = v48;
      sub_1D17BB5A8(v43, v48, type metadata accessor for CameraClip);
      v41 = v51;
      (*v38)(v51, v40 + *(v47 + 24), v36);
      v42 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v40, v42);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v37 + 8))(v41, v36);
    sub_1D17B82F0(v20, type metadata accessor for ScrubberElement);
    v34 = 0;
  }

  (*(v37 + 56))(v24, v34, 1, v36);
  sub_1D1741A30(v24, &qword_1EC642570, &qword_1D1E6C6A0);
  v44 = v53;
  v45 = v54;
  *v54 = a2;
  v45[1] = a3;
  *(v45 + 2) = v32;
  return sub_1D17BA978(v31, v45 + *(v44 + 28));
}

uint64_t ScrubberPositionData.updating(offset:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v53 = a1;
  v48 = type metadata accessor for ReachabilityEvent();
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CameraClip();
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E669FC();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrubberElement(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v46 - v28;
  v30 = *(v2 + 8);
  ScrubberPositionData.timeElapsedInClip.getter();
  v31 = *(v2 + 16);
  v52 = type metadata accessor for ScrubberPositionData();
  v32 = *(v52 + 28);
  sub_1D17BA880(v2 + v32, v29);
  sub_1D17BA880(v2 + v32, v27);
  v33 = 1;
  v34 = (*(v12 + 48))(v27, 1, v11);
  v35 = v8;
  v36 = v51;
  if (v34 != 1)
  {
    sub_1D17BB5A8(v27, v18, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v18, v16);
    v37 = (v36 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v16;
      v39 = v49;
      sub_1D17BB5A8(v38, v49, type metadata accessor for ReachabilityEvent);
      v40 = v50;
      (*v37)(v50, v39 + *(v48 + 24), v35);
      v41 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v42 = v16;
      v39 = v47;
      sub_1D17BB5A8(v42, v47, type metadata accessor for CameraClip);
      v40 = v50;
      (*v37)(v50, v39 + *(v46 + 24), v35);
      v41 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v39, v41);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v36 + 8))(v40, v35);
    sub_1D17B82F0(v18, type metadata accessor for ScrubberElement);
    v33 = 0;
  }

  (*(v36 + 56))(v22, v33, 1, v35);
  sub_1D1741A30(v22, &qword_1EC642570, &qword_1D1E6C6A0);
  v43 = v52;
  v44 = v53;
  *v53 = a2;
  *(v44 + 1) = v30;
  *(v44 + 2) = v31;
  return sub_1D17BA978(v29, v44 + *(v43 + 28));
}

uint64_t ScrubberPositionData.updating(element:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v48 = type metadata accessor for ReachabilityEvent();
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CameraClip();
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E669FC();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrubberElement(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v46 - v28;
  v30 = *v2;
  v31 = v2[1];
  ScrubberPositionData.timeElapsedInClip.getter();
  v32 = v2[2];
  sub_1D17BA880(a1, v29);
  v52 = type metadata accessor for ScrubberPositionData();
  sub_1D17BA880(v2 + *(v52 + 28), v27);
  v33 = 1;
  v34 = (*(v12 + 48))(v27, 1, v11);
  v35 = v8;
  v36 = v51;
  if (v34 != 1)
  {
    sub_1D17BB5A8(v27, v18, type metadata accessor for ScrubberElement);
    sub_1D17BB544(v18, v16);
    v37 = (v36 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v16;
      v39 = v49;
      sub_1D17BB5A8(v38, v49, type metadata accessor for ReachabilityEvent);
      v40 = v50;
      (*v37)(v50, v39 + *(v48 + 24), v35);
      v41 = type metadata accessor for ReachabilityEvent;
    }

    else
    {
      v42 = v16;
      v39 = v47;
      sub_1D17BB5A8(v42, v47, type metadata accessor for CameraClip);
      v40 = v50;
      (*v37)(v50, v39 + *(v46 + 24), v35);
      v41 = type metadata accessor for CameraClip;
    }

    sub_1D17B82F0(v39, v41);
    ScrubberPositionData.timeElapsedInClip.getter();
    sub_1D1E6693C();
    (*(v36 + 8))(v40, v35);
    sub_1D17B82F0(v18, type metadata accessor for ScrubberElement);
    v33 = 0;
  }

  (*(v36 + 56))(v22, v33, 1, v35);
  sub_1D1741A30(v22, &qword_1EC642570, &qword_1D1E6C6A0);
  v43 = v52;
  v44 = v53;
  *v53 = v30;
  v44[1] = v31;
  v44[2] = v32;
  return sub_1D17BA978(v29, v44 + *(v43 + 28));
}

BOOL _s13HomeDataModel016ScrubberPositionB0V2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = type metadata accessor for ScrubberElement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643DA8, &qword_1D1E73C48);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for ScrubberPositionData() + 28);
  v20 = *(v18 + 48);
  sub_1D17BA880(a1 + v19, v17);
  sub_1D17BA880(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1D1741A30(v17, &qword_1EC643D88, &unk_1D1E73BE0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1D17BA880(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1D17B82F0(v12, type metadata accessor for ScrubberElement);
LABEL_9:
    sub_1D1741A30(v17, &qword_1EC643DA8, &qword_1D1E73C48);
    return 0;
  }

  sub_1D17BB5A8(&v17[v20], v8, type metadata accessor for ScrubberElement);
  v23 = _s13HomeDataModel15ScrubberElementO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1D17B82F0(v8, type metadata accessor for ScrubberElement);
  sub_1D17B82F0(v12, type metadata accessor for ScrubberElement);
  sub_1D1741A30(v17, &qword_1EC643D88, &unk_1D1E73BE0);
  return v23;
}

void sub_1D17BC7D0()
{
  sub_1D17BC854();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D17BC854()
{
  if (!qword_1EC643DA0)
  {
    type metadata accessor for ScrubberElement(255);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC643DA0);
    }
  }
}

uint64_t SignificantEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SignificantEvent.clipID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantEvent() + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SignificantEvent()
{
  result = qword_1EC643DD8;
  if (!qword_1EC643DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SignificantEvent.reason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SignificantEvent();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SignificantEvent.dateOfOccurrence.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantEvent() + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignificantEvent.confidenceLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SignificantEvent();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SignificantEvent.faceCropImageData.getter()
{
  v1 = v0 + *(type metadata accessor for SignificantEvent() + 40);
  v2 = *v1;
  sub_1D1771B38(*v1, *(v1 + 8));
  return v2;
}

uint64_t SignificantEvent.faceCropImageData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SignificantEvent() + 40);
  result = sub_1D1716AA4(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SignificantEvent.init(id:clipID:reason:dateOfOccurrence:confidenceLevel:faceCropURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *a5;
  v13 = type metadata accessor for SignificantEvent();
  *(a7 + v13[10]) = xmmword_1D1E73C50;
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v15(a7 + v13[5], a2, v14);
  *(a7 + v13[6]) = v11;
  v16 = v13[7];
  v17 = sub_1D1E669FC();
  (*(*(v17 - 8) + 32))(a7 + v16, a4, v17);
  *(a7 + v13[8]) = v12;
  v18 = a7 + v13[9];

  return sub_1D17BCD38(a6, v18);
}

uint64_t sub_1D17BCD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SignificantEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D1E6680C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  sub_1D1E66A7C();
  sub_1D17BDFEC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v11 = type metadata accessor for SignificantEvent();
  v12 = v0 + v11[5];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + v11[6]));
  v13 = v11[7];
  sub_1D1E669FC();
  sub_1D17BDFEC(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v14 = *(v1 + v11[8]);
  sub_1D1E6922C();
  if (v14 != 4)
  {
    MEMORY[0x1D3892850](v14);
  }

  sub_1D17BDBEC(v1 + v11[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D17BDFEC(&qword_1EC643068, MEMORY[0x1E6968FB0]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v15 = (v1 + v11[10]);
  if (v15[1] >> 60 == 15)
  {
    return sub_1D1E6922C();
  }

  v17 = *v15;
  sub_1D1E6922C();
  return sub_1D1E668CC();
}

uint64_t SignificantEvent.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E6680C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BDFEC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v11 = type metadata accessor for SignificantEvent();
  v12 = v0 + v11[5];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + v11[6]));
  v13 = v11[7];
  sub_1D1E669FC();
  sub_1D17BDFEC(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v14 = *(v1 + v11[8]);
  sub_1D1E6922C();
  if (v14 != 4)
  {
    MEMORY[0x1D3892850](v14);
  }

  sub_1D17BDBEC(v1 + v11[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D17BDFEC(&qword_1EC643068, MEMORY[0x1E6968FB0]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v15 = (v1 + v11[10]);
  if (v15[1] >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    v16 = *v15;
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D17BD434(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = sub_1D1E6680C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17BDFEC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v14 = v2 + a2[5];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v4 + a2[6]));
  v15 = a2[7];
  sub_1D1E669FC();
  sub_1D17BDFEC(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v16 = *(v4 + a2[8]);
  sub_1D1E6922C();
  if (v16 != 4)
  {
    MEMORY[0x1D3892850](v16);
  }

  sub_1D17BDBEC(v4 + a2[9], v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D17BDFEC(&qword_1EC643068, MEMORY[0x1E6968FB0]);
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  v17 = (v4 + a2[10]);
  if (v17[1] >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    v18 = *v17;
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel16SignificantEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E6680C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for SignificantEvent();
  v18 = v17[5];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v17[6]) != *(a2 + v17[6]))
  {
    return 0;
  }

  v19 = v17[7];
  if ((sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v20 = v17[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 4)
  {
    if (v22 != 4)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  v23 = v17[9];
  v24 = *(v13 + 48);
  sub_1D17BDBEC(a1 + v23, v16);
  v38 = v24;
  sub_1D17BDBEC(a2 + v23, &v16[v24]);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v38], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642EA8, &qword_1D1E73C60);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1D17BDBEC(v16, v12);
  if (v25(&v16[v38], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_1D1741A30(v16, &qword_1EC643D18, &unk_1D1E73EA0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v38], v4);
  sub_1D17BDFEC(&qword_1EC643D28, MEMORY[0x1E6968FB0]);
  v26 = sub_1D1E6775C();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642EA8, &qword_1D1E73C60);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v28 = v17[10];
  v29 = a1 + v28;
  v31 = *(a1 + v28);
  v30 = *(v29 + 8);
  v32 = (a2 + v28);
  v34 = *v32;
  v33 = v32[1];
  if (v30 >> 60 == 15)
  {
    if (v33 >> 60 == 15)
    {
      sub_1D1771B38(v31, *(v29 + 8));
      sub_1D1771B38(v34, v33);
      sub_1D1716AA4(v31, v30);
      return 1;
    }

    goto LABEL_20;
  }

  if (v33 >> 60 == 15)
  {
LABEL_20:
    sub_1D1771B38(v31, *(v29 + 8));
    sub_1D1771B38(v34, v33);
    sub_1D1716AA4(v31, v30);
    sub_1D1716AA4(v34, v33);
    return 0;
  }

  sub_1D1771B38(v31, *(v29 + 8));
  sub_1D1771B38(v34, v33);
  v36 = sub_1D199F344(v31, v30, v34, v33);
  sub_1D1716AA4(v34, v33);
  sub_1D1716AA4(v31, v30);
  return (v36 & 1) != 0;
}

uint64_t sub_1D17BDBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D17BDC60()
{
  result = qword_1EC643DB0;
  if (!qword_1EC643DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643DB8, &qword_1D1E73C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DB0);
  }

  return result;
}

unint64_t sub_1D17BDCC8()
{
  result = qword_1EC643DC0;
  if (!qword_1EC643DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DC0);
  }

  return result;
}

unint64_t sub_1D17BDD20()
{
  result = qword_1EC643DC8;
  if (!qword_1EC643DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DC8);
  }

  return result;
}

void sub_1D17BDE2C()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1E669FC();
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC643DE8);
      if (v2 <= 0x3F)
      {
        sub_1D17BDF28();
        if (v3 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EE07D198);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D17BDF28()
{
  if (!qword_1EC643D10)
  {
    sub_1D1E6680C();
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC643D10);
    }
  }
}

void sub_1D17BDF80(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D1E685AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D17BDFEC(unint64_t *a1, void (*a2)(uint64_t))
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

HomeDataModel::CameraClipPlaybackViewState_optional __swiftcall CameraClipPlaybackViewState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CameraClipPlaybackViewState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x646573756170;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 1702259052;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6979616C70;
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

unint64_t sub_1D17BE140()
{
  result = qword_1EC643DF0;
  if (!qword_1EC643DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643DF0);
  }

  return result;
}

uint64_t sub_1D17BE194()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17BE270()
{
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D17BE338()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D17BE41C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x646573756170;
  v5 = 0xD000000000000014;
  v6 = 0x80000001D1EB5A20;
  v7 = 0x80000001D1EB5A40;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 1702259052;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6979616C70;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D17BE4C4(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = type metadata accessor for SignificantEvent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E18, &unk_1D1E73FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - v10;
  sub_1D1741C08(v1, &v13 - v10, &qword_1EC643E18, &unk_1D1E73FD0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 0;
  }

  sub_1D17BA164(v11, v7, type metadata accessor for SignificantEvent);
  v14(&v13, v7);
  if (v2)
  {
    result = sub_1D17C3CD4(v7, type metadata accessor for SignificantEvent);
    __break(1u);
  }

  else
  {
    sub_1D17C3CD4(v7, type metadata accessor for SignificantEvent);
    return v13;
  }

  return result;
}