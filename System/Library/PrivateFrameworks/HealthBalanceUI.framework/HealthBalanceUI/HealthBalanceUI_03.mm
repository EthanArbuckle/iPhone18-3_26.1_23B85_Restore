void sub_1CFE9A678(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v66 = sub_1CFF0C7AC();
  v57 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_1CFF0CB6C();
  v58 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  sub_1CFE9E3A4(0, &qword_1EDEC4CB8, MEMORY[0x1E69A2E68], MEMORY[0x1E6969530]);
  v56 = v13;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v55 = &v47[-v15];
  v53 = *(a1 + 16);
  if (!v53)
  {
LABEL_19:

    return;
  }

  v16 = 0;
  v54 = v58 + 16;
  v64 = (v58 + 32);
  v52 = v57 + 16;
  v50 = a2;
  v49 = a1;
  v48 = v12;
  v51 = v57 + 32;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_1CFF0EBEC();
      __break(1u);
      goto LABEL_26;
    }

    v17 = *(v58 + 72);
    (*(v58 + 16))(v12, a1 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + v17 * v16, v68, v14);
    v18 = *(a2 + 16);
    if (v16 == v18)
    {

      (*(v58 + 8))(v12, v68);
      return;
    }

    if (v16 >= v18)
    {
      goto LABEL_22;
    }

    v63 = a3;
    v19 = v57;
    v20 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v60 = *(v57 + 72);
    v61 = v17;
    v62 = v16;
    v21 = v20 + v60 * v16;
    v22 = v55;
    v23 = *(v56 + 48);
    v24 = *v64;
    v25 = v68;
    (*v64)(v55, v12, v68);
    v26 = a4;
    v27 = v66;
    (*(v19 + 16))(&v22[v23], v21, v66);
    v28 = v67;
    v59 = v24;
    v24(v67, v22, v25);
    v29 = *(v19 + 32);
    v30 = v27;
    a4 = v26;
    v29(v65, &v22[v23], v30);
    v31 = *v26;
    v33 = sub_1CFEC3AB8(v28);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_23;
    }

    v37 = v32;
    if (v31[3] < v36)
    {
      break;
    }

    v40 = v62;
    if (v63)
    {
      if (v32)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1CFEC5E40();
      if (v37)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    v41 = *v26;
    *(*v26 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v59(v41[6] + v33 * v61, v67, v68);
    v29((v41[7] + v33 * v60), v65, v66);
    v42 = v41[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_24;
    }

    v16 = v40 + 1;
    v41[2] = v44;
    a3 = 1;
    a2 = v50;
    a1 = v49;
    v12 = v48;
    if (v53 == v16)
    {
      goto LABEL_19;
    }
  }

  sub_1CFEC4C9C(v36, v63 & 1);
  v38 = sub_1CFEC3AB8(v67);
  v40 = v62;
  if ((v37 & 1) != (v39 & 1))
  {
    goto LABEL_25;
  }

  v33 = v38;
  if ((v37 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v45 = swift_allocError();
  swift_willThrow();

  v71 = v45;
  v46 = v45;
  sub_1CFE9E1D8();
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v57 + 8))(v65, v66);
    (*(v58 + 8))(v67, v68);

    return;
  }

LABEL_26:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1CFF0E96C();
  MEMORY[0x1D3879330](0xD00000000000001BLL, 0x80000001CFF158D0);
  sub_1CFF0EA0C();
  MEMORY[0x1D3879330](39, 0xE100000000000000);
  sub_1CFF0EA2C();
  __break(1u);
}

