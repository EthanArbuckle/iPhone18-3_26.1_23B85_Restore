void sub_1D16103AC()
{
  if (!qword_1EC63DBF0)
  {
    sub_1D1610440();
    sub_1D1610510(&qword_1EC63DC00, sub_1D1610440);
    v0 = sub_1D166F6F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DBF0);
    }
  }
}

void sub_1D1610440()
{
  if (!qword_1EC63DBF8)
  {
    type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(255);
    sub_1D1614278(255, &qword_1EC63DBE0, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E62F8]);
    sub_1D1610510(&qword_1EC63D990, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher);
    v0 = sub_1D166F594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DBF8);
    }
  }
}

uint64_t sub_1D1610510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1610558@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a4;
  v72 = a3;
  v74 = a2;
  v75 = a1;
  v83 = a5;
  v73 = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(0);
  v7 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1611CE8();
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1610440();
  v15 = *(v14 - 8);
  v81 = v14;
  v82 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D166F174();
  v18 = *(v84 - 8);
  v70 = *(v18 + 64);
  v19 = MEMORY[0x1EEE9AC00](v84);
  v69 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v65 - v21;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  v23 = Descriptor - 8;
  v24 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D166EF44();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a1;
  v87 = a2;
  sub_1D166EF24();
  sub_1D1601D38();
  v32 = MEMORY[0x1E69E6158];
  v33 = sub_1D1670114();
  (*(v28 + 8))(v31, v27);
  v86 = v33;
  v71 = MEMORY[0x1E69E62F8];
  sub_1D1614278(0, &qword_1EDECAE18, v32, MEMORY[0x1E69E62F8]);
  sub_1D160172C();
  v86 = sub_1D166F9A4();
  v87 = v34;
  v35 = sub_1D166FAB4();
  v67 = v35;
  v37 = v36;
  v66 = v36;
  v38 = *MEMORY[0x1E69A39B8];
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  v26[48] = 1;
  *(v26 + 8) = 0;
  v39 = v18;
  v40 = *(v18 + 56);
  v41 = v84;
  v40(&v26[*(v23 + 52)], 1, 1, v84);
  v42 = &v26[*(v23 + 56)];
  sub_1D166F8D4();
  *v26 = 2;
  *(v26 + 7) = v33;
  *(v26 + 1) = v38;
  v43 = v85;
  sub_1D166F154();
  v72 = v72[2];
  v44 = v72;
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_1D16702D4();

  v86 = 0xD000000000000014;
  v87 = 0x80000001D16770E0;
  MEMORY[0x1D388CCF0](v35, v37);
  v45 = v86;
  v46 = v87;
  sub_1D1611D94(v26, v9);
  v47 = &v9[*(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20)];
  *v47 = v45;
  *(v47 + 1) = v46;
  *&v9[*(v73 + 20)] = v44;
  v48 = v69;
  (*(v39 + 16))(v69, v43, v41);
  v49 = *(v39 + 80);
  v68 = v39;
  v50 = (v49 + 16) & ~v49;
  v51 = (v70 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v39 + 32))(v52 + v50, v48, v41);
  v53 = (v52 + v51);
  v54 = v67;
  v55 = v66;
  *v53 = v67;
  v53[1] = v55;
  v56 = v77;
  *(v52 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) = v77;
  sub_1D15F43AC();
  sub_1D1610510(&qword_1EC63D990, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher);
  v57 = v72;

  v58 = v76;
  sub_1D166F784();

  sub_1D1611ED0(v9, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher);
  v59 = swift_allocObject();
  v59[2] = v54;
  v59[3] = v55;
  v59[4] = v56;
  sub_1D1614278(0, &qword_1EC63DBE0, &type metadata for MedicationSearchCluster, v71);

  v61 = v78;
  v60 = v79;
  sub_1D166F584();

  (*(v80 + 8))(v58, v60);
  v62 = swift_allocObject();
  v62[2] = v54;
  v62[3] = v55;
  v62[4] = v75;
  v62[5] = v74;
  v62[6] = v56;

  v63 = v81;
  sub_1D166F584();

  (*(v82 + 8))(v61, v63);
  (*(v68 + 8))(v85, v84);
  return sub_1D1611ED0(v26, type metadata accessor for HKMedicationClusterQueryDescriptor);
}

uint64_t sub_1D1610CC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = sub_1D166F174();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_1D166F154();
  sub_1D166F104();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v16 = sub_1D166F4E4();
  __swift_project_value_buffer(v16, qword_1EDECB360);

  v17 = sub_1D166F4D4();
  v18 = sub_1D166FF34();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136446722;
    v21 = sub_1D1670754();
    v23 = sub_1D15F7A30(v21, v22, &v26);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1D15F7A30(a2, a3, &v26);
    *(v19 + 22) = 2048;
    *(v19 + 24) = v15;
    _os_log_impl(&dword_1D15E6000, v17, v18, "[%{public}s] searching for [%s] took: %f", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v20, -1, -1);
    MEMORY[0x1D388E250](v19, -1, -1);
  }

  *a4 = v13;
}

void sub_1D1610F38(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v54 = a2;
  v52 = a5;
  v55 = sub_1D166F174();
  v53 = *(v55 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v8 = *a1;
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F154();

  v10 = sub_1D1611F3C(v9);
  v50 = 0;

  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v60 = v10;
  v61 = MEMORY[0x1E69E7CC0];
  v17 = &property descriptor for MedicationView.config;
  v58 = v15;
  v59 = v10 + 64;
LABEL_4:
  while (2)
  {
    if (v14)
    {
LABEL_9:
      v19 = *(*(v10 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
      if (v19 >> 62)
      {
        v20 = sub_1D1670224();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 &= v14 - 1;
      if (!v20)
      {
        continue;
      }

      v66 = v19 & 0xC000000000000001;
      if ((v19 & 0xC000000000000001) != 0)
      {

        v22 = MEMORY[0x1D388D4D0](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v21 = *(v19 + 32);

        v22 = v21;
      }

      v23 = v22;
      v24 = [v22 v17[210]];
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      v25 = sub_1D166FC54();

      if (v25 >> 62)
      {
        v26 = sub_1D1670224();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v26)
      {

        v23 = 0;
      }

      v27 = 0;
      v62 = v19 & 0xFFFFFFFFFFFFFF8;
      v63 = v20;
      v64 = v23;
      v65 = v19;
      while (1)
      {
        if (v66)
        {
          v29 = MEMORY[0x1D388D4D0](v27, v19);
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v27 >= *(v62 + 16))
          {
            goto LABEL_63;
          }

          v29 = *(v19 + 8 * v27 + 32);
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_62;
          }
        }

        v31 = v29;
        v32 = [v31 v17[210]];
        v33 = sub_1D166FC54();

        v34 = v33 >> 62 ? sub_1D1670224() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v34)
        {
          break;
        }

        if (!v31)
        {
          goto LABEL_21;
        }

        if (!v23)
        {

          goto LABEL_49;
        }

        v35 = v23;
        v36 = v31;
        v37 = [v36 ingredientProducts];
        v38 = sub_1D166FC54();

        v39 = [v35 ingredientProducts];
        v40 = sub_1D166FC54();

        LOBYTE(v39) = sub_1D162059C(v38, v40);

        if ((v39 & 1) == 0)
        {
          v41 = v35;
LABEL_52:

          v48 = v36;
          v43 = v36;
LABEL_53:

          v17 = &property descriptor for MedicationView.config;
LABEL_54:

LABEL_55:
          v11 = v59;
          v10 = v60;
          v15 = v58;

          goto LABEL_4;
        }

        v41 = [v36 tradeNameProduct];
        v42 = [v35 tradeNameProduct];
        v43 = v42;
        if (v41)
        {
          if (!v42)
          {

            goto LABEL_52;
          }

          v44 = sub_1D16700A4();

          v17 = &property descriptor for MedicationView.config;
          if ((v44 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {

          if (v43)
          {
            v48 = v35;
            goto LABEL_53;
          }

          v17 = &property descriptor for MedicationView.config;
        }

LABEL_22:
        ++v27;
        v23 = v64;
        v19 = v65;
        if (v30 == v63)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_1D15ED0A0(0, *(v61 + 2) + 1, 1, v61);
          }

          v15 = v58;
          v11 = v59;
          v46 = *(v61 + 2);
          v45 = *(v61 + 3);
          if (v46 >= v45 >> 1)
          {
            v61 = sub_1D15ED0A0((v45 > 1), v46 + 1, 1, v61);
          }

          v47 = v61;
          *(v61 + 2) = v46 + 1;
          *&v47[8 * v46 + 32] = v19;
          v10 = v60;
          goto LABEL_4;
        }
      }

LABEL_21:
      v28 = v23;

      if (v23)
      {

        v31 = 0;
        v23 = v64;
LABEL_49:

        v35 = v31;
        goto LABEL_55;
      }

      goto LABEL_22;
    }

    break;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      v49 = v51;
      *v52 = v61;
      sub_1D16116F4(v49, v54, v56, v57, "[%{public}s] grouping for [%s] took: %f");
      (*(v53 + 8))(v49, v55);
      return;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t sub_1D1611514@<X0>(char **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v21 = a3;
  v22 = a6;
  v12 = sub_1D166F174();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1D166F154();
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC8];
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a4;
  v19[4] = a5;
  v23 = v17;
  swift_bridgeObjectRetain_n();

  sub_1D16140B4(&v23, a4, a5, sub_1D1611F30);

  *a7 = v23;
  sub_1D16116F4(v16, a2, v21, v22, "[%{public}s] sorting for [%s] took: %f");
  return (*(v13 + 8))(v16, v12);
}

void sub_1D16116F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  v8 = sub_1D166F174();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F154();
  sub_1D166F104();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v15 = sub_1D166F4E4();
  __swift_project_value_buffer(v15, qword_1EDECB360);

  v16 = sub_1D166F4D4();
  v17 = sub_1D166FF34();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446722;
    v20 = sub_1D1670754();
    v22 = sub_1D15F7A30(v20, v21, &v24);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D15F7A30(a2, a3, &v24);
    *(v18 + 22) = 2048;
    *(v18 + 24) = v14;
    _os_log_impl(&dword_1D15E6000, v16, v17, a5, v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v19, -1, -1);
    MEMORY[0x1D388E250](v18, -1, -1);
  }
}

uint64_t sub_1D1611950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1614278(0, &qword_1EC63DC20, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6EF0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  swift_beginAccess();
  v16 = *(a3 + 16);
  if (*(v16 + 16) && (v17 = sub_1D16061DC(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    swift_endAccess();
    v26 = a1;
    v27 = a2;
    v24 = a4;
    v25 = a5;
    sub_1D16141A8();
    sub_1D166F994();
    sub_1D16141FC();
    sub_1D166FE84();
    sub_1D166FEB4();
    v19 = sub_1D166FEA4();
    (*(v12 + 8))(v15, v11);
    swift_beginAccess();
    v20 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    sub_1D1608BA0(v19, a1, a2, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v24;
  }

  swift_endAccess();
  return v19;
}

BOOL sub_1D1611B70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  MedicationSearchCluster.primaryName.getter();
  v8 = sub_1D166FB84();

  MedicationSearchCluster.primaryName.getter();
  v9 = sub_1D166FB84();

  v10 = MedicationSearchCluster.primaryName.getter();
  v11 = a5(v10);

  v12 = MedicationSearchCluster.primaryName.getter();
  v13 = a5(v12);

  if ((v8 ^ v9))
  {
    return v8;
  }

  else
  {
    return v11 < v13;
  }
}

void sub_1D1611CE8()
{
  if (!qword_1EC63DC18)
  {
    type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(255);
    sub_1D15F43AC();
    sub_1D1610510(&qword_1EC63D990, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher);
    v0 = sub_1D166F594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DC18);
    }
  }
}

uint64_t sub_1D1611D94(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  (*(*(Descriptor - 8) + 16))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_1D1611DF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_1D166F174() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + v7);

  return sub_1D1610CC4(a1, v9, v10, a2);
}

uint64_t sub_1D1611ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1611F3C(unint64_t a1)
{
  v27 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_29:
    v2 = sub_1D1670224();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D388D4D0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v9 = [v6 routedDoseFormProducts];
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
        v10 = sub_1D166FC54();

        if (v10 >> 62)
        {
          v11 = sub_1D1670224();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v11)
        {
          v12 = v7;
          v11 = v7;
        }

        v14 = sub_1D1606390(v11);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_27;
        }

        v18 = v13;
        if (v4[3] < v17)
        {
          sub_1D16071C4(v17, 1);
          v4 = v27;
          v19 = sub_1D1606390(v11);
          if ((v18 & 1) != (v20 & 1))
          {
            sub_1D1614278(0, &qword_1EC63DB48, &type metadata for MedicationGroupingKey, MEMORY[0x1E69E6720]);
            result = sub_1D1670634();
            __break(1u);
            return result;
          }

          v14 = v19;
        }

        if (v18)
        {

          v5 = (v4[7] + 8 * v14);
          MEMORY[0x1D388CE10]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D166FC84();
          }

          sub_1D166FCC4();
        }

        else
        {
          sub_1D1614278(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D16721C0;
          *(v21 + 32) = v7;
          v4[(v14 >> 6) + 8] |= 1 << v14;
          *(v4[6] + 8 * v14) = v11;
          *(v4[7] + 8 * v14) = v21;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_28;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1D161224C(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  v44 = __dst;
  if (v12 < v14 >> 3)
  {
    if (__dst != __src || &__src[8 * v12] <= __dst)
    {
      v16 = __dst;
      memmove(__dst, __src, 8 * v12);
      v8 = a2;
      __dst = v16;
    }

    v54 = &__dst[8 * v12];
    if (v10 < 8 || v8 >= v7)
    {
      v30 = v9;
      v18 = v44;
      goto LABEL_46;
    }

    v18 = v44;
    v53 = v7;
    while (1)
    {
      v48 = v9;
      __dsta = v8;
      v19 = *v8;
      v20 = *v18;

      MedicationSearchCluster.primaryName.getter();
      v21 = sub_1D166FB84();

      MedicationSearchCluster.primaryName.getter();
      v46 = sub_1D166FB84();

      v22 = MedicationSearchCluster.primaryName.getter();
      v23 = a7(v22);

      v24 = MedicationSearchCluster.primaryName.getter();
      v25 = a7(v24);

      v26 = ((v21 ^ v46) & 1) != 0 ? v21 : v23 < v25;
      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = v48;
      v28 = __dsta;
      v8 = __dsta + 8;
      if (v48 != __dsta)
      {
        goto LABEL_19;
      }

LABEL_20:
      v9 = v27 + 8;
      if (v18 >= v54 || v8 >= v53)
      {
        v30 = v9;
        goto LABEL_46;
      }
    }

    v28 = v18;
    v27 = v48;
    v29 = v48 == v18;
    v18 += 8;
    v8 = __dsta;
    if (v29)
    {
      goto LABEL_20;
    }

LABEL_19:
    *v27 = *v28;
    goto LABEL_20;
  }

  v18 = __dst;
  if (__dst != a2 || &a2[8 * v15] <= __dst)
  {
    memmove(__dst, a2, 8 * v15);
    v8 = a2;
  }

  v54 = &v18[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    v30 = v8;
    goto LABEL_46;
  }

  v49 = v9;
  do
  {
    __dstb = v8;
    v32 = (v8 - 8);
    v7 -= 8;
    v33 = v54;
    v43 = v8 - 8;
    while (1)
    {
      v34 = *(v33 - 1);
      v33 -= 8;
      v35 = v7 + 8;
      v36 = *v32;

      MedicationSearchCluster.primaryName.getter();
      v47 = sub_1D166FB84();

      MedicationSearchCluster.primaryName.getter();
      v45 = sub_1D166FB84();

      v37 = MedicationSearchCluster.primaryName.getter();
      v38 = a7(v37);

      v39 = MedicationSearchCluster.primaryName.getter();
      v40 = a7(v39);

      v41 = ((v47 ^ v45) & 1) != 0 ? v47 : v38 < v40;
      if (v41)
      {
        break;
      }

      if (v35 != v54)
      {
        *v7 = *v33;
      }

      v7 -= 8;
      v54 = v33;
      v32 = v43;
      v18 = v44;
      if (v33 <= v44)
      {
        v54 = v33;
        v30 = __dstb;
        goto LABEL_46;
      }
    }

    v30 = v43;
    if (v35 != __dstb)
    {
      *v7 = *v43;
    }

    v18 = v44;
    if (v54 <= v44)
    {
      break;
    }

    v8 = v43;
  }

  while (v43 > v49);
LABEL_46:
  if (v30 != v18 || v30 >= &v18[(v54 - v18 + (v54 - v18 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v30, v18, 8 * ((v54 - v18) / 8));
  }

  return 1;
}

uint64_t sub_1D16126C8(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v7 = a1;
  v8 = *a1;

  v25 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_1D1626448(v25);
  }

  v20 = v7;
  *v7 = v25;
  v9 = v25 + 16;
  v10 = *(v25 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v20 = v25;

    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v25[16 * v10];
      v7 = *v12;
      v13 = v9;
      v14 = &v9[16 * v10];
      v15 = *(v14 + 1);
      v26 = (v11 + 8 * *v14);
      v27 = (v11 + 8 * *v12);
      v16 = (v11 + 8 * v15);

      sub_1D161224C(v27, v26, v16, a2, a4, a5, a6);
      if (v28)
      {

        *v20 = v25;

        swift_bridgeObjectRelease_n();
        return 1;
      }

      if (v15 < v7)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v13;
      if (v10 - 2 >= *v13)
      {
        goto LABEL_13;
      }

      *v12 = v7;
      *(v12 + 1) = v15;
      v18 = v17 - v10;
      if (v17 < v10)
      {
        goto LABEL_14;
      }

      v9 = v13;
      v10 = v17 - 1;
      memmove(v14, v14 + 16, 16 * v18);
      *v13 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v25;

    __break(1u);
  }

  return result;
}

uint64_t sub_1D16128B4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v166 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  if (v8 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
LABEL_191:
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_227;
    }

    sub_1D16126C8(&v166, v132, a3, a5, a6, a7);

    goto LABEL_193;
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v10 = 0;
  v142 = MEMORY[0x1E69E7CC0];
  v150 = a6;
  v134 = a4;
  while (1)
  {
    v136 = v10;
    if (v10 + 1 >= v8)
    {
      v8 = v10 + 1;
      v41 = v142;
      goto LABEL_72;
    }

    v11 = *a3;
    v12 = *(*a3 + 8 * (v10 + 1));
    v156 = *(*a3 + 8 * v10);
    v157 = v12;

    v147 = sub_1D1611B70(&v157, &v156, a5, a6, a7);
    if (v146)
    {

LABEL_193:

      swift_bridgeObjectRelease_n();
    }

    v13 = v10 + 2;
    v139 = 8 * v10;
    v14 = (v11 + 8 * v10 + 16);
    v144 = v8;
    while (v8 != v13)
    {
      v20 = *(v14 - 1);
      v21 = *v14;
      v22 = *v14 >> 62;
      if (v22)
      {
        if (v21 < 0)
        {
          v26 = *v14;
        }

        else
        {
          v26 = *v14 & 0xFFFFFFFFFFFFFF8;
        }

        if (!sub_1D1670224())
        {
LABEL_26:
          v27 = qword_1EDECB050;

          if (v27 != -1)
          {
            swift_once();
          }

          sub_1D166F004();
          goto LABEL_29;
        }
      }

      else if (!*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {

        v24 = MEMORY[0x1D388D4D0](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_203;
        }

        v23 = *(v21 + 32);

        v24 = v23;
      }

      v25 = v24;
      sub_1D160096C(&v158);

      sub_1D160161C(&v158);
LABEL_29:
      v28 = sub_1D166FB84();

      if (v20 >> 62)
      {
        if (!sub_1D1670224())
        {
LABEL_36:
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          sub_1D166F004();
          goto LABEL_39;
        }
      }

      else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D388D4D0](0, v20);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_204;
        }

        v29 = *(v20 + 32);
      }

      v30 = v29;
      sub_1D160096C(&v159);

      sub_1D160161C(&v159);
LABEL_39:
      v31 = sub_1D166FB84();

      if (v22)
      {
        v151 = v28;
        if (!sub_1D1670224())
        {
LABEL_46:
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          v34 = v31;
          v35 = sub_1D166F004();
          v36 = v37;
          goto LABEL_49;
        }
      }

      else
      {
        v151 = v28;
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1D388D4D0](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_205;
        }

        v32 = *(v21 + 32);
      }

      v33 = v32;
      v34 = v31;
      sub_1D160096C(v160);

      v35 = v160[0];
      v36 = v160[1];

      sub_1D160161C(v160);
LABEL_49:
      v38 = (a7)(v35, v36);

      if (v20 >> 62)
      {
        a6 = v150;
        if (sub_1D1670224())
        {
LABEL_53:
          if ((v20 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x1D388D4D0](0, v20);
          }

          else
          {
            if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v39 = *(v20 + 32);
          }

          v40 = v39;
          sub_1D160096C(v161);

          v15 = v161[0];
          v17 = v161[1];

          sub_1D160161C(v161);
          goto LABEL_11;
        }
      }

      else
      {
        a6 = v150;
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }
      }

      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v15 = sub_1D166F004();
      v17 = v16;
LABEL_11:
      v18 = (a7)(v15, v17);

      if ((v151 ^ v34))
      {
        v19 = v151;
      }

      else
      {
        v19 = v38 < v18;
      }

      ++v13;
      ++v14;
      v8 = v144;
      if (v147 != v19)
      {
        v8 = v13 - 1;
        break;
      }
    }

    v42 = v139;
    v41 = v142;
    a4 = v134;
    v10 = v136;
    if (!v147)
    {
      goto LABEL_72;
    }

    if (v8 < v136)
    {
      goto LABEL_222;
    }

    if (v136 < v8)
    {
      v43 = 8 * v8 - 8;
      v44 = v8;
      v45 = v136;
      do
      {
        if (v45 != --v44)
        {
          v47 = *a3;
          if (!*a3)
          {
            goto LABEL_225;
          }

          v46 = *(v47 + v42);
          *(v47 + v42) = *(v47 + v43);
          *(v47 + v43) = v46;
        }

        ++v45;
        v43 -= 8;
        v42 += 8;
      }

      while (v45 < v44);
    }

