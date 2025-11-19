uint64_t sub_1ADF5CD1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1ADF5CD58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  sub_1AE23CB1C();
  if (v3 <= 0x3F)
  {
    sub_1AE23C12C();
    if (v4 <= 0x3F)
    {
      sub_1ADF5CE54();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ADF5CE54()
{
  if (!qword_1EB5B8C18)
  {
    v0 = sub_1AE23D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5B8C18);
    }
  }
}

uint64_t sub_1ADF5CEA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDVx_GSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ADF5CF10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADF5CF74()
{
  v0 = sub_1AE23C0EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C10C();
  sub_1ADF5E938();
  v5 = sub_1AE23D43C();
  if (v5)
  {
    v6 = v5;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v5 & ~(v5 >> 63), 0);
    v7 = v30;
    result = sub_1AE23D41C();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v26 = v1;
      while (1)
      {
        v9 = sub_1AE23D51C();
        v11 = *v10;
        v12 = v10[1];
        result = v9(&v28, 0);
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (v13)
        {
          break;
        }

        if (v11 == v14)
        {
          v28 = v11;
          v15 = sub_1AE23DD9C();
        }

        else
        {
          v27 = v11;
          v28 = sub_1AE23DD9C();
          v29 = v17;
          MEMORY[0x1B26FB670](45, 0xE100000000000000);
          v27 = v14;
          v18 = sub_1AE23DD9C();
          MEMORY[0x1B26FB670](v18);

          v15 = v28;
          v16 = v29;
        }

        v30 = v7;
        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        if (v20 >= v19 >> 1)
        {
          v25 = v15;
          v22 = v16;
          sub_1ADE0B11C((v19 > 1), v20 + 1, 1);
          v16 = v22;
          v15 = v25;
          v7 = v30;
        }

        *(v7 + 16) = v20 + 1;
        v21 = v7 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v16;
        sub_1AE23D47C();
        if (!--v6)
        {
          (*(v26 + 8))(v4, v0);
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    v7 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v28 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    v23 = sub_1AE23CBFC();

    return v23;
  }

  return result;
}

void sub_1ADF5D268(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a4;
  v41 = a8;
  v39 = a3;
  v12 = a1;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AE23D0AC();
  v18 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v19 = [v18 activeProcessorCount];

  v21 = 3 * v19;
  if ((v19 * 3) >> 64 != (3 * v19) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v21)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v17 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_12;
  }

  v22 = v17 / v21;
  if (v22 > 0)
  {
    v42 = 0;
    MEMORY[0x1EEE9AC00](v17 / v22);
    *(&v38 - 12) = a6;
    *(&v38 - 11) = a7;
    *(&v38 - 10) = v41;
    *(&v38 - 9) = v23;
    *(&v38 - 8) = &v42;
    *(&v38 - 7) = v17;
    *(&v38 - 6) = v24;
    *(&v38 - 5) = v12;
    *(&v38 - 4) = a2;
    *(&v38 - 3) = a5;
    v25 = v40;
    *(&v38 - 2) = v39;
    *(&v38 - 1) = v25;
    v12 = 0;
    v20 = sub_1AE23D07C();
    if (v42)
    {
      return;
    }

    __break(1u);
  }

  v12(v20);
  v26 = sub_1ADE0FC48(a7, a7);
  v27 = *(v26 + 52);
  v28 = *(v13 + 72);
  v29 = (*(v13 + 80) + *(v26 + 48)) & ~*(v13 + 80);
  swift_allocObject();
  v30 = sub_1AE23CFFC();
  (*(v13 + 16))(v31, v16, a7);
  sub_1ADE0FCBC();
  v38 = v30;
  v42 = a5;
  MEMORY[0x1EEE9AC00](v30);
  *(&v38 - 6) = a6;
  *(&v38 - 5) = a7;
  v32 = v41;
  v34 = v39;
  v33 = v40;
  *(&v38 - 4) = v41;
  *(&v38 - 3) = v34;
  *(&v38 - 2) = v33;
  *(&v38 - 1) = v16;
  v35 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADE08EB0(sub_1ADF5E9F4, (&v38 - 8), v35, v32, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v37);
  (*(v13 + 8))(v16, a7);
}