uint64_t sub_1CFE9ACE8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v43 = a5;
  v54 = a4;
  v52 = a3(0);
  v8 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = v5;
  v18 = *v5;
  v19 = v53;
  result = sub_1CFE9B0A4(a1, a2, v18, v54);
  if (!v19)
  {
    v51 = v16;
    v44 = v13;
    v22 = v52;
    if (v21)
    {
      return *(v18 + 16);
    }

    v41 = v17;
    v42 = v10;
    v47 = a1;
    v48 = a2;
    v53 = result;
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v18;
      v26 = (v18 + 16);
      v25 = *(v18 + 16);
      v27 = v51;
      if (v23 == v25)
      {
        return v53;
      }

      v45 = v8;
      v46 = (v8 + 8);
      v40 = (v8 + 40);
      v50 = v8 + 16;
      while (v23 < v25)
      {
        v28 = *(v8 + 80);
        v54 = v24;
        v49 = (v28 + 32) & ~v28;
        v29 = v24 + v49;
        v30 = *(v8 + 72);
        v31 = *(v8 + 16);
        v52 = v30 * v23;
        v31(v27, v24 + v49 + v30 * v23, v22);
        v32 = v47(v27);
        result = (*v46)(v27, v22);
        if (v32)
        {
          v8 = v45;
          v24 = v54;
        }

        else
        {
          v33 = v53;
          if (v23 == v53)
          {
            v8 = v45;
            v24 = v54;
          }

          else
          {
            if ((v53 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v34 = *v26;
            if (v53 >= v34)
            {
              goto LABEL_25;
            }

            v35 = v30 * v53;
            result = (v31)(v44, &v29[v30 * v53], v22);
            if (v23 >= v34)
            {
              goto LABEL_26;
            }

            v36 = v42;
            v31(v42, &v29[v52], v22);
            v37 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = v43(v37);
            }

            v8 = v45;
            v38 = &v37[v49];
            v39 = *v40;
            result = (*v40)(&v37[v49 + v35], v36, v22);
            if (v23 >= *(v37 + 2))
            {
              goto LABEL_27;
            }

            result = v39(&v38[v52], v44, v22);
            *v41 = v37;
            v33 = v53;
            v24 = v37;
          }

          v53 = v33 + 1;
        }

        ++v23;
        v26 = (v24 + 16);
        v25 = *(v24 + 2);
        v27 = v51;
        if (v23 == v25)
        {
          return v53;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFE9B0A4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1CFE9B194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1CFEC3AB8(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CFEC61D0();
      v10 = v15;
    }

    v11 = *(v10 + 48);
    v12 = sub_1CFF0CB6C();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v10 + 56) + 16 * v8;
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 8);
    *a2 = v14;
    *(a2 + 8) = v13;
    sub_1CFE9B288(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a2 + 9) = (v7 & 1) == 0;
}

void sub_1CFE9B288(int64_t a1, uint64_t a2)
{
  v38 = sub_1CFF0CB6C();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1CFF0E90C();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1CFE9BEA8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      v22 = sub_1CFF0E44C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (16 * a1 != 16 * v9 || (a1 = v9, v27 >= v28 + 1))
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1CFE9B5B4(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = v4;
  v26 = a2;
  v9 = sub_1CFF0CB6C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1CFEC3AB8(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a4 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v20 >= result && (a4 & 1) == 0)
  {
    result = sub_1CFEC61D0();
    goto LABEL_9;
  }

  sub_1CFEC5178(result, a4 & 1);
  result = sub_1CFEC3AB8(a3);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1CFF0EBEC();
    __break(1u);
    return result;
  }

  v15 = result;
LABEL_9:
  v22 = v26;
  v23 = *v5;
  if (v19)
  {
    v24 = v23[7] + 16 * v15;
    *v24 = a1;
    *(v24 + 8) = v22 & 1;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1CFE79040(v15, v12, a1, v22 & 1, v23);
  }

  return result;
}

uint64_t _s15HealthBalanceUI25OvernightMetricsViewModelV7SummaryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a1[8];
  v8 = a2[3];
  v7 = a2[4];
  v10 = a2[5];
  v9 = a2[6];
  v11 = a2[8];
  v13 = a2[7];
  v14 = a1[7];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1CFF0EBCC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1CFF0EBCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_1CFF0EBCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_1CFF0EBCC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1CFE9B8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CDFC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69A2F48];
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v36 - v8;
  sub_1CFE9E440(0, &qword_1EDEC4C88, &qword_1EDEC5180, v6);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  sub_1CFE9E4B8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 56);
  sub_1CFE8CF9C(a1, v21, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  sub_1CFE8CF9C(a2, &v21[v23], type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CFE8CF9C(v21, v18, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFE9CFD8(v18, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
      goto LABEL_7;
    }

    v27 = *(v10 + 48);
    sub_1CFE8CA40(v18, v12);
    sub_1CFE8CA40(&v21[v23], &v12[v27]);
    v29 = v38;
    v28 = v39;
    v30 = *(v38 + 48);
    if (v30(v12, 1, v39) == 1)
    {
      if (v30(&v12[v27], 1, v28) == 1)
      {
        sub_1CFE9CFD8(v12, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
        v25 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      v31 = v37;
      sub_1CFE9E23C(v12, v37, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
      if (v30(&v12[v27], 1, v28) != 1)
      {
        v33 = v36;
        (*(v29 + 32))(v36, &v12[v27], v28);
        sub_1CFE9BEA8(&qword_1EDEC4C90, MEMORY[0x1E69A2F48]);
        v34 = sub_1CFF0E4CC();
        v35 = *(v29 + 8);
        v35(v33, v28);
        v35(v31, v28);
        sub_1CFE9CFD8(v12, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
        v26 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod;
        if (v34)
        {
          v25 = 1;
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      (*(v29 + 8))(v31, v28);
    }

    sub_1CFE9E114(v12, &qword_1EDEC4C88, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  sub_1CFE8CF9C(v21, v15, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  v24 = *v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1CFE91E10(v24, *&v21[v23], MEMORY[0x1E69A2E68], &qword_1EDEC4CD8, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2E80]);

LABEL_15:
    v26 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod;
    goto LABEL_16;
  }

LABEL_7:
  v25 = 0;
  v26 = sub_1CFE9E4B8;
LABEL_16:
  sub_1CFE9BEF0(v21, v26);
  return v25 & 1;
}

uint64_t sub_1CFE9BEA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFE9BEF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15HealthBalanceUI25OvernightMetricsViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  sub_1CFE9E440(0, &qword_1EDEC4B30, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  if ((sub_1CFF0CABC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = type metadata accessor for OvernightMetricsViewModel(0);
  if ((sub_1CFE91E10(*(a1 + v15[5]), *(a2 + v15[5]), MEMORY[0x1E69A2EB8], &qword_1EDEC4970, MEMORY[0x1E69A2EB8], MEMORY[0x1E69A2EC8]) & 1) == 0 || (sub_1CFE9B8CC(a1 + v15[6], a2 + v15[6]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v31 = v15;
  v16 = v15[7];
  v17 = *(v12 + 48);
  sub_1CFE9E23C(a1 + v16, v14, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  v18 = a2 + v16;
  v19 = v17;
  sub_1CFE9E23C(v18, &v14[v17], qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) != 1)
  {
    sub_1CFE9E23C(v14, v10, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
    if (v20(&v14[v19], 1, v4) != 1)
    {
      sub_1CFE9E170(&v14[v19], v7, type metadata accessor for OvernightMetricsChartPoint);
      v21 = _s15HealthBalanceUI26OvernightMetricsChartPointV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1CFE9BEF0(v7, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFE9BEF0(v10, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFE9CFD8(v14, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
      if (v21)
      {
        goto LABEL_11;
      }

LABEL_22:
      v28 = 0;
      return v28 & 1;
    }

    sub_1CFE9BEF0(v10, type metadata accessor for OvernightMetricsChartPoint);
LABEL_9:
    sub_1CFE9E114(v14, &qword_1EDEC4B30, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
    goto LABEL_22;
  }

  if (v20(&v14[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1CFE9CFD8(v14, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
LABEL_11:
  v22 = v31;
  v23 = v31[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  if ((sub_1CFE911B0(*(a1 + v23), *(a2 + v23)) & 1) == 0)
  {
    goto LABEL_22;
  }

  v26 = type metadata accessor for OvernightMetricsChartPointCollection();
  if ((MEMORY[0x1D38775A0](v24 + *(v26 + 20), v25 + *(v26 + 20)) & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1CFEBCFE4(*(v24 + *(v26 + 24)), *(v25 + *(v26 + 24)));
  if ((v27 & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((sub_1CFE911B0(*(a1 + v22[9]), *(a2 + v22[9])) & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((sub_1CFE91E10(*(a1 + v22[10]), *(a2 + v22[10]), MEMORY[0x1E6969530], &qword_1EDEC4D00, MEMORY[0x1E6969530], MEMORY[0x1E6969550]) & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1CFF0C7AC();
  sub_1CFE9BEA8(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  if ((sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0 || (sub_1CFE91E10(*(a1 + v22[13]), *(a2 + v22[13]), MEMORY[0x1E6969530], &qword_1EDEC4D00, MEMORY[0x1E6969530], MEMORY[0x1E6969550]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v28 = sub_1CFE91E10(*(a1 + v22[14]), *(a2 + v22[14]), MEMORY[0x1E69A2E68], &qword_1EDEC4CD8, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2E80]);
  return v28 & 1;
}

unint64_t sub_1CFE9C5D0()
{
  result = qword_1EC512670;
  if (!qword_1EC512670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512670);
  }

  return result;
}

unint64_t sub_1CFE9C624()
{
  result = qword_1EC512680;
  if (!qword_1EC512680)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D50, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC512688, MEMORY[0x1E69A2EB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512680);
  }

  return result;
}

unint64_t sub_1CFE9C6FC()
{
  result = qword_1EC5126A8;
  if (!qword_1EC5126A8)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC512698, type metadata accessor for OvernightMetricsChartPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5126A8);
  }

  return result;
}

unint64_t sub_1CFE9C7D4()
{
  result = qword_1EC5126B0;
  if (!qword_1EC5126B0)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D60, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC5125F0, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5126B0);
  }

  return result;
}

unint64_t sub_1CFE9C8AC()
{
  result = qword_1EC5126C0;
  if (!qword_1EC5126C0)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC5126C8, MEMORY[0x1E69A2E68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5126C0);
  }

  return result;
}

uint64_t sub_1CFE9C984(uint64_t a1)
{
  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFE9C9FC()
{
  result = qword_1EC5126E0;
  if (!qword_1EC5126E0)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D50, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC5126E8, MEMORY[0x1E69A2EB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5126E0);
  }

  return result;
}

uint64_t sub_1CFE9CAD4(uint64_t a1, uint64_t a2)
{
  sub_1CFE8CEEC(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE9CB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFE9CBD0()
{
  result = qword_1EC512708;
  if (!qword_1EC512708)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC5126F8, type metadata accessor for OvernightMetricsChartPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512708);
  }

  return result;
}

unint64_t sub_1CFE9CCA8()
{
  result = qword_1EC512710;
  if (!qword_1EC512710)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D60, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC512620, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512710);
  }

  return result;
}

uint64_t sub_1CFE9CD80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE9DC4C(255, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
    sub_1CFE9BEA8(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFE9CE2C(uint64_t a1, uint64_t a2)
{
  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFE9CEAC()
{
  result = qword_1EC512720;
  if (!qword_1EC512720)
  {
    sub_1CFE8CEEC(255, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
    sub_1CFE9BEA8(&qword_1EC512728, MEMORY[0x1E69A2E68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512720);
  }

  return result;
}

unint64_t sub_1CFE9CF84()
{
  result = qword_1EC512730;
  if (!qword_1EC512730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512730);
  }

  return result;
}

uint64_t sub_1CFE9CFD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFE8CEEC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1CFE9D04C()
{
  result = qword_1EC512740;
  if (!qword_1EC512740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512740);
  }

  return result;
}

void sub_1CFE9D0C8()
{
  sub_1CFF0CADC();
  if (v0 <= 0x3F)
  {
    sub_1CFE8CEEC(319, &qword_1EDEC4D50, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(319);
      if (v2 <= 0x3F)
      {
        sub_1CFE8CEEC(319, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for OvernightMetricsChartPointCollection();
          if (v4 <= 0x3F)
          {
            sub_1CFE8CEEC(319, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1CFE8CEEC(319, &qword_1EDEC4D60, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1CFE9DC4C(319, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
                if (v7 <= 0x3F)
                {
                  sub_1CFE8CEEC(319, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
                  if (v8 <= 0x3F)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CFE9D330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1CFE9D378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OvernightMetricsViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OvernightMetricsViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1CFE9D538()
{
  sub_1CFE8CEEC(319, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1CFE8CEEC(319, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1CFE9D610()
{
  result = qword_1EC512748;
  if (!qword_1EC512748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512748);
  }

  return result;
}

unint64_t sub_1CFE9D668()
{
  result = qword_1EC512750;
  if (!qword_1EC512750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512750);
  }

  return result;
}

unint64_t sub_1CFE9D6C0()
{
  result = qword_1EC512758;
  if (!qword_1EC512758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512758);
  }

  return result;
}

uint64_t sub_1CFE9D714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6152796164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001CFF15770 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001CFF15790 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFF157C0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFF157E0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696F507472616863 && a2 == 0xEB0000000073746ELL || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CFF15800 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFF15820 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x736574614479656BLL && a2 == 0xED000065676E6152 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFF15840 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFF15860 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1CFF0EBCC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1CFE9DA9C()
{
  result = qword_1EC512768;
  if (!qword_1EC512768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512768);
  }

  return result;
}

unint64_t sub_1CFE9DAF0()
{
  result = qword_1EC512778;
  if (!qword_1EC512778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512778);
  }

  return result;
}

unint64_t sub_1CFE9DB44()
{
  result = qword_1EC512788;
  if (!qword_1EC512788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512788);
  }

  return result;
}

void sub_1CFE9DB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFE9DC00()
{
  result = qword_1EC5127B8;
  if (!qword_1EC5127B8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC5127B8);
  }

  return result;
}

void sub_1CFE9DC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFF0C7AC();
    v7 = sub_1CFE9BEA8(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1CFE9DCE8()
{
  result = qword_1EDEC4A28;
  if (!qword_1EDEC4A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEC4A28);
  }

  return result;
}

void sub_1CFE9DD34()
{
  if (!qword_1EC5127C8)
  {
    sub_1CFE9E0C0(255, &qword_1EC5127D0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5127C8);
    }
  }
}

unint64_t sub_1CFE9DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1CFE9DF4C(unint64_t result, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v12 > v8[3] >> 1)
  {
    if (v9 <= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v9;
    }

    v8 = sub_1CFE97E64(isUniquelyReferenced_nonNull_native, v18, 1, v8, a3, a4, a5);
    *v6 = v8;
  }

  result = sub_1CFE9DDB8(v10, a2, 0, a6);
  *v6 = v8;
  return result;
}

void sub_1CFE9E03C()
{
  if (!qword_1EDEC15C8)
  {
    sub_1CFE9E0C0(255, &qword_1EDEC4D70, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC15C8);
    }
  }
}

void sub_1CFE9E0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1CFE9E114(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFE9E440(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1CFE9E170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFE9E1D8()
{
  result = qword_1EDEC1598;
  if (!qword_1EDEC1598)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDEC1598);
  }

  return result;
}

uint64_t sub_1CFE9E23C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFE8CEEC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1CFE9E2F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFF0CB6C();
    a3(255);
    sub_1CFE9BEA8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v5 = sub_1CFF0EA7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFE9E3A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1CFE9E440(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFE8CEEC(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1CFE9E4B8()
{
  if (!qword_1EDEC4B38[0])
  {
    type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDEC4B38);
    }
  }
}

void sub_1CFE9E51C()
{
  if (!qword_1EDEC4A18)
  {
    sub_1CFF0CB6C();
    sub_1CFE9BEA8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v0 = sub_1CFF0EA7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4A18);
    }
  }
}

void sub_1CFE9E5B8()
{
  if (!qword_1EDEC4CC0)
  {
    sub_1CFF0CB6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4CC0);
    }
  }
}

unint64_t sub_1CFE9E654()
{
  result = qword_1EC5127F0;
  if (!qword_1EC5127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5127F0);
  }

  return result;
}

unint64_t sub_1CFE9E6AC()
{
  result = qword_1EC5127F8;
  if (!qword_1EC5127F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5127F8);
  }

  return result;
}

unint64_t sub_1CFE9E704()
{
  result = qword_1EC512800;
  if (!qword_1EC512800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512800);
  }

  return result;
}

unint64_t sub_1CFE9E75C()
{
  result = qword_1EC512808;
  if (!qword_1EC512808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512808);
  }

  return result;
}

unint64_t sub_1CFE9E7B4()
{
  result = qword_1EC512810;
  if (!qword_1EC512810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512810);
  }

  return result;
}

unint64_t sub_1CFE9E80C()
{
  result = qword_1EC512818;
  if (!qword_1EC512818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512818);
  }

  return result;
}

unint64_t sub_1CFE9E864()
{
  result = qword_1EC512820;
  if (!qword_1EC512820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512820);
  }

  return result;
}

unint64_t sub_1CFE9E8BC()
{
  result = qword_1EC512828;
  if (!qword_1EC512828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512828);
  }

  return result;
}

unint64_t sub_1CFE9E914()
{
  result = qword_1EC512830;
  if (!qword_1EC512830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512830);
  }

  return result;
}

void sub_1CFE9E968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFE9E9B8()
{
  if (!qword_1EDEC16E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC16E0);
    }
  }
}

void *sub_1CFE9EA94(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1CFF0EA1C();

    if (v4)
    {
      sub_1CFE62B04(0, &qword_1EDEC1698);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1CFEC3D90(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_1CFE9EB58()
{
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  v1 = *(v0 + 16);

  return v1;
}

id sub_1CFE9EC08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1CFE9ECC0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1CFE62B04(0, &qword_1EDEC1698);
  v5 = v4;
  v6 = sub_1CFF0E89C();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
    sub_1CFF0C8CC();
  }
}

uint64_t sub_1CFE9EE2C()
{
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1CFE9EEDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = &unk_1CFF11D00;
  a2[1] = v6;
}

uint64_t sub_1CFE9EFB4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1CFE9F0A0;

  return v5();
}

uint64_t sub_1CFE9F0A0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1CFE9F1B0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);

  sub_1CFF0C8CC();
}

uint64_t sub_1CFE9F2CC(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CFE9F3BC;

  return v4(v1 + 16);
}

uint64_t sub_1CFE9F3BC()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_1CFE9F4C8()
{
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();
}

uint64_t sub_1CFE9F56C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  *a2 = *(v3 + 40);
}

uint64_t sub_1CFE9F618(uint64_t a1)
{
  if (!*(v1 + 40))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
    sub_1CFF0C8CC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_1CFF0E71C();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 40) = a1;
}

uint64_t sub_1CFE9F7A0()
{
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();
}

uint64_t sub_1CFE9F844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  *a2 = *(v3 + 48);
}

uint64_t sub_1CFE9F8F0(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
    sub_1CFF0C8CC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_1CFF0E71C();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 48) = a1;
}

void *sub_1CFE9FA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1CFE62B04(0, &qword_1EDEC16C8);
  v8 = MEMORY[0x1D3879530](*MEMORY[0x1E696BC58]);
  result = _HKGenerateDefaultUnitForQuantityType();
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() _changeInUnit_];

    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = v8;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = v4;
    type metadata accessor for SleepingSampleDataTypePreferredUnitProvider();
    v13 = swift_allocObject();
    v13[5] = 0;
    v13[6] = 0;
    sub_1CFF0C90C();
    v13[2] = v11;
    v13[3] = &unk_1CFF11D90;
    v13[4] = v12;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFE9FBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = sub_1CFF0D03C();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  sub_1CFEA34E8();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  sub_1CFF0E6DC();
  v5[39] = sub_1CFF0E6CC();
  v9 = sub_1CFF0E66C();
  v5[40] = v9;
  v5[41] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFE9FCF8, v9, v8);
}

uint64_t sub_1CFE9FCF8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 26;
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[36];
  v7 = v1[29];
  v13 = v1[28];
  sub_1CFEA365C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFF11BA0;
  *(inited + 32) = v7;
  v9 = v7;
  sub_1CFEA36B0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1CFE62B04(0, &qword_1EDEC16C8);
  sub_1CFEA35F4();
  v10 = sub_1CFF0E77C();
  v1[42] = v10;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1CFE9FF44;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1CFEA3558();
  sub_1CFE9E1D8();
  sub_1CFF0E67C();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1CFEA04F8;
  v1[13] = &block_descriptor;
  [v13 preferredUnitsForQuantityTypes:v10 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1CFE9FF44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);
  if (v2)
  {
    v5 = sub_1CFEA01B4;
  }

  else
  {
    v5 = sub_1CFEA0074;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CFEA0074()
{
  v1 = v0[42];
  v2 = v0[29];

  v3 = v0[26];

  v4 = sub_1CFE9EA94(v2, v3);

  if (v4 || (v4 = _HKGenerateDefaultUnitForQuantityType()) != 0)
  {
    v5 = v0[30];
    if (v5)
    {
LABEL_4:
      v5(v4);
      goto LABEL_7;
    }
  }

  else
  {
    v4 = [objc_opt_self() degreeCelsiusUnit];
    v5 = v0[30];
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v6 = v4;
LABEL_7:
  v7 = [objc_opt_self() _changeInUnit_];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1CFEA01B4()
{
  v30 = v0;
  v2 = v0[42];
  v1 = v0[43];

  swift_willThrow();

  sub_1CFF0D01C();
  v3 = v1;
  v4 = sub_1CFF0D02C();
  v5 = sub_1CFF0E7CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[34];
    v27 = v0[33];
    v28 = v0[35];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29[0] = v8;
    *v7 = 136446466;
    v9 = sub_1CFF0ED2C();
    v11 = sub_1CFE462A4(v9, v10, v29);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v12 = *(v0[24] - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = sub_1CFF0E5CC();
    v15 = v14;

    v16 = sub_1CFE462A4(v13, v15, v29);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_1CFE44000, v4, v5, "[%{public}s] Error retrieving unit preferences: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D387A160](v8, -1, -1);
    MEMORY[0x1D387A160](v7, -1, -1);

    (*(v6 + 8))(v28, v27);
  }

  else
  {
    v18 = v0[34];
    v17 = v0[35];
    v19 = v0[33];

    (*(v18 + 8))(v17, v19);
  }

  v20 = _HKGenerateDefaultUnitForQuantityType();
  v21 = v0[43];
  if (!v20)
  {
    v20 = [objc_opt_self() degreeCelsiusUnit];
  }

  v22 = v0[30];
  if (v22)
  {
    v22(v20);
  }

  else
  {
    v23 = v20;
  }

  v24 = [objc_opt_self() _changeInUnit_];

  v25 = v0[1];

  return v25(v24);
}

void sub_1CFEA04F8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1CFEA34E8();
    v4 = a3;
    sub_1CFF0E68C();
  }

  else
  {
    sub_1CFE62B04(0, &qword_1EDEC16C8);
    sub_1CFE62B04(0, &qword_1EDEC1698);
    sub_1CFEA35F4();
    sub_1CFF0E42C();
    sub_1CFEA34E8();
    sub_1CFF0E69C();
  }
}

id sub_1CFEA05D8(uint64_t a1)
{
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69A2E60] || v8 == *MEMORY[0x1E69A2E50])
  {
    v9 = [objc_opt_self() _countPerMinuteUnit];
LABEL_12:

    return v9;
  }

  if (v8 == *MEMORY[0x1E69A2E48])
  {
    v9 = [objc_opt_self() percentUnit];
    goto LABEL_12;
  }

  if (v8 != *MEMORY[0x1E69A2E58])
  {
    if (v8 != *MEMORY[0x1E69A2E40])
    {
      result = sub_1CFF0EA2C();
      __break(1u);
      return result;
    }

    v9 = [objc_opt_self() secondUnit];
    goto LABEL_12;
  }

  swift_getKeyPath();
  v12[1] = v1;
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  v10 = *(v1 + 16);

  return v10;
}

void sub_1CFEA08A0()
{
  v1 = v0;
  v2 = *v0;
  sub_1CFEA3154(0, &qword_1EDEC4A50, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1CFF0D03C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v38 = v0;
  sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  if (!v0[5])
  {
    sub_1CFF0D01C();
    v10 = sub_1CFF0D02C();
    v11 = sub_1CFF0E7EC();
    v12 = os_log_type_enabled(v10, v11);
    v37 = v2;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v13 = 136446210;
      v14 = sub_1CFF0ED2C();
      v16 = sub_1CFE462A4(v14, v15, &v38);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_1CFE44000, v10, v11, "[%{public}s] Beginning observation", v13, 0xCu);
      v17 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1D387A160](v17, -1, -1);
      MEMORY[0x1D387A160](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v18 = sub_1CFF0E70C();
    v19 = *(*(v18 - 8) + 56);
    v19(v5, 1, 1, v18);
    v20 = v19;
    v36 = v19;
    sub_1CFF0E6DC();

    v21 = sub_1CFF0E6CC();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v1;
    sub_1CFEB42B4(0, 0, v5, &unk_1CFF11D38, v22);

    v24 = [objc_opt_self() defaultCenter];
    v20(v5, 1, 1, v18);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = v25;
    v27 = v37;
    v26[6] = v37;
    v28 = v24;
    v29 = sub_1CFEED5DC(0, 0, v5, &unk_1CFF11D48, v26);
    v30 = MEMORY[0x1E69E85F0];
    sub_1CFEA31F0(v5, &qword_1EDEC4A50, MEMORY[0x1E69E85F0]);
    sub_1CFE9F618(v29);
    v36(v5, 1, 1, v18);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v28;
    v32[5] = v31;
    v32[6] = v27;
    v33 = v28;
    v34 = sub_1CFEED5DC(0, 0, v5, &unk_1CFF11D58, v32);
    sub_1CFEA31F0(v5, &qword_1EDEC4A50, v30);
    sub_1CFE9F8F0(v34);
  }
}

uint64_t sub_1CFEA0DB8()
{
  v0[2] = sub_1CFF0E6DC();
  v0[3] = sub_1CFF0E6CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CFEA0E64;

  return sub_1CFEA22F0();
}

uint64_t sub_1CFEA0E64()
{

  v1 = sub_1CFF0E66C();

  return MEMORY[0x1EEE6DFA0](sub_1CFEA0FA0, v1, v0);
}

uint64_t sub_1CFEA0FA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFEA1000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1CFF0D03C();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_1CFEA3154(0, &qword_1EDEC49B8, MEMORY[0x1E6968160]);
  v6[12] = swift_task_alloc();
  v8 = sub_1CFF0E86C();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFEA1168, 0, 0);
}

uint64_t sub_1CFEA1168()
{
  v0[16] = sub_1CFF0E87C();

  sub_1CFF0E85C();
  swift_beginAccess();
  v1 = sub_1CFEA31A8(&qword_1EDEC16A8, MEMORY[0x1E6969EF8]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1CFEA128C;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1CFEA128C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1CFEA1724;
  }

  else
  {
    v2 = sub_1CFEA13A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFEA13BC()
{
  v23 = v0;
  v1 = v0[12];
  v2 = sub_1CFF0C4AC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1CFF0D01C();
    v5 = sub_1CFF0D02C();
    v6 = sub_1CFF0E7EC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      v13 = sub_1CFF0ED2C();
      v15 = sub_1CFE462A4(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1CFE44000, v5, v6, "[%{public}s] Received unit preferences did change notification", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1D387A160](v12, -1, -1);
      MEMORY[0x1D387A160](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {
      v17 = swift_task_alloc();
      v0[20] = v17;
      *v17 = v0;
      v17[1] = sub_1CFEA17A4;

      return sub_1CFEA22F0();
    }

    else
    {
      sub_1CFEA31F0(v0[12], &qword_1EDEC49B8, MEMORY[0x1E6968160]);
      v18 = sub_1CFEA31A8(&qword_1EDEC16A8, MEMORY[0x1E6969EF8]);
      v19 = swift_task_alloc();
      v0[17] = v19;
      *v19 = v0;
      v19[1] = sub_1CFEA128C;
      v20 = v0[12];
      v21 = v0[13];

      return MEMORY[0x1EEE6D8C8](v20, v21, v18);
    }
  }
}

uint64_t sub_1CFEA1724()
{
  *(v0 + 40) = *(v0 + 144);
  sub_1CFE9E1D8();
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1CFEA17A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1CFEA18BC, 0, 0);
}

uint64_t sub_1CFEA18BC()
{
  sub_1CFEA31F0(v0[12], &qword_1EDEC49B8, MEMORY[0x1E6968160]);
  v1 = sub_1CFEA31A8(&qword_1EDEC16A8, MEMORY[0x1E6969EF8]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1CFEA128C;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1CFEA19B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1CFF0D03C();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_1CFEA3154(0, &qword_1EDEC49B8, MEMORY[0x1E6968160]);
  v6[12] = swift_task_alloc();
  v8 = sub_1CFF0E86C();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFEA1B20, 0, 0);
}

uint64_t sub_1CFEA1B20()
{
  v0[16] = sub_1CFF0E87C();

  sub_1CFF0E85C();
  swift_beginAccess();
  v1 = sub_1CFEA31A8(&qword_1EDEC16A8, MEMORY[0x1E6969EF8]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1CFEA1C44;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1CFEA1C44()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1CFEA3DC8;
  }

  else
  {
    v2 = sub_1CFEA1D58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFEA1D74()
{
  v23 = v0;
  v1 = v0[12];
  v2 = sub_1CFF0C4AC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1CFF0D01C();
    v5 = sub_1CFF0D02C();
    v6 = sub_1CFF0E7EC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      v13 = sub_1CFF0ED2C();
      v15 = sub_1CFE462A4(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1CFE44000, v5, v6, "[%{public}s] Received current locale did change notification", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1D387A160](v12, -1, -1);
      MEMORY[0x1D387A160](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {
      v17 = swift_task_alloc();
      v0[20] = v17;
      *v17 = v0;
      v17[1] = sub_1CFEA20DC;

      return sub_1CFEA22F0();
    }

    else
    {
      sub_1CFEA31F0(v0[12], &qword_1EDEC49B8, MEMORY[0x1E6968160]);
      v18 = sub_1CFEA31A8(&qword_1EDEC16A8, MEMORY[0x1E6969EF8]);
      v19 = swift_task_alloc();
      v0[17] = v19;
      *v19 = v0;
      v19[1] = sub_1CFEA1C44;
      v20 = v0[12];
      v21 = v0[13];

      return MEMORY[0x1EEE6D8C8](v20, v21, v18);
    }
  }
}

uint64_t sub_1CFEA20DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1CFEA21F4, 0, 0);
}

uint64_t sub_1CFEA21F4()
{
  sub_1CFEA31F0(v0[12], &qword_1EDEC49B8, MEMORY[0x1E6968160]);
  v1 = sub_1CFEA31A8(&qword_1EDEC16A8, MEMORY[0x1E6969EF8]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1CFEA1C44;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1CFEA22F0()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_1CFF0D03C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_1CFF0E6DC();
  v1[10] = sub_1CFF0E6CC();
  v4 = sub_1CFF0E66C();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFEA2418, v4, v3);
}

uint64_t sub_1CFEA2418()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[13] = OBJC_IVAR____TtC15HealthBalanceUI43SleepingSampleDataTypePreferredUnitProvider___observationRegistrar;
  v0[2] = v1;
  v0[14] = sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  sub_1CFF0C8DC();

  v2 = *(v1 + 24);
  v0[15] = *(v1 + 32);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1CFEA2598;

  return v5();
}

uint64_t sub_1CFEA2598(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1CFEA26E4, v4, v3);
}

uint64_t sub_1CFEA26E4()
{
  v26 = v0;
  v1 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 24) = v1;
  sub_1CFF0C8DC();

  v2 = *(v1 + 16);
  sub_1CFE62B04(0, &qword_1EDEC1698);
  v3 = v2;
  v4 = sub_1CFF0E89C();

  if (v4)
  {
    sub_1CFF0D01C();
    v5 = sub_1CFF0D02C();
    v6 = sub_1CFF0E7EC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 136);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v7)
    {
      v24 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136446210;
      v14 = sub_1CFF0ED2C();
      v16 = sub_1CFE462A4(v14, v15, &v25);

      *(v12 + 4) = v16;
      v17 = "[%{public}s] Fetched units (no changes)";
LABEL_6:
      _os_log_impl(&dword_1CFE44000, v5, v6, v17, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D387A160](v13, -1, -1);
      MEMORY[0x1D387A160](v12, -1, -1);

      (*(v10 + 8))(v24, v11);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1CFE9ECC0(*(v0 + 136));
    sub_1CFF0D01C();
    v5 = sub_1CFF0D02C();
    v6 = sub_1CFF0E7EC();
    v18 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 136);
    v9 = *(v0 + 72);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    if (v18)
    {
      v24 = *(v0 + 72);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136446210;
      v19 = sub_1CFF0ED2C();
      v21 = sub_1CFE462A4(v19, v20, &v25);

      *(v12 + 4) = v21;
      v17 = "[%{public}s] Updated units";
      goto LABEL_6;
    }
  }

  (*(v10 + 8))(v9, v11);
LABEL_8:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1CFEA29C8()
{

  v1 = OBJC_IVAR____TtC15HealthBalanceUI43SleepingSampleDataTypePreferredUnitProvider___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingSampleDataTypePreferredUnitProvider()
{
  result = qword_1EDEC2648;
  if (!qword_1EDEC2648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEA2AD8()
{
  result = sub_1CFF0C91C();
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

uint64_t sub_1CFEA2BD8(uint64_t a1)
{
  result = sub_1CFEA31A8(&qword_1EDEC2660, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFEA2C30()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CFEA3DD0;

  return sub_1CFE9F2CC(v2);
}

uint64_t sub_1CFEA2CDC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_1CFEA2D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFEA3DCC;

  return sub_1CFE9EFB4(a1, v4);
}

uint64_t sub_1CFEA2DD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CFEA3DCC;

  return sub_1CFEA0DB8();
}

uint64_t sub_1CFEA2E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFEA2F50;

  return sub_1CFEA1000(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CFEA2F50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CFEA308C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFEA3DCC;

  return sub_1CFEA19B8(a1, v4, v5, v6, v7, v8);
}

void sub_1CFEA3154(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0E8AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFEA31A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEA31F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFEA3154(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFEA3280()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_1CFEA32BC()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

void sub_1CFEA32F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1CFEA3330()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1CFEA33EC;

  return sub_1CFE9FBA0(v2, v3, v4, v5, v6);
}

uint64_t sub_1CFEA33EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1CFEA34E8()
{
  if (!qword_1EDEC16F8)
  {
    sub_1CFEA3558();
    sub_1CFE9E1D8();
    v0 = sub_1CFF0E6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC16F8);
    }
  }
}

void sub_1CFEA3558()
{
  if (!qword_1EDEC17A0)
  {
    sub_1CFE62B04(255, &qword_1EDEC16C8);
    sub_1CFE62B04(255, &qword_1EDEC1698);
    sub_1CFEA35F4();
    v0 = sub_1CFF0E43C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC17A0);
    }
  }
}

unint64_t sub_1CFEA35F4()
{
  result = qword_1EDEC16C0;
  if (!qword_1EDEC16C0)
  {
    sub_1CFE62B04(255, &qword_1EDEC16C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC16C0);
  }

  return result;
}

void sub_1CFEA365C()
{
  if (!qword_1EDEC15A0)
  {
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC15A0);
    }
  }
}

void sub_1CFEA36B0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CFF0EA3C())
    {
LABEL_3:
      sub_1CFEA39AC();
      v3 = sub_1CFF0E93C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CFF0EA3C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D38796B0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1CFF0E88C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1CFE62B04(0, &qword_1EDEC16C8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1CFF0E89C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1CFF0E88C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1CFE62B04(0, &qword_1EDEC16C8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1CFF0E89C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1CFEA39AC()
{
  if (!qword_1EDEC1658)
  {
    sub_1CFE62B04(255, &qword_1EDEC16C8);
    sub_1CFEA35F4();
    v0 = sub_1CFF0E94C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1658);
    }
  }
}

uint64_t sub_1CFEA3A20(uint64_t a1)
{
  v2 = sub_1CFF0CB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1CFEA3D34();
    v9 = sub_1CFF0E93C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1CFEA31A8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      v16 = sub_1CFF0E44C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1CFEA31A8(&qword_1EDEC4CD8, MEMORY[0x1E69A2E68]);
          v23 = sub_1CFF0E4CC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1CFEA3D34()
{
  if (!qword_1EDEC1670)
  {
    sub_1CFF0CB6C();
    sub_1CFEA31A8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v0 = sub_1CFF0E94C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1670);
    }
  }
}