LABEL_72:
    v48 = a3[1];
    if (v8 >= v48)
    {
LABEL_81:
      v50 = v8;
      if (v8 < v10)
      {
        goto LABEL_218;
      }

      goto LABEL_82;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_219;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_81;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_220;
    }

    if (v10 + a4 >= v48)
    {
      v49 = a3[1];
    }

    else
    {
      v49 = v10 + a4;
    }

    if (v49 < v10)
    {
      goto LABEL_221;
    }

    if (v8 == v49)
    {
      goto LABEL_81;
    }

    v149 = *a3;
    v105 = (*a3 + 8 * v8 - 8);
    v106 = v10 - v8;
    v141 = v49;
LABEL_134:
    v145 = v8;
    v107 = *(v149 + 8 * v8);
    v137 = v106;
    v138 = v105;
LABEL_135:
    v108 = *v105;
    if (v107 >> 62)
    {
      break;
    }

    if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_137;
    }

LABEL_142:
    v112 = qword_1EDECB050;

    if (v112 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
LABEL_145:
    v113 = sub_1D166FB84();

    if (v108 >> 62)
    {
      v153 = v113;
      if (!sub_1D1670224())
      {
        goto LABEL_152;
      }

LABEL_147:
      if ((v108 & 0xC000000000000001) != 0)
      {
        v114 = MEMORY[0x1D388D4D0](0, v108);
      }

      else
      {
        if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_196;
        }

        v114 = *(v108 + 32);
      }

      v115 = v114;
      sub_1D160096C(&v163);

      sub_1D160161C(&v163);
    }

    else
    {
      v153 = v113;
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_147;
      }

LABEL_152:
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      sub_1D166F004();
    }

    v116 = sub_1D166FB84();

    if (v107 >> 62)
    {
      if (!sub_1D1670224())
      {
        goto LABEL_162;
      }

LABEL_157:
      if ((v107 & 0xC000000000000001) != 0)
      {
        v117 = MEMORY[0x1D388D4D0](0, v107);
      }

      else
      {
        if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_197;
        }

        v117 = *(v107 + 32);
      }

      v118 = v117;
      sub_1D160096C(v164);

      v119 = v164[0];
      v120 = v164[1];

      sub_1D160161C(v164);
    }

    else
    {
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_157;
      }

LABEL_162:
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v119 = sub_1D166F004();
      v120 = v121;
    }

    v122 = (a7)(v119, v120);

    if (v108 >> 62)
    {
      if (!sub_1D1670224())
      {
        goto LABEL_172;
      }

LABEL_167:
      if ((v108 & 0xC000000000000001) != 0)
      {
        v123 = MEMORY[0x1D388D4D0](0, v108);
      }

      else
      {
        if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_198;
        }

        v123 = *(v108 + 32);
      }

      v124 = v123;
      sub_1D160096C(v165);

      v125 = v165[0];
      v126 = v165[1];

      sub_1D160161C(v165);
    }

    else
    {
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_167;
      }

LABEL_172:
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v125 = sub_1D166F004();
      v126 = v127;
    }

    v128 = (a7)(v125, v126);

    if ((v153 ^ v116))
    {
      v129 = v153;
    }

    else
    {
      v129 = v122 < v128;
    }

    if (v129)
    {
      a6 = v150;
      if (!v149)
      {
        goto LABEL_223;
      }

      v130 = *v105;
      v107 = v105[1];
      *v105 = v107;
      v105[1] = v130;
      --v105;
      if (__CFADD__(v106++, 1))
      {
        goto LABEL_133;
      }

      goto LABEL_135;
    }

    a6 = v150;
LABEL_133:
    v8 = v145 + 1;
    v105 = v138 + 1;
    v106 = v137 - 1;
    v50 = v141;
    if (v145 + 1 != v141)
    {
      goto LABEL_134;
    }

    v41 = v142;
    if (v141 < v136)
    {
      goto LABEL_218;
    }

LABEL_82:
    v140 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D15ECC40(0, *(v41 + 2) + 1, 1, v41);
    }

    v52 = *(v41 + 2);
    v51 = *(v41 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v41 = sub_1D15ECC40((v51 > 1), v52 + 1, 1, v41);
    }

    *(v41 + 2) = v53;
    v54 = v41 + 32;
    v55 = &v41[16 * v52 + 32];
    *v55 = v136;
    *(v55 + 1) = v50;
    v166 = v41;
    v152 = *a1;
    if (!*a1)
    {
      goto LABEL_226;
    }

    v142 = v41;
    if (v52)
    {
      v148 = v41 + 32;
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v41 + 4);
          v58 = *(v41 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_102:
          if (v60)
          {
            goto LABEL_209;
          }

          v73 = &v41[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_212;
          }

          v79 = &v54[16 * v56];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_215;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_216;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_123;
          }

          goto LABEL_116;
        }

        v83 = &v41[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_116:
        if (v78)
        {
          goto LABEL_211;
        }

        v86 = &v54[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_214;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_123:
        if (v56 - 1 >= v53)
        {
          goto LABEL_199;
        }

        v94 = *a3;
        if (!*a3)
        {
          goto LABEL_224;
        }

        v95 = &v54[16 * v56 - 16];
        v96 = *v95;
        v97 = v56;
        v98 = &v54[16 * v56];
        v99 = *(v98 + 1);
        v100 = (v94 + 8 * *v95);
        v101 = (v94 + 8 * *v98);
        v102 = (v94 + 8 * v99);

        sub_1D161224C(v100, v101, v102, v152, a5, v150, a7);
        if (v146)
        {

          v166 = v142;

          goto LABEL_193;
        }

        if (v99 < v96)
        {
          goto LABEL_200;
        }

        v41 = v142;
        v103 = *(v142 + 2);
        if (v97 > v103)
        {
          goto LABEL_201;
        }

        *v95 = v96;
        *(v95 + 1) = v99;
        if (v97 >= v103)
        {
          goto LABEL_202;
        }

        v53 = v103 - 1;
        memmove(v98, v98 + 16, 16 * (v103 - 1 - v97));
        *(v142 + 2) = v103 - 1;
        v104 = v103 > 2;
        v54 = v148;
        a6 = v150;
        if (!v104)
        {
LABEL_3:
          v166 = v41;
          goto LABEL_4;
        }
      }

      v61 = &v54[16 * v53];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_207;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_208;
      }

      v68 = &v41[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_210;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_213;
      }

      if (v72 >= v64)
      {
        v90 = &v54[16 * v56];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_217;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_123;
      }

      goto LABEL_102;
    }

LABEL_4:
    v8 = a3[1];
    v10 = v140;
    a4 = v134;
    if (v140 >= v8)
    {
      goto LABEL_191;
    }
  }

  if (!sub_1D1670224())
  {
    goto LABEL_142;
  }

LABEL_137:
  if ((v107 & 0xC000000000000001) != 0)
  {

    v110 = MEMORY[0x1D388D4D0](0, v107);
    goto LABEL_140;
  }

  if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v109 = *(v107 + 32);

    v110 = v109;