uint64_t sub_1ADF5D580(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  *a2 = a3;
  v6 = *a1;
  v5 = a1[1];
  result = sub_1AE23D7DC();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8 = sub_1AE23D07C();
    v9 = *a4;
    *a4 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF5D680(uint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = a3;
  v4 = *a1;
  v3 = a1[1];
  result = sub_1AE23D7DC();
  if (result)
  {
    v6 = sub_1ADDCED94();
    MEMORY[0x1EEE9AC00](v6);
    return sub_1AE23D67C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ADF5D778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *), uint64_t a10, uint64_t a11)
{
  v73 = a11;
  v74 = a7;
  v12 = *(*(a11 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v19;
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v76 = &v63 - v32;
  v34 = v33 * v25;
  if ((v33 * v25) >> 64 != (v33 * v25) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34 + v25;
  if (__OFADD__(v34, v25))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__OFADD__(v35, v25))
  {
    v77 = v30;
    if (v35 + v25 <= v26)
    {
      v36 = v34 + v25;
    }

    else
    {
      v36 = v26;
    }

    v37 = v76;
    v38 = v28;
    v39 = v29;
    v27(v31);
    v40 = v64;
    v41 = v38 + *(v64 + 72) * a1;
    v42 = v37;
    v43 = v15;
    v44 = v65;
    (*(v64 + 16))(v23, v42, v65);
    (*(v40 + 32))(v41, v23, v44);
    v45 = *(v15 + 72);
    v46 = v39 + v45 * v34;
    v86 = v46;
    v70 = v45;
    v47 = v39 + v45 * v36;
    v83 = v47;
    v48 = sub_1AE23D7BC();
    swift_getWitnessTable();
    if ((sub_1AE23CC4C() & 1) == 0)
    {
      goto LABEL_19;
    }

    v68 = a9;
    v69 = a10;
    v83 = v46;
    v84 = v47;
    v86 = v46;
    v87 = v47;
    v49 = sub_1AE23D5CC();
    WitnessTable = swift_getWitnessTable();
    v51 = sub_1ADF5C80C();
    sub_1AE23D5DC();
    v67 = (v77 + 8);
    v66 = (v43 + 32);
    v52 = v72;
    while (1)
    {
      sub_1AE23D5EC();
      v53 = v85;
      if (v85 == v83)
      {
        goto LABEL_14;
      }

      v82 = v85;
      sub_1AE23D5DC();
      sub_1AE23D5EC();
      if ((sub_1AE23CC4C() & 1) == 0)
      {
        break;
      }

      v83 = v81;
      v84 = v80;
      v78 = WitnessTable;
      v79 = v51;
      swift_getWitnessTable();
      sub_1ADF5EC9C();
      v85 = v53 + v70;
      v54 = v73;
      sub_1AE23D15C();
      v77 = v34;
      v55 = v49;
      v56 = v51;
      v57 = WitnessTable;
      v58 = v48;
      v59 = v71;
      v68(v76, v52);
      (*v67)(v52, v54);
      v60 = v59;
      v48 = v58;
      WitnessTable = v57;
      v51 = v56;
      v49 = v55;
      v61 = v77;
      (*v66)(v53, v60, v75);
      v62 = __OFADD__(v61, 1);
      v34 = v61 + 1;
      if (v62)
      {
        __break(1u);
LABEL_14:
        (*(v64 + 8))(v76, v65);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1ADF5DC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AE23C0EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_1AE23C10C();
  sub_1AE23C0DC();
  v11 = *(v7 + 8);
  v11(v10, v6);
  v35 = a2;
  sub_1AE23C10C();
  v12 = type metadata accessor for IndexSetBoundaryIterator();
  v13 = a3 + v12[5];
  sub_1AE23C0DC();
  v11(v10, v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v15 = *(v14 + 36);
  sub_1ADF5E938();
  sub_1AE23D46C();
  v16 = *(a3 + v15);
  v17 = v37[0];
  v18 = 0uLL;
  if (v16 != v37[0])
  {
    v19 = sub_1AE23D51C();
    v34 = *v20;
    v19(v37, 0);
    sub_1AE23D47C();
    v18 = v34;
  }

  v21 = a3 + v12[6];
  *v21 = v18;
  *(v21 + 16) = v16 == v17;
  v22 = *(v14 + 36);
  sub_1AE23D46C();
  v23 = *(v13 + v22);
  v24 = v37[0];
  if (v23 == v37[0])
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = sub_1AE23D51C();
    v26 = v28[1];
    *&v34 = *v28;
    v27(v37, 0);
    v25 = v34;
    sub_1AE23D47C();
  }

  v29 = v23 == v24;
  v30 = a3 + v12[7];
  v31 = sub_1AE23C12C();
  v32 = *(*(v31 - 8) + 8);
  v32(v35, v31);
  result = (v32)(v36, v31);
  *v30 = v25;
  *(v30 + 8) = v26;
  *(v30 + 16) = v29;
  *(a3 + v12[8]) = 0;
  *(a3 + v12[9]) = 0;
  return result;
}

uint64_t sub_1ADF5DF58()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSetBoundaryIterator();
  v3 = v0 + v2[6];
  if (*(v3 + 16) != 1)
  {
    v6 = (v3 + 8);
    if (!*(v0 + v2[8]))
    {
      v6 = (v0 + v2[6]);
    }

    v5 = *v6;
    v4 = v0 + v2[7];
    v45 = (v4 + 8);
    v46 = (v4 + 16);
    if (*(v4 + 16))
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_16;
    }

LABEL_9:
    v8 = (v4 + 8);
    v9 = (v0 + v2[9]);
    LOBYTE(v10) = *v9;
    if (!*v9)
    {
      v8 = v4;
    }

    v7 = *v8;
    if (*v8 < v5)
    {
      if (*v9)
      {
        v39 = *v8;
        v43 = *v9;
        v11 = v0 + v2[5];
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
        sub_1AE23C0EC();
        sub_1ADF5E938();
        sub_1AE23D46C();
        v13 = 0;
        v14 = 0;
        v15 = *(v11 + v12);
        v16 = v47[0];
        if (v15 != v47[0])
        {
          v17 = sub_1AE23D51C();
          v13 = *v18;
          v14 = v18[1];
          v17(v47, 0);
          sub_1AE23D47C();
        }

        *v4 = v13;
        *v45 = v14;
        *v46 = v15 == v16;
        v5 = v39;
        LOBYTE(v10) = v43;
      }

      else
      {
        v5 = *v8;
      }

LABEL_27:
      *v9 = v10 ^ 1;
      return v5;
    }

LABEL_16:
    v19 = v2[8];
    v9 = (v0 + v19);
    v10 = *(v0 + v19);
    if (v10 == 1)
    {
      v40 = v7;
      v41 = (v0 + v19);
      v38 = v2;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
      sub_1AE23C0EC();
      sub_1ADF5E938();
      sub_1AE23D46C();
      v21 = *(v0 + v20);
      v22 = v47[0];
      v23 = 0uLL;
      if (v21 != v47[0])
      {
        v24 = sub_1AE23D51C();
        v37 = *v25;
        v24(v47, 0);
        sub_1AE23D47C();
        v23 = v37;
      }

      *v3 = v23;
      *(v3 + 16) = v21 == v22;
      v2 = v38;
      v7 = v40;
      v9 = v41;
      LOBYTE(v10) = 1;
    }

    if (v5 == v7)
    {
      v26 = v2[9];
      v27 = *(v0 + v26);
      if (v27 == 1)
      {
        v44 = v10;
        v42 = v9;
        v28 = v0 + v2[5];
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
        sub_1AE23C0EC();
        sub_1ADF5E938();
        sub_1AE23D46C();
        v30 = 0;
        v31 = 0;
        v32 = *(v28 + v29);
        v33 = v47[0];
        if (v32 != v47[0])
        {
          v34 = sub_1AE23D51C();
          v30 = *v35;
          v31 = v35[1];
          v34(v47, 0);
          sub_1AE23D47C();
        }

        *v4 = v30;
        *v45 = v31;
        *v46 = v32 == v33;
        v9 = v42;
        LOBYTE(v10) = v44;
      }

      *(v1 + v26) = v27 ^ 1;
    }

    goto LABEL_27;
  }

  v4 = v0 + v2[7];
  if ((*(v4 + 16) & 1) == 0)
  {
    v45 = (v4 + 8);
    v46 = (v4 + 16);
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1ADF5E2F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1ADF5DF58();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1ADF5E328(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AE23C12C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for IndexSetBoundaryIterator();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 16);
  v17(v11, v2, v4, v14);
  v62 = a1;
  v18 = a1;
  v19 = v12;
  (v17)(v8, v18, v4);
  v20 = v8;
  v21 = v16;
  sub_1ADF5DC6C(v11, v20, v16);
  v61 = 0;
  v63 = 0;
  v22 = &v16[*(v12 + 24)];
  v66 = v21 + 16;
  v67 = v12;
  v69 = v2;
  v70 = v21;
  v68 = v22;
  while (2)
  {
    v23 = 0;
    do
    {
      while (1)
      {
        if (v22[16] == 1)
        {
          v24 = v19[7];
          if (*(v66 + v24))
          {
            goto LABEL_40;
          }

          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = (v22 + 8);
          v24 = v19[7];
          if (!*(v21 + v19[8]))
          {
            v26 = v22;
          }

          v25 = *v26;
        }

        v27 = v21 + v24;
        if (*(v21 + v24 + 16))
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:
          v30 = (v21 + v19[8]);
          v31 = *v30;
          if (*v30)
          {
            v72 = (v21 + v19[8]);
            LODWORD(v71) = v23;
            v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
            sub_1AE23C0EC();
            sub_1ADF5E938();
            sub_1AE23D46C();
            v40 = *(v21 + v39);
            v41 = v73[0];
            v42 = 0uLL;
            if (v40 != v73[0])
            {
              v43 = sub_1AE23D51C();
              v65 = *v44;
              v43(v73, 0);
              sub_1AE23D47C();
              v42 = v65;
            }

            v22 = v68;
            *v68 = v42;
            v22[16] = v40 == v41;
            v19 = v67;
            v21 = v70;
            LOBYTE(v23) = v71;
            v30 = v72;
          }

          if (v25 == v28)
          {
            v45 = v23;
            v46 = v19[9];
            v23 = *(v21 + v46);
            if (v23 == 1)
            {
              v72 = v30;
              v47 = v21 + v19[5];
              v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
              v49 = sub_1AE23C0EC();
              sub_1ADF5E938();
              v71 = v49;
              sub_1AE23D46C();
              v50 = v48;
              v51 = *(v47 + v48);
              v52 = v73[0];
              v53 = 0uLL;
              if (v51 != v73[0])
              {
                *&v65 = v50;
                v54 = sub_1AE23D51C();
                v64 = *v55;
                v54(v73, 0);
                sub_1AE23D47C();
                v53 = v64;
              }

              *v27 = v53;
              *(v27 + 16) = v51 == v52;
              v19 = v67;
              v22 = v68;
              v21 = v70;
              v30 = v72;
            }

            *(v21 + v46) = v23 ^ 1;
            v28 = v25;
            LOBYTE(v23) = v45;
          }

          else
          {
            v28 = v25;
          }

          goto LABEL_29;
        }

        v29 = (v27 + 8);
        v30 = (v21 + v19[9]);
        v31 = *v30;
        if (!*v30)
        {
          v29 = v27;
        }

        v28 = *v29;
        if (*v29 >= v25)
        {
          goto LABEL_18;
        }

        if (*v30)
        {
          v72 = (v21 + v19[9]);
          LODWORD(v71) = v23;
          v32 = v21 + v19[5];
          v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
          sub_1AE23C0EC();
          sub_1ADF5E938();
          sub_1AE23D46C();
          v34 = *(v32 + v33);
          v35 = v73[0];
          v36 = 0uLL;
          if (v34 != v73[0])
          {
            v37 = sub_1AE23D51C();
            v65 = *v38;
            v37(v73, 0);
            sub_1AE23D47C();
            v36 = v65;
          }

          *v27 = v36;
          *(v27 + 16) = v34 == v35;
          v21 = v70;
          v22 = v68;
          LOBYTE(v23) = v71;
          v30 = v72;
        }

LABEL_29:
        *v30 = v31 ^ 1;
        result = sub_1AE23C0CC();
        if (v23)
        {
          break;
        }

        v23 = 0;
        if (result)
        {
          v23 = sub_1AE23C0CC();
          v57 = v63;
          if (v23)
          {
            v57 = v28;
          }

          v63 = v57;
        }
      }

      if ((result & 1) == 0)
      {
        break;
      }

      result = sub_1AE23C0CC();
      v23 = 1;
    }

    while ((result & 1) != 0);
    v58 = v28 - v63;
    if (!__OFSUB__(v28, v63))
    {
      v59 = __OFADD__(v61, v58);
      v61 += v58;
      if (!v59)
      {
        continue;
      }

      __break(1u);
LABEL_40:
      sub_1ADF5E8DC(v21);
      return v61;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for IndexSetBoundaryIterator()
{
  result = qword_1ED966550;
  if (!qword_1ED966550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADF5E8DC(uint64_t a1)
{
  v2 = type metadata accessor for IndexSetBoundaryIterator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ADF5E938()
{
  result = qword_1ED96A708;
  if (!qword_1ED96A708)
  {
    sub_1AE23C0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A708);
  }

  return result;
}

unint64_t sub_1ADF5E990()
{
  result = qword_1EB5B8C10;
  if (!qword_1EB5B8C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BA250, &unk_1AE251E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8C10);
  }

  return result;
}

uint64_t sub_1ADF5EA30(uint64_t *a1, void *a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v9 = *(v2 + 104);
  v10 = *(v2 + 16);
  v8 = *(v2 + 88);
  return sub_1ADF5D580(a1, a2, *(v2 + 40), *(v2 + 48));
}

uint64_t sub_1ADF5EA78(uint64_t *a1, void *a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v10 = *(v2 + 104);
  v11 = *(v2 + 16);
  v9 = *(v2 + 88);
  return sub_1ADF5D680(a1, a2, *(v2 + 40));
}

uint64_t sub_1ADF5EB00()
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = sub_1AE23BFCC();
  LOWORD(v22) = v0;
  BYTE2(v22) = v1;
  BYTE3(v22) = v2;
  BYTE4(v22) = v3;
  BYTE5(v22) = v4;
  BYTE6(v22) = v5;
  HIBYTE(v22) = v6;
  v19 = sub_1AE23BFCC();
  LOWORD(v20) = v7;
  BYTE2(v20) = v8;
  BYTE3(v20) = v9;
  BYTE4(v20) = v10;
  BYTE5(v20) = v11;
  BYTE6(v20) = v12;
  HIBYTE(v20) = v13;
  v14 = bswap64(v21);
  v15 = bswap64(v19);
  if (v14 == v15 && (v14 = bswap64(v22), v15 = bswap64(v20), v14 == v15))
  {
    v16 = 0;
  }

  else if (v14 < v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16 >> 31;
}

uint64_t sub_1ADF5EC9C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1AE23D5CC() + 36);
  result = sub_1AE23CC0C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1ADF5ED90()
{
  sub_1ADF5EE20();
  if (v0 <= 0x3F)
  {
    sub_1ADF5EE84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ADF5EE20()
{
  if (!qword_1ED9664A8)
  {
    sub_1AE23C0EC();
    sub_1ADF5E938();
    v0 = sub_1AE23DBBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9664A8);
    }
  }
}

void sub_1ADF5EE84()
{
  if (!qword_1EB5B8C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB4D0, qword_1AE24CCE0);
    v0 = sub_1AE23D7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5B8C00);
    }
  }
}

uint64_t (*sub_1ADF5EEE8(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for Replica() - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1ADDDE3A0(a2, v8, type metadata accessor for Replica);
  v6[5] = sub_1ADF71C9C(v6, v9);
  return sub_1ADDFDDC4;
}

uint64_t (*sub_1ADF5EFC4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF71D98(v6, a2, a3);
  return sub_1ADF771D4;
}

uint64_t (*sub_1ADF5F04C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF71E44(v6, a2, a3);
  return sub_1ADF771D4;
}

void (*sub_1ADF5F0D4(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = sub_1AE23BDDC();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1ADF71EF0(v4, v9);
  return sub_1ADF5F1EC;
}

void sub_1ADF5F1EC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*sub_1ADF5F264(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF720C4(v6, a2, a3);
  return sub_1ADF5F2EC;
}

uint64_t (*sub_1ADF5F2F0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF72174(v6, a2, a3);
  return sub_1ADF771D4;
}

uint64_t sub_1ADF5F378(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1ADDFF050(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1ADF71A24(&qword_1EB5BA0C8, &qword_1AE2418A8);
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_1AE23BDDC();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1ADF6E274(v6, v9);
  *v2 = v9;
  return v12;
}

void CRVersion.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC8];
  a1[1] = v1;
}

uint64_t CRVersion.hasDelta(from:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (sub_1ADF637A8(v1[1], a1[1]))
  {
    return 1;
  }

  return sub_1ADF637A8(v3, v2);
}

uint64_t sub_1ADF5F4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C12C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for Replica();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDDE3A0(a1, v18, type metadata accessor for Replica);
  v19 = sub_1ADF5EEE8(v27, v18);
  v21 = v20;
  if ((*(v5 + 48))(v20, 1, v4))
  {
    (v19)(v27, 0);
  }

  else
  {
    v26 = v19;
    v22 = a2;
    v23 = *(v5 + 16);
    v23(v11, v21, v4);
    v23(v8, v22, v4);
    sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50]);
    sub_1AE23D8AC();
    sub_1AE23D89C();
    (*(v5 + 8))(v14, v4);
    (v26)(v27, 0);
  }

  return sub_1ADDE4FF8(v18, type metadata accessor for Replica);
}

uint64_t sub_1ADF5F770@<X0>(int64_t isUniquelyReferenced_nonNull_native@<X0>, _BYTE *a2@<X8>)
{
  v125 = a2;
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v128 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v151 = &v123 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v152 = &v123 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v123 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v136 = &v123 - v17;
  v124 = type metadata accessor for Replica();
  v142 = *(v124 - 8);
  v18 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v129 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v138 = &v123 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v123 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v135 = &v123 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v141 = &v123 - v32;
  if (qword_1ED9670C0 != -1)
  {
    goto LABEL_111;
  }

  while (1)
  {
    v33 = word_1ED96F220;
    v34 = HIBYTE(word_1ED96F220);
    v35 = *(isUniquelyReferenced_nonNull_native + 64);
    v133 = isUniquelyReferenced_nonNull_native + 64;
    v36 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
    v37 = v36 < 64 ? ~(-1 << v36) : -1;
    v38 = v37 & v35;
    v131 = byte_1ED96F222;
    v157 = byte_1ED96F222;
    v39 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = (v36 + 63) >> 6;
    v147 = (v4 + 2);
    v155 = (v4 + 4);
    v134 = (v4 + 5);
    v146 = v4;
    v139 = (v4 + 1);
    v137 = v39;

    v40 = 0;
    v126 = v34;
    v132 = v34;
    v127 = v33;
    v41 = v33;
    v144 = v30;
    v145 = v24;
    v140 = isUniquelyReferenced_nonNull_native;
    v153 = v15;
LABEL_6:
    v130 = v41;
    v42 = v40;
    if (v38)
    {
      break;
    }

LABEL_8:
    if (isUniquelyReferenced_nonNull_native <= v42 + 1)
    {
      v44 = v42 + 1;
    }

    else
    {
      v44 = isUniquelyReferenced_nonNull_native;
    }

    v40 = v44 - 1;
    v15 = &unk_1AE242200;
    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= isUniquelyReferenced_nonNull_native)
      {
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v85 - 8) + 56))(v30, 1, 1, v85);
        v38 = 0;
        goto LABEL_17;
      }

      v38 = *(v133 + 8 * v43);
      ++v42;
      if (v38)
      {
        v4 = v3;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    swift_once();
  }

  while (1)
  {
    v4 = v3;
    v43 = v42;
LABEL_16:
    v45 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v46 = v45 | (v43 << 6);
    v47 = v137;
    v48 = v135;
    sub_1ADDDE3A0(*(v137 + 48) + *(v142 + 72) * v46, v135, type metadata accessor for Replica);
    v49 = v146;
    v50 = v136;
    (v146[2])(v136, *(v47 + 56) + v146[9] * v46, v4);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v52 = *(v51 + 48);
    v53 = v48;
    v30 = v144;
    sub_1ADDDE540(v53, v144, type metadata accessor for Replica);
    v54 = v49[4];
    v3 = v4;
    v54(&v30[v52], v50, v4);
    (*(*(v51 - 8) + 56))(v30, 0, 1, v51);
    v40 = v43;
    v24 = v145;
LABEL_17:
    v55 = v141;
    sub_1ADDD2198(v30, v141, &qword_1EB5BA458, &qword_1AE251E00);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
    {

      v121 = v157;
      v122 = v125;
      *v125 = v127;
      v122[1] = v126;
      v122[2] = v121;
      return result;
    }

    v57 = *(v56 + 48);
    sub_1ADDDE540(v55, v24, type metadata accessor for Replica);
    v15 = v153;
    v143 = *v155;
    v143(v153, v55 + v57, v3);
    v58 = *v154;
    if (!*(*v154 + 16))
    {
      break;
    }

    v59 = sub_1ADDD8A6C(v24);
    if ((v60 & 1) == 0)
    {
      break;
    }

    v149 = v40;
    v61 = v3;
    v3 = v146[9];
    v62 = v146[2];
    v4 = v154;
    v62(v150, *(v58 + 56) + v3 * v59, v61);
    v148 = sub_1AE23C04C();
    v63 = v152;
    sub_1AE23C06C();
    v30 = v138;
    sub_1ADDDE3A0(v24, v138, type metadata accessor for Replica);
    v64 = v63;
    v15 = v61;
    v62(v151, v64, v61);
    v65 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v4;
    v156 = *v4;
    v66 = v156;
    v68 = sub_1ADDD8A6C(v30);
    v69 = v66[2];
    v70 = (v67 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_108;
    }

    v72 = v67;
    if (v66[3] >= v71)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = v156;
        if (v67)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1ADDFB81C();
        isUniquelyReferenced_nonNull_native = v156;
        if (v72)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_1ADDDDED0(v71, isUniquelyReferenced_nonNull_native);
      v73 = sub_1ADDD8A6C(v30);
      if ((v72 & 1) != (v74 & 1))
      {
        goto LABEL_113;
      }

      v68 = v73;
      isUniquelyReferenced_nonNull_native = v156;
      if (v72)
      {
LABEL_28:
        v79 = *(isUniquelyReferenced_nonNull_native + 56) + v68 * v3;
        v3 = v15;
        (*v134)(v79, v151, v15);
        sub_1ADDE4FF8(v30, type metadata accessor for Replica);
        goto LABEL_29;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v68 >> 6) + 64) |= 1 << v68;
    sub_1ADDDE3A0(v30, *(isUniquelyReferenced_nonNull_native + 48) + *(v142 + 72) * v68, type metadata accessor for Replica);
    v75 = *(isUniquelyReferenced_nonNull_native + 56) + v68 * v3;
    v3 = v15;
    v143(v75, v151, v15);
    sub_1ADDE4FF8(v30, type metadata accessor for Replica);
    v76 = *(isUniquelyReferenced_nonNull_native + 16);
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_109;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v78;
LABEL_29:
    *v4 = isUniquelyReferenced_nonNull_native;
    v80 = v152;
    v81 = sub_1AE23C04C();
    v82 = v148;
    v40 = v149;
    v30 = v144;
    if (v148 != v81)
    {
      if (qword_1EB5B9528 != -1)
      {
        swift_once();
      }

      v98 = word_1EB5D74C0;
      v99 = HIBYTE(word_1EB5D74C0);
      v100 = byte_1EB5D74C2;
      v101 = *v139;
      (*v139)(v152, v3);
      v101(v150, v3);
      v101(v153, v3);
      v24 = v145;
      goto LABEL_80;
    }

    v83 = v153;
    if (sub_1AE23C04C() < v82)
    {
      v24 = v145;
      if (qword_1EB5B9908 != -1)
      {
        swift_once();
      }

      v102 = word_1EB5D7508;
      LODWORD(v148) = HIBYTE(word_1EB5D7508);
      v103 = byte_1EB5D750A;
      v104 = *v139;
      (*v139)(v152, v3);
      v104(v150, v3);
      v104(v153, v3);
      sub_1ADDE4FF8(v24, type metadata accessor for Replica);
      v41 = v130;
      if (v130 == v102)
      {
        v105 = v131;
        v106 = v132;
      }

      else
      {
        v105 = v131;
        v106 = v132;
        if (v102)
        {
          v107 = v148;
          if (v130 > 1)
          {
            if (v130 == 2)
            {
              v108 = v102 == 1;
LABEL_57:
              if (v108)
              {
                v41 = 3;
              }

              else
              {
                v41 = v102;
              }

              v127 = v41;
            }
          }

          else
          {
            v127 = v102;
            v41 = v102;
            if (v130)
            {
              v108 = v102 == 2;
              goto LABEL_57;
            }
          }

LABEL_61:
          if (v106 == v107 || !v107)
          {
            v109 = v106;
          }

          else if (v106 > 1)
          {
            v109 = v106;
            if (v106 == 2)
            {
              v110 = v107 == 1;
LABEL_69:
              if (v110)
              {
                v109 = 3;
              }

              else
              {
                v109 = v107;
              }

              v126 = v109;
            }
          }

          else
          {
            v126 = v107;
            v109 = v107;
            if (v106)
            {
              v110 = v107 == 2;
              goto LABEL_69;
            }
          }

          v111 = v105 | v103;
LABEL_105:
          v131 = v111;
          v157 = v111 & 1;
          v132 = v109;
          isUniquelyReferenced_nonNull_native = v140;
          goto LABEL_6;
        }
      }

      v107 = v148;
      goto LABEL_61;
    }

    v84 = *v139;
    (*v139)(v80, v3);
    v84(v150, v3);
    v84(v83, v3);
    v24 = v145;
    sub_1ADDE4FF8(v145, type metadata accessor for Replica);
    v42 = v40;
    isUniquelyReferenced_nonNull_native = v140;
    if (!v38)
    {
      goto LABEL_8;
    }
  }

  v86 = v129;
  sub_1ADDDE3A0(v24, v129, type metadata accessor for Replica);
  (*v147)(v128, v15, v3);
  v87 = v154;
  v88 = *v154;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v87;
  v156 = v89;
  v90 = sub_1ADDD8A6C(v86);
  v92 = v89[2];
  v93 = (v91 & 1) == 0;
  v77 = __OFADD__(v92, v93);
  v94 = v92 + v93;
  if (v77)
  {
    goto LABEL_110;
  }

  v95 = v91;
  if (v89[3] >= v94)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v112 = v90;
      sub_1ADDFB81C();
      v90 = v112;
      v97 = v156;
      if (v95)
      {
        goto LABEL_42;
      }

      goto LABEL_75;
    }