uint64_t type metadata accessor for OvernightMetricsChartWarmupProgressCounter()
{
  result = qword_1EDEC2700;
  if (!qword_1EDEC2700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEA3E48()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1CFF0CA6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1CFEA3EFC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WarmupProgressCounter();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(type metadata accessor for OvernightMetricsChartWarmupProgressCounter() + 32);
  v8 = sub_1CFF0CA6C();
  (*(*(v8 - 8) + 16))(v6, v1 + v7, v8);
  v9 = v1[3] * *v1;
  v10 = *v1 * v1[4];
  v11 = *(v4 + 32);
  v20[0] = swift_getKeyPath();
  sub_1CFEA4090(v20);
  memcpy(&v6[v11], v20, 0x119uLL);
  v12 = &v6[*(v4 + 28)];
  *v12 = v9;
  v12[1] = v10;
  *(v12 + 1) = xmmword_1CFF11DA0;
  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  sub_1CFEA4098(v6, a1);
  sub_1CFEA40FC();
  v14 = (a1 + *(v13 + 36));
  v15 = v18;
  *v14 = *&v17[8];
  v14[1] = v15;
  result = *&v19;
  v14[2] = v19;
  return result;
}

uint64_t sub_1CFEA4098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WarmupProgressCounter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFEA40FC()
{
  if (!qword_1EC512838)
  {
    type metadata accessor for WarmupProgressCounter();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512838);
    }
  }
}

unint64_t sub_1CFEA415C()
{
  result = qword_1EC512840;
  if (!qword_1EC512840)
  {
    sub_1CFEA40FC();
    sub_1CFEA41DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512840);
  }

  return result;
}

unint64_t sub_1CFEA41DC()
{
  result = qword_1EC512848;
  if (!qword_1EC512848)
  {
    type metadata accessor for WarmupProgressCounter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512848);
  }

  return result;
}

uint64_t type metadata accessor for OvernightMetricsChartPointForeground()
{
  result = qword_1EDEC29D0;
  if (!qword_1EDEC29D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEA42A8()
{
  type metadata accessor for IndividualOvernightMetricChartPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1CFE6BE4C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OvernightMetricsChartLayout(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFEA4370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OvernightMetricsChartPointForeground();
  v5 = *(v1 + *(v4 + 32) + 40);
  type metadata accessor for OvernightMetricsChartLayout(0);

  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  v6 = v28;
  v7 = v29;
  v8 = v30;
  v9 = v31;
  v10 = v32;
  v21 = v33;
  result = sub_1CFEA45C8();
  v12 = 0.0;
  if ((result & 1) == 0)
  {
    v13 = v1 + *(v4 + 20);
    v14 = *(v13 + 16);
    v23 = *v13;
    v24 = v14;
    v15 = *(v13 + 48);
    v25 = *(v13 + 32);
    v26 = v15;
    v27 = *(v13 + 64);
    v16 = v23;
    if (v23)
    {
      v17 = *(&v23 + 1);
      v12 = *&v24;
      v18 = *&v25;
    }

    else
    {
      if (qword_1EDEC27D8 != -1)
      {
        swift_once();
      }

      v19 = qword_1EDEC82D0;
      swift_getKeyPath();
      v22[0] = v19;
      sub_1CFEA4B34(&qword_1EDEC27D0, type metadata accessor for GlobalOvernightMetricsChartAnimationState);
      sub_1CFF0C8DC();

      v16 = *(v19 + 16);
      v17 = *(v19 + 24);
      v12 = *(v19 + 32);
      v18 = *(v19 + 48);

      v6 = v28;
    }

    sub_1CFE530D8(&v23, v22);
    if (sub_1CFEE41A4(v2, v16))
    {
    }

    else
    {
      v20 = sub_1CFEE41A4(v2, v17);

      if (v20)
      {
        v12 = v18;
      }

      else
      {
        v12 = 0.0;
      }
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v21;
  *(a1 + 56) = v12;
  return result;
}

BOOL sub_1CFEA45C8()
{
  v1 = type metadata accessor for OvernightMetricsChartPointForeground();
  if (*(v0 + v1[6]) != 1)
  {
    return 0;
  }

  v2 = v0 + v1[5];
  v3 = *(v2 + 16);
  v32 = *v2;
  v33 = v3;
  v4 = *(v2 + 48);
  v34 = *(v2 + 32);
  v35 = v4;
  v36 = *(v2 + 64);
  v5 = v32;
  if (v32)
  {
    v6 = *(&v32 + 1);
    v8 = v33;
    v7 = v34;
    v9 = *(&v35 + 1);
    v10 = v35;
    v11 = v36;
  }

  else
  {
    v12 = v1;
    if (qword_1EDEC27D8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDEC82D0;
    swift_getKeyPath();
    *&v27 = v13;
    sub_1CFEA4B34(&qword_1EDEC27D0, type metadata accessor for GlobalOvernightMetricsChartAnimationState);
    sub_1CFF0C8DC();

    v14 = *(v13 + 32);
    v15 = *(v13 + 48);
    v16 = *(v13 + 64);
    v31 = *(v13 + 80);
    v29 = v15;
    v30 = v16;
    v28 = v14;
    v27 = *(v13 + 16);
    v9 = *(&v16 + 1);
    v11 = v31;
    v10 = v16;
    v23 = v14;
    v24 = v15;
    v6 = *(&v27 + 1);
    v5 = v27;
    sub_1CFE5307C(&v27, v26);
    v8 = v23;
    v7 = v24;
    v1 = v12;
  }

  *&v27 = v5;
  *(&v27 + 1) = v6;
  v28 = v8;
  v29 = v7;
  v25 = *&v7;
  *&v30 = v10;
  *(&v30 + 1) = v9;
  v31 = v11;
  v17 = v1[7];
  v18 = v0 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32);
  if (*(v18 + 8))
  {
    sub_1CFE530D8(&v32, v26);
LABEL_13:
    sub_1CFE531B0(&v27);
    return 0;
  }

  v19 = *v18;
  sub_1CFE530D8(&v32, v26);
  if ((sub_1CFEE41A4(v0, v5) & 1) != 0 && v25 < 1.0)
  {
    goto LABEL_13;
  }

  v20 = type metadata accessor for OvernightMetricsChartLayout(0);
  if (*(v6 + 16) < 2uLL)
  {
    goto LABEL_13;
  }

  v21 = sub_1CFEE43BC(*(v0 + v17 + *(v20 + 20) + 32), v19);
  sub_1CFE531B0(&v27);
  return v21;
}

unint64_t sub_1CFEA481C()
{
  result = qword_1EDEC1D50;
  if (!qword_1EDEC1D50)
  {
    sub_1CFEA48E8(255, &qword_1EDEC1D48, sub_1CFEA48C0);
    sub_1CFEA4A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1D50);
  }

  return result;
}

void sub_1CFEA48E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0D62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFEA494C()
{
  if (!qword_1EDEC1F38)
  {
    sub_1CFEA49AC();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1F38);
    }
  }
}

void sub_1CFEA49AC()
{
  if (!qword_1EDEC1AE8)
  {
    v0 = sub_1CFF0D9BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1AE8);
    }
  }
}

unint64_t sub_1CFEA4A04()
{
  result = qword_1EDEC1E10;
  if (!qword_1EDEC1E10)
  {
    sub_1CFEA48C0(255);
    sub_1CFEA4A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E10);
  }

  return result;
}

unint64_t sub_1CFEA4A84()
{
  result = qword_1EDEC1F40;
  if (!qword_1EDEC1F40)
  {
    sub_1CFEA494C();
    sub_1CFE82A58();
    sub_1CFEA4B34(&qword_1EDEC1AF0, sub_1CFEA49AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F40);
  }

  return result;
}

uint64_t sub_1CFEA4B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for OvernightMetricsChartSizingPlaceholder()
{
  result = qword_1EDEC2840;
  if (!qword_1EDEC2840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEA4BF0()
{
  sub_1CFE69B4C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1CFEA4C78()
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_1CFEA4D08@<X0>(uint64_t a1@<X8>)
{
  sub_1CFEA4E3C();
  v4 = a1 + *(v3 + 36);
  sub_1CFE6B124(v1, v4);
  sub_1CFF0D2FC();
  v10[0] = swift_getKeyPath();
  sub_1CFEA4090(v10);
  memcpy(__dst, v10, sizeof(__dst));
  __src[0] = swift_getKeyPath();
  sub_1CFEA4090(__src);
  sub_1CFEA4EFC();
  v6 = v5;
  memcpy((v4 + v5[10]), __dst, 0x119uLL);
  v7 = v4 + v6[9];
  *(v7 + 64) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  memcpy((v4 + v6[11]), __src, 0x119uLL);
  v8 = v6[12];
  *(v4 + v8) = swift_getKeyPath();
  sub_1CFEA4FAC();
  return swift_storeEnumTagMultiPayload();
}

void sub_1CFEA4E3C()
{
  if (!qword_1EDEC2000)
  {
    sub_1CFEA4EA4();
    sub_1CFEA4EFC();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2000);
    }
  }
}

void sub_1CFEA4EA4()
{
  if (!qword_1EDEC21A0)
  {
    v0 = sub_1CFF0D30C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC21A0);
    }
  }
}