LABEL_140:
    v111 = v110;
    sub_1D160096C(&v162);

    sub_1D160161C(&v162);
    goto LABEL_145;
  }

  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_224:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_225:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_226:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_227:

  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1613950(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v44[10] = a5;
  if (a3 == a2)
  {
    return result;
  }

  v38 = *a4;
  v7 = (*a4 + 8 * a3 - 8);
  v8 = result - a3;
LABEL_5:
  v36 = v7;
  v37 = a3;
  v9 = *(v38 + 8 * a3);
  v35 = v8;
  while (1)
  {
    v10 = *v7;
    if (v9 >> 62)
    {
      break;
    }

    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:
    v14 = qword_1EDECB050;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
LABEL_16:
    v15 = sub_1D166FB84();

    if (v10 >> 62)
    {
      result = sub_1D1670224();
      v39 = v15;
      if (!result)
      {
LABEL_23:
        if (qword_1EDECB050 != -1)
        {
          swift_once();
        }

        sub_1D166F004();
        goto LABEL_26;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v15;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1D388D4D0](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v16 = *(v10 + 32);
    }

    v17 = v16;
    sub_1D160096C(&v42);

    sub_1D160161C(&v42);
LABEL_26:
    v18 = sub_1D166FB84();

    if (v9 >> 62)
    {
      result = sub_1D1670224();
      if (!result)
      {
LABEL_33:
        if (qword_1EDECB050 != -1)
        {
          swift_once();
        }

        v21 = sub_1D166F004();
        v22 = v23;
        goto LABEL_36;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_33;
      }
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1D388D4D0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v19 = *(v9 + 32);
    }

    v20 = v19;
    sub_1D160096C(v43);

    v21 = v43[0];
    v22 = v43[1];

    sub_1D160161C(v43);
LABEL_36:
    v24 = a7(v21, v22);

    if (v10 >> 62)
    {
      result = sub_1D1670224();
      if (result)
      {
LABEL_38:
        if ((v10 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1D388D4D0](0, v10);
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v25 = *(v10 + 32);
        }

        v26 = v25;
        sub_1D160096C(v44);

        v27 = v44[0];
        v28 = v44[1];

        sub_1D160161C(v44);
        goto LABEL_46;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_38;
      }
    }

    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    v27 = sub_1D166F004();
    v28 = v29;
LABEL_46:
    v30 = a7(v27, v28);

    if ((v39 ^ v18))
    {
      v31 = v39;
    }

    else
    {
      v31 = v24 < v30;
    }

    if (v31)
    {
      if (!v38)
      {
        goto LABEL_62;
      }

      v32 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v32;
      --v7;
      if (!__CFADD__(v8++, 1))
      {
        continue;
      }
    }

    a3 = v37 + 1;
    v7 = v36 + 1;
    v8 = v35 - 1;
    if (v37 + 1 == a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1D1670224();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x1D388D4D0](0, v9);
    goto LABEL_11;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    v12 = v11;
LABEL_11:
    v13 = v12;
    sub_1D160096C(&v41);

    sub_1D160161C(&v41);
    goto LABEL_16;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1D1613EEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_1D1670584();
  if (result >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {

        sub_1D1613950(0, v8, 1, a1, a2, a3, a4);
        swift_bridgeObjectRelease_n();
      }

      else
      {

        return swift_bridgeObjectRelease_n();
      }
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < -1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = v8 / 2;
  if (v8 <= 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = sub_1D166FCA4();
    *(v12 + 16) = v11;
  }

  v13[0] = (v12 + 32);
  v13[1] = v11;

  sub_1D16128B4(v13, v14, a1, v10, a2, a3, a4);

  *(v12 + 16) = 0;

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D16140B4(char **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D16272A0(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = (v8 + 32);
  v11[1] = v9;

  sub_1D1613EEC(v11, a2, a3, a4);

  *a1 = v8;

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1D16141A8()
{
  result = qword_1EC63DC28;
  if (!qword_1EC63DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DC28);
  }

  return result;
}

unint64_t sub_1D16141FC()
{
  result = qword_1EC63DC30;
  if (!qword_1EC63DC30)
  {
    sub_1D1614278(255, &qword_1EC63DC20, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6EF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DC30);
  }

  return result;
}

void sub_1D1614278(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D16142C8()
{
  v0 = *MEMORY[0x1E69A3A88];
  result = sub_1D166FA04();
  qword_1EDECADB8 = result;
  unk_1EDECADC0 = v2;
  return result;
}

uint64_t sub_1D1614320()
{
  result = sub_1D1614340();
  qword_1EDECAD90 = result;
  return result;
}

uint64_t sub_1D1614340()
{
  if (qword_1EDECADB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDECADB8;
  v1 = unk_1EDECADC0;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D166F9C4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    return v4;
  }

  sub_1D16702D4();

  MEMORY[0x1D388CCF0](v0, v1);
  result = sub_1D1670424();
  __break(1u);
  return result;
}

id static NSUserDefaults.medications.getter()
{
  if (qword_1EDECAD88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDECAD90;

  return v1;
}

uint64_t sub_1D16144C8()
{
  v0 = *MEMORY[0x1E69A39F0];
  result = sub_1D166FA04();
  qword_1EDECAD58 = result;
  unk_1EDECAD60 = v2;
  return result;
}

uint64_t sub_1D1614520()
{
  v0 = *MEMORY[0x1E69A39F8];
  result = sub_1D166FA04();
  qword_1EDECAD40 = result;
  *algn_1EDECAD48 = v2;
  return result;
}

uint64_t sub_1D1614578()
{
  v0 = *MEMORY[0x1E69A39E8];
  result = sub_1D166FA04();
  qword_1EDECAD28 = result;
  unk_1EDECAD30 = v2;
  return result;
}

uint64_t sub_1D16145D0()
{
  v0 = *MEMORY[0x1E69A3A60];
  result = sub_1D166FA04();
  qword_1EDECADA0 = result;
  *algn_1EDECADA8 = v2;
  return result;
}

uint64_t sub_1D1614628()
{
  v0 = *MEMORY[0x1E69A39D8];
  result = sub_1D166FA04();
  qword_1EDECAD08 = result;
  *algn_1EDECAD10 = v2;
  return result;
}

uint64_t sub_1D1614680()
{
  v0 = *MEMORY[0x1E69A39E0];
  result = sub_1D166FA04();
  qword_1EDEC9F90 = result;
  *algn_1EDEC9F98 = v2;
  return result;
}

uint64_t sub_1D16146D8()
{
  v0 = *MEMORY[0x1E69A3A30];
  result = sub_1D166FA04();
  qword_1EDEC9F38 = result;
  unk_1EDEC9F40 = v2;
  return result;
}

uint64_t sub_1D1614730()
{
  v0 = *MEMORY[0x1E69A3A28];
  result = sub_1D166FA04();
  qword_1EDEC9F00 = result;
  *algn_1EDEC9F08 = v2;
  return result;
}

uint64_t sub_1D1614788()
{
  v0 = *MEMORY[0x1E69A3A40];
  result = sub_1D166FA04();
  qword_1EC63DC38 = result;
  unk_1EC63DC40 = v2;
  return result;
}

uint64_t sub_1D16147E0()
{
  v0 = *MEMORY[0x1E69A3A38];
  result = sub_1D166FA04();
  qword_1EC63DC48 = result;
  unk_1EC63DC50 = v2;
  return result;
}

uint64_t sub_1D1614838()
{
  v0 = *MEMORY[0x1E69A3A20];
  result = sub_1D166FA04();
  qword_1EDEC9F58 = result;
  unk_1EDEC9F60 = v2;
  return result;
}

uint64_t sub_1D1614890()
{
  v0 = *MEMORY[0x1E69A3A48];
  result = sub_1D166FA04();
  qword_1EDECAD70 = result;
  unk_1EDECAD78 = v2;
  return result;
}

uint64_t sub_1D16148E8()
{
  v0 = *MEMORY[0x1E69A39C8];
  result = sub_1D166FA04();
  qword_1EDEC9F18 = result;
  unk_1EDEC9F20 = v2;
  return result;
}

uint64_t sub_1D1614940()
{
  v0 = *MEMORY[0x1E69A3A58];
  result = sub_1D166FA04();
  qword_1EDEC9F70 = result;
  unk_1EDEC9F78 = v2;
  return result;
}

uint64_t sub_1D1614998(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_1D16149FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  *a2 = v5;
  return result;
}

uint64_t sub_1D1614A7C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_1D166F744();
}

uint64_t sub_1D1614AF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  return v1;
}

uint64_t sub_1D1614B68(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D1614C04(uint64_t a1, uint64_t *a2)
{
  sub_1D1615CA0(0, &qword_1EC63DC58, sub_1D1614E64, MEMORY[0x1E695C060]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(v6 + 16);
  v13(&v16 - v11, a1, v5);
  v14 = *a2;
  v13(v10, v12, v5);
  swift_beginAccess();
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  sub_1D166F724();
  swift_endAccess();
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_1D1614DCC()
{
  swift_beginAccess();
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

void sub_1D1614E64()
{
  if (!qword_1EDEC9DD8)
  {
    sub_1D15EE5A8(255, &qword_1EDECACB0, 0x1E69A3B10);
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC9DD8);
    }
  }
}

uint64_t MedicationDoseEvent.__allocating_init(_:medicationDetailProvider:medication:)(void *a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  MedicationDoseEvent.init(_:medicationDetailProvider:medication:)(a1, a2, a3);
  return v9;
}

uint64_t MedicationDoseEvent.init(_:medicationDetailProvider:medication:)(void *a1, uint64_t a2, void *a3)
{
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent__medication;
  v23 = 0;
  sub_1D1614E64();
  sub_1D166F704();
  (*(v9 + 32))(v3 + v13, v12, v8);
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent_medicationDetailProvider) = 0;
  *(v3 + 16) = a1;
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent_medicationDetailProvider) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a3;

  v14 = a1;

  v15 = a3;
  sub_1D166F744();
  if (a2)
  {

    v16 = [v14 medicationIdentifier];
    v17 = sub_1D166FA04();
    v19 = v18;

    sub_1D1615670(v20, v17, v19, a2, &unk_1F4D4BF10, sub_1D1615E58, &block_descriptor_25);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1D1615174(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(v3 + 16) medicationIdentifier];
  v8 = sub_1D166FA04();
  v10 = v9;

  if (v8 == a2 && v10 == a3)
  {

    goto LABEL_8;
  }

  v12 = sub_1D16705D4();

  if (v12)
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();

    v14 = a1;
    return sub_1D166F744();
  }

  return result;
}

unint64_t sub_1D16152E8()
{
  sub_1D16702D4();

  v1 = *(v0 + 16);
  v2 = [v1 description];
  v3 = sub_1D166FA04();
  v5 = v4;

  MEMORY[0x1D388CCF0](v3, v5);

  MEMORY[0x1D388CCF0](0x7461636964656D20, 0xED0000203A6E6F69);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  sub_1D1614E64();
  v6 = sub_1D166FA74();
  MEMORY[0x1D388CCF0](v6);

  return 0xD000000000000015;
}

uint64_t MedicationDoseEvent.deinit()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent__medication;
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent_medicationDetailProvider);

  return v0;
}

uint64_t MedicationDoseEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent__medication;
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent_medicationDetailProvider);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1D16155F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MedicationDoseEvent();
  result = sub_1D166F604();
  *a1 = result;
  return result;
}

uint64_t sub_1D1615670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v25 = a2;
  v10 = sub_1D166F7E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D166F814();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a4 + 72);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v22 = v25;
  v21 = v26;
  v20[2] = v19;
  v20[3] = v22;
  v20[4] = a3;
  v20[5] = a1;
  aBlock[4] = v21;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = v27;
  v23 = _Block_copy(aBlock);

  sub_1D166F804();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D1615D28();
  sub_1D1615CA0(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v18, v14, v23);
  _Block_release(v23);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v29);
}

uint64_t _s27HealthMedicationsExperience19MedicationDoseEventC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (sub_1D16700A4())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    if (v8)
    {
      sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
      v6 = sub_1D16700A4();
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t type metadata accessor for MedicationDoseEvent()
{
  result = qword_1EDECA810;
  if (!qword_1EDECA810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1615B0C()
{
  sub_1D1615CA0(319, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D1615CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1615D28()
{
  result = qword_1EDECA030;
  if (!qword_1EDECA030)
  {
    sub_1D166F7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA030);
  }

  return result;
}

unint64_t sub_1D1615D80()
{
  result = qword_1EDEC9FF0;
  if (!qword_1EDEC9FF0)
  {
    sub_1D1615CA0(255, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9FF0);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1D1615E5C()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D1615EA8(void *a1)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  v7 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
  v8 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
  v9 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
  if (v7)
  {
    sub_1D1615FB0(v6, *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8], *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16], *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24]);
    sub_1D15F301C(v8, v9);
    sub_1D1615FFC(v6, v7, v8, v9);
    if (v9 != 1)
    {
      [v1 setNeedsDisplay];

      sub_1D15F3228(v8, v9);
      return;
    }
  }

  else
  {
    sub_1D1615FB0(v6, 0, *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16], *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24]);
    sub_1D1615FFC(v6, 0, v8, v9);
  }
}

void sub_1D1615FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_1D15F301C(a3, a4);
  }
}

void sub_1D1615FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_1D15F3228(a3, a4);
  }
}

void (*sub_1D1616048(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D16160AC;
}

void sub_1D16160AC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (*(a1 + 24) + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    if (v6)
    {
      sub_1D1615FB0(v9, v4[1], v4[2], v4[3]);
      sub_1D15F301C(v7, v8);
      sub_1D1615FFC(v5, v6, v7, v8);
      if (v8 != 1)
      {
        [*(a1 + 24) setNeedsDisplay];

        sub_1D15F3228(v7, v8);
      }
    }

    else
    {
      sub_1D1615FB0(v9, 0, v4[2], v4[3]);

      sub_1D1615FFC(v5, 0, v7, v8);
    }
  }
}

char *MedicationFragmentLayer.init(fragment:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color] = 0;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for MedicationFragmentLayer();
  v7 = objc_msgSendSuper2(&v22, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 mainScreen];
  [v10 scale];
  v12 = v11;

  [v9 setContentsScale_];
  v13 = [v8 mainScreen];
  [v13 scale];
  v15 = v14;

  [v9 setRasterizationScale_];
  [v9 setNeedsDisplayOnBoundsChange_];

  v16 = &v9[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  v17 = *&v9[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  v18 = *&v9[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
  v19 = *&v9[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
  v20 = *&v9[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
  *v16 = v2;
  *(v16 + 1) = v3;
  *(v16 + 2) = v4;
  *(v16 + 3) = v5;
  sub_1D1615FFC(v17, v18, v19, v20);

  return v9;
}

id MedicationFragmentLayer.__allocating_init(layer:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

char *MedicationFragmentLayer.init(layer:)(uint64_t *a1)
{
  v3 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = sub_1D16705C4();
  v26.receiver = v1;
  v26.super_class = type metadata accessor for MedicationFragmentLayer();
  v5 = objc_msgSendSuper2(&v26, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainScreen];
  [v8 scale];
  v10 = v9;

  [v7 setContentsScale_];
  v11 = [v6 mainScreen];
  [v11 scale];
  v13 = v12;

  [v7 setRasterizationScale_];
  [v7 setNeedsDisplayOnBoundsChange_];

  sub_1D15F928C(a1, v25);
  if (swift_dynamicCast())
  {
    v14 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    v15 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
    v16 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
    v17 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
    sub_1D1615FB0(v14, v15, v16, v17);

    __swift_destroy_boxed_opaque_existential_0(a1);
    if (v15)
    {
      v18 = &v7[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
      v19 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
      v20 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
      v21 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
      v22 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
      *v18 = v14;
      v18[1] = v15;
      v18[2] = v16;
      v18[3] = v17;
      sub_1D1615FFC(v19, v20, v21, v22);
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

void sub_1D16166C4(CGContext *a1)
{
  UIGraphicsPushContext(a1);
  v2 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  v3 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];

  sub_1D15F301C(v5, v6);
  if (qword_1EDECAC90 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDECAC98;
  v9 = sub_1D166F9C4();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8 withConfiguration:0];

  sub_1D1615FFC(v4, v3, v5, v6);
  if (v10)
  {
    [v1 bounds];
    [v10 drawInRect_];
    v11 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
    swift_beginAccess();
    v12 = *&v1[v11];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 colorWithAlphaComponent_];
      [v14 setFill];

      [v1 bounds];
      UIRectFillUsingBlendMode(v16, kCGBlendModePlusDarker);
      [v1 bounds];
      [v10 drawInRect:22 blendMode:? alpha:?];
    }

    else
    {
    }
  }

  else
  {
LABEL_7:
  }

  UIGraphicsPopContext();
}

id MedicationFragmentLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationFragmentLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationFragmentLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedicationDoseDaySummary.loggedDoses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MedicationDoseDaySummary.scheduledDoses.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void sub_1D1616C20()
{
  qword_1EDECD808 = MEMORY[0x1E69E7CC0];
  unk_1EDECD810 = MEMORY[0x1E69E7CC0];
  word_1EDECD818 = 0;
}

double sub_1D1616C3C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_1D1616CCC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_1D166F744();
}

uint64_t sub_1D1616D6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();
}

uint64_t sub_1D1616DE4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D1616E6C(uint64_t a1, uint64_t *a2)
{
  sub_1D161E614(0, &unk_1EC63DCF0, MEMORY[0x1E695C060]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(v6 + 16);
  v13(&v16 - v11, a1, v5);
  v14 = *a2;
  v13(v10, v12, v5);
  swift_beginAccess();
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  sub_1D166F724();
  swift_endAccess();
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_1D1617010()
{
  swift_beginAccess();
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

char *MedicationDoseDaySummaryProvider.__allocating_init(healthStore:date:medicationDetailProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1D161DAD4(a1, a2, a3);

  return v8;
}

char *MedicationDoseDaySummaryProvider.init(healthStore:date:medicationDetailProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D161DAD4(a1, a2, a3);

  return v4;
}

id MedicationDoseDaySummaryProvider.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery])
  {
    [*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore] stopQuery_];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDoseDaySummaryProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1617338(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D166F174();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1D161E244(&qword_1EC63DC78, MEMORY[0x1E6969530]);
  v11 = sub_1D166F9B4();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery))
    {
      [*(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore) stopQuery_];
    }

    v10(v8, a1, v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
    sub_1D1617524();
  }
}

void sub_1D1617524()
{
  v37 = sub_1D166F2D4();
  v35 = *(v37 - 1);
  v1 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D166F174();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  v38 = v0;
  swift_beginAccess();
  v16 = v5[2];
  v16(v12, v0 + v15, v4);
  sub_1D166F2B4();
  v36 = v14;
  sub_1D166F204();
  (*(v35 + 8))(v3, v37);
  v17 = v5[1];
  v17(v12, v4);
  v37 = v17;
  v16(v9, v38 + v15, v4);
  Date.endOfDay()(v12);
  v17(v9, v4);
  v18 = objc_opt_self();
  v19 = sub_1D166F124();
  v20 = v12;
  v21 = sub_1D166F124();
  v22 = [v18 predicateForSamplesWithStartDate:v19 endDate:v21 options:0];

  v23 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate;
  v24 = v38;
  v25 = *(v38 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate);
  *(v38 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate) = v22;

  sub_1D15EE5A8(0, &unk_1EDECADD0, 0x1E696C3D0);
  v26 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v27 = *(v24 + v23);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = objc_allocWithZone(MEMORY[0x1E696C2E8]);
  aBlock[4] = sub_1D161E7B4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D161D9A8;
  aBlock[3] = &block_descriptor_107;
  v30 = _Block_copy(aBlock);

  v31 = [v29 initWithSampleType:v26 predicate:v27 updateHandler:v30];

  _Block_release(v30);

  [*(v24 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore) executeQuery_];
  v32 = v37;
  v37(v20, v4);
  v32(v36, v4);
  v33 = *(v24 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery);
  *(v24 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery) = v31;
}

void sub_1D161795C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v27 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a4)
    {
      if (qword_1EDECB358 != -1)
      {
        swift_once();
      }

      v11 = sub_1D166F4E4();
      __swift_project_value_buffer(v11, qword_1EDECB360);
      v12 = v10;
      v13 = a4;
      v14 = sub_1D166F4D4();
      v15 = sub_1D166FF44();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27[1] = a4;
        v28 = v18;
        *v16 = 138412546;
        *(v16 + 4) = v12;
        *v17 = v10;
        *(v16 + 12) = 2080;
        v19 = v12;
        v20 = a4;
        sub_1D161E5A8(0, &qword_1EC63DCE8, sub_1D15F9218, MEMORY[0x1E69E6720]);
        v21 = sub_1D166FA74();
        v23 = sub_1D15F7A30(v21, v22, &v28);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_1D15E6000, v14, v15, "[%@] Error fetching medication dose event samples HKObserverQuery returned error: %s", v16, 0x16u);
        sub_1D161E4D8(v17, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
        MEMORY[0x1D388E250](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1D388E250](v18, -1, -1);
        MEMORY[0x1D388E250](v16, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v24 = sub_1D166FD84();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v10;
      v26 = v10;
      sub_1D1617D5C(0, 0, v8, &unk_1D16733A8, v25);

      sub_1D161DF10(v8);
    }
  }
}

uint64_t sub_1D1617CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D15FFFCC;

  return sub_1D1619838();
}

