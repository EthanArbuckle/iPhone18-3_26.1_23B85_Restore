uint64_t CRStruct_1.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v25 = v16;
  (*(*(a2 - 8) + 16))(a4, v4, a2, v15);
  v24[0] = a4;
  v17 = *(v8 + 32);

  v17(a2, v8);
  v24[1] = v18;

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(&v25, AssociatedTypeWitness);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  swift_setAtWritableKeyPath();

  v20 = *(v8 + 8);
  v21 = (*(v20 + 24))(a2, v20);
  v22 = sub_1AE156B60(v21, &v25);

  (*(v20 + 32))(v22, a2, v20);
}

uint64_t CRStruct_1.merge(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _WORD *a3@<X8>)
{
  v23 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v22 - v9;
  (*(v4 + 32))(a1, v4, v8);
  v22[1] = v11;
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v26 + 3) = word_1ED96F220;
  BYTE5(v26) = byte_1ED96F222;

  swift_getAtKeyPath();
  v12 = swift_modifyAtWritableKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(&v26, v10, AssociatedTypeWitness);
  (*(v6 + 8))(v10, AssociatedTypeWitness);
  v12(&v24, 0);

  v24 = v26;
  v25 = BYTE2(v26);
  v14 = &v24;
  MergeResult.merge(_:)(v14);
  v15 = *(v4 + 8);
  v16 = (*(v15 + 24))(a1, v15);
  v17 = (*(v15 + 40))(&v24, a1, v15);
  sub_1AE21F75C(v16, &v26);

  v17(&v24, 0);
  v24 = v26;
  v25 = BYTE2(v26);
  v18 = &v24;
  MergeResult.merge(_:)(v18);
  (*(v15 + 64))(a1, v15);

  v20 = BYTE5(v26);
  v21 = v23;
  *v23 = *(&v26 + 3);
  *(v21 + 2) = v20;
  return result;
}

uint64_t CRStruct_1.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  (*(v4 + 32))(a2, v4, v11);
  v24[2] = v14;
  v25 = MEMORY[0x1E69E7CD0];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 64))(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = *(v6 + 8);
  v17(v9, AssociatedTypeWitness);
  v17(v13, AssociatedTypeWitness);
  sub_1AE00F014(v16);
  v18 = *(v4 + 8);
  v19 = *(v18 + 24);
  v20 = v19(a2, v18);
  v21 = v19(a2, v18);
  v22 = sub_1AE2200E4(v21, v20);

  sub_1AE00F014(v22);

  return v25;
}

uint64_t CRStruct_1.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a1;
  v53 = a2;
  v56 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v51 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v46 = &v44 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  v50 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v44 - v13;
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = sub_1AE23D7CC();
  v48 = *(v22 - 8);
  v23 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v44 - v28;
  v30 = *(v6 + 32);
  v54 = v6;
  v55 = a3;
  v30(a3, v6, v27);

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  (*(v51 + 40))(v18, v53, v14);

  v31 = *(v15 + 8);
  v31(v18, v14);
  v32 = v21;
  v33 = v48;
  v31(v32, v14);
  v35 = v49;
  v34 = v50;
  (*(v33 + 32))(v25, v29, v22);
  if ((*(v34 + 48))(v25, 1, v35) == 1)
  {
    (*(v33 + 8))(v25, v22);
    v36 = *(*(*(v54 + 8) + 8) + 16);
    v37 = swift_getAssociatedTypeWitness();
    return (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
  }

  else
  {
    v39 = *(v34 + 32);
    v40 = v45;
    v39(v45, v25, v35);
    v39(v46, v40, v35);
    v41 = *(*(*(v54 + 8) + 8) + 16);
    v42 = swift_getAssociatedTypeWitness();
    v43 = v56;
    swift_dynamicCast();
    return (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
  }
}

uint64_t CRStruct_1.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  (*(v6 + 32))(a2, v6, v13);
  v29 = v16;

  v27 = v3;
  swift_getAtKeyPath();

  v28 = a1;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 88))(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(v8 + 8);
  v19(v11, AssociatedTypeWitness);
  v19(v15, AssociatedTypeWitness);
  if (v18)
  {
    v20 = 1;
  }

  else
  {
    v21 = *(v6 + 8);
    v22 = *(v21 + 24);
    v23 = v22(a2, v21);
    v24 = v22(a2, v21);
    v20 = sub_1AE21FE14(v24, v23);
  }

  return v20 & 1;
}

uint64_t CRStruct_1.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  (*(v5 + 32))(a2, v5, v12);

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 72))(v10, AssociatedTypeWitness, AssociatedConformanceWitness);

  v16 = *(v7 + 8);
  v16(v10, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t CRStruct_1.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 32))(a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 80);
  v7 = swift_checkMetadataState();
  v6(a1, v7, AssociatedConformanceWitness);
  v4(&v9, 0);
}

uint64_t CRStruct_1.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 32))(a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  v6 = *(v5 + 64);
  v7 = swift_checkMetadataState();
  v6(a1, v7, v5);
  v4(&v9, 0);
}

uint64_t CRStruct_1.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v15 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  (*(v4 + 32))(a1, v4, v8);
  v11 = (*(*(v4 + 8) + 24))(a1);
  sub_1AE21FFB0(v11, &v16 + 1);

  v12 = BYTE1(v16);
  if (BYTE1(v16) > 2u)
  {
  }

  else
  {
    swift_getAtKeyPath();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(&v16, AssociatedTypeWitness);

    result = (*(v6 + 8))(v10, AssociatedTypeWitness);
    if (v16 > v12)
    {
      LOBYTE(v12) = v16;
    }
  }

  *v15 = v12;
  return result;
}

uint64_t CRStruct_1<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v44 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = *(v6 + 32);
  v39 = v6;
  v40 = a2;
  v41 = v15(a2, v6, v12);
  v17 = v16;
  v19 = v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10();
  sub_1AE23E3CC();

  swift_getAtKeyPath();

  v47 = v41;
  v48 = v17;
  v21 = v14;
  v22 = AssociatedTypeWitness;
  v23 = v45;
  sub_1AE23DD5C();
  if (v23)
  {

    (*(v43 + 8))(v9, v22);
    (*(v46 + 8))(v21, v10);
  }

  else
  {
    v41 = v19;
    v44 = v21;
    v45 = v10;
    (*(v43 + 8))(v9, v22);
    v43 = v17;

    result = (*(*(v39 + 8) + 24))(v40);
    v25 = result;
    v26 = 0;
    v27 = result + 64;
    v28 = 1 << *(result + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(result + 64);
    v31 = (v28 + 63) >> 6;
    for (i = v46; v30; i = v46)
    {
      v33 = v26;
LABEL_10:
      v34 = __clz(__rbit64(v30)) | (v33 << 6);
      v35 = (*(v25 + 48) + 16 * v34);
      v36 = *v35;
      v37 = v35[1];
      v49 = *(*(v25 + 56) + 8 * v34);
      v47 = v36;
      v48 = v37;
      sub_1AE048F64();

      sub_1AE23DD5C();
      v30 &= v30 - 1;

      v26 = v33;
    }

    while (1)
    {
      v33 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v33 >= v31)
      {

        return (*(i + 8))(v44, v45);
      }

      v30 = *(v27 + 8 * v33);
      ++v26;
      if (v30)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_2.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v30[1] = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v39 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = v30 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(*(a2 - 8) + 16))(a4, v4, a2, v19);
  (*(v7 + 48))(v40, a2, v7);
  v20 = v40[2];
  v37 = v40[1];
  v35 = v40[4];

  v30[0] = v4;
  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v34;
  (*(*(AssociatedConformanceWitness + 16) + 24))(v34, v14);
  (*(v31 + 8))(v17, v14);
  v32 = v20;
  swift_setAtWritableKeyPath();

  v23 = v33;
  swift_getAtKeyPath();
  v24 = v38;
  v25 = swift_getAssociatedConformanceWitness();
  (*(*(v25 + 16) + 24))(v22, v24);
  (*(v39 + 8))(v23, v24);
  swift_setAtWritableKeyPath();

  v26 = *(v7 + 8);
  v27 = (*(v26 + 24))(a2, v26);
  v28 = sub_1AE156B60(v27, v22);

  (*(v26 + 32))(v28, a2, v26);
}

uint64_t CRStruct_2.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v31 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  if (a1)
  {
    v21 = a1;
  }

  else
  {
    v21 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v40 = v21;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v20);
  v31 = a4;
  v22 = *(v9 + 48);

  v22(v39, a2, v9);
  v33 = v39[4];
  v34 = v39[1];

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(&v40, v15);
  (*(v32 + 8))(v18, v15);
  swift_setAtWritableKeyPath();

  v24 = v36;
  swift_getAtKeyPath();
  v25 = v38;
  v26 = swift_getAssociatedConformanceWitness();
  (*(*(v26 + 16) + 24))(&v40, v25);
  (*(v37 + 8))(v24, v25);
  swift_setAtWritableKeyPath();

  v27 = *(v9 + 8);
  v28 = (*(v27 + 24))(a2, v27);
  v29 = sub_1AE156B60(v28, &v40);

  (*(v27 + 32))(v29, a2, v27);
}

uint64_t CRStruct_2.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v38 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = v32 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v32 - v14;
  (*(v6 + 48))(&v39 + 6, a2, v6, v13);
  v16 = v42;
  v36 = v43;
  v37 = v41;
  v32[2] = v44;
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v39 + 3) = word_1ED96F220;
  BYTE5(v39) = byte_1ED96F222;

  v32[0] = a1;
  swift_getAtKeyPath();
  v17 = swift_modifyAtWritableKeyPath();
  v32[1] = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(&v39, v15, v10);
  (*(v11 + 8))(v15, v10);
  v17(&v39 + 6, 0);

  HIWORD(v39) = v39;
  v40 = BYTE2(v39);
  v19 = &v39 + 6;
  MergeResult.merge(_:)(v19);

  v20 = v33;
  swift_getAtKeyPath();
  v21 = swift_modifyAtWritableKeyPath();
  v22 = v35;
  v23 = swift_getAssociatedConformanceWitness();
  (*(*(v23 + 8) + 8))(&v39, v20, v22);
  (*(v34 + 8))(v20, v22);
  v21(&v39 + 6, 0);

  HIWORD(v39) = v39;
  v40 = BYTE2(v39);
  v24 = &v39 + 6;
  MergeResult.merge(_:)(v24);
  v25 = *(v6 + 8);
  v26 = (*(v25 + 24))(a2, v25);
  v27 = (*(v25 + 40))(&v39 + 6, a2, v25);
  sub_1AE21F75C(v26, &v39);

  v27(&v39 + 6, 0);
  HIWORD(v39) = v39;
  v40 = BYTE2(v39);
  v28 = &v39 + 6;
  MergeResult.merge(_:)(v28);
  (*(v25 + 64))(a2, v25);

  v30 = BYTE5(v39);
  v31 = v38;
  *v38 = *(&v39 + 3);
  *(v31 + 2) = v30;
  return result;
}

uint64_t CRStruct_2.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v18 = *(v4 + 48);
  v37 = a2;
  v38 = v4;
  v18(v46, a2, v4, v15);
  v42 = v46[4];
  v43 = v46[1];
  v46[0] = MEMORY[0x1E69E7CD0];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (*(AssociatedConformanceWitness + 64))(v13, v9, AssociatedConformanceWitness);
  v21 = *(v10 + 8);
  v21(v13, v9);
  v21(v17, v9);
  sub_1AE00F014(v20);

  v22 = v39;
  swift_getAtKeyPath();

  v23 = v40;
  swift_getAtKeyPath();

  v25 = v37;
  v24 = v38;
  v26 = AssociatedTypeWitness;
  v27 = swift_getAssociatedConformanceWitness();
  v28 = v23;
  v29 = (*(v27 + 64))(v23, v26, v27);
  v30 = *(v44 + 8);
  v30(v28, v26);
  v30(v22, v26);
  sub_1AE00F014(v29);
  v31 = *(v24 + 8);
  v32 = *(v31 + 24);
  v33 = v32(v25, v31);
  v34 = v32(v25, v31);
  v35 = sub_1AE2200E4(v34, v33);

  sub_1AE00F014(v35);

  return v46[0];
}

uint64_t CRStruct_2.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a1;
  v67 = a2;
  v74 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v64 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v65 = *(swift_getAssociatedConformanceWitness() + 16);
  v52 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = &v51 - v10;
  v61 = swift_checkMetadataState();
  v63 = *(v61 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v51 - v14;
  v71 = v8;
  v69 = *(v8 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v51 - v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  v70 = v7;
  v62 = *(v7 - 8);
  v26 = *(v62 + 64);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v55 = &v51 - v29;
  v30 = *(v6 + 48);
  v72 = v6;
  v73 = a3;
  v30(v75, a3, v6, v28);
  v57 = v75[1];
  v56 = v75[4];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v31 = v67;
  (*(v64 + 40))(v22, v67, v18);
  v32 = *(v19 + 8);
  v32(v22, v18);
  v32(v25, v18);
  v33 = v58;

  v34 = v59;
  swift_getAtKeyPath();

  v35 = v60;
  swift_getAtKeyPath();

  v36 = v34;
  v37 = v61;
  (*(v65 + 40))(v35, v31, v61);

  v38 = *(v63 + 8);
  v38(v35, v37);
  v39 = v37;
  v40 = v55;
  v38(v36, v39);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v40, 1) == 1 && (*(*(v52 - 8) + 48))(v33, 1) == 1)
  {
    (*(v62 + 8))(v40, v70);
    v41 = *(*(*(v72 + 8) + 8) + 16);
    v42 = swift_getAssociatedTypeWitness();
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    v43 = v71;
    v44 = v69;
  }

  else
  {
    v45 = *(TupleTypeMetadata2 + 48);
    v46 = v53;
    (*(v62 + 32))(v53, v40, v70);
    v44 = v69;
    v43 = v71;
    (*(v69 + 16))(&v46[v45], v33, v71);
    v47 = *(*(*(v72 + 8) + 8) + 16);
    v48 = swift_getAssociatedTypeWitness();
    v49 = v74;
    swift_dynamicCast();
    (*(*(v48 - 8) + 56))(v49, 0, 1, v48);
  }

  return (*(v44 + 8))(v33, v43);
}

uint64_t CRStruct_2.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v34 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  (*(v4 + 48))(v41, a2, v4, v16);
  v38 = v41[1];
  v39 = v41[4];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (*(AssociatedConformanceWitness + 88))(v14, v10, AssociatedConformanceWitness);
  v21 = *(v11 + 8);
  v21(v14, v10);
  v21(v18, v10);
  if (v20)
  {
    goto LABEL_3;
  }

  v22 = v34;
  swift_getAtKeyPath();

  v23 = v35;
  swift_getAtKeyPath();

  v24 = v37;
  v25 = swift_getAssociatedConformanceWitness();
  v26 = (*(v25 + 88))(v23, v24, v25);
  v27 = *(v36 + 8);
  v27(v23, v24);
  v27(v22, v24);
  if (v26)
  {
LABEL_3:

    v28 = 1;
  }

  else
  {
    v29 = *(v4 + 8);
    v30 = *(v29 + 24);
    v31 = v30(a2, v29);
    v32 = v30(a2, v29);
    v28 = sub_1AE21FE14(v32, v31);
  }

  return v28 & 1;
}

uint64_t CRStruct_2.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a1;
  v55 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v39 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v39 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = swift_getAssociatedConformanceWitness();
  v44 = swift_getAssociatedTypeWitness();
  v48 = sub_1AE23D7CC();
  v45 = *(v48 - 8);
  v21 = *(v45 + 64);
  v22 = MEMORY[0x1EEE9AC00](v48);
  v40 = &v39 - v23;
  (*(v5 + 48))(v57, a2, v5, v22);
  v42 = v57[1];
  v41 = v57[4];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  (*(v20 + 72))(v16, v13, v20);
  v24 = *(v43 + 8);
  v24(v16, v13);
  v24(v19, v13);

  v25 = v46;
  swift_getAtKeyPath();

  v26 = v51;
  swift_getAtKeyPath();

  v27 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v26, AssociatedTypeWitness);

  v28 = *(v52 + 8);
  v28(v26, v27);
  v29 = v25;
  v30 = v40;
  v28(v29, v27);
  if ((*(*(v44 - 8) + 48))(v30, 1) == 1 && (*(*(v39 - 8) + 48))(v56, 1) == 1)
  {
    (*(v45 + 8))(v30, v48);
    v31 = v54;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v55, 1, 1, TupleTypeMetadata2);
    v33 = v53;
  }

  else
  {
    v34 = v48;
    v31 = v54;
    v35 = swift_getTupleTypeMetadata2();
    v36 = *(v35 + 48);
    v37 = v55;
    (*(v45 + 32))(v55, v30, v34);
    v33 = v53;
    (*(v53 + 16))(v37 + v36, v56, v31);
    (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
  }

  return (*(v33 + 8))(v56, v31);
}

uint64_t CRStruct_2.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = AssociatedTypeWitness;
  v54 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v52 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v59 = swift_getAssociatedConformanceWitness();
  v60 = v10;
  v52 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v12 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_1AE23D7CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v70 = *(v11 - 8);
  v21 = *(v70 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - v24;
  (*(v5 + 48))(v72, a2, v5, v23);
  v26 = v15;
  v27 = TupleTypeMetadata2;
  v28 = v72[2];
  v63 = v72[4];
  v64 = v72[1];
  v62 = v72[5];
  v29 = *(v26 + 16);
  v65 = a1;
  v58 = v29;
  v29(v20, a1, v14);
  v30 = *(v27 - 8);
  v57 = *(v30 + 48);
  v56 = v30 + 48;
  v31 = v57(v20, 1, v27);
  v67 = v12;
  v53 = v26;
  v55 = v27;
  if (v31 == 1)
  {
    v32 = v11;
    v33 = *(v26 + 8);

    v33(v20, v14);
    (*(*(v52 - 8) + 56))(v25, 1, 1);
  }

  else
  {
    v34 = *(v27 + 48);
    (*(v70 + 32))(v25, v20, v11);
    v32 = v11;
    v35 = *(v71 + 8);

    v35(&v20[v34], v12);
  }

  v36 = swift_modifyAtWritableKeyPath();
  v37 = v59;
  v38 = *(v59 + 80);
  v39 = swift_checkMetadataState();
  v38(v25, v39, v37);
  v40 = *(v70 + 8);
  v40(v25, v32);
  v36(v72, 0);
  v70 = v28;

  v41 = v61;
  v58(v61, v65, v14);
  v42 = v55;
  if (v57(v41, 1, v55) == 1)
  {
    v43 = *(v53 + 8);

    v43(v41, v14);
    v44 = v66;
    (*(*(v54 - 8) + 56))(v66, 1, 1);
    v45 = v67;
    v46 = v71;
  }

  else
  {
    v46 = v71;
    v44 = v66;
    v45 = v67;
    (*(v71 + 32))(v66, &v41[*(v42 + 48)], v67);

    v40(v41, v32);
  }

  v47 = swift_modifyAtWritableKeyPath();
  v48 = AssociatedConformanceWitness;
  v49 = *(AssociatedConformanceWitness + 80);
  v50 = swift_checkMetadataState();
  v49(v44, v50, v48);
  (*(v46 + 8))(v44, v45);
  v47(v72, 0);
}

Swift::Bool __swiftcall CRStruct_2.needToFinalizeTimestamps()()
{
  v3 = v0;
  v4 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v21 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  (*(v4 + 48))(v27, v3, v4, v11);
  v25 = v27[4];
  v26 = v27[1];

  v22 = v2;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(*(AssociatedConformanceWitness + 16) + 56))(v8);
  (*(v9 + 8))(v13, v8);
  if (v15)
  {

    v16 = 1;
  }

  else
  {
    v17 = v21;
    swift_getAtKeyPath();
    v18 = v24;
    v19 = swift_getAssociatedConformanceWitness();
    v16 = (*(*(v19 + 16) + 56))(v18);

    (*(v23 + 8))(v17, v18);
  }

  return v16 & 1;
}

uint64_t CRStruct_2.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 48))(&v14, a2, *(a3 + 8));

  v12 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  v5 = *(v4 + 64);
  v6 = swift_checkMetadataState();
  v5(a1, v6, v4);
  v12(&v14, 0);

  v7 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  v9 = *(v8 + 64);
  v10 = swift_checkMetadataState();
  v9(a1, v10, v8);
  v7(&v14, 0);
}

uint64_t CRStruct_2.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v26 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v21 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  (*(v4 + 48))(&v28[1], a1, v4, v11);
  v27 = *&v28[17];
  v24 = *&v28[33];
  v25 = *&v28[9];
  v14 = (*(*(v4 + 8) + 24))(a1);
  sub_1AE21FFB0(v14, &v28[1]);

  v15 = v28[1];
  if (v28[1] > 2u)
  {
    goto LABEL_8;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v28, v8);
  (*(v9 + 8))(v13, v8);
  if (v28[0] > v15)
  {
    v15 = v28[0];
  }

  v28[1] = v15;
  if (v28[0] > 2u)
  {
LABEL_8:
  }

  else
  {
    v17 = v21;
    swift_getAtKeyPath();
    v18 = v23;
    v19 = swift_getAssociatedConformanceWitness();
    (*(*(*(v19 + 16) + 8) + 24))(v28, v18);

    result = (*(v22 + 8))(v17, v18);
    if (v28[0] > v15)
    {
      LOBYTE(v15) = v28[0];
    }
  }

  *v26 = v15;
  return result;
}

uint64_t CRStruct_2<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v50 = a4;
  v45 = a5;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v41 - v9;
  v48 = swift_getAssociatedTypeWitness();
  v49 = *(v48 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = *(v7 + 48);
  v41 = v7;
  v42 = a2;
  v18(&v55, a2, v7, v15);
  v20 = v55;
  v19 = v56;
  v21 = v57;
  v43 = v58;
  v53 = v60;
  v54 = v59;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10();
  sub_1AE23E3CC();

  swift_getAtKeyPath();

  v55 = v20;
  v56 = v19;
  v23 = v17;
  v24 = v48;
  v25 = v51;
  sub_1AE23DD5C();
  if (v25)
  {

    (*(v49 + 8))(v12, v24);
    return (*(v52 + 8))(v23, v13);
  }

  else
  {
    (*(v49 + 8))(v12, v24);

    swift_getAtKeyPath();

    v55 = v43;
    v56 = v54;

    v26 = AssociatedTypeWitness;
    sub_1AE23DD5C();
    v48 = v21;
    v49 = v19;
    v50 = v23;
    v51 = v13;

    (*(v44 + 8))(v47, v26);
    result = (*(*(v41 + 8) + 24))(v42);
    v28 = result;
    v29 = 0;
    v30 = result + 64;
    v31 = 1 << *(result + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(result + 64);
    for (i = (v31 + 63) >> 6; v33; v29 = v35)
    {
      v35 = v29;
LABEL_11:
      v37 = __clz(__rbit64(v33)) | (v35 << 6);
      v38 = (*(v28 + 48) + 16 * v37);
      v39 = *v38;
      v40 = v38[1];
      v61 = *(*(v28 + 56) + 8 * v37);
      v55 = v39;
      v56 = v40;
      sub_1AE048F64();

      sub_1AE23DD5C();
      v33 &= v33 - 1;
    }

    v36 = v52;
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= i)
      {

        return (*(v36 + 8))(v50, v51);
      }

      v33 = *(v30 + 8 * v35);
      ++v29;
      if (v33)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_3.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v41[1] = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  v54 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = v41 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v45 = v14;
  v46 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v42 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v43 = v41 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *(*(a2 - 8) + 16);
  v55 = v4;
  v27(a4, v4, a2, v26);
  (*(v7 + 64))(v56, a2, v7);
  v28 = v56[2];
  v49 = v56[4];
  v50 = v56[1];
  v48 = v56[7];
  v41[2] = v56[8];

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v47;
  (*(*(AssociatedConformanceWitness + 16) + 24))(v47, v20);
  (*(v21 + 8))(v24, v20);
  v44 = v28;
  swift_setAtWritableKeyPath();

  v31 = v42;
  swift_getAtKeyPath();
  v32 = v45;
  v33 = swift_getAssociatedConformanceWitness();
  (*(*(v33 + 16) + 24))(v30, v32);
  (*(v46 + 8))(v31, v32);
  swift_setAtWritableKeyPath();

  v34 = v51;
  swift_getAtKeyPath();
  v35 = v53;
  v36 = swift_getAssociatedConformanceWitness();
  (*(*(v36 + 16) + 24))(v30, v35);
  (*(v54 + 8))(v34, v35);
  swift_setAtWritableKeyPath();

  v37 = *(v7 + 8);
  v38 = (*(v37 + 24))(a2, v37);
  v39 = sub_1AE156B60(v38, v30);

  (*(v37 + 32))(v39, a2, v37);
}

uint64_t CRStruct_3.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v40 - v14;
  v48 = swift_getAssociatedTypeWitness();
  v46 = *(v48 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v40 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v41 = *(v19 - 8);
  v20 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  if (a1)
  {
    v25 = a1;
  }

  else
  {
    v25 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v55[0] = v25;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v24);
  v40 = a4;
  v26 = *(v9 + 64);

  v26(v54, a2, v9);
  v27 = v54[2];
  v49 = v54[1];
  v47 = v54[4];
  v45 = v54[7];

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v55, v19);
  (*(v41 + 8))(v22, v19);
  v42 = v27;
  swift_setAtWritableKeyPath();

  v29 = v44;
  swift_getAtKeyPath();
  v30 = v9;
  v31 = v48;
  v32 = swift_getAssociatedConformanceWitness();
  (*(*(v32 + 16) + 24))(v55, v31);
  (*(v46 + 8))(v29, v31);
  swift_setAtWritableKeyPath();

  v33 = v51;
  swift_getAtKeyPath();
  v34 = v53;
  v35 = swift_getAssociatedConformanceWitness();
  (*(*(v35 + 16) + 24))(v55, v34);
  (*(v52 + 8))(v33, v34);
  swift_setAtWritableKeyPath();

  v36 = *(v9 + 8);
  v37 = (*(*(v30 + 8) + 24))(a2, *(v30 + 8));
  v38 = sub_1AE156B60(v37, v55);

  (*(v36 + 32))(v38, a2, v36);
}

uint64_t CRStruct_3.merge(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _WORD *a3@<X8>)
{
  v50 = a3;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v38 - v7;
  v40 = swift_getAssociatedTypeWitness();
  v39 = *(v40 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v38 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v38 - v15;
  (*(v5 + 64))(&v51 + 6, a1, v5, v14);
  v17 = v54;
  v48 = v53;
  v46 = v55;
  v43 = v57;
  v44 = v56;
  v42 = v58;
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v51 + 3) = word_1ED96F220;
  BYTE5(v51) = byte_1ED96F222;

  swift_getAtKeyPath();
  v18 = swift_modifyAtWritableKeyPath();
  v38 = v3;
  v19 = v18;
  v41 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(&v51, v16, v11);
  (*(v12 + 8))(v16, v11);
  v19(&v51 + 6, 0);

  HIWORD(v51) = v51;
  v52 = BYTE2(v51);
  v21 = &v51 + 6;
  MergeResult.merge(_:)(v21);

  swift_getAtKeyPath();
  v22 = swift_modifyAtWritableKeyPath();
  v23 = v40;
  v24 = swift_getAssociatedConformanceWitness();
  (*(*(v24 + 8) + 8))(&v51, v10, v23);
  (*(v39 + 8))(v10, v23);
  v22(&v51 + 6, 0);

  HIWORD(v51) = v51;
  v52 = BYTE2(v51);
  v25 = &v51 + 6;
  MergeResult.merge(_:)(v25);

  v26 = v45;
  swift_getAtKeyPath();
  v27 = swift_modifyAtWritableKeyPath();
  v28 = AssociatedTypeWitness;
  v29 = swift_getAssociatedConformanceWitness();
  (*(*(v29 + 8) + 8))(&v51, v26, v28);
  (*(v47 + 8))(v26, v28);
  v27(&v51 + 6, 0);

  HIWORD(v51) = v51;
  v52 = BYTE2(v51);
  v30 = &v51 + 6;
  MergeResult.merge(_:)(v30);
  v31 = *(v5 + 8);
  v32 = (*(v31 + 24))(a1, v31);
  v33 = (*(v31 + 40))(&v51 + 6, a1, v31);
  sub_1AE21F75C(v32, &v51);

  v33(&v51 + 6, 0);
  HIWORD(v51) = v51;
  v52 = BYTE2(v51);
  v34 = &v51 + 6;
  MergeResult.merge(_:)(v34);
  (*(v31 + 64))(a1, v31);

  v36 = BYTE5(v51);
  v37 = v50;
  *v50 = *(&v51 + 3);
  *(v37 + 2) = v36;
  return result;
}