void sub_1CFEA4EFC()
{
  if (!qword_1EDEC3948)
  {
    sub_1CFEA4F58();
    v0 = type metadata accessor for OvernightMetricsAxisStyle();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC3948);
    }
  }
}

unint64_t sub_1CFEA4F58()
{
  result = qword_1EDEC2BF0[0];
  if (!qword_1EDEC2BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC2BF0);
  }

  return result;
}

void sub_1CFEA4FAC()
{
  if (!qword_1EDEC2140)
  {
    sub_1CFF0C89C();
    v0 = sub_1CFF0D44C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2140);
    }
  }
}

unint64_t sub_1CFEA5004()
{
  result = qword_1EDEC2008;
  if (!qword_1EDEC2008)
  {
    sub_1CFEA4E3C();
    sub_1CFEA50E4(&qword_1EDEC21A8, sub_1CFEA4EA4);
    sub_1CFEA50E4(qword_1EDEC3950, sub_1CFEA4EFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2008);
  }

  return result;
}

uint64_t sub_1CFEA50E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SleepingSampleDataType.preferredImage.getter()
{
  v1 = v0;
  v2 = sub_1CFF0CB6C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A2E60] || v7 == *MEMORY[0x1E69A2E50])
  {
    return sub_1CFF0DF2C();
  }

  if (v7 == *MEMORY[0x1E69A2E48])
  {
    return sub_1CFF0DF3C();
  }

  if (v7 == *MEMORY[0x1E69A2E58] || v7 == *MEMORY[0x1E69A2E40])
  {
    return sub_1CFF0DF2C();
  }

  v9 = sub_1CFF0DF2C();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t SleepingSampleDataType.localizedName.getter()
{
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69A2E40])
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  else
  {
    v11 = sub_1CFF0CB0C();
    v12 = [v11 hk_localizedName];

    if (v12)
    {
      v13 = sub_1CFF0E59C();

      (*(v4 + 8))(v7, v3);
      return v13;
    }

    else
    {
      v14[2] = 0;
      v14[3] = 0xE000000000000000;
      sub_1CFF0E96C();
      MEMORY[0x1D3879330](0xD000000000000011, 0x80000001CFF15C10);
      sub_1CFF0EA0C();
      result = sub_1CFF0EA2C();
      __break(1u);
    }
  }

  return result;
}

uint64_t SleepingSampleDataType.localizedShortenedName.getter()
{
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69A2E60] || v8 == *MEMORY[0x1E69A2E50] || v8 == *MEMORY[0x1E69A2E48] || v8 == *MEMORY[0x1E69A2E58] || v8 == *MEMORY[0x1E69A2E40])
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

Swift::String_optional __swiftcall SleepingSampleDataType.localizedUnitString(for:)(HKUnit a1)
{
  v2 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1CFF0CB6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69A2E60])
  {
    sub_1CFEA5DAC();
    v10 = [objc_opt_self() _countPerMinuteUnit];
    v11 = sub_1CFF0E89C();

    if (v11)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v9 == *MEMORY[0x1E69A2E50])
  {
    sub_1CFEA5DAC();
    v14 = [objc_opt_self() _countPerMinuteUnit];
    v15 = sub_1CFF0E89C();

    if (v15)
    {
LABEL_6:
      sub_1CFF0E4DC();
      type metadata accessor for HealthBalanceUI();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      sub_1CFF0C7FC();
      v12 = sub_1CFF0E5AC();
      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 != *MEMORY[0x1E69A2E48] && v9 != *MEMORY[0x1E69A2E58] && v9 != *MEMORY[0x1E69A2E40])
  {
    (*(v5 + 8))(v8, v4);
  }

  v12 = 0;
  v13 = 0;
LABEL_18:
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

unint64_t sub_1CFEA5DAC()
{
  result = qword_1EDEC1698;
  if (!qword_1EDEC1698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEC1698);
  }

  return result;
}

uint64_t SleepingSampleDataType.eductionalSummarySections.getter()
{
  v0 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1CFEA6100();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFF10480;
  v3 = sub_1CFEA6150();
  v5 = v4;
  v6 = sub_1CFEA6530();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 48) = v6;
  *(v2 + 56) = v7;
  v8 = sub_1CFEA6910();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    v14 = sub_1CFF0E5AC();
    v16 = v15;
    v2 = sub_1CFE97CD8(1, 2, 1, v2);
    *(v2 + 16) = 2;
    *(v2 + 64) = v14;
    *(v2 + 72) = v16;
    *(v2 + 80) = v10;
    *(v2 + 88) = v11;
    v17 = sub_1CFEA6C18();
    if (!v18)
    {
      return v2;
    }
  }

  else
  {
    v17 = sub_1CFEA6C18();
    if (!v18)
    {
      return v2;
    }
  }

  v19 = v17;
  v20 = v18;
  sub_1CFF0E4DC();
  type metadata accessor for HealthBalanceUI();
  v21 = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() 0x1E83D243BLL];
  sub_1CFF0C7FC();
  v23 = sub_1CFF0E5AC();
  v26 = *(v2 + 16);
  v25 = *(v2 + 24);
  if (v26 >= v25 >> 1)
  {
    v29 = v23;
    v30 = v24;
    v31 = sub_1CFE97CD8((v25 > 1), v26 + 1, 1, v2);
    v24 = v30;
    v2 = v31;
    v23 = v29;
  }

  *(v2 + 16) = v26 + 1;
  v27 = (v2 + 32 * v26);
  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v19;
  v27[7] = v20;
  return v2;
}

void sub_1CFEA6100()
{
  if (!qword_1EC5127E0)
  {
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5127E0);
    }
  }
}

uint64_t sub_1CFEA6150()
{
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69A2E60] || v8 == *MEMORY[0x1E69A2E50] || v8 == *MEMORY[0x1E69A2E48] || v8 == *MEMORY[0x1E69A2E58] || v8 == *MEMORY[0x1E69A2E40])
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

uint64_t sub_1CFEA6530()
{
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69A2E60] || v8 == *MEMORY[0x1E69A2E50] || v8 == *MEMORY[0x1E69A2E48] || v8 == *MEMORY[0x1E69A2E58] || v8 == *MEMORY[0x1E69A2E40])
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

uint64_t sub_1CFEA6910()
{
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69A2E60] || v8 == *MEMORY[0x1E69A2E50] || v8 == *MEMORY[0x1E69A2E58])
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

uint64_t sub_1CFEA6C18()
{
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69A2E60] || v8 == *MEMORY[0x1E69A2E50] || v8 == *MEMORY[0x1E69A2E48])
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

uint64_t SleepingSampleDataType.WarmupSummarySection.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SleepingSampleDataType.WarmupSummarySection.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SleepingSampleDataType.WarmupSummarySection.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SleepingSampleDataType.WarmupSummarySection.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SleepingSampleDataType.warmupSummarySection.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1CFF0CB6C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v1, v5, v7);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69A2E58])
  {
    v10 = SleepingSampleDataType.localizedName.getter();
    v12 = v11;
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    result = sub_1CFF0E5AC();
    *a1 = v10;
    a1[1] = v12;
    a1[2] = result;
    a1[3] = v16;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t SleepingSampleDataType.accessibilityIdentifier.getter()
{
  v1 = sub_1CFF0CB6C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E69A2E60])
  {
    return 0x7461527472616548;
  }

  if (v6 == *MEMORY[0x1E69A2E50])
  {
    return 0x7461726970736552;
  }

  if (v6 == *MEMORY[0x1E69A2E48])
  {
    return 0x79784F646F6F6C42;
  }

  if (v6 == *MEMORY[0x1E69A2E58])
  {
    return 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x1E69A2E40])
  {
    return 0x656C7341656D6954;
  }

  result = sub_1CFF0EA2C();
  __break(1u);
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFEA74C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CFEA7508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFEA7570@<X0>(uint64_t a1@<X8>)
{
  sub_1CFE88B0C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFF0DB1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFF0D99C();
  v9 = sub_1CFF0D51C();
  v14 = sub_1CFF0DEAC();
  v10 = sub_1CFF0D51C();
  sub_1CFF0DB0C();
  v11 = sub_1CFF0DB2C();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1CFF0DB3C();
  v12 = sub_1CFF0DB6C();
  sub_1CFEA8B1C(v4);
  result = (*(v6 + 8))(v8, v5);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0x4010000000000000;
  return result;
}

__n128 static OvernightMetricsChartSpec.accented(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *(a1 + 24);
  v21 = *(a1 + 248);
  v19 = *(a1 + 264);
  v20 = *(a1 + 256);
  v4 = *(a1 + 272);

  sub_1CFF0DEAC();
  v17 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v16 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v15 = sub_1CFF0DEBC();

  sub_1CFF0DE8C();
  v14 = sub_1CFF0D51C();
  sub_1CFF0DEAC();
  v13 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v5 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  sub_1CFF0DEBC();

  v6 = sub_1CFF0D51C();
  sub_1CFF0DEAC();
  sub_1CFF0DEBC();

  v7 = sub_1CFF0D51C();
  sub_1CFF0DE9C();
  v8 = sub_1CFF0D51C();
  sub_1CFF0DEAC();
  sub_1CFF0DEBC();

  v9 = sub_1CFF0D51C();
  sub_1CFF0DEAC();
  v10 = sub_1CFF0D51C();
  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0x4014000000000000;
  *(a2 + 72) = v13;
  *(a2 + 80) = v5;
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  v11 = *(a1 + 168);
  *(a2 + 88) = *(a1 + 88);
  result = *(a1 + 104);
  *(a2 + 104) = result;
  *(a2 + 168) = v11;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 257;
  *(a2 + 208) = v6;
  *(a2 + 216) = v7;
  *(a2 + 224) = v8;
  *(a2 + 232) = v9;
  *(a2 + 240) = v10;
  *(a2 + 248) = v21;
  *(a2 + 256) = v20;
  *(a2 + 264) = v19;
  *(a2 + 272) = v4;
  return result;
}

__n128 static OvernightMetricsChartSpec.vibrant(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *(a1 + 24);
  v19 = *(a1 + 240);
  v20 = *(a1 + 232);
  v23 = *(a1 + 248);
  v21 = *(a1 + 264);
  v22 = *(a1 + 256);
  v4 = *(a1 + 272);

  sub_1CFF0DEAC();
  v17 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v16 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v15 = sub_1CFF0DEBC();

  sub_1CFF0DE8C();
  v13 = sub_1CFF0D51C();
  v14 = sub_1CFF0DEAC();
  v5 = sub_1CFF0DEAC();
  sub_1CFF0DEAC();
  sub_1CFF0DEBC();

  v6 = sub_1CFF0D51C();
  sub_1CFF0DEAC();
  sub_1CFF0DEBC();

  v7 = sub_1CFF0D51C();
  sub_1CFF0DEAC();
  sub_1CFF0DEBC();

  v8 = sub_1CFF0D51C();
  sub_1CFF0DEAC();
  sub_1CFF0DEBC();

  v9 = sub_1CFF0D51C();
  sub_1CFF0DE9C();
  v10 = sub_1CFF0D51C();
  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0x4014000000000000;
  *(a2 + 72) = v14;
  *(a2 + 80) = v5;
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  v11 = *(a1 + 168);
  *(a2 + 88) = *(a1 + 88);
  result = *(a1 + 104);
  *(a2 + 104) = result;
  *(a2 + 168) = v11;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  *(a2 + 192) = 0x3FF0000000000000;
  *(a2 + 200) = 0;
  *(a2 + 208) = v8;
  *(a2 + 216) = v9;
  *(a2 + 224) = v10;
  *(a2 + 232) = v20;
  *(a2 + 240) = v19;
  *(a2 + 248) = v23;
  *(a2 + 256) = v22;
  *(a2 + 264) = v21;
  *(a2 + 272) = v4;
  return result;
}

uint64_t EnvironmentValues.overnightMetricsChartSpec.getter()
{
  sub_1CFEA7D14();

  return sub_1CFF0D81C();
}

unint64_t sub_1CFEA7D14()
{
  result = qword_1EDEC34B0;
  if (!qword_1EDEC34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC34B0);
  }

  return result;
}

uint64_t EnvironmentValues.overnightMetricsChartSpec.setter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1CFEA7D14();
  return sub_1CFF0D82C();
}

double static OvernightMetricsChartSpec.watchApp.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0CFFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  if (qword_1EDEC23B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EDEC82B8);
  v7 = *(v3 + 16);
  v7(v5, v6, v2);
  sub_1CFF0DEFC();
  v23 = sub_1CFF0DEBC();

  if (qword_1EDEC23A8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_1EDEC82A0);
  v7(v5, v8, v2);
  sub_1CFF0DEFC();
  v22 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v9 = sub_1CFF0DEBC();

  *&v24[0] = sub_1CFF0DE8C();
  v10 = sub_1CFF0D51C();
  if (qword_1EDEC4A40 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDEC4A48;
  v12 = sub_1CFF0DE3C();
  if (qword_1EDEC4A30 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDEC4A38;
  v14 = sub_1CFF0DE3C();
  *&v24[0] = sub_1CFF0DE6C();
  v15 = sub_1CFF0D51C();
  sub_1CFF0DE6C();
  v16 = sub_1CFF0DEBC();

  *&v24[0] = v16;
  v17 = sub_1CFF0D51C();
  LODWORD(v24[0]) = sub_1CFF0D98C();
  DWORD1(v24[0]) = 1036831949;
  sub_1CFE7EB18();
  sub_1CFEA875C();
  v18 = sub_1CFF0D51C();
  sub_1CFEA7570(v24);
  *(a1 + 112) = xmmword_1CFF0FC60;
  *(a1 + 128) = xmmword_1CFF0FC70;
  *(a1 + 144) = xmmword_1CFF0FC80;
  *(a1 + 160) = xmmword_1CFF0FC90;
  v19 = v24[1];
  *(a1 + 232) = v24[0];
  v20 = v22;
  *a1 = v23;
  *(a1 + 8) = v20;
  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0x4014000000000000;
  *(a1 + 72) = v12;
  *(a1 + 80) = v14;
  *(a1 + 88) = 0x3FE0000000000000;
  *(a1 + 96) = 0x4028000000000000;
  *(a1 + 104) = v27;
  *(a1 + 105) = *v26;
  *(a1 + 108) = *&v26[3];
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = v15;
  *(a1 + 216) = v17;
  *(a1 + 224) = v18;
  *(a1 + 248) = v19;
  result = v25[0];
  *(a1 + 264) = *v25;
  return result;
}

void (*EnvironmentValues.overnightMetricsChartSpec.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x588uLL);
  }

  *a1 = v3;
  *(v3 + 1400) = v1;
  *(v3 + 1408) = sub_1CFEA7D14();
  sub_1CFF0D81C();
  return sub_1CFEA821C;
}

void sub_1CFEA821C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    memcpy((v2 + 560), v2, 0x118uLL);
    memcpy((v2 + 840), v2, 0x118uLL);
    sub_1CFE55370(v2 + 560, v2 + 1120);
    sub_1CFF0D82C();
    memcpy((v2 + 280), v2, 0x118uLL);
    sub_1CFE583D0(v2 + 280);
  }

  else
  {
    memcpy((v2 + 280), v2, 0x118uLL);
    sub_1CFF0D82C();
  }

  free(v2);
}