uint64_t sub_1D1617D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D161E668(a3, v27 - v11);
  v13 = sub_1D166FD84();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D161DF10(v12);
  }

  else
  {
    sub_1D166FD74();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D166FD14();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D166FA94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1D1618020()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_scheduleControl);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;
  v6[4] = sub_1D161E5A0;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D1618744;
  v6[3] = &block_descriptor_87;
  v5 = _Block_copy(v6);

  [v2 fetchAllSchedulesWithCompletion_];
  _Block_release(v5);
}

void sub_1D1618128(uint64_t a1, void *a2)
{
  v4 = sub_1D166F7E4();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D166F814();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v14 = Strong;
    sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);

    v15 = sub_1D166FFC4();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a1;
    aBlock[4] = sub_1D161E60C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1618700;
    aBlock[3] = &block_descriptor_93;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    sub_1D166F804();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
    sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1615D80();
    sub_1D1670194();
    MEMORY[0x1D388D1B0](0, v12, v7, v17);
    _Block_release(v17);

    (*(v33 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v19 = sub_1D166F4E4();
    __swift_project_value_buffer(v19, qword_1EDECB360);
    v20 = a2;
    v21 = sub_1D166F4D4();
    v22 = sub_1D166FF44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315394;
      v25 = sub_1D1670754();
      v27 = sub_1D15F7A30(v25, v26, aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      aBlock[9] = a2;
      v28 = a2;
      sub_1D161E5A8(0, &qword_1EC63DCE8, sub_1D15F9218, MEMORY[0x1E69E6720]);
      v29 = sub_1D166FA74();
      v31 = sub_1D15F7A30(v29, v30, aBlock);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1D15E6000, v21, v22, "[%s] Could not load schedules with error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v24, -1, -1);
      MEMORY[0x1D388E250](v23, -1, -1);
    }
  }
}

uint64_t sub_1D1618600(void *a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  if (a2 >> 62)
  {
    sub_1D1670224();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  return sub_1D166F744();
}

uint64_t sub_1D1618700(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1D1618744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EDECACF0, 0x1E69A3AD0);
    v4 = sub_1D166FC54();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1D16187E8()
{
  v1[2] = v0;
  sub_1D161E330(0, &unk_1EDECAE30, &qword_1EDECACA0, 0x1E696C3A8, MEMORY[0x1E696B3D0]);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16188D4, 0, 0);
}

uint64_t sub_1D16188D4()
{
  v20 = v0[5];
  v1 = v0[2];
  v2 = MEMORY[0x1E696B3A0];
  sub_1D161E534(0, &qword_1EDECABA8, &qword_1EDECAE40, MEMORY[0x1E696B3A0]);
  sub_1D161E330(0, &qword_1EDECAE40, &qword_1EDECACA0, 0x1E696C3A8, v2);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  sub_1D15EE5A8(0, &unk_1EDECADD0, 0x1E696C3D0);
  v6 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v7 = *(v1 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate);
  sub_1D15EE5A8(0, &qword_1EDECACA0, 0x1E696C3A8);
  v8 = v7;
  sub_1D166F8F4();

  v9 = MEMORY[0x1E69682B8];
  sub_1D161E534(0, &unk_1EDECABB0, &qword_1EDECB308, MEMORY[0x1E69682B8]);
  sub_1D161E330(0, &qword_1EDECB308, &qword_1EDECACA0, 0x1E696C3A8, v9);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  sub_1D166F904();
  v14 = *(v1 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore);
  v15 = *(MEMORY[0x1E696B3C8] + 4);
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1D1618BDC;
  v17 = v0[5];
  v18 = v0[3];

  return MEMORY[0x1EEDC7698](v14, v18);
}

uint64_t sub_1D1618BDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_1D1618DC4;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_1D1618D04;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1618D04()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1D15FCECC(v0[8]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1D1618DC4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_1D1618E44()
{
  v1[14] = v0;
  sub_1D161E5A8(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_1D161E330(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v1[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_1D161E330(0, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
  v1[19] = v6;
  v7 = *(v6 - 8);
  v1[20] = v7;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v9 = sub_1D166F2D4();
  v1[22] = v9;
  v10 = *(v9 - 8);
  v1[23] = v10;
  v11 = *(v10 + 64) + 15;
  v1[24] = swift_task_alloc();
  v12 = sub_1D166F174();
  v1[25] = v12;
  v13 = *(v12 - 8);
  v1[26] = v13;
  v14 = *(v13 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16190C4, 0, 0);
}

uint64_t sub_1D16190C4()
{
  v1 = v0[28];
  v32 = v0[29];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v22 = v0[22];
  v23 = v0[27];
  v24 = v0[21];
  v25 = v0[20];
  v27 = v0[19];
  v28 = v0[18];
  v29 = v0[17];
  v30 = v0[16];
  v31 = v0[15];
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  v7 = v0[14];
  swift_beginAccess();
  v8 = v2;
  v21 = *(v2 + 16);
  v9 = v7;
  v26 = v7;
  v21(v1, v7 + v6, v4);
  sub_1D166F2B4();
  sub_1D166F204();
  (*(v5 + 8))(v3, v22);
  v10 = *(v8 + 8);
  v0[30] = v10;
  v0[31] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v4);
  v21(v1, v9 + v6, v4);
  Date.endOfDay()(v23);
  v10(v1, v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  v21(v30, v32, v4);
  v12 = *(v8 + 56);
  v12(v30, 0, 1, v4);
  v21(v31, v23, v4);
  v12(v31, 0, 1, v4);
  sub_1D15FB948();
  v13 = *(v25 + 72);
  v14 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D16721D0;
  (*(v25 + 16))(v15 + v14, v24, v27);
  v12(v28, 1, 1, v4);
  v16 = v29[7];
  v12(v28 + v16, 1, 1, v4);
  v17 = v29[9];
  v18 = (v28 + v29[8]);
  v19 = v28 + v29[10];
  sub_1D166F8D4();
  sub_1D15FB9CC(v30, v28);
  sub_1D15FB9CC(v31, v28 + v16);
  *v18 = 0;
  v18[1] = 0;
  *(v28 + v17) = v15;
  v0[32] = *(v26 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore);

  return MEMORY[0x1EEE6DFA0](sub_1D16193E8, 0, 0);
}

uint64_t sub_1D16193E8()
{
  v1 = v0[32];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_1D1619498;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1619498()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1D16196FC;
  }

  else
  {
    *(v1 + 272) = *(v1 + 104);
    v4 = sub_1D16195BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D16195BC()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[18];
  v12 = v0[16];
  v13 = v0[15];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v2(v5, v6);
  v2(v3, v6);
  sub_1D161E4D8(v8, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);

  v9 = v0[1];
  v10 = v0[34];

  return v9(v10);
}

uint64_t sub_1D16196FC()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[18];
  v12 = v0[16];
  v13 = v0[15];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v2(v5, v6);
  v2(v3, v6);
  sub_1D161E4D8(v8, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);

  v9 = v0[1];
  v10 = v0[33];

  return v9();
}

uint64_t sub_1D1619838()
{
  *(v1 + 1656) = v0;
  *(v1 + 1704) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1D16198A8, 0, 0);
}

uint64_t sub_1D16198A8()
{
  v18 = v0;
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v1 = sub_1D166F4E4();
  v0[219] = __swift_project_value_buffer(v1, qword_1EDECB360);
  v2 = sub_1D166F4D4();
  v3 = sub_1D166FF64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[213];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136446210;
    v7 = sub_1D1670754();
    v9 = sub_1D15F7A30(v7, v8, v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D15E6000, v2, v3, "[%{public}s] Aquiring database assertion", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D388E250](v6, -1, -1);
    MEMORY[0x1D388E250](v5, -1, -1);
  }

  v10 = v0[213];
  v11 = *(v0[207] + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore);
  v17[0] = 0x6C7070612E6D6F63;
  v17[1] = 0xEA00000000002E65;
  v12 = sub_1D1670754();
  MEMORY[0x1D388CCF0](v12);

  v13 = sub_1D166F9C4();
  v0[225] = v13;

  v0[162] = v0;
  v0[167] = v0 + 183;
  v0[163] = sub_1D1619B4C;
  v14 = swift_continuation_init();
  sub_1D161E298();
  v0[182] = v15;
  v0[179] = v14;
  v0[175] = MEMORY[0x1E69E9820];
  v0[176] = 1107296256;
  v0[177] = sub_1D161AF1C;
  v0[178] = &block_descriptor_48;
  [v11 requestDatabaseAccessibilityAssertion:v13 timeout:v0 + 175 completion:10.0];

  return MEMORY[0x1EEE6DEC8](v0 + 162);
}

uint64_t sub_1D1619B4C()
{
  v1 = *v0;
  v2 = *(*v0 + 1328);
  *(*v0 + 1848) = v2;
  if (v2)
  {
    v3 = sub_1D161A400;
  }

  else
  {
    v3 = sub_1D1619C5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1619C5C()
{
  v19 = v0;
  v1 = v0[225];
  v2 = v0[219];
  v0[237] = v0[183];

  v3 = sub_1D166F4D4();
  v4 = sub_1D166FF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[213];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    v8 = sub_1D1670754();
    v10 = sub_1D15F7A30(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D15E6000, v3, v4, "[%{public}s] Took assertion and beginning query for underlying data.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1D388E250](v7, -1, -1);
    MEMORY[0x1D388E250](v6, -1, -1);
  }

  v11 = v0[207];
  v12 = swift_allocObject();
  v0[238] = v12;
  *(v12 + 16) = v11;
  v13 = v11;
  v14 = MEMORY[0x1E69E62F8];
  sub_1D161E330(0, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v15 = swift_allocObject();
  v0[239] = v15;
  *(v15 + 16) = v13;
  v16 = v13;
  sub_1D161E330(0, &qword_1EDECADF0, &qword_1EDECACD0, 0x1E69A3AF0, v14);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 195, sub_1D1619EBC, v0 + 170);
}

uint64_t sub_1D1619EBC()
{
  v1[240] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 201, sub_1D161A628, v1 + 184);
  }

  else
  {
    v1[241] = v1[195];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 201, sub_1D1619F70, v1 + 196);
  }
}

uint64_t sub_1D1619F70()
{
  v1[242] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D161A900, 0, 0);
  }

  else
  {
    v2 = v1[201];
    v1[243] = v2;

    v3 = swift_task_alloc();
    v1[244] = v3;
    *v3 = v1;
    v3[1] = sub_1D161A06C;
    v4 = v1[241];
    v5 = v1[207];

    return sub_1D161B110(v4, v2);
  }
}

uint64_t sub_1D161A06C()
{
  v2 = *v1;
  v3 = *(*v1 + 1952);
  v9 = *v1;
  *(*v1 + 1960) = v0;

  if (v0)
  {
    v4 = *(v2 + 1944);
    v5 = *(v2 + 1928);

    return MEMORY[0x1EEE6DEB0](v2 + 656, v2 + 1608, sub_1D161AC44, v2 + 1712);
  }

  else
  {
    v6 = *(v2 + 1944);
    v7 = *(v2 + 1928);

    return MEMORY[0x1EEE6DFA0](sub_1D161A1D4, 0, 0);
  }
}

uint64_t sub_1D161A1D4()
{
  v12 = v0;
  v1 = *(v0 + 1752);
  v2 = sub_1D166F4D4();
  v3 = sub_1D166FF64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1704);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_1D1670754();
    v9 = sub_1D15F7A30(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D15E6000, v2, v3, "[%{public}s] Finished query and update handler for underlying data. Invalidating assertion.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D388E250](v6, -1, -1);
    MEMORY[0x1D388E250](v5, -1, -1);
  }

  [*(v0 + 1896) invalidate];

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1608, sub_1D161A330, v0 + 1808);
}