LABEL_41:
    v97 = v156;
    if (v95)
    {
LABEL_42:
      (v146[5])(v97[7] + v146[9] * v90, v128, v3);
      sub_1ADDE4FF8(v129, type metadata accessor for Replica);
LABEL_77:
      *v154 = v97;
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v98 = word_1EB5D750B;
      v99 = HIBYTE(word_1EB5D750B);
      v100 = byte_1EB5D750D;
      (*v139)(v15, v3);
LABEL_80:
      sub_1ADDE4FF8(v24, type metadata accessor for Replica);
      v41 = v130;
      if (v130 == v98)
      {
        v117 = v131;
        goto LABEL_92;
      }

      v117 = v131;
      if (v98)
      {
        if (v130 > 1)
        {
          if (v130 != 2)
          {
            goto LABEL_92;
          }

          v118 = v98 == 1;
        }

        else
        {
          v127 = v98;
          v41 = v98;
          if (!v130)
          {
            goto LABEL_92;
          }

          v118 = v98 == 2;
        }

        if (v118)
        {
          v41 = 3;
        }

        else
        {
          v41 = v98;
        }

        v127 = v41;
      }

LABEL_92:
      if (v132 == v99 || !v99)
      {
        v109 = v132;
      }

      else if (v132 > 1)
      {
        v109 = v132;
        if (v132 == 2)
        {
          v119 = v99 == 1;
          goto LABEL_100;
        }
      }

      else
      {
        v126 = v99;
        v109 = v99;
        if (v132)
        {
          v119 = v99 == 2;
LABEL_100:
          if (v119)
          {
            v109 = 3;
          }

          else
          {
            v109 = v99;
          }

          v126 = v109;
        }
      }

      v111 = v117 | v100;
      goto LABEL_105;
    }

LABEL_75:
    v97[(v90 >> 6) + 8] |= 1 << v90;
    v113 = v90;
    v114 = v129;
    sub_1ADDDE3A0(v129, v97[6] + *(v142 + 72) * v90, type metadata accessor for Replica);
    v143((v97[7] + v146[9] * v113), v128, v3);
    sub_1ADDE4FF8(v114, type metadata accessor for Replica);
    v115 = v97[2];
    v77 = __OFADD__(v115, 1);
    v116 = v115 + 1;
    if (v77)
    {
      __break(1u);
      goto LABEL_113;
    }

    v97[2] = v116;
    goto LABEL_77;
  }

  sub_1ADDDDED0(v94, isUniquelyReferenced_nonNull_native);
  v90 = sub_1ADDD8A6C(v129);
  if ((v95 & 1) == (v96 & 1))
  {
    goto LABEL_41;
  }

LABEL_113:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADF60694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v301 = a2;
  v275 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v282 = &v255 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v258 = &v255 - v9;
  v304 = sub_1AE23C12C();
  v10 = *(v304 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v266 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v271 = &v255 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v255 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v298 = &v255 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v264 = &v255 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v265 = &v255 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v256 = &v255 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v273 = &v255 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v274 = &v255 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v272 = &v255 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v262 = &v255 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v257 = &v255 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v259 = &v255 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v276 = &v255 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v269 = &v255 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v296 = &v255 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v297 = &v255 - v45;
  v255 = type metadata accessor for Replica();
  v294 = *(v255 - 8);
  v46 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v268 = &v255 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v287 = &v255 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v267 = &v255 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v255 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v293 = &v255 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v291 = &v255 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v284 = &v255 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v255 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v281 = &v255 - v66;
  v277 = v3;
  v67 = *v3 + 64;
  v68 = 1 << *(*v3 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(*v3 + 64);
  v71 = (v68 + 63) >> 6;
  v302 = (v10 + 16);
  v303 = (v10 + 32);
  v299 = (v10 + 8);
  v283 = (v10 + 56);
  v300 = v10;
  v261 = (v10 + 40);

  v73 = v71;
  LODWORD(v288) = 0;
  v290 = 0;
  v270 = 0;
  v74 = 0;
  v279 = v72;
  v292 = v72;
  v289 = v17;
  v278 = a3;
  v280 = v54;
  v295 = v64;
  v285 = v71;
  v286 = v67;
LABEL_4:
  v75 = v281;
  while (1)
  {
    if (v70)
    {
      v76 = v74;
      goto LABEL_16;
    }

    v77 = v73 <= v74 + 1 ? v74 + 1 : v73;
    v78 = v77 - 1;
    do
    {
      v76 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
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
        result = sub_1AE23E27C();
        __break(1u);
        return result;
      }

      if (v76 >= v73)
      {
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v104 - 8) + 56))(v64, 1, 1, v104);
        v70 = 0;
        v74 = v78;
        goto LABEL_17;
      }

      v70 = *(v67 + 8 * v76);
      ++v74;
    }

    while (!v70);
    v74 = v76;
LABEL_16:
    v79 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v80 = v79 | (v76 << 6);
    v81 = v279;
    v82 = v293;
    sub_1ADDDE3A0(*(v279 + 6) + *(v294 + 72) * v80, v293, type metadata accessor for Replica);
    v83 = v300;
    v84 = v297;
    v85 = v304;
    (*(v300 + 16))(v297, *(v81 + 7) + *(v300 + 72) * v80, v304);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v87 = *(v86 + 48);
    v88 = v82;
    v89 = v295;
    sub_1ADDDE540(v88, v295, type metadata accessor for Replica);
    v90 = v84;
    v64 = v89;
    (*(v83 + 32))(&v89[v87], v90, v85);
    (*(*(v86 - 8) + 56))(v89, 0, 1, v86);
    a3 = v278;
    v54 = v280;
    v75 = v281;
LABEL_17:
    sub_1ADDD2198(v64, v75, &qword_1EB5BA458, &qword_1AE251E00);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v92 = *(v91 - 8);
    v93 = *(v92 + 48);
    if (v93(v75, 1, v91) == 1)
    {
      break;
    }

    v94 = *(v91 + 48);
    sub_1ADDDE540(v75, v54, type metadata accessor for Replica);
    v95 = *v303;
    (*v303)(v296, v75 + v94, v304);
    v67 = v286;
    if (*(v301 + 16))
    {
      v96 = sub_1ADDD8A6C(v54);
      if (v97)
      {
        v98 = *(v300 + 72);
        v99 = *(v300 + 16);
        v99(v276, *(v301 + 56) + v98 * v96, v304);
        if (!*(a3 + 16) || (v100 = sub_1ADDD8A6C(v54), (v101 & 1) == 0))
        {
          (*v299)(v276, v304);
          goto LABEL_23;
        }

        v114 = v259;
        v115 = v304;
        v99(v259, *(a3 + 56) + v100 * v98, v304);
        v99(v297, v114, v115);
        v99(v274, v114, v115);
        v99(v273, v276, v115);
        v116 = sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50]);
        v117 = v272;
        v260 = v116;
        sub_1AE23D8AC();
        v118 = v297;
        sub_1AE23D88C();
        v263 = *v299;
        v263(v117, v115);
        v119 = v118;
        v120 = v296;
        v99(v119, v296, v115);
        v99(v274, v120, v115);
        v99(v273, v262, v115);
        sub_1AE23D8AC();
        sub_1AE23D88C();
        v121 = v115;
        v54 = v280;
        v263(v117, v121);
        v122 = v275;
        if (*(v275 + 16) && (v123 = sub_1ADDD8A6C(v54), (v124 & 1) != 0))
        {
          v125 = v256;
          v126 = v304;
          v99(v256, *(v122 + 56) + v123 * v98, v304);
          v127 = v276;
          v99(v297, v276, v126);
          v99(v274, v127, v126);
          v99(v273, v125, v126);
          v128 = v272;
          sub_1AE23D8AC();
          sub_1AE23D88C();
          v129 = v128;
          v130 = v257;
          v131 = v263;
          v263(v129, v126);
          v132 = v126;
          v54 = v280;
          v131(v256, v132);
        }

        else
        {
          v130 = v257;
          (v99)(v257);
        }

        if (v288)
        {
          LODWORD(v288) = 1;
        }

        else if (sub_1AE23C0AC())
        {
          LODWORD(v288) = 0;
        }

        else
        {
          LODWORD(v288) = sub_1AE23D8CC() ^ 1;
          v290 |= v288;
        }

        v260 = v98;
        v133 = v130;
        if ((sub_1AE23C0AC() & 1) == 0)
        {
          sub_1AE23C0FC();
          v270 = 1;
        }

        v134 = v304;
        v135 = v263;
        v263(v262, v304);
        v135(v133, v134);
        v135(v259, v134);
        v135(v276, v134);
        v112 = v269;
LABEL_39:
        v136 = v112;
        if (sub_1AE23C04C() < 1)
        {
          v152 = sub_1ADDD8A6C(v54);
          v153 = v260;
          if (v154)
          {
            v155 = v152;
            v156 = v277;
            v157 = *v277;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v159 = *v156;
            v305 = *v156;
            v160 = v258;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1ADDFB81C();
              v159 = v305;
            }

            sub_1ADDE4FF8(*(v159 + 48) + *(v294 + 72) * v155, type metadata accessor for Replica);
            v161 = v304;
            v95(v160, *(v159 + 56) + v153 * v155, v304);
            sub_1ADDF9CEC(v155, v159);
            v162 = v160;
            v163 = v263;
            v263(v269, v161);
            v163(v296, v161);
            v54 = v280;
            sub_1ADDE4FF8(v280, type metadata accessor for Replica);
            v164 = 0;
            v292 = v159;
            *v277 = v159;
          }

          else
          {
            v174 = v112;
            v175 = v304;
            v176 = v263;
            v263(v174, v304);
            v176(v296, v175);
            sub_1ADDE4FF8(v54, type metadata accessor for Replica);
            v164 = 1;
            v162 = v258;
          }

          (*v283)(v162, v164, 1, v304);
          sub_1ADDCEDE0(v162, &qword_1EB5BB780, &qword_1AE24CD18);
          goto LABEL_57;
        }

        v137 = v54;
        v138 = v267;
        sub_1ADDDE3A0(v137, v267, type metadata accessor for Replica);
        v99(v264, v112, v304);
        v139 = v277;
        v140 = *v277;
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v142 = *v139;
        v305 = v142;
        v143 = sub_1ADDD8A6C(v138);
        v145 = v142[2];
        v146 = (v144 & 1) == 0;
        v147 = __OFADD__(v145, v146);
        v148 = v145 + v146;
        v149 = v260;
        if (v147)
        {
          goto LABEL_105;
        }

        v150 = v144;
        if (v142[3] >= v148)
        {
          if ((v141 & 1) == 0)
          {
            v177 = v143;
            sub_1ADDFB81C();
            v143 = v177;
          }
        }

        else
        {
          sub_1ADDDDED0(v148, v141);
          v143 = sub_1ADDD8A6C(v267);
          if ((v150 & 1) != (v151 & 1))
          {
            goto LABEL_108;
          }
        }

        v165 = v305;
        v292 = v305;
        if (v150)
        {
          v166 = v304;
          (*v261)(v305[7] + v149 * v143, v264, v304);
          sub_1ADDE4FF8(v267, type metadata accessor for Replica);
          v167 = v263;
          v263(v136, v166);
          v167(v296, v166);
          v54 = v280;
          sub_1ADDE4FF8(v280, type metadata accessor for Replica);
          goto LABEL_54;
        }

        v305[(v143 >> 6) + 8] |= 1 << v143;
        v168 = v143;
        v169 = v267;
        sub_1ADDDE3A0(v267, v165[6] + *(v294 + 72) * v143, type metadata accessor for Replica);
        v170 = v304;
        v95((v165[7] + v149 * v168), v264, v304);
        sub_1ADDE4FF8(v169, type metadata accessor for Replica);
        v171 = v263;
        v263(v269, v170);
        v171(v296, v170);
        v54 = v280;
        sub_1ADDE4FF8(v280, type metadata accessor for Replica);
        v172 = v165[2];
        v147 = __OFADD__(v172, 1);
        v173 = v172 + 1;
        if (v147)
        {
          goto LABEL_107;
        }

        v165[2] = v173;
LABEL_54:
        *v277 = v165;
LABEL_57:
        a3 = v278;
        v64 = v295;
        v73 = v285;
        goto LABEL_4;
      }
    }