double sub_1CFEA82F4()
{
  v0 = sub_1CFF0CFFC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEC23B0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDEC82B8);
  v5 = *(v1 + 16);
  v5(v3, v4, v0);
  sub_1CFF0DEFC();
  v20 = sub_1CFF0DEBC();

  if (qword_1EDEC23A8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDEC82A0);
  v5(v3, v6, v0);
  sub_1CFF0DEFC();
  v7 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v8 = sub_1CFF0DEBC();

  *&v21[0] = sub_1CFF0DE8C();
  v9 = sub_1CFF0D51C();
  if (qword_1EDEC4A40 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDEC4A48;
  v11 = sub_1CFF0DE3C();
  if (qword_1EDEC4A30 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDEC4A38;
  v13 = sub_1CFF0DE3C();
  *&v21[0] = sub_1CFF0DE6C();
  v14 = sub_1CFF0D51C();
  sub_1CFF0DE6C();
  v15 = sub_1CFF0DEBC();

  *&v21[0] = v15;
  v16 = sub_1CFF0D51C();
  LODWORD(v21[0]) = sub_1CFF0D98C();
  DWORD1(v21[0]) = 1036831949;
  sub_1CFE7EB18();
  sub_1CFEA875C();
  v17 = sub_1CFF0D51C();
  sub_1CFEA7570(v21);
  xmmword_1EDEC3530 = xmmword_1CFF0FC60;
  unk_1EDEC3540 = xmmword_1CFF0FC70;
  xmmword_1EDEC3550 = xmmword_1CFF0FC80;
  unk_1EDEC3560 = xmmword_1CFF0FC90;
  unk_1EDEC35A8 = v21[0];
  qword_1EDEC34C0 = v20;
  *algn_1EDEC34C8 = v7;
  qword_1EDEC34D0 = v8;
  byte_1EDEC34D8 = 0;
  byte_1EDEC34E0 = 1;
  qword_1EDEC34E8 = v9;
  unk_1EDEC34F0 = 0;
  byte_1EDEC34F8 = 1;
  qword_1EDEC3500 = 0x4014000000000000;
  unk_1EDEC3508 = v11;
  qword_1EDEC3510 = v13;
  unk_1EDEC3518 = 0x3FE0000000000000;
  qword_1EDEC3520 = 0;
  byte_1EDEC3528 = 1;
  *algn_1EDEC3529 = *v23;
  dword_1EDEC352C = *&v23[3];
  qword_1EDEC3570 = 0;
  unk_1EDEC3578 = 0;
  qword_1EDEC3580 = 0;
  word_1EDEC3588 = 1;
  qword_1EDEC3590 = v14;
  unk_1EDEC3598 = v16;
  qword_1EDEC35A0 = v17;
  unk_1EDEC35B8 = v21[1];
  result = *&v22;
  xmmword_1EDEC35C8 = v22;
  return result;
}

uint64_t sub_1CFEA86C4@<X0>(void *a1@<X8>)
{
  if (qword_1EDEC34B8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EDEC34C0, sizeof(__dst));
  memcpy(a1, &qword_1EDEC34C0, 0x118uLL);
  return sub_1CFE55370(__dst, &v3);
}

unint64_t sub_1CFEA875C()
{
  result = qword_1EDEC1C00;
  if (!qword_1EDEC1C00)
  {
    sub_1CFE7EB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1C00);
  }

  return result;
}