uint64_t CRStruct_3.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v65 = AssociatedTypeWitness;
  v66 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v52 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v52 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - v24;
  v26 = *(v4 + 64);
  v54 = v4;
  v26(v69, a2, v4, v23);
  v59 = v69[2];
  v63 = v69[4];
  v64 = v69[1];
  v68 = v69[5];
  v61 = v69[7];
  v69[0] = MEMORY[0x1E69E7CD0];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v53 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = (*(AssociatedConformanceWitness + 64))(v21, v17, AssociatedConformanceWitness);
  v29 = *(v18 + 8);
  v29(v21, v17);
  v29(v25, v17);
  sub_1AE00F014(v28);

  v30 = v55;
  swift_getAtKeyPath();

  v31 = v56;
  swift_getAtKeyPath();

  v32 = v54;
  v33 = v57;
  v34 = swift_getAssociatedConformanceWitness();
  v35 = v31;
  v36 = (*(v34 + 64))(v31, v33, v34);
  v37 = *(v58 + 8);
  v37(v35, v33);
  v37(v30, v33);
  sub_1AE00F014(v36);

  v38 = v60;
  swift_getAtKeyPath();

  v39 = v62;
  swift_getAtKeyPath();

  v40 = v32;
  v41 = v53;
  v42 = v65;
  v43 = swift_getAssociatedConformanceWitness();
  v44 = (*(v43 + 64))(v39, v42, v43);
  v45 = *(v66 + 8);
  v45(v39, v42);
  v45(v38, v42);
  sub_1AE00F014(v44);
  v46 = *(v40 + 8);
  v47 = *(v46 + 24);
  v48 = v47(v41, v46);
  v49 = v47(v41, v46);
  v50 = sub_1AE2200E4(v49, v48);

  sub_1AE00F014(v50);

  return v69[0];
}

uint64_t CRStruct_3.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a2;
  v89 = a1;
  v98 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v85 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v87 = *(swift_getAssociatedConformanceWitness() + 16);
  v68 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v88 = *(swift_getAssociatedConformanceWitness() + 16);
  v67 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(*(TupleTypeMetadata3 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v69 = &v67 - v11;
  v84 = swift_checkMetadataState();
  v86 = *(v84 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v67 - v15;
  v94 = v9;
  v92 = *(v9 - 8);
  v16 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v67 - v18;
  v79 = swift_checkMetadataState();
  v80 = *(v79 - 8);
  v19 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v67 - v22;
  v95 = v8;
  v90 = *(v8 - 8);
  v23 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v74 = &v67 - v25;
  v26 = swift_checkMetadataState();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  v93 = v7;
  v83 = *(v7 - 8);
  v34 = *(v83 + 64);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v72 = &v67 - v37;
  v38 = *(v6 + 64);
  v96 = v6;
  v97 = a3;
  v38(v100, a3, v6, v36);
  v78 = v100[1];
  v75 = v100[4];
  v73 = v100[7];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v39 = v99;
  (*(v85 + 40))(v30, v99, v26);
  v40 = *(v27 + 8);
  v40(v30, v26);
  v40(v33, v26);

  v41 = v71;
  swift_getAtKeyPath();

  v42 = v76;
  swift_getAtKeyPath();

  v43 = v74;
  v44 = v39;
  v45 = v41;
  v46 = v79;
  (*(v87 + 40))(v42, v44, v79);
  v47 = *(v80 + 8);
  v47(v42, v46);
  v47(v45, v46);

  v48 = v81;
  swift_getAtKeyPath();

  v49 = v82;
  swift_getAtKeyPath();

  v50 = v77;
  v51 = v84;
  (*(v88 + 40))(v49, v99, v84);

  v52 = *(v86 + 8);
  v52(v49, v51);
  v52(v48, v51);
  v53 = v72;
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v72, 1) == 1 && (*(*(v68 - 8) + 48))(v43, 1) == 1 && (*(*(v67 - 8) + 48))(v50, 1) == 1)
  {
    (*(v83 + 8))(v53, v93);
    v54 = *(*(*(v96 + 8) + 8) + 16);
    v55 = swift_getAssociatedTypeWitness();
    (*(*(v55 - 8) + 56))(v98, 1, 1, v55);
    v57 = v94;
    v56 = v95;
    v58 = v92;
    v59 = v90;
  }

  else
  {
    v60 = *(TupleTypeMetadata3 + 48);
    v61 = *(TupleTypeMetadata3 + 64);
    v62 = v69;
    (*(v83 + 32))(v69, v53, v93);
    v59 = v90;
    v56 = v95;
    (*(v90 + 16))(&v62[v60], v43, v95);
    v58 = v92;
    v57 = v94;
    (*(v92 + 16))(&v62[v61], v50, v94);
    v63 = *(*(*(v96 + 8) + 8) + 16);
    v64 = swift_getAssociatedTypeWitness();
    v65 = v98;
    swift_dynamicCast();
    (*(*(v64 - 8) + 56))(v65, 0, 1, v64);
  }

  (*(v58 + 8))(v50, v57);
  return (*(v59 + 8))(v43, v56);
}

uint64_t CRStruct_3.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a1;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v47 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  (*(v6 + 64))(v63, a2, v6, v22);
  v25 = v63[5];
  v58 = v63[1];
  v59 = v63[7];
  v60 = v63[4];
  v61 = v63[8];

  v56 = v4;
  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v57 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 88))(v20, v16, AssociatedConformanceWitness);
  v27 = *(v17 + 8);
  v27(v20, v16);
  v27(v24, v16);
  if (a2)
  {
    goto LABEL_3;
  }

  v28 = v52;
  swift_getAtKeyPath();

  v29 = v53;
  swift_getAtKeyPath();

  v30 = v55;
  v31 = swift_getAssociatedConformanceWitness();
  v32 = (*(v31 + 88))(v29, v30, v31);
  v33 = *(v54 + 8);
  v33(v29, v30);
  v33(v28, v30);
  if (v32)
  {
    goto LABEL_3;
  }

  v55 = v25;

  v36 = v48;
  swift_getAtKeyPath();

  v37 = v49;
  swift_getAtKeyPath();

  v38 = AssociatedTypeWitness;
  v39 = swift_getAssociatedConformanceWitness();
  v40 = (*(v39 + 88))(v37, v38, v39);
  v41 = *(v50 + 8);
  v41(v37, v38);
  v41(v36, v38);
  if (v40)
  {
LABEL_3:

    v34 = 1;
  }

  else
  {
    v42 = *(v6 + 8);
    v43 = *(v42 + 24);
    v44 = v57;
    v45 = v43(v57, v42);
    v46 = v43(v44, v42);
    v34 = sub_1AE21FE14(v46, v45);
  }

  return v34 & 1;
}

uint64_t CRStruct_3.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a1;
  v81 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v54 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v54 - v12;
  v65 = swift_getAssociatedTypeWitness();
  v68 = *(v65 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v54 - v16;
  v63 = swift_getAssociatedConformanceWitness();
  v56 = swift_getAssociatedTypeWitness();
  v17 = sub_1AE23D7CC();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v54 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v27 = swift_getAssociatedConformanceWitness();
  v64 = swift_getAssociatedTypeWitness();
  v70 = sub_1AE23D7CC();
  v69 = *(v70 - 8);
  v28 = *(v69 + 64);
  v29 = MEMORY[0x1EEE9AC00](v70);
  v58 = &v54 - v30;
  (*(v5 + 64))(v83, a2, v5, v29);
  v61 = v83[1];
  v60 = v83[4];
  v59 = v83[7];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  (*(v27 + 72))(v23, v20, v27);
  v31 = *(v57 + 8);
  v31(v23, v20);
  v31(v26, v20);

  v32 = v62;
  swift_getAtKeyPath();

  v33 = v66;
  swift_getAtKeyPath();

  v34 = v65;
  (*(v63 + 72))(v33, v65);
  v35 = *(v68 + 8);
  v35(v33, v34);
  v35(v32, v34);

  v36 = v72;
  swift_getAtKeyPath();

  v37 = v75;
  swift_getAtKeyPath();

  v38 = AssociatedTypeWitness;
  v39 = v67;
  (*(AssociatedConformanceWitness + 72))(v37, AssociatedTypeWitness);

  v40 = *(v76 + 8);
  v41 = v38;
  v42 = v58;
  v40(v37, v41);
  v40(v36, v41);
  if ((*(*(v64 - 8) + 48))(v42, 1) == 1 && (*(*(v56 - 8) + 48))(v82, 1) == 1 && (*(*(v55 - 8) + 48))(v39, 1) == 1)
  {
    (*(v69 + 8))(v42, v70);
    v43 = v78;
    v44 = v80;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(TupleTypeMetadata3 - 8) + 56))(v81, 1, 1, TupleTypeMetadata3);
    v46 = v79;
    v47 = v77;
  }

  else
  {
    v48 = v70;
    v43 = v78;
    v44 = v80;
    v49 = swift_getTupleTypeMetadata3();
    v50 = *(v49 + 48);
    v51 = *(v49 + 64);
    v52 = v81;
    (*(v69 + 32))(v81, v42, v48);
    v47 = v77;
    (*(v77 + 16))(v52 + v50, v82, v43);
    v46 = v79;
    (*(v79 + 16))(v52 + v51, v39, v44);
    (*(*(v49 - 8) + 56))(v52, 0, 1, v49);
  }

  (*(v46 + 8))(v39, v44);
  return (*(v47 + 8))(v82, v43);
}

uint64_t CRStruct_3.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v102 = AssociatedTypeWitness;
  v86 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v84 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v98 = swift_getAssociatedConformanceWitness();
  v99 = v11;
  v85 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v103 = *(v12 - 8);
  v13 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v84 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v88 = swift_getAssociatedConformanceWitness();
  v96 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1AE23D7CC();
  v104 = v12;
  v113 = v7;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19 = sub_1AE23D7CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v84 - v26;
  v111 = v17;
  v28 = *(v17 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v84 - v32;
  v34 = *(v5 + 64);
  v35 = v5;
  v37 = v36;
  v34(v115, a2, v35, v31);
  v38 = v20;
  v39 = v115[2];
  v97 = v115[1];
  v95 = v115[4];
  v114 = v115[5];
  v93 = v115[7];
  v92 = v115[8];
  v40 = *(v38 + 16);
  v112 = a1;
  v109 = v40;
  v110 = v38 + 16;
  v40(v27, a1, v37);
  v41 = *(TupleTypeMetadata3 - 8);
  v42 = *(v41 + 48);
  v107 = v41 + 48;
  v108 = v42;
  v43 = v42(v27, 1, TupleTypeMetadata3);
  v105 = v8;
  v90 = v38;
  v106 = v37;
  if (v43 == 1)
  {
    v44 = *(v38 + 8);

    v44(v27, v37);
    (*(*(v16 - 8) + 56))(v33, 1, 1, v16);
  }

  else
  {
    v45 = *(TupleTypeMetadata3 + 48);
    v46 = *(TupleTypeMetadata3 + 64);
    (*(v28 + 32))(v33, v27, v111);
    v47 = *(v8 + 8);

    v47(&v27[v46], v113);
    (*(v103 + 8))(&v27[v45], v104);
  }

  v48 = TupleTypeMetadata3;
  v49 = swift_modifyAtWritableKeyPath();
  v50 = v88;
  v51 = *(v88 + 80);
  v52 = swift_checkMetadataState();
  v51(v33, v52, v50);
  v53 = *(v28 + 8);
  v54 = v111;
  v53(v33, v111);
  v49(v115, 0);
  v96 = v39;

  v55 = v89;
  v109(v89, v112, v106);
  v56 = v108(v55, 1, v48);
  v88 = v28 + 8;
  v84 = v53;
  v87 = v48;
  if (v56 == 1)
  {
    v57 = *(v90 + 8);

    v58 = v106;
    v57(v55, v106);
    v59 = v58;
    v60 = v94;
    (*(*(v85 - 8) + 56))(v94, 1, 1);
    v61 = v104;
    v62 = v103;
  }

  else
  {
    v63 = *(v48 + 48);
    v85 = *(v48 + 64);
    v62 = v103;
    v60 = v94;
    v61 = v104;
    (*(v103 + 32))(v94, &v55[v63], v104);
    v64 = *(v105 + 8);

    v64(&v55[v85], v113);
    v53(v55, v54);
    v59 = v106;
  }

  v65 = swift_modifyAtWritableKeyPath();
  v66 = v98;
  v67 = *(v98 + 80);
  v68 = swift_checkMetadataState();
  v67(v60, v68, v66);
  v69 = *(v62 + 8);
  v69(v60, v61);
  v65(v115, 0);

  v70 = v91;
  v109(v91, v112, v59);
  v71 = v87;
  if (v108(v70, 1, v87) == 1)
  {
    v72 = *(v90 + 8);

    v72(v70, v59);
    v73 = v100;
    (*(*(v86 - 8) + 56))(v100, 1, 1);
    v74 = v105;
    v75 = v113;
  }

  else
  {
    v76 = v61;
    v77 = *(v71 + 48);
    v78 = *(v71 + 64);
    v74 = v105;
    v73 = v100;
    v75 = v113;
    (*(v105 + 32))(v100, &v70[v78], v113);

    v69(&v70[v77], v76);
    v84(v70, v111);
  }

  v79 = swift_modifyAtWritableKeyPath();
  v80 = AssociatedConformanceWitness;
  v81 = *(AssociatedConformanceWitness + 80);
  v82 = swift_checkMetadataState();
  v81(v73, v82, v80);
  (*(v74 + 8))(v73, v75);
  v79(v115, 0);
}

uint64_t CRStruct_3.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v34 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v34 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - v17;
  (*(v6 + 64))(v46, a2, v6, v16);
  v45 = v46[4];
  v43 = v46[1];
  v44 = v46[7];
  v42 = v46[8];

  v41 = v3;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(a1, v13);
  (*(v14 + 8))(v18, v13);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  if ((*(v21 + 8))(v20, v21))
  {
    goto LABEL_3;
  }

  v22 = v38;
  swift_getAtKeyPath();

  v23 = v40;
  v24 = swift_getAssociatedConformanceWitness();
  (*(*(v24 + 16) + 48))(a1, v23);
  (*(v39 + 8))(v22, v23);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  if ((*(v26 + 8))(v25, v26))
  {
    goto LABEL_3;
  }

  v28 = v35;
  swift_getAtKeyPath();

  v29 = v37;
  v30 = swift_getAssociatedConformanceWitness();
  (*(*(v30 + 16) + 48))(a1, v29);
  (*(v36 + 8))(v28, v29);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if ((*(v32 + 8))(v31, v32))
  {
LABEL_3:
  }

  else
  {
    v33 = (*(*(v6 + 8) + 24))(a2);
    sub_1ADDDC764(a1, v33);
  }
}

Swift::Bool __swiftcall CRStruct_3.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v27 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  (*(v3 + 64))(v36, v2, v3, v14);
  v34 = v36[1];
  v35 = v36[4];
  v32 = v36[8];
  v33 = v36[7];

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(*(AssociatedConformanceWitness + 16) + 56))(v11);
  (*(v12 + 8))(v16, v11);
  if (v18 & 1) != 0 || (swift_getAtKeyPath(), v19 = v31, v20 = swift_getAssociatedConformanceWitness(), v21 = (*(*(v20 + 16) + 56))(v19), (*(v30 + 8))(v10, v19), (v21))
  {

    v22 = 1;
  }

  else
  {
    v23 = v27;
    swift_getAtKeyPath();
    v24 = v29;
    v25 = swift_getAssociatedConformanceWitness();
    v22 = (*(*(v25 + 16) + 56))(v24);

    (*(v28 + 8))(v23, v24);
  }

  return v22 & 1;
}

uint64_t CRStruct_3.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 64))(&v17, a2, *(a3 + 8));

  v15 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  v5 = *(v4 + 64);
  v6 = swift_checkMetadataState();
  v5(a1, v6, v4);
  v15(&v17, 0);

  v16 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 16);
  v8 = *(v7 + 64);
  v9 = swift_checkMetadataState();
  v8(a1, v9, v7);
  v16(&v17, 0);

  v10 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 16);
  v12 = *(v11 + 64);
  v13 = swift_checkMetadataState();
  v12(a1, v13, v11);
  v10(&v17, 0);
}

uint64_t CRStruct_3.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v38 = a3;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v28 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - v17;
  (*(v5 + 64))(v41 + 1, a1, v5, v16);
  v36 = *(&v41[4] + 1);
  v37 = *(&v41[1] + 1);
  v39 = *(&v41[5] + 1);
  v40 = *(&v41[2] + 1);
  v34 = *(&v41[8] + 1);
  v35 = *(&v41[7] + 1);
  v19 = *(*(v5 + 8) + 24);
  v33 = v3;
  v20 = v19(a1);
  sub_1AE21FFB0(v20, v41 + 1);

  v21 = BYTE1(v41[0]);
  if (BYTE1(v41[0]) > 2u)
  {
    goto LABEL_11;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v41, v13);
  (*(v14 + 8))(v18, v13);
  if (LOBYTE(v41[0]) > v21)
  {
    v21 = LOBYTE(v41[0]);
  }

  BYTE1(v41[0]) = v21;
  if (LOBYTE(v41[0]) > 2u)
  {
    goto LABEL_11;
  }

  swift_getAtKeyPath();
  v23 = swift_getAssociatedConformanceWitness();
  (*(*(*(v23 + 16) + 8) + 24))(v41, v9);
  (*(v32 + 8))(v12, v9);
  if (LOBYTE(v41[0]) > v21)
  {
    v21 = LOBYTE(v41[0]);
  }

  BYTE1(v41[0]) = v21;
  if (v21 > 2)
  {
LABEL_11:
  }

  else
  {
    v24 = v29;
    swift_getAtKeyPath();
    v25 = v31;
    v26 = swift_getAssociatedConformanceWitness();
    (*(*(*(v26 + 16) + 8) + 24))(v41, v25);

    result = (*(v30 + 8))(v24, v25);
    if (LOBYTE(v41[0]) > v21)
    {
      LOBYTE(v21) = v41[0];
    }
  }

  *v38 = v21;
  return result;
}