LABEL_23:
    if (*(a3 + 16))
    {
      v102 = sub_1ADDD8A6C(v54);
      if (v103)
      {
        v105 = *(a3 + 56);
        v260 = *(v300 + 72);
        v99 = *(v300 + 16);
        v106 = v265;
        v107 = v304;
        v99(v265, v105 + v260 * v102, v304);
        v108 = v296;
        v99(v297, v296, v107);
        v99(v274, v108, v107);
        v99(v273, v106, v107);
        sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50]);
        v109 = v272;
        sub_1AE23D8AC();
        v110 = v269;
        sub_1AE23D88C();
        v111 = *(v300 + 8);
        v112 = v110;
        v111(v109, v107);
        LODWORD(v109) = sub_1AE23C0AC();
        v113 = v107;
        v54 = v280;
        v263 = v111;
        v111(v265, v113);
        LODWORD(v288) = v109 ^ 1 | v288;
        v290 |= v109 ^ 1;
        goto LABEL_39;
      }
    }

    (*v299)(v296, v304);
    sub_1ADDE4FF8(v54, type metadata accessor for Replica);
    LODWORD(v288) = 1;
    v290 = 1;
    v64 = v295;
    v73 = v285;
  }

  v296 = v93;

  v178 = *(v301 + 64);
  v285 = v301 + 64;
  v179 = 1 << *(v301 + 32);
  v180 = -1;
  if (v179 < 64)
  {
    v180 = ~(-1 << v179);
  }

  v181 = v180 & v178;
  v182 = (v179 + 63) >> 6;
  v295 = (v92 + 56);

  v183 = 0;
  v184 = v287;
  v185 = v292;
  v281 = v182;
LABEL_61:
  v292 = v185;
  if (!v181)
  {
LABEL_64:
    if (v182 <= v183 + 1)
    {
      v190 = v183 + 1;
    }

    else
    {
      v190 = v182;
    }

    v191 = v190 - 1;
    v192 = v291;
    while (1)
    {
      v193 = v183 + 1;
      if (__OFADD__(v183, 1))
      {
        goto LABEL_103;
      }

      if (v193 >= v182)
      {
        break;
      }

      v181 = *(v285 + 8 * v193);
      ++v183;
      if (v181)
      {
        goto LABEL_74;
      }
    }

    v181 = 0;
    v194 = 1;
    goto LABEL_75;
  }

  while (1)
  {
    v193 = v183;
LABEL_74:
    v195 = __clz(__rbit64(v181));
    v181 &= v181 - 1;
    v196 = v195 | (v193 << 6);
    v197 = v301;
    v198 = v293;
    sub_1ADDDE3A0(*(v301 + 48) + *(v294 + 72) * v196, v293, type metadata accessor for Replica);
    v199 = *(v197 + 56);
    v200 = v300;
    v201 = v297;
    v202 = v304;
    (*(v300 + 16))(v297, v199 + *(v300 + 72) * v196, v304);
    v203 = *(v91 + 48);
    v204 = v198;
    v192 = v291;
    sub_1ADDDE540(v204, v291, type metadata accessor for Replica);
    (*(v200 + 32))(v192 + v203, v201, v202);
    v194 = 0;
    v191 = v193;
    v184 = v287;
    v185 = v292;
LABEL_75:
    (*v295)(v192, v194, 1, v91);
    v205 = v284;
    sub_1ADDD2198(v192, v284, &qword_1EB5BA458, &qword_1AE251E00);
    if ((v296)(v205, 1, v91) == 1)
    {
      break;
    }

    v206 = *(v91 + 48);
    sub_1ADDDE540(v205, v184, type metadata accessor for Replica);
    v207 = *v303;
    (*v303)(v298, v205 + v206, v304);
    if (*(v185 + 2))
    {
      v208 = sub_1ADDD8A6C(v184);
      if (v209)
      {
        v186 = v300;
        v187 = v282;
        v188 = v191;
        v189 = v304;
        (*(v300 + 16))(v282, *(v185 + 7) + *(v300 + 72) * v208, v304);
        (*(v186 + 56))(v187, 0, 1, v189);
        (*(v186 + 8))(v298, v189);
        sub_1ADDE4FF8(v184, type metadata accessor for Replica);
        sub_1ADDCEDE0(v187, &qword_1EB5BB780, &qword_1AE24CD18);
        v183 = v188;
        if (!v181)
        {
          goto LABEL_64;
        }

        continue;
      }
    }

    v288 = v207;
    v210 = v282;
    (*v283)(v282, 1, 1, v304);
    sub_1ADDCEDE0(v210, &qword_1EB5BB780, &qword_1AE24CD18);
    v211 = v275;
    v212 = v289;
    if (*(v275 + 16))
    {
      v213 = sub_1ADDD8A6C(v184);
      v214 = *v302;
      if (v215)
      {
        v216 = *(v211 + 56);
        v286 = v191;
        v217 = v304;
        v218 = v216 + *(v300 + 72) * v213;
        v219 = v271;
        v214(v271);
        v220 = v298;
        (v214)(v297, v298, v217);
        (v214)(v274, v220, v217);
        (v214)(v273, v219, v217);
        sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50]);
        v221 = v272;
        v184 = v287;
        sub_1AE23D8AC();
        sub_1AE23D88C();
        v222 = *(v300 + 8);
        v222(v221, v217);
        v223 = v219;
        v182 = v281;
        v212 = v289;
        v224 = v217;
        v191 = v286;
        v222(v223, v224);
        v225 = v277;
        goto LABEL_83;
      }
    }

    else
    {
      v214 = *v302;
    }

    v225 = v277;
    (v214)(v212, v298, v304);
LABEL_83:
    if ((sub_1AE23C0AC() & 1) == 0)
    {
      v228 = v184;
      v229 = v268;
      sub_1ADDDE3A0(v228, v268, type metadata accessor for Replica);
      (v214)(v266, v212, v304);
      v230 = *v225;
      v231 = swift_isUniquelyReferenced_nonNull_native();
      v305 = *v225;
      v232 = v305;
      v234 = sub_1ADDD8A6C(v229);
      v235 = v232[2];
      v236 = (v233 & 1) == 0;
      v237 = v235 + v236;
      if (__OFADD__(v235, v236))
      {
        goto LABEL_104;
      }

      if (v232[3] >= v237)
      {
        v184 = v287;
        if ((v231 & 1) == 0)
        {
          v239 = v233;
          sub_1ADDFB81C();
          goto LABEL_90;
        }
      }

      else
      {
        v238 = v231;
        v239 = v233;
        sub_1ADDDDED0(v237, v238);
        v240 = sub_1ADDD8A6C(v268);
        v184 = v287;
        if ((v239 & 1) != (v241 & 1))
        {
          goto LABEL_108;
        }

        v234 = v240;
LABEL_90:
        v233 = v239;
      }

      v286 = v191;
      v242 = v305;
      if (v233)
      {
        v243 = v300;
        v244 = v304;
        (*(v300 + 40))(v305[7] + *(v300 + 72) * v234, v266, v304);
        v292 = type metadata accessor for Replica;
        sub_1ADDE4FF8(v268, type metadata accessor for Replica);
        v245 = *(v243 + 8);
        v245(v212, v244);
        v245(v298, v244);
        v185 = v242;
        sub_1ADDE4FF8(v184, v292);
      }

      else
      {
        v305[(v234 >> 6) + 8] |= 1 << v234;
        v246 = *(v242 + 6) + *(v294 + 72) * v234;
        v292 = v242;
        v247 = v268;
        sub_1ADDDE3A0(v268, v246, type metadata accessor for Replica);
        v248 = v300;
        v249 = v304;
        v288((*(v292 + 7) + *(v300 + 72) * v234), v266, v304);
        sub_1ADDE4FF8(v247, type metadata accessor for Replica);
        v250 = *(v248 + 8);
        v250(v289, v249);
        v250(v298, v249);
        v185 = v292;
        sub_1ADDE4FF8(v184, type metadata accessor for Replica);
        v251 = *(v185 + 2);
        v147 = __OFADD__(v251, 1);
        v252 = v251 + 1;
        if (v147)
        {
          goto LABEL_106;
        }

        *(v185 + 2) = v252;
      }

      *v277 = v185;
      v270 = 1;
      v183 = v286;
      goto LABEL_61;
    }

    v226 = *v299;
    v227 = v304;
    (*v299)(v212, v304);
    v226(v298, v227);
    sub_1ADDE4FF8(v184, type metadata accessor for Replica);
    v183 = v191;
    v185 = v292;
    if (!v181)
    {
      goto LABEL_64;
    }
  }

  if (v290)
  {
    v253 = 256;
  }

  else
  {
    v253 = 0;
  }

  return v253 & 0xFFFFFFFE | v270 & 1;
}