uint64_t sub_1CFEA87BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CFEA8804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1CFEA88B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CFEA88F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CFEA8978(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1CFEA89D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CFEA8A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1CFEA8AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFEA8B1C(uint64_t a1)
{
  sub_1CFE88B0C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFEA8B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v132 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1CFF0CCEC();
  v15 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v122 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v114 - v18;
  v19 = sub_1CFF0C72C();
  v150 = *(v19 - 8);
  v151 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v149 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CFF0C62C();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v148 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CFF0C8BC();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v147 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CFF0C89C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v146 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v152 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1E69E6720];
  sub_1CFEB0734(0, &qword_1EDEC4D20, MEMORY[0x1E69690E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v143 = &v114 - v32;
  sub_1CFEB0734(0, &qword_1EDEC4D18, MEMORY[0x1E69690F0], v30);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v140 = &v114 - v34;
  v145 = sub_1CFF0C75C();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v141 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v142 = &v114 - v37;
  v139 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  MEMORY[0x1EEE9AC00](v139);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1CFF0C88C();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v41 - 8);
  v138 = &v114 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v155 = &v114 - v44;
  if (!*(a2 + 16))
  {

    (*(v26 + 8))(a4, v25);
    v76 = sub_1CFF0C7AC();
    (*(*(v76 - 8) + 8))(a1, v76);
    v77 = type metadata accessor for OvernightMetricsChartPoint();
    v78 = *(*(v77 - 8) + 56);

    return v78(a5, 1, 1, v77);
  }

  v124 = a3;
  v125 = v26;
  v126 = v25;
  v127 = v14;
  v153 = a4;
  v128 = a1;
  v45 = *(a2 + 64);
  v46 = *(a2 + 32);
  v154 = 1;
  v47 = 1 << v46;
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v45;
  v50 = (v47 + 63) >> 6;
  v51 = (v15 + 32);
  v52 = (v15 + 88);
  v120 = *MEMORY[0x1E69A2EE8];
  v119 = *MEMORY[0x1E69A2EE0];
  v118 = *MEMORY[0x1E69A2EF0];
  v53 = (v15 + 8);

  v130 = 0;
  v129 = 0;
  v131 = 0;
  v54 = 0;
  v123 = 0;
  v55 = 0.0;
  v133 = MEMORY[0x1E69E7CC0];
  v56 = 0.0;
  while (1)
  {
    do
    {
      if (!v49)
      {
        while (1)
        {
          v59 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v59 >= v50)
          {
            v134 = v39;

            v72 = *(a2 + 16);
            if (!v72)
            {
              v51 = MEMORY[0x1E69E7CC0];
              goto LABEL_38;
            }

            v51 = sub_1CFEAC0C8(*(a2 + 16), 0);
            sub_1CFEB0528();
            sub_1CFEAF3B4(v156, v51 + ((*(*(v73 - 8) + 80) + 32) & ~*(*(v73 - 8) + 80)), v72, a2);
            v75 = v74;

            sub_1CFEB0594();
            if (v75 == v72)
            {
LABEL_38:
              v156[0] = v51;
              v51 = v123;
              sub_1CFEAC1E8(v156);
              v80 = v128;
              v81 = v124;
              if (v51)
              {
                goto LABEL_47;
              }

              v83 = v156[0];
              MEMORY[0x1EEE9AC00](v82);
              *(&v114 - 4) = v81;
              *(&v114 - 3) = v80;
              *(&v114 - 2) = v153;
              v84 = sub_1CFEDAB30(sub_1CFEB059C, (&v114 - 6), v83);

              v85 = v136;
              v86 = v135;
              v87 = v137;
              (*(v136 + 104))(v135, *MEMORY[0x1E6969A48], v137);
              v88 = v155;
              sub_1CFEAABC8(v80, v155);
              (*(v85 + 8))(v86, v87);
              v89 = v138;
              sub_1CFEB0624(v88, v138, sub_1CFE55184);
              v156[0] = v133;

              sub_1CFEAC290(v156);

              v90 = v156[0];
              v91 = v134;
              sub_1CFEB0624(v89, v134, sub_1CFE55184);
              v92 = v139;
              *(v91 + *(v139 + 20)) = v84;
              *(v91 + *(v92 + 24)) = v90;

              v94 = sub_1CFEAFCF8(v93);

              sub_1CFEB06D4(v89, sub_1CFE55184);
              *(v91 + *(v92 + 28)) = v94;
              v95 = sub_1CFF0C67C();
              (*(*(v95 - 8) + 56))(v140, 1, 1, v95);
              v96 = sub_1CFF0C66C();
              (*(*(v96 - 8) + 56))(v143, 1, 1, v96);
              sub_1CFF0C7EC();
              sub_1CFF0C85C();
              sub_1CFF0C8AC();
              sub_1CFF0C61C();
              v97 = v141;
              sub_1CFF0C68C();
              v98 = v149;
              sub_1CFF0C70C();
              v99 = v142;
              sub_1CFF0C74C();
              (*(v150 + 8))(v98, v151);
              v100 = *(v144 + 8);
              v101 = v145;
              v100(v97, v145);
              sub_1CFEB068C(&qword_1EDEC4D10, MEMORY[0x1E6969328]);
              sub_1CFF0C79C();
              v100(v99, v101);
              v102 = v156[0];
              v103 = v156[1];
              if (v154)
              {
                sub_1CFF0E4DC();
              }

              else
              {
                sub_1CFF0708C(v55);
                sub_1CFF0708C(v56);
                sub_1CFF0E52C();
                sub_1CFF0E51C();
                sub_1CFF0E50C();

                sub_1CFF0E51C();
                v91 = v134;
                sub_1CFF0E50C();

                sub_1CFF0E51C();
                sub_1CFF0E54C();
              }

              type metadata accessor for HealthBalanceUI();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v105 = [objc_opt_self() bundleForClass_];
              sub_1CFF0C7FC();
              v106 = sub_1CFF0E5AC();
              v108 = v107;
              sub_1CFEB06D4(v155, sub_1CFE55184);
              (*(v125 + 8))(v153, v126);
              v109 = sub_1CFF0C7AC();
              (*(*(v109 - 8) + 32))(a5, v80, v109);
              v110 = type metadata accessor for OvernightMetricsChartPoint();
              sub_1CFEB05BC(v91, a5 + v110[5], type metadata accessor for IndividualOvernightMetricChartPointCollection);
              v111 = a5 + v110[6];
              *v111 = v55;
              *(v111 + 8) = v56;
              *(v111 + 16) = v154 & 1;
              *(a5 + v110[7]) = v131 & 1;
              *(a5 + v110[8]) = v129 & 1;
              *(a5 + v110[9]) = v130 & 1;
              v112 = (a5 + v110[10]);
              *v112 = v102;
              v112[1] = v103;
              v113 = (a5 + v110[11]);
              *v113 = v106;
              v113[1] = v108;
              return (*(*(v110 - 1) + 56))(a5, 0, 1, v110);
            }

LABEL_44:
            __break(1u);
            __break(1u);
            goto LABEL_45;
          }

          v49 = *(a2 + 64 + 8 * v59);
          ++v54;
          if (v49)
          {
            v54 = v59;
            goto LABEL_5;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_5:
      v57 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v58 = *(a2 + 56) + ((v54 << 10) | (16 * v57));
    }

    while ((*(v58 + 8) & 1) != 0);
    v60 = *v58;
    if (v154)
    {
      v56 = *v58;
      v55 = *v58;
      goto LABEL_18;
    }

    if (v60 < v55)
    {
      break;
    }

    if (v56 < v60)
    {
      v56 = *v58;
      if (v55 > v60)
      {
        goto LABEL_46;
      }
    }

LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = a5;
    v116 = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v133 = sub_1CFE976F0(0, *(v133 + 2) + 1, 1, v133);
    }

    v115 = v53;
    v63 = *(v133 + 2);
    v62 = *(v133 + 3);
    v64 = v51;
    if (v63 >= v62 >> 1)
    {
      v133 = sub_1CFE976F0((v62 > 1), v63 + 1, 1, v133);
    }

    v65 = v133;
    *(v133 + 2) = v63 + 1;
    *&v65[8 * v63 + 32] = v60;
    v66 = v121;
    sub_1CFF0CCBC();
    v67 = v122;
    v68 = v66;
    v69 = v134;
    (*v64)(v122, v68, v134);
    v70 = v67;
    v52 = v116;
    v71 = (*v116)(v70, v69);
    if (v71 == v120)
    {
      v154 = 0;
      v131 = 1;
      a5 = v117;
LABEL_28:
      v51 = v64;
      goto LABEL_30;
    }

    a5 = v117;
    if (v71 == v119)
    {
      v154 = 0;
      v130 = 1;
      goto LABEL_28;
    }

    v51 = v64;
    if (v71 == v118)
    {
      v154 = 0;
      v129 = 1;
LABEL_30:
      v53 = v115;
    }

    else
    {
      v53 = v115;
      (*v115)(v122, v134);
      v154 = 0;
    }
  }

  v55 = *v58;
  if (v60 <= v56)
  {
    goto LABEL_18;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:

  __break(1u);
  return result;
}

uint64_t OvernightMetricsChartPoint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0C7AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1CFEA9DB8()
{
  if (*v0 > 3u)
  {
    v3 = 0xD000000000000012;
    if (*v0 != 4)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v1 = 1702125924;
    if (*v0)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000015;
    }
  }
}

uint64_t sub_1CFEA9EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFEB0150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFEA9EEC(uint64_t a1)
{
  v2 = sub_1CFEAF79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFEA9F28(uint64_t a1)
{
  v2 = sub_1CFEAF79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OvernightMetricsChartPoint.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFEAF83C(0, &qword_1EC512850, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEAF79C();
  sub_1CFF0EC9C();
  LOBYTE(v15) = 0;
  sub_1CFF0C7AC();
  sub_1CFEB068C(&qword_1EC5125F0, MEMORY[0x1E6969530]);
  sub_1CFF0EB7C();
  if (!v2)
  {
    v10 = type metadata accessor for OvernightMetricsChartPoint();
    LOBYTE(v15) = 1;
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
    sub_1CFEB068C(&qword_1EC512860, type metadata accessor for IndividualOvernightMetricChartPointCollection);
    sub_1CFF0EB7C();
    v11 = (v3 + *(v10 + 24));
    v12 = *(v11 + 16);
    v15 = *v11;
    v16 = v12;
    v14[15] = 2;
    sub_1CFE59578();
    sub_1CFEAF8A0(&qword_1EC512868);
    sub_1CFF0EB3C();
    LOBYTE(v15) = 3;
    sub_1CFF0EB5C();
    LOBYTE(v15) = 4;
    sub_1CFF0EB5C();
    LOBYTE(v15) = 5;
    sub_1CFF0EB5C();
    LOBYTE(v15) = 6;
    sub_1CFF0EB4C();
    LOBYTE(v15) = 7;
    sub_1CFF0EB4C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t OvernightMetricsChartPoint.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1CFF0C7AC();
  sub_1CFEB068C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = v1 + *(v4 + 20);
  sub_1CFF0E45C();
  sub_1CFE55184();
  sub_1CFF0E45C();
  v6 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  sub_1CFEAECD4(a1, *(v5 + v6[5]));
  sub_1CFEAF014(a1, *(v5 + v6[6]));
  sub_1CFEAE4F4(a1, *(v5 + v6[7]));
  v7 = v2 + *(v4 + 24);
  if (*(v7 + 16) == 1)
  {
    sub_1CFF0EC5C();
  }

  else
  {
    v9 = *v7;
    v8 = *(v7 + 8);
    sub_1CFF0EC5C();
    if (v9 == 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9;
    }

    MEMORY[0x1D38799A0](*&v10);
    if (v8 == 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v8;
    }

    MEMORY[0x1D38799A0](*&v11);
  }

  sub_1CFF0EC5C();
  sub_1CFF0EC5C();
  sub_1CFF0EC5C();
  sub_1CFF0E5EC();

  return sub_1CFF0E5EC();
}

uint64_t OvernightMetricsChartPoint.hashValue.getter()
{
  sub_1CFF0EC3C();
  OvernightMetricsChartPoint.hash(into:)(v1);
  return sub_1CFF0EC7C();
}

uint64_t OvernightMetricsChartPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFF0C7AC();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEAF83C(0, &qword_1EC512870, MEMORY[0x1E69E6F48]);
  v34 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for OvernightMetricsChartPoint();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEAF79C();
  v33 = v9;
  v13 = v35;
  sub_1CFF0EC8C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14 = v30;
  LOBYTE(v36) = 0;
  sub_1CFEB068C(&qword_1EC512620, MEMORY[0x1E6969530]);
  sub_1CFF0EB0C();
  (*(v14 + 32))(v12, v32, v5);
  LOBYTE(v36) = 1;
  sub_1CFEB068C(&qword_1EC512878, type metadata accessor for IndividualOvernightMetricChartPointCollection);
  sub_1CFF0EB0C();
  v15 = v10;
  sub_1CFEB05BC(v4, &v12[*(v10 + 20)], type metadata accessor for IndividualOvernightMetricChartPointCollection);
  sub_1CFE59578();
  v38 = 2;
  sub_1CFEAF8A0(&qword_1EC512880);
  sub_1CFF0EACC();
  v16 = &v12[*(v10 + 24)];
  v17 = v37;
  *v16 = v36;
  v16[16] = v17;
  LOBYTE(v36) = 3;
  v18 = sub_1CFF0EAEC();
  v19 = v31;
  v12[v15[7]] = v18 & 1;
  LOBYTE(v36) = 4;
  v12[v15[8]] = sub_1CFF0EAEC() & 1;
  LOBYTE(v36) = 5;
  v12[v15[9]] = sub_1CFF0EAEC() & 1;
  LOBYTE(v36) = 6;
  v20 = sub_1CFF0EADC();
  v35 = 0;
  v21 = &v12[v15[10]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v36) = 7;
  v23 = sub_1CFF0EADC();
  v25 = v24;
  (*(v19 + 8))(v33, v34);
  v26 = &v12[v15[11]];
  *v26 = v23;
  v26[1] = v25;
  sub_1CFEB0624(v12, v28, type metadata accessor for OvernightMetricsChartPoint);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CFEB06D4(v12, type metadata accessor for OvernightMetricsChartPoint);
}

uint64_t sub_1CFEAAB14()
{
  sub_1CFF0EC3C();
  OvernightMetricsChartPoint.hash(into:)(v1);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEAAB58()
{
  sub_1CFF0EC3C();
  OvernightMetricsChartPoint.hash(into:)(v1);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEAABC8@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v35 = a1;
  v34 = a2;
  sub_1CFE8DBDC();
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = sub_1CFF0C7AC();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  sub_1CFEB0734(0, &qword_1EDEC4D28, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_1CFF0C49C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0C84C();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_1CFF0C47C();
    sub_1CFF0C45C();
    sub_1CFEB068C(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v22 = sub_1CFF0E49C();
    result = (*(v18 + 8))(v20, v17);
    if (v22)
    {
      v23 = v32;
      v24 = *(v32 + 32);
      v24(v7, v13, v8);
      v25 = v33;
      v24(&v7[*(v33 + 48)], v10, v8);
      sub_1CFEB0624(v7, v4, sub_1CFE8DBDC);
      v26 = *(v25 + 48);
      v27 = v34;
      v24(v34, v4, v8);
      v28 = *(v23 + 8);
      v28(&v4[v26], v8);
      sub_1CFEB05BC(v7, v4, sub_1CFE8DBDC);
      v29 = *(v25 + 48);
      sub_1CFE55184();
      v24(&v27[*(v30 + 36)], &v4[v29], v8);
      return (v28)(v4, v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEAAFDC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v137 = a4;
  v134 = a3;
  v154 = a2;
  v160 = a1;
  v156 = a5;
  v5 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1CFF0C72C();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFF0C62C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v140 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFF0C8BC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v139 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFF0C89C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v138 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v145 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1CFEB0734(0, &qword_1EDEC4D20, MEMORY[0x1E69690E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v133 = &v120 - v18;
  sub_1CFEB0734(0, &qword_1EDEC4D18, MEMORY[0x1E69690F0], v16);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v130 = &v120 - v20;
  v136 = sub_1CFF0C75C();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v131 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v120 - v23;
  v24 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v155 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v149 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1CFF0C88C();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v148 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v153 = &v120 - v30;
  v161 = sub_1CFF0CCEC();
  v157 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v124 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v146 = &v120 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v120 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v152 = &v120 - v38;
  v39 = sub_1CFF0C7AC();
  v147 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v159 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v120 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v151 = &v120 - v45;
  sub_1CFEB0528();
  v47 = v46 - 8;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v120 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1CFF0CB6C();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v158 = &v120 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v120 - v54;
  sub_1CFEB0624(v160, v49, sub_1CFEB0528);
  v56 = &v49[*(v47 + 56)];
  v144 = *v56;
  LODWORD(v150) = v56[8];
  v160 = v51;
  v57 = v154;
  (*(v51 + 32))(v55, v49, v50);
  if (*(v57 + 2) && (v58 = sub_1CFEC3AB8(v55), (v59 & 1) != 0))
  {
    v126 = v50;
    v60 = *(v57 + 7);
    v61 = v147;
    v62 = v147 + 2;
    v63 = v147[2];
    v63(v43, v60 + v147[9] * v58, v39);
    (v61[4])(v151, v43, v39);
    v154 = v24;
    if (v150)
    {
      v64 = v157;
      v65 = v161;
      (*(v157 + 104))(v36, *MEMORY[0x1E69A2ED8], v161);
    }

    else
    {
      sub_1CFF0CCBC();
      v65 = v161;
      v64 = v157;
    }

    (*(v64 + 32))(v152, v36, v65);
    v122 = *(v160 + 16);
    v123 = v55;
    v122(v158, v55, v126);
    v68 = v134;
    v63(v159, v134, v39);
    v69 = *MEMORY[0x1E6969A48];
    v70 = v128;
    v121 = v63;
    v71 = *(v128 + 104);
    v72 = v127;
    v120 = v62;
    v73 = v129;
    v71(v127, v69, v129);
    sub_1CFEAABC8(v68, v153);
    v74 = *(v70 + 8);
    v74(v72, v73);
    v71(v72, *MEMORY[0x1E6969A98], v73);
    v75 = v148;
    sub_1CFEAABC8(v151, v148);
    v74(v72, v73);
    v76 = *(v157 + 16);
    v77 = v146;
    v76(v146, v152, v161);
    v78 = v149;
    v122(v149, v158, v126);
    v79 = v154;
    v80 = &v78[v154[5]];
    v137 = v39;
    v121(v80, v159, v39);
    sub_1CFEB0624(v153, &v78[v79[6]], sub_1CFE55184);
    sub_1CFEB0624(v75, &v78[v79[7]], sub_1CFE55184);
    v81 = &v78[v79[8]];
    *v81 = v144;
    v81[8] = v150;
    v76(&v78[v79[9]], v77, v161);
    v82 = sub_1CFF0C67C();
    (*(*(v82 - 8) + 56))(v130, 1, 1, v82);
    v83 = sub_1CFF0C66C();
    (*(*(v83 - 8) + 56))(v133, 1, 1, v83);
    sub_1CFF0C7EC();
    sub_1CFF0C85C();
    sub_1CFF0C8AC();
    sub_1CFF0C61C();
    v84 = v131;
    sub_1CFF0C68C();
    v85 = v141;
    sub_1CFF0C70C();
    v86 = v132;
    sub_1CFF0C74C();
    (*(v142 + 8))(v85, v143);
    v87 = *(v135 + 8);
    v88 = v136;
    v87(v84, v136);
    sub_1CFEB068C(&qword_1EDEC4D10, MEMORY[0x1E6969328]);
    sub_1CFF0C79C();
    v87(v86, v88);
    v164 = v162;
    v165 = v163;
    MEMORY[0x1D3879330](8236, 0xE200000000000000);
    v89 = SleepingSampleDataType.localizedName.getter();
    MEMORY[0x1D3879330](v89);

    v90 = v165;
    v91 = &v78[v79[10]];
    *v91 = v164;
    *(v91 + 1) = v90;
    v92 = SleepingSampleDataType.localizedName.getter();
    v93 = &v78[v79[11]];
    v94 = v146;
    *v93 = v92;
    v93[1] = v95;
    if (v150 & 1) != 0 || (v96 = v157, v97 = v124, v98 = v161, (*(v157 + 104))(v124, *MEMORY[0x1E69A2ED8], v161), sub_1CFEB068C(&qword_1EDEC4C98, MEMORY[0x1E69A2EF8]), v99 = sub_1CFF0E4CC(), v100 = *(v96 + 8), v100(v97, v98), (v99))
    {
      sub_1CFF0E4DC();
      type metadata accessor for HealthBalanceUI();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v102 = [objc_opt_self() bundleForClass_];
      sub_1CFF0C7FC();
      v145 = sub_1CFF0E5AC();
      v150 = v103;
      v104 = *(v157 + 8);
      v105 = v161;
      v104(v94, v161);
      sub_1CFEB06D4(v148, sub_1CFE55184);
      sub_1CFEB06D4(v153, sub_1CFE55184);
      v106 = v147[1];
      v107 = v137;
      v106(v159, v137);
      v108 = *(v160 + 8);
      v109 = v126;
      v108(v158, v126);
      v104(v152, v105);
      v110 = v145;
      v106(v151, v107);
    }

    else
    {
      sub_1CFF0708C(v144);
      v110 = v111;
      v150 = v112;
      v100(v94, v161);
      sub_1CFEB06D4(v148, sub_1CFE55184);
      sub_1CFEB06D4(v153, sub_1CFE55184);
      v113 = v147[1];
      v114 = v137;
      v113(v159, v137);
      v108 = *(v160 + 8);
      v109 = v126;
      v108(v158, v126);
      v100(v152, v161);
      v113(v151, v114);
    }

    v108(v123, v109);
    v24 = v154;
    v115 = v149;
    v116 = v150;
    v117 = &v149[v154[12]];
    *v117 = v110;
    *(v117 + 1) = v116;
    v118 = v156;
    sub_1CFEB05BC(v115, v156, type metadata accessor for IndividualOvernightMetricChartPoint);
    v67 = v118;
    v66 = 0;
  }

  else
  {
    (*(v160 + 8))(v55, v50);
    v66 = 1;
    v67 = v156;
  }

  return (*(v155 + 56))(v67, v66, 1, v24);
}

size_t sub_1CFEAC0C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1CFEB0734(0, &qword_1EDEC49F8, sub_1CFEB0528, MEMORY[0x1E69E6F90]);
  sub_1CFEB0528();
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CFEAC1E8(void **a1)
{
  sub_1CFEB0528();
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFEF6588(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1CFEAC3C4(v6);
  *a1 = v4;
}

uint64_t sub_1CFEAC290(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CFEF65E0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1CFF0EB8C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1CFF0E64C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1CFEAD600(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1CFEAC3C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CFF0EB8C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CFEB0528();
        v6 = sub_1CFF0E64C();
        *(v6 + 16) = v5;
      }

      sub_1CFEB0528();
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1CFEAC91C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CFEAC4F0(0, v2, 1, a1);
  }
}

void sub_1CFEAC4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58 = sub_1CFF0CB4C();
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v41 - v11;
  sub_1CFEB0528();
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v41 - v22;
  v43 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v52 = (v8 + 8);
    v25 = v23 + v24 * (a3 - 1);
    v48 = -v24;
    v49 = v23;
    v26 = a1 - a3;
    v42 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v46 = v25;
    v47 = a3;
    v44 = v27;
    v45 = v26;
    v59 = v26;
    while (1)
    {
      v28 = v60;
      sub_1CFEB0624(v27, v60, sub_1CFEB0528);
      v29 = v53;
      sub_1CFEB0624(v25, v53, sub_1CFEB0528);
      v30 = v54;
      sub_1CFEB0624(v28, v54, sub_1CFEB0528);
      v31 = v56;
      sub_1CFF0CB5C();
      v32 = sub_1CFF0CB6C();
      v33 = *(*(v32 - 8) + 8);
      v33(v30, v32);
      v34 = v55;
      sub_1CFEB0624(v29, v55, sub_1CFEB0528);
      v35 = v57;
      sub_1CFF0CB5C();
      v33(v34, v32);
      LOBYTE(v34) = sub_1CFF0CB3C();
      v36 = *v52;
      v37 = v35;
      v38 = v58;
      (*v52)(v37, v58);
      v36(v31, v38);
      sub_1CFEB06D4(v29, sub_1CFEB0528);
      sub_1CFEB06D4(v60, sub_1CFEB0528);
      if ((v34 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v25 = v46 + v42;
        v26 = v45 - 1;
        v27 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v39 = v50;
      sub_1CFEB05BC(v27, v50, sub_1CFEB0528);
      swift_arrayInitWithTakeFrontToBack();
      sub_1CFEB05BC(v39, v25, sub_1CFEB0528);
      v25 += v48;
      v27 += v48;
      if (__CFADD__(v59++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1CFEAC91C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v154 = sub_1CFF0CB4C();
  v8 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v131 - v11;
  sub_1CFEB0528();
  v148 = v12;
  v143 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v131 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v131 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v150 = &v131 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v155 = &v131 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v131 - v23;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_95:
    a4 = *v134;
    if (!*v134)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_127:
      v26 = sub_1CFEF63F0(v26);
    }

    v158 = v26;
    v127 = *(v26 + 2);
    if (v127 >= 2)
    {
      while (*a3)
      {
        v128 = *&v26[16 * v127];
        v129 = *&v26[16 * v127 + 24];
        sub_1CFEADB5C(*a3 + *(v143 + 72) * v128, *a3 + *(v143 + 72) * *&v26[16 * v127 + 16], *a3 + *(v143 + 72) * v129, a4);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v129 < v128)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1CFEF63F0(v26);
        }

        if (v127 - 2 >= *(v26 + 2))
        {
          goto LABEL_121;
        }

        v130 = &v26[16 * v127];
        *v130 = v128;
        *(v130 + 1) = v129;
        v158 = v26;
        sub_1CFEF6364(v127 - 1);
        v26 = v158;
        v127 = *(v158 + 2);
        if (v127 <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_131;
    }

LABEL_105:

    return;
  }

  v131 = a4;
  v25 = 0;
  v149 = (v8 + 8);
  v26 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v27 = v25;
    if (v25 + 1 >= v24)
    {
      v45 = v25 + 1;
    }

    else
    {
      v144 = v24;
      v133 = v26;
      v132 = v5;
      v28 = *a3;
      v29 = *(v143 + 72);
      v135 = v25;
      v30 = v28 + v29 * (v25 + 1);
      v31 = v28;
      v156 = v28;
      v32 = v157;
      sub_1CFEB0624(v30, v157, sub_1CFEB0528);
      v33 = v155;
      sub_1CFEB0624(v31 + v29 * v25, v155, sub_1CFEB0528);
      v34 = v150;
      sub_1CFEB0624(v32, v150, sub_1CFEB0528);
      v35 = v152;
      sub_1CFF0CB5C();
      v36 = sub_1CFF0CB6C();
      v37 = *(v36 - 8);
      v38 = *(v37 + 8);
      v39 = v37 + 8;
      v38(v34, v36);
      v40 = v151;
      sub_1CFEB0624(v33, v151, sub_1CFEB0528);
      v41 = v153;
      sub_1CFF0CB5C();
      v141 = v38;
      v142 = v36;
      v140 = v39;
      v38(v40, v36);
      LODWORD(v145) = sub_1CFF0CB3C();
      a4 = *v149;
      v42 = v154;
      (*v149)(v41, v154);
      v139 = a4;
      (a4)(v35, v42);
      sub_1CFEB06D4(v155, sub_1CFEB0528);
      sub_1CFEB06D4(v157, sub_1CFEB0528);
      v43 = v135 + 2;
      v146 = v29;
      v44 = v156 + v29 * (v135 + 2);
      while (1)
      {
        v45 = v144;
        if (v144 == v43)
        {
          break;
        }

        v46 = v157;
        sub_1CFEB0624(v44, v157, sub_1CFEB0528);
        v47 = v155;
        sub_1CFEB0624(v30, v155, sub_1CFEB0528);
        v48 = v150;
        sub_1CFEB0624(v46, v150, sub_1CFEB0528);
        a4 = v152;
        sub_1CFF0CB5C();
        v156 = v30;
        v50 = v141;
        v49 = v142;
        (v141)(v48, v142);
        v51 = v151;
        sub_1CFEB0624(v47, v151, sub_1CFEB0528);
        v52 = v153;
        sub_1CFF0CB5C();
        v53 = v49;
        v54 = v156;
        v50(v51, v53);
        v55 = sub_1CFF0CB3C() & 1;
        v56 = v154;
        v57 = v139;
        v139(v52, v154);
        v57(a4, v56);
        sub_1CFEB06D4(v155, sub_1CFEB0528);
        sub_1CFEB06D4(v157, sub_1CFEB0528);
        ++v43;
        v44 += v146;
        v30 = v54 + v146;
        if ((v145 & 1) != v55)
        {
          v45 = v43 - 1;
          break;
        }
      }

      v5 = v132;
      a3 = v136;
      v26 = v133;
      v27 = v135;
      if (v145)
      {
        if (v45 < v135)
        {
          goto LABEL_124;
        }

        if (v135 < v45)
        {
          a4 = v146 * (v45 - 1);
          v58 = v45 * v146;
          v144 = v45;
          v59 = v45;
          v60 = v135;
          v61 = v135 * v146;
          do
          {
            if (v60 != --v59)
            {
              v62 = *a3;
              if (!v62)
              {
                goto LABEL_130;
              }

              sub_1CFEB05BC(v62 + v61, v138, sub_1CFEB0528);
              if (v61 < a4 || v62 + v61 >= (v62 + v58))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v61 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1CFEB05BC(v138, v62 + a4, sub_1CFEB0528);
              a3 = v136;
            }

            ++v60;
            a4 -= v146;
            v58 -= v146;
            v61 += v146;
          }

          while (v60 < v59);
          v26 = v133;
          v27 = v135;
          v45 = v144;
        }
      }
    }

    v63 = a3[1];
    if (v45 < v63)
    {
      if (__OFSUB__(v45, v27))
      {
        goto LABEL_123;
      }

      if (v45 - v27 < v131)
      {
        if (__OFADD__(v27, v131))
        {
          goto LABEL_125;
        }

        if (v27 + v131 >= v63)
        {
          v64 = a3[1];
        }

        else
        {
          v64 = (v27 + v131);
        }

        if (v64 < v27)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v45 != v64)
        {
          break;
        }
      }
    }

    v25 = v45;
    if (v45 < v27)
    {
      goto LABEL_122;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1CFE975F8(0, *(v26 + 2) + 1, 1, v26);
    }

    a4 = *(v26 + 2);
    v65 = *(v26 + 3);
    v66 = a4 + 1;
    if (a4 >= v65 >> 1)
    {
      v26 = sub_1CFE975F8((v65 > 1), a4 + 1, 1, v26);
    }

    *(v26 + 2) = v66;
    v67 = &v26[16 * a4];
    *(v67 + 4) = v27;
    *(v67 + 5) = v25;
    if (!*v134)
    {
      goto LABEL_132;
    }

    if (a4)
    {
      v68 = *v134;
      while (1)
      {
        v69 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v26 + 4);
          v71 = *(v26 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_53:
          if (v73)
          {
            goto LABEL_111;
          }

          v86 = &v26[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_114;
          }

          v92 = &v26[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_118;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v66 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v96 = &v26[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_67:
        if (v91)
        {
          goto LABEL_113;
        }

        v99 = &v26[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_116;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v69 - 1;
        if (v69 - 1 >= v66)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v107 = *&v26[16 * a4 + 32];
        v108 = *&v26[16 * v69 + 40];
        sub_1CFEADB5C(*a3 + *(v143 + 72) * v107, *a3 + *(v143 + 72) * *&v26[16 * v69 + 32], *a3 + *(v143 + 72) * v108, v68);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v108 < v107)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1CFEF63F0(v26);
        }

        if (a4 >= *(v26 + 2))
        {
          goto LABEL_108;
        }

        v109 = &v26[16 * a4];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v158 = v26;
        sub_1CFEF6364(v69);
        v26 = v158;
        v66 = *(v158 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v26[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_109;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_110;
      }

      v81 = &v26[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_112;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_115;
      }

      if (v85 >= v77)
      {
        v103 = &v26[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_119;
        }

        if (v72 < v106)
        {
          v69 = v66 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v24 = a3[1];
    if (v25 >= v24)
    {
      goto LABEL_95;
    }
  }

  v133 = v26;
  v132 = v5;
  v110 = *a3;
  v111 = *(v143 + 72);
  v112 = *a3 + v111 * (v45 - 1);
  v145 = -v111;
  v135 = v27;
  v113 = (v27 - v45);
  v146 = v110;
  v137 = v111;
  v114 = v110 + v45 * v111;
  v139 = v64;
LABEL_86:
  v144 = v45;
  v140 = v114;
  v141 = v113;
  v115 = v113;
  v142 = v112;
  while (1)
  {
    v156 = v115;
    v116 = v157;
    sub_1CFEB0624(v114, v157, sub_1CFEB0528);
    v117 = v155;
    sub_1CFEB0624(v112, v155, sub_1CFEB0528);
    v118 = v150;
    sub_1CFEB0624(v116, v150, sub_1CFEB0528);
    a4 = v152;
    sub_1CFF0CB5C();
    v119 = sub_1CFF0CB6C();
    v120 = *(*(v119 - 8) + 8);
    v120(v118, v119);
    v121 = v151;
    sub_1CFEB0624(v117, v151, sub_1CFEB0528);
    v122 = v153;
    sub_1CFF0CB5C();
    v120(v121, v119);
    LOBYTE(v121) = sub_1CFF0CB3C();
    v123 = *v149;
    v124 = v154;
    (*v149)(v122, v154);
    v123(a4, v124);
    sub_1CFEB06D4(v117, sub_1CFEB0528);
    sub_1CFEB06D4(v157, sub_1CFEB0528);
    if ((v121 & 1) == 0)
    {
LABEL_85:
      v45 = v144 + 1;
      v112 = v142 + v137;
      v113 = v141 - 1;
      v25 = v139;
      v114 = v140 + v137;
      if ((v144 + 1) != v139)
      {
        goto LABEL_86;
      }

      v5 = v132;
      a3 = v136;
      v26 = v133;
      v27 = v135;
      if (v139 < v135)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    v125 = v156;
    if (!v146)
    {
      break;
    }

    a4 = v147;
    sub_1CFEB05BC(v114, v147, sub_1CFEB0528);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CFEB05BC(a4, v112, sub_1CFEB0528);
    v112 += v145;
    v114 += v145;
    v126 = __CFADD__(v125, 1);
    v115 = (v125 + 1);
    if (v126)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1CFEAD600(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1CFEF63F0(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1CFEAE300((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CFE975F8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1CFE975F8((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1CFEAE300((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

void sub_1CFEADB5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = sub_1CFF0CB4C();
  v8 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v56 - v11;
  sub_1CFEB0528();
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v56 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_59;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_60;
  }

  v23 = (a2 - a1) / v21;
  v76 = a1;
  v75 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v25;
    if (v25 >= 1)
    {
      v40 = -v21;
      v58 = (v8 + 8);
      v59 = -v21;
      v41 = v39;
      v72 = a4;
      v73 = a1;
      do
      {
        v56 = v39;
        v42 = a2 + v40;
        v60 = a2;
        v61 = a2 + v40;
        while (1)
        {
          if (a2 <= a1)
          {
            v76 = a2;
            v74 = v56;
            goto LABEL_57;
          }

          v57 = v39;
          v69 = a3 + v40;
          v43 = v41 + v40;
          v44 = v70;
          v62 = a3;
          sub_1CFEB0624(v41 + v40, v70, sub_1CFEB0528);
          v45 = v71;
          sub_1CFEB0624(v42, v71, sub_1CFEB0528);
          v46 = v64;
          sub_1CFEB0624(v44, v64, sub_1CFEB0528);
          v47 = v66;
          sub_1CFF0CB5C();
          v48 = sub_1CFF0CB6C();
          v49 = *(*(v48 - 8) + 8);
          v49(v46, v48);
          v50 = v65;
          sub_1CFEB0624(v45, v65, sub_1CFEB0528);
          v51 = v41;
          v52 = v67;
          sub_1CFF0CB5C();
          v49(v50, v48);
          v53 = sub_1CFF0CB3C();
          v54 = *v58;
          v55 = v68;
          (*v58)(v52, v68);
          v54(v47, v55);
          sub_1CFEB06D4(v71, sub_1CFEB0528);
          sub_1CFEB06D4(v70, sub_1CFEB0528);
          if (v53)
          {
            break;
          }

          v39 = v43;
          a3 = v69;
          if (v62 < v51 || v69 >= v51)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v61;
            a1 = v73;
            v40 = v59;
          }

          else
          {
            v42 = v61;
            a1 = v73;
            v40 = v59;
            if (v62 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v43;
          a2 = v60;
          if (v43 <= v72)
          {
            goto LABEL_55;
          }
        }

        a3 = v69;
        if (v62 < v60 || v69 >= v60)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v73;
          v39 = v57;
          v40 = v59;
          v41 = v51;
        }

        else
        {
          a2 = v61;
          a1 = v73;
          v39 = v57;
          v40 = v59;
          v41 = v51;
          if (v62 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v41 > v72);
    }

LABEL_55:
    v76 = a2;
    v74 = v39;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = (a4 + v24);
    v74 = a4 + v24;
    v69 = a3;
    if (v24 >= 1 && a2 < a3)
    {
      v60 = (v8 + 8);
      v61 = v21;
      do
      {
        v72 = a4;
        v73 = a1;
        v27 = v70;
        sub_1CFEB0624(a2, v70, sub_1CFEB0528);
        v28 = v71;
        sub_1CFEB0624(a4, v71, sub_1CFEB0528);
        v29 = v64;
        sub_1CFEB0624(v27, v64, sub_1CFEB0528);
        v30 = v66;
        sub_1CFF0CB5C();
        v31 = sub_1CFF0CB6C();
        v32 = *(*(v31 - 8) + 8);
        v32(v29, v31);
        v33 = v65;
        sub_1CFEB0624(v28, v65, sub_1CFEB0528);
        v34 = v67;
        sub_1CFF0CB5C();
        v32(v33, v31);
        LOBYTE(v31) = sub_1CFF0CB3C();
        v35 = *v60;
        v36 = v68;
        (*v60)(v34, v68);
        v35(v30, v36);
        sub_1CFEB06D4(v28, sub_1CFEB0528);
        sub_1CFEB06D4(v27, sub_1CFEB0528);
        if (v31)
        {
          v37 = v61;
          a4 = v72;
          v38 = v73;
          if (v73 < a2 || v73 >= a2 + v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v37;
        }

        else
        {
          v37 = v61;
          v38 = v73;
          a4 = v72 + v61;
          if (v73 < v72 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v72)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v38 + v37;
        v76 = a1;
      }

      while (a4 < v62 && a2 < v69);
    }
  }

LABEL_57:
  sub_1CFEF641C(&v76, &v75, &v74);
}

uint64_t sub_1CFEAE300(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1CFEAE4F4(__int128 *a1, uint64_t a2)
{
  v65 = a1;
  v57 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1CFF0CCEC();
  v5 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v52 - v8;
  sub_1CFEB0734(0, &qword_1EDEC4CA0, sub_1CFEB03F0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v53 = (v16 + 63) >> 6;
  v58 = v5 + 16;
  v67 = (v5 + 32);
  v60 = v5;
  v62 = (v5 + 8);
  v61 = a2;

  v20 = 0;
  v21 = 0;
  v55 = v11;
  v54 = v14;
  v63 = a2 + 64;
  while (1)
  {
    v70 = v20;
    if (!v18)
    {
      break;
    }

    v68 = v21;
    v22 = v21;
LABEL_16:
    v69 = (v18 - 1) & v18;
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v26 = v61;
    v27 = v60;
    v28 = v59;
    v29 = v79;
    (*(v60 + 16))(v59, *(v61 + 48) + *(v60 + 72) * v25, v79);
    v30 = *(*(v26 + 56) + 8 * v25);
    sub_1CFEB03F0();
    v32 = v31;
    v33 = *(v31 + 48);
    (*(v27 + 32))(v11, v28, v29);
    *&v11[v33] = v30;
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);

LABEL_17:
    sub_1CFEB0494(v11, v14);
    sub_1CFEB03F0();
    if ((*(*(v32 - 8) + 48))(v14, 1, v32) == 1)
    {

      return MEMORY[0x1D3879980](v70);
    }

    v34 = *(v32 + 48);
    v35 = v64;
    v36 = v79;
    (*v67)(v64, v14, v79);
    v37 = *&v14[v34];
    v38 = v65[3];
    v82 = v65[2];
    v83 = v38;
    v84 = *(v65 + 8);
    v39 = v65[1];
    v80 = *v65;
    v81 = v39;
    v78 = sub_1CFEB068C(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
    sub_1CFF0E45C();
    (*v62)(v35, v36);
    MEMORY[0x1D3879980](*(v37 + 16));
    v40 = *(v37 + 16);
    if (v40)
    {
      v41 = v57;
      v42 = *(v57 + 20);
      v76 = &v4[*(v57 + 24)];
      v77 = v42;
      sub_1CFE55184();
      v44 = *(v43 + 36);
      v45 = v41[8];
      v74 = &v4[v41[7]];
      v75 = v44;
      v73 = &v4[v45];
      v72 = v41[9];
      v46 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v66 = v37;
      v47 = v37 + v46;
      v71 = *(v56 + 72);
      do
      {
        sub_1CFEB0624(v47, v4, type metadata accessor for IndividualOvernightMetricChartPoint);
        sub_1CFF0CB6C();
        sub_1CFEB068C(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
        sub_1CFF0E45C();
        sub_1CFF0C7AC();
        sub_1CFEB068C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
        v48 = v4;
        sub_1CFF0E45C();
        sub_1CFF0E45C();
        sub_1CFF0E45C();
        sub_1CFF0E45C();
        sub_1CFF0E45C();
        if (v73[8])
        {
          MEMORY[0x1D3879980](1);
        }

        else
        {
          v49 = *v73;
          MEMORY[0x1D3879980](0);
          if ((v49 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          MEMORY[0x1D38799A0](v50);
        }

        v4 = v48;
        sub_1CFF0E45C();
        sub_1CFF0E5EC();
        sub_1CFF0E5EC();
        sub_1CFF0E5EC();
        sub_1CFEB06D4(v48, type metadata accessor for IndividualOvernightMetricChartPoint);
        v47 += v71;
        --v40;
      }

      while (v40);

      v11 = v55;
      v14 = v54;
    }

    else
    {
    }

    result = sub_1CFF0EC7C();
    v18 = v69;
    v20 = result ^ v70;
    v15 = v63;
    v21 = v68;
  }

  if (v53 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v53;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v53)
    {
      sub_1CFEB03F0();
      v32 = v51;
      (*(*(v51 - 8) + 56))(v11, 1, 1, v51);
      v68 = v24;
      v69 = 0;
      goto LABEL_17;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v68 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEAECD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v4 = *(v3 - 1);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D3879980](v8, v5);
  if (v8)
  {
    v10 = v3[5];
    v22 = &v7[v3[6]];
    v23 = v10;
    sub_1CFE55184();
    v12 = *(v11 + 36);
    v13 = v3[8];
    v20 = &v7[v3[7]];
    v21 = v12;
    v19 = &v7[v13];
    v14 = v3[9];
    v18[1] = &v7[v3[10]];
    v18[2] = v14;
    v15 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18[0] = *(v4 + 72);
    do
    {
      sub_1CFEB0624(v15, v7, type metadata accessor for IndividualOvernightMetricChartPoint);
      sub_1CFF0CB6C();
      sub_1CFEB068C(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      sub_1CFF0E45C();
      sub_1CFF0C7AC();
      sub_1CFEB068C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
      sub_1CFF0E45C();
      sub_1CFF0E45C();
      sub_1CFF0E45C();
      sub_1CFF0E45C();
      sub_1CFF0E45C();
      if (v19[8])
      {
        MEMORY[0x1D3879980](1);
      }

      else
      {
        v16 = *v19;
        MEMORY[0x1D3879980](0);
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        MEMORY[0x1D38799A0](v17);
      }

      sub_1CFF0CCEC();
      sub_1CFEB068C(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
      sub_1CFF0E45C();
      sub_1CFF0E5EC();
      sub_1CFF0E5EC();
      sub_1CFF0E5EC();
      result = sub_1CFEB06D4(v7, type metadata accessor for IndividualOvernightMetricChartPoint);
      v15 += v18[0];
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1CFEAF014(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3879980](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1D38799A0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1CFEAF07C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1D3879980](v9, v6);
  if (v9)
  {
    v11 = &v8[v4[5]];
    sub_1CFE55184();
    v32 = *(v12 + 36);
    v13 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
    v14 = v13[5];
    v30 = v13[6];
    v31 = v14;
    v15 = v13[7];
    v16 = v4[6];
    v28 = v4[7];
    v29 = v15;
    v27 = &v8[v16];
    v17 = v4[8];
    v25 = v4[9];
    v26 = v17;
    v18 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    do
    {
      sub_1CFEB0624(v18, v8, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFF0C7AC();
      sub_1CFEB068C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
      sub_1CFF0E45C();
      sub_1CFF0E45C();
      sub_1CFF0E45C();
      sub_1CFEAECD4(a1, *&v11[v31]);
      sub_1CFEAF014(a1, *&v11[v30]);
      sub_1CFEAE4F4(a1, *&v11[v29]);
      if (v27[16] == 1)
      {
        sub_1CFF0EC5C();
      }

      else
      {
        v20 = *v27;
        v19 = *(v27 + 1);
        sub_1CFF0EC5C();
        if (v20 == 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v20;
        }

        MEMORY[0x1D38799A0](*&v21);
        if (v19 == 0.0)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = v19;
        }

        MEMORY[0x1D38799A0](*&v22);
      }

      sub_1CFF0EC5C();
      sub_1CFF0EC5C();
      sub_1CFF0EC5C();
      sub_1CFF0E5EC();
      sub_1CFF0E5EC();
      result = sub_1CFEB06D4(v8, type metadata accessor for OvernightMetricsChartPoint);
      v18 += v24;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1CFEAF364(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1D38799A0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1D38799A0](*&v3);
}

void sub_1CFEAF3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CFEB0528();
  v41 = v8;
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v35 - v12;
  v42 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v14 - 32);
    v37 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v38 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v42;
      v28 = *(v42 + 48);
      v29 = sub_1CFF0CB6C();
      (*(*(v29 - 8) + 16))(v10, v28 + *(*(v29 - 8) + 72) * v26, v29);
      v30 = *(v27 + 56) + 16 * v26;
      v31 = *v30;
      LOBYTE(v30) = *(v30 + 8);
      a1 = v40;
      v32 = &v10[*(v41 + 48)];
      *v32 = v31;
      v32[8] = v30;
      sub_1CFEB05BC(v10, a1, sub_1CFEB0528);
      sub_1CFEB05BC(a1, a2, sub_1CFEB0528);
      if (v21 == v38)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      v33 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v34 = v19 + 1;
    }

    else
    {
      v34 = v20;
    }

    v25 = v34 - 1;
LABEL_23:
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t _s15HealthBalanceUI26OvernightMetricsChartPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1CFF0C77C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OvernightMetricsChartPoint();
  sub_1CFE89FE4(a1 + v4[5], a2 + v4[5]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = a2 + v6;
  if (v8)
  {
    if ((*(v9 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v9 + 16))
    {
      return 0;
    }

    if (*v7 != *v9 || v7[1] != *(v9 + 8))
    {
      return 0;
    }
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v12 = v4[10];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_1CFF0EBCC() & 1) == 0)
  {
    return 0;
  }

  v17 = v4[11];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  if (v18 == *v20 && v19 == v20[1])
  {
    return 1;
  }

  return sub_1CFF0EBCC();
}

unint64_t sub_1CFEAF79C()
{
  result = qword_1EC512858;
  if (!qword_1EC512858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512858);
  }

  return result;
}

uint64_t type metadata accessor for OvernightMetricsChartPoint()
{
  result = qword_1EDEC5010;
  if (!qword_1EDEC5010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEAF83C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFEAF79C();
    v7 = a3(a1, &type metadata for OvernightMetricsChartPoint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFEAF8A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE59578();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFEAF9B8()
{
  sub_1CFF0C7AC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
    if (v1 <= 0x3F)
    {
      sub_1CFEB0734(319, &qword_1EDEC4D68, sub_1CFE59578, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OvernightMetricsChartPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OvernightMetricsChartPoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CFEAFBF4()
{
  result = qword_1EC512890;
  if (!qword_1EC512890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512890);
  }

  return result;
}

unint64_t sub_1CFEAFC4C()
{
  result = qword_1EC512898;
  if (!qword_1EC512898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512898);
  }

  return result;
}

unint64_t sub_1CFEAFCA4()
{
  result = qword_1EC5128A0;
  if (!qword_1EC5128A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5128A0);
  }

  return result;
}

uint64_t sub_1CFEAFCF8(uint64_t a1)
{
  v2 = sub_1CFF0CCEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v38 - v10;
  v11 = MEMORY[0x1E69E7CC8];
  v51 = MEMORY[0x1E69E7CC8];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v13 = *(v9 + 80);
  v14 = *(v9 + 72);
  v15 = a1 + ((v13 + 32) & ~v13);
  v46 = (v13 + 32) & ~v13;
  v47 = (v3 + 16);
  v41 = v3 + 32;
  v42 = v13;
  v40 = (v3 + 8);
  v39 = xmmword_1CFF10480;
  v44 = v5;
  v45 = v3;
  v43 = v6;
  v49 = v14;
  while (1)
  {
    v17 = v50;
    sub_1CFEB0624(v15, v50, type metadata accessor for IndividualOvernightMetricChartPoint);
    (*v47)(v5, v17 + *(v6 + 36), v2);
    v19 = sub_1CFEC3BD8(v5);
    v20 = v11[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v11[3] < v22)
    {
      sub_1CFEC4898(v22, 1);
      v11 = v51;
      v24 = sub_1CFEC3BD8(v5);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {
      v26 = v2;
      (*v40)(v5, v2);
      v27 = v11[7];
      sub_1CFEB05BC(v50, v48, type metadata accessor for IndividualOvernightMetricChartPoint);
      v28 = *(v27 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v19) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1CFE97CA4(0, v28[2] + 1, 1, v28);
        *(v27 + 8 * v19) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1CFE97CA4(v30 > 1, v31 + 1, 1, v28);
        *(v27 + 8 * v19) = v28;
      }

      v2 = v26;
      v28[2] = v31 + 1;
      v16 = v49;
      sub_1CFEB05BC(v48, v28 + v46 + v31 * v49, type metadata accessor for IndividualOvernightMetricChartPoint);
      v6 = v43;
      v5 = v44;
    }

    else
    {
      sub_1CFEB0734(0, &qword_1EDEC49D0, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6F90]);
      v32 = v46;
      v33 = swift_allocObject();
      *(v33 + 16) = v39;
      sub_1CFEB05BC(v50, v33 + v32, type metadata accessor for IndividualOvernightMetricChartPoint);
      v11[(v19 >> 6) + 8] |= 1 << v19;
      (*(v45 + 32))(v11[6] + *(v45 + 72) * v19, v5, v2);
      *(v11[7] + 8 * v19) = v33;
      v34 = v11[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v11[2] = v36;
      v16 = v49;
    }

    v15 += v16;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1CFF0EBEC();
  __break(1u);
  return result;
}

uint64_t sub_1CFEB0150(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001CFF16050 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFF16070 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFF16090 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFF160B0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFF160D0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFF160F0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFF16110 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1CFF0EBCC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1CFEB03F0()
{
  if (!qword_1EDEC4CA8)
  {
    sub_1CFF0CCEC();
    sub_1CFEB0734(255, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4CA8);
    }
  }
}

uint64_t sub_1CFEB0494(uint64_t a1, uint64_t a2)
{
  sub_1CFEB0734(0, &qword_1EDEC4CA0, sub_1CFEB03F0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFEB0528()
{
  if (!qword_1EDEC4CF0)
  {
    sub_1CFF0CB6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4CF0);
    }
  }
}

uint64_t sub_1CFEB05BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEB0624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEB068C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEB06D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFEB0734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t BalanceAccessibilityIdentifier.namespaced.getter()
{

  sub_1CFEE098C(v0);
  sub_1CFEB0828();
  sub_1CFE88580();
  v1 = sub_1CFF0E47C();

  return v1;
}

void sub_1CFEB0828()
{
  if (!qword_1EDEC1718)
  {
    v0 = sub_1CFF0E65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1718);
    }
  }
}

uint64_t sub_1CFEB088C(uint64_t *a1, int a2)
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

uint64_t sub_1CFEB08D4(uint64_t result, int a2, int a3)
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

__n128 WarmupProgressCounter.init(progress:configuration:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WarmupProgressCounter();
  v7 = *(v6 + 24);
  __src[0] = swift_getKeyPath();
  sub_1CFEA4090(__src);
  memcpy((a3 + v7), __src, 0x119uLL);
  v8 = sub_1CFF0CA6C();
  v11 = a2[1];
  v12 = *a2;
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  v9 = (a3 + *(v6 + 20));
  result = v12;
  *v9 = v12;
  v9[1] = v11;
  return result;
}

uint64_t type metadata accessor for WarmupProgressCounter()
{
  result = qword_1EC512958;
  if (!qword_1EC512958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void WarmupProgressCounter.body.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1CFF0D84C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1CFEB1F64();
  sub_1CFEB0BE4(v1);
  v3 = sub_1CFF0DAAC();
  type metadata accessor for WarmupProgressCounter();
  sub_1CFF0D40C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1CFEB264C(0, &qword_1EC512938, sub_1CFEB26B0);
  v13 = a1 + *(v12 + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
}

uint64_t sub_1CFEB0BE4(uint64_t a1)
{
  v2 = type metadata accessor for WarmupProgressCounter();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1CFF0CA3C();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v8[0] = 1;
    v8[1] = result;
    swift_getKeyPath();
    sub_1CFEB2C88(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WarmupProgressCounter);
    v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v7 = swift_allocObject();
    sub_1CFEB2BC0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for WarmupProgressCounter);
    sub_1CFEB2080();
    sub_1CFEB220C(0, &qword_1EC5128C0, sub_1CFEB20D8);
    sub_1CFEB2578();
    sub_1CFEB27B0(&qword_1EC512950, &qword_1EC5128C0, sub_1CFEB20D8);
    sub_1CFF0E06C();
  }

  return result;
}

uint64_t sub_1CFEB0E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFEB216C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - v10);
  v12 = *a1;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v11 = sub_1CFF0E0EC();
  v11[1] = v13;
  sub_1CFEB2AEC();
  sub_1CFEB0FB8(v12, a2, v11 + *(v14 + 44));
  v15 = v12 == sub_1CFF0CA3C();
  sub_1CFE4B944(v11, v8);
  sub_1CFE4B944(v8, a3);
  sub_1CFEB20D8();
  v17 = a3 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 9) = v15;
  sub_1CFE4B9A8(v11);
  sub_1CFE4B9A8(v8);
}

uint64_t sub_1CFEB0FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v108 = a1;
  v106 = a3;
  v113 = sub_1CFF0D89C();
  v4 = *(v113 - 1);
  MEMORY[0x1EEE9AC00](v113);
  v98 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEB23E0();
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEB264C(0, &qword_1EC5128F8, sub_1CFEB23E0);
  v103 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v89 - v9;
  sub_1CFEB2340(0, &qword_1EC5128F0, &qword_1EC5128F8, sub_1CFEB23E0, sub_1CFEB24A4);
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v89 - v13;
  v14 = sub_1CFF0D80C();
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFF0E03C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v109 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v89 - v19;
  sub_1CFE52EF0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEB264C(0, &qword_1EDEC1FD8, sub_1CFE52EF0);
  v90 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  sub_1CFEB2340(0, &qword_1EC5128E8, &qword_1EDEC1FD8, sub_1CFE52EF0, sub_1CFE53340);
  v96 = *(v28 - 8);
  v97 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v112 = &v89 - v31;
  sub_1CFF0E6DC();
  v94 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = *MEMORY[0x1E697F468];
  v99 = v4;
  v107 = *(v4 + 104);
  v107(v20, v32, v113);
  if (sub_1CFF0CA5C() >= v108)
  {
    v36 = *(type metadata accessor for WarmupProgressCounter() + 24);
    memcpy(v118, (a2 + v36), 0x119uLL);
    memcpy(v119, (a2 + v36), 0x119uLL);
    if (sub_1CFE69B14(v119) == 1)
    {
      nullsub_1(v119);
      memcpy(v115, v118, 0x119uLL);
      v37 = nullsub_1(v115);
      memcpy(v117, v37, sizeof(v117));
      memcpy(v116, v118, 0x119uLL);
      v38 = nullsub_1(v116);
      sub_1CFE55370(v38, v114);
    }

    else
    {
      nullsub_1(v119);
      memcpy(v115, v118, 0x119uLL);
      v89 = *nullsub_1(v115);
      memcpy(v116, v118, 0x119uLL);
      nullsub_1(v116);

      sub_1CFF0E7DC();
      v42 = v22;
      v43 = v20;
      v44 = v32;
      v45 = sub_1CFF0DA6C();
      sub_1CFF0D00C();

      v32 = v44;
      v20 = v43;
      v22 = v42;
      v46 = v91;
      sub_1CFF0D7FC();
      swift_getAtKeyPath();
      sub_1CFEB2C28(v118, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
      (*(v92 + 8))(v46, v93);
    }

    memcpy(v116, v117, 0x118uLL);
    v41 = v116[27];

    sub_1CFE583D0(v116);
  }

  else
  {
    LODWORD(v89) = v32;
    v33 = *(type metadata accessor for WarmupProgressCounter() + 24);
    memcpy(v118, (a2 + v33), 0x119uLL);
    memcpy(v119, (a2 + v33), 0x119uLL);
    if (sub_1CFE69B14(v119) == 1)
    {
      nullsub_1(v119);
      memcpy(v115, v118, 0x119uLL);
      v34 = nullsub_1(v115);
      memcpy(v117, v34, sizeof(v117));
      memcpy(v116, v118, 0x119uLL);
      v35 = nullsub_1(v116);
      sub_1CFE55370(v35, v114);
    }

    else
    {
      nullsub_1(v119);
      memcpy(v115, v118, 0x119uLL);
      nullsub_1(v115);
      memcpy(v116, v118, 0x119uLL);
      nullsub_1(v116);

      sub_1CFF0E7DC();
      v39 = sub_1CFF0DA6C();
      sub_1CFF0D00C();

      v40 = v91;
      sub_1CFF0D7FC();
      swift_getAtKeyPath();
      sub_1CFEB2C28(v118, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
      (*(v92 + 8))(v40, v93);
    }

    memcpy(v116, v117, 0x118uLL);
    v41 = v116[28];

    sub_1CFE583D0(v116);

    v32 = v89;
  }

  sub_1CFEB2BC0(v20, v24, MEMORY[0x1E6981998]);
  *&v24[*(v22 + 52)] = v41;
  *&v24[*(v22 + 56)] = 256;
  sub_1CFF0CA3C();
  v47 = type metadata accessor for WarmupProgressCounter();
  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  sub_1CFEB2BC0(v24, v27, sub_1CFE52EF0);
  v48 = &v27[*(v90 + 36)];
  v49 = v121;
  *v48 = v120;
  *(v48 + 1) = v49;
  *(v48 + 2) = v122;
  sub_1CFF0CA5C();
  sub_1CFE53340();
  sub_1CFF0DCFC();
  sub_1CFEB2C28(v27, &qword_1EDEC1FD8, sub_1CFE52EF0, MEMORY[0x1E697E048], sub_1CFEB264C);
  v107(v109, v32, v113);
  v50 = *(v47 + 24);
  memcpy(v118, (a2 + v50), 0x119uLL);
  memcpy(v119, (a2 + v50), 0x119uLL);
  if (sub_1CFE69B14(v119) == 1)
  {
    nullsub_1(v119);
    memcpy(v115, v118, 0x119uLL);
    v51 = nullsub_1(v115);
    memcpy(v117, v51, sizeof(v117));
    memcpy(v116, v118, 0x119uLL);
    v52 = nullsub_1(v116);
    sub_1CFE55370(v52, v114);
  }

  else
  {
    nullsub_1(v119);
    memcpy(v115, v118, 0x119uLL);
    nullsub_1(v115);
    memcpy(v116, v118, 0x119uLL);
    nullsub_1(v116);

    sub_1CFF0E7DC();
    v53 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    v54 = v91;
    sub_1CFF0D7FC();
    swift_getAtKeyPath();
    sub_1CFEB2C28(v118, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
    (*(v92 + 8))(v54, v93);
  }

  memcpy(v116, v117, 0x118uLL);
  v55 = v116[26];

  sub_1CFE583D0(v116);
  sub_1CFF0D45C();
  v56 = v109;
  v57 = v102;
  sub_1CFEB2C88(v109, v102, MEMORY[0x1E6981998]);
  v58 = v98;
  v59 = v113;
  v107(v98, *MEMORY[0x1E697F480], v113);
  v60 = sub_1CFF0D88C();
  (*(v99 + 8))(v58, v59);
  v61 = v114[0];
  v62 = v114[2];
  v63 = COERCE_UNSIGNED_INT64(v114[0] * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v60 & 1) == 0);
  v64 = v114[3];
  v65 = v114[4];
  v66 = sub_1CFF0E0EC();
  v68 = v67;
  sub_1CFEB2CF0(v56);
  v69 = v57 + *(v100 + 68);
  *v69 = v63;
  v70 = v114[1];
  *(v69 + 8) = v61;
  *(v69 + 16) = v70;
  *(v69 + 24) = v62;
  *(v69 + 32) = v64;
  *(v69 + 40) = v65;
  *(v69 + 48) = v55;
  *(v69 + 56) = 256;
  *(v69 + 64) = v66;
  *(v69 + 72) = v68;
  sub_1CFF0CA3C();
  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  v71 = v101;
  sub_1CFE4BA04(v57, v101);
  v72 = (v71 + *(v103 + 36));
  v73 = v115[1];
  *v72 = v115[0];
  v72[1] = v73;
  v72[2] = v115[2];
  sub_1CFEB24A4();
  v74 = v110;
  sub_1CFF0DCFC();
  sub_1CFE4BA68(v71);
  v76 = v95;
  v75 = v96;
  v77 = *(v96 + 16);
  v78 = v97;
  v77(v95, v112, v97);
  v79 = v104;
  v113 = *(v104 + 16);
  v80 = v74;
  v81 = v105;
  (v113)(v111, v80, v105);
  v82 = v106;
  v77(v106, v76, v78);
  sub_1CFEB2260();
  v84 = &v82[*(v83 + 48)];
  v85 = v111;
  (v113)(v84, v111, v81);
  v86 = *(v79 + 8);
  v86(v110, v81);
  v87 = *(v75 + 8);
  v87(v112, v78);
  v86(v85, v81);
  v87(v76, v78);
}