uint64_t sub_1D161A388()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1904);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D161A400()
{
  v21 = v0;
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1800);
  swift_willThrow();

  v3 = *(v0 + 1848);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1656);
  v6 = v3;
  v7 = sub_1D166F4D4();
  v8 = sub_1D166FF44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1656);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    *(v0 + 1512) = v3;
    v13 = v9;
    v14 = v3;
    sub_1D15F9218();
    v15 = sub_1D166FA74();
    v17 = sub_1D15F7A30(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1D15E6000, v7, v8, "[%@] Error fetching medication dose data error: %s", v10, 0x16u);
    sub_1D161E4D8(v11, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D388E250](v12, -1, -1);
    MEMORY[0x1D388E250](v10, -1, -1);
  }

  else
  {
  }

  sub_1D15E9178(0);
  sub_1D15E9178(0);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D161A680()
{
  v21 = v0;

  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1656);
  v6 = v1;
  v7 = sub_1D166F4D4();
  v8 = sub_1D166FF44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1656);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    *(v0 + 1512) = v1;
    v13 = v9;
    v14 = v1;
    sub_1D15F9218();
    v15 = sub_1D166FA74();
    v17 = sub_1D15F7A30(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1D15E6000, v7, v8, "[%@] Error fetching medication dose data error: %s", v10, 0x16u);
    sub_1D161E4D8(v11, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D388E250](v12, -1, -1);
    MEMORY[0x1D388E250](v10, -1, -1);

    sub_1D15E9178(&unk_1D1673308);
  }

  else
  {

    sub_1D15E9178(&unk_1D1673308);
  }

  sub_1D15E9178(&unk_1D1673318);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D161A900()
{
  v1 = *(v0 + 1928);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1608, sub_1D161A96C, v0 + 1616);
}

uint64_t sub_1D161A9C4()
{
  v21 = v0;

  v1 = *(v0 + 1936);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1656);
  v6 = v1;
  v7 = sub_1D166F4D4();
  v8 = sub_1D166FF44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1656);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    *(v0 + 1512) = v1;
    v13 = v9;
    v14 = v1;
    sub_1D15F9218();
    v15 = sub_1D166FA74();
    v17 = sub_1D15F7A30(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1D15E6000, v7, v8, "[%@] Error fetching medication dose data error: %s", v10, 0x16u);
    sub_1D161E4D8(v11, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D388E250](v12, -1, -1);
    MEMORY[0x1D388E250](v10, -1, -1);

    sub_1D15E9178(&unk_1D1673308);
  }

  else
  {

    sub_1D15E9178(&unk_1D1673308);
  }

  sub_1D15E9178(&unk_1D1673318);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D161AC9C()
{
  v21 = v0;

  v1 = *(v0 + 1960);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1656);
  v6 = v1;
  v7 = sub_1D166F4D4();
  v8 = sub_1D166FF44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1656);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    *(v0 + 1512) = v1;
    v13 = v9;
    v14 = v1;
    sub_1D15F9218();
    v15 = sub_1D166FA74();
    v17 = sub_1D15F7A30(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1D15E6000, v7, v8, "[%@] Error fetching medication dose data error: %s", v10, 0x16u);
    sub_1D161E4D8(v11, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D388E250](v12, -1, -1);
    MEMORY[0x1D388E250](v10, -1, -1);

    sub_1D15E9178(&unk_1D1673308);
  }

  else
  {

    sub_1D15E9178(&unk_1D1673308);
  }

  sub_1D15E9178(&unk_1D1673318);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D161AF1C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
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

uint64_t sub_1D161AFE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D15FE75C;

  return sub_1D16187E8();
}

uint64_t sub_1D161B07C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D15FE560;

  return sub_1D1618E44();
}

uint64_t sub_1D161B110(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_1D166F174();
  v3[37] = v4;
  v5 = *(v4 - 8);
  v3[38] = v5;
  v6 = *(v5 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v7 = sub_1D166F7E4();
  v3[41] = v7;
  v8 = *(v7 - 8);
  v3[42] = v8;
  v9 = *(v8 + 64) + 15;
  v3[43] = swift_task_alloc();
  v10 = sub_1D166F814();
  v3[44] = v10;
  v11 = *(v10 - 8);
  v3[45] = v11;
  v12 = *(v11 + 64) + 15;
  v3[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D161B298, 0, 0);
}

uint64_t sub_1D161B298()
{
  v3 = MEMORY[0x1E69E7CC0];
  v0[29] = MEMORY[0x1E69E7CC0];
  v4 = v0[34];
  v0[30] = v3;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v6 = sub_1D1670224();
    v4 = v0[34];
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[47] = v5;
  v0[48] = v6;
  v7 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_medicationDetailProvider;
  v0[49] = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_medicationDetailProvider;
  v0[50] = v3;
  v0[53] = v3;
  v0[54] = v3;
  v0[51] = v3;
  v0[52] = v3;
  if (v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
LABEL_38:
      v8 = MEMORY[0x1D388D4D0](0);
      v7 = v0[49];
      goto LABEL_7;
    }

    if (*(v5 + 16))
    {
      v8 = *(v4 + 32);
LABEL_7:
      v0[55] = v8;
      v0[56] = 1;
      v0[57] = *(v0[36] + v7);
      v9 = [v8 medicationIdentifier];
      v10 = sub_1D166FA04();
      v12 = v11;

      v0[58] = v12;
      v13 = swift_task_alloc();
      v0[59] = v13;
      *v13 = v0;
      v14 = sub_1D161B980;
LABEL_21:
      v13[1] = v14;

      return sub_1D1644B00(v10, v12);
    }

    __break(1u);
LABEL_40:
    v46 = sub_1D1670224();
    v0[62] = v46;
    if (!v46)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  v15 = v0[35];
  if (v15 >> 62)
  {
    goto LABEL_40;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[62] = v16;
  if (!v16)
  {
LABEL_41:
    v18 = v0 + 53;
    goto LABEL_42;
  }

LABEL_10:
  v17 = v0[53];
  v18 = v0[51];
  v19 = v0[35];
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1D388D4D0](0);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;
  v0[63] = v20;
  v0[64] = 1;
  v1 = &property descriptor for MedicationView.config;
  v22 = [v20 identifier];
  v23 = sub_1D166FA04();
  v25 = v24;

  v0[65] = v23;
  v0[66] = v25;
  v2 = &property descriptor for MedicationView.config;
  v26 = [v21 doses];
  sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
  v7 = sub_1D166FC54();
  v0[67] = v7;

  if (v7 >> 62)
  {
LABEL_46:
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    result = sub_1D1670224();
    goto LABEL_16;
  }

  v27 = v7 & 0xFFFFFFFFFFFFFF8;
  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  v0[69] = result;
  v0[68] = v27;
  v0[71] = v17;
  v0[70] = v18;
  if (result)
  {
LABEL_17:
    v29 = v0[67];
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1D388D4D0](0);
    }

    else
    {
      if (!*(v27 + 16))
      {
        __break(1u);
        return result;
      }

      v30 = *(v29 + 32);
    }

    v0[72] = v30;
    v0[73] = 1;
    v0[74] = *(v0[36] + v0[49]);
    v31 = [v30 medicationIdentifier];
    v10 = sub_1D166FA04();
    v12 = v32;

    v0[75] = v12;
    v13 = swift_task_alloc();
    v0[76] = v13;
    *v13 = v0;
    v14 = sub_1D161C918;
    goto LABEL_21;
  }

  v18 = v0 + 71;
  while (1)
  {
    v33 = v0[67];
    v34 = v0[66];
    v36 = v0[63];
    v35 = v0[64];
    v17 = v0[62];

    if (v35 == v17)
    {
      break;
    }

    v7 = v0[64];
    v37 = v0[35];
    v64 = *(v0 + 35);
    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1D388D4D0](v7);
    }

    else
    {
      if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v38 = *(v37 + 8 * v7 + 32);
    }

    v0[63] = v38;
    v0[64] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    v39 = v38;
    v40 = [v38 v1[205]];
    v41 = sub_1D166FA04();
    v43 = v42;

    v0[65] = v41;
    v0[66] = v43;
    v44 = [v39 v2[204]];
    v45 = sub_1D166FC54();
    v0[67] = v45;

    v27 = v45 & 0xFFFFFFFFFFFFFF8;
    if (v45 >> 62)
    {
      result = sub_1D1670224();
    }

    else
    {
      result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[69] = result;
    v0[68] = v27;
    *(v0 + 35) = v64;
    if (result)
    {
      goto LABEL_17;
    }
  }

LABEL_42:
  v47 = *v18;
  v48 = v0[54];
  v49 = v0[50];
  v50 = v0[46];
  v51 = v0[43];
  v61 = v0[45];
  v62 = v0[44];
  v59 = v0[41];
  v60 = v0[42];
  v63 = v0[40];
  v65 = v0[39];
  v52 = v0[36];

  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v58 = sub_1D166FFC4();
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v48;
  v54[4] = v47;
  v0[12] = sub_1D161E28C;
  v0[13] = v54;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D1618700;
  v0[11] = &block_descriptor_44;
  v55 = _Block_copy(v0 + 8);

  sub_1D166F804();
  v0[33] = v3;
  sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
  sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v50, v51, v55);
  _Block_release(v55);

  (*(v60 + 8))(v51, v59);
  (*(v61 + 8))(v50, v62);
  v56 = v0[13];

  v57 = v0[1];

  return v57();
}