uint64_t sub_1ADF62304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = *MEMORY[0x1E69E9840];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  v4 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v129 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v104 - v13;
  v14 = type metadata accessor for Timestamp(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v104 - v19;
  v133 = sub_1AE23C12C();
  v21 = *(v133 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v104 - v25;
  v106 = type metadata accessor for Replica();
  v111 = *(v106 - 8);
  v26 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v121 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v104 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v120 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v104 - v35;
  v38 = *(v15 + 56);
  v37 = v15 + 56;
  v132 = a2;
  v124 = v38;
  (v38)(a2, 1, 1, v14, v34);
  v39 = *(a1 + 64);
  v119 = a1 + 64;
  v40 = 1 << *(a1 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v105 = (v40 + 63) >> 6;
  v109 = v21 + 16;
  v128 = (v21 + 32);
  v125 = v37;
  v122 = (v37 - 8);
  v43 = v20;
  v113 = v21;
  v116 = (v21 + 8);
  v114 = a1;

  v44 = 0;
  v127 = v36;
  v108 = v9;
  v131 = v43;
  v117 = v14;
  v45 = v119;
  if (!v42)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v50 = v44;
LABEL_16:
    v52 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v53 = v52 | (v50 << 6);
    v54 = v114;
    v55 = v110;
    sub_1ADDDE3A0(*(v114 + 48) + *(v111 + 72) * v53, v110, type metadata accessor for Replica);
    v56 = v113;
    v57 = v112;
    v58 = v133;
    (*(v113 + 16))(v112, *(v54 + 56) + *(v113 + 72) * v53, v133);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v60 = *(v59 + 48);
    v61 = v55;
    v49 = v120;
    sub_1ADDDE540(v61, v120, type metadata accessor for Replica);
    (*(v56 + 32))(v49 + v60, v57, v58);
    (*(*(v59 - 8) + 56))(v49, 0, 1, v59);
    v48 = v121;
    v36 = v127;
    v43 = v131;
LABEL_17:
    sub_1ADDD2198(v49, v36, &qword_1EB5BA458, &qword_1AE251E00);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v62 - 8) + 48))(v36, 1, v62) == 1)
    {
      break;
    }

    (*v128)(v130, &v36[*(v62 + 48)], v133);
    sub_1ADDDE540(v36, v48, type metadata accessor for Replica);
    v63 = sub_1AE23C03C();
    if (v64)
    {
      goto LABEL_51;
    }

    v65 = v63;
    sub_1ADDDE540(v48, v43, type metadata accessor for Replica);
    v66 = v117;
    v67 = *(v117 + 20);
    v126 = v65;
    *(v43 + v67) = v65;
    v68 = v123;
    v124(v123, 1, 1, v66);
    v69 = *(v118 + 48);
    v70 = v129;
    sub_1ADDCEE40(v132, v129, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEE40(v68, v70 + v69, &qword_1EB5BA480, &qword_1AE25AAE0);
    v71 = *v122;
    if ((*v122)(v70, 1, v66) == 1)
    {
      sub_1ADDCEDE0(v68, &qword_1EB5BA480, &qword_1AE25AAE0);
      v72 = v71;
      if (v71(v70 + v69, 1, v66) != 1)
      {
        goto LABEL_25;
      }

      sub_1ADDCEDE0(v129, &qword_1EB5BA480, &qword_1AE25AAE0);
      v36 = v127;
LABEL_22:
      (*v116)(v130, v133);
LABEL_41:
      v101 = v132;
      sub_1ADDCEDE0(v132, &qword_1EB5BA480, &qword_1AE25AAE0);
      v43 = v131;
      sub_1ADDDE540(v131, v101, type metadata accessor for Timestamp);
      v124(v101, 0, 1, v66);
      v45 = v119;
      if (!v42)
      {
LABEL_6:
        if (v105 <= v44 + 1)
        {
          v46 = v44 + 1;
        }

        else
        {
          v46 = v105;
        }

        v47 = v46 - 1;
        v49 = v120;
        v48 = v121;
        while (1)
        {
          v50 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v50 >= v105)
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
            v42 = 0;
            v44 = v47;
            goto LABEL_17;
          }

          v42 = *(v45 + 8 * v50);
          ++v44;
          if (v42)
          {
            v44 = v50;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }
    }

    else
    {
      v73 = v107;
      sub_1ADDCEE40(v70, v107, &qword_1EB5BA480, &qword_1AE25AAE0);
      v115 = v71;
      if (v71(v70 + v69, 1, v66) == 1)
      {
        sub_1ADDCEDE0(v123, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDE4FF8(v73, type metadata accessor for Timestamp);
        v72 = v115;
LABEL_25:
        sub_1ADDCEDE0(v129, &qword_1EB5BB7C0, &unk_1AE2514A0);
        v74 = v108;
        v36 = v127;
        goto LABEL_31;
      }

      v75 = v104;
      sub_1ADDDE540(v70 + v69, v104, type metadata accessor for Timestamp);
      if (*(v73 + *(v66 + 20)) == *(v75 + *(v66 + 20)) && *(v73 + *(v106 + 20)) == *(v75 + *(v106 + 20)))
      {
        v76 = sub_1AE23BF8C();
        sub_1ADDE4FF8(v75, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v123, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDE4FF8(v73, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v129, &qword_1EB5BA480, &qword_1AE25AAE0);
        v74 = v108;
        v36 = v127;
        v72 = v115;
        if (v76)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1ADDE4FF8(v75, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v123, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDE4FF8(v73, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v129, &qword_1EB5BA480, &qword_1AE25AAE0);
        v74 = v108;
        v36 = v127;
        v72 = v115;
      }

LABEL_31:
      sub_1ADDCEE40(v132, v74, &qword_1EB5BA480, &qword_1AE25AAE0);
      if (v72(v74, 1, v66) == 1)
      {
        goto LABEL_52;
      }

      v77 = v66;
      v78 = *(v74 + *(v66 + 20));
      v79 = v126;
      if (v78 == v126)
      {
        v80 = *(v106 + 20);
        v81 = *(v74 + v80);
        v82 = *(v131 + v80);
        if (v81 == v82)
        {
          v136 = sub_1AE23BFCC();
          LOWORD(v137) = v83;
          BYTE2(v137) = v84;
          BYTE3(v137) = v85;
          BYTE4(v137) = v86;
          BYTE5(v137) = v87;
          BYTE6(v137) = v88;
          HIBYTE(v137) = v89;
          v134 = sub_1AE23BFCC();
          LOWORD(v135) = v90;
          BYTE2(v135) = v91;
          BYTE3(v135) = v92;
          BYTE4(v135) = v93;
          BYTE5(v135) = v94;
          BYTE6(v135) = v95;
          HIBYTE(v135) = v96;
          v97 = bswap64(v136);
          v98 = bswap64(v134);
          if (v97 == v98)
          {
            v97 = bswap64(v137);
            v98 = bswap64(v135);
            v66 = v77;
            if (v97 == v98)
            {
              v99 = 0;
              goto LABEL_47;
            }
          }

          else
          {
            v66 = v77;
          }

          if (v97 < v98)
          {
            v99 = -1;
          }

          else
          {
            v99 = 1;
          }

LABEL_47:
          (*v116)(v130, v133);
          sub_1ADDE4FF8(v74, type metadata accessor for Timestamp);
          if (v99 < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
        }

        (*v116)(v130, v133);
        sub_1ADDE4FF8(v74, type metadata accessor for Timestamp);
        v100 = v81 < v82;
      }

      else
      {
        (*v116)(v130, v133);
        sub_1ADDE4FF8(v74, type metadata accessor for Timestamp);
        v100 = v78 < v79;
      }

      v66 = v77;
      if (v100)
      {
        goto LABEL_41;
      }

LABEL_5:
      v43 = v131;
      sub_1ADDE4FF8(v131, type metadata accessor for Timestamp);
      v45 = v119;
      if (!v42)
      {
        goto LABEL_6;
      }
    }
  }

  v103 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADF63098(uint64_t a1, uint64_t a2)
{
  v79 = sub_1AE23C12C();
  v73 = *(v79 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v61 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v61 - v13;
  v14 = type metadata accessor for Replica();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v61 - v23;
  v78 = a2;
  if (*(a2 + 16) && *(a1 + 16))
  {
    v24 = *(a1 + 64);
    v65 = a1 + 64;
    v66 = a1;
    v25 = 1 << *(a1 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v64 = (v25 + 63) >> 6;
    v77 = (v73 + 32);
    v69 = (v73 + 8);
    v70 = v73 + 16;

    v29 = 0;
    while (v27)
    {
      v30 = v29;
LABEL_17:
      v34 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v35 = v34 | (v30 << 6);
      v36 = v66;
      v37 = v67;
      sub_1ADDDE3A0(*(v66 + 48) + *(v68 + 72) * v35, v67, type metadata accessor for Replica);
      v38 = v73;
      v39 = v71;
      v40 = v79;
      (*(v73 + 16))(v71, *(v36 + 56) + *(v73 + 72) * v35, v79);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v42 = *(v41 + 48);
      v33 = v72;
      sub_1ADDDE540(v37, v72, type metadata accessor for Replica);
      (*(v38 + 32))(v33 + v42, v39, v40);
      (*(*(v41 - 8) + 56))(v33, 0, 1, v41);
LABEL_18:
      v43 = v76;
      sub_1ADDD2198(v33, v76, &qword_1EB5BA458, &qword_1AE251E00);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
      v46 = v45 == 1;
      if (v45 == 1)
      {
LABEL_25:

        return v46;
      }

      v47 = v76;
      v48 = *v77;
      (*v77)(v75, v76 + *(v44 + 48), v79);
      v49 = v74;
      sub_1ADDDE540(v47, v74, type metadata accessor for Replica);
      if (*(v78 + 16) && (v50 = sub_1ADDD8A6C(v49), v49 = v74, (v51 & 1) != 0))
      {
        v52 = *(v73 + 16);
        v53 = v74;
        v54 = v62;
        v55 = v79;
        v52(v62, *(v78 + 56) + *(v73 + 72) * v50, v79);
        sub_1ADDE4FF8(v53, type metadata accessor for Replica);
        v56 = v71;
        v57 = v61;
        v48(v61, v54, v55);
        v52(v63, v57, v55);
        v58 = v75;
        sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50]);
        sub_1AE23D88C();
        LOBYTE(v54) = sub_1AE23D8BC();
        v59 = *(v73 + 8);
        v59(v56, v55);
        v59(v57, v55);
        result = (v59)(v58, v55);
        if ((v54 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1ADDE4FF8(v49, type metadata accessor for Replica);
        result = (*v69)(v75, v79);
      }
    }

    if (v64 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    else
    {
      v31 = v64;
    }

    v32 = v31 - 1;
    v33 = v72;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v64)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v60 - 8) + 56))(v33, 1, 1, v60);
        v27 = 0;
        v29 = v32;
        goto LABEL_18;
      }

      v27 = *(v65 + 8 * v30);
      ++v29;
      if (v27)
      {
        v29 = v30;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_1ADF637A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C12C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v56 - v13;
  v14 = type metadata accessor for Replica();
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = *(a1 + 16);
  v71 = a2;
  if (*(a2 + 16) < v25)
  {
    return 1;
  }

  v65 = v17;
  v66 = &v56 - v23;
  v26 = *(a1 + 64);
  v57 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v56 = (v27 + 63) >> 6;
  v69 = v24;
  v70 = v5 + 16;
  v73 = (v5 + 32);
  v64 = (v5 + 8);
  v60 = a1;

  v31 = 0;
  v58 = v4;
  v59 = v5;
  while (v29)
  {
    v32 = v31;
LABEL_15:
    v36 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v37 = v36 | (v32 << 6);
    v38 = v60;
    v39 = v61;
    sub_1ADDDE3A0(*(v60 + 48) + *(v62 + 72) * v37, v61, type metadata accessor for Replica);
    v4 = v58;
    v5 = v59;
    v40 = v63;
    (*(v59 + 16))(v63, *(v38 + 56) + *(v59 + 72) * v37, v58);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v42 = *(v41 + 48);
    v43 = v39;
    v35 = v69;
    sub_1ADDDE540(v43, v69, type metadata accessor for Replica);
    (*(v5 + 32))(v35 + v42, v40, v4);
    (*(*(v41 - 8) + 56))(v35, 0, 1, v41);
LABEL_16:
    v44 = v66;
    sub_1ADDD2198(v35, v66, &qword_1EB5BA458, &qword_1AE251E00);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {

      return 0;
    }

    v46 = *v73;
    (*v73)(v72, v44 + *(v45 + 48), v4);
    v47 = v65;
    sub_1ADDDE540(v44, v65, type metadata accessor for Replica);
    if (!*(v71 + 16) || (v48 = sub_1ADDD8A6C(v47), (v49 & 1) == 0))
    {

      sub_1ADDE4FF8(v47, type metadata accessor for Replica);
      (*v64)(v72, v4);
      return 1;
    }

    v50 = v68;
    (*(v5 + 16))(v68, *(v71 + 56) + *(v5 + 72) * v48, v4);
    sub_1ADDE4FF8(v47, type metadata accessor for Replica);
    v51 = v67;
    v46(v67, v50, v4);
    v52 = v72;
    v53 = sub_1AE23C0BC();
    v54 = *(v5 + 8);
    v54(v51, v4);
    result = (v54)(v52, v4);
    if ((v53 & 1) == 0)
    {

      return 1;
    }
  }

  if (v56 <= v31 + 1)
  {
    v33 = v31 + 1;
  }

  else
  {
    v33 = v56;
  }

  v34 = v33 - 1;
  v35 = v69;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v56)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v55 - 8) + 56))(v35, 1, 1, v55);
      v29 = 0;
      v31 = v34;
      goto LABEL_16;
    }

    v29 = *(v57 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1ADF63DF4(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v63[-v14];
  v15 = type metadata accessor for Replica();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v63[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v79 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v63[-v25];
  v26 = *(a1 + 64);
  v69 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v68 = (v27 + 63) >> 6;
  v75 = v4 + 16;
  v76 = v4;
  v83 = (v4 + 32);
  v80 = (v4 + 8);
  v77 = a1;

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v74 = v12;
  v71 = v18;
  v65 = v9;
  v85 = v3;
LABEL_4:
  v64 = v32;
  v81 = v31;
LABEL_5:
  v67 = v30;
  v35 = v78;
  v34 = v79;
  while (1)
  {
    LODWORD(v84) = v30;
    if (!v29)
    {
      break;
    }

    v36 = v33;
LABEL_17:
    v40 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v41 = v40 | (v36 << 6);
    v42 = v77;
    v43 = v70;
    sub_1ADDDE3A0(*(v77 + 48) + *(v72 + 72) * v41, v70, type metadata accessor for Replica);
    v44 = v76;
    v45 = v73;
    v46 = v85;
    (*(v76 + 16))(v73, *(v42 + 56) + *(v76 + 72) * v41, v85);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v48 = *(v47 + 48);
    v49 = v43;
    v34 = v79;
    sub_1ADDDE540(v49, v79, type metadata accessor for Replica);
    (*(v44 + 32))(&v34[v48], v45, v46);
    (*(*(v47 - 8) + 56))(v34, 0, 1, v47);
    v12 = v74;
    v18 = v71;
    v35 = v78;
LABEL_18:
    sub_1ADDD2198(v34, v35, &qword_1EB5BA458, &qword_1AE251E00);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v50 - 8) + 48))(v35, 1, v50) == 1)
    {

      if (v67)
      {
        v61 = v81;
        v62 = 256;
      }

      else
      {
        v62 = 0;
        v61 = v81;
      }

      return (v62 | v61 & 1u);
    }

    v51 = *v83;
    (*v83)(v12, v35 + *(v50 + 48), v85);
    sub_1ADDDE540(v35, v18, type metadata accessor for Replica);
    if (*(v82 + 16))
    {
      v52 = sub_1ADDD8A6C(v18);
      if (v53)
      {
        v55 = v66;
        v56 = v85;
        (*(v76 + 16))(v66, *(v82 + 56) + *(v76 + 72) * v52, v85);
        sub_1ADDE4FF8(v18, type metadata accessor for Replica);
        v57 = v65;
        v51(v65, v55, v56);
        v58 = sub_1ADF5E328(v12);
        if (v81)
        {
          v59 = *v80;
          (*v80)(v57, v56);
          v59(v12, v56);
          goto LABEL_26;
        }

        v84 = sub_1AE23C04C();
        v60 = *v80;
        (*v80)(v57, v56);
        v60(v12, v56);
        if (v58 < v84)
        {
          if (v64)
          {
LABEL_36:

            v61 = 1;
            if (v67)
            {
LABEL_37:
              v62 = 256;
            }

            else
            {
              v62 = 0;
            }

            return (v62 | v61 & 1u);
          }

          v32 = 0;
          v30 = 1;
          v31 = 1;
          if (!v67)
          {
            v30 = 0;
            v32 = 0;
            if (v58 > 0)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
LABEL_26:
          v30 = 1;
          if (v67)
          {
            goto LABEL_5;
          }

          v30 = v58 > 0;
          v32 = v30 | v64;
          v31 = (v58 < 1) & v81;
          if (v58 >= 1 && ((v81 ^ 1) & 1) == 0)
          {
LABEL_33:

            v61 = 1;
            goto LABEL_37;
          }
        }

        goto LABEL_4;
      }
    }

    sub_1ADDE4FF8(v18, type metadata accessor for Replica);
    (*v80)(v12, v85);
    v30 = 0;
    v81 = 1;
    if (v84)
    {
      goto LABEL_36;
    }
  }

  if (v68 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v68;
  }

  v38 = v37 - 1;
  result = &qword_1EB5BA2A0;
  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v68)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v54 - 8) + 56))(v34, 1, 1, v54);
      v29 = 0;
      v33 = v38;
      goto LABEL_18;
    }

    v29 = *(v69 + 8 * v36);
    ++v33;
    if (v29)
    {
      v33 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF6457C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v79 = a3;
  v72 = a2;
  v78 = sub_1AE23C12C();
  v4 = *(v78 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v60 - v12;
  v13 = type metadata accessor for Replica();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v26 = *(a1 + 64);
  v63 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v62 = (v27 + 63) >> 6;
  v73 = v4 + 16;
  v74 = v4;
  v76 = (v4 + 8);
  v77 = (v4 + 32);
  v71 = a1;

  v65 = 0;
  v66 = v22;
  v31 = 0;
  v68 = v16;
  v75 = v25;
  while (1)
  {
    if (!v29)
    {
      if (v62 <= v31 + 1)
      {
        v35 = v31 + 1;
      }

      else
      {
        v35 = v62;
      }

      v36 = v35 - 1;
      while (1)
      {
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v34 >= v62)
        {
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          (*(*(v58 - 8) + 56))(v22, 1, 1, v58);
          v29 = 0;
          v31 = v36;
          goto LABEL_17;
        }

        v29 = *(v63 + 8 * v34);
        ++v31;
        if (v29)
        {
          v31 = v34;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    v34 = v31;
LABEL_16:
    v37 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v38 = v37 | (v34 << 6);
    v39 = v71;
    v40 = v67;
    sub_1ADDDE3A0(*(v71 + 48) + *(v69 + 72) * v38, v67, type metadata accessor for Replica);
    v41 = v74;
    v42 = v70;
    v43 = v78;
    (*(v74 + 16))(v70, *(v39 + 56) + *(v74 + 72) * v38, v78);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v45 = *(v44 + 48);
    v46 = v40;
    v22 = v66;
    sub_1ADDDE540(v46, v66, type metadata accessor for Replica);
    (*(v41 + 32))(&v22[v45], v42, v43);
    (*(*(v44 - 8) + 56))(v22, 0, 1, v44);
    v16 = v68;
    v25 = v75;
LABEL_17:
    sub_1ADDD2198(v22, v25, &qword_1EB5BA458, &qword_1AE251E00);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v47 - 8) + 48))(v25, 1, v47) == 1)
    {
      break;
    }

    v48 = v78;
    v49 = *v77;
    (*v77)(v80, &v25[*(v47 + 48)], v78);
    sub_1ADDDE540(v25, v16, type metadata accessor for Replica);
    if (*(v79 + 16) && (v50 = sub_1ADDD8A6C(v16), (v51 & 1) != 0))
    {
      v52 = v61;
      (*(v74 + 16))(v61, *(v79 + 56) + *(v74 + 72) * v50, v48);
      sub_1ADDE4FF8(v16, type metadata accessor for Replica);
      v53 = v48;
      v54 = v64;
      v49(v64, v52, v53);
      if (sub_1AE23C0BC())
      {
        v55 = sub_1AE23C04C();
        v56 = 2 * (v55 != sub_1AE23C04C());
        v57 = v54;
      }

      else
      {
        v59 = sub_1AE23C04C();
        if (sub_1AE23C04C() < v59 && (sub_1AE23C0BC() & 1) != 0)
        {
          v56 = 1;
        }

        else
        {
          v56 = 3;
        }

        v57 = v64;
      }

      v48 = v78;
      v33 = *v76;
      result = (*v76)(v57, v78);
      v32 = *v72 | v56;
      *v72 = v32;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_35;
      }

      ++v65;
    }

    else
    {
      sub_1ADDE4FF8(v16, type metadata accessor for Replica);
      v32 = *v72 | 1;
      *v72 = v32;
      v33 = *v76;
    }

    result = v33(v80, v48);
    v25 = v75;
    if (v32 == 3)
    {
    }
  }

  if (v65 != *(v79 + 16))
  {
    *v72 |= 2uLL;
  }

  return result;
}