uint64_t CRStruct_3<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v53 = a5;
  v56 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v44 - v10;
  v54 = swift_getAssociatedTypeWitness();
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v44 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  v22 = *(v8 + 64);
  v44 = a2;
  v22(&v66, a2, v8, v19);
  v64 = v67;
  v65 = v66;
  v23 = v68;
  v50 = v69;
  v60 = v71;
  v61 = v70;
  v45 = v72;
  v59 = v73;
  v63 = v74;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10();
  sub_1AE23E3CC();

  swift_getAtKeyPath();

  v66 = v65;
  v67 = v64;
  v65 = v17;
  v25 = v57;
  sub_1AE23DD5C();
  if (v25)
  {

    (*(v55 + 8))(v16, v13);
    return (*(v58 + 8))(v21, v65);
  }

  else
  {
    v57 = v8;
    (*(v55 + 8))(v16, v13);

    v26 = v51;
    swift_getAtKeyPath();

    v66 = v50;
    v67 = v61;

    v27 = v54;
    sub_1AE23DD5C();

    (*(v52 + 8))(v26, v27);

    v29 = v47;
    swift_getAtKeyPath();

    v66 = v45;
    v67 = v59;

    sub_1AE23DD5C();
    v55 = v23;
    v56 = v21;

    (*(v48 + 8))(v29, AssociatedTypeWitness);
    result = (*(*(v57 + 8) + 24))(v44);
    v30 = result;
    v31 = 0;
    v32 = result + 64;
    v33 = 1 << *(result + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(result + 64);
    v36 = (v33 + 63) >> 6;
    while (1)
    {
      v62 = 0;
      if (!v35)
      {
        break;
      }

      v37 = v31;
LABEL_12:
      v39 = __clz(__rbit64(v35)) | (v37 << 6);
      v40 = (*(v30 + 48) + 16 * v39);
      v41 = *v40;
      v42 = v40[1];
      v75 = *(*(v30 + 56) + 8 * v39);
      v66 = v41;
      v67 = v42;
      sub_1AE048F64();

      v43 = v62;
      sub_1AE23DD5C();
      if (v43)
      {

        (*(v58 + 8))(v56, v65);
      }

      v35 &= v35 - 1;

      v31 = v37;
    }

    v38 = v58;
    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v37 >= v36)
      {

        return (*(v38 + 8))(v56, v65);
      }

      v35 = *(v32 + 8 * v37);
      ++v31;
      if (v35)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_4.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v84 = a1;
  v83 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v54 - v12;
  v61 = swift_getAssociatedTypeWitness();
  v67 = *(v61 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v54 - v16;
  v59 = swift_getAssociatedTypeWitness();
  v63 = *(v59 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v54 - v20;
  v55 = swift_getAssociatedTypeWitness();
  v58 = *(v55 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v57 = &v54 - v25;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v24);
  v82 = v8;
  (*(v8 + 80))(v86, a2, v8);
  v26 = v86[1];
  v77 = v86[2];
  v73 = v86[4];
  v79 = v86[5];
  v72 = v86[7];
  v80 = v86[8];
  v27 = v86[10];
  v28 = v86[11];
  sub_1AE23DB8C();
  v85[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v85[1] = swift_getTupleTypeMetadata2();
  v81 = a2;
  sub_1AE23DB8C();
  v85[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v85[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v64 = *(TupleTypeMetadata - 8);
  v30 = *(v64 + 16);
  v75 = TupleTypeMetadata;
  v30(v85, v86, TupleTypeMetadata);
  v76 = v26;

  v78 = v28;

  v71 = v27;

  v30(v85, v86, TupleTypeMetadata);

  v31 = v56;
  swift_getAtKeyPath();

  v32 = v55;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v84, v32);
  (*(v58 + 8))(v31, v32);
  swift_setAtWritableKeyPath();

  v34 = v75;
  v30(v85, v86, v75);

  v30(v85, v86, v34);

  v35 = v60;
  swift_getAtKeyPath();

  v36 = v59;
  v37 = swift_getAssociatedConformanceWitness();
  (*(*(v37 + 16) + 24))(v84, v36);
  (*(v63 + 8))(v35, v36);
  swift_setAtWritableKeyPath();

  v38 = v75;
  v54 = v30;
  v30(v85, v86, v75);

  v30(v85, v86, v38);

  v39 = v65;
  swift_getAtKeyPath();

  v40 = v61;
  v41 = swift_getAssociatedConformanceWitness();
  (*(*(v41 + 16) + 24))(v84, v40);
  (*(v67 + 8))(v39, v40);
  swift_setAtWritableKeyPath();

  v42 = v75;
  v43 = v54;
  v54(v85, v86, v75);

  v43(v85, v86, v42);

  v44 = v68;
  swift_getAtKeyPath();

  v45 = v82;
  v46 = v81;
  v47 = AssociatedTypeWitness;
  v48 = swift_getAssociatedConformanceWitness();
  v49 = v84;
  (*(*(v48 + 16) + 24))(v84, v47);
  (*(v70 + 8))(v44, v47);
  swift_setAtWritableKeyPath();

  v50 = *(v45 + 8);
  v51 = (*(v50 + 24))(v46, v50);
  v52 = sub_1AE156B60(v51, v49);

  (*(v50 + 32))(v52, v46, v50);
  return (*(v64 + 8))(v86, v42);
}

uint64_t CRStruct_4.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v61 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v61 - v19;
  v84 = swift_getAssociatedTypeWitness();
  v71 = *(v84 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v69 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v61 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v66 = *(v24 - 8);
  v25 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v64 = &v61 - v29;
  if (a1)
  {
    v30 = a1;
  }

  else
  {
    v30 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v96 = v30;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v28);
  v93 = a4;
  v92 = v5;
  v31 = *(v9 + 80);

  v31(v95, a2, v9);
  v89 = v95[1];
  v85 = v95[2];
  v88 = v95[4];
  v83 = v95[5];
  v86 = v95[7];
  v91 = v9;
  v32 = v95[10];
  v33 = v95[11];
  v34 = v95[8];
  sub_1AE23DB8C();
  v94[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v94[1] = swift_getTupleTypeMetadata2();
  v90 = a2;
  sub_1AE23DB8C();
  v94[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v94[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v67 = v15;
  v36 = TupleTypeMetadata;
  v72 = *(TupleTypeMetadata - 8);
  v70 = AssociatedTypeWitness;
  v37 = v72 + 16;
  v38 = *(v72 + 16);
  v80 = TupleTypeMetadata;
  v38(v94, v95, TupleTypeMetadata);
  v63 = v37;
  v62 = v24;

  v87 = v33;

  v81 = v32;

  v82 = v34;

  v38(v94, v95, v36);

  v39 = v65;
  swift_getAtKeyPath();

  v40 = v62;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(&v96, v40);
  (*(v66 + 8))(v39, v40);
  swift_setAtWritableKeyPath();

  v42 = v80;
  v79 = v38;
  v38(v94, v95, v80);

  v38(v94, v95, v42);

  v43 = v69;
  swift_getAtKeyPath();

  v44 = v84;
  v45 = swift_getAssociatedConformanceWitness();
  (*(*(v45 + 16) + 24))(&v96, v44);
  (*(v71 + 8))(v43, v44);
  swift_setAtWritableKeyPath();

  v46 = v79;
  v79(v94, v95, v42);

  v46(v94, v95, v42);

  v47 = v74;
  swift_getAtKeyPath();

  v48 = v67;
  v49 = swift_getAssociatedConformanceWitness();
  (*(*(v49 + 16) + 24))(&v96, v48);
  (*(v75 + 8))(v47, v48);
  swift_setAtWritableKeyPath();

  v50 = v80;
  v51 = v79;
  v79(v94, v95, v80);

  v51(v94, v95, v50);

  v52 = v77;
  swift_getAtKeyPath();

  v53 = v91;
  v54 = v90;
  v55 = v70;
  v56 = swift_getAssociatedConformanceWitness();
  (*(*(v56 + 16) + 24))(&v96, v55);
  (*(v78 + 8))(v52, v55);
  swift_setAtWritableKeyPath();

  v57 = *(v53 + 8);
  v58 = (*(v57 + 24))(v54, v57);
  v59 = sub_1AE156B60(v58, &v96);

  (*(v57 + 32))(v59, v54, v57);
  return (*(v72 + 8))(v95, v50);
}

uint64_t CRStruct_4.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v89 = a1;
  v76 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v61 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v61 - v11;
  v78 = swift_getAssociatedTypeWitness();
  v69 = *(v78 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v68 = &v61 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - v17;
  v18 = *(v5 + 80);
  v88 = v5;
  v18(&v91[3], a2, v5, v16);
  v19 = *&v91[7];
  v79 = *&v91[11];
  v86 = *&v91[19];
  v85 = *&v91[23];
  v84 = *&v91[31];
  v20 = *&v91[35];
  v21 = *&v91[43];
  v22 = *&v91[47];
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v91[1] + 1) = word_1ED96F220;
  HIBYTE(v91[2]) = byte_1ED96F222;
  sub_1AE23DB8C();
  v90[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v90[1] = swift_getTupleTypeMetadata2();
  v87 = a2;
  sub_1AE23DB8C();
  v90[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v90[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v71 = *(TupleTypeMetadata - 8);
  v67 = v9;
  v70 = AssociatedTypeWitness;
  v25 = v71 + 16;
  v24 = *(v71 + 16);
  v62 = v14;
  v26 = TupleTypeMetadata;
  v24(v90, &v91[3]);
  v63 = v25;
  v80 = v24;
  v81 = v19;

  v83 = v22;

  v77 = v21;

  (v24)(v90, &v91[3], v26);

  v27 = v65;
  swift_getAtKeyPath();

  v28 = swift_modifyAtWritableKeyPath();
  v29 = v62;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(v91, v27, v29);
  (*(v66 + 8))(v27, v29);
  v28(v90, 0);

  LOWORD(v90[0]) = v91[0];
  BYTE2(v90[0]) = v91[1];
  v31 = v90;
  MergeResult.merge(_:)(v31);
  v82 = v26;
  v32 = v80;
  v80(v90, &v91[3], v26);

  v64 = v20;

  v32(v90, &v91[3], v26);

  v33 = v68;
  swift_getAtKeyPath();

  v34 = swift_modifyAtWritableKeyPath();
  v35 = v78;
  v36 = swift_getAssociatedConformanceWitness();
  (*(*(v36 + 8) + 8))(v91, v33, v35);
  (*(v69 + 8))(v33, v35);
  v34(v90, 0);

  LOWORD(v90[0]) = v91[0];
  BYTE2(v90[0]) = v91[1];
  v37 = v90;
  MergeResult.merge(_:)(v37);
  v38 = v82;
  v39 = v80;
  v80(v90, &v91[3], v82);

  v39(v90, &v91[3], v38);

  v40 = v72;
  swift_getAtKeyPath();

  v41 = swift_modifyAtWritableKeyPath();
  v42 = v67;
  v43 = swift_getAssociatedConformanceWitness();
  (*(*(v43 + 8) + 8))(v91, v40, v42);
  (*(v73 + 8))(v40, v42);
  v41(v90, 0);

  LOWORD(v90[0]) = v91[0];
  BYTE2(v90[0]) = v91[1];
  v44 = v90;
  MergeResult.merge(_:)(v44);
  v45 = v82;
  v46 = v80;
  v80(v90, &v91[3], v82);

  v46(v90, &v91[3], v45);

  v47 = v74;
  swift_getAtKeyPath();

  v48 = swift_modifyAtWritableKeyPath();
  v49 = v88;
  v50 = v87;
  v51 = v70;
  v52 = swift_getAssociatedConformanceWitness();
  (*(*(v52 + 8) + 8))(v91, v47, v51);
  (*(v75 + 8))(v47, v51);
  v48(v90, 0);

  LOWORD(v90[0]) = v91[0];
  BYTE2(v90[0]) = v91[1];
  v53 = v90;
  MergeResult.merge(_:)(v53);
  v54 = *(v49 + 8);
  v55 = (*(v54 + 24))(v50, v54);
  v56 = (*(v54 + 40))(v90, v50, v54);
  sub_1AE21F75C(v55, v91);

  v56(v90, 0);
  LOWORD(v90[0]) = v91[0];
  BYTE2(v90[0]) = v91[1];
  v57 = v90;
  MergeResult.merge(_:)(v57);
  (*(v54 + 64))(v50, v54);
  result = (*(v71 + 8))(&v91[3], v82);
  v59 = HIBYTE(v91[2]);
  v60 = v76;
  *v76 = *(&v91[1] + 1);
  *(v60 + 2) = v59;
  return result;
}

uint64_t CRStruct_4.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v66 - v8;
  v85 = swift_getAssociatedTypeWitness();
  v76 = *(v85 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v66 - v12;
  v70 = swift_getAssociatedTypeWitness();
  v72 = *(v70 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v66 - v16;
  v67 = swift_getAssociatedTypeWitness();
  v69 = *(v67 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v82 = &v66 - v21;
  v93 = v4;
  (*(v4 + 80))(v99, a2, v4, v20);
  v22 = v99[1];
  v92 = v99[2];
  v96 = v99[5];
  v91 = v99[7];
  v90 = v99[8];
  v23 = v99[10];
  v24 = v99[11];
  v87 = v99[4];
  v98 = MEMORY[0x1E69E7CD0];
  sub_1AE23DB8C();
  v97[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v97[1] = swift_getTupleTypeMetadata2();
  v94 = a2;
  sub_1AE23DB8C();
  v97[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v97[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v75 = *(TupleTypeMetadata - 8);
  v26 = v75 + 16;
  v27 = *(v75 + 16);
  v27(v97, v99, TupleTypeMetadata);
  v86 = v27;
  v89 = v22;

  v81 = v24;

  v88 = v23;

  swift_getAtKeyPath();

  v27(v97, v99, TupleTypeMetadata);

  v28 = v68;
  swift_getAtKeyPath();

  v29 = v67;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v82;
  v32 = (*(AssociatedConformanceWitness + 64))(v28, v29, AssociatedConformanceWitness);
  v33 = *(v69 + 8);
  v33(v28, v29);
  v33(v31, v29);
  sub_1AE00F014(v32);
  v80 = TupleTypeMetadata;
  v34 = v86;
  v66 = v26;
  v86(v97, v99, TupleTypeMetadata);

  swift_getAtKeyPath();

  v34(v97, v99, TupleTypeMetadata);

  v35 = v71;
  swift_getAtKeyPath();

  v36 = v70;
  v37 = swift_getAssociatedConformanceWitness();
  v38 = v83;
  v39 = (*(v37 + 64))(v35, v36, v37);
  v40 = *(v72 + 8);
  v40(v35, v36);
  v40(v38, v36);
  sub_1AE00F014(v39);
  v41 = v80;
  v42 = v86;
  v86(v97, v99, v80);

  v43 = v73;
  swift_getAtKeyPath();

  v42(v97, v99, v41);

  v44 = v74;
  swift_getAtKeyPath();

  v45 = v85;
  v46 = swift_getAssociatedConformanceWitness();
  v47 = (*(v46 + 64))(v44, v45, v46);
  v48 = *(v76 + 8);
  v48(v44, v45);
  v48(v43, v45);
  sub_1AE00F014(v47);
  v49 = v80;
  v50 = v86;
  v86(v97, v99, v80);

  v51 = v77;
  swift_getAtKeyPath();

  v50(v97, v99, v49);

  v52 = v78;
  swift_getAtKeyPath();

  v53 = v93;
  v54 = v94;
  v55 = AssociatedTypeWitness;
  v56 = swift_getAssociatedConformanceWitness();
  v57 = v51;
  v58 = (*(v56 + 64))(v52, v55, v56);
  v59 = *(v79 + 8);
  v59(v52, v55);
  v59(v57, v55);
  sub_1AE00F014(v58);
  v60 = *(v53 + 8);
  v61 = *(v60 + 24);
  v62 = v61(v54, v60);
  v63 = v61(v54, v60);
  v64 = sub_1AE2200E4(v63, v62);

  sub_1AE00F014(v64);
  (*(v75 + 8))(v99, v49);
  return v98;
}

uint64_t CRStruct_4.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v151 = a2;
  v150 = a1;
  v131 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v153 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v154 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v155 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v156 = sub_1AE23D7CC();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v11 = *(*(TupleTypeMetadata - 1) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v100 = &v96 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  v13 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v121 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v96 - v16;
  v120 = *(swift_getAssociatedConformanceWitness() + 16);
  v97 = swift_getAssociatedTypeWitness();
  v128 = sub_1AE23D7CC();
  v127 = *(v128 - 8);
  v17 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v145 = &v96 - v18;
  v137 = swift_getAssociatedTypeWitness();
  v118 = *(v137 - 8);
  v19 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v115 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v96 - v22;
  v114 = *(swift_getAssociatedConformanceWitness() + 16);
  v98 = swift_getAssociatedTypeWitness();
  v126 = sub_1AE23D7CC();
  v125 = *(v126 - 8);
  v23 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v146 = &v96 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v111 = *(v25 - 8);
  v26 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v110 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v107 = &v96 - v29;
  v109 = *(swift_getAssociatedConformanceWitness() + 16);
  v105 = v25;
  v99 = swift_getAssociatedTypeWitness();
  v123 = sub_1AE23D7CC();
  v122 = *(v123 - 8);
  v30 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v140 = &v96 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v106 = *(v32 - 8);
  v33 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v104 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v136 = &v96 - v36;
  v103 = *(swift_getAssociatedConformanceWitness() + 16);
  v102 = v32;
  v112 = swift_getAssociatedTypeWitness();
  v117 = sub_1AE23D7CC();
  v116 = *(v117 - 8);
  v37 = *(v116 + 64);
  v38 = MEMORY[0x1EEE9AC00](v117);
  v139 = &v96 - v39;
  v40 = *(v6 + 80);
  v129 = v6;
  v40(&v153, a3, v6, v38);
  v41 = v154;
  v42 = v155;
  v149 = v157;
  v144 = v158;
  v43 = v159;
  v135 = v160;
  v44 = v161;
  v45 = v162;
  sub_1AE23DB8C();
  v152[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v152[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v152[2] = swift_getTupleTypeMetadata2();
  v130 = a3;
  sub_1AE23DB8C();
  v152[3] = swift_getTupleTypeMetadata2();
  v46 = swift_getTupleTypeMetadata();
  v108 = *(v46 - 8);
  v47 = *(v108 + 16);
  v143 = v108 + 16;
  v147 = v46;
  v47(v152, &v153, v46);
  v142 = v47;
  v141 = v41;

  v148 = v44;

  v132 = v43;

  swift_getAtKeyPath();

  v47(v152, &v153, v46);

  v48 = v104;
  swift_getAtKeyPath();

  v49 = v136;
  v50 = v102;
  (*(v103 + 40))(v48, v151, v102);
  v51 = *(v106 + 8);
  v51(v48, v50);
  v51(v49, v50);
  v52 = v147;
  v142(v152, &v153, v147);

  v133 = v42;

  v134 = v45;

  v53 = v107;
  swift_getAtKeyPath();

  v54 = v52;
  v55 = v142;
  v142(v152, &v153, v54);

  v56 = v110;
  swift_getAtKeyPath();

  v57 = v56;
  v58 = v105;
  (*(v109 + 40))(v56, v151, v105);
  v59 = *(v111 + 8);
  v59(v57, v58);
  v59(v53, v58);
  v60 = v147;
  v55(v152, &v153, v147);

  v61 = v113;
  swift_getAtKeyPath();

  v55(v152, &v153, v60);

  v62 = v115;
  swift_getAtKeyPath();

  v63 = v61;
  v64 = v137;
  (*(v114 + 40))(v62, v151, v137);
  v65 = *(v118 + 8);
  v65(v62, v64);
  v65(v63, v64);
  v66 = v147;
  v67 = v142;
  v142(v152, &v153, v147);

  v68 = v119;
  swift_getAtKeyPath();

  v67(v152, &v153, v66);
  v69 = v140;

  v70 = v121;
  v71 = v69;
  swift_getAtKeyPath();

  v72 = AssociatedTypeWitness;
  (*(v120 + 40))(v70, v151, AssociatedTypeWitness);
  (*(v108 + 8))(&v153, v147);
  v73 = *(v124 + 8);
  v73(v70, v72);
  v74 = v68;
  v75 = v139;
  v73(v74, v72);
  if ((*(*(v112 - 8) + 48))(v75, 1) == 1 && (*(*(v99 - 8) + 48))(v71, 1) == 1 && (*(*(v98 - 8) + 48))(v146, 1) == 1 && (*(*(v97 - 8) + 48))(v145, 1) == 1)
  {
    (*(v116 + 8))(v75, v117);
    v76 = *(*(*(v129 + 8) + 8) + 16);
    v77 = swift_getAssociatedTypeWitness();
    (*(*(v77 - 8) + 56))(v131, 1, 1, v77);
    v78 = v128;
    v79 = v71;
    v80 = v127;
    v81 = v126;
    v82 = v125;
    v83 = v123;
    v84 = v122;
  }

  else
  {
    v85 = TupleTypeMetadata[12];
    v86 = TupleTypeMetadata[16];
    v87 = TupleTypeMetadata[20];
    v88 = v100;
    (*(v116 + 32))(v100, v75, v117);
    v84 = v122;
    v83 = v123;
    (*(v122 + 16))(&v88[v85], v71, v123);
    v82 = v125;
    v81 = v126;
    (*(v125 + 16))(&v88[v86], v146, v126);
    v80 = v127;
    v89 = &v88[v87];
    v78 = v128;
    (*(v127 + 16))(v89, v145, v128);
    v90 = *(*(*(v129 + 8) + 8) + 16);
    v91 = swift_getAssociatedTypeWitness();
    v92 = v131;
    swift_dynamicCast();
    v93 = *(*(v91 - 8) + 56);
    v94 = v91;
    v79 = v140;
    v93(v92, 0, 1, v94);
  }

  (*(v80 + 8))(v145, v78);
  (*(v82 + 8))(v146, v81);
  return (*(v84 + 8))(v79, v83);
}

uint64_t CRStruct_4.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v67 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v67 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v76 = *(v15 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v67 - v19;
  v81 = swift_getAssociatedTypeWitness();
  v83 = *(v81 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v80 = &v67 - v24;
  v94 = v4;
  (*(v4 + 80))(v98, a2, v4, v23);
  v25 = v98[2];
  v92 = v98[4];
  v91 = v98[5];
  v88 = v98[10];
  v87 = v98[11];
  v93 = v98[1];
  v90 = v98[7];
  v89 = v98[8];
  sub_1AE23DB8C();
  v97[0] = swift_getTupleTypeMetadata2();
  v77 = v15;
  sub_1AE23DB8C();
  v97[1] = swift_getTupleTypeMetadata2();
  v72 = v10;
  sub_1AE23DB8C();
  v97[2] = swift_getTupleTypeMetadata2();
  v69 = AssociatedTypeWitness;
  sub_1AE23DB8C();
  v97[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v86 = *(TupleTypeMetadata - 8);
  v28 = v86 + 16;
  v27 = *(v86 + 16);
  v27(v97, v98, TupleTypeMetadata);

  v29 = v80;
  swift_getAtKeyPath();

  v96 = TupleTypeMetadata;
  v85 = v27;
  v27(v97, v98, TupleTypeMetadata);
  v30 = a2;

  v31 = v82;
  swift_getAtKeyPath();
  v79 = v25;

  v32 = v81;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v31;
  LOBYTE(v31) = (*(AssociatedConformanceWitness + 88))(v31, v32, AssociatedConformanceWitness);
  v35 = *(v83 + 8);
  v35(v34, v32);
  v35(v29, v32);
  if (v31)
  {
    goto LABEL_3;
  }

  v83 = v28;
  v36 = v96;
  v37 = v85;
  v85(v97, v98, v96);

  v74 = v30;
  swift_getAtKeyPath();

  v37(v97, v98, v36);

  v38 = v75;
  swift_getAtKeyPath();

  v39 = v77;
  v40 = swift_getAssociatedConformanceWitness();
  v41 = v84;
  v42 = (*(v40 + 88))(v38, v39, v40);
  v43 = *(v76 + 8);
  v43(v38, v39);
  v43(v41, v39);
  if (v42)
  {
    goto LABEL_3;
  }

  v47 = v85;
  v85(v97, v98, v96);

  swift_getAtKeyPath();

  v47(v97, v98, v96);

  v48 = v70;
  swift_getAtKeyPath();

  v49 = v96;
  v50 = v72;
  v51 = swift_getAssociatedConformanceWitness();
  v52 = v78;
  v53 = (*(v51 + 88))(v48, v50, v51);
  v54 = *(v71 + 8);
  v54(v48, v50);
  v54(v52, v50);
  if (v53)
  {
    v44 = 1;
    v45 = v49;
    goto LABEL_5;
  }

  v85(v97, v98, v49);

  swift_getAtKeyPath();

  v85(v97, v98, v49);

  v55 = v67;
  swift_getAtKeyPath();

  v56 = v94;
  v57 = v74;
  v58 = v69;
  v59 = swift_getAssociatedConformanceWitness();
  v60 = v73;
  v61 = (*(v59 + 88))(v55, v58, v59);
  v62 = *(v68 + 8);
  v62(v55, v58);
  v62(v60, v58);
  if (v61)
  {
LABEL_3:
    v44 = 1;
  }

  else
  {
    v63 = *(v56 + 8);
    v64 = *(v63 + 24);
    v65 = v64(v57, v63);
    v66 = v64(v57, v63);
    v44 = sub_1AE21FE14(v66, v65);
  }

  v45 = v96;
LABEL_5:
  (*(v86 + 8))(v98, v45);
  return v44 & 1;
}

uint64_t CRStruct_4.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a1;
  v110 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v6 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v80 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = swift_getAssociatedTypeWitness();
  v109 = sub_1AE23D7CC();
  v108 = *(v109 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v122 = &v80 - v11;
  v116 = swift_getAssociatedTypeWitness();
  v97 = *(v116 - 8);
  v12 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v96 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v80 - v15;
  v95 = swift_getAssociatedConformanceWitness();
  v81 = swift_getAssociatedTypeWitness();
  v107 = sub_1AE23D7CC();
  v106 = *(v107 - 8);
  v16 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v123 = &v80 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v92 = *(v18 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v80 - v22;
  v90 = swift_getAssociatedConformanceWitness();
  v86 = v18;
  v82 = swift_getAssociatedTypeWitness();
  v104 = sub_1AE23D7CC();
  v103 = *(v104 - 8);
  v23 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v119 = &v80 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v87 = *(v25 - 8);
  v26 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v80 - v29;
  v84 = swift_getAssociatedConformanceWitness();
  v83 = v25;
  v93 = swift_getAssociatedTypeWitness();
  v99 = sub_1AE23D7CC();
  v98 = *(v99 - 8);
  v30 = *(v98 + 64);
  v31 = MEMORY[0x1EEE9AC00](v99);
  v117 = &v80 - v32;
  (*(v5 + 80))(v134, a2, v5, v31);
  v33 = v134[2];
  v127 = v134[4];
  v126 = v134[5];
  v129 = v134[7];
  v125 = v134[8];
  v34 = v134[10];
  v35 = v134[1];
  v36 = v134[11];
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v131 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v133 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = *(TupleTypeMetadata - 8);
  v38 = v89 + 16;
  v37 = *(v89 + 16);
  v37(&TupleTypeMetadata2, v134, TupleTypeMetadata);
  v112 = v38;
  v111 = v37;
  v120 = v35;

  v121 = v34;

  swift_getAtKeyPath();

  v37(&TupleTypeMetadata2, v134, TupleTypeMetadata);

  v39 = v36;

  v40 = v85;
  swift_getAtKeyPath();

  v41 = v115;
  v42 = v83;
  (*(v84 + 72))(v40, v83);
  v43 = *(v87 + 8);
  v43(v40, v42);
  v43(v41, v42);
  v44 = TupleTypeMetadata;
  v45 = v111;
  v111(&TupleTypeMetadata2, v134, TupleTypeMetadata);

  v113 = v33;

  v114 = v39;

  v46 = v88;
  swift_getAtKeyPath();

  v45(&TupleTypeMetadata2, v134, v44);

  v47 = v91;
  swift_getAtKeyPath();

  v48 = v47;
  v49 = v86;
  (*(v90 + 72))(v47, v86);
  v50 = *(v92 + 8);
  v50(v48, v49);
  v50(v46, v49);
  v51 = TupleTypeMetadata;
  v52 = v111;
  v111(&TupleTypeMetadata2, v134, TupleTypeMetadata);

  v53 = v94;
  swift_getAtKeyPath();

  v52(&TupleTypeMetadata2, v134, v51);

  v54 = v96;
  swift_getAtKeyPath();

  v55 = v53;
  v56 = v116;
  (*(v95 + 72))(v54, v116);
  v57 = *(v97 + 8);
  v57(v54, v56);
  v57(v55, v56);
  v58 = TupleTypeMetadata;
  v52(&TupleTypeMetadata2, v134, TupleTypeMetadata);

  v59 = v100;
  swift_getAtKeyPath();

  v52(&TupleTypeMetadata2, v134, v58);

  v60 = v102;
  swift_getAtKeyPath();

  v61 = v60;
  v62 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v60, AssociatedTypeWitness);
  (*(v89 + 8))(v134, v58);
  v63 = *(v105 + 8);
  v63(v61, v62);
  v63(v59, v62);
  v64 = v117;
  if ((*(*(v93 - 8) + 48))() == 1 && (*(*(v82 - 8) + 48))(v119, 1) == 1 && (*(*(v81 - 8) + 48))(v123, 1) == 1 && (*(*(v80 - 8) + 48))(v122, 1) == 1)
  {
    v65 = v99;
    (*(v98 + 8))(v64, v99);
    TupleTypeMetadata2 = v65;
    v66 = v104;
    v131 = v104;
    v67 = v107;
    v132 = v107;
    v68 = v109;
    v133 = v109;
    v69 = swift_getTupleTypeMetadata();
    (*(*(v69 - 8) + 56))(v110, 1, 1, v69);
    v70 = v108;
    v71 = v119;
    v72 = v106;
    v73 = v103;
  }

  else
  {
    v74 = v99;
    TupleTypeMetadata2 = v99;
    v66 = v104;
    v131 = v104;
    v71 = v119;
    v67 = v107;
    v132 = v107;
    v68 = v109;
    v133 = v109;
    v75 = swift_getTupleTypeMetadata();
    v76 = v75[12];
    v77 = v75[16];
    v129 = v75[20];
    v78 = v110;
    (*(v98 + 32))(v110, v64, v74);
    v73 = v103;
    (*(v103 + 16))(v78 + v76, v71, v66);
    v72 = v106;
    (*(v106 + 16))(v78 + v77, v123, v67);
    v70 = v108;
    (*(v108 + 16))(v78 + v129, v122, v68);
    (*(*(v75 - 1) + 56))(v78, 0, 1, v75);
  }

  (*(v70 + 8))(v122, v68);
  (*(v72 + 8))(v123, v67);
  return (*(v73 + 8))(v71, v66);
}

uint64_t CRStruct_4.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v132 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = AssociatedTypeWitness;
  v96 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v130 = *(v6 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v93 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v107 = swift_getAssociatedConformanceWitness();
  v108 = v9;
  v95 = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v116 = *(v10 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v93 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v101 = swift_getAssociatedConformanceWitness();
  v102 = v13;
  v94 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v131 = v14;
  v129 = *(v14 - 8);
  v15 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v93 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v98 = swift_getAssociatedConformanceWitness();
  v103 = v17;
  v18 = swift_getAssociatedTypeWitness();
  v133 = sub_1AE23D7CC();
  v134 = v14;
  v117 = v10;
  v135 = v10;
  v136 = v6;
  v119 = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = sub_1AE23D7CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v93 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  v118 = sub_1AE23D7CC();
  v31 = *(v118 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v118);
  v35 = &v93 - v34;
  v36 = *(v4 + 80);
  v37 = v4;
  v38 = v130;
  v36(&v133, a2, v37, v33);
  v40 = v134;
  v39 = v135;
  v125 = v138;
  v126 = v137;
  v115 = v139;
  v124 = v140;
  v104 = v141;
  v114 = v142;

  v127 = v39;

  v128 = v40;
  v41 = v131;

  v42 = *(v21 + 16);
  v123 = v21 + 16;
  v122 = v42;
  v42(v30, v132, v20);
  v43 = *(TupleTypeMetadata - 1);
  v121 = *(v43 + 48);
  v120 = v43 + 48;
  v44 = v121(v30, 1, TupleTypeMetadata);
  v112 = v21;
  v113 = v20;
  if (v44 == 1)
  {
    (*(v21 + 8))(v30, v20);
    (*(*(v18 - 8) + 56))(v35, 1, 1, v18);
  }

  else
  {
    v45 = TupleTypeMetadata[12];
    v46 = TupleTypeMetadata[16];
    v47 = TupleTypeMetadata[20];
    (*(v31 + 32))(v35, v30, v118);
    (*(v38 + 8))(&v30[v47], v119);
    (*(v116 + 8))(&v30[v46], v117);
    (*(v129 + 8))(&v30[v45], v41);
  }

  v48 = swift_modifyAtWritableKeyPath();
  v49 = v98;
  v50 = *(v98 + 80);
  v51 = swift_checkMetadataState();
  v50(v35, v51, v49);
  v52 = *(v31 + 8);
  v53 = v118;
  v52(v35, v118);
  v48(&v133, 0);

  v54 = v97;
  v55 = v113;
  v122(v97, v132, v113);
  v56 = v121(v54, 1, TupleTypeMetadata);
  v103 = v31 + 8;
  v98 = v52;
  if (v56 == 1)
  {
    (*(v112 + 8))(v54, v55);
    v57 = v99;
    (*(*(v94 - 8) + 56))(v99, 1, 1);
    v58 = v129;
  }

  else
  {
    v59 = v53;
    v60 = TupleTypeMetadata[16];
    v61 = TupleTypeMetadata[20];
    v58 = v129;
    v57 = v99;
    (*(v129 + 32))(v99, &v54[TupleTypeMetadata[12]], v131);
    (*(v130 + 8))(&v54[v61], v119);
    (*(v116 + 8))(&v54[v60], v117);
    v52(v54, v59);
  }

  v62 = swift_modifyAtWritableKeyPath();
  v63 = v101;
  v64 = *(v101 + 80);
  v65 = swift_checkMetadataState();
  v64(v57, v65, v63);
  v66 = *(v58 + 8);
  v66(v57, v131);
  v62(&v133, 0);

  v67 = v100;
  v122(v100, v132, v55);
  v68 = v121(v67, 1, TupleTypeMetadata);
  v129 = v58 + 8;
  v102 = v66;
  if (v68 == 1)
  {
    (*(v112 + 8))(v67, v55);
    v69 = v106;
    (*(*(v95 - 8) + 56))(v106, 1, 1);
    v70 = v117;
    v71 = v116;
  }

  else
  {
    v72 = TupleTypeMetadata[12];
    v73 = TupleTypeMetadata[20];
    v74 = v66;
    v71 = v116;
    v69 = v106;
    v70 = v117;
    (*(v116 + 32))(v106, &v67[TupleTypeMetadata[16]], v117);
    (*(v130 + 8))(&v67[v73], v119);
    v74(&v67[v72], v131);
    (v98)(v67, v118);
  }

  v75 = swift_modifyAtWritableKeyPath();
  v76 = v107;
  v77 = *(v107 + 80);
  v78 = swift_checkMetadataState();
  v77(v69, v78, v76);
  v79 = *(v71 + 8);
  v79(v69, v70);
  v75(&v133, 0);

  v80 = v105;
  v81 = v113;
  v122(v105, v132, v113);
  if (v121(v80, 1, TupleTypeMetadata) == 1)
  {
    (*(v112 + 8))(v80, v81);
    v82 = v109;
    (*(*(v96 - 8) + 56))(v109, 1, 1);
    v83 = v119;
    v84 = v130;
  }

  else
  {
    v85 = TupleTypeMetadata[12];
    v86 = TupleTypeMetadata[16];
    v84 = v130;
    v87 = v109;
    v83 = v119;
    (*(v130 + 32))(v109, &v80[TupleTypeMetadata[20]], v119);
    v79(&v80[v86], v70);
    v102(&v80[v85], v131);
    v82 = v87;
    (v98)(v80, v118);
  }

  v88 = swift_modifyAtWritableKeyPath();
  v89 = AssociatedConformanceWitness;
  v90 = *(AssociatedConformanceWitness + 80);
  v91 = swift_checkMetadataState();
  v90(v82, v91, v89);
  (*(v84 + 8))(v82, v83);
  v88(&v133, 0);
}

Swift::Bool __swiftcall CRStruct_4.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v34 - v5;
  v40 = swift_getAssociatedTypeWitness();
  v39 = *(v40 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v34 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = v34 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v34 - v15;
  (*(v3 + 80))(v49, v2, v3, v14);
  v18 = v49[1];
  v17 = v49[2];
  v46 = v49[7];
  v47 = v49[8];
  v48 = v49[5];
  v44 = v49[4];
  v45 = v49[10];

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (*(*(AssociatedConformanceWitness + 16) + 56))(v11);
  (*(v12 + 8))(v16, v11);
  if (v20)
  {
    goto LABEL_5;
  }

  v34[0] = v17;
  v34[1] = v18;
  v21 = v41;
  swift_getAtKeyPath();
  v22 = v43;
  v23 = swift_getAssociatedConformanceWitness();
  v24 = (*(*(v23 + 16) + 56))(v22);
  (*(v42 + 8))(v21, v22);
  if (v24 & 1) != 0 || (v25 = v38, swift_getAtKeyPath(), v26 = v40, v27 = swift_getAssociatedConformanceWitness(), v28 = (*(*(v27 + 16) + 56))(v26), (*(v39 + 8))(v25, v26), (v28))
  {
LABEL_5:

    v29 = 1;
  }

  else
  {
    v31 = v35;
    swift_getAtKeyPath();
    v32 = AssociatedTypeWitness;
    v33 = swift_getAssociatedConformanceWitness();
    v29 = (*(*(v33 + 16) + 56))(v32);

    (*(v36 + 8))(v31, v32);
  }

  return v29 & 1;
}

uint64_t CRStruct_4.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 80))(&v22, a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  v6 = *(v5 + 64);
  v7 = swift_checkMetadataState();
  v6(a1, v7, v5);
  v4(&v22, 0);

  v8 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  v10 = *(v9 + 64);
  v11 = swift_checkMetadataState();
  v10(a1, v11, v9);
  v8(&v22, 0);

  v20 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 16);
  v13 = *(v12 + 64);
  v14 = swift_checkMetadataState();
  v13(a1, v14, v12);
  v20(&v22, 0);

  v15 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v17 = *(v16 + 64);
  v18 = swift_checkMetadataState();
  v17(a1, v18, v16);
  v15(&v22, 0);
}

uint64_t CRStruct_4.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v46 = a3;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v32 - v7;
  v38 = swift_getAssociatedTypeWitness();
  v37 = *(v38 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v32 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - v18;
  (*(v5 + 80))(v50 + 1, a1, v5, v17);
  v44 = *(&v50[4] + 1);
  v45 = *(&v50[1] + 1);
  v48 = *(&v50[5] + 1);
  v49 = *(&v50[2] + 1);
  v47 = *(&v50[8] + 1);
  v42 = *(&v50[10] + 1);
  v43 = *(&v50[7] + 1);
  v41 = *(&v50[11] + 1);
  v20 = *(*(v5 + 8) + 24);
  v40 = v3;
  v21 = v20(a1);
  sub_1AE21FFB0(v21, v50 + 1);

  v22 = BYTE1(v50[0]);
  if (BYTE1(v50[0]) > 2u)
  {
    goto LABEL_14;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v50, v14);
  (*(v15 + 8))(v19, v14);
  if (LOBYTE(v50[0]) > v22)
  {
    v22 = LOBYTE(v50[0]);
  }

  BYTE1(v50[0]) = v22;
  if (LOBYTE(v50[0]) > 2u)
  {
    goto LABEL_14;
  }

  swift_getAtKeyPath();
  v24 = swift_getAssociatedConformanceWitness();
  (*(*(*(v24 + 16) + 8) + 24))(v50, v10);
  (*(v39 + 8))(v13, v10);
  if (LOBYTE(v50[0]) > v22)
  {
    v22 = LOBYTE(v50[0]);
  }

  BYTE1(v50[0]) = v22;
  if (v22 > 2)
  {
    goto LABEL_14;
  }

  v25 = v36;
  swift_getAtKeyPath();
  v26 = v38;
  v27 = swift_getAssociatedConformanceWitness();
  (*(*(*(v27 + 16) + 8) + 24))(v50, v26);
  (*(v37 + 8))(v25, v26);
  if (LOBYTE(v50[0]) > v22)
  {
    v22 = LOBYTE(v50[0]);
  }

  BYTE1(v50[0]) = v22;
  if (LOBYTE(v50[0]) > 2u)
  {
LABEL_14:
  }

  else
  {
    v28 = v33;
    swift_getAtKeyPath();
    v29 = AssociatedTypeWitness;
    v30 = swift_getAssociatedConformanceWitness();
    (*(*(*(v30 + 16) + 8) + 24))(v50, v29);

    result = (*(v34 + 8))(v28, v29);
    if (LOBYTE(v50[0]) > v22)
    {
      LOBYTE(v22) = v50[0];
    }
  }

  *v46 = v22;
  return result;
}

uint64_t CRStruct_4<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v65 = a6;
  v69 = a5;
  v75 = a4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = &v56 - v11;
  v82 = swift_getAssociatedTypeWitness();
  v64 = *(v82 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v63 = &v56 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v67 = *(v14 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v56 - v16;
  v91 = swift_getAssociatedTypeWitness();
  v74 = *(v91 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v73 = &v56 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v78 = *(v87 - 8);
  v19 = *(v78 + 64);
  v20 = MEMORY[0x1EEE9AC00](v87);
  v86 = &v56 - v21;
  v22 = *(v9 + 80);
  v57 = v9;
  v22(&TupleTypeMetadata2, a2, v9, v20);
  v72 = TupleTypeMetadata2;
  v85 = v96;
  v90 = v98;
  v84 = v99;
  v93 = v101;
  v83 = v102;
  v88 = v105;
  v106[0] = TupleTypeMetadata2;
  v106[1] = v95;
  v92 = v95;
  v106[2] = v96;
  v106[3] = v97;
  v66 = v97;
  v106[4] = v98;
  v106[5] = v99;
  v62 = v100;
  v106[6] = v100;
  v106[7] = v101;
  v106[8] = v102;
  v106[9] = v103;
  v58 = v103;
  v106[10] = v104;
  v106[11] = v105;
  v89 = v104;
  v23 = a1;
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(v23, v25);
  sub_1AE048F10();
  sub_1AE23E3CC();
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = v14;
  sub_1AE23DB8C();
  v95 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v96 = swift_getTupleTypeMetadata2();
  v56 = a2;
  sub_1AE23DB8C();
  v97 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v77 = *(TupleTypeMetadata - 8);
  v28 = v77 + 16;
  v27 = *(v77 + 16);
  v27(&TupleTypeMetadata2, v106, TupleTypeMetadata);

  v29 = v73;
  swift_getAtKeyPath();

  v79 = TupleTypeMetadata;
  v71 = v27;
  v70 = v28;
  v27(&TupleTypeMetadata2, v106, TupleTypeMetadata);

  v30 = v86;

  v31 = v91;

  TupleTypeMetadata2 = v72;
  v32 = v87;
  v95 = v92;
  v33 = v76;
  sub_1AE23DD5C();
  if (v33)
  {
    (*(v77 + 8))(v106, v79);

    (*(v74 + 8))(v29, v31);
    return (*(v78 + 8))(v30, v32);
  }

  else
  {

    (*(v74 + 8))(v29, v31);
    v35 = v79;
    v71(&TupleTypeMetadata2, v106, v79);

    swift_getAtKeyPath();

    v71(&TupleTypeMetadata2, v106, v35);

    v36 = v90;

    TupleTypeMetadata2 = v66;
    v95 = v36;
    v37 = v68;
    sub_1AE23DD5C();

    (*(v67 + 8))(v81, v37);
    v38 = v71;
    v71(&TupleTypeMetadata2, v106, v35);

    v39 = v63;
    swift_getAtKeyPath();

    v38(&TupleTypeMetadata2, v106, v35);

    TupleTypeMetadata2 = v62;
    v95 = v93;
    v40 = v82;
    sub_1AE23DD5C();

    (*(v64 + 8))(v39, v40);
    v71(&TupleTypeMetadata2, v106, v35);

    v41 = v59;
    swift_getAtKeyPath();

    v71(&TupleTypeMetadata2, v106, v35);

    TupleTypeMetadata2 = v58;
    v95 = v89;
    v42 = AssociatedTypeWitness;
    sub_1AE23DD5C();

    (*(v61 + 8))(v41, v42);
    result = (*(*(v57 + 8) + 24))(v56);
    v43 = 0;
    v45 = result + 64;
    v44 = *(result + 64);
    v93 = result;
    v46 = 1 << *(result + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & v44;
    v49 = (v46 + 63) >> 6;
    if ((v47 & v44) != 0)
    {
      do
      {
        v50 = v43;
LABEL_11:
        v52 = __clz(__rbit64(v48)) | (v50 << 6);
        v53 = (*(v93 + 48) + 16 * v52);
        v54 = *v53;
        v55 = v53[1];
        v106[14] = *(*(v93 + 56) + 8 * v52);
        TupleTypeMetadata2 = v54;
        v95 = v55;
        sub_1AE048F64();

        sub_1AE23DD5C();
        v48 &= v48 - 1;

        v43 = v50;
      }

      while (v48);
    }

    v51 = v78;
    while (1)
    {
      v50 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v50 >= v49)
      {
        (*(v77 + 8))(v106, v79);

        return (*(v51 + 8))(v86, v87);
      }

      v48 = *(v45 + 8 * v50);
      ++v43;
      if (v48)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_5.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v102 = a1;
  v101 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v64 - v12;
  v84 = swift_getAssociatedTypeWitness();
  v80 = *(v84 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v78 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v64 - v16;
  v71 = swift_getAssociatedTypeWitness();
  v76 = *(v71 - 8);
  v17 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v64 - v20;
  v69 = swift_getAssociatedTypeWitness();
  v73 = *(v69 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v64 - v24;
  v65 = swift_getAssociatedTypeWitness();
  v68 = *(v65 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v67 = &v64 - v29;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v28);
  v100 = v8;
  (*(v8 + 96))(v104, a2, v8);
  v30 = v104[1];
  v95 = v104[2];
  v99 = v104[4];
  v94 = v104[5];
  v93 = v104[7];
  v98 = v104[8];
  v88 = v104[10];
  v31 = v104[11];
  v32 = v104[13];
  v33 = v104[14];
  sub_1AE23DB8C();
  v103[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v103[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v103[2] = swift_getTupleTypeMetadata2();
  v97 = a2;
  sub_1AE23DB8C();
  v103[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v103[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v77 = *(TupleTypeMetadata - 8);
  v34 = *(v77 + 16);
  v90 = v77 + 16;
  v34(v103, v104, TupleTypeMetadata);
  v89 = v34;

  v92 = v33;

  v86 = v32;

  v91 = v31;

  v34(v103, v104, TupleTypeMetadata);

  v35 = v66;
  swift_getAtKeyPath();

  v36 = v65;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v102, v36);
  (*(v68 + 8))(v35, v36);
  swift_setAtWritableKeyPath();

  v38 = TupleTypeMetadata;
  v39 = v89;
  v89(v103, v104, TupleTypeMetadata);

  v87 = v30;

  v39(v103, v104, v38);

  v40 = v70;
  swift_getAtKeyPath();

  v41 = v69;
  v42 = swift_getAssociatedConformanceWitness();
  (*(*(v42 + 16) + 24))(v102, v41);
  (*(v73 + 8))(v40, v41);
  swift_setAtWritableKeyPath();

  v43 = v89;
  v89(v103, v104, v38);

  v43(v103, v104, TupleTypeMetadata);

  v44 = v74;
  swift_getAtKeyPath();

  v45 = v71;
  v46 = swift_getAssociatedConformanceWitness();
  (*(*(v46 + 16) + 24))(v102, v45);
  (*(v76 + 8))(v44, v45);
  swift_setAtWritableKeyPath();

  v47 = TupleTypeMetadata;
  v48 = v89;
  v89(v103, v104, TupleTypeMetadata);

  v48(v103, v104, v47);

  v49 = v78;
  swift_getAtKeyPath();

  v50 = v84;
  v51 = swift_getAssociatedConformanceWitness();
  (*(*(v51 + 16) + 24))(v102, v50);
  (*(v80 + 8))(v49, v50);
  swift_setAtWritableKeyPath();

  v52 = TupleTypeMetadata;
  v53 = v89;
  v89(v103, v104, TupleTypeMetadata);

  v53(v103, v104, v52);

  v54 = v81;
  swift_getAtKeyPath();

  v55 = v100;
  v56 = v97;
  v57 = AssociatedTypeWitness;
  v58 = swift_getAssociatedConformanceWitness();
  v59 = v102;
  (*(*(v58 + 16) + 24))(v102, v57);
  (*(v83 + 8))(v54, v57);
  swift_setAtWritableKeyPath();

  v60 = *(v55 + 8);
  v61 = (*(v60 + 24))(v56, v60);
  v62 = sub_1AE156B60(v61, v59);

  (*(v60 + 32))(v62, v56, v60);
  return (*(v77 + 8))(v104, v52);
}

uint64_t CRStruct_5.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v84 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v83 = v67 - v13;
  v86 = swift_getAssociatedTypeWitness();
  v82 = *(v86 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v81 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = v67 - v17;
  v87 = swift_getAssociatedTypeWitness();
  v78 = *(v87 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v77 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v76 = v67 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v75 = *(v22 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v74 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v73 = v67 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v72 = *(v27 - 8);
  v28 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v71 = v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v70 = v67 - v32;
  if (a1)
  {
    v33 = a1;
  }

  else
  {
    v33 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v107[0] = v33;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v31);
  v101 = a4;
  v102 = v5;
  v34 = *(v9 + 96);

  v34(v106, a2, v9);
  v35 = v106[1];
  v103 = v106[4];
  v92 = v106[5];
  v97 = v106[7];
  v98 = v106[2];
  v100 = v9;
  v96 = v106[8];
  v90 = v106[10];
  v36 = v106[13];
  v37 = v106[14];
  v38 = v106[11];
  v68 = v27;
  sub_1AE23DB8C();
  v105[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v105[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v105[2] = swift_getTupleTypeMetadata2();
  v99 = a2;
  sub_1AE23DB8C();
  v105[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v105[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v79 = *(TupleTypeMetadata - 8);
  v93 = *(v79 + 16);
  v94 = v79 + 16;
  v104 = TupleTypeMetadata;
  v93(v105, v106, TupleTypeMetadata);
  v69 = v22;
  v95 = v35;

  v91 = v37;

  v89 = v36;

  v93(v105, v106, TupleTypeMetadata);

  v40 = v71;
  swift_getAtKeyPath();

  v41 = v68;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v107, v41);
  (*(v72 + 8))(v40, v41);
  swift_setAtWritableKeyPath();

  v43 = v93;
  v93(v105, v106, v104);

  v43(v105, v106, v104);

  v44 = v74;
  swift_getAtKeyPath();

  v45 = v69;
  v46 = swift_getAssociatedConformanceWitness();
  (*(*(v46 + 16) + 24))(v107, v45);
  (*(v75 + 8))(v44, v45);
  swift_setAtWritableKeyPath();

  v47 = v104;
  v48 = v93;
  v93(v105, v106, v104);

  v67[1] = v38;

  v48(v105, v106, v47);

  v49 = v77;
  swift_getAtKeyPath();

  v50 = v87;
  v51 = swift_getAssociatedConformanceWitness();
  (*(*(v51 + 16) + 24))(v107, v50);
  (*(v78 + 8))(v49, v50);
  swift_setAtWritableKeyPath();

  v52 = v93;
  v93(v105, v106, v47);

  v52(v105, v106, v104);

  v53 = v81;
  swift_getAtKeyPath();

  v54 = v86;
  v55 = swift_getAssociatedConformanceWitness();
  (*(*(v55 + 16) + 24))(v107, v54);
  (*(v82 + 8))(v53, v54);
  swift_setAtWritableKeyPath();

  v56 = v104;
  v57 = v93;
  v93(v105, v106, v104);

  v57(v105, v106, v56);

  v58 = v84;
  swift_getAtKeyPath();

  v60 = v99;
  v59 = v100;
  v61 = AssociatedTypeWitness;
  v62 = swift_getAssociatedConformanceWitness();
  (*(*(v62 + 16) + 24))(v107, v61);
  (*(v85 + 8))(v58, v61);
  swift_setAtWritableKeyPath();

  v63 = *(v59 + 8);
  v64 = (*(v63 + 24))(v60, v63);
  v65 = sub_1AE156B60(v64, v107);

  (*(v63 + 32))(v65, v60, v63);
  return (*(v79 + 8))(v106, v104);
}

uint64_t static CRStruct_5.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 96))(v14);
  v3 = v14[0];
  v2 = v14[1];
  v4 = v14[3];
  v5 = v14[4];
  v6 = v14[7];
  v11 = v14[6];
  v7 = v14[10];
  v8 = v14[13];
  v12 = v14[9];
  v13 = v14[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2427F0;

  *(v9 + 32) = v3;
  *(v9 + 40) = v2;

  *(v9 + 48) = v4;
  *(v9 + 56) = v5;

  *(v9 + 64) = v11;
  *(v9 + 72) = v6;

  *(v9 + 80) = v12;
  *(v9 + 88) = v7;

  *(v9 + 96) = v13;
  *(v9 + 104) = v8;

  return v9;
}

uint64_t CRStruct_5.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v102 = a1;
  v85 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v7 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v83 = &v70 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v70 - v11;
  v87 = swift_getAssociatedTypeWitness();
  v78 = *(v87 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v77 = &v70 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v70 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v73 = *(v17 - 8);
  v18 = *(v73 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v70 - v20;
  v21 = *(v5 + 96);
  v22 = a2;
  v101 = v5;
  v21(&v104[3], a2, v5, v19);
  v23 = *&v104[7];
  v100 = *&v104[11];
  v99 = *&v104[19];
  v90 = *&v104[23];
  v96 = *&v104[31];
  v89 = *&v104[35];
  v95 = *&v104[43];
  v24 = *&v104[47];
  v25 = *&v104[55];
  v26 = *&v104[59];
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v104[1] + 1) = word_1ED96F220;
  HIBYTE(v104[2]) = byte_1ED96F222;
  v70 = v17;
  sub_1AE23DB8C();
  v103[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v103[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v103[2] = swift_getTupleTypeMetadata2();
  v98 = v22;
  sub_1AE23DB8C();
  v103[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v103[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v80 = *(TupleTypeMetadata - 8);
  v79 = AssociatedTypeWitness;
  v76 = v9;
  v28 = v80 + 16;
  v27 = *(v80 + 16);
  v71 = v14;
  v27(v103, &v104[3], TupleTypeMetadata);
  v91 = v28;
  v93 = v23;

  v94 = v26;

  v97 = v24;

  v27(v103, &v104[3], TupleTypeMetadata);
  v29 = v27;

  v30 = v70;

  v31 = v72;
  swift_getAtKeyPath();

  v32 = swift_modifyAtWritableKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(v104, v31, v30);
  (*(v73 + 8))(v31, v30);
  v32(v103, 0);

  LOWORD(v103[0]) = v104[0];
  BYTE2(v103[0]) = v104[1];
  v34 = v103;
  MergeResult.merge(_:)(v34);
  v35 = TupleTypeMetadata;
  v29(v103, &v104[3], TupleTypeMetadata);

  v88 = v25;

  v29(v103, &v104[3], v35);

  v36 = v74;
  swift_getAtKeyPath();

  v37 = swift_modifyAtWritableKeyPath();
  v38 = v71;
  v39 = swift_getAssociatedConformanceWitness();
  (*(*(v39 + 8) + 8))(v104, v36, v38);
  (*(v75 + 8))(v36, v38);
  v37(v103, 0);

  LOWORD(v103[0]) = v104[0];
  BYTE2(v103[0]) = v104[1];
  v40 = v103;
  MergeResult.merge(_:)(v40);
  v41 = TupleTypeMetadata;
  v86 = v29;
  v29(v103, &v104[3], TupleTypeMetadata);

  v29(v103, &v104[3], v41);

  v42 = v77;
  swift_getAtKeyPath();

  v43 = swift_modifyAtWritableKeyPath();
  v44 = v87;
  v45 = swift_getAssociatedConformanceWitness();
  (*(*(v45 + 8) + 8))(v104, v42, v44);
  (*(v78 + 8))(v42, v44);
  v43(v103, 0);

  LOWORD(v103[0]) = v104[0];
  BYTE2(v103[0]) = v104[1];
  v46 = v103;
  MergeResult.merge(_:)(v46);
  v47 = v86;
  v86(v103, &v104[3], v41);

  v47(v103, &v104[3], v41);

  v48 = v81;
  swift_getAtKeyPath();

  v49 = swift_modifyAtWritableKeyPath();
  v50 = v76;
  v51 = swift_getAssociatedConformanceWitness();
  (*(*(v51 + 8) + 8))(v104, v48, v50);
  (*(v82 + 8))(v48, v50);
  v49(v103, 0);

  LOWORD(v103[0]) = v104[0];
  BYTE2(v103[0]) = v104[1];
  v52 = v103;
  MergeResult.merge(_:)(v52);
  v53 = TupleTypeMetadata;
  v54 = v86;
  v86(v103, &v104[3], TupleTypeMetadata);

  v54(v103, &v104[3], v53);

  v55 = v83;
  swift_getAtKeyPath();

  v56 = swift_modifyAtWritableKeyPath();
  v57 = v101;
  v58 = v98;
  v59 = v79;
  v60 = swift_getAssociatedConformanceWitness();
  (*(*(v60 + 8) + 8))(v104, v55, v59);
  (*(v84 + 8))(v55, v59);
  v56(v103, 0);

  LOWORD(v103[0]) = v104[0];
  BYTE2(v103[0]) = v104[1];
  v61 = v103;
  MergeResult.merge(_:)(v61);
  v62 = *(v57 + 8);
  v63 = (*(v62 + 24))(v58, v62);
  v64 = (*(v62 + 40))(v103, v58, v62);
  sub_1AE21F75C(v63, v104);

  v64(v103, 0);
  LOWORD(v103[0]) = v104[0];
  BYTE2(v103[0]) = v104[1];
  v65 = v103;
  MergeResult.merge(_:)(v65);
  (*(v62 + 64))(v58, v62);
  result = (*(v80 + 8))(&v104[3], v53);
  v67 = v104[2];
  v68 = HIBYTE(v104[2]);
  v69 = v85;
  *v85 = HIBYTE(v104[1]);
  v69[1] = v67;
  v69[2] = v68;
  return result;
}

uint64_t CRStruct_5.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  v5 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v74 - v8;
  v81 = swift_getAssociatedTypeWitness();
  v86 = *(v81 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v74 - v12;
  v79 = swift_getAssociatedTypeWitness();
  v83 = *(v79 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v74 - v16;
  v77 = swift_getAssociatedTypeWitness();
  v80 = *(v77 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v74 - v20;
  v74 = swift_getAssociatedTypeWitness();
  v76 = *(v74 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v89 = &v74 - v25;
  v107 = v4;
  (*(v4 + 96))(v113, a2, v4, v24);
  v110 = v113[2];
  v97 = v113[4];
  v105 = v113[5];
  v96 = v113[7];
  v101 = v113[8];
  v103 = v113[10];
  v98 = v113[11];
  v26 = v113[13];
  v27 = v113[1];
  v104 = v113[14];
  v112 = MEMORY[0x1E69E7CD0];
  sub_1AE23DB8C();
  v111[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[2] = swift_getTupleTypeMetadata2();
  v100 = a2;
  sub_1AE23DB8C();
  v111[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v84 = *(TupleTypeMetadata - 8);
  v28 = v84 + 16;
  v99 = *(v84 + 16);
  v99(v111, v113, TupleTypeMetadata);
  v106 = v28;
  v95 = v27;

  v102 = v26;

  swift_getAtKeyPath();

  v99(v111, v113, TupleTypeMetadata);

  v29 = v75;
  swift_getAtKeyPath();

  v30 = v74;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v89;
  v33 = (*(AssociatedConformanceWitness + 64))(v29, v30, AssociatedConformanceWitness);
  v34 = *(v76 + 8);
  v34(v29, v30);
  v34(v32, v30);
  sub_1AE00F014(v33);
  v35 = TupleTypeMetadata;
  v36 = v99;
  v99(v111, v113, TupleTypeMetadata);

  swift_getAtKeyPath();

  v36(v111, v113, v35);

  v37 = v78;
  swift_getAtKeyPath();

  v38 = v77;
  v39 = swift_getAssociatedConformanceWitness();
  v40 = v90;
  v41 = (*(v39 + 64))(v37, v38, v39);
  v42 = *(v80 + 8);
  v42(v37, v38);
  v42(v40, v38);
  sub_1AE00F014(v41);
  v43 = TupleTypeMetadata;
  v44 = v99;
  v99(v111, v113, TupleTypeMetadata);

  swift_getAtKeyPath();

  v44(v111, v113, v43);

  v45 = v82;
  swift_getAtKeyPath();

  v46 = v79;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = v91;
  v49 = (*(v47 + 64))(v45, v46, v47);
  v50 = *(v83 + 8);
  v50(v45, v46);
  v50(v48, v46);
  sub_1AE00F014(v49);
  v51 = v99;
  v99(v111, v113, TupleTypeMetadata);

  swift_getAtKeyPath();

  v51(v111, v113, TupleTypeMetadata);

  v52 = v85;
  swift_getAtKeyPath();

  v53 = v81;
  v54 = swift_getAssociatedConformanceWitness();
  v55 = v92;
  v56 = (*(v54 + 64))(v52, v53, v54);
  v57 = *(v86 + 8);
  v57(v52, v53);
  v57(v55, v53);
  sub_1AE00F014(v56);
  v58 = TupleTypeMetadata;
  v59 = v99;
  v99(v111, v113, TupleTypeMetadata);

  swift_getAtKeyPath();

  v59(v111, v113, v58);

  v60 = v87;
  swift_getAtKeyPath();

  v61 = v107;
  v62 = v100;
  v63 = AssociatedTypeWitness;
  v64 = swift_getAssociatedConformanceWitness();
  v65 = v94;
  v66 = (*(v64 + 64))(v60, v63, v64);
  v67 = *(v88 + 8);
  v67(v60, v63);
  v67(v65, v63);
  sub_1AE00F014(v66);
  v68 = *(v61 + 8);
  v69 = *(v68 + 24);
  v70 = v69(v62, v68);
  v71 = v69(v62, v68);
  v72 = sub_1AE2200E4(v71, v70);

  sub_1AE00F014(v72);
  (*(v84 + 8))(v113, v58);
  return v112;
}

uint64_t CRStruct_5.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v178 = a2;
  v179 = a1;
  v154 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v183 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v184 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v185 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v186 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v187 = sub_1AE23D7CC();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = *(*(TupleTypeMetadata - 1) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v120 = &v116 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = *(AssociatedTypeWitness - 8);
  v14 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v144 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v116 - v17;
  v143 = *(swift_getAssociatedConformanceWitness() + 16);
  v116 = swift_getAssociatedTypeWitness();
  v151 = sub_1AE23D7CC();
  v150 = *(v151 - 8);
  v18 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v168 = &v116 - v19;
  v159 = swift_getAssociatedTypeWitness();
  v141 = *(v159 - 8);
  v20 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v140 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v162 = &v116 - v23;
  v139 = *(swift_getAssociatedConformanceWitness() + 16);
  v117 = swift_getAssociatedTypeWitness();
  v149 = sub_1AE23D7CC();
  v148 = *(v149 - 8);
  v24 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v165 = &v116 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v135 = *(v26 - 8);
  v27 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v134 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v116 - v30;
  v133 = *(swift_getAssociatedConformanceWitness() + 16);
  v127 = v26;
  v118 = swift_getAssociatedTypeWitness();
  v147 = sub_1AE23D7CC();
  v146 = *(v147 - 8);
  v31 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v164 = &v116 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v130 = *(v33 - 8);
  v34 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v158 = &v116 - v37;
  v128 = *(swift_getAssociatedConformanceWitness() + 16);
  v125 = v33;
  v119 = swift_getAssociatedTypeWitness();
  v156 = sub_1AE23D7CC();
  v155 = *(v156 - 8);
  v38 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v163 = &v116 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v126 = *(v40 - 8);
  v41 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v124 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v157 = &v116 - v44;
  v123 = *(swift_getAssociatedConformanceWitness() + 16);
  v122 = v40;
  v136 = swift_getAssociatedTypeWitness();
  v138 = sub_1AE23D7CC();
  v137 = *(v138 - 8);
  v45 = *(v137 + 64);
  v46 = MEMORY[0x1EEE9AC00](v138);
  v160 = &v116 - v47;
  v48 = *(v6 + 96);
  v152 = v6;
  v48(&v183, a3, v6, v46);
  v49 = v184;
  v177 = v185;
  v176 = v187;
  v180 = v188;
  v175 = v189;
  v174 = v190;
  v173 = v191;
  v50 = v192;
  v169 = v193;
  v51 = v194;
  sub_1AE23DB8C();
  v182[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v182[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v182[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v182[3] = swift_getTupleTypeMetadata2();
  v153 = a3;
  sub_1AE23DB8C();
  v182[4] = swift_getTupleTypeMetadata2();
  v172 = swift_getTupleTypeMetadata();
  v131 = *(v172 - 8);
  v52 = v131 + 16;
  v181 = *(v131 + 16);
  (v181)(v182, &v183, v172);
  v171 = v49;

  v166 = v51;

  v170 = v50;

  swift_getAtKeyPath();

  (v181)(v182, &v183, v172);
  v167 = v52;

  v53 = v124;
  swift_getAtKeyPath();

  v54 = v157;
  v55 = v122;
  (*(v123 + 40))(v53, v178, v122);
  v56 = *(v126 + 8);
  v56(v53, v55);
  v56(v54, v55);
  v57 = v172;
  v58 = v181;
  (v181)(v182, &v183, v172);

  swift_getAtKeyPath();

  v58(v182, &v183, v57);

  v59 = v129;
  swift_getAtKeyPath();

  v60 = v59;
  v61 = v59;
  v62 = v158;
  v63 = v125;
  (*(v128 + 40))(v60, v178, v125);
  v64 = *(v130 + 8);
  v64(v61, v63);
  v64(v62, v63);
  v65 = v172;
  v66 = v181;
  (v181)(v182, &v183, v172);

  v67 = v132;
  swift_getAtKeyPath();

  v66(v182, &v183, v65);

  v68 = v134;
  swift_getAtKeyPath();

  v69 = v67;
  v70 = v127;
  (*(v133 + 40))(v68, v178, v127);
  v71 = *(v135 + 8);
  v71(v68, v70);
  v71(v69, v70);
  v72 = v172;
  (v181)(v182, &v183, v172);

  swift_getAtKeyPath();

  (v181)(v182, &v183, v72);

  v73 = v140;
  swift_getAtKeyPath();

  v74 = v162;
  v75 = v159;
  (*(v139 + 40))(v73, v178, v159);
  v76 = *(v141 + 8);
  v76(v73, v75);
  v76(v74, v75);
  v77 = v172;
  v78 = v181;
  (v181)(v182, &v183, v172);

  v79 = v142;
  swift_getAtKeyPath();

  v78(v182, &v183, v77);

  v80 = v165;

  v81 = v163;

  v82 = v144;
  swift_getAtKeyPath();
  v83 = v164;

  v84 = v79;
  v85 = AssociatedTypeWitness;
  (*(v143 + 40))(v82, v178, AssociatedTypeWitness);
  (*(v131 + 8))(&v183, v77);
  v86 = *(v145 + 8);
  v87 = v82;
  v88 = v160;
  v86(v87, v85);
  v86(v84, v85);
  if ((*(*(v136 - 8) + 48))(v88, 1) == 1 && (*(*(v119 - 8) + 48))(v81, 1) == 1 && (*(*(v118 - 8) + 48))(v83, 1) == 1 && (*(*(v117 - 8) + 48))(v80, 1) == 1 && (*(*(v116 - 8) + 48))(v168, 1) == 1)
  {
    (*(v137 + 8))(v88, v138);
    v89 = *(*(*(v152 + 8) + 8) + 16);
    v90 = swift_getAssociatedTypeWitness();
    (*(*(v90 - 8) + 56))(v154, 1, 1, v90);
    v91 = v151;
    v92 = v80;
    v93 = v150;
    v94 = v83;
    v95 = v149;
    v96 = v148;
    v97 = v147;
    v98 = v81;
    v99 = v146;
    v100 = v156;
  }

  else
  {
    v101 = TupleTypeMetadata[12];
    v102 = TupleTypeMetadata[16];
    v103 = TupleTypeMetadata[20];
    v181 = TupleTypeMetadata[24];
    v104 = v120;
    (*(v137 + 32))(v120, v88, v138);
    (*(v155 + 16))(&v104[v101], v81, v156);
    v99 = v146;
    v105 = v147;
    (*(v146 + 16))(&v104[v102], v83, v147);
    v106 = v80;
    v96 = v148;
    v95 = v149;
    (*(v148 + 16))(&v104[v103], v106, v149);
    v93 = v150;
    v107 = v151;
    (*(v150 + 16))(&v181[v104], v168, v151);
    v108 = *(*(*(v152 + 8) + 8) + 16);
    v109 = swift_getAssociatedTypeWitness();
    v110 = v154;
    v94 = v164;
    v97 = v105;
    v92 = v165;
    swift_dynamicCast();
    v111 = *(*(v109 - 8) + 56);
    v112 = v110;
    v98 = v163;
    v113 = v109;
    v100 = v156;
    v111(v112, 0, 1, v113);
    v91 = v107;
  }

  v114 = v155;
  (*(v93 + 8))(v168, v91);
  (*(v96 + 8))(v92, v95);
  (*(v99 + 8))(v94, v97);
  return (*(v114 + 8))(v98, v100);
}

uint64_t CRStruct_5.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v106 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v77 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v77 - v13;
  v102 = swift_getAssociatedTypeWitness();
  v86 = *(v102 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v85 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v77 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v89 = *(v18 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v77 - v22;
  v94 = swift_getAssociatedTypeWitness();
  v96 = *(v94 - 8);
  v23 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v93 = &v77 - v27;
  v107 = v4;
  (*(v4 + 96))(v116, a2, v4, v26);
  v28 = v116[1];
  v110 = v116[2];
  v111 = v116[4];
  v114 = v116[5];
  v113 = v116[7];
  v112 = v116[11];
  v29 = v116[14];
  v109 = v116[8];
  v105 = v116[10];
  v108 = v116[13];
  sub_1AE23DB8C();
  v115[0] = swift_getTupleTypeMetadata2();
  v90 = v18;
  sub_1AE23DB8C();
  v115[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v115[2] = swift_getTupleTypeMetadata2();
  v83 = v9;
  v30 = v28;
  sub_1AE23DB8C();
  v115[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v115[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v98 = *(TupleTypeMetadata - 8);
  v33 = v98 + 16;
  v32 = *(v98 + 16);
  v32(v115, v116, TupleTypeMetadata);

  v34 = v93;
  swift_getAtKeyPath();

  v100 = TupleTypeMetadata;
  v104 = v33;
  v92 = v32;
  v32(v115, v116, TupleTypeMetadata);
  v99 = v30;

  v103 = v29;
  v35 = a2;

  v36 = v95;
  swift_getAtKeyPath();

  v37 = v94;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 88))(v36, v37, AssociatedConformanceWitness);
  v39 = *(v96 + 8);
  v39(v36, v37);
  v39(v34, v37);
  if (a2)
  {
    goto LABEL_2;
  }

  v42 = v100;
  v43 = v35;
  v44 = v92;
  v92(v115, v116, v100);

  v87 = v43;

  swift_getAtKeyPath();

  v44(v115, v116, v42);

  v45 = v88;
  swift_getAtKeyPath();

  v46 = v42;
  v47 = v90;
  v48 = swift_getAssociatedConformanceWitness();
  v49 = v97;
  LOBYTE(v43) = (*(v48 + 88))(v45, v47, v48);
  v50 = *(v89 + 8);
  v50(v45, v47);
  v50(v49, v47);
  if (v43)
  {
    v40 = 1;
    v41 = v46;
    goto LABEL_10;
  }

  v51 = v92;
  v92(v115, v116, v46);

  swift_getAtKeyPath();

  v51(v115, v116, v46);

  v52 = v85;
  swift_getAtKeyPath();

  v53 = v102;
  v54 = swift_getAssociatedConformanceWitness();
  v55 = v91;
  v56 = (*(v54 + 88))(v52, v53, v54);
  v57 = *(v86 + 8);
  v57(v52, v53);
  v57(v55, v53);
  v41 = v46;
  if (v56)
  {
    v40 = 1;
    goto LABEL_10;
  }

  v58 = v92;
  v92(v115, v116, v46);

  v59 = v80;
  swift_getAtKeyPath();

  v58(v115, v116, v46);

  v60 = v81;
  swift_getAtKeyPath();

  v61 = v83;
  v62 = swift_getAssociatedConformanceWitness();
  v63 = (*(v62 + 88))(v60, v61, v62);
  v64 = *(v82 + 8);
  v64(v60, v61);
  v64(v59, v61);
  if (v63)
  {
    v40 = 1;
    v41 = v46;
    goto LABEL_10;
  }

  v66 = v92;
  v92(v115, v116, v46);

  swift_getAtKeyPath();

  v66(v115, v116, v46);

  v67 = v78;
  swift_getAtKeyPath();
  v68 = v87;

  v69 = AssociatedTypeWitness;
  v70 = swift_getAssociatedConformanceWitness();
  v71 = v84;
  LOBYTE(v66) = (*(v70 + 88))(v67, v69, v70);
  v72 = *(v79 + 8);
  v72(v67, v69);
  v72(v71, v69);
  if (v66)
  {
LABEL_2:
    v40 = 1;
  }

  else
  {
    v73 = *(v107 + 8);
    v74 = *(v73 + 24);
    v75 = v74(v68, v73);
    v76 = v74(v68, v73);
    v40 = sub_1AE21FE14(v76, v75);
  }

  v41 = v100;
LABEL_10:
  (*(v98 + 8))(v116, v41);
  return v40 & 1;
}

uint64_t CRStruct_5.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v155 = a1;
  v132 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v125 = *(AssociatedTypeWitness - 8);
  v6 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v124 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v96 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v97 = swift_getAssociatedTypeWitness();
  v131 = sub_1AE23D7CC();
  v130 = *(v131 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v143 = &v96 - v11;
  v136 = swift_getAssociatedTypeWitness();
  v120 = *(v136 - 8);
  v12 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v119 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v96 - v15;
  v116 = swift_getAssociatedConformanceWitness();
  v98 = swift_getAssociatedTypeWitness();
  v129 = sub_1AE23D7CC();
  v128 = *(v129 - 8);
  v16 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v144 = &v96 - v17;
  v135 = swift_getAssociatedTypeWitness();
  v114 = *(v135 - 8);
  v18 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v113 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v96 - v21;
  v112 = swift_getAssociatedConformanceWitness();
  v99 = swift_getAssociatedTypeWitness();
  v127 = sub_1AE23D7CC();
  v126 = *(v127 - 8);
  v22 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v139 = &v96 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v109 = *(v24 - 8);
  v25 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v96 - v28;
  v107 = swift_getAssociatedConformanceWitness();
  v104 = v24;
  v100 = swift_getAssociatedTypeWitness();
  v133 = sub_1AE23D7CC();
  v122 = *(v133 - 8);
  v29 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v140 = &v96 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v105 = *(v31 - 8);
  v32 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v103 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v134 = &v96 - v35;
  v102 = swift_getAssociatedConformanceWitness();
  v101 = v31;
  v115 = swift_getAssociatedTypeWitness();
  v118 = sub_1AE23D7CC();
  v117 = *(v118 - 8);
  v36 = *(v117 + 64);
  v37 = MEMORY[0x1EEE9AC00](v118);
  v142 = &v96 - v38;
  (*(v5 + 96))(v163, a2, v5, v37);
  v39 = v163[2];
  v149 = v163[4];
  v153 = v163[5];
  v157 = v163[7];
  v152 = v163[8];
  v41 = v163[13];
  v40 = v163[14];
  v42 = v163[1];
  v154 = v163[10];
  v43 = v163[11];
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v159 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v160 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v161 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v110 = *(TupleTypeMetadata - 8);
  v44 = v110 + 16;
  v151 = *(v110 + 16);
  v151(&TupleTypeMetadata2, v163, TupleTypeMetadata);
  v147 = v44;
  v141 = v42;

  v145 = v40;

  v148 = v41;

  v146 = v43;

  v156 = v39;
  swift_getAtKeyPath();

  v151(&TupleTypeMetadata2, v163, TupleTypeMetadata);

  v45 = v103;
  swift_getAtKeyPath();

  v46 = v134;
  v47 = v101;
  (*(v102 + 72))(v45, v101);
  v48 = *(v105 + 8);
  v48(v45, v47);
  v48(v46, v47);
  v49 = TupleTypeMetadata;
  v50 = v151;
  v151(&TupleTypeMetadata2, v163, TupleTypeMetadata);

  v51 = v106;
  swift_getAtKeyPath();

  v50(&TupleTypeMetadata2, v163, v49);

  v52 = v108;
  swift_getAtKeyPath();

  v53 = v104;
  (*(v107 + 72))(v52, v104);
  v54 = *(v109 + 8);
  v54(v52, v53);
  v54(v51, v53);
  v55 = TupleTypeMetadata;
  v56 = v151;
  v151(&TupleTypeMetadata2, v163, TupleTypeMetadata);

  v57 = v111;
  swift_getAtKeyPath();

  v56(&TupleTypeMetadata2, v163, v55);

  v58 = v113;
  swift_getAtKeyPath();

  v59 = v135;
  (*(v112 + 72))(v58, v135);
  v60 = *(v114 + 8);
  v60(v58, v59);
  v60(v57, v59);
  v61 = TupleTypeMetadata;
  v56(&TupleTypeMetadata2, v163, TupleTypeMetadata);

  swift_getAtKeyPath();

  v151(&TupleTypeMetadata2, v163, v61);

  v62 = v119;
  swift_getAtKeyPath();

  v63 = v137;
  v64 = v136;
  (*(v116 + 72))(v62, v136);
  v65 = *(v120 + 8);
  v65(v62, v64);
  v65(v63, v64);
  v66 = TupleTypeMetadata;
  v67 = v151;
  v151(&TupleTypeMetadata2, v163, TupleTypeMetadata);

  v68 = v121;
  swift_getAtKeyPath();

  v67(&TupleTypeMetadata2, v163, v66);

  v69 = v140;

  v70 = v124;
  swift_getAtKeyPath();

  v71 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v70, AssociatedTypeWitness);
  (*(v110 + 8))(v163, v66);
  v72 = *(v125 + 8);
  v72(v70, v71);
  v72(v68, v71);
  if ((*(*(v115 - 8) + 48))(v142, 1) == 1 && (*(*(v100 - 8) + 48))(v69, 1) == 1 && (*(*(v99 - 8) + 48))(v139, 1) == 1 && (*(*(v98 - 8) + 48))(v144, 1) == 1 && (*(*(v97 - 8) + 48))(v143, 1) == 1)
  {
    v73 = v118;
    (*(v117 + 8))(v142, v118);
    TupleTypeMetadata2 = v73;
    v74 = v133;
    v159 = v133;
    v75 = v127;
    v160 = v127;
    v76 = v129;
    v161 = v129;
    v77 = v131;
    v162 = v131;
    v78 = swift_getTupleTypeMetadata();
    (*(*(v78 - 8) + 56))(v132, 1, 1, v78);
    v79 = v130;
    v80 = v128;
    v81 = v69;
    v82 = v126;
    v83 = v139;
    v84 = v122;
  }

  else
  {
    v85 = v118;
    TupleTypeMetadata2 = v118;
    v86 = v133;
    v159 = v133;
    v75 = v127;
    v160 = v127;
    v76 = v129;
    v161 = v129;
    v87 = v131;
    v162 = v131;
    v88 = swift_getTupleTypeMetadata();
    v89 = v88[12];
    v90 = v88[16];
    v156 = v88[20];
    v157 = v88[24];
    v91 = v132;
    (*(v117 + 32))(v132, v142, v85);
    v84 = v122;
    (*(v122 + 16))(v91 + v89, v69, v86);
    v82 = v126;
    v83 = v139;
    (*(v126 + 16))(v91 + v90, v139, v75);
    v80 = v128;
    (*(v128 + 16))(v91 + v156, v144, v76);
    v79 = v130;
    (*(v130 + 16))(v91 + v157, v143, v87);
    v92 = *(*(v88 - 1) + 56);
    v93 = v91;
    v81 = v140;
    v94 = v88;
    v77 = v87;
    v74 = v133;
    v92(v93, 0, 1, v94);
  }

  (*(v79 + 8))(v143, v77);
  (*(v80 + 8))(v144, v76);
  (*(v82 + 8))(v83, v75);
  return (*(v84 + 8))(v81, v74);
}

uint64_t CRStruct_5.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v171 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v144 = AssociatedTypeWitness;
  v126 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v157 = *(v6 - 8);
  v7 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v142 = &v121 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v140 = swift_getAssociatedConformanceWitness();
  v141 = v9;
  v125 = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v161 = v10;
  v150 = *(v10 - 8);
  v11 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v121 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v135 = swift_getAssociatedConformanceWitness();
  v136 = v13;
  v124 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v156 = v14;
  v160 = *(v14 - 8);
  v15 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v121 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v131 = swift_getAssociatedConformanceWitness();
  v132 = v17;
  v123 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v159 = *(v18 - 8);
  v19 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v121 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v128 = swift_getAssociatedConformanceWitness();
  v145 = v21;
  v22 = swift_getAssociatedTypeWitness();
  v172 = sub_1AE23D7CC();
  v173 = v18;
  v174 = v14;
  v175 = v10;
  v158 = v6;
  v176 = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v24 = sub_1AE23D7CC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v133 = &v121 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v130 = &v121 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v121 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v121 - v36;
  v122 = v22;
  v152 = sub_1AE23D7CC();
  v166 = *(v152 - 8);
  v38 = *(v166 + 64);
  v39 = MEMORY[0x1EEE9AC00](v152);
  v41 = &v121 - v40;
  (*(v4 + 96))(&v172, a2, v4, v39);
  v42 = v173;
  v43 = v174;
  v167 = v177;
  v168 = v176;
  v155 = v178;
  v154 = v179;
  v148 = v180;
  v153 = v181;
  v137 = v182;
  v146 = v183;

  v169 = v43;

  v170 = v42;
  v44 = v25;
  v45 = v161;

  v46 = *(v44 + 16);
  v165 = v44 + 16;
  v164 = v46;
  v46(v37, v171, v24);
  v47 = *(TupleTypeMetadata - 1);
  v163 = *(v47 + 48);
  v162 = v47 + 48;
  v48 = v163(v37, 1, TupleTypeMetadata);
  v49 = v156;
  v149 = v18;
  v147 = v44;
  v151 = v24;
  if (v48 == 1)
  {
    (*(v44 + 8))(v37, v24);
    (*(*(v122 - 8) + 56))(v41, 1, 1);
  }

  else
  {
    v122 = TupleTypeMetadata[12];
    v50 = TupleTypeMetadata[16];
    v51 = TupleTypeMetadata[20];
    v52 = TupleTypeMetadata[24];
    (*(v166 + 32))(v41, v37, v152);
    (*(v157 + 8))(&v37[v52], v158);
    (*(v150 + 8))(&v37[v51], v45);
    (*(v160 + 8))(&v37[v50], v49);
    (*(v159 + 8))(&v37[v122], v18);
  }

  v53 = swift_modifyAtWritableKeyPath();
  v54 = v128;
  v55 = *(v128 + 80);
  v56 = swift_checkMetadataState();
  v55(v41, v56, v54);
  v57 = v166 + 8;
  v58 = *(v166 + 8);
  v59 = v41;
  v60 = v152;
  v58(v59, v152);
  v53(&v172, 0);

  v61 = v151;
  v164(v34, v171, v151);
  v62 = v163(v34, 1, TupleTypeMetadata);
  v166 = v57;
  v145 = v58;
  if (v62 == 1)
  {
    (*(v147 + 8))(v34, v61);
    v63 = v129;
    (*(*(v123 - 8) + 56))(v129, 1, 1);
    v64 = v149;
    v65 = v159;
  }

  else
  {
    v66 = TupleTypeMetadata[12];
    v128 = TupleTypeMetadata[16];
    v67 = TupleTypeMetadata[20];
    v68 = TupleTypeMetadata[24];
    v65 = v159;
    v63 = v129;
    v64 = v149;
    (*(v159 + 32))(v129, &v34[v66], v149);
    (*(v157 + 8))(&v34[v68], v158);
    (*(v150 + 8))(&v34[v67], v161);
    (*(v160 + 8))(&v34[v128], v156);
    v58(v34, v60);
  }

  v69 = swift_modifyAtWritableKeyPath();
  v70 = v131;
  v71 = *(v131 + 80);
  v72 = swift_checkMetadataState();
  v71(v63, v72, v70);
  v73 = v63;
  v74 = *(v65 + 8);
  v74(v73, v64);
  v69(&v172, 0);

  v75 = v130;
  v76 = v151;
  v164(v130, v171, v151);
  v77 = v163(v75, 1, TupleTypeMetadata);
  v159 = v65 + 8;
  v127 = TupleTypeMetadata;
  if (v77 == 1)
  {
    (*(v147 + 8))(v75, v76);
    v78 = v134;
    (*(*(v124 - 8) + 56))(v134, 1, 1);
    v79 = v156;
    v80 = v160;
  }

  else
  {
    v81 = TupleTypeMetadata[12];
    v82 = TupleTypeMetadata[16];
    v83 = TupleTypeMetadata[20];
    v84 = TupleTypeMetadata[24];
    v80 = v160;
    v78 = v134;
    v79 = v156;
    (*(v160 + 32))(v134, &v75[v82]);
    (*(v157 + 8))(&v75[v84], v158);
    (*(v150 + 8))(&v75[v83], v161);
    v74(&v75[v81], v64);
    v145(v75, v152);
  }

  v134 = v74;
  v85 = swift_modifyAtWritableKeyPath();
  v86 = v135;
  v87 = *(v135 + 80);
  v88 = swift_checkMetadataState();
  v87(v78, v88, v86);
  v89 = v78;
  v90 = v79;
  v136 = *(v80 + 8);
  v136(v89, v79);
  v85(&v172, 0);

  v91 = v133;
  v92 = v151;
  v164(v133, v171, v151);
  v93 = v127;
  v94 = v163(v91, 1, v127);
  v160 = v80 + 8;
  if (v94 == 1)
  {
    (*(v147 + 8))(v91, v92);
    v95 = v139;
    (*(*(v125 - 8) + 56))(v139, 1, 1);
    v96 = v150;
    v97 = v92;
  }

  else
  {
    v98 = v90;
    v97 = v92;
    v99 = v93[12];
    v100 = v93[16];
    v101 = v93[24];
    v96 = v150;
    v95 = v139;
    (*(v150 + 32))(v139, &v91[v93[20]], v161);
    (*(v157 + 8))(&v91[v101], v158);
    v136(&v91[v100], v98);
    (v134)(&v91[v99], v149);
    v145(v91, v152);
  }

  v102 = swift_modifyAtWritableKeyPath();
  v103 = v140;
  v104 = *(v140 + 80);
  v105 = swift_checkMetadataState();
  v104(v95, v105, v103);
  v106 = *(v96 + 8);
  v107 = v95;
  v108 = v161;
  v106(v107, v161);
  v102(&v172, 0);

  v109 = v138;
  v164(v138, v171, v97);
  if (v163(v109, 1, v93) == 1)
  {
    (*(v147 + 8))(v109, v97);
    v110 = v142;
    (*(*(v126 - 8) + 56))(v142, 1, 1);
    v111 = v158;
    v112 = v157;
  }

  else
  {
    v171 = v93[12];
    v113 = v93[16];
    v114 = v93[20];
    v112 = v157;
    v115 = &v109[v93[24]];
    v110 = v142;
    v111 = v158;
    (*(v157 + 32))(v142, v115, v158);
    v106(&v109[v114], v108);
    v136(&v109[v113], v156);
    (v134)(&v109[v171], v149);
    v145(v109, v152);
  }

  v116 = swift_modifyAtWritableKeyPath();
  v117 = AssociatedConformanceWitness;
  v118 = *(AssociatedConformanceWitness + 80);
  v119 = swift_checkMetadataState();
  v118(v110, v119, v117);
  (*(v112 + 8))(v110, v111);
  v116(&v172, 0);
}

uint64_t CRStruct_5.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v88 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v59 - v6;
  v82 = swift_getAssociatedTypeWitness();
  v63 = *(v82 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v62 = &v59 - v8;
  v83 = swift_getAssociatedTypeWitness();
  v65 = *(v83 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v64 = &v59 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v13;
  v77 = swift_getAssociatedTypeWitness();
  v79 = *(v77 - 8);
  v14 = *(v79 + 64);
  v15 = MEMORY[0x1EEE9AC00](v77);
  v78 = &v59 - v16;
  (*(v4 + 96))(v90, a2, v4, v15);
  v17 = v90[1];
  v76 = v90[2];
  v87 = v90[4];
  v86 = v90[5];
  v85 = v90[7];
  v84 = v90[8];
  v18 = v90[10];
  v19 = v90[11];
  v21 = v90[13];
  v20 = v90[14];
  sub_1AE23DB8C();
  v89[0] = swift_getTupleTypeMetadata2();
  v68 = v11;
  sub_1AE23DB8C();
  v89[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v89[2] = swift_getTupleTypeMetadata2();
  v22 = v88;
  sub_1AE23DB8C();
  v89[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v89[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v80 = *(TupleTypeMetadata - 8);
  v24 = *(v80 + 16);
  v70 = v80 + 16;
  v69 = v24;
  v24(v89, v90, TupleTypeMetadata);
  v75 = v17;

  v74 = v20;

  v71 = v21;

  v72 = v19;

  v73 = v18;

  v25 = a2;

  v26 = v78;
  swift_getAtKeyPath();

  v27 = v77;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(v22, v27);
  (*(v79 + 8))(v26, v27);
  v29 = v22[3];
  v30 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v29);
  v31 = v29;
  v32 = TupleTypeMetadata;
  if (((*(v30 + 8))(v31, v30) & 1) == 0)
  {
    v69(v89, v90, TupleTypeMetadata);

    v33 = v66;
    swift_getAtKeyPath();

    v34 = v68;
    v35 = swift_getAssociatedConformanceWitness();
    v36 = v88;
    (*(*(v35 + 16) + 48))(v88, v34);
    (*(v67 + 8))(v33, v34);
    v37 = v36[3];
    v38 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v37);
    if (((*(v38 + 8))(v37, v38) & 1) == 0)
    {
      v69(v89, v90, v32);

      v39 = v64;
      swift_getAtKeyPath();

      v40 = v83;
      v41 = swift_getAssociatedConformanceWitness();
      v42 = v88;
      (*(*(v41 + 16) + 48))(v88, v40);
      (*(v65 + 8))(v39, v40);
      v43 = v42[3];
      v44 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v43);
      if (((*(v44 + 8))(v43, v44) & 1) == 0)
      {
        v69(v89, v90, v32);

        v45 = v62;
        swift_getAtKeyPath();

        v46 = v82;
        v47 = swift_getAssociatedConformanceWitness();
        v48 = v88;
        (*(*(v47 + 16) + 48))(v88, v46);
        (*(v63 + 8))(v45, v46);
        v49 = v48[3];
        v50 = v48[4];
        __swift_project_boxed_opaque_existential_1(v48, v49);
        if (((*(v50 + 8))(v49, v50) & 1) == 0)
        {
          v69(v89, v90, v32);

          v51 = v60;
          swift_getAtKeyPath();

          v52 = AssociatedTypeWitness;
          v53 = swift_getAssociatedConformanceWitness();
          v54 = v88;
          (*(*(v53 + 16) + 48))(v88, v52);
          (*(v61 + 8))(v51, v52);
          v55 = v54[3];
          v56 = v54[4];
          __swift_project_boxed_opaque_existential_1(v54, v55);
          if (((*(v56 + 8))(v55, v56) & 1) == 0)
          {
            v57 = (*(*(v4 + 8) + 24))(v25);
            sub_1ADDDC764(v88, v57);
          }
        }
      }
    }
  }

  return (*(v80 + 8))(v90, v32);
}

Swift::Bool __swiftcall CRStruct_5.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = v39 - v5;
  v45 = swift_getAssociatedTypeWitness();
  v44 = *(v45 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = v39 - v7;
  v48 = swift_getAssociatedTypeWitness();
  v47 = *(v48 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v39 - v9;
  v51 = swift_getAssociatedTypeWitness();
  v50 = *(v51 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v49 = v39 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v39 - v16;
  (*(v3 + 96))(v59, v2, v3, v15);
  v18 = v59[1];
  v53 = v59[4];
  v57 = v59[8];
  v58 = v59[5];
  v55 = v59[10];
  v56 = v59[7];
  v52 = v59[11];
  v19 = v59[14];
  v54 = v59[13];

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = (*(*(AssociatedConformanceWitness + 16) + 56))(v12);
  (*(v13 + 8))(v17, v12);
  if (v21)
  {
    goto LABEL_6;
  }

  v39[0] = v19;
  v39[1] = v18;
  v22 = v49;
  swift_getAtKeyPath();
  v23 = v51;
  v24 = swift_getAssociatedConformanceWitness();
  v25 = (*(*(v24 + 16) + 56))(v23);
  (*(v50 + 8))(v22, v23);
  if (v25)
  {
    goto LABEL_6;
  }

  v26 = v46;
  swift_getAtKeyPath();
  v27 = v48;
  v28 = swift_getAssociatedConformanceWitness();
  v29 = (*(*(v28 + 16) + 56))(v27);
  (*(v47 + 8))(v26, v27);
  if (v29 & 1) != 0 || (v30 = v43, swift_getAtKeyPath(), v31 = v45, v32 = swift_getAssociatedConformanceWitness(), v33 = (*(*(v32 + 16) + 56))(v31), (*(v44 + 8))(v30, v31), (v33))
  {
LABEL_6:

    v34 = 1;
  }

  else
  {
    v36 = v40;
    swift_getAtKeyPath();
    v37 = AssociatedTypeWitness;
    v38 = swift_getAssociatedConformanceWitness();
    v34 = (*(*(v38 + 16) + 56))(v37);

    (*(v41 + 8))(v36, v37);
  }

  return v34 & 1;
}

uint64_t CRStruct_5.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 96))(&v26, a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  v6 = *(v5 + 64);
  v7 = swift_checkMetadataState();
  v6(a1, v7, v5);
  v4(&v26, 0);

  v8 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  v10 = *(v9 + 64);
  v11 = swift_checkMetadataState();
  v10(a1, v11, v9);
  v8(&v26, 0);

  v12 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 16);
  v14 = *(v13 + 64);
  v15 = swift_checkMetadataState();
  v14(a1, v15, v13);
  v12(&v26, 0);

  v24 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v17 = *(v16 + 64);
  v18 = swift_checkMetadataState();
  v17(a1, v18, v16);
  v24(&v26, 0);

  v19 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v20 = *(swift_getAssociatedConformanceWitness() + 16);
  v21 = *(v20 + 64);
  v22 = swift_checkMetadataState();
  v21(a1, v22, v20);
  v19(&v26, 0);
}

uint64_t CRStruct_5.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v55 = a3;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &v37 - v7;
  v43 = swift_getAssociatedTypeWitness();
  v42 = *(v43 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v37 - v9;
  v46 = swift_getAssociatedTypeWitness();
  v45 = *(v46 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v37 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v37 - v20;
  (*(v5 + 96))(&v60[1], a1, v5, v19);
  v54 = *&v60[9];
  v59 = *&v60[17];
  v53 = *&v60[33];
  v58 = *&v60[41];
  v52 = *&v60[57];
  v57 = *&v60[65];
  v51 = *&v60[81];
  v56 = *&v60[89];
  v50 = *&v60[105];
  v49 = *&v60[113];
  v22 = *(*(v5 + 8) + 24);
  v48 = v3;
  v23 = v22(a1);
  sub_1AE21FFB0(v23, &v60[1]);

  v24 = v60[1];
  if (v60[1] > 2u)
  {
    goto LABEL_17;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v60, v16);
  (*(v17 + 8))(v21, v16);
  if (v60[0] > v24)
  {
    v24 = v60[0];
  }

  v60[1] = v24;
  if (v60[0] > 2u)
  {
    goto LABEL_17;
  }

  swift_getAtKeyPath();
  v26 = swift_getAssociatedConformanceWitness();
  (*(*(*(v26 + 16) + 8) + 24))(v60, v12);
  (*(v47 + 8))(v15, v12);
  if (v60[0] > v24)
  {
    v24 = v60[0];
  }

  v60[1] = v24;
  if (v24 > 2)
  {
    goto LABEL_17;
  }

  v27 = v44;
  swift_getAtKeyPath();
  v28 = v46;
  v29 = swift_getAssociatedConformanceWitness();
  (*(*(*(v29 + 16) + 8) + 24))(v60, v28);
  (*(v45 + 8))(v27, v28);
  if (v60[0] > v24)
  {
    v24 = v60[0];
  }

  v60[1] = v24;
  if (v60[0] > 2u)
  {
    goto LABEL_17;
  }

  v30 = v41;
  swift_getAtKeyPath();
  v31 = v43;
  v32 = swift_getAssociatedConformanceWitness();
  (*(*(*(v32 + 16) + 8) + 24))(v60, v31);
  (*(v42 + 8))(v30, v31);
  if (v60[0] > v24)
  {
    v24 = v60[0];
  }

  v60[1] = v24;
  if (v24 > 2)
  {
LABEL_17:
  }

  else
  {
    v33 = v38;
    swift_getAtKeyPath();
    v34 = AssociatedTypeWitness;
    v35 = swift_getAssociatedConformanceWitness();
    (*(*(*(v35 + 16) + 8) + 24))(v60, v34);

    result = (*(v39 + 8))(v33, v34);
    if (v60[0] > v24)
    {
      LOBYTE(v24) = v60[0];
    }
  }

  *v55 = v24;
  return result;
}

uint64_t CRStruct_5<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v73 = a7;
  v77 = a6;
  v81 = a5;
  v87 = a4;
  v10 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = &v63 - v12;
  v93 = swift_getAssociatedTypeWitness();
  v72 = *(v93 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v71 = &v63 - v14;
  v95 = swift_getAssociatedTypeWitness();
  v76 = *(v95 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v75 = &v63 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v79 = *(v17 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v63 - v19;
  v83 = swift_getAssociatedTypeWitness();
  v86 = *(v83 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v63 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v90 = *(v97 - 8);
  v22 = *(v90 + 64);
  v23 = MEMORY[0x1EEE9AC00](v97);
  v96 = &v63 - v24;
  v25 = *(v10 + 96);
  v65 = v10;
  v25(&TupleTypeMetadata2, a2, v10, v23);
  v84 = TupleTypeMetadata2;
  v108 = v110;
  v99 = v111;
  v105 = v113;
  v107 = v114;
  v102 = v116;
  v98 = v117;
  v101 = v119;
  v106 = v120;
  v124[0] = TupleTypeMetadata2;
  v124[1] = v110;
  v124[2] = v111;
  v124[3] = v112;
  v78 = v112;
  v124[4] = v113;
  v124[5] = v114;
  v74 = v115;
  v124[6] = v115;
  v124[7] = v116;
  v124[8] = v117;
  v124[9] = v118;
  v70 = v118;
  v124[10] = v119;
  v124[11] = v120;
  v66 = v121;
  v124[12] = v121;
  v124[13] = v122;
  v100 = v122;
  v124[14] = v123;
  v103 = v123;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10();
  sub_1AE23E3CC();
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = v17;
  sub_1AE23DB8C();
  v110 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v112 = swift_getTupleTypeMetadata2();
  v64 = a2;
  sub_1AE23DB8C();
  v113 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = *(TupleTypeMetadata - 8);
  v28 = v89 + 16;
  v29 = *(v89 + 16);
  v29(&TupleTypeMetadata2, v124, TupleTypeMetadata);

  v30 = v85;
  swift_getAtKeyPath();

  v104 = TupleTypeMetadata;
  v92 = v28;
  v82 = v29;
  v29(&TupleTypeMetadata2, v124, TupleTypeMetadata);
  v31 = v96;

  v32 = v30;

  v33 = v83;
  v34 = v108;

  TupleTypeMetadata2 = v84;
  v35 = v97;
  v110 = v34;
  v36 = v88;
  sub_1AE23DD5C();
  if (v36)
  {
    (*(v89 + 8))(v124, v104);

    (*(v86 + 8))(v32, v33);
    return (*(v90 + 8))(v31, v35);
  }

  else
  {

    (*(v86 + 8))(v32, v33);
    v38 = v82;
    v82(&TupleTypeMetadata2, v124, v104);

    swift_getAtKeyPath();

    v38(&TupleTypeMetadata2, v124, v104);

    TupleTypeMetadata2 = v78;
    v110 = v105;
    v39 = v80;
    sub_1AE23DD5C();
    v40 = v104;

    (*(v79 + 8))(v94, v39);
    v41 = v82;
    v82(&TupleTypeMetadata2, v124, v40);

    v42 = v75;
    swift_getAtKeyPath();

    v41(&TupleTypeMetadata2, v124, v40);

    TupleTypeMetadata2 = v74;
    v110 = v102;
    v43 = v95;
    sub_1AE23DD5C();

    (*(v76 + 8))(v42, v43);
    v44 = v82;
    v82(&TupleTypeMetadata2, v124, v104);

    v45 = v71;
    swift_getAtKeyPath();

    v44(&TupleTypeMetadata2, v124, v104);

    TupleTypeMetadata2 = v70;
    v110 = v101;
    v46 = v93;
    sub_1AE23DD5C();

    (*(v72 + 8))(v45, v46);
    v47 = v82;
    v82(&TupleTypeMetadata2, v124, v104);

    v48 = v67;
    swift_getAtKeyPath();

    v47(&TupleTypeMetadata2, v124, v104);

    TupleTypeMetadata2 = v66;
    v110 = v100;
    v49 = AssociatedTypeWitness;
    sub_1AE23DD5C();

    (*(v69 + 8))(v48, v49);
    result = (*(*(v65 + 8) + 24))(v64);
    v50 = 0;
    v51 = result + 64;
    v52 = result;
    v53 = 1 << *(result + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(result + 64);
    v56 = (v53 + 63) >> 6;
    while (v55)
    {
      v57 = v50;
LABEL_12:
      v59 = __clz(__rbit64(v55)) | (v57 << 6);
      v60 = (*(v52 + 48) + 16 * v59);
      v61 = *v60;
      v62 = v60[1];
      v124[17] = *(*(v52 + 56) + 8 * v59);
      TupleTypeMetadata2 = v61;
      v110 = v62;
      sub_1AE048F64();

      sub_1AE23DD5C();
      v55 &= v55 - 1;

      v50 = v57;
    }

    v58 = v90;
    while (1)
    {
      v57 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v57 >= v56)
      {
        (*(v89 + 8))(v124, v104);

        return (*(v58 + 8))(v96, v97);
      }

      v55 = *(v51 + 8 * v57);
      ++v50;
      if (v55)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_6.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v105 = a4;
  v106 = a1;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = *(AssociatedTypeWitness - 8);
  v9 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v70 - v12;
  v94 = swift_getAssociatedTypeWitness();
  v89 = *(v94 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v87 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v70 - v16;
  v93 = swift_getAssociatedTypeWitness();
  v85 = *(v93 - 8);
  v17 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v83 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v70 - v20;
  v78 = swift_getAssociatedTypeWitness();
  v82 = *(v78 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v70 - v24;
  v75 = swift_getAssociatedTypeWitness();
  v79 = *(v75 - 8);
  v25 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v77 = &v70 - v28;
  v71 = swift_getAssociatedTypeWitness();
  v74 = *(v71 - 8);
  v29 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v73 = &v70 - v33;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v32);
  v103 = v8;
  (*(v8 + 112))(v116, a2, v8);
  v34 = v116[1];
  v97 = v116[5];
  v98 = v116[4];
  v113 = v116[2];
  v114 = v116[10];
  v109 = v116[11];
  v110 = v116[7];
  v96 = v116[13];
  v101 = v116[14];
  v36 = v116[16];
  v35 = v116[17];
  v111 = v116[8];
  sub_1AE23DB8C();
  v115[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v115[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v115[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v115[3] = swift_getTupleTypeMetadata2();
  v104 = a2;
  sub_1AE23DB8C();
  v115[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v115[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v86 = *(TupleTypeMetadata - 8);
  v107 = *(v86 + 16);
  v108 = v86 + 16;
  v107(v115, v116, TupleTypeMetadata);
  v100 = v34;

  v99 = v35;

  v102 = v36;

  v107(v115, v116, TupleTypeMetadata);

  v37 = v72;
  swift_getAtKeyPath();

  v38 = v71;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v106, v38);
  (*(v74 + 8))(v37, v38);
  swift_setAtWritableKeyPath();

  v40 = TupleTypeMetadata;
  v41 = v107;
  v107(v115, v116, TupleTypeMetadata);

  v41(v115, v116, v40);

  v42 = v76;
  swift_getAtKeyPath();

  v43 = v75;
  v44 = swift_getAssociatedConformanceWitness();
  (*(*(v44 + 16) + 24))(v106, v43);
  (*(v79 + 8))(v42, v43);
  swift_setAtWritableKeyPath();

  v45 = TupleTypeMetadata;
  v46 = v107;
  v107(v115, v116, TupleTypeMetadata);

  v46(v115, v116, v45);

  v47 = v80;
  swift_getAtKeyPath();

  v48 = v78;
  v49 = swift_getAssociatedConformanceWitness();
  (*(*(v49 + 16) + 24))(v106, v48);
  (*(v82 + 8))(v47, v48);
  swift_setAtWritableKeyPath();

  v50 = v107;
  v107(v115, v116, TupleTypeMetadata);

  v50(v115, v116, TupleTypeMetadata);

  v51 = v83;
  swift_getAtKeyPath();

  v52 = v93;
  v53 = swift_getAssociatedConformanceWitness();
  (*(*(v53 + 16) + 24))(v106, v52);
  (*(v85 + 8))(v51, v52);
  swift_setAtWritableKeyPath();

  v54 = TupleTypeMetadata;
  v55 = v107;
  v107(v115, v116, TupleTypeMetadata);

  v55(v115, v116, v54);

  v56 = v87;
  swift_getAtKeyPath();

  v57 = v94;
  v58 = swift_getAssociatedConformanceWitness();
  (*(*(v58 + 16) + 24))(v106, v57);
  (*(v89 + 8))(v56, v57);
  swift_setAtWritableKeyPath();

  v59 = TupleTypeMetadata;
  v107(v115, v116, TupleTypeMetadata);

  v107(v115, v116, v59);

  v60 = v90;
  swift_getAtKeyPath();

  v61 = v103;
  v62 = v104;
  v63 = AssociatedTypeWitness;
  v64 = swift_getAssociatedConformanceWitness();
  v65 = v106;
  (*(*(v64 + 16) + 24))(v106, v63);
  (*(v92 + 8))(v60, v63);
  swift_setAtWritableKeyPath();

  v66 = *(v61 + 8);
  v67 = (*(v66 + 24))(v62, v66);
  v68 = sub_1AE156B60(v67, v65);

  (*(v66 + 32))(v68, v62, v66);
  return (*(v86 + 8))(v116, TupleTypeMetadata);
}

uint64_t CRStruct_6.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v10 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v94 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v74 - v13;
  v96 = swift_getAssociatedTypeWitness();
  v92 = *(v96 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v74 - v17;
  v99 = swift_getAssociatedTypeWitness();
  v89 = *(v99 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v87 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v74 - v21;
  v97 = swift_getAssociatedTypeWitness();
  v85 = *(v97 - 8);
  v22 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v84 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v74 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v82 = *(v26 - 8);
  v27 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v80 = &v74 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v78 = *(v31 - 8);
  v32 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v77 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v34);
  v76 = &v74 - v36;
  if (a1)
  {
    v37 = a1;
  }

  else
  {
    v37 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v121[0] = v37;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v35);
  v113 = a4;
  v111 = v5;
  v38 = *(v9 + 112);

  v38(v120, a2, v9);
  v115 = v120[5];
  v116 = v120[4];
  v108 = v120[7];
  v109 = v120[2];
  v114 = v9;
  v117 = v120[8];
  v100 = v120[10];
  v104 = v120[13];
  v39 = v120[16];
  v40 = v120[17];
  v41 = v120[1];
  v101 = v120[11];
  v106 = v120[14];
  sub_1AE23DB8C();
  v119[0] = swift_getTupleTypeMetadata2();
  v79 = v26;
  sub_1AE23DB8C();
  v119[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v119[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v119[3] = swift_getTupleTypeMetadata2();
  v112 = a2;
  sub_1AE23DB8C();
  v119[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v119[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v88 = *(TupleTypeMetadata - 8);
  v102 = *(v88 + 16);
  v103 = v88 + 16;
  v75 = v31;
  v102(v119, v120, TupleTypeMetadata);
  v110 = v41;

  v105 = v39;

  v102(v119, v120, TupleTypeMetadata);

  v107 = v40;

  v42 = v77;
  swift_getAtKeyPath();

  v43 = v75;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v121, v43);
  (*(v78 + 8))(v42, v43);
  swift_setAtWritableKeyPath();

  v45 = v102;
  v102(v119, v120, TupleTypeMetadata);

  v45(v119, v120, TupleTypeMetadata);

  v46 = v81;
  swift_getAtKeyPath();

  v47 = v79;
  v48 = swift_getAssociatedConformanceWitness();
  (*(*(v48 + 16) + 24))(v121, v47);
  (*(v82 + 8))(v46, v47);
  swift_setAtWritableKeyPath();

  v49 = TupleTypeMetadata;
  v102(v119, v120, TupleTypeMetadata);

  v50 = v49;
  v51 = v102;
  v102(v119, v120, v50);

  v52 = v84;
  swift_getAtKeyPath();

  v53 = v97;
  v54 = swift_getAssociatedConformanceWitness();
  (*(*(v54 + 16) + 24))(v121, v53);
  (*(v85 + 8))(v52, v53);
  swift_setAtWritableKeyPath();

  v55 = TupleTypeMetadata;
  v51(v119, v120, TupleTypeMetadata);

  v51(v119, v120, v55);

  v56 = v87;
  swift_getAtKeyPath();

  v57 = v99;
  v58 = swift_getAssociatedConformanceWitness();
  (*(*(v58 + 16) + 24))(v121, v57);
  (*(v89 + 8))(v56, v57);
  swift_setAtWritableKeyPath();

  v59 = v102;
  v102(v119, v120, TupleTypeMetadata);

  v59(v119, v120, TupleTypeMetadata);

  v60 = v91;
  swift_getAtKeyPath();

  v61 = v96;
  v62 = swift_getAssociatedConformanceWitness();
  (*(*(v62 + 16) + 24))(v121, v61);
  (*(v92 + 8))(v60, v61);
  swift_setAtWritableKeyPath();

  v63 = TupleTypeMetadata;
  v64 = v102;
  v102(v119, v120, TupleTypeMetadata);

  v64(v119, v120, v63);

  v65 = v94;
  swift_getAtKeyPath();

  v66 = v114;
  v67 = v112;
  v68 = AssociatedTypeWitness;
  v69 = swift_getAssociatedConformanceWitness();
  (*(*(v69 + 16) + 24))(v121, v68);
  (*(v95 + 8))(v65, v68);
  swift_setAtWritableKeyPath();

  v70 = *(v66 + 8);
  v71 = (*(v70 + 24))(v67, v70);
  v72 = sub_1AE156B60(v71, v121);

  (*(v70 + 32))(v72, v67, v70);
  return (*(v88 + 8))(v120, v63);
}

uint64_t CRStruct_6.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v104 = a1;
  v91 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v89 = &v74 - v7;
  v93 = swift_getAssociatedTypeWitness();
  v88 = *(v93 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v74 - v9;
  v92 = swift_getAssociatedTypeWitness();
  v85 = *(v92 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v84 = &v74 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v74 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v81 = *(v15 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v74 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v77 = *(v18 - 8);
  v19 = *(v77 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v76 = &v74 - v21;
  v22 = *(v5 + 112);
  v23 = a2;
  v103 = v5;
  v22((v114 + 6), a2, v5, v20);
  v105 = *(&v114[1] + 6);
  v106 = *(&v114[13] + 6);
  v111 = *(&v114[11] + 6);
  v112 = *(&v114[2] + 6);
  v101 = *(&v114[10] + 6);
  v102 = *(&v114[4] + 6);
  v108 = *(&v114[7] + 6);
  v109 = *(&v114[5] + 6);
  v107 = *(&v114[8] + 6);
  v100 = *(&v114[14] + 6);
  v24 = *(&v114[16] + 6);
  v25 = *(&v114[17] + 6);
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(v114 + 3) = word_1ED96F220;
  BYTE5(v114[0]) = byte_1ED96F222;
  v75 = v18;
  sub_1AE23DB8C();
  v113[0] = swift_getTupleTypeMetadata2();
  v78 = v15;
  sub_1AE23DB8C();
  v113[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113[3] = swift_getTupleTypeMetadata2();
  v98 = v23;
  sub_1AE23DB8C();
  v113[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v86 = *(TupleTypeMetadata - 8);
  v26 = *(v86 + 16);
  v97 = v86 + 16;
  v79 = v12;
  v26(v113, v114 + 6, TupleTypeMetadata);
  v96 = v26;

  v95 = v25;

  v99 = v24;

  v26(v113, v114 + 6, TupleTypeMetadata);

  v27 = v76;
  swift_getAtKeyPath();

  v28 = swift_modifyAtWritableKeyPath();
  v29 = v75;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(v114, v27, v29);
  (*(v77 + 8))(v27, v29);
  v28(v113, 0);

  LOWORD(v113[0]) = v114[0];
  BYTE2(v113[0]) = BYTE2(v114[0]);
  v31 = v113;
  MergeResult.merge(_:)(v31);
  v32 = TupleTypeMetadata;
  v96(v113, v114 + 6, TupleTypeMetadata);

  v96(v113, v114 + 6, v32);

  v33 = v80;
  swift_getAtKeyPath();

  v34 = swift_modifyAtWritableKeyPath();
  v35 = v78;
  v36 = swift_getAssociatedConformanceWitness();
  (*(*(v36 + 8) + 8))(v114, v33, v35);
  (*(v81 + 8))(v33, v35);
  v34(v113, 0);

  LOWORD(v113[0]) = v114[0];
  BYTE2(v113[0]) = BYTE2(v114[0]);
  v37 = v113;
  MergeResult.merge(_:)(v37);
  v38 = TupleTypeMetadata;
  v39 = v96;
  v96(v113, v114 + 6, TupleTypeMetadata);

  v39(v113, v114 + 6, v38);

  v40 = v82;
  swift_getAtKeyPath();

  v41 = swift_modifyAtWritableKeyPath();
  v42 = v79;
  v43 = swift_getAssociatedConformanceWitness();
  (*(*(v43 + 8) + 8))(v114, v40, v42);
  (*(v83 + 8))(v40, v42);
  v41(v113, 0);

  LOWORD(v113[0]) = v114[0];
  BYTE2(v113[0]) = BYTE2(v114[0]);
  v44 = v113;
  MergeResult.merge(_:)(v44);
  v39(v113, v114 + 6, TupleTypeMetadata);

  v96(v113, v114 + 6, TupleTypeMetadata);

  v45 = v84;
  swift_getAtKeyPath();

  v46 = swift_modifyAtWritableKeyPath();
  v47 = v92;
  v48 = swift_getAssociatedConformanceWitness();
  (*(*(v48 + 8) + 8))(v114, v45, v47);
  (*(v85 + 8))(v45, v47);
  v46(v113, 0);

  LOWORD(v113[0]) = v114[0];
  BYTE2(v113[0]) = BYTE2(v114[0]);
  v49 = v113;
  MergeResult.merge(_:)(v49);
  v50 = TupleTypeMetadata;
  v51 = v96;
  v96(v113, v114 + 6, TupleTypeMetadata);

  v51(v113, v114 + 6, v50);
  v52 = v51;

  v53 = v87;
  swift_getAtKeyPath();

  v54 = swift_modifyAtWritableKeyPath();
  v55 = v93;
  v56 = swift_getAssociatedConformanceWitness();
  (*(*(v56 + 8) + 8))(v114, v53, v55);
  (*(v88 + 8))(v53, v55);
  v54(v113, 0);

  LOWORD(v113[0]) = v114[0];
  BYTE2(v113[0]) = BYTE2(v114[0]);
  v57 = v113;
  MergeResult.merge(_:)(v57);
  v58 = TupleTypeMetadata;
  v52(v113, v114 + 6, TupleTypeMetadata);

  v96(v113, v114 + 6, v58);

  v59 = v89;
  swift_getAtKeyPath();

  v60 = swift_modifyAtWritableKeyPath();
  v61 = v103;
  v62 = v98;
  v63 = AssociatedTypeWitness;
  v64 = swift_getAssociatedConformanceWitness();
  (*(*(v64 + 8) + 8))(v114, v59, v63);
  (*(v90 + 8))(v59, v63);
  v60(v113, 0);

  LOWORD(v113[0]) = v114[0];
  BYTE2(v113[0]) = BYTE2(v114[0]);
  v65 = v113;
  MergeResult.merge(_:)(v65);
  v66 = *(v61 + 8);
  v67 = (*(v66 + 24))(v62, v66);
  v68 = (*(v66 + 40))(v113, v62, v66);
  sub_1AE21F75C(v67, v114);

  v68(v113, 0);
  LOWORD(v113[0]) = v114[0];
  BYTE2(v113[0]) = BYTE2(v114[0]);
  v69 = v113;
  MergeResult.merge(_:)(v69);
  (*(v66 + 64))(v62, v66);
  result = (*(v86 + 8))(v114 + 6, TupleTypeMetadata);
  v71 = BYTE4(v114[0]);
  v72 = BYTE5(v114[0]);
  v73 = v91;
  *v91 = BYTE3(v114[0]);
  v73[1] = v71;
  v73[2] = v72;
  return result;
}

uint64_t CRStruct_6.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v97 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v83 - v8;
  v104 = swift_getAssociatedTypeWitness();
  v96 = *(v104 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v83 - v12;
  v102 = swift_getAssociatedTypeWitness();
  v93 = *(v102 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v92 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v83 - v16;
  v89 = swift_getAssociatedTypeWitness();
  v91 = *(v89 - 8);
  v17 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v83 - v20;
  v86 = swift_getAssociatedTypeWitness();
  v88 = *(v86 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v83 - v24;
  v83 = swift_getAssociatedTypeWitness();
  v85 = *(v83 - 8);
  v25 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v99 = &v83 - v29;
  v113 = v4;
  (*(v4 + 112))(v128, a2, v4, v28);
  v118 = v128[1];
  v119 = v128[4];
  v124 = v128[7];
  v110 = v128[8];
  v111 = v128[2];
  v117 = v128[10];
  v108 = v128[11];
  v120 = v128[5];
  v121 = v128[14];
  v109 = v128[13];
  v30 = v128[16];
  v31 = v128[17];
  v127 = MEMORY[0x1E69E7CD0];
  sub_1AE23DB8C();
  v126[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v126[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v126[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v126[3] = swift_getTupleTypeMetadata2();
  v114 = a2;
  sub_1AE23DB8C();
  v126[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v126[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v94 = *(TupleTypeMetadata - 8);
  v125 = *(v94 + 16);
  v122 = TupleTypeMetadata;
  v123 = v94 + 16;
  v125(v126, v128, TupleTypeMetadata);

  v112 = v31;

  v116 = v30;

  swift_getAtKeyPath();

  v125(v126, v128, v122);

  v33 = v84;
  swift_getAtKeyPath();

  v34 = v83;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = v99;
  v37 = (*(AssociatedConformanceWitness + 64))(v33, v34, AssociatedConformanceWitness);
  v38 = *(v85 + 8);
  v38(v33, v34);
  v38(v36, v34);
  sub_1AE00F014(v37);
  v39 = v122;
  v125(v126, v128, v122);

  swift_getAtKeyPath();

  v125(v126, v128, v39);

  v40 = v87;
  swift_getAtKeyPath();

  v41 = v86;
  v42 = swift_getAssociatedConformanceWitness();
  v43 = v100;
  v44 = (*(v42 + 64))(v40, v41, v42);
  v45 = *(v88 + 8);
  v45(v40, v41);
  v45(v43, v41);
  sub_1AE00F014(v44);
  v125(v126, v128, v122);

  swift_getAtKeyPath();

  v125(v126, v128, v122);

  v46 = v90;
  swift_getAtKeyPath();

  v47 = v89;
  v48 = swift_getAssociatedConformanceWitness();
  v49 = v46;
  v50 = v101;
  v51 = (*(v48 + 64))(v46, v47, v48);
  v52 = *(v91 + 8);
  v52(v49, v47);
  v52(v50, v47);
  sub_1AE00F014(v51);
  v53 = v122;
  v125(v126, v128, v122);

  swift_getAtKeyPath();

  v125(v126, v128, v53);

  v54 = v92;
  swift_getAtKeyPath();

  v55 = v102;
  v56 = swift_getAssociatedConformanceWitness();
  v57 = v103;
  v58 = (*(v56 + 64))(v54, v55, v56);
  v59 = *(v93 + 8);
  v59(v54, v55);
  v59(v57, v55);
  sub_1AE00F014(v58);
  v60 = v122;
  v61 = v125;
  v125(v126, v128, v122);

  swift_getAtKeyPath();

  v61(v126, v128, v60);

  v62 = v95;
  swift_getAtKeyPath();

  v63 = v104;
  v64 = swift_getAssociatedConformanceWitness();
  v65 = v105;
  v66 = (*(v64 + 64))(v62, v63, v64);
  v67 = *(v96 + 8);
  v67(v62, v63);
  v67(v65, v63);
  sub_1AE00F014(v66);
  v68 = v122;
  v125(v126, v128, v122);

  swift_getAtKeyPath();

  v125(v126, v128, v68);

  v69 = v97;
  swift_getAtKeyPath();

  v71 = v113;
  v70 = v114;
  v72 = AssociatedTypeWitness;
  v73 = swift_getAssociatedConformanceWitness();
  v74 = v107;
  v75 = (*(v73 + 64))(v69, v72, v73);
  v76 = *(v98 + 8);
  v76(v69, v72);
  v76(v74, v72);
  sub_1AE00F014(v75);
  v77 = *(v71 + 8);
  v78 = *(v77 + 24);
  v79 = v78(v70, v77);
  v80 = v78(v70, v77);
  v81 = sub_1AE2200E4(v80, v79);

  sub_1AE00F014(v81);
  (*(v94 + 8))(v128, v122);
  return v127;
}

uint64_t CRStruct_6.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v195 = a2;
  v194 = a1;
  v169 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v208 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v209 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v210 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v211 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v212 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_getAssociatedTypeWitness();
  v213 = sub_1AE23D7CC();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v13 = *(*(TupleTypeMetadata - 1) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v135 = &v129 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v163 = *(AssociatedTypeWitness - 8);
  v15 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v161 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v129 - v18;
  v160 = *(swift_getAssociatedConformanceWitness() + 16);
  v130 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v166 = *(v19 - 8);
  v167 = v19;
  v20 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v129 - v21;
  v181 = swift_getAssociatedTypeWitness();
  v158 = *(v181 - 8);
  v22 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v157 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v184 = &v129 - v25;
  v156 = *(swift_getAssociatedConformanceWitness() + 16);
  v131 = swift_getAssociatedTypeWitness();
  v174 = sub_1AE23D7CC();
  v165 = *(v174 - 8);
  v26 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v188 = &v129 - v27;
  v180 = swift_getAssociatedTypeWitness();
  v153 = *(v180 - 8);
  v28 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v150 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v182 = &v129 - v31;
  v149 = *(swift_getAssociatedConformanceWitness() + 16);
  v132 = swift_getAssociatedTypeWitness();
  v173 = sub_1AE23D7CC();
  v164 = *(v173 - 8);
  v32 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v189 = &v129 - v33;
  v176 = swift_getAssociatedTypeWitness();
  v147 = *(v176 - 8);
  v34 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v146 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v178 = &v129 - v37;
  v145 = *(swift_getAssociatedConformanceWitness() + 16);
  v133 = swift_getAssociatedTypeWitness();
  v162 = sub_1AE23D7CC();
  v172 = *(v162 - 8);
  v38 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v186 = &v129 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v144 = *(v40 - 8);
  v41 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v143 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v177 = &v129 - v44;
  v45 = *(swift_getAssociatedConformanceWitness() + 16);
  v141 = v40;
  v142 = v45;
  v134 = swift_getAssociatedTypeWitness();
  v46 = sub_1AE23D7CC();
  v170 = *(v46 - 8);
  v171 = v46;
  v47 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v185 = &v129 - v48;
  v49 = swift_getAssociatedTypeWitness();
  v140 = *(v49 - 8);
  v50 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v139 = &v129 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v175 = &v129 - v53;
  v54 = *(swift_getAssociatedConformanceWitness() + 16);
  v137 = v49;
  v138 = v54;
  v152 = swift_getAssociatedTypeWitness();
  v55 = sub_1AE23D7CC();
  v154 = *(v55 - 8);
  v155 = v55;
  v56 = *(v154 + 64);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v179 = &v129 - v58;
  v59 = *(v6 + 112);
  v168 = v6;
  v59(&v208, a3, v6, v57);
  v60 = v209;
  v200 = v210;
  v199 = v212;
  v198 = v213;
  v192 = v214;
  v193 = v215;
  v205 = v217;
  v197 = v218;
  v202 = v219;
  v61 = v220;
  v204 = v216;
  v196 = v221;
  sub_1AE23DB8C();
  v207[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v207[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v207[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v207[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v207[4] = swift_getTupleTypeMetadata2();
  v151 = a3;
  sub_1AE23DB8C();
  v207[5] = swift_getTupleTypeMetadata2();
  v206 = swift_getTupleTypeMetadata();
  v148 = *(v206 - 8);
  v62 = *(v148 + 16);
  v203 = v148 + 16;
  v191 = v62;
  v62(v207, &v208, v206);
  v190 = v60;

  v201 = v61;

  swift_getAtKeyPath();

  v191(v207, &v208, v206);

  v63 = v139;
  swift_getAtKeyPath();

  v64 = v137;
  v65 = v175;
  (*(v138 + 40))(v63, v195, v137);
  v66 = *(v140 + 8);
  v66(v63, v64);
  v66(v65, v64);
  v67 = v206;
  v68 = v191;
  v191(v207, &v208, v206);

  swift_getAtKeyPath();

  v68(v207, &v208, v67);

  v69 = v143;
  swift_getAtKeyPath();

  v70 = v141;
  v71 = v177;
  (*(v142 + 40))(v69, v195, v141);
  v72 = *(v144 + 8);
  v72(v69, v70);
  v72(v71, v70);
  v73 = v191;
  v191(v207, &v208, v206);

  swift_getAtKeyPath();

  v73(v207, &v208, v206);

  v74 = v146;
  swift_getAtKeyPath();

  v75 = v74;
  v76 = v178;
  v77 = v176;
  (*(v145 + 40))(v74, v195, v176);
  v78 = *(v147 + 8);
  v78(v75, v77);
  v78(v76, v77);
  v79 = v191;
  v191(v207, &v208, v206);

  swift_getAtKeyPath();

  v79(v207, &v208, v206);
  v80 = v79;

  v81 = v150;
  swift_getAtKeyPath();

  v82 = v182;
  v83 = v180;
  (*(v149 + 40))(v81, v195, v180);
  v84 = *(v153 + 8);
  v84(v81, v83);
  v84(v82, v83);
  v85 = v206;
  v80(v207, &v208, v206);

  swift_getAtKeyPath();

  v86 = v191;
  v191(v207, &v208, v85);

  v87 = v157;
  swift_getAtKeyPath();

  v88 = v87;
  v89 = v184;
  v90 = v181;
  (*(v156 + 40))(v87, v195, v181);
  v91 = *(v158 + 8);
  v91(v88, v90);
  v91(v89, v90);
  v92 = v206;
  v86(v207, &v208, v206);

  v93 = v159;
  swift_getAtKeyPath();

  v191(v207, &v208, v92);
  v94 = v185;

  v95 = v161;
  swift_getAtKeyPath();
  v96 = v94;

  v97 = v93;
  v98 = AssociatedTypeWitness;
  (*(v160 + 40))(v95, v195, AssociatedTypeWitness);
  (*(v148 + 8))(&v208, v206);
  v99 = *(v163 + 8);
  v99(v95, v98);
  v100 = v97;
  v101 = v186;
  v99(v100, v98);
  v102 = v179;
  if ((*(*(v152 - 8) + 48))() == 1 && (*(*(v134 - 8) + 48))(v96, 1) == 1 && (*(*(v133 - 8) + 48))(v101, 1) == 1 && (*(*(v132 - 8) + 48))(v189, 1) == 1 && (*(*(v131 - 8) + 48))(v188, 1) == 1 && (*(*(v130 - 8) + 48))(v187, 1) == 1)
  {
    (*(v154 + 8))(v102, v155);
    v103 = *(*(*(v168 + 8) + 8) + 16);
    v104 = swift_getAssociatedTypeWitness();
    (*(*(v104 - 8) + 56))(v169, 1, 1, v104);
    v106 = v166;
    v105 = v167;
    v107 = v96;
    v108 = v101;
    v110 = v164;
    v109 = v165;
    v111 = v162;
    v112 = v171;
    v113 = v172;
    v114 = v170;
  }

  else
  {
    v115 = v135;
    v116 = TupleTypeMetadata[12];
    v117 = TupleTypeMetadata[16];
    v118 = TupleTypeMetadata[20];
    v119 = TupleTypeMetadata[24];
    v206 = TupleTypeMetadata[28];
    (*(v154 + 32))(v135, v102, v155);
    (*(v170 + 16))(&v115[v116], v96, v171);
    v120 = v162;
    (*(v172 + 16))(&v115[v117], v101, v162);
    v110 = v164;
    (*(v164 + 16))(&v115[v118], v189, v173);
    v109 = v165;
    (*(v165 + 16))(&v115[v119], v188, v174);
    v106 = v166;
    v121 = v167;
    (*(v166 + 16))(&v115[v206], v187, v167);
    v122 = *(*(*(v168 + 8) + 8) + 16);
    v123 = swift_getAssociatedTypeWitness();
    v124 = v169;
    v111 = v120;
    v107 = v185;
    v108 = v186;
    swift_dynamicCast();
    v125 = *(*(v123 - 8) + 56);
    v126 = v124;
    v127 = v123;
    v114 = v170;
    v112 = v171;
    v125(v126, 0, 1, v127);
    v105 = v121;
    v113 = v172;
  }

  (*(v106 + 8))(v187, v105);
  (*(v109 + 8))(v188, v174);
  (*(v110 + 8))(v189, v173);
  (*(v113 + 8))(v108, v111);
  return (*(v114 + 8))(v107, v112);
}

uint64_t CRStruct_6.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v80 - v8;
  v105 = swift_getAssociatedTypeWitness();
  v85 = *(v105 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v80 - v12;
  v106 = swift_getAssociatedTypeWitness();
  v88 = *(v106 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v87 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v80 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v90 = *(v17 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v80 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v94 = *(v22 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v80 - v26;
  v99 = swift_getAssociatedTypeWitness();
  v101 = *(v99 - 8);
  v27 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v112 = &v80 - v31;
  v111 = v4;
  (*(v4 + 112))(v125, a2, v4, v30);
  v32 = v125[1];
  v116 = v125[2];
  v109 = v125[5];
  v118 = v125[7];
  v119 = v125[4];
  v121 = v125[8];
  v122 = v125[10];
  v123 = v125[11];
  v117 = v125[13];
  v113 = v125[16];
  v114 = v125[14];
  v115 = v125[17];
  sub_1AE23DB8C();
  v124[0] = swift_getTupleTypeMetadata2();
  v95 = v22;
  sub_1AE23DB8C();
  v124[1] = swift_getTupleTypeMetadata2();
  v91 = v17;
  sub_1AE23DB8C();
  v124[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v124[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v124[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v124[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v103 = *(TupleTypeMetadata - 8);
  v35 = v103 + 16;
  v34 = *(v103 + 16);
  v34(v124, v125, TupleTypeMetadata);

  swift_getAtKeyPath();

  v120 = TupleTypeMetadata;
  v108 = v35;
  v97 = v34;
  v34(v124, v125, TupleTypeMetadata);
  v107 = v32;

  v36 = v100;
  swift_getAtKeyPath();

  v98 = a2;
  v37 = v99;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v112;
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 88))(v36, v37, AssociatedConformanceWitness);
  v40 = *(v101 + 8);
  v40(v36, v37);
  v40(v39, v37);
  if (a2)
  {
    goto LABEL_6;
  }

  v41 = v97;
  v97(v124, v125, v120);

  swift_getAtKeyPath();

  v41(v124, v125, v120);

  v42 = v93;
  swift_getAtKeyPath();

  v43 = v95;
  v44 = swift_getAssociatedConformanceWitness();
  v45 = v102;
  LOBYTE(v41) = (*(v44 + 88))(v42, v43, v44);
  v46 = *(v94 + 8);
  v46(v42, v43);
  v46(v45, v43);
  if (v41)
  {
    goto LABEL_6;
  }

  v47 = v97;
  v97(v124, v125, v120);

  swift_getAtKeyPath();

  v47(v124, v125, v120);

  v48 = v89;
  swift_getAtKeyPath();

  v49 = v91;
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v96;
  LOBYTE(v47) = (*(v50 + 88))(v48, v49, v50);
  v52 = *(v90 + 8);
  v52(v48, v49);
  v52(v51, v49);
  if (v47)
  {
    goto LABEL_6;
  }

  v53 = v97;
  v97(v124, v125, v120);

  swift_getAtKeyPath();

  v53(v124, v125, v120);

  v54 = v87;
  swift_getAtKeyPath();

  v55 = v106;
  v56 = swift_getAssociatedConformanceWitness();
  v57 = v92;
  LOBYTE(v53) = (*(v56 + 88))(v54, v55, v56);
  v58 = *(v88 + 8);
  v58(v54, v55);
  v58(v57, v55);
  if (v53)
  {
    goto LABEL_6;
  }

  v59 = v97;
  v97(v124, v125, v120);

  v60 = v83;
  swift_getAtKeyPath();

  v59(v124, v125, v120);

  v61 = v84;
  swift_getAtKeyPath();

  v62 = v105;
  v63 = swift_getAssociatedConformanceWitness();
  LOBYTE(v59) = (*(v63 + 88))(v61, v62, v63);
  v64 = *(v85 + 8);
  v64(v61, v62);
  v64(v60, v62);
  if (v59)
  {
LABEL_6:
    v65 = v120;
  }

  else
  {
    v68 = v120;
    v69 = v97;
    v97(v124, v125, v120);

    swift_getAtKeyPath();

    v65 = v68;
    v69(v124, v125, v68);

    v70 = v81;
    swift_getAtKeyPath();

    v71 = AssociatedTypeWitness;
    v72 = swift_getAssociatedConformanceWitness();
    v73 = v86;
    LOBYTE(v68) = (*(v72 + 88))(v70, v71, v72);
    v74 = *(v82 + 8);
    v74(v70, v71);
    v74(v73, v71);
    if ((v68 & 1) == 0)
    {
      v75 = *(v111 + 8);
      v76 = *(v75 + 24);
      v77 = v98;
      v78 = v76(v98, v75);
      v79 = v76(v77, v75);
      v66 = sub_1AE21FE14(v79, v78);

      goto LABEL_8;
    }
  }

  v66 = 1;
LABEL_8:
  (*(v103 + 8))(v125, v65);
  return v66 & 1;
}

uint64_t CRStruct_6.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v174 = a1;
  v148 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v144 = *(AssociatedTypeWitness - 8);
  v6 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v143 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v113 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113 = swift_getAssociatedTypeWitness();
  v164 = sub_1AE23D7CC();
  v147 = *(v164 - 8);
  v10 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v166 = &v113 - v11;
  v156 = swift_getAssociatedTypeWitness();
  v138 = *(v156 - 8);
  v12 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v137 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v113 - v15;
  v136 = swift_getAssociatedConformanceWitness();
  v114 = swift_getAssociatedTypeWitness();
  v161 = sub_1AE23D7CC();
  v146 = *(v161 - 8);
  v16 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v113 - v17;
  v155 = swift_getAssociatedTypeWitness();
  v132 = *(v155 - 8);
  v18 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v131 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v113 - v21;
  v130 = swift_getAssociatedConformanceWitness();
  v115 = swift_getAssociatedTypeWitness();
  v160 = sub_1AE23D7CC();
  v145 = *(v160 - 8);
  v22 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v167 = &v113 - v23;
  v154 = swift_getAssociatedTypeWitness();
  v128 = *(v154 - 8);
  v24 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v127 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v153 = &v113 - v27;
  v126 = swift_getAssociatedConformanceWitness();
  v116 = swift_getAssociatedTypeWitness();
  v150 = sub_1AE23D7CC();
  v142 = *(v150 - 8);
  v28 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v168 = &v113 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v125 = *(v30 - 8);
  v31 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v124 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v152 = &v113 - v34;
  v35 = swift_getAssociatedConformanceWitness();
  v122 = v30;
  v123 = v35;
  v117 = swift_getAssociatedTypeWitness();
  v149 = sub_1AE23D7CC();
  v139 = *(v149 - 8);
  v36 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v163 = &v113 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v121 = *(v38 - 8);
  v39 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v120 = &v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v151 = &v113 - v42;
  v43 = swift_getAssociatedConformanceWitness();
  v118 = v38;
  v119 = v43;
  v133 = swift_getAssociatedTypeWitness();
  v44 = sub_1AE23D7CC();
  v134 = *(v44 - 8);
  v135 = v44;
  v45 = *(v134 + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v165 = &v113 - v47;
  (*(v5 + 112))(v191, a2, v5, v46);
  v48 = v191[1];
  v180 = v191[2];
  v183 = v191[4];
  v179 = v191[5];
  v184 = v191[10];
  v172 = v191[11];
  v175 = v191[13];
  v176 = v191[8];
  v49 = v191[14];
  v50 = v191[16];
  v51 = v191[17];
  v182 = v191[7];
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v187 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v188 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v189 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v190 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v129 = *(TupleTypeMetadata - 8);
  v52 = *(v129 + 16);
  v178 = v129 + 16;
  v181 = v52;
  v52(&TupleTypeMetadata2, v191, TupleTypeMetadata);
  v169 = v48;

  v173 = v51;

  v170 = v50;

  v53 = v49;

  swift_getAtKeyPath();

  v181(&TupleTypeMetadata2, v191, TupleTypeMetadata);

  v54 = v120;
  swift_getAtKeyPath();

  v55 = v118;
  v56 = v151;
  (*(v119 + 72))(v54, v118);
  v57 = *(v121 + 8);
  v57(v54, v55);
  v57(v56, v55);
  v58 = TupleTypeMetadata;
  v59 = v181;
  v181(&TupleTypeMetadata2, v191, TupleTypeMetadata);

  v171 = v53;

  swift_getAtKeyPath();

  v59(&TupleTypeMetadata2, v191, v58);

  v60 = v124;
  swift_getAtKeyPath();

  v61 = v122;
  v62 = v60;
  v63 = v152;
  (*(v123 + 72))(v60, v122);
  v64 = *(v125 + 8);
  v64(v62, v61);
  v64(v63, v61);
  v65 = TupleTypeMetadata;
  v181(&TupleTypeMetadata2, v191, TupleTypeMetadata);

  swift_getAtKeyPath();

  v181(&TupleTypeMetadata2, v191, v65);

  v66 = v127;
  swift_getAtKeyPath();

  v68 = v153;
  v67 = v154;
  (*(v126 + 72))(v66, v154);
  v69 = *(v128 + 8);
  v69(v66, v67);
  v69(v68, v67);
  v70 = v181;
  v181(&TupleTypeMetadata2, v191, TupleTypeMetadata);

  swift_getAtKeyPath();

  v70(&TupleTypeMetadata2, v191, TupleTypeMetadata);

  v71 = v131;
  swift_getAtKeyPath();

  v72 = v157;
  v73 = v155;
  (*(v130 + 72))(v71, v155);
  v74 = *(v132 + 8);
  v74(v71, v73);
  v74(v72, v73);
  v75 = TupleTypeMetadata;
  v181(&TupleTypeMetadata2, v191, TupleTypeMetadata);

  swift_getAtKeyPath();

  v76 = v181;
  v181(&TupleTypeMetadata2, v191, v75);

  v77 = v137;
  swift_getAtKeyPath();

  v78 = v158;
  v79 = v156;
  (*(v136 + 72))(v77, v156);
  v80 = *(v138 + 8);
  v80(v77, v79);
  v80(v78, v79);
  v81 = TupleTypeMetadata;
  v76(&TupleTypeMetadata2, v191, TupleTypeMetadata);

  v82 = v140;
  swift_getAtKeyPath();

  v181(&TupleTypeMetadata2, v191, v81);

  v83 = v163;

  v84 = v143;
  swift_getAtKeyPath();

  v85 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v84, AssociatedTypeWitness);
  (*(v129 + 8))(v191, v81);
  v86 = *(v144 + 8);
  v86(v84, v85);
  v86(v82, v85);
  if ((*(*(v133 - 8) + 48))(v165, 1) == 1 && (*(*(v117 - 8) + 48))(v83, 1) == 1 && (*(*(v116 - 8) + 48))(v168, 1) == 1 && (*(*(v115 - 8) + 48))(v167, 1) == 1 && (*(*(v114 - 8) + 48))(v162, 1) == 1 && (*(*(v113 - 8) + 48))(v166, 1) == 1)
  {
    v87 = v135;
    (*(v134 + 8))(v165, v135);
    TupleTypeMetadata2 = v87;
    v89 = v149;
    v88 = v150;
    v186 = v149;
    v187 = v150;
    v188 = v160;
    v189 = v161;
    v190 = v164;
    v90 = swift_getTupleTypeMetadata();
    (*(*(v90 - 8) + 56))(v148, 1, 1, v90);
    v92 = v146;
    v91 = v147;
    v93 = v162;
    v94 = v145;
    v95 = v83;
    v96 = v142;
    v97 = v139;
  }

  else
  {
    v98 = v83;
    v99 = v135;
    TupleTypeMetadata2 = v135;
    v100 = v149;
    v186 = v149;
    v187 = v150;
    v102 = v160;
    v101 = v161;
    v188 = v160;
    v189 = v161;
    v190 = v164;
    v103 = swift_getTupleTypeMetadata();
    v104 = v103[12];
    v105 = v103[16];
    v182 = v103[20];
    v183 = v103[24];
    v184 = v103[28];
    v106 = v148;
    (*(v134 + 32))(v148, v165, v99);
    v97 = v139;
    (*(v139 + 16))(v106 + v104, v98, v100);
    v96 = v142;
    v107 = v101;
    v108 = v150;
    (*(v142 + 16))(v106 + v105, v168, v150);
    v94 = v145;
    (*(v145 + 16))(v106 + v182, v167, v102);
    v92 = v146;
    v93 = v162;
    (*(v146 + 16))(v106 + v183, v162, v107);
    v91 = v147;
    (*(v147 + 16))(v106 + v184, v166, v164);
    v109 = *(*(v103 - 1) + 56);
    v110 = v106;
    v89 = v149;
    v111 = v103;
    v88 = v108;
    v95 = v163;
    v109(v110, 0, 1, v111);
  }

  (*(v91 + 8))(v166, v164);
  (*(v92 + 8))(v93, v161);
  (*(v94 + 8))(v167, v160);
  (*(v96 + 8))(v168, v88);
  return (*(v97 + 8))(v95, v89);
}

uint64_t CRStruct_6.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v193 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v135 = swift_getAssociatedTypeWitness();
  v188 = sub_1AE23D7CC();
  v171 = *(v188 - 8);
  v5 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v151 = &v129 - v6;
  v158 = swift_getAssociatedTypeWitness();
  v150 = swift_getAssociatedConformanceWitness();
  v134 = swift_getAssociatedTypeWitness();
  v170 = sub_1AE23D7CC();
  v161 = *(v170 - 8);
  v7 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v149 = &v129 - v8;
  v157 = swift_getAssociatedTypeWitness();
  v147 = swift_getAssociatedConformanceWitness();
  v133 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v165 = *(v9 - 8);
  v166 = v9;
  v10 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v129 - v11;
  v156 = swift_getAssociatedTypeWitness();
  v143 = swift_getAssociatedConformanceWitness();
  v132 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v169 = v12;
  v173 = *(v12 - 8);
  v13 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v129 - v14;
  v154 = swift_getAssociatedTypeWitness();
  v140 = swift_getAssociatedConformanceWitness();
  v131 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v168 = *(v15 - 8);
  v16 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v138 = &v129 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v136 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  v196 = sub_1AE23D7CC();
  v197 = v15;
  v160 = v15;
  v198 = v12;
  v199 = v9;
  v200 = v170;
  v201 = v188;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v172 = sub_1AE23D7CC();
  v164 = *(v172 - 8);
  v20 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v148 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v129 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v129 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v129 - v31;
  v130 = v19;
  v163 = sub_1AE23D7CC();
  v174 = *(v163 - 8);
  v33 = *(v174 + 64);
  v34 = MEMORY[0x1EEE9AC00](v163);
  v153 = &v129 - v35;
  (*(v4 + 112))(&v196, a2, v4, v34);
  v36 = v197;
  v191 = v202;
  v192 = v200;
  v183 = v203;
  v184 = v201;
  v190 = v204;
  v182 = v205;
  v37 = v206;
  v38 = v207;
  v39 = v208;
  v40 = v209;
  v185 = v198;
  v155 = v18;
  sub_1AE23DB8C();
  v195[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v195[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v195[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v195[3] = swift_getTupleTypeMetadata2();
  v41 = v164;
  sub_1AE23DB8C();
  v195[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v195[5] = swift_getTupleTypeMetadata2();
  v42 = swift_getTupleTypeMetadata();
  v144 = *(v42 - 8);
  v43 = *(v144 + 16);
  v189 = v42;
  v178 = v43;
  v179 = v144 + 16;
  (v43)(v195, &v196);
  v186 = v36;

  v187 = v40;

  v180 = v39;

  v167 = v38;
  v44 = v172;

  v181 = v37;

  v45 = v41 + 16;
  v177 = *(v41 + 16);
  v177(v32, v193, v44);
  v46 = *(TupleTypeMetadata - 1);
  v47 = *(v46 + 48);
  v175 = v46 + 48;
  v176 = v47;
  v48 = (v47)(v32, 1);
  v49 = v188;
  v50 = v171;
  v51 = v166;
  v52 = v169;
  if (v48 == 1)
  {
    (*(v41 + 8))(v32, v44);
    (*(*(v130 - 8) + 56))(v153, 1, 1);
    v53 = v160;
  }

  else
  {
    v54 = TupleTypeMetadata[12];
    v55 = TupleTypeMetadata[16];
    v129 = TupleTypeMetadata[20];
    v130 = v55;
    v56 = TupleTypeMetadata[24];
    v57 = TupleTypeMetadata[28];
    (*(v174 + 32))(v153, v32, v163);
    (*(v50 + 8))(&v32[v57], v49);
    (*(v161 + 8))(&v32[v56], v170);
    (*(v165 + 8))(&v32[v129], v51);
    (*(v173 + 8))(&v32[v130], v52);
    v53 = v160;
    (*(v168 + 8))(&v32[v54], v160);
  }

  v58 = swift_modifyAtWritableKeyPath();
  v59 = v153;
  (*(v136 + 80))(v153, v155);
  v61 = v174 + 8;
  v60 = *(v174 + 8);
  v62 = v163;
  v60(v59, v163);
  v58(v195, 0);

  v178(v195, &v196, v189);

  v63 = v137;
  v64 = v172;
  v177(v137, v193, v172);
  v65 = v176(v63, 1, TupleTypeMetadata);
  v162 = v45;
  v174 = v61;
  v155 = v60;
  if (v65 == 1)
  {
    (*(v164 + 8))(v63, v64);
    v66 = v138;
    (*(*(v131 - 8) + 56))(v138, 1, 1);
    v67 = v168;
  }

  else
  {
    v68 = TupleTypeMetadata[12];
    v153 = TupleTypeMetadata[16];
    v136 = TupleTypeMetadata[20];
    v131 = TupleTypeMetadata[24];
    v69 = TupleTypeMetadata[28];
    v67 = v168;
    v70 = v138;
    (*(v168 + 32))(v138, &v63[v68], v53);
    v71 = &v63[v69];
    v72 = v60;
    v73 = v170;
    (*(v171 + 8))(v71, v188);
    (*(v161 + 8))(&v63[v131], v73);
    (*(v165 + 8))(&v63[v136], v166);
    (*(v173 + 8))(&v153[v63], v169);
    v72(v63, v62);
    v66 = v70;
  }

  v74 = swift_modifyAtWritableKeyPath();
  (*(v140 + 80))(v66, v154);
  v75 = *(v67 + 8);
  v75(v66, v53);
  v74(v195, 0);

  v178(v195, &v196, v189);

  v76 = v139;
  v77 = v172;
  v177(v139, v193, v172);
  v78 = v176(v76, 1, TupleTypeMetadata);
  v168 = v67 + 8;
  v154 = v75;
  if (v78 == 1)
  {
    (*(v164 + 8))(v76, v77);
    v79 = v142;
    (*(*(v132 - 8) + 56))(v142, 1, 1);
    v80 = v77;
    v81 = v165;
    v82 = v169;
    v83 = v173;
  }

  else
  {
    v84 = v53;
    v153 = TupleTypeMetadata[12];
    v85 = TupleTypeMetadata[16];
    v140 = TupleTypeMetadata[20];
    v86 = TupleTypeMetadata[24];
    v87 = TupleTypeMetadata[28];
    v83 = v173;
    v79 = v142;
    v88 = v169;
    (*(v173 + 32))(v142, &v76[v85], v169);
    (*(v171 + 8))(&v76[v87], v188);
    (*(v161 + 8))(&v76[v86], v170);
    v81 = v165;
    (*(v165 + 8))(&v76[v140], v166);
    v75(&v153[v76], v84);
    v80 = v172;
    v89 = v76;
    v82 = v88;
    v155(v89, v163);
  }

  v90 = swift_modifyAtWritableKeyPath();
  (*(v143 + 80))(v79, v156);
  v91 = *(v83 + 8);
  v91(v79, v82);
  v90(v195, 0);

  v178(v195, &v196, v189);

  v92 = v141;
  v177(v141, v193, v80);
  v93 = v176(v92, 1, TupleTypeMetadata);
  v94 = v80;
  v173 = v83 + 8;
  v156 = v91;
  if (v93 == 1)
  {
    (*(v164 + 8))(v92, v80);
    v95 = v146;
    (*(*(v133 - 8) + 56))(v146, 1, 1);
    v96 = v80;
    v97 = v166;
  }

  else
  {
    v98 = TupleTypeMetadata[12];
    v165 = TupleTypeMetadata[16];
    v99 = TupleTypeMetadata[24];
    v100 = TupleTypeMetadata[28];
    v95 = v146;
    v97 = v166;
    (*(v81 + 32))(v146, &v92[TupleTypeMetadata[20]], v166);
    v101 = &v92[v100];
    v96 = v94;
    (*(v171 + 8))(v101, v188);
    (*(v161 + 8))(&v92[v99], v170);
    v91(&v92[v165], v169);
    v154(&v92[v98], v160);
    v155(v92, v163);
  }

  v102 = swift_modifyAtWritableKeyPath();
  (*(v147 + 80))(v95, v157);
  v103 = *(v81 + 8);
  v103(v95, v97);
  v102(v195, 0);

  v178(v195, &v196, v189);

  v104 = v145;
  v177(v145, v193, v96);
  v105 = v176(v104, 1, TupleTypeMetadata);
  v165 = v81 + 8;
  v157 = v103;
  if (v105 == 1)
  {
    v106 = v164;
    (*(v164 + 8))(v104, v96);
    v107 = v149;
    (*(*(v134 - 8) + 56))(v149, 1, 1);
    v108 = v170;
    v109 = v161;
  }

  else
  {
    v110 = v97;
    v153 = TupleTypeMetadata[12];
    v111 = TupleTypeMetadata[16];
    v146 = TupleTypeMetadata[20];
    v147 = v111;
    v112 = TupleTypeMetadata[28];
    v109 = v161;
    v113 = v149;
    v108 = v170;
    (*(v161 + 32))(v149, &v104[TupleTypeMetadata[24]]);
    (*(v171 + 8))(&v104[v112], v188);
    v103(&v146[v104], v110);
    v107 = v113;
    v156(&v104[v147], v169);
    v154(&v153[v104], v160);
    v155(v104, v163);
    v106 = v164;
  }

  v114 = swift_modifyAtWritableKeyPath();
  (*(v150 + 80))(v107, v158);
  v115 = *(v109 + 8);
  v116 = v107;
  v117 = v108;
  v115(v116, v108);
  v114(v195, 0);

  v178(v195, &v196, v189);

  v118 = v148;
  v119 = v172;
  v177(v148, v193, v172);
  if (v176(v118, 1, TupleTypeMetadata) == 1)
  {
    (*(v106 + 8))(v118, v119);
    v120 = v151;
    (*(*(v135 - 8) + 56))(v151, 1, 1);
    v121 = v171;
    v122 = v188;
  }

  else
  {
    v193 = TupleTypeMetadata[12];
    v123 = TupleTypeMetadata[16];
    v124 = TupleTypeMetadata[20];
    v125 = TupleTypeMetadata[24];
    v121 = v171;
    v126 = v151;
    (*(v171 + 32))(v151, &v118[TupleTypeMetadata[28]], v188);
    v115(&v118[v125], v117);
    v122 = v188;
    v157(&v118[v124], v166);
    v156(&v118[v123], v169);
    v120 = v126;
    v154(&v118[v193], v160);
    v155(v118, v163);
  }

  v127 = swift_modifyAtWritableKeyPath();
  (*(AssociatedConformanceWitness + 80))(v120, AssociatedTypeWitness);
  (*(v121 + 8))(v120, v122);
  v127(v195, 0);
  (*(v144 + 8))(&v196, v189);
}

uint64_t CRStruct_6.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v59 - v6;
  v85 = swift_getAssociatedTypeWitness();
  v63 = *(v85 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v62 = &v59 - v8;
  v86 = swift_getAssociatedTypeWitness();
  v65 = *(v86 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v64 = &v59 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v70 = *(v14 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v59 - v16;
  v79 = swift_getAssociatedTypeWitness();
  v81 = *(v79 - 8);
  v17 = *(v81 + 64);
  v18 = MEMORY[0x1EEE9AC00](v79);
  v80 = &v59 - v19;
  (*(v4 + 112))(v96, a2, v4, v18);
  v20 = v96[1];
  v78 = v96[4];
  v93 = v96[7];
  v94 = v96[2];
  v91 = v96[10];
  v92 = v96[8];
  v89 = v96[13];
  v90 = v96[11];
  v87 = v96[5];
  v88 = v96[14];
  v22 = v96[16];
  v21 = v96[17];
  sub_1AE23DB8C();
  v95[0] = swift_getTupleTypeMetadata2();
  v71 = v14;
  sub_1AE23DB8C();
  v95[1] = swift_getTupleTypeMetadata2();
  v68 = v11;
  sub_1AE23DB8C();
  v95[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v95[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v95[4] = swift_getTupleTypeMetadata2();
  v23 = v82;
  sub_1AE23DB8C();
  v95[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v83 = *(TupleTypeMetadata - 8);
  v72 = *(v83 + 16);
  v73 = v83 + 16;
  v72(v95, v96, TupleTypeMetadata);
  v75 = v20;

  v76 = v21;

  v74 = v22;

  v25 = a2;

  v26 = v80;
  swift_getAtKeyPath();

  v77 = v4;
  v27 = v79;
  v28 = TupleTypeMetadata;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(v23, v27);
  (*(v81 + 8))(v26, v27);
  v30 = v23[3];
  v31 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v30);
  if (((*(v31 + 8))(v30, v31) & 1) == 0)
  {
    v72(v95, v96, v28);

    v32 = v69;
    swift_getAtKeyPath();

    v33 = v71;
    v34 = swift_getAssociatedConformanceWitness();
    (*(*(v34 + 16) + 48))(v23, v33);
    (*(v70 + 8))(v32, v33);
    v35 = v23[3];
    v36 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v35);
    if (((*(v36 + 8))(v35, v36) & 1) == 0)
    {
      v72(v95, v96, v28);

      v37 = v66;
      swift_getAtKeyPath();

      v38 = v68;
      v39 = swift_getAssociatedConformanceWitness();
      (*(*(v39 + 16) + 48))(v23, v38);
      (*(v67 + 8))(v37, v38);
      v40 = v23[3];
      v41 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v40);
      if (((*(v41 + 8))(v40, v41) & 1) == 0)
      {
        v72(v95, v96, v28);

        v42 = v64;
        swift_getAtKeyPath();

        v43 = v86;
        v44 = swift_getAssociatedConformanceWitness();
        (*(*(v44 + 16) + 48))(v23, v43);
        (*(v65 + 8))(v42, v43);
        v45 = v23[3];
        v46 = v23[4];
        __swift_project_boxed_opaque_existential_1(v23, v45);
        if (((*(v46 + 8))(v45, v46) & 1) == 0)
        {
          v72(v95, v96, v28);

          v47 = v62;
          swift_getAtKeyPath();

          v48 = v85;
          v49 = swift_getAssociatedConformanceWitness();
          (*(*(v49 + 16) + 48))(v23, v48);
          (*(v63 + 8))(v47, v48);
          v50 = v23[3];
          v51 = v23[4];
          __swift_project_boxed_opaque_existential_1(v23, v50);
          if (((*(v51 + 8))(v50, v51) & 1) == 0)
          {
            v72(v95, v96, v28);

            v52 = v60;
            swift_getAtKeyPath();

            v53 = AssociatedTypeWitness;
            v54 = swift_getAssociatedConformanceWitness();
            (*(*(v54 + 16) + 48))(v23, v53);
            (*(v61 + 8))(v52, v53);
            v55 = v23[3];
            v56 = v23[4];
            __swift_project_boxed_opaque_existential_1(v23, v55);
            if (((*(v56 + 8))(v55, v56) & 1) == 0)
            {
              v57 = (*(*(v77 + 8) + 24))(v25);
              sub_1ADDDC764(v23, v57);
            }
          }
        }
      }
    }
  }

  return (*(v83 + 8))(v96, v28);
}

Swift::Bool __swiftcall CRStruct_6.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v5;
  v74 = swift_getAssociatedTypeWitness();
  v53 = *(v74 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v52 = &v49 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v49 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v49 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v72 = *(v17 - 8);
  v18 = *(v72 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v49 - v20;
  (*(v3 + 112))(v78, v2, v3, v19);
  v69 = v78[4];
  v70 = v78[2];
  v67 = v78[7];
  v68 = v78[5];
  v66 = v78[10];
  v75 = v78[11];
  v76 = v78[8];
  v64 = v78[1];
  v65 = v78[13];
  v21 = v78[14];
  v22 = v78[17];
  v63 = v78[16];
  sub_1AE23DB8C();
  v77[0] = swift_getTupleTypeMetadata2();
  v62 = v14;
  sub_1AE23DB8C();
  v77[1] = swift_getTupleTypeMetadata2();
  v59 = v11;
  sub_1AE23DB8C();
  v77[2] = swift_getTupleTypeMetadata2();
  v56 = v8;
  sub_1AE23DB8C();
  v77[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v77[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v77[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v24 = *(TupleTypeMetadata - 8);
  (*(v24 + 16))(v77, v78, TupleTypeMetadata);

  v49 = v22;

  v64 = v21;
  v25 = v3;

  v26 = v71;
  swift_getAtKeyPath();

  v70 = v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(v22) = (*(*(AssociatedConformanceWitness + 16) + 56))(v17);
  (*(v72 + 8))(v26, v17);
  if (v22)
  {
    goto LABEL_6;
  }

  v28 = v60;
  swift_getAtKeyPath();
  v29 = v62;
  v30 = swift_getAssociatedConformanceWitness();
  v31 = (*(*(v30 + 16) + 56))(v29);
  (*(v61 + 8))(v28, v29);
  if (v31)
  {
    goto LABEL_6;
  }

  v32 = v57;
  swift_getAtKeyPath();
  v33 = v59;
  v34 = swift_getAssociatedConformanceWitness();
  v35 = (*(*(v34 + 16) + 56))(v33);
  (*(v58 + 8))(v32, v33);
  if (v35)
  {
    goto LABEL_6;
  }

  v36 = v54;
  swift_getAtKeyPath();
  v37 = v56;
  v38 = swift_getAssociatedConformanceWitness();
  v39 = (*(*(v38 + 16) + 56))(v37);
  (*(v55 + 8))(v36, v37);
  if (v39 & 1) != 0 || (v40 = v52, swift_getAtKeyPath(), v41 = v74, v42 = swift_getAssociatedConformanceWitness(), v43 = (*(*(v42 + 16) + 56))(v41), (*(v53 + 8))(v40, v41), (v43))
  {
LABEL_6:
    (*(v24 + 8))(v78, TupleTypeMetadata);
    v44 = 1;
  }

  else
  {
    v46 = v50;
    swift_getAtKeyPath();
    v47 = AssociatedTypeWitness;
    v48 = swift_getAssociatedConformanceWitness();
    v44 = (*(*(v48 + 16) + 56))(v47);
    (*(v24 + 8))(v78, TupleTypeMetadata);
    (*(v51 + 8))(v46, v47);
  }

  return v44 & 1;
}

uint64_t CRStruct_6.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 112))(&v33, a2, *(a3 + 8));
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v28 = *(TupleTypeMetadata - 8);
  v29 = *(v28 + 16);
  v29(v32, &v33, TupleTypeMetadata);

  v3 = swift_modifyAtWritableKeyPath();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  v5 = *(v4 + 64);
  v6 = swift_checkMetadataState();
  v5(a1, v6, v4);
  v3(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v7 = swift_modifyAtWritableKeyPath();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  v9 = *(v8 + 64);
  v10 = swift_checkMetadataState();
  v9(a1, v10, v8);
  v7(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v11 = swift_modifyAtWritableKeyPath();
  v12 = *(swift_getAssociatedConformanceWitness() + 16);
  v13 = *(v12 + 64);
  v14 = swift_checkMetadataState();
  v13(a1, v14, v12);
  v11(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v15 = swift_modifyAtWritableKeyPath();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v17 = *(v16 + 64);
  v18 = swift_checkMetadataState();
  v17(a1, v18, v16);
  v15(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v19 = swift_modifyAtWritableKeyPath();
  v20 = *(swift_getAssociatedConformanceWitness() + 16);
  v21 = *(v20 + 64);
  v22 = swift_checkMetadataState();
  v21(a1, v22, v20);
  v19(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v23 = swift_modifyAtWritableKeyPath();
  v24 = *(swift_getAssociatedConformanceWitness() + 16);
  v25 = *(v24 + 64);
  v26 = swift_checkMetadataState();
  v25(a1, v26, v24);
  v23(v32, 0);

  return (*(v28 + 8))(&v33, TupleTypeMetadata);
}

uint64_t CRStruct_6.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v57 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v6;
  v55 = swift_getAssociatedTypeWitness();
  v47 = *(v55 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v46 = &v42 - v8;
  v58 = swift_getAssociatedTypeWitness();
  v50 = *(v58 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v49 = &v42 - v10;
  v59 = swift_getAssociatedTypeWitness();
  v53 = *(v59 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v52 = &v42 - v12;
  v60 = swift_getAssociatedTypeWitness();
  v54 = *(v60 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v42 - v14;
  v61 = swift_getAssociatedTypeWitness();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v61);
  v20 = &v42 - v19;
  (*(v4 + 112))(v70, a1, v4, v18);
  v51 = v70[8];
  v48 = v70[11];
  v45 = v70[14];
  v42 = v70[17];
  v21 = (*(*(v4 + 8) + 24))(a1);
  sub_1AE21FFB0(v21, &v69);

  v22 = v69;
  if (v69 > 2u)
  {
    goto LABEL_20;
  }

  swift_getAtKeyPath();
  v23 = v61;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(&TupleTypeMetadata2, v23);
  (*(v16 + 8))(v20, v23);
  if (TupleTypeMetadata2 > v22)
  {
    v22 = TupleTypeMetadata2;
  }

  v69 = v22;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_20;
  }

  swift_getAtKeyPath();
  v25 = v60;
  v26 = swift_getAssociatedConformanceWitness();
  (*(*(*(v26 + 16) + 8) + 24))(&TupleTypeMetadata2, v25);
  (*(v54 + 8))(v15, v25);
  if (TupleTypeMetadata2 > v22)
  {
    v22 = TupleTypeMetadata2;
  }

  v69 = v22;
  if (v22 > 2)
  {
    goto LABEL_20;
  }

  v27 = v52;
  swift_getAtKeyPath();
  v28 = v59;
  v29 = swift_getAssociatedConformanceWitness();
  (*(*(*(v29 + 16) + 8) + 24))(&TupleTypeMetadata2, v28);
  (*(v53 + 8))(v27, v28);
  if (TupleTypeMetadata2 > v22)
  {
    v22 = TupleTypeMetadata2;
  }

  v69 = v22;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_20;
  }

  v30 = v49;
  swift_getAtKeyPath();
  v31 = v58;
  v32 = swift_getAssociatedConformanceWitness();
  (*(*(*(v32 + 16) + 8) + 24))(&TupleTypeMetadata2, v31);
  (*(v50 + 8))(v30, v31);
  if (TupleTypeMetadata2 > v22)
  {
    v22 = TupleTypeMetadata2;
  }

  v69 = v22;
  if (v22 >= 3)
  {
LABEL_20:
    v69 = v22;
LABEL_21:
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v64 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v65 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v66 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v67 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v68 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    result = (*(*(TupleTypeMetadata - 8) + 8))(v70, TupleTypeMetadata);
    goto LABEL_22;
  }

  v33 = v46;
  swift_getAtKeyPath();
  v34 = v55;
  v35 = swift_getAssociatedConformanceWitness();
  (*(*(*(v35 + 16) + 8) + 24))(&TupleTypeMetadata2, v34);
  (*(v47 + 8))(v33, v34);
  if (TupleTypeMetadata2 > v22)
  {
    v22 = TupleTypeMetadata2;
  }

  v69 = v22;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_21;
  }

  v36 = v43;
  swift_getAtKeyPath();
  v37 = AssociatedTypeWitness;
  v38 = swift_getAssociatedConformanceWitness();
  (*(*(*(v38 + 16) + 8) + 24))(&v62, v37);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v64 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v65 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v66 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v67 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v68 = swift_getTupleTypeMetadata2();
  v39 = swift_getTupleTypeMetadata();
  (*(*(v39 - 8) + 8))(v70, v39);
  result = (*(v44 + 8))(v36, v37);
  if (v62 > v22)
  {
    LOBYTE(v22) = v62;
  }

LABEL_22:
  *v57 = v22;
  return result;
}

uint64_t CRStruct_6<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v91 = a8;
  v95 = a7;
  v99 = a6;
  v103 = a5;
  v111 = a4;
  v11 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = &v82 - v13;
  v114 = swift_getAssociatedTypeWitness();
  v90 = *(v114 - 8);
  v14 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v89 = &v82 - v15;
  v115 = swift_getAssociatedTypeWitness();
  v94 = *(v115 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v93 = &v82 - v17;
  v117 = swift_getAssociatedTypeWitness();
  v98 = *(v117 - 8);
  v18 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v97 = &v82 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v101 = *(v20 - 8);
  v21 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v82 - v22;
  v107 = swift_getAssociatedTypeWitness();
  v110 = *(v107 - 8);
  v23 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v82 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v112 = *(v120 - 8);
  v25 = *(v112 + 64);
  v26 = MEMORY[0x1EEE9AC00](v120);
  v119 = &v82 - v27;
  v28 = *(v11 + 112);
  v84 = v11;
  v28(&TupleTypeMetadata2, a2, v11, v26);
  v108 = TupleTypeMetadata2;
  v133 = v135;
  v118 = v136;
  v124 = v141;
  v125 = v138;
  v121 = v144;
  v129 = v139;
  v130 = v147;
  v128 = v148;
  v126 = v142;
  v127 = v150;
  v131 = v145;
  v132 = v151;
  v152[0] = TupleTypeMetadata2;
  v152[1] = v135;
  v152[2] = v136;
  v152[3] = v137;
  v100 = v137;
  v152[4] = v138;
  v152[5] = v139;
  v96 = v140;
  v152[6] = v140;
  v152[7] = v141;
  v152[8] = v142;
  v152[9] = v143;
  v92 = v143;
  v152[10] = v144;
  v152[11] = v145;
  v88 = v146;
  v152[12] = v146;
  v152[13] = v147;
  v152[14] = v148;
  v152[15] = v149;
  v85 = v149;
  v152[16] = v150;
  v152[17] = v151;
  v29 = a1;
  v31 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(v29, v31);
  sub_1AE048F10();
  sub_1AE23E3CC();
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v102 = v20;
  sub_1AE23DB8C();
  v135 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v136 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v137 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v138 = swift_getTupleTypeMetadata2();
  v83 = a2;
  sub_1AE23DB8C();
  v139 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v106 = *(TupleTypeMetadata - 8);
  v34 = v106 + 16;
  v33 = *(v106 + 16);
  v33(&TupleTypeMetadata2, v152, TupleTypeMetadata);

  v35 = v109;
  swift_getAtKeyPath();

  v122 = TupleTypeMetadata;
  v104 = v34;
  v105 = v33;
  v33(&TupleTypeMetadata2, v152, TupleTypeMetadata);
  v36 = v120;

  v37 = v107;
  v38 = v119;

  TupleTypeMetadata2 = v108;
  v135 = v133;
  v39 = v123;
  sub_1AE23DD5C();
  v123 = v39;
  if (v39)
  {
    (*(v106 + 8))(v152, v122);

    (*(v110 + 8))(v35, v37);
    return (*(v112 + 8))(v38, v36);
  }

  (*(v110 + 8))(v35, v37);
  v105(&TupleTypeMetadata2, v152, v122);

  swift_getAtKeyPath();

  v105(&TupleTypeMetadata2, v152, v122);

  TupleTypeMetadata2 = v100;
  v135 = v125;
  v42 = v119;
  v41 = v120;
  v43 = v102;
  v44 = v123;
  sub_1AE23DD5C();
  v45 = v122;
  v123 = v44;
  if (v44)
  {
    (*(v106 + 8))(v152, v122);

    (*(v101 + 8))(v116, v43);
    return (*(v112 + 8))(v42, v41);
  }

  (*(v101 + 8))(v116, v43);
  v46 = v105;
  v105(&TupleTypeMetadata2, v152, v45);

  v47 = v97;
  swift_getAtKeyPath();

  v46(&TupleTypeMetadata2, v152, v45);

  v48 = v120;

  v49 = v119;

  v50 = v123;
  TupleTypeMetadata2 = v96;
  v135 = v124;
  v51 = v117;
  sub_1AE23DD5C();
  v123 = v50;
  if (v50)
  {
    (*(v106 + 8))(v152, v122);

    (*(v98 + 8))(v47, v51);
    return (*(v112 + 8))(v49, v48);
  }

  (*(v98 + 8))(v47, v51);
  v52 = v105;
  v105(&TupleTypeMetadata2, v152, v122);

  v53 = v93;
  swift_getAtKeyPath();

  v52(&TupleTypeMetadata2, v152, v122);

  v48 = v120;

  v49 = v119;

  TupleTypeMetadata2 = v92;
  v135 = v121;
  v54 = v115;
  v55 = v123;
  sub_1AE23DD5C();
  v123 = v55;
  if (v55)
  {
    (*(v106 + 8))(v152, v122);

    (*(v94 + 8))(v53, v54);
    return (*(v112 + 8))(v49, v48);
  }

  (*(v94 + 8))(v53, v54);
  v56 = v122;
  v57 = v105;
  v105(&TupleTypeMetadata2, v152, v122);

  v58 = v89;
  swift_getAtKeyPath();

  v57(&TupleTypeMetadata2, v152, v56);

  v41 = v120;

  v42 = v119;

  TupleTypeMetadata2 = v88;
  v135 = v130;
  v59 = v114;
  v60 = v123;
  sub_1AE23DD5C();
  v123 = v60;
  if (v60)
  {
    (*(v106 + 8))(v152, v56);

    (*(v90 + 8))(v58, v59);
    return (*(v112 + 8))(v42, v41);
  }

  v117 = a9;

  (*(v90 + 8))(v58, v59);
  v61 = v105;
  v105(&TupleTypeMetadata2, v152, v56);

  v62 = v86;
  swift_getAtKeyPath();

  v61(&TupleTypeMetadata2, v152, v56);

  v63 = v120;

  v64 = v119;

  TupleTypeMetadata2 = v85;
  v135 = v127;
  v65 = AssociatedTypeWitness;
  v66 = v123;
  sub_1AE23DD5C();
  v123 = v66;
  if (v66)
  {
    (*(v106 + 8))(v152, v122);

    (*(v87 + 8))(v62, v65);
    return (*(v112 + 8))(v64, v63);
  }

  else
  {

    (*(v87 + 8))(v62, v65);
    result = (*(*(v84 + 8) + 24))(v83);
    v67 = 0;
    v69 = result + 64;
    v68 = *(result + 64);
    v133 = result;
    v70 = 1 << *(result + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & v68;
    v73 = (v70 + 63) >> 6;
    v74 = result + 64;
    v75 = v123;
    if ((v71 & v68) != 0)
    {
      while (1)
      {
        v76 = v67;
LABEL_23:
        v78 = __clz(__rbit64(v72)) | (v76 << 6);
        v79 = (*(v133 + 48) + 16 * v78);
        v80 = *v79;
        v81 = v79[1];
        v152[20] = *(*(v133 + 56) + 8 * v78);
        TupleTypeMetadata2 = v80;
        v135 = v81;
        sub_1AE048F64();

        sub_1AE23DD5C();
        v123 = v75;
        if (v75)
        {
          break;
        }

        v72 &= v72 - 1;

        v67 = v76;
        v69 = v74;
        v75 = v123;
        if (!v72)
        {
          goto LABEL_19;
        }
      }

      (*(v106 + 8))(v152, v122);

      (*(v112 + 8))(v119, v120);
    }

    else
    {
LABEL_19:
      v77 = v112;
      while (1)
      {
        v76 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v76 >= v73)
        {
          (*(v106 + 8))(v152, v122);

          result = (*(v77 + 8))(v119, v120);
          v123 = v75;
          return result;
        }

        v72 = *(v69 + 8 * v76);
        ++v67;
        if (v72)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t CRStruct_7.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v108 = a4;
  v109 = a1;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  v9 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v98 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v74 - v12;
  v102 = swift_getAssociatedTypeWitness();
  v97 = *(v102 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v74 - v16;
  v101 = swift_getAssociatedTypeWitness();
  v93 = *(v101 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v91 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v74 - v20;
  v84 = swift_getAssociatedTypeWitness();
  v90 = *(v84 - 8);
  v21 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v88 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v74 - v24;
  v82 = swift_getAssociatedTypeWitness();
  v87 = *(v82 - 8);
  v25 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v86 = &v74 - v28;
  v79 = swift_getAssociatedTypeWitness();
  v83 = *(v79 - 8);
  v29 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v81 = &v74 - v32;
  v75 = swift_getAssociatedTypeWitness();
  v78 = *(v75 - 8);
  v33 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v77 = &v74 - v37;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v36);
  v106 = v8;
  (*(v8 + 128))(v126, a2, v8);
  v118 = v126[7];
  v119 = v126[2];
  v122 = v126[8];
  v123 = v126[5];
  v111 = v126[10];
  v112 = v126[4];
  v115 = v126[1];
  v116 = v126[11];
  v117 = v126[17];
  v120 = v126[13];
  v121 = v126[19];
  v38 = v126[20];
  v113 = v126[14];
  v105 = v126[16];
  sub_1AE23DB8C();
  v125[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125[4] = swift_getTupleTypeMetadata2();
  v107 = a2;
  sub_1AE23DB8C();
  v125[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125[6] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v94 = *(TupleTypeMetadata - 8);
  v39 = *(v94 + 16);
  v110 = v94 + 16;
  v114 = v39;
  v39(v125, v126, TupleTypeMetadata);

  v104 = v38;

  v114(v125, v126, TupleTypeMetadata);

  v40 = v76;
  swift_getAtKeyPath();

  v41 = v75;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v109, v41);
  (*(v78 + 8))(v40, v41);
  swift_setAtWritableKeyPath();

  v43 = v114;
  v114(v125, v126, TupleTypeMetadata);

  v43(v125, v126, TupleTypeMetadata);

  v44 = v80;
  swift_getAtKeyPath();

  v45 = v79;
  v46 = swift_getAssociatedConformanceWitness();
  (*(*(v46 + 16) + 24))(v109, v45);
  (*(v83 + 8))(v44, v45);
  swift_setAtWritableKeyPath();

  v47 = TupleTypeMetadata;
  v114(v125, v126, TupleTypeMetadata);

  v114(v125, v126, v47);

  v48 = v85;
  swift_getAtKeyPath();

  v49 = v82;
  v50 = swift_getAssociatedConformanceWitness();
  (*(*(v50 + 16) + 24))(v109, v49);
  (*(v87 + 8))(v48, v49);
  swift_setAtWritableKeyPath();

  v51 = v114;
  v114(v125, v126, TupleTypeMetadata);

  v51(v125, v126, TupleTypeMetadata);

  v52 = v88;
  swift_getAtKeyPath();

  v53 = v84;
  v54 = swift_getAssociatedConformanceWitness();
  (*(*(v54 + 16) + 24))(v109, v53);
  (*(v90 + 8))(v52, v53);
  swift_setAtWritableKeyPath();

  v55 = TupleTypeMetadata;
  v51(v125, v126, TupleTypeMetadata);

  v51(v125, v126, v55);

  v56 = v91;
  swift_getAtKeyPath();

  v57 = v101;
  v58 = swift_getAssociatedConformanceWitness();
  (*(*(v58 + 16) + 24))(v109, v57);
  (*(v93 + 8))(v56, v57);
  swift_setAtWritableKeyPath();

  v59 = v114;
  v114(v125, v126, TupleTypeMetadata);

  v59(v125, v126, TupleTypeMetadata);

  v60 = v96;
  swift_getAtKeyPath();

  v61 = v102;
  v62 = swift_getAssociatedConformanceWitness();
  (*(*(v62 + 16) + 24))(v109, v61);
  (*(v97 + 8))(v60, v61);
  swift_setAtWritableKeyPath();

  v63 = TupleTypeMetadata;
  v114(v125, v126, TupleTypeMetadata);

  v114(v125, v126, v63);

  v64 = v98;
  swift_getAtKeyPath();

  v66 = v106;
  v65 = v107;
  v67 = AssociatedTypeWitness;
  v68 = swift_getAssociatedConformanceWitness();
  v69 = v109;
  (*(*(v68 + 16) + 24))(v109, v67);
  (*(v100 + 8))(v64, v67);
  swift_setAtWritableKeyPath();

  v70 = *(v66 + 8);
  v71 = (*(v70 + 24))(v65, v70);
  v72 = sub_1AE156B60(v71, v69);

  (*(v70 + 32))(v72, v65, v70);
  return (*(v94 + 8))(v126, TupleTypeMetadata);
}