uint64_t sub_1D161B980(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  v4[60] = v1;

  v7 = v4[58];
  if (v1)
  {
    v9 = v4[51];
    v8 = v4[52];
    v10 = v4[50];

    v11 = sub_1D161D2A0;
  }

  else
  {

    v4[61] = a1;
    v11 = sub_1D161BAE8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D161BAE8()
{
  v1 = *(v0 + 488);
  if (!v1)
  {
    v29 = *(v0 + 448);
    v30 = *(v0 + 384);

    if (v29 == v30)
    {
      goto LABEL_22;
    }

    v31 = *(v0 + 448);
LABEL_26:
    v69 = *(v0 + 272);
    if ((v69 & 0xC000000000000001) != 0)
    {
      v70 = MEMORY[0x1D388D4D0](v31);
    }

    else
    {
      if (v31 >= *(*(v0 + 376) + 16))
      {
        goto LABEL_65;
      }

      v70 = *(v69 + 8 * v31 + 32);
    }

    *(v0 + 440) = v70;
    *(v0 + 448) = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      *(v0 + 456) = *(*(v0 + 288) + *(v0 + 392));
      v71 = [v70 medicationIdentifier];
      v72 = sub_1D166FA04();
      v74 = v73;

      *(v0 + 464) = v74;
      v75 = swift_task_alloc();
      *(v0 + 472) = v75;
      *v75 = v0;
      v76 = sub_1D161B980;
LABEL_40:
      v75[1] = v76;

      return sub_1D1644B00(v72, v74);
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v2 = &property descriptor for MedicationView.config;
  *&v158 = *(v0 + 488);
  if ([*(v0 + 440) logStatus] == 4 || objc_msgSend(*(v0 + 440), sel_logStatus) == 5)
  {
    v3 = *(v0 + 456);
    v4 = *(v0 + 440);
    v5 = *(v0 + 368);
    v6 = *(v0 + 344);
    v151 = *(v0 + 360);
    v154 = *(v0 + 352);
    v146 = *(v0 + 328);
    v148 = *(v0 + 336);
    v7 = type metadata accessor for MedicationDose();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider;
    *(v10 + 16) = v4;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + v11) = v3;
    swift_beginAccess();
    *(v0 + 248) = v1;
    sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
    v12 = v4;
    v13 = v1;
    v14 = v12;
    swift_retain_n();
    v144 = v13;
    v15 = v14;
    sub_1D166F704();
    swift_endAccess();

    v16 = [v15 medicationIdentifier];
    v17 = sub_1D166FA04();
    v19 = v18;

    v143 = *(v3 + 72);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v17;
    v21[4] = v19;
    v21[5] = v10;
    v142 = v19;
    *(v0 + 48) = sub_1D1615D04;
    *(v0 + 56) = v21;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D1618700;
    *(v0 + 40) = &block_descriptor_3;
    v22 = _Block_copy((v0 + 16));
    swift_retain_n();

    sub_1D166F804();
    *(v0 + 256) = MEMORY[0x1E69E7CC0];
    sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
    sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1615D80();
    sub_1D1670194();
    MEMORY[0x1D388D1B0](0, v5, v6, v22);
    _Block_release(v22);
    (*(v148 + 8))(v6, v146);
    (*(v151 + 8))(v5, v154);
    v23 = *(v0 + 56);

    MEMORY[0x1D388CE10](v24);
    if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_5:
      sub_1D166FCC4();
      v25 = *(v0 + 240);
      v26 = *(v0 + 424);
      v27 = *(v0 + 408);
      v28 = v25;
      v2 = &property descriptor for MedicationView.config;
      goto LABEL_14;
    }

LABEL_67:
    sub_1D166FC84();
    goto LABEL_5;
  }

  v32 = [*(v0 + 440) scheduleItemIdentifier];
  if (v32)
  {
    v33 = *(v0 + 440);
    v34 = v32;
    v35 = sub_1D166FA04();
    v37 = v36;

    v38 = [v33 scheduledDate];
    if (v38)
    {
      v39 = *(v0 + 440);
      v40 = *(v0 + 320);
      v41 = v38;
      sub_1D166F144();

      v42 = sub_1D1670004();
      if ((v43 & 1) == 0)
      {
        v152 = v42;
        v156 = *(v0 + 456);
        v108 = *(v0 + 440);
        v109 = *(v0 + 312);
        v111 = *(v0 + 296);
        v110 = *(v0 + 304);
        (*(v110 + 16))(v109, *(v0 + 320), v111);
        v112 = [v108 medicationIdentifier];
        v113 = sub_1D166FA04();
        v149 = v114;

        v115 = [v108 isLastScheduledDose];
        v116 = type metadata accessor for ScheduleItem();
        v117 = *(v116 + 48);
        v118 = *(v116 + 52);
        v119 = swift_allocObject();
        *(v119 + 16) = v35;
        *(v119 + 24) = v37;
        (*(v110 + 32))(v119 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v109, v111);
        v120 = (v119 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
        *v120 = v113;
        v120[1] = v149;
        *(v119 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v152;
        *(v119 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v115;
        *(v0 + 136) = v119;
        *(v0 + 144) = v108;
        *(v0 + 152) = 1;
        v121 = type metadata accessor for MedicationDose();
        v122 = *(v121 + 48);
        v123 = *(v121 + 52);
        swift_allocObject();
        v124 = v158;
        v125 = v108;

        MedicationDose.init(_:medicationDetailProvider:medication:)((v0 + 136), v156, v124);
        MEMORY[0x1D388CE10]();
        if (*((*(v0 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 232) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_71;
        }

        goto LABEL_56;
      }

      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    }
  }

  v26 = *(v0 + 424);
  v28 = *(v0 + 432);
  v27 = *(v0 + 408);
  v25 = *(v0 + 416);
  while (1)
  {
LABEL_14:
    v44 = [*(v0 + 440) v2[192]];
    v45 = *(v0 + 440);
    if (v44)
    {
      v155 = v28;
      v46 = *(v0 + 400);
      v47 = v44;
      v48 = sub_1D166FA04();
      v50 = v49;

      *(v0 + 184) = v48;
      *(v0 + 192) = v50;
      MEMORY[0x1D388CCF0](95, 0xE100000000000000);
      v51 = [v45 medicationIdentifier];
      v52 = sub_1D166FA04();
      v54 = v53;

      MEMORY[0x1D388CCF0](v52, v54);

      v55 = *(v0 + 184);
      v56 = *(v0 + 192);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v0 + 400);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = sub_1D15ECAB4(0, *(v58 + 2) + 1, 1, *(v0 + 400));
      }

      v60 = *(v58 + 2);
      v59 = *(v58 + 3);
      if (v60 >= v59 >> 1)
      {
        v58 = sub_1D15ECAB4((v59 > 1), v60 + 1, 1, v58);
      }

      v61 = *(v0 + 440);

      *(v58 + 2) = v60 + 1;
      v62 = &v58[16 * v60];
      *(v62 + 4) = v55;
      *(v62 + 5) = v56;
      v31 = *(v0 + 448);
      *(v0 + 400) = v58;
      v28 = v155;
    }

    else
    {

      v31 = *(v0 + 448);
    }

    *(v0 + 424) = v26;
    *(v0 + 432) = v28;
    *(v0 + 408) = v27;
    *(v0 + 416) = v25;
    if (v31 != *(v0 + 384))
    {
      goto LABEL_26;
    }

LABEL_22:
    v63 = *(v0 + 280);
    if (v63 >> 62)
    {
LABEL_58:
      v129 = sub_1D1670224();
      *(v0 + 496) = v129;
      if (!v129)
      {
LABEL_59:
        v91 = (v0 + 424);
        goto LABEL_60;
      }
    }

    else
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 496) = v64;
      if (!v64)
      {
        goto LABEL_59;
      }
    }

    v65 = *(v0 + 424);
    v66 = *(v0 + 408);
    v67 = *(v0 + 280);
    if ((v67 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x1D388D4D0](0);
    }

    else
    {
      if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v68 = *(v67 + 32);
    }

    v77 = v68;
    *(v0 + 504) = v68;
    *(v0 + 512) = 1;
    v78 = [v68 identifier];
    v79 = sub_1D166FA04();
    v81 = v80;

    *(v0 + 520) = v79;
    *(v0 + 528) = v81;
    v82 = [v77 doses];
    sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
    v83 = sub_1D166FC54();
    *(v0 + 536) = v83;

    v84 = v83 & 0xFFFFFFFFFFFFFF8;
    v85 = v83 >> 62 ? sub_1D1670224() : *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 552) = v85;
    *(v0 + 544) = v84;
    *(v0 + 568) = v65;
    *(v0 + 560) = v66;
    if (!v85)
    {
      break;
    }

LABEL_36:
    v86 = *(v0 + 536);
    if ((v86 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x1D388D4D0](0);
      goto LABEL_39;
    }

    if (*(v84 + 16))
    {
      v87 = *(v86 + 32);
LABEL_39:
      *(v0 + 576) = v87;
      *(v0 + 584) = 1;
      *(v0 + 592) = *(*(v0 + 288) + *(v0 + 392));
      v88 = [v87 medicationIdentifier];
      v72 = sub_1D166FA04();
      v74 = v89;

      *(v0 + 600) = v74;
      v75 = swift_task_alloc();
      *(v0 + 608) = v75;
      *v75 = v0;
      v76 = sub_1D161C918;
      goto LABEL_40;
    }

    __break(1u);
LABEL_71:
    sub_1D166FC84();
LABEL_56:
    v126 = *(v0 + 320);
    v127 = *(v0 + 296);
    v128 = *(v0 + 304);
    sub_1D166FCC4();

    (*(v128 + 8))(v126, v127);
    v27 = *(v0 + 232);
    v28 = *(v0 + 432);
    v25 = *(v0 + 416);
    v26 = v27;
    v2 = &property descriptor for MedicationView.config;
  }

  v91 = (v0 + 568);
  while (1)
  {
    v92 = *(v0 + 536);
    v93 = *(v0 + 528);
    v95 = *(v0 + 504);
    v94 = *(v0 + 512);
    v96 = *(v0 + 496);

    if (v94 == v96)
    {
      break;
    }

    v97 = *(v0 + 512);
    v98 = *(v0 + 280);
    v158 = *(v0 + 560);
    if ((v98 & 0xC000000000000001) != 0)
    {
      v99 = MEMORY[0x1D388D4D0](v97);
    }

    else
    {
      if (v97 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v99 = *(v98 + 8 * v97 + 32);
    }

    *(v0 + 504) = v99;
    *(v0 + 512) = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    v100 = v99;
    v101 = [v99 identifier];
    v102 = sub_1D166FA04();
    v104 = v103;

    *(v0 + 520) = v102;
    *(v0 + 528) = v104;
    v105 = [v100 doses];
    v106 = sub_1D166FC54();
    *(v0 + 536) = v106;

    v84 = v106 & 0xFFFFFFFFFFFFFF8;
    if (v106 >> 62)
    {
      v107 = sub_1D1670224();
    }

    else
    {
      v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 552) = v107;
    *(v0 + 544) = v84;
    *(v0 + 560) = v158;
    if (v107)
    {
      goto LABEL_36;
    }
  }

LABEL_60:
  v130 = *v91;
  v131 = *(v0 + 432);
  v132 = *(v0 + 400);
  v133 = *(v0 + 368);
  v134 = *(v0 + 344);
  v150 = *(v0 + 360);
  v153 = *(v0 + 352);
  v135 = *(v0 + 328);
  v147 = *(v0 + 336);
  v157 = *(v0 + 320);
  v159 = *(v0 + 312);
  v136 = *(v0 + 288);

  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v145 = sub_1D166FFC4();
  v137 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v138 = swift_allocObject();
  v138[2] = v137;
  v138[3] = v131;
  v138[4] = v130;
  *(v0 + 96) = sub_1D161E28C;
  *(v0 + 104) = v138;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1D1618700;
  *(v0 + 88) = &block_descriptor_44;
  v139 = _Block_copy((v0 + 64));

  sub_1D166F804();
  *(v0 + 264) = MEMORY[0x1E69E7CC0];
  sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
  sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v133, v134, v139);
  _Block_release(v139);

  (*(v147 + 8))(v134, v135);
  (*(v150 + 8))(v133, v153);
  v140 = *(v0 + 104);

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_1D161C918(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;
  v4[77] = a1;
  v4[78] = v1;

  v7 = v3[75];
  if (v1)
  {
    v8 = v4[70];
    v9 = v4[67];
    v10 = v4[66];
    v11 = v4[52];
    v12 = v4[50];

    v13 = sub_1D161D340;
  }

  else
  {

    v13 = sub_1D161CAA0;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

void sub_1D161CAA0()
{
  v1 = v0[78];
  v2 = v0[72];
  v3 = v0[66];
  v4 = v0[50];
  v0[25] = v0[65];
  v0[26] = v3;

  MEMORY[0x1D388CCF0](95, 0xE100000000000000);
  v5 = &property descriptor for MedicationView.config;
  v6 = [v2 medicationIdentifier];
  v7 = sub_1D166FA04();
  v9 = v8;

  MEMORY[0x1D388CCF0](v7, v9);

  v10 = v0[26];
  v0[27] = v0[25];
  v0[28] = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 27;
  LOBYTE(v4) = sub_1D15FE8CC(sub_1D15ED988, v11, v4);

  v12 = v0[77];
  if (v4)
  {
  }

  else
  {
    if (v12)
    {
      v83 = v0[74];
      v13 = v0[72];
      v14 = v0[66];
      v15 = v0[63];
      v16 = v0[38];
      v17 = v0[39];
      v79 = v0[65];
      v81 = v0[37];

      v18 = [v15 scheduledDateTime];
      sub_1D166F144();

      v19 = [v13 medicationIdentifier];
      v20 = sub_1D166FA04();
      v22 = v21;

      v23 = [v13 dose];
      sub_1D166FDE4();
      v25 = v24;

      LOBYTE(v23) = [v13 isLastScheduledDose];
      v26 = type metadata accessor for ScheduleItem();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      *(v29 + 16) = v79;
      *(v29 + 24) = v14;
      (*(v16 + 32))(v29 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v17, v81);
      v30 = (v29 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
      *v30 = v20;
      v30[1] = v22;
      *(v29 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v25;
      *(v29 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v23;
      v0[20] = v29;
      v0[21] = 0;
      *(v0 + 176) = 1;
      v31 = type metadata accessor for MedicationDose();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();

      v34 = v12;
      MedicationDose.init(_:medicationDetailProvider:medication:)(v0 + 20, v83, v34);
      MEMORY[0x1D388CE10]();
      if (*((v0[29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((v0[29] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D166FC84();
      }

      v35 = v0[72];
      sub_1D166FCC4();

      v36 = (v0 + 29);
      v37 = v0[73];
      v38 = v0[69];
      v39 = vld1q_dup_f64(v36);
      v5 = &property descriptor for MedicationView.config;
      goto LABEL_18;
    }

    v12 = v0[72];
  }

  v40 = v0[73];
  v41 = v0[69];

  if (v40 != v41)
  {
    v37 = v0[73];
LABEL_22:
    v58 = v0[67];
    if ((v58 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x1D388D4D0](v37);
    }

    else
    {
      if (v37 >= *(v0[68] + 16))
      {
        goto LABEL_36;
      }

      v59 = *(v58 + 8 * v37 + 32);
    }

    v0[72] = v59;
    v0[73] = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
      v0[74] = *(v0[36] + v0[49]);
      v60 = [v59 v5[193]];
      v61 = sub_1D166FA04();
      v63 = v62;

      v0[75] = v63;
      v64 = swift_task_alloc();
      v0[76] = v64;
      *v64 = v0;
      v64[1] = sub_1D161C918;

      sub_1D1644B00(v61, v63);
      return;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  while (1)
  {
    v52 = v0[67];
    v53 = v0[66];
    v55 = v0[63];
    v54 = v0[64];
    v56 = v0[62];

    if (v54 == v56)
    {
      break;
    }

    v50 = v0[64];
    v57 = v0[35];
    v85 = *(v0 + 35);
    if ((v57 & 0xC000000000000001) == 0)
    {
      if (v50 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v43 = *(v57 + 8 * v50 + 32);
        goto LABEL_14;
      }

      __break(1u);
    }

    v43 = MEMORY[0x1D388D4D0](v50);
LABEL_14:
    v0[63] = v43;
    v0[64] = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
    }

    else
    {
      v44 = v43;
      v45 = [v43 identifier];
      v46 = sub_1D166FA04();
      v48 = v47;

      v0[65] = v46;
      v0[66] = v48;
      v49 = [v44 doses];
      sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
      v50 = sub_1D166FC54();
      v0[67] = v50;

      if (!(v50 >> 62))
      {
        v51 = v50 & 0xFFFFFFFFFFFFFF8;
        v38 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_17;
      }
    }

    v51 = v50 & 0xFFFFFFFFFFFFFF8;
    v38 = sub_1D1670224();
LABEL_17:
    v37 = 0;
    v0[69] = v38;
    v0[68] = v51;
    v39 = v85;
LABEL_18:
    *(v0 + 35) = v39;
    if (v37 != v38)
    {
      goto LABEL_22;
    }
  }

  v65 = v0[71];
  v66 = v0[54];
  v67 = v0[50];
  v68 = v0[46];
  v69 = v0[43];
  v80 = v0[45];
  v82 = v0[44];
  v70 = v0[41];
  v78 = v0[42];
  v84 = v0[40];
  v86 = v0[39];
  v71 = v0[36];

  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v77 = sub_1D166FFC4();
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  v73[2] = v72;
  v73[3] = v66;
  v73[4] = v65;
  v0[12] = sub_1D161E28C;
  v0[13] = v73;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D1618700;
  v0[11] = &block_descriptor_44;
  v74 = _Block_copy(v0 + 8);

  sub_1D166F804();
  v0[33] = MEMORY[0x1E69E7CC0];
  sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
  sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v68, v69, v74);
  _Block_release(v74);

  (*(v78 + 8))(v69, v70);
  (*(v80 + 8))(v68, v82);
  v75 = v0[13];

  v76 = v0[1];

  v76();
}

uint64_t sub_1D161D2A0()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D161D340()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D161D3E8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D166F734();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1D166F744();
  }

  return result;
}

id MedicationDoseDaySummaryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D161D660@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MedicationDoseDaySummaryProvider();
  result = sub_1D166F604();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall MedicationDoseDaySummaryProvider.scheduleControlDidRescheduleItems()()
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_1D166FD84();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1D1617D5C(0, 0, v4, &unk_1D16731C0, v6);

  sub_1D161DF10(v4);
}

uint64_t sub_1D161D7D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D1600968;

  return sub_1D1619838();
}

void sub_1D161D9A8(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a4;
  v7(v11, sub_1D161E7BC, v9, a4);
}

uint64_t sub_1D161DA7C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D16705D4() & 1;
  }
}

char *sub_1D161DAD4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider__daySummary;
  if (qword_1EDECA3D0 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDECD808;
  v33 = unk_1EDECD810;
  v34 = word_1EDECD818;

  sub_1D166F704();
  (*(v9 + 32))(&v3[v13], v12, v8);
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery] = 0;
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate] = 0;
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore] = a1;
  if (a3)
  {
    v14 = a1;
    v15 = a3;
  }

  else
  {
    v16 = qword_1EDECA558;
    v17 = a1;
    if (v16 != -1)
    {
      swift_once();
    }
  }

  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_medicationDetailProvider] = v15;
  v18 = objc_allocWithZone(MEMORY[0x1E69A3AE0]);

  v19 = [v18 initWithHealthStore_];
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_scheduleControl] = v19;
  v20 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  v21 = sub_1D166F174();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v3[v20], a2, v21);
  v23 = type metadata accessor for MedicationDoseDaySummaryProvider();
  v31.receiver = v3;
  v31.super_class = v23;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  v25 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_scheduleControl];
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v26 = v24;
  v27 = v25;
  v28 = sub_1D166FFC4();
  [v27 registerObserver:v26 queue:v28];

  sub_1D1617524();
  sub_1D1618020();

  (*(v22 + 8))(a2, v21);
  return v26;
}

uint64_t type metadata accessor for MedicationDoseDaySummaryProvider()
{
  result = qword_1EDECA240;
  if (!qword_1EDECA240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D161DE5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D1600968;

  return sub_1D161D7D0();
}

uint64_t sub_1D161DF10(uint64_t a1)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D161DFB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D161DFF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D161E050()
{
  sub_1D161E614(319, &qword_1EDECA048, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D166F174();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D161E244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D161E28C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D161D3E8();
}

void sub_1D161E298()
{
  if (!qword_1EDEC9FB0)
  {
    sub_1D15EE5A8(255, &unk_1EDEC9DB8, 0x1E696C0A0);
    sub_1D15F9218();
    v0 = sub_1D166FDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC9FB0);
    }
  }
}

void sub_1D161E330(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D161E398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FFFCC;

  return sub_1D161AFE8(a1);
}

uint64_t sub_1D161E438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1600968;

  return sub_1D161B07C(a1);
}

uint64_t sub_1D161E4D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D161E330(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D161E534(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D161E330(255, a3, &qword_1EDECACA0, 0x1E696C3A8, a4);
    v5 = sub_1D16705A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D161E5A0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1D1618128(a1, a2);
}

void sub_1D161E5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D161E614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MedicationDoseDaySummary);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D161E668(uint64_t a1, uint64_t a2)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D161E6FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D1600968;

  return sub_1D163662C(a1, v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D161E80C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D15FFFCC;

  return sub_1D1617CCC();
}

id sub_1D161E910(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = [v2 longLongValue];

  return v4;
}