void sub_1ADF64C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C12C();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v54 - v9;
  v10 = type metadata accessor for Replica();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - v18;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v63 = v19;
    v59 = a2;
    v21 = 0;
    v55 = a1;
    v22 = *(a1 + 64);
    v54 = a1 + 64;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v65 = v69 + 16;
    v66 = &v54 - v18;
    v67 = (v69 + 32);
    v57 = v7;
    v58 = (v69 + 8);
    v56 = v4;
    while (v25)
    {
      v64 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_16:
      v33 = v55;
      v34 = v60;
      sub_1ADDDE3A0(*(v55 + 48) + *(v61 + 72) * v27, v60, type metadata accessor for Replica);
      v36 = v68;
      v35 = v69;
      (*(v69 + 16))(v68, *(v33 + 56) + *(v69 + 72) * v27, v4);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v38 = *(v37 + 48);
      v39 = v34;
      v30 = v63;
      sub_1ADDDE540(v39, v63, type metadata accessor for Replica);
      (*(v35 + 32))(v30 + v38, v36, v4);
      (*(*(v37 - 8) + 56))(v30, 0, 1, v37);
      v20 = v66;
      v25 = v64;
LABEL_17:
      sub_1ADDD2198(v30, v20, &qword_1EB5BA458, &qword_1AE251E00);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      if ((*(*(v40 - 8) + 48))(v20, 1, v40) == 1)
      {
        return;
      }

      v41 = *(v40 + 48);
      v42 = v62;
      sub_1ADDDE540(v20, v62, type metadata accessor for Replica);
      v43 = &v20[v41];
      v4 = v56;
      v44 = v57;
      (*v67)(v57, v43, v56);
      v45 = v59;
      v46 = sub_1ADDD8A6C(v42);
      LOBYTE(v41) = v47;
      sub_1ADDE4FF8(v42, type metadata accessor for Replica);
      if ((v41 & 1) == 0)
      {
        (*v58)(v44, v4);
        return;
      }

      v48 = v69;
      v49 = *(v45 + 56) + *(v69 + 72) * v46;
      v50 = v68;
      (*(v69 + 16))(v68, v49, v4);
      sub_1ADDDF604(&qword_1ED967150, MEMORY[0x1E6969B50]);
      v51 = sub_1AE23CCBC();
      v52 = *(v48 + 8);
      v52(v50, v4);
      v52(v44, v4);
      v20 = v66;
      if ((v51 & 1) == 0)
      {
        return;
      }
    }

    if (v26 <= v21 + 1)
    {
      v28 = v21 + 1;
    }

    else
    {
      v28 = v26;
    }

    v29 = v28 - 1;
    v30 = v63;
    while (1)
    {
      v31 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v31 >= v26)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v53 - 8) + 56))(v30, 1, 1, v53);
        v25 = 0;
        v21 = v29;
        goto LABEL_17;
      }

      v32 = *(v54 + 8 * v31);
      ++v21;
      if (v32)
      {
        v64 = (v32 - 1) & v32;
        v27 = __clz(__rbit64(v32)) | (v31 << 6);
        v21 = v31;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADF6528C(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v25 = (v6 + 63) >> 6;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v10 = (v8 - 1) & v8;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);
    v18 = v16 == 0;

    if (!v16)
    {
      return v18;
    }

    v19 = v10;
    v20 = v3;
    v21 = sub_1ADDD7A10(v15, v16);
    v23 = v22;

    if ((v23 & 1) == 0)
    {

      return 0;
    }

    v24 = *(**(*(a2 + 56) + 8 * v21) + 264);

    LOBYTE(v24) = v24(v17);

    v3 = v20;
    v8 = v19;
    if ((v24 & 1) == 0)
    {
      return v18;
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

    if (v4 >= v25)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF65450(uint64_t result, uint64_t a2)
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
  v21 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v20 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v11);
    sub_1ADDD86D8(*v12, v14);
    v16 = v14 >> 60 == 15;
    if (v14 >> 60 != 15)
    {
      v17 = sub_1ADDDE7CC(v13, v14);
      v19 = v18;
      result = sub_1ADDCC35C(v13, v14);
      if ((v19 & 1) != 0 && *(*(a2 + 56) + 8 * v17) == v15)
      {
        continue;
      }
    }

    return v16;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v20)
    {
      return 1;
    }

    v10 = *(v21 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1ADF655B8(uint64_t a1, uint64_t a2)
{
  v67[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_76:
    v19 = 1;
    goto LABEL_80;
  }

  v2 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_79;
  }

  v3 = 0;
  v59 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (1)
  {
    if (v7)
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
      goto LABEL_13;
    }

    v11 = v3;
    do
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v3 >= v8)
      {
        goto LABEL_76;
      }

      v12 = *(v4 + 8 * v3);
      ++v11;
    }

    while (!v12);
    v9 = __clz(__rbit64(v12));
    v10 = (v12 - 1) & v12;
LABEL_13:
    v13 = 16 * (v9 | (v3 << 6));
    v14 = (*(v2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v2 + 56) + v13);
    v18 = *v17;
    v64 = v17[1];
    sub_1ADDD86D8(*v14, v16);
    v19 = v18 == 0;

    if (!v18)
    {
      goto LABEL_80;
    }

    v63 = v10;
    v20 = sub_1ADDDE7CC(v15, v16);
    v22 = v21;
    sub_1ADDCC35C(v15, v16);
    if ((v22 & 1) == 0)
    {
      goto LABEL_78;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    v24 = v23[1];
    v25 = *(*v23 + 16);
    v26 = *(*v23 + 24);
    v27 = *(v18 + 16);
    v28 = *(v18 + 24);
    v29 = v26 >> 62;
    v30 = v28 >> 62;
    v62 = v24;
    if (v26 >> 62 == 3)
    {
      if (v25)
      {
        v31 = 0;
      }

      else
      {
        v31 = v26 == 0xC000000000000000;
      }

      v32 = v31 && v28 >> 62 == 3;
      if (!v32 || (!v27 ? (v33 = v28 == 0xC000000000000000) : (v33 = 0), !v33))
      {
LABEL_39:
        v34 = 0;
        if (v30 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v30)
        {
          v38 = BYTE6(v28);
          goto LABEL_46;
        }

        LODWORD(v38) = HIDWORD(v27) - v27;
        if (!__OFSUB__(HIDWORD(v27), v27))
        {
          v38 = v38;
          goto LABEL_46;
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      goto LABEL_74;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_39;
      }

      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (!v37)
      {
        if (v30 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    if (v29)
    {
      LODWORD(v34) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_85;
      }

      v34 = v34;
      if (v30 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v34 = BYTE6(v26);
      if (v30 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v30 != 2)
    {
      if (v34)
      {
        goto LABEL_78;
      }

      goto LABEL_74;
    }

    v40 = *(v27 + 16);
    v39 = *(v27 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_83;
    }

LABEL_46:
    if (v34 != v38)
    {
      goto LABEL_78;
    }

    if (v34 >= 1)
    {
      break;
    }

LABEL_74:
    v2 = a1;
    v7 = v63;

    if (v62 != v64)
    {
      goto LABEL_80;
    }
  }

  v60 = *(v18 + 16);
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      memset(v67, 0, 14);

      sub_1ADDD86D8(v25, v26);
      v41 = v60;
      sub_1ADDD86D8(v60, v28);
      goto LABEL_65;
    }

    v55 = *(v25 + 24);
    v57 = *(v25 + 16);

    sub_1ADDD86D8(v25, v26);
    v58 = v28;
    sub_1ADDD86D8(v60, v28);
    v42 = sub_1AE23BB7C();
    if (v42)
    {
      v43 = v42;
      v44 = sub_1AE23BBAC();
      v45 = v57;
      if (__OFSUB__(v57, v44))
      {
        goto LABEL_88;
      }

      v54 = v57 - v44 + v43;
    }

    else
    {
      v54 = 0;
      v45 = v57;
    }

    if (__OFSUB__(v55, v45))
    {
      goto LABEL_87;
    }

    sub_1AE23BB9C();
    v51 = v54;
  }

  else
  {
    if (!v29)
    {
      v67[0] = v25;
      LOWORD(v67[1]) = v26;
      BYTE2(v67[1]) = BYTE2(v26);
      BYTE3(v67[1]) = BYTE3(v26);
      BYTE4(v67[1]) = BYTE4(v26);
      BYTE5(v67[1]) = BYTE5(v26);
      v41 = v27;

      sub_1ADDD86D8(v25, v26);
      sub_1ADDD86D8(v41, v28);
LABEL_65:
      v49 = v41;
      v50 = v59;
      sub_1ADDD8820(v67, v49, v28, &v66);
      sub_1ADDCC35C(v25, v26);
      sub_1ADDCC35C(v60, v28);
      if (!v66)
      {
        goto LABEL_77;
      }

LABEL_73:
      v59 = v50;

      goto LABEL_74;
    }

    if (v25 >> 32 < v25)
    {
      goto LABEL_86;
    }

    sub_1ADDD86D8(v25, v26);
    v58 = v28;
    sub_1ADDD86D8(v60, v28);
    v46 = sub_1AE23BB7C();
    if (v46)
    {
      v56 = v46;
      v47 = sub_1AE23BBAC();
      if (__OFSUB__(v25, v47))
      {
        goto LABEL_89;
      }

      v48 = v25 - v47 + v56;
    }

    else
    {
      v48 = 0;
    }

    sub_1AE23BB9C();
    v51 = v48;
  }

  v50 = v59;
  sub_1ADDD8820(v51, v60, v58, v67);
  sub_1ADDCC35C(v25, v26);
  sub_1ADDCC35C(v60, v58);
  if (v67[0])
  {
    goto LABEL_73;
  }

LABEL_77:

LABEL_78:

LABEL_79:
  v19 = 0;
LABEL_80:
  v52 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t sub_1ADF65B3C(uint64_t a1, void *a2)
{
  v69 = a1;
  v73[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1AE23C0EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1AE23C12C();
  v66 = *(v61 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v9 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v52 - v10;
  v12 = type metadata accessor for Replica();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[2];
  v65 = a2;
  v64 = v13;
  v63 = v16;
  if (v17)
  {
    *&v68 = v4;
    v18 = sub_1AE194450(v17, 0);
    sub_1AE03AAF0(v73, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v17, a2);
    v20 = v19;

    sub_1ADDDCE74();
    if (v20 != v17)
    {
      goto LABEL_34;
    }

    a2 = v65;
    v13 = v64;
    v16 = v63;
    v4 = v68;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v73[0] = v18;
  sub_1ADF68C38(v73);
  v21 = v73[0];
  v58 = v73[0][2];
  if (v58)
  {
    v22 = 0;
    v57 = v73[0] + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v56 = v66 + 16;
    v55 = v66 + 8;
    v54 = (v4 + 8);
    v68 = xmmword_1AE2418F0;
    v53 = v73[0];
    while (v22 < v21[2])
    {
      sub_1ADDDE3A0(&v57[*(v13 + 72) * v22], v16, type metadata accessor for Replica);
      v23 = sub_1ADDD8E0C();
      v25 = v24;
      sub_1AE1B1DC4(v23, v24);
      sub_1ADDCC35C(v23, v25);
      if (!a2[2])
      {
        goto LABEL_30;
      }

      v26 = sub_1ADDD8A6C(v16);
      v28 = v27;
      sub_1ADDE4FF8(v16, type metadata accessor for Replica);
      if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }

      v67 = v22;
      v29 = v66;
      v30 = a2[7] + *(v66 + 72) * v26;
      v31 = v60;
      v32 = v61;
      (*(v66 + 16))(v60, v30, v61);
      v33 = v62;
      sub_1AE23C10C();
      (*(v29 + 8))(v31, v32);
      sub_1AE23C0DC();
      (*v54)(v33, v3);
      v34 = *(v59 + 36);
      sub_1ADDDF604(&qword_1ED96A708, MEMORY[0x1E6969B30]);
      while (1)
      {
        sub_1AE23D46C();
        if (*&v11[v34] == v73[0])
        {
          break;
        }

        v35 = sub_1AE23D51C();
        v37 = *v36;
        v38 = v36[1];
        v35(v73, 0);
        sub_1AE23D47C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA130, &qword_1AE241B50);
        inited = swift_initStackObject();
        *(inited + 16) = v68;
        *(inited + 32) = v37;
        *(inited + 40) = v38;
        v73[3] = MEMORY[0x1E69E6290];
        v73[4] = MEMORY[0x1E6969DF8];
        v73[0] = (inited + 32);
        v73[1] = (inited + 48);
        v40 = __swift_project_boxed_opaque_existential_1(v73, MEMORY[0x1E69E6290]);
        v41 = *v40;
        if (!*v40 || (v42 = v40[1], v43 = v42 - v41, v42 == v41))
        {
          __swift_destroy_boxed_opaque_existential_1(v73);
          swift_setDeallocating();
          sub_1AE23C9BC();
          sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620]);
          memset(__dst, 0, sizeof(__dst));
          sub_1AE23C93C();
        }

        else if (v43 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v72 = v42 - v41;
          memcpy(__dst, v41, v42 - v41);
          __swift_destroy_boxed_opaque_existential_1(v73);
          swift_setDeallocating();
          v70[0] = *__dst;
          *(v70 + 6) = *&__dst[6];
          sub_1AE23C9BC();
          sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620]);
          sub_1AE23C93C();
        }

        else
        {
          v44 = sub_1AE23BBCC();
          v45 = *(v44 + 48);
          v46 = *(v44 + 52);
          swift_allocObject();
          v47 = sub_1AE23BB6C();
          if (v43 >= 0x7FFFFFFF)
          {
            sub_1AE23BE2C();
            v48 = swift_initStackObject();
            *(v48 + 16) = 0;
            *(v48 + 24) = v43;
            __swift_destroy_boxed_opaque_existential_1(v73);

            sub_1ADDD86D8(v48, v47 | 0x8000000000000000);
            if (sub_1AE23BB7C() && __OFSUB__(0, sub_1AE23BBAC()))
            {
              goto LABEL_33;
            }

            sub_1AE23BB9C();
            sub_1AE23C9BC();
            sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620]);
            sub_1AE23C93C();

            swift_setDeallocating();
            sub_1AE23BE3C();
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v73);
            swift_setDeallocating();
            sub_1ADDD86D8(v43 << 32, v47 | 0x4000000000000000);
            if (sub_1AE23BB7C() && __OFSUB__(0, sub_1AE23BBAC()))
            {
              goto LABEL_32;
            }

            sub_1AE23BB9C();
            sub_1AE23C9BC();
            sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620]);
            sub_1AE23C93C();
          }
        }
      }

      v22 = v67 + 1;
      sub_1ADDCEDE0(v11, &qword_1EB5BA440, &unk_1AE24CCB0);
      a2 = v65;
      v13 = v64;
      v16 = v63;
      v21 = v53;
      if (v22 == v58)
      {

        v50 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v51 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ADF6652C(uint64_t a1)
{
  v2 = sub_1AE23C0EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1AE23C12C();
  v7 = *(v77 - 8);
  v8 = *(v7 + 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Replica();
  v10 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v61 - v16;
  v17 = a1;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v71 = v12;
  if (v18)
  {
    v67 = v7;
    v72 = v3;
    v20 = sub_1AE1940C8(v18, 0);
    sub_1AE03A354(&v83, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v18, v17);
    v73 = v21;

    sub_1ADDDCE74();
    if (v73 != v18)
    {
      goto LABEL_26;
    }

    v12 = v71;
    v3 = v72;
    v19 = MEMORY[0x1E69E7CC0];
    v7 = v67;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v83 = v20;
  sub_1ADF68B84(&v83);
  v20 = v83;
  v22 = v83[2];
  if (!v22)
  {
LABEL_22:

    return v19;
  }

  v82 = v19;
  sub_1ADE0B11C(0, v22, 0);
  v23 = 0;
  v67 = v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v82;
  v66 = (v7 + 32);
  v62 = (v3 + 8);
  v61 = (v7 + 8);
  v65 = xmmword_1AE241900;
  v64 = v20;
  v63 = v22;
  while (v23 < v20[2])
  {
    v72 = v19;
    v73 = v23;
    v24 = v74;
    sub_1ADDCEE40(&v67[*(v12 + 72) * v23], v74, &qword_1EB5BA2A0, &unk_1AE242200);
    v25 = v68;
    sub_1ADDCEE40(v24, v68, &qword_1EB5BA2A0, &unk_1AE242200);
    v26 = *(v69 + 48);
    v27 = v75;
    sub_1ADDDE540(v25, v75, type metadata accessor for Replica);
    (*v66)(v76, v25 + v26, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
    v28 = swift_allocObject();
    *(v28 + 16) = v65;
    sub_1AE23BFCC();
    v29 = MEMORY[0x1E69E7508];
    *(v28 + 56) = MEMORY[0x1E69E7508];
    v30 = MEMORY[0x1E69E7558];
    *(v28 + 64) = MEMORY[0x1E69E7558];
    *(v28 + 32) = v31;
    sub_1AE23BFCC();
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v32;
    v83 = sub_1AE23CD3C();
    v84 = v33;
    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    v80 = *(v27 + *(v70 + 20));
    v34 = sub_1AE23DD9C();
    v20 = v35;
    MEMORY[0x1B26FB670](v34);

    v80 = v83;
    v81 = v84;
    MEMORY[0x1B26FB670](40, 0xE100000000000000);
    sub_1AE23C10C();
    sub_1ADDDF604(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    v36 = sub_1AE23D43C();
    if (v36)
    {
      v37 = v36;
      v79 = MEMORY[0x1E69E7CC0];
      sub_1ADE0B11C(0, v36 & ~(v36 >> 63), 0);
      v38 = v79;
      sub_1AE23D41C();
      if (v37 < 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v39 = sub_1AE23D51C();
        v41 = *v40;
        v42 = *(v40 + 8);
        v39(&v83, 0);
        v43 = __OFSUB__(v42, 1);
        v20 = (v42 - 1);
        if (v43)
        {
          break;
        }

        if (v41 == v20)
        {
          v83 = v41;
          v44 = sub_1AE23DD9C();
          v46 = v45;
        }

        else
        {
          v78 = v41;
          v83 = sub_1AE23DD9C();
          v84 = v47;
          MEMORY[0x1B26FB670](45, 0xE100000000000000);
          v78 = v20;
          v48 = sub_1AE23DD9C();
          MEMORY[0x1B26FB670](v48);

          v44 = v83;
          v46 = v84;
        }

        v79 = v38;
        v50 = v38[2];
        v49 = v38[3];
        if (v50 >= v49 >> 1)
        {
          sub_1ADE0B11C((v49 > 1), v50 + 1, 1);
          v38 = v79;
        }

        v38[2] = v50 + 1;
        v51 = &v38[2 * v50];
        v51[4] = v44;
        v51[5] = v46;
        sub_1AE23D47C();
        if (!--v37)
        {
          (*v62)(v6, v2);
          goto LABEL_19;
        }
      }

      __break(1u);
      break;
    }

    (*v62)(v6, v2);
    v38 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v83 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
    v52 = sub_1AE23CBFC();
    v54 = v53;

    MEMORY[0x1B26FB670](v52, v54);

    MEMORY[0x1B26FB670](41, 0xE100000000000000);
    v55 = v80;
    v56 = v81;
    (*v61)(v76, v77);
    sub_1ADDE4FF8(v75, type metadata accessor for Replica);
    sub_1ADDCEDE0(v74, &qword_1EB5BA2A0, &unk_1AE242200);
    v19 = v72;
    v82 = v72;
    v58 = *(v72 + 16);
    v57 = *(v72 + 24);
    if (v58 >= v57 >> 1)
    {
      sub_1ADE0B11C((v57 > 1), v58 + 1, 1);
      v19 = v82;
    }

    v23 = v73 + 1;
    *(v19 + 16) = v58 + 1;
    v59 = v19 + 16 * v58;
    *(v59 + 32) = v55;
    *(v59 + 40) = v56;
    v12 = v71;
    v20 = v64;
    if (v23 == v63)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1ADF66DD8()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADF76AA0(v3, v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF66E28()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADF76AA0(v3, v1);
  return sub_1AE23E34C();
}

uint64_t CRVersion.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Replica();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1AE23BFEC();
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  *&v9[*(v6 + 28)] = 0;
  if (*(v10 + 16) && (v12 = sub_1ADDD8A6C(v9), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v10 + 56);
    v16 = sub_1AE23C12C();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a2, v15 + *(v17 + 72) * v14, v16);
    sub_1ADDE4FF8(v9, type metadata accessor for Replica);
    return (*(v17 + 56))(a2, 0, 1, v16);
  }

  else
  {
    sub_1ADDE4FF8(v9, type metadata accessor for Replica);
    v19 = sub_1AE23C12C();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_1ADF67078(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = a1;
  v6 = sub_1AE23C12C();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for Replica();
  v52 = *(v18 - 8);
  v19 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v27 = sub_1AE23BFEC();
  (*(*(v27 - 8) + 16))(v26, a3, v27);
  *&v26[*(v18 + 20)] = 0;
  v28 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(v26, v23, type metadata accessor for Replica);
  v30 = a2;
  v60 = *a2;
  v31 = v60;
  v33 = sub_1ADDD8A6C(v23);
  v34 = v31[2];
  v35 = (v32 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v32;
  v37 = v31[3];
  v56 = v30;
  if (v37 >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v58;
      v40 = v59;
      if (v32)
      {
        goto LABEL_8;
      }

LABEL_11:
      v42 = 1;
      goto LABEL_12;
    }

LABEL_10:
    sub_1ADDFB81C();
    v41 = v58;
    v40 = v59;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_1ADDDDED0(v36, isUniquelyReferenced_nonNull_native);
  v38 = sub_1ADDD8A6C(v23);
  if ((v3 & 1) != (v39 & 1))
  {
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v33 = v38;
  v41 = v58;
  v40 = v59;
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  (*(v41 + 32))(v17, v60[7] + *(v41 + 72) * v33, v40);
  v42 = 0;
LABEL_12:
  (*(v41 + 56))(v17, v42, 1, v40);
  sub_1ADDCEDE0(v17, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDCEE40(v57, v17, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDD2198(v17, v14, &qword_1EB5BB780, &qword_1AE24CD18);
  if ((*(v41 + 48))(v14, 1, v40) == 1)
  {
    sub_1ADDCEDE0(v14, &qword_1EB5BB780, &qword_1AE24CD18);
    if (v3)
    {
      v43 = v60;
      sub_1ADDE4FF8(v60[6] + *(v52 + 72) * v33, type metadata accessor for Replica);
      sub_1ADDF9CEC(v33, v43);
    }
  }

  else
  {
    v58 = v33;
    v44 = *(v41 + 32);
    v45 = v41;
    v46 = v55;
    v44(v55, v14, v40);
    v47 = v60;
    if (v3)
    {
      v44((v60[7] + *(v45 + 72) * v58), v46, v40);
    }

    else
    {
      v48 = v53;
      sub_1ADDDE3A0(v23, v53, type metadata accessor for Replica);
      v49 = v54;
      v44(v54, v46, v40);
      sub_1ADDDE678(v58, v48, v49, v47);
    }
  }

  sub_1ADDE4FF8(v23, type metadata accessor for Replica);
  result = sub_1ADDE4FF8(v26, type metadata accessor for Replica);
  *v56 = v60;
  return result;
}

void (*CRVersion.subscript.modify(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for Replica();
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v9 = v8;
  v6[4] = v8;
  v10 = sub_1AE23BFEC();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  *(v9 + *(v7 + 20)) = 0;
  v6[5] = sub_1ADF5EEE8(v6, v9);
  return sub_1ADDFDDC8;
}

uint64_t CRVersion.subscript.setter(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v5 = sub_1AE23C12C();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Replica();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  v26 = sub_1AE23BFEC();
  v53 = *(v26 - 8);
  v27 = *(v53 + 16);
  v55 = a2;
  v27(v25, a2, v26);
  *&v25[*(v17 + 20)] = 0;
  v28 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(v25, v22, type metadata accessor for Replica);
  v56 = v2;
  v30 = *v2;
  v58 = v30;
  v32 = sub_1ADDD8A6C(v22);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v31;
  if (v30[3] >= v35)
  {
    v17 = v54;
    if (isUniquelyReferenced_nonNull_native)
    {
      v54 = v32;
      if (v31)
      {
        goto LABEL_8;
      }

LABEL_11:
      v38 = 1;
      goto LABEL_12;
    }

LABEL_10:
    v39 = v32;
    sub_1ADDFB81C();
    v32 = v39;
    v54 = v39;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_1ADDDDED0(v35, isUniquelyReferenced_nonNull_native);
  v36 = sub_1ADDD8A6C(v22);
  if ((v3 & 1) != (v37 & 1))
  {
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v32 = v36;
  v17 = v54;
  v54 = v36;
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  (*(v17 + 32))(v16, v58[7] + *(v17 + 72) * v32, v5);
  v38 = 0;
LABEL_12:
  (*(v17 + 56))(v16, v38, 1, v5);
  sub_1ADDCEDE0(v16, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDCEE40(v57, v16, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDD2198(v16, v13, &qword_1EB5BB780, &qword_1AE24CD18);
  if ((*(v17 + 48))(v13, 1, v5) == 1)
  {
    sub_1ADDCEDE0(v13, &qword_1EB5BB780, &qword_1AE24CD18);
    if (v3)
    {
      v40 = v58;
      v41 = v54;
      sub_1ADDE4FF8(v58[6] + *(v49 + 72) * v54, type metadata accessor for Replica);
      sub_1ADDF9CEC(v41, v40);
    }
  }

  else
  {
    v49 = v26;
    v42 = *(v17 + 32);
    v43 = v17;
    v44 = v52;
    v42(v52, v13, v5);
    v45 = v58;
    if (v3)
    {
      v42((v58[7] + *(v43 + 72) * v54), v44, v5);
    }

    else
    {
      v46 = v50;
      sub_1ADDDE3A0(v22, v50, type metadata accessor for Replica);
      v47 = v51;
      v42(v51, v44, v5);
      sub_1ADDDE678(v54, v46, v47, v45);
    }

    v26 = v49;
  }

  (*(v53 + 8))(v55, v26);
  sub_1ADDCEDE0(v57, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDE4FF8(v22, type metadata accessor for Replica);
  result = sub_1ADDE4FF8(v25, type metadata accessor for Replica);
  *v56 = v58;
  return result;
}

double CRVersion.finalizeTimestamps(_:)(uint64_t a1)
{
  if (*(v1[1] + 16))
  {
    v2 = v1;
    v3 = *v1;
    if (qword_1ED96B308 != -1)
    {
      v6 = a1;
      swift_once();
      a1 = v6;
    }

    v4 = *(qword_1ED96F2F8 + 40);
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    result = *&v7;
    *v2 = v7;
  }

  return result;
}

uint64_t CRVersion.finalized(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  if (*(v4 + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v5 = *(qword_1ED96F2F8 + 40);
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    *a2 = v8;
  }

  else
  {
    *a2 = *v2;
    *(a2 + 8) = v4;
  }

  return result;
}

void static CRVersion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADF64C74(a1[1], a2[1]);
  if (v4)
  {

    sub_1ADF64C74(v2, v3);
  }
}

uint64_t CRVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB788, &qword_1AE24CD20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AE241900;
  *(v3 + 32) = sub_1ADF6652C(v1);
  *(v3 + 40) = sub_1ADF6652C(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB790, &unk_1AE251E40);
  sub_1ADF73650();
  v4 = sub_1AE23CBFC();
  v6 = v5;

  MEMORY[0x1B26FB670](v4, v6);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);

  return 91;
}

uint64_t CRVersion.init(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = 0xD00000000000001BLL;
  swift_bridgeObjectRelease_n();
  v7 = *(a1 + 72);
  if (!v7)
  {
    v9 = "Not decoding a CRDT.";
    v6 = 0xD000000000000017;
LABEL_7:
    v13 = v9 | 0x8000000000000000;
    sub_1ADE42E40();
    swift_allocError();
    *v14 = v6;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  v8 = *(v7 + 16);
  v9 = "Invalid UUID index.";
  if ((~v8 & 0xF000000000000007) == 0 || ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) != 6)
  {
    goto LABEL_7;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v11 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

  result = sub_1ADDD6748(v10, v11, a1, &v15);
  if (!v3)
  {
    *a2 = v15;
  }

  return result;
}

uint64_t CRVersion.encode(to:)()
{
  v7 = *v0;
  result = sub_1ADE71C08();
  if (!v1)
  {
    v3 = *(result + 16);

    v4 = sub_1ADDF5C7C(v3);
    v6 = v5;
    swift_beginAccess();
    sub_1AE1B6DB0(v4, v6);
    swift_endAccess();
  }

  return result;
}

uint64_t CRVersion.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1ADF76AA0(a1, v3);

  return sub_1ADF76AA0(a1, v4);
}

uint64_t CRVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1ADF76AA0(v4, v1);
  sub_1ADF76AA0(v4, v2);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF6829C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1ADF76AA0(v4, v1);
  sub_1ADF76AA0(v4, v2);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF682F0(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1ADF76AA0(a1, v3);

  return sub_1ADF76AA0(a1, v4);
}

uint64_t sub_1ADF68330()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1ADF76AA0(v4, v1);
  sub_1ADF76AA0(v4, v2);
  return sub_1AE23E34C();
}

void sub_1ADF6839C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADF64C74(a1[1], a2[1]);
  if (v4)
  {

    sub_1ADF64C74(v2, v3);
  }
}

uint64_t sub_1ADF68408()
{
  v7 = *v0;
  result = sub_1ADE71C08();
  if (!v1)
  {
    v3 = *(result + 16);

    v4 = sub_1ADDF5C7C(v3);
    v6 = v5;
    swift_beginAccess();
    sub_1AE1B6DB0(v4, v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADF684B4(uint64_t a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v2 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v32 = a1;

  v13 = 0;
  v14 = 0;
  v29 = v7;
  v15 = v30;
  if (v10)
  {
    while (1)
    {
      v33 = v14;
      v16 = v13;
LABEL_9:
      v17 = __clz(__rbit64(v10)) | (v16 << 6);
      v18 = v32;
      v19 = *(v32 + 48);
      v20 = type metadata accessor for Replica();
      sub_1ADDDE3A0(v19 + *(*(v20 - 8) + 72) * v17, v15, type metadata accessor for Replica);
      v21 = *(v18 + 56);
      v22 = sub_1AE23C12C();
      v23 = *(v22 - 8);
      v24 = v21 + *(v23 + 72) * v17;
      v25 = v31;
      (*(v23 + 16))(v15 + *(v31 + 48), v24, v22);
      sub_1ADDCEE40(v15, v4, &qword_1EB5BA2A0, &unk_1AE242200);
      v26 = *(v25 + 48);
      v27 = sub_1AE23C04C();
      sub_1ADDCEDE0(v15, &qword_1EB5BA2A0, &unk_1AE242200);
      result = (*(v23 + 8))(&v4[v26], v22);
      v14 = v33 + v27;
      if (__OFADD__(v33, v27))
      {
        break;
      }

      v10 &= v10 - 1;
      result = sub_1ADDE4FF8(v4, type metadata accessor for Replica);
      v13 = v16;
      v7 = v29;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v16 >= v11)
      {

        return v14;
      }

      v10 = *(v7 + 8 * v16);
      ++v13;
      if (v10)
      {
        v33 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CRVersion.count.getter()
{
  v1 = v0[1];
  v2 = sub_1ADF684B4(*v0);
  v3 = sub_1ADF684B4(v1);
  v4 = __OFADD__(v2, v3);
  result = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t CRVersion.replicaCount.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(v0[1] + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t CRVersion.isDisjoint(with:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *v1;
  v4 = v1[1];
  if ((sub_1ADF63098(*a1, v3) & 1) == 0)
  {
    return 0;
  }

  return sub_1ADF63098(v2, v4);
}

uint64_t CRVersion.isSuperset(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  if (*(v5 + 16) && *(v12 + 16))
  {

    sub_1ADDF8898(v7, 0, v12);
    if (!*(v3 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!*(v3 + 16))
    {
      goto LABEL_10;
    }
  }

  if (*(v12 + 16))
  {

    sub_1ADDF8898(v8, 0, v12);

    goto LABEL_11;
  }

LABEL_10:

LABEL_11:
  if (sub_1ADF637A8(v3, v5))
  {

    v9 = 0;
  }

  else
  {
    v10 = sub_1ADF637A8(v2, v4);

    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t CRVersion.isStrictSuperset(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  if (*(v3 + 16) && *(v11 + 16))
  {

    sub_1ADDF8898(v7, 0, v11);
    if (!*(v5 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!*(v5 + 16))
    {
      goto LABEL_10;
    }
  }

  if (*(v11 + 16))
  {

    sub_1ADDF8898(v8, 0, v11);

    goto LABEL_11;
  }

LABEL_10:

LABEL_11:
  if (sub_1ADF637A8(v5, v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ADF637A8(v4, v2);
  }

  return v9 & 1;
}

void sub_1ADF68B84(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADF7AFCC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1ADF73788(v5);
  *a1 = v3;
}

void sub_1ADF68C38(void **a1)
{
  v2 = *(type metadata accessor for Replica() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADF7B01C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1ADF738CC(v5);
  *a1 = v3;
}

uint64_t sub_1ADF68CF4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
  v42 = a2;
  result = sub_1AE23DCCC();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_1ADE42D60(*(v11 + 56) + 8 * v26, v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_1ADE42CF8(*(v11 + 56) + 8 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
      result = sub_1AE23CBBC();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_1ADE42D60(v47, *(v14 + 56) + 8 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1ADF690CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
  v38 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23CDAC();
      result = sub_1AE23E34C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6936C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB820, &qword_1AE24CF10);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF69618(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E8, &qword_1AE24CEE8);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADF698B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C8, &qword_1AE24CED0);
  v39 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = (*(v5 + 56) + 24 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v40 = v23;
      if ((v39 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      v28 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v17 = v40;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v17 = v40;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF69B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
  v38 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23CDAC();
      result = sub_1AE23E34C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF69E44(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Timestamp(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB850, &qword_1AE24CF20);
  v40 = a2;
  result = sub_1AE23DCCC();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1ADDDE540(v27, v41, type metadata accessor for Timestamp);
      }

      else
      {
        sub_1ADDDE3A0(v27, v41, type metadata accessor for Timestamp);
      }

      v28 = *(v12 + 40);
      sub_1AE23E31C();
      (*(*v25 + 88))(v42);
      result = sub_1AE23E34C();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_1ADDDE540(v41, *(v12 + 56) + v26 * v20, type metadata accessor for Timestamp);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1ADF6A1CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
  v33 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1AE23E31C();
      (*(*v21 + 88))(v34);
      result = sub_1AE23E34C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6A484(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB838, &qword_1AE25AA40);
  v40 = a2;
  result = sub_1AE23DCCC();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1ADDD2198(v27, v41, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      else
      {
        sub_1ADDCEE40(v27, v41, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      v28 = *(v12 + 40);
      sub_1AE23E31C();
      (*(*v25 + 88))(v42);
      result = sub_1AE23E34C();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_1ADDD2198(v41, *(v12 + 56) + v26 * v20, &qword_1EB5BB830, &unk_1AE25AA50);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1ADF6A810(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - v8;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB848, &qword_1AE24CF18);
  v48 = a2;
  result = sub_1AE23DCCC();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1ADDD2198(v31 + v32 * v28, v52, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1ADDCEE40(v33 + v32 * v28, v52, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      v34 = *(v16 + 40);
      sub_1ADDDF604(&qword_1ED96A718, MEMORY[0x1E69695A8]);
      result = sub_1AE23CBBC();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1ADDD2198(v52, *(v16 + 56) + v32 * v24, &qword_1EB5BB830, &unk_1AE25AA50);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1ADF6ACAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB840, &qword_1AE25AA60);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1AE23E31C();
      (*(*v21 + 88))(v33);
      result = sub_1AE23E34C();
      v23 = -1 << *(v8 + 32);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6AF70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA088, &qword_1AE241868);
  v38 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + v23);
      v27 = *v25;
      v26 = v25[1];
      v39 = v24;
      if ((v38 & 1) == 0)
      {
        sub_1ADDD86D8(v24, *(&v24 + 1));
      }

      v28 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v17 = v39;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v17 = v39;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      v19 = (*(v8 + 56) + v18);
      *v19 = v27;
      v19[1] = v26;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6B238(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA068, &qword_1AE241848);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = (*(v5 + 56) + 32 * v22);
      v35 = v24[1];
      v36 = *v24;
      v37 = v23;
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
        sub_1ADDD86D8(v36, *(&v36 + 1));
        sub_1ADDD86D8(v35, *(&v35 + 1));
      }

      v25 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v17 = v37;
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v17 = v37;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v36;
      v18[1] = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6B504(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F0, &qword_1AE24CEF0);
  v37 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = (*(v5 + 56) + 3 * v22);
      v25 = *v24;
      v26 = v24[1];
      v38 = v24[2];
      v39 = v23;
      if ((v37 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      v27 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v17 = v39;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v17 = v39;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = (*(v8 + 56) + 3 * v16);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6B7D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F8, &qword_1AE24CEF8);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = *(*(v5 + 48) + v22);
      v34 = *(*(v5 + 56) + v22);
      v35 = v23;
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      v24 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v35;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      *(*(v8 + 56) + v18) = v34;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6BAC0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1AE23DCCC();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = *(*(v7 + 48) + 16 * v24);
      v26 = (*(v7 + 56) + 24 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v42 = v25;
      if ((v41 & 1) == 0)
      {
        sub_1ADDD86D8(v25, *(&v25 + 1));
      }

      v30 = *(v10 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v19 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v19 = v42;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      v20 = (*(v10 + 56) + 24 * v18);
      *v20 = v27;
      v20[1] = v28;
      v20[2] = v29;
      ++*(v10 + 16);
      v7 = v40;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1ADF6BDB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0F0, &qword_1AE2418C8);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = *(*(v5 + 48) + v22);
      v34 = *(*(v5 + 56) + v22);
      v35 = v23;
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
        sub_1ADDD86D8(v34, *(&v34 + 1));
      }

      v24 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v35;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      *(*(v8 + 56) + v18) = v34;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6C068(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9F8, &qword_1AE245688);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6C314(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA070, &qword_1AE241850);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 56) + 32 * v21);
      v34 = *(*(v5 + 48) + 16 * v21);
      v23 = *(*(v5 + 48) + 16 * v21 + 8);
      if (a2)
      {
        sub_1ADDEE390(v22, v35);
      }

      else
      {
        sub_1ADDE4E28(v22, v35);
        sub_1ADDD86D8(v34, v23);
      }

      v24 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v34;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v34;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      result = sub_1ADDEE390(v35, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6C5C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_1AE23E30C();
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6C84C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D0, &qword_1AE2418B0);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = *(v5 + 56) + 24 * v22;
      v36 = *v24;
      v37 = v23;
      v25 = *(v24 + 16);
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
        swift_unknownObjectRetain();
      }

      v26 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v17 = v37;
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v17 = v37;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v36;
      *(v18 + 16) = v25;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
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
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1ADF6CB3C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_1AE23DCCC();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
      result = sub_1AE23CBBC();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

unint64_t sub_1ADF6CF18(int64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for Replica();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v23);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_1AE23D8FC() + 1) & ~v10;
    v14 = *(v4 + 72);
    while (1)
    {
      v15 = v14 * v11;
      sub_1ADDDE3A0(*(a2 + 48) + v14 * v11, v8, type metadata accessor for Replica);
      v16 = *(a2 + 40);
      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v8[*(v23 + 20)]);
      v17 = sub_1AE23E34C();
      result = sub_1ADDE4FF8(v8, type metadata accessor for Replica);
      v18 = v17 & v12;
      if (a1 >= v13)
      {
        break;
      }

      if (v18 < v13)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v14 * a1 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(a2 + 56);
      result = v19 + 24 * a1;
      if (a1 < v11 || result >= v19 + 24 * v11 + 24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a1 == v11)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v11;
LABEL_5:
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1ADF6D1C4(int64_t a1, uint64_t a2)
{
  v35 = sub_1AE23BDDC();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1AE23D8FC();
    v13 = v11;
    v34 = (v12 + 1) & v11;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v32 = a2 + 64;
    v33 = v15;
    v16 = *(v14 + 56);
    v31 = (v14 - 8);
    v36 = v13;
    v17 = v35;
    do
    {
      v18 = v16;
      v19 = v16 * v10;
      v20 = *(a2 + 48) + v16 * v10;
      v21 = v14;
      v33(v7, v20, v17);
      v22 = *(a2 + 40);
      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
      v23 = sub_1AE23CBBC();
      (*v31)(v7, v17);
      v24 = v36;
      v25 = v23 & v36;
      if (a1 >= v34)
      {
        if (v25 >= v34 && a1 >= v25)
        {
LABEL_15:
          v14 = v21;
          v16 = v18;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v8 = v32;
          if (a1 < v10 || *(a2 + 56) + 8 * a1 >= *(a2 + 56) + 8 * v10 + 8)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v24 = v36;
          }

          else
          {
            v24 = v36;
            if (a1 != v10)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v36;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v34 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v8 = v32;
      v16 = v18;
LABEL_4:
      v10 = (v10 + 1) & v24;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

uint64_t sub_1ADF6D4DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v12, v13);
      sub_1AE23BECC();
      v14 = sub_1AE23E34C();
      result = sub_1ADDCC35C(v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1ADF6D6A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1AE23CD0C();
      sub_1AE23E31C();
      v12 = v11;
      sub_1AE23CDAC();
      v13 = sub_1AE23E34C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1ADF6D86C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1AE23E31C();

      sub_1AE23CDAC();
      v13 = sub_1AE23E34C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1ADF6DA1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v11, v12);
      sub_1AE23BECC();
      v13 = sub_1AE23E34C();
      result = sub_1ADDCC35C(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1ADF6DBD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v13, v14);
      sub_1AE23BECC();
      v15 = sub_1AE23E34C();
      result = sub_1ADDCC35C(v13, v14);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1ADF6DD9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v12, v13);
      sub_1AE23BECC();
      v14 = sub_1AE23E34C();
      result = sub_1ADDCC35C(v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1ADF6DF54(int64_t a1, uint64_t a2)
{
  v41 = sub_1AE23BFEC();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1AE23D8FC();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1ADDDF604(&qword_1ED96A718, MEMORY[0x1E69695A8]);
      v25 = sub_1AE23CBBC();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}