uint64_t sub_1D161E974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D166F1C4();
  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v6 = 0;
  v7 = result + 40;
  v53 = *(result + 16);
  v48 = v5 - 1;
  v8 = MEMORY[0x1E69E7CC0];
  v49 = result + 40;
  do
  {
    v52 = v8;
    v9 = (v7 + 16 * v6);
    v10 = v6;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = objc_allocWithZone(MEMORY[0x1E695DF58]);

      v14 = sub_1D166F9C4();
      v15 = [v13 initWithLocaleIdentifier_];

      v16 = [v15 languageCode];
      v17 = sub_1D166FA04();
      v19 = v18;

      v20 = [v15 regionCode];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1D166FA04();
        v24 = v23;
      }

      else
      {
        v24 = 0xE200000000000000;
        v22 = 21333;
      }

      sub_1D161FE54(0, &qword_1EDECABA0, MEMORY[0x1E69E6F90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D16721B0;
      *(v25 + 32) = v17;
      *(v25 + 40) = v19;
      *(v25 + 48) = v22;
      *(v25 + 56) = v24;
      sub_1D161FE54(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
      sub_1D160172C();
      v26 = sub_1D166F9A4();
      v28 = v27;

      v29 = v54;
      swift_getAtKeyPath();

      if (*(v55 + 16))
      {
        break;
      }

LABEL_5:

      ++v10;

      v9 += 2;
      if (v53 == v10)
      {
        v8 = v52;
        goto LABEL_20;
      }
    }

    v30 = sub_1D16061DC(v26, v28);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_5;
    }

    v33 = (*(v55 + 56) + 16 * v30);
    v35 = *v33;
    v34 = v33[1];

    v36 = v52;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D15ECAB4(0, v52[2] + 1, 1, v52);
      v36 = result;
    }

    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    v39 = v36;
    if (v38 >= v37 >> 1)
    {
      result = sub_1D15ECAB4((v37 > 1), v38 + 1, 1, v36);
      v39 = result;
    }

    v6 = v10 + 1;
    v39[2] = v38 + 1;
    v40 = &v39[2 * v38];
    v8 = v39;
    v40[4] = v35;
    v40[5] = v34;
    v7 = v49;
  }

  while (v48 != v10);
LABEL_20:

  if (v8[2])
  {
    v41 = v8[4];
    v42 = v8[5];
    goto LABEL_22;
  }

  v43 = v54;
  swift_getAtKeyPath();

  if (*(v55 + 16) && (v44 = sub_1D16061DC(a2, a3), (v45 & 1) != 0))
  {
    v46 = (*(v55 + 56) + 16 * v44);
    v41 = *v46;
    v47 = v46[1];
LABEL_22:
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

uint64_t sub_1D161ED34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D166F1C4();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v37 = a2;
    v38 = a3;
    v8 = 0;
    v9 = (v5 + 40);
    v39 = v7 - 1;
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = objc_allocWithZone(MEMORY[0x1E695DF58]);

      v13 = sub_1D166F9C4();
      v14 = [v12 initWithLocaleIdentifier_];

      v15 = [v14 languageCode];
      v16 = sub_1D166FA04();
      v18 = v17;

      v19 = [v14 regionCode];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D166FA04();
        v23 = v22;
      }

      else
      {
        v23 = 0xE200000000000000;
        v21 = 21333;
      }

      sub_1D161FE54(0, &qword_1EDECABA0, MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D16721B0;
      *(v24 + 32) = v16;
      *(v24 + 40) = v18;
      *(v24 + 48) = v21;
      *(v24 + 56) = v23;
      sub_1D161FE54(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
      sub_1D160172C();
      v25 = sub_1D166F9A4();
      v27 = v26;

      v28 = v40;
      swift_getAtKeyPath();

      if (*(v41 + 16))
      {
        v29 = sub_1D16061DC(v25, v27);
        v31 = v30;

        if (v31)
        {
          v35 = *(*(v41 + 56) + 8 * v29);

          goto LABEL_21;
        }
      }

      else
      {
      }

      if (v39 == v8)
      {
        goto LABEL_13;
      }

      ++v8;
      v9 += 2;
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_13:

        a2 = v37;
        a3 = v38;
        goto LABEL_15;
      }
    }
  }

LABEL_15:
  v32 = v40;
  swift_getAtKeyPath();

  if (*(v41 + 16) && (v33 = sub_1D16061DC(a2, a3), (v34 & 1) != 0))
  {
    v35 = *(*(v41 + 56) + 8 * v33);
  }

  else
  {
    v35 = 0;
  }

LABEL_21:

  return v35;
}

uint64_t sub_1D161F11C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1D161E974(KeyPath, a2, 0xE500000000000000);

  return v4;
}

void sub_1D161F170(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1D166F944();

  *a3 = v5;
}

Swift::String __swiftcall HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:)(Swift::Double a1)
{
  v3 = HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:standalone:)(a1, 0);
  object = v3._object;
  countAndFlagsBits = v3._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:standalone:)(Swift::Double a1, Swift::Bool standalone)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1D161E974(KeyPath, 0x53552D6E65, 0xE500000000000000);
  v8 = v7;

  v9 = swift_getKeyPath();
  v10 = sub_1D161E974(v9, 0x53552D6E65, 0xE500000000000000);
  v12 = v11;

  v13 = [v2 freeTextMedicationLoggingUnitCode];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 longLongValue];
  }

  else
  {
    v15 = 0;
  }

  if (a1 == 1.0 && v8)
  {
    goto LABEL_16;
  }

  if (!v12)
  {
    if (v14)
    {
      sub_1D16392F8(standalone, v15);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    if (standalone)
    {
      if (qword_1EDECB050 == -1)
      {
        goto LABEL_14;
      }
    }

    else if (qword_1EDECB050 == -1)
    {
LABEL_14:
      sub_1D166F004();
LABEL_15:

      sub_1D15F30B0();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E63B0];
      *(v17 + 16) = xmmword_1D16721D0;
      v19 = MEMORY[0x1E69E6438];
      *(v17 + 56) = v18;
      *(v17 + 64) = v19;
      *(v17 + 32) = a1;
      v6 = sub_1D166F9D4();
      v8 = v20;

LABEL_16:

      goto LABEL_17;
    }

    swift_once();
    goto LABEL_14;
  }

  v6 = v10;
  v8 = v12;
LABEL_17:
  sub_1D1601D38();
  v21 = sub_1D1670134();
  if (standalone && v21)
  {
    v6 = sub_1D1670124();
    v23 = v22;

    v8 = v23;
  }

  v24 = v6;
  v25 = v8;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t static HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:standalone:singularUnit:pluralUnit:freeTextMedicationLoggingUnit:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  if (a8 != 1.0 || a3 == 0)
  {
    if (a5)
    {
      a2 = a4;

      return a2;
    }

    if ((a7 & 1) == 0)
    {
      v10 = a1;
      v11 = a8;
      sub_1D16392F8(a1 & 1, a6);
      a8 = v11;
      a1 = v10;
      if (v12)
      {
LABEL_15:
        sub_1D15F30B0();
        v13 = swift_allocObject();
        v14 = MEMORY[0x1E69E63B0];
        *(v13 + 16) = xmmword_1D16721D0;
        v15 = MEMORY[0x1E69E6438];
        *(v13 + 56) = v14;
        *(v13 + 64) = v15;
        *(v13 + 32) = v11;
        a2 = sub_1D166F9D4();

        return a2;
      }
    }

    v11 = a8;
    if (a1)
    {
      if (qword_1EDECB050 == -1)
      {
        goto LABEL_14;
      }
    }

    else if (qword_1EDECB050 == -1)
    {
LABEL_14:
      sub_1D166F004();
      goto LABEL_15;
    }

    swift_once();
    goto LABEL_14;
  }

  return a2;
}

Swift::String __swiftcall HKMedicationUserDomainConcept.localizedLoggingQuantityAffix()()
{
  v1 = [v0 freeTextMedicationLoggingUnitCode];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1D161FCEC(v3, v2 == 0);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t HKMedicationUserDomainConcept.localizedResolvedForm.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
  v3 = v2;

  if (v3)
  {
    sub_1D1601D38();
    v4 = sub_1D1670124();
  }

  else
  {
    v5 = [v0 freeTextMedicationFormCode];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 longLongValue];

      HKMedicationFreeTextFormTypeCode.localizationKey.getter(v7);
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v4 = sub_1D166F004();
    }

    else
    {
      v8 = swift_getKeyPath();
      v4 = sub_1D161E974(v8, 0x53555F6E65, 0xE500000000000000);
    }
  }

  return v4;
}

uint64_t HKMedicationUserDomainConcept.resolvedQuantifiedStrengthDisplayString.getter()
{
  v1 = [v0 unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
  if (v1)
  {

    v2 = [v0 unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1D166FA04();
LABEL_10:
      v9 = v4;

      return v9;
    }

    return 0;
  }

  v5 = [v0 freeTextMedicationIngredientNamedStrengthQuantities];
  sub_1D15EE5A8(0, &qword_1EC63DD00, 0x1E696C540);
  v6 = sub_1D166FC54();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return 0;
  }

  result = sub_1D1670224();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1D388D4D0](0, v6);
    goto LABEL_9;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_9:
    v3 = v8;

    v4 = HKUserDomainConceptNamedQuantity.formattedDisplayString.getter();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t HKUserDomainConceptNamedQuantity.formattedDisplayString.getter()
{
  v1 = [v0 quantity];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() medicationDoseEventType];
  v4 = [v2 _unit];
  sub_1D15EE5A8(0, &qword_1EC63DD08, 0x1E696C510);
  v5 = [objc_opt_self() percentUnit];
  v6 = sub_1D16700A4();

  v7 = [objc_allocWithZone(MEMORY[0x1E69A4480]) init];
  v8 = v7;
  if (v6)
  {
    [v7 setHasSpaceBetweenValueAndUnit_];
  }

  v9 = [v2 localizedStringForType:v3 parameters:v8];
  v10 = sub_1D166FA04();

  return v10;
}

uint64_t HKMedicationUserDomainConcept.componentNames.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1D161ED34(KeyPath, 0x53552D6E65, 0xE500000000000000);

  return v1;
}

void sub_1D161FC28(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedOntologyComponentNames];
  sub_1D161FE54(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
  v4 = sub_1D166F944();

  *a2 = v4;
}

uint64_t sub_1D161FCEC(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (sub_1D163913C(a1), !v2))
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
  }

  else
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
  }

  v3 = sub_1D166F9D4();

  return v3;
}

void sub_1D161FE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id HKMedicationSearchResult.groupingKey.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 routedDoseFormProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v4 = sub_1D166FC54();

  if (v4 >> 62)
  {
    v5 = sub_1D1670224();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    result = v1;
  }

  else
  {
    v1 = 0;
  }

  *a1 = v1;
  return result;
}

HealthMedicationsExperience::MedicationSearchCluster_optional __swiftcall MedicationSearchCluster.init(results:)(Swift::OpaquePointer results)
{
  rawValue = results._rawValue;
  v3 = v1;
  if (results._rawValue >> 62)
  {
    goto LABEL_46;
  }

  v4 = *((results._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v31 = rawValue & 0xC000000000000001;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D388D4D0](0, rawValue);
      }

      else
      {
        if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_52;
        }

        v5 = *(rawValue + 32);
      }

      v6 = v5;
      v7 = [v5 routedDoseFormProducts];
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      v8 = sub_1D166FC54();

      if (v8 >> 62)
      {
        v3 = sub_1D1670224();
      }

      else
      {
        v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v3)
      {

        v6 = 0;
      }

      v9 = 0;
      v29 = rawValue & 0xFFFFFFFFFFFFFF8;
      v30 = rawValue;
      while (1)
      {
        if (v31)
        {
          v10 = MEMORY[0x1D388D4D0](v9, rawValue);
          v11 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          goto LABEL_20;
        }

        if (v9 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v10 = *(rawValue + 8 * v9 + 32);
        v11 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

LABEL_20:
        v12 = v10;
        v13 = [v12 routedDoseFormProducts];
        v14 = sub_1D166FC54();

        if (v14 >> 62)
        {
          v15 = sub_1D1670224();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15)
        {
          if (v12)
          {
            if (!v6)
            {

              goto LABEL_36;
            }

            v16 = v4;
            v3 = v6;
            v17 = v12;
            v18 = [v17 ingredientProducts];
            v19 = sub_1D166FC54();

            v20 = [v3 ingredientProducts];
            v21 = sub_1D166FC54();

            LOBYTE(v20) = sub_1D16205B0(v19, v21, &qword_1EC63DA98, 0x1E696C010);

            if ((v20 & 1) == 0)
            {
              v22 = v3;
LABEL_39:

              v27 = v17;
              v24 = v17;
LABEL_40:

LABEL_41:

LABEL_42:
              rawValue = 0;
              v3 = v28;
              goto LABEL_48;
            }

            v22 = [v17 tradeNameProduct];
            v23 = [v3 tradeNameProduct];
            v24 = v23;
            if (v22)
            {
              if (!v23)
              {

                goto LABEL_39;
              }

              v25 = sub_1D16700A4();

              v4 = v16;
              rawValue = v30;
              if ((v25 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            else
            {

              if (v24)
              {
                v27 = v3;
                goto LABEL_40;
              }

              v4 = v16;
              rawValue = v30;
            }

            goto LABEL_13;
          }
        }

        else
        {
        }

        v3 = v6;

        if (v6)
        {

          v12 = 0;
LABEL_36:

          goto LABEL_42;
        }

LABEL_13:
        ++v9;
        if (v11 == v4)
        {

          v3 = v28;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      results._rawValue = sub_1D1670224();
      v4 = results._rawValue;
    }

    while (results._rawValue);
  }

  rawValue = 0;
LABEL_48:
  *v3 = rawValue;
LABEL_52:
  result.value.results = results;
  result.is_nil = v26;
  return result;
}

uint64_t MedicationSearchCluster.primaryName.getter()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    if (qword_1EDECB050 == -1)
    {
      return sub_1D166F004();
    }

LABEL_15:
    swift_once();
    return sub_1D166F004();
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  if (!sub_1D1670224())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1D388D4D0](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v3 = v2;
  sub_1D160096C(&v7);

  v4 = v7;

  sub_1D160161C(&v7);
  return v4;
}

void MedicationGroupingKey.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [v3 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v5 = sub_1D166FC54();

  sub_1D1626A14(a1, v5);

  v6 = [v3 tradeNameProduct];
  if (v6)
  {
    v7 = v6;
    sub_1D16700B4();
  }
}

uint64_t sub_1D16205B0(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1D15EE5A8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D388D4D0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1D388D4D0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1D16700A4();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1D16700A4();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1D1670224();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1D1670224();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

void sub_1D1620818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
    v3 = 0;
    while (v2)
    {
      v20 = v2;
      v4 = *(a1 + v3 + 40);
      v6 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v7 = *(a2 + v3 + 32);
      v8 = *(a2 + v3 + 40);
      v9 = *(a2 + v3 + 48);
      v10 = *(a2 + v3 + 56);
      v11 = *(a1 + v3 + 32);

      v12 = v5;
      v13 = v7;

      v14 = v10;
      if ((sub_1D16700A4() & 1) == 0 || (v4 != v8 || v6 != v9) && (sub_1D16705D4() & 1) == 0)
      {

        return;
      }

      v15 = v12;
      v16 = v14;
      v17 = sub_1D16700A4();

      if (v17)
      {
        v2 = v20 - 1;
        v3 += 32;
        if (v20 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t MedicationGroupingKey.hashValue.getter()
{
  v2 = *v0;
  sub_1D16706A4();
  sub_1D1609988();
  sub_1D166F984();
  return sub_1D16706E4();
}

uint64_t sub_1D1620A28()
{
  v2 = *v0;
  sub_1D16706A4();
  sub_1D166F984();
  return sub_1D16706E4();
}

void sub_1D1620A8C(uint64_t a1)
{
  v3 = *v1;
  v4 = [v3 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v5 = sub_1D166FC54();

  sub_1D1626A14(a1, v5);

  v6 = [v3 tradeNameProduct];
  if (v6)
  {
    v7 = v6;
    sub_1D16700B4();
  }
}

uint64_t MedicationRouteFormConcept.uniqueIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

HealthMedicationsExperience::MedicationRouteFormConcept __swiftcall MedicationRouteFormConcept.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;

  v27 = sub_1D1626B04(v3);
  sub_1D1623D04(&v27);

  v4 = v27;
  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    v5 = sub_1D1670224();
  }

  else
  {
    v5 = *(v27 + 16);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = MEMORY[0x1E69E7CC0];

    sub_1D162304C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);

      __break(1u);
      goto LABEL_17;
    }

    v26 = v2;
    v7 = 0;
    v6 = v27;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D388D4D0](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = [v10 rawIdentifier];

      v29 = v11;
      v12 = sub_1D1670594();
      v14 = v13;

      v27 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D162304C((v15 > 1), v16 + 1, 1);
        v6 = v27;
      }

      ++v7;
      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v5 != v7);

    v2 = v26;
  }

  v27 = v6;
  sub_1D1628014(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D160172C();
  v18 = sub_1D166F9A4();
  v20 = v19;

  v27 = 0xD00000000000001BLL;
  v28 = 0x80000001D1677540;
  MEMORY[0x1D388CCF0](v18, v20);

  v24 = v27;
  v25 = v28;
  *v2 = v4;
  v2[1] = v24;
  v2[2] = v25;
LABEL_17:
  result.uniqueIdentifier._object = v23;
  result.uniqueIdentifier._countAndFlagsBits = v22;
  result.routeConcepts._rawValue = v21;
  return result;
}

uint64_t MedicationRouteFormConcept.displayString.getter()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_1D1621024(KeyPath, v1);

  v5 = 0;
  v6 = v3[2];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = 16 * v5 + 40;
  while (1)
  {
    if (v6 == v5)
    {

      sub_1D1628014(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D160172C();
      v15 = sub_1D166F9A4();

      return v15;
    }

    if (v5 >= v3[2])
    {
      break;
    }

    ++v5;
    v9 = v8 + 16;
    v10 = *(v3 + v8);
    v8 += 16;
    if (v10)
    {
      v11 = *(v3 + v9 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D15ECAB4(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D15ECAB4((v12 > 1), v13 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1620FA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 meds_isRoutedDoseFormProduct] && (v4 = objc_msgSend(v3, sel_meds_preferredNameForFirstObjectOfRelationshipType_, 982)) != 0)
  {
    v5 = v4;
    v6 = sub_1D166FA04();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

id sub_1D1621024(uint64_t a1, unint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v4 = result;
  if (a2 >> 62)
  {
    result = sub_1D1670224();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E6158];
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D388D4D0](v6, a2);
    }

    else
    {
      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    ++v6;
    swift_getAtKeyPath();

    sub_1D1628014(0, &qword_1EDECAE20, v7, MEMORY[0x1E69E6720]);
    [v4 addObject_];
    swift_unknownObjectRelease();
  }

  while (v5 != v6);
LABEL_10:
  v10 = [v4 array];
  v11 = sub_1D166FC54();

  v12 = sub_1D15FD034(v11);

  if (v12)
  {
    return v12;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

id sub_1D16211DC(uint64_t a1, unint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v4 = result;
  if (a2 >> 62)
  {
    result = sub_1D1670224();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D388D4D0](v6, a2);
    }

    else
    {
      v7 = *(a2 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    swift_getAtKeyPath();

    sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
    [v4 addObject_];
    swift_unknownObjectRelease();
  }

  while (v5 != v6);
LABEL_10:
  v9 = [v4 array];
  v10 = sub_1D166FC54();

  v11 = sub_1D15FD140(v10);

  if (v11)
  {
    return v11;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t MedicationRouteFormConcept.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1D1626A14(a1, v2);

  return sub_1D166FAE4();
}

uint64_t MedicationRouteFormConcept.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D16706A4();
  sub_1D1626A14(v5, v1);
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1621484()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D16706A4();
  sub_1D1626A14(v5, v1);
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D16214E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1D1626A14(a1, v2);

  return sub_1D166FAE4();
}

uint64_t sub_1D1621538()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D16706A4();
  sub_1D1626A14(v5, v1);
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t MedicationSearchCluster.isTradeCluster.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D388D4D0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 tradeNameProduct];

      v8 = v7 != 0;
      if (v7)
      {

        ++v3;
        if (v6 != i)
        {
          continue;
        }
      }

      return v8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 1;
}

uint64_t MedicationSearchCluster.ingredientProductName.getter()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_1D16211DC(KeyPath, v1);

  v4 = sub_1D1621A54(v3);

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v22 = v7;

    sub_1D1623D80(&v22, sub_1D162728C, MEMORY[0x1E69E6158], sub_1D1624414, sub_1D1624040);

    sub_1D1628014(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D160172C();
    v19 = sub_1D166F9A4();

    return v19;
  }

  v5 = sub_1D1670224();
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D162304C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v22;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D388D4D0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 localizedPreferredName];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1D166FA04();
        v14 = v13;

        v9 = v11;
      }

      else
      {
        if (qword_1EDECB050 != -1)
        {
          swift_once();
        }

        v21 = 0xE000000000000000;
        v12 = sub_1D166F004();
        v14 = v15;
      }

      v22 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D162304C((v16 > 1), v17 + 1, 1);
        v7 = v22;
      }

      ++v6;
      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
    }

    while (v5 != v6);

    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1D16219E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v4 = sub_1D166FC54();

  *a2 = v4;
}

uint64_t sub_1D1621A54(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v23 = *(v25 + 8 * v1);
      }

      v6 = sub_1D1670224();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_1D1670224();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_1D1670224();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_1D1670304();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v6)
    {
      goto LABEL_40;
    }

    v29 = v1;
    v15 = v10 + 8 * v12 + 32;
    v27 = v6;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
      sub_1D1628064(&qword_1EC63DD58, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010);
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_1D16008C0(v28, i, v4);
        v19 = *v18;
        (v17)(v28, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    if (v27 >= 1)
    {
      v20 = *(v10 + 16);
      v21 = __OFADD__(v20, v27);
      v22 = v20 + v27;
      if (v21)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  result = sub_1D1670224();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D1621D48(uint64_t a1)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v34 = result;
  v37 = v7;
  v38 = v3;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v7)
        {

          return v10;
        }

        v6 = *(v3 + 8 * v12);
        ++v9;
        if (v6)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

LABEL_11:
    v43 = *(*(v2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));

    sub_1D1622C64(&v43, &v42);
    if (v1)
    {
      break;
    }

    v13 = v42 >> 62;
    v14 = v42;
    v39 = v6;
    if (v42 >> 62)
    {
      v15 = sub_1D1670224();
    }

    else
    {
      v15 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v10 >> 62;
    if (v10 >> 62)
    {
      result = sub_1D1670224();
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_45;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v16)
      {
        goto LABEL_24;
      }

      v19 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v18 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v16)
      {
LABEL_24:
        sub_1D1670224();
        goto LABEL_25;
      }

      v19 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v19 + 16);
LABEL_25:
    v10 = sub_1D1670304();
    v19 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    result = v14;
    if (v13)
    {
      v24 = v19;
      v25 = sub_1D1670224();
      v19 = v24;
      v23 = v25;
      result = v14;
      if (!v23)
      {
LABEL_4:

        v11 = v39;
        v7 = v37;
        v3 = v38;
        if (v40 > 0)
        {
          goto LABEL_46;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_4;
      }
    }

    if (((v22 >> 1) - v21) < v40)
    {
      goto LABEL_47;
    }

    v36 = v10;
    v26 = v19 + 8 * v21 + 32;
    v35 = v19;
    if (v13)
    {
      if (v23 < 1)
      {
        goto LABEL_49;
      }

      v27 = result;
      sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
      sub_1D1628064(&qword_1EC63DD58, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010);
      for (i = 0; i != v23; ++i)
      {
        v29 = sub_1D16008C0(v41, i, v27);
        v31 = *v30;
        (v29)(v41, 0);
        *(v26 + 8 * i) = v31;
      }
    }

    else
    {
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      swift_arrayInitWithCopy();
    }

    v11 = v39;
    v10 = v36;
    v2 = v34;
    v7 = v37;
    v3 = v38;
    if (v40 >= 1)
    {
      v32 = *(v35 + 16);
      v17 = __OFADD__(v32, v40);
      v33 = v32 + v40;
      if (v17)
      {
        goto LABEL_48;
      }

      *(v35 + 16) = v33;
    }

LABEL_5:
    v6 = (v11 - 1) & v11;
  }

  return v10;
}

uint64_t MedicationSearchCluster.secondaryTitle.getter()
{
  v1 = *v0;
  if (MedicationSearchCluster.isTradeCluster.getter())
  {
    return MedicationSearchCluster.ingredientProductName.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t MedicationSearchCluster.hashValue.getter()
{
  v1 = *v0;
  sub_1D16706A4();
  sub_1D1626A14(v3, v1);
  return sub_1D16706E4();
}

uint64_t sub_1D16221F0()
{
  v1 = *v0;
  sub_1D16706A4();
  sub_1D1626A14(v3, v1);
  return sub_1D16706E4();
}

uint64_t sub_1D1622254()
{
  v1 = *v0;
  sub_1D16706A4();
  sub_1D1626A14(v3, v1);
  return sub_1D16706E4();
}

HealthMedicationsExperience::MedicationSearchClusterFormsGrouper __swiftcall MedicationSearchClusterFormsGrouper.init(_:)(HealthMedicationsExperience::MedicationSearchCluster a1)
{
  v2 = v1;
  v3 = sub_1D162744C(*a1.results._rawValue);

  *v2 = v3;
  return result;
}

uint64_t MedicationSearchClusterFormsGrouper.availableRoutes.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D1622F64(*(*v0 + 16), 0);
  v4 = sub_1D1626738(&v6, v3 + 4, v2, v1);
  swift_bridgeObjectRetain_n();
  sub_1D160FD3C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1D1623D80(&v6, sub_1D16272C8, &type metadata for MedicationRouteFormConcept, sub_1D162510C, sub_1D1624244);

  return v6;
}

uint64_t MedicationSearchClusterFormsGrouper.hasSingleProduct.getter()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1D1622F64(*(v1 + 16), 0);
    v4 = sub_1D1626738(&v22, v3 + 4, v2, v1);
    swift_bridgeObjectRetain_n();
    sub_1D160FD3C();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v22 = v3;
  sub_1D1623D80(&v22, sub_1D16272C8, &type metadata for MedicationRouteFormConcept, sub_1D162510C, sub_1D1624244);

  if (!v22[2])
  {

    return 0;
  }

  v5 = v22[4];
  v6 = v22[5];
  v7 = v22[6];

  if (*(v1 + 16) != 1)
  {

    return 0;
  }

  v8 = sub_1D160643C(v5, v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v1 + 56) + 8 * v8);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v21 = *(*(v1 + 56) + 8 * v8);
    }

    v12 = sub_1D1670224();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v22 = MEMORY[0x1E69E7CC0];

    sub_1D16703A4();
    if (v12 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D388D4D0](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 specificProduct];

      sub_1D1670374();
      v18 = v22[2];
      sub_1D16703B4();
      sub_1D16703C4();
      sub_1D1670384();
    }

    while (v12 != v14);

    v13 = v22;
  }

  if (v13 >> 62)
  {
    v20 = sub_1D1670224();
  }

  else
  {
    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v20 == 1;
}

uint64_t MedicationSearchClusterFormsGrouper.singleSpecificProduct.getter()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1D1622F64(*(v1 + 16), 0);
    v4 = sub_1D1626738(&v23, v3 + 4, v2, v1);
    swift_bridgeObjectRetain_n();
    sub_1D160FD3C();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v23 = v3;
  sub_1D1623D80(&v23, sub_1D16272C8, &type metadata for MedicationRouteFormConcept, sub_1D162510C, sub_1D1624244);

  if (!v23[2])
  {

    return 0;
  }

  v5 = v23[4];
  v6 = v23[5];
  v7 = v23[6];

  if (*(v1 + 16) != 1)
  {

    goto LABEL_19;
  }

  v8 = sub_1D160643C(v5, v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v1 + 56) + 8 * v8);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v22 = *(*(v1 + 56) + 8 * v8);
    }

    v12 = sub_1D1670224();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v23 = MEMORY[0x1E69E7CC0];

    v13 = &v23;
    sub_1D16703A4();
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D388D4D0](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 specificProduct];

      sub_1D1670374();
      v18 = v23[2];
      sub_1D16703B4();
      sub_1D16703C4();
      sub_1D1670384();
    }

    while (v12 != v14);

    v13 = v23;
  }

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (sub_1D1670224() != 1 || !sub_1D1670224())
  {
LABEL_19:

    return 0;
  }

LABEL_24:
  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v20 = MEMORY[0x1D388D4D0](0, v13);
    goto LABEL_27;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v13 + 32);
LABEL_27:
    v21 = v20;

    return v21;
  }

  __break(1u);

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall MedicationSearchClusterFormsGrouper.getSpecificProducts(for:)(HealthMedicationsExperience::MedicationRouteFormConcept a1)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    v3 = sub_1D160643C(*a1.routeConcepts._rawValue, *(a1.routeConcepts._rawValue + 1), *(a1.routeConcepts._rawValue + 2));
    v4 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v3);
      v19 = MEMORY[0x1E69E7CC0];
      if (v6 >> 62)
      {
LABEL_21:
        v7 = sub_1D1670224();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      while (v7 != v8)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1D388D4D0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v13 = [v10 specificProduct];

        ++v8;
        if (v13)
        {
          MEMORY[0x1D388CE10]();
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D166FC84();
          }

          sub_1D166FCC4();
          v9 = v19;
          v8 = v12;
        }
      }

      v4 = v9;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D162775C(v4);

  v16 = sub_1D1621D48(v15);

  v18 = v16;
  result.value._rawValue = v18;
  result.is_nil = v17;
  return result;
}

uint64_t sub_1D1622C64@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v18 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1670224())
  {

    if (!i)
    {
      break;
    }

    v15 = a2;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D388D4D0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      a2 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = HKConcept.strengthDisplay.getter();
      v10 = v9;

      v11 = sub_1D1648E60(&v16, v8, v10);

      if (v11)
      {
        sub_1D1670374();
        v12 = *(v17 + 16);
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
      }

      else
      {
      }

      ++v5;
      if (a2 == i)
      {
        v13 = v17;
        a2 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_16:

  *a2 = v13;
  return result;
}

void *sub_1D1622E24(uint64_t a1, uint64_t a2)
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

  sub_1D1628014(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D1622EC0(uint64_t a1, uint64_t a2)
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

  sub_1D1628014(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1D1622F64(uint64_t a1, uint64_t a2)
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

  sub_1D1628014(0, &qword_1EC63DD60, &type metadata for MedicationRouteFormConcept, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_1D162300C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1623210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D162302C(void *a1, int64_t a2, char a3)
{
  result = sub_1D162340C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D162304C(char *a1, int64_t a2, char a3)
{
  result = sub_1D16230EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D162306C(void *a1, int64_t a2, char a3)
{
  result = sub_1D162367C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D162308C(void *a1, int64_t a2, char a3)
{
  result = sub_1D16237BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D16230AC(void *a1, int64_t a2, char a3)
{
  result = sub_1D1623A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D16230CC(char *a1, int64_t a2, char a3)
{
  result = sub_1D1623B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D16230EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1628014(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D1623210(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D16280C8(0, &qword_1EC63D7B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1D166F1A4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1D166F1A4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D162340C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D16280C8(0, &qword_1EC63D7B8, sub_1D15EE514, MEMORY[0x1E69E6F90]);
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
    sub_1D15EE514();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1623558(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1628014(0, &qword_1EC63D7A8, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D162367C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1627E44();
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
    sub_1D1628014(0, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D16237BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1627F90();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1623904(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1628014(0, &qword_1EC63DD60, &type metadata for MedicationRouteFormConcept, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D1623A3C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D16280C8(0, &qword_1EC63DD48, sub_1D1627EC0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1627EC0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1623B9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1628014(0, &qword_1EC63D780, &type metadata for Weekdays.Day, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}