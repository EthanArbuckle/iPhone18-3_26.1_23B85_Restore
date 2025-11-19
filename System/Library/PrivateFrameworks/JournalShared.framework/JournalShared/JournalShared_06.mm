uint64_t sub_2556F5C50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25574F040();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *CRAttributedString<>.canvasAssetIDs.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v45 - v2;
  v4 = sub_25574F0D0();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v51 = *(v7 - 8);
  v8 = v51[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9C0();
  KeyPath = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v45 = v24;
  v46 = v15;
  (*(v15 + 16))(v19, v24, v14);
  sub_255669798(&qword_27F7BE8C8, &qword_27F7BE8B8, &unk_255758180);
  v25 = v51;
  sub_255750290();
  v26 = sub_255669798(&qword_27F7BE8D0, &qword_27F7BE8B8, &unk_255758180);
  v27 = v58;
  v57 = v22;
  v54 = v26;
  sub_255750960();
  v28 = v27;
  v52 = v25[6];
  v53 = v25 + 6;
  if (v52(v27, 1, v7) == 1)
  {
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v33 = v25[4];
    v32 = v25 + 4;
    v34 = (v32 - 3);
    v35 = (v49 + 48);
    v50 = (v49 + 32);
    v51 = v33;
    v29 = MEMORY[0x277D84F90];
    v47 = v14;
    v48 = v3;
    (v33)(v10, v28, v7);
    while (1)
    {
      swift_getAtKeyPath();
      (*v34)(v10, v7);
      if ((*v35)(v3, 1, v4) == 1)
      {
        sub_255674B20(v3, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        v37 = v10;
        v38 = v32;
        v39 = v7;
        v40 = v4;
        v41 = *v50;
        v42 = v40;
        (*v50)(v55, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_255698A7C(0, v29[2] + 1, 1, v29);
        }

        v44 = v29[2];
        v43 = v29[3];
        if (v44 >= v43 >> 1)
        {
          v29 = sub_255698A7C(v43 > 1, v44 + 1, 1, v29);
        }

        v29[2] = v44 + 1;
        (v41)(v29 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44, v55, v42);
        v4 = v42;
        v7 = v39;
        v32 = v38;
        v10 = v37;
        v14 = v47;
        v3 = v48;
      }

      sub_255750960();
      v36 = v58;
      if (v52(v58, 1, v7) == 1)
      {
        break;
      }

      (v51)(v10, v36, v7);
    }
  }

  v30 = *(v46 + 8);
  v30(v57, v14);
  v30(v45, v14);
  return v29;
}

uint64_t sub_2556F6260(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF668, "X|");
  return sub_255750100() & 1;
}

uint64_t sub_2556F62C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  sub_2556C74E8();
  return sub_25574F970();
}

uint64_t MergeableEntryAssetsPlacement.merge(_:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAssetsPlacement.merge(_:)(a1, v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t MergeableEntryAssetsPlacement.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  v15 = sub_25574F500();
  v37 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  sub_25574F4F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v39 = a1;
  sub_25574F6A0();
  sub_25574F4E0();
  v20 = *(v16 + 8);
  v36[1] = v16 + 8;
  v20(v19, v15);
  v21 = v20;
  v22 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v23 = *(v22 + 20);
  v24 = v22;
  v42 = v22;
  sub_25574F390();
  v25 = *(v24 + 20);
  v26 = v3;
  sub_25574F390();
  sub_25574F460();
  v27 = v41;
  v28 = *(v41 + 8);
  v28(v14, v6);
  (*(v27 + 16))(v40, v12, v6);
  v29 = v26;
  sub_25574F3A0();
  v28(v12, v6);
  sub_25574F4E0();
  v30 = v37;
  v21(v19, v37);
  v31 = *(v42 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC50();
  sub_25574F4E0();
  v21(v19, v30);
  v32 = v42;
  v33 = v29 + *(v42 + 28);
  sub_25574FC50();
  sub_25574F4E0();
  v21(v19, v30);
  v34 = v29 + *(v32 + 32);
  sub_25574F810();
  sub_25574F4E0();
  return (v21)(v19, v30);
}

uint64_t MergeableEntryAssetsPlacement.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E0, &qword_25575B3C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v45 = &v42 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v42 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F600();
  v25 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v26 = v2 + v25[5];
  sub_25574F390();
  v27 = a1 + v25[5];
  sub_25574F390();
  sub_25574F3F0();
  v28 = *(v11 + 8);
  v28(v15, v10);
  v29 = v10;
  v31 = v42;
  v30 = v43;
  v28(v17, v29);
  v32 = v25[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBE0();
  v33 = v3 + v25[7];
  sub_25574FBE0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF540, &qword_25575B498);
  if ((*(*(v34 - 8) + 48))(v24, 1, v34) == 1 && (v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF548, &unk_25575B4A0), (*(*(v35 - 8) + 48))(v45, 1, v35) == 1) && (v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF550, &qword_25575E6C0), v37 = *(*(v36 - 8) + 48), v37(v31, 1, v36) == 1) && v37(v30, 1, v36) == 1)
  {
    sub_255674B20(v24, &qword_27F7BF4D8, &qword_25575B3B8);
    v38 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
    (*(*(v38 - 8) + 56))(v44, 1, 1, v38);
  }

  else
  {
    v39 = v44;
    sub_255663294(v24, v44, &qword_27F7BF4D8, &qword_25575B3B8);
    v40 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
    sub_255663294(v45, v39 + v40[5], &qword_27F7BF4E0, &qword_25575B3C0);
    sub_255663294(v31, v39 + v40[6], &qword_27F7BF4E8, &qword_25575B3C8);
    sub_255663294(v30, v39 + v40[7], &qword_27F7BF4E8, &qword_25575B3C8);
    sub_255674B20(v24, &qword_27F7BF4D8, &qword_25575B3B8);
    (*(*(v40 - 1) + 56))(v39, 0, 1, v40);
  }

  sub_255674B20(v30, &qword_27F7BF4E8, &qword_25575B3C8);
  sub_255674B20(v31, &qword_27F7BF4E8, &qword_25575B3C8);
  return sub_255674B20(v45, &qword_27F7BF4E0, &qword_25575B3C0);
}

uint64_t MergeableEntryAssetsPlacement.apply(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v12, &qword_27F7BF558, &qword_25575B4B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_255674B20(v12, &qword_27F7BF558, &qword_25575B4B0);
  }

  sub_2556FB214(v12, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v19 = v1;
  sub_25574F660();
  v20 = v13[5];
  v21 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v22 = v21[5];
  sub_25574F390();
  sub_25574F430();
  v23 = v29;
  (*(v29 + 16))(v28, v8, v3);
  sub_25574F3A0();
  (*(v23 + 8))(v8, v3);
  v24 = v13[6];
  v25 = v21[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC20();
  v26 = v13[7];
  v27 = v19 + v21[7];
  sub_25574FC20();
  return sub_2556FB278(v17, type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction);
}

uint64_t MergeableEntryAssetsPlacement.hasDelta(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F710())
  {
    goto LABEL_5;
  }

  v12 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v13 = v1 + v12[5];
  sub_25574F390();
  v14 = a1 + v12[5];
  sub_25574F390();
  LOBYTE(v14) = sub_25574F490();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  if (v14 & 1) != 0 || (v16 = v12[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FD00()) || (v17 = v2 + v12[7], (sub_25574FD00()))
  {
LABEL_5:
    v18 = 1;
  }

  else
  {
    v20 = v2 + v12[8];
    v18 = sub_25574F840();
  }

  return v18 & 1;
}

uint64_t MergeableEntryAssetsPlacement.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574F860();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  sub_2556FB2D8(v1, a1, type metadata accessor for MergeableEntryAssetsPlacement);
  v22 = v1;
  sub_25574F630();
  (*(v18 + 40))(a1, v21, v17);
  v23 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v24 = v1 + v23[5];
  sub_25574F390();
  sub_25574F410();
  v25 = v38;
  v26 = *(v38 + 8);
  v26(v14, v10);
  (*(v25 + 16))(v14, v16, v10);
  v27 = a1 + v23[5];
  sub_25574F3A0();
  v26(v16, v10);
  v28 = v22;
  v29 = v22 + v23[6];
  v30 = v39;
  v31 = v40;
  sub_25574FC00();
  v32 = *(v41 + 40);
  v32(a1 + v23[6], v30, v31);
  v33 = v28 + v23[7];
  sub_25574FC00();
  v32(a1 + v23[7], v30, v31);
  v34 = v28 + v23[8];
  v35 = v42;
  sub_25574F800();
  return (*(v43 + 40))(a1 + v23[8], v35, v44);
}

uint64_t MergeableEntryAssetsPlacement.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_25574F860();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v50 = *(v47 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  v38 = &v34 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v39 = *(v36 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v22 = *(v21 + 20);
  v23 = sub_25574F0D0();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_255663294(v20, v18, &unk_27F7BED20, &unk_2557551D0);
  sub_255663D60();
  v49 = v22;
  v24 = v40;
  sub_25574F340();
  sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
  v48 = v21;
  v42 = *(v21 + 32);
  sub_25574F850();
  sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v25 = v41;
  sub_25574F560();
  if (v25)
  {
    (*(v50 + 8))(v24 + v49, v47);
    return (*(v45 + 8))(v24 + v42, v46);
  }

  else
  {
    v26 = v13;
    v27 = v37;
    (*(v39 + 32))(v24, v26, v36);
    v28 = v38;
    sub_25574F330();
    (*(v50 + 40))(v24 + v49, v28, v47);
    sub_25574FB80();
    v29 = v44;
    v31 = v24 + *(v48 + 24);
    v41 = *(v43 + 32);
    v41(v31, v27, v44);
    v32 = v35;
    sub_25574FB80();
    v41(v24 + *(v48 + 28), v32, v29);
    v33 = v34;
    sub_25574F780();
    return (*(v45 + 40))(v24 + v42, v33, v46);
  }
}

uint64_t MergeableEntryAssetsPlacement.isDefaultState.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v8 = v0 + v7[8];
  if (sub_25574F790() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()) && (v9 = v1 + v7[5], sub_25574F390(), LOBYTE(v9) = sub_25574F380(), (*(v3 + 8))(v6, v2), (v9) && (v10 = v7[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FB90()))
  {
    v11 = v1 + v7[7];
    v12 = sub_25574FB90();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t MergeableEntryAssetsPlacement.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v7 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v8 = v0 + v7[5];
  sub_25574F390();
  sub_25574F3B0();
  (*(v3 + 8))(v6, v2);
  v9 = v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  v10 = v1 + v7[7];
  sub_25574FBA0();
  v11 = v1 + v7[8];
  return sub_25574F7A0();
}

uint64_t MergeableEntryAssetsPlacement.newRefs(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v26 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v12 = sub_25574F6E0();
  sub_255692FAC(v12);
  v13 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v14 = v1 + v13[5];
  sub_25574F390();
  v15 = a1 + v13[5];
  sub_25574F390();
  v16 = sub_25574F470();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v11, v4);
  sub_255692FAC(v16);
  v18 = v13[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v19 = sub_25574FCD0();
  sub_255692FAC(v19);
  v20 = v2 + v13[7];
  v21 = sub_25574FCD0();
  sub_255692FAC(v21);
  v22 = v2 + v13[8];
  v23 = sub_25574F830();
  sub_255692FAC(v23);
  return v26;
}

Swift::Bool __swiftcall MergeableEntryAssetsPlacement.needToFinalizeTimestamps()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610())
  {
    goto LABEL_5;
  }

  v7 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v8 = v0 + v7[5];
  sub_25574F390();
  LOBYTE(v8) = sub_25574F400();
  (*(v3 + 8))(v6, v2);
  if (v8 & 1) != 0 || (v9 = v7[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FBF0()) || (v10 = v1 + v7[7], (sub_25574FBF0()))
  {
LABEL_5:
    v11 = 1;
  }

  else
  {
    v13 = v1 + v7[8];
    v11 = sub_25574F7D0();
  }

  return v11 & 1;
}

uint64_t MergeableEntryAssetsPlacement.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v12 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v13 = v12[5];
  sub_25574F390();
  sub_25574F3C0();
  (*(v5 + 16))(v9, v11, v4);
  sub_25574F3A0();
  (*(v5 + 8))(v11, v4);
  v14 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  v15 = v2 + v12[7];
  sub_25574FBB0();
  v16 = v12[8];
  return MEMORY[0x259C3D480](a1);
}

uint64_t MergeableEntryAssetsPlacement.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v66 - v4;
  v5 = sub_25574F770();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v66 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v66 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v66 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v66 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v66 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v66 - v27;
  v77 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v29 = v77[8];
  v80 = v1;
  sub_25574F7C0();
  v30 = *(v6 + 104);
  v79 = *MEMORY[0x277CFB5F0];
  v78 = v30;
  v30(v26);
  v31 = sub_25574F760();
  v32 = *(v6 + 8);
  v32(v26, v5);
  if (v31)
  {
    return (*(v6 + 32))(v81, v28, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5E0();
  v68 = sub_2556647F4(&qword_27F7BDED8, MEMORY[0x277CFB600]);
  v34 = sub_2557500E0();
  v35 = (v34 & 1) == 0;
  if (v34)
  {
    v36 = v28;
  }

  else
  {
    v36 = v20;
  }

  if (v35)
  {
    v20 = v28;
  }

  v32(v36, v5);
  v37 = *(v6 + 32);
  v37(v23, v20, v5);
  v37(v28, v23, v5);
  v78(v26, v79, v5);
  v38 = sub_25574F760();
  v32(v26, v5);
  if (v38)
  {
    return (v37)(v81, v28, v5);
  }

  v39 = v76;
  v40 = v77[5];
  v67 = v37;
  v41 = v74;
  sub_25574F390();
  v66 = v32;
  v42 = v72;
  sub_25574F3D0();
  (*(v75 + 8))(v41, v39);
  v43 = sub_2557500E0();
  v44 = (v43 & 1) == 0;
  v45 = (v43 & 1) != 0 ? v28 : v42;
  v46 = v44 ? v28 : v42;
  v47 = v66;
  v37 = v67;
  v66(v45, v5);
  v48 = v73;
  v37(v73, v46, v5);
  v37(v28, v48, v5);
  v78(v26, v79, v5);
  v49 = sub_25574F760();
  v47(v26, v5);
  if (v49)
  {
    return (v37)(v81, v28, v5);
  }

  v50 = v37;
  v51 = v77[6];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v53 = v70;
  v76 = v52;
  sub_25574FBC0();
  v54 = sub_2557500E0();
  v55 = (v54 & 1) == 0;
  if (v54)
  {
    v56 = v28;
  }

  else
  {
    v56 = v53;
  }

  if (v55)
  {
    v57 = v28;
  }

  else
  {
    v57 = v53;
  }

  v47(v56, v5);
  v58 = v71;
  v50(v71, v57, v5);
  v50(v28, v58, v5);
  v78(v26, v79, v5);
  v59 = sub_25574F760();
  v47(v26, v5);
  if (v59)
  {
    return (v50)(v81, v28, v5);
  }

  v60 = v80 + v77[7];
  v61 = v69;
  sub_25574FBC0();
  v62 = sub_2557500E0();
  v63 = v81;
  if (v62)
  {
    v47(v28, v5);
    v64 = v63;
    v65 = v61;
  }

  else
  {
    v47(v61, v5);
    v64 = v63;
    v65 = v28;
  }

  return (v67)(v64, v65, v5);
}

uint64_t MergeableEntryAssetsPlacement.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v44 = &v43 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v45 = &v43 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v23 = v2;
  sub_25574F5F0();
  v24 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v25 = v2 + v24[5];
  sub_25574F390();
  v26 = a1 + v24[5];
  sub_25574F390();
  v27 = v44;
  sub_25574F3E0();
  v28 = *(v10 + 8);
  v28(v14, v9);
  v29 = v9;
  v30 = v46;
  v28(v16, v29);
  v31 = v24[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBD0();
  v32 = v23 + v24[7];
  v33 = v45;
  v34 = v47;
  sub_25574FBD0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF560, &qword_25575B4B8);
  if ((*(*(v35 - 8) + 48))(v33, 1, v35) == 1 && (v36 = sub_25574FB50(), (*(*(v36 - 8) + 48))(v27, 1, v36) == 1) && (v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF568, &unk_25575B4C0), v38 = *(*(v37 - 8) + 48), v38(v30, 1, v37) == 1) && v38(v34, 1, v37) == 1)
  {
    sub_255674B20(v33, &qword_27F7BF4C8, &unk_25575B3A0);
    v39 = type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference(0);
    (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
  }

  else
  {
    v40 = v48;
    sub_255663294(v33, v48, &qword_27F7BF4C8, &unk_25575B3A0);
    v41 = type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference(0);
    sub_255663294(v27, v40 + v41[5], &qword_27F7BDDD0, &qword_25575D7A0);
    sub_255663294(v30, v40 + v41[6], &qword_27F7BF4D0, &qword_25575B3B0);
    sub_255663294(v34, v40 + v41[7], &qword_27F7BF4D0, &qword_25575B3B0);
    sub_255674B20(v33, &qword_27F7BF4C8, &unk_25575B3A0);
    (*(*(v41 - 1) + 56))(v40, 0, 1, v41);
  }

  sub_255674B20(v34, &qword_27F7BF4D0, &qword_25575B3B0);
  sub_255674B20(v30, &qword_27F7BF4D0, &qword_25575B3B0);
  return sub_255674B20(v27, &qword_27F7BDDD0, &qword_25575D7A0);
}

uint64_t MergeableEntryAssetsPlacement.encode(to:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  result = sub_25574FF10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_255669798(&qword_27F7BF570, &qword_27F7BEA90, &unk_25575B390);
    sub_25574FF60();
    v9 = type metadata accessor for MergeableEntryAssetsPlacement(0);
    v10 = v0 + v9[5];
    sub_25574F390();
    sub_255669798(&qword_27F7BF520, &qword_27F7BEDB0, &unk_255759240);
    sub_25574FF60();
    (*(v4 + 8))(v7, v3);
    v11 = v9[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_255669798(&qword_27F7BF578, &qword_27F7BE0C8, &qword_255755C60);
    sub_25574FF60();
    v12 = v9[7];
    sub_25574FF60();
    v13 = v2 + v9[8];
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableEntryAssetsPlacement.delta(_:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v57 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v62 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v61 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v63 = &v57 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v59 = a1;
  v31 = v2;
  sub_25574F680();
  v32 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v33 = v2 + v32[5];
  sub_25574F390();
  v34 = a1 + v32[5];
  sub_25574F390();
  sub_25574F440();
  v35 = *(v64 + 8);
  v35(v17, v13);
  v35(v19, v13);
  v36 = v32[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v37 = v13;
  sub_25574FC30();
  v38 = v31 + v32[7];
  v39 = v25;
  v40 = v63;
  sub_25574FC30();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v40, 1, v41) == 1 && (*(v64 + 48))(v39, 1, v37) == 1 && (v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670), v44 = *(*(v43 - 8) + 48), v44(v66, 1, v43) == 1) && v44(v65, 1, v43) == 1)
  {
    sub_255674B20(v40, &qword_27F7BF4F0, &qword_25575B3D0);
    v45 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    (*(*(v45 - 8) + 56))(v60, 1, 1, v45);
  }

  else
  {
    sub_255663294(v40, v61, &qword_27F7BF4F0, &qword_25575B3D0);
    sub_255663294(v39, v62, &qword_27F7BF4F8, &qword_25575B3D8);
    v46 = v57;
    sub_255663294(v66, v57, &qword_27F7BF500, &unk_25575B3E0);
    v59 = v39;
    v47 = v58;
    sub_255663294(v65, v58, &qword_27F7BF500, &unk_25575B3E0);
    v48 = v60;
    (*(v42 + 56))(v60, 1, 1, v41);
    v49 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    v50 = v49[5];
    (*(v64 + 56))(v48 + v50, 1, 1, v37);
    v51 = v49[6];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
    v53 = *(*(v52 - 8) + 56);
    v53(v48 + v51, 1, 1, v52);
    v54 = v49[7];
    v53(v48 + v54, 1, 1, v52);
    sub_25568CFC8(v61, v48, &qword_27F7BF4F0, &qword_25575B3D0);
    sub_25568CFC8(v62, v48 + v50, &qword_27F7BF4F8, &qword_25575B3D8);
    sub_25568CFC8(v46, v48 + v51, &qword_27F7BF500, &unk_25575B3E0);
    v55 = v48 + v54;
    v39 = v59;
    sub_25568CFC8(v47, v55, &qword_27F7BF500, &unk_25575B3E0);
    sub_255674B20(v63, &qword_27F7BF4F0, &qword_25575B3D0);
    (*(*(v49 - 1) + 56))(v48, 0, 1, v49);
  }

  sub_255674B20(v65, &qword_27F7BF500, &unk_25575B3E0);
  sub_255674B20(v66, &qword_27F7BF500, &unk_25575B3E0);
  return sub_255674B20(v39, &qword_27F7BF4F8, &qword_25575B3D8);
}

BOOL MergeableEntryAssetsPlacement.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v51 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v48 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v48 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v48 - v29;
  v57 = a1;
  sub_255663294(a1, v25, &qword_27F7BF4F0, &qword_25575B3D0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_255674B20(v25, &qword_27F7BF4F0, &qword_25575B3D0);
    v31 = v56;
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    v31 = v56;
    v32 = sub_25574F6F0();
    (*(v27 + 8))(v30, v26);
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  sub_255663294(v57 + v33[5], v15, &qword_27F7BF4F8, &qword_25575B3D8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_255674B20(v15, &qword_27F7BF4F8, &qword_25575B3D8);
  }

  else
  {
    v34 = v50;
    (*(v17 + 32))(v50, v15, v16);
    v35 = v31 + *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
    v36 = v51;
    sub_25574F390();
    LOBYTE(v35) = sub_25574F480();
    v37 = *(v17 + 8);
    v37(v36, v16);
    v37(v34, v16);
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v53;
  sub_255663294(v57 + v33[6], v53, &qword_27F7BF500, &unk_25575B3E0);
  v40 = v54;
  v39 = v55;
  v41 = *(v54 + 48);
  if (v41(v38, 1, v55) == 1)
  {
    sub_255674B20(v38, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
    v42 = v49;
    (*(v40 + 32))(v49, v38, v39);
    v43 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    LOBYTE(v43) = sub_25574FCE0();
    (*(v40 + 8))(v42, v39);
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  v44 = v52;
  sub_255663294(v57 + v33[7], v52, &qword_27F7BF500, &unk_25575B3E0);
  if (v41(v44, 1, v39) == 1)
  {
    sub_255674B20(v44, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  v45 = v48;
  (*(v40 + 32))(v48, v44, v39);
  v46 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  LOBYTE(v46) = sub_25574FCE0();
  (*(v40 + 8))(v45, v39);
  return (v46 & 1) != 0;
}

BOOL MergeableEntryAssetsPlacement.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v64 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v63 = &v54[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v60 = &v54[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v54[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v62 = *(v17 - 8);
  v18 = *(v62 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v54[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v54[-v22];
  MEMORY[0x28223BE20](v21);
  v57 = &v54[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v54[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v54[-v32];
  v34 = MergeableEntryAssetsPlacement.canMerge(delta:)(a1);
  if (v34)
  {
    v55 = v34;
    v56 = a1;
    sub_255663294(a1, v28, &qword_27F7BF4F0, &qword_25575B3D0);
    v35 = (*(v30 + 48))(v28, 1, v29);
    v58 = v1;
    if (v35 == 1)
    {
      sub_255674B20(v28, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      (*(v30 + 32))(v33, v28, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
      sub_25574F690();
      (*(v30 + 8))(v33, v29);
    }

    v37 = v65;
    v36 = v66;
    v38 = v62;
    v39 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    v40 = v56;
    sub_255663294(v56 + v39[5], v16, &qword_27F7BF4F8, &qword_25575B3D8);
    if ((*(v38 + 48))(v16, 1, v17) == 1)
    {
      sub_255674B20(v16, &qword_27F7BF4F8, &qword_25575B3D8);
    }

    else
    {
      v41 = *(v38 + 32);
      v65 = v39;
      v42 = v57;
      v41(v57, v16, v17);
      v43 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
      sub_25574F390();
      sub_25574F450();
      (*(v38 + 16))(v59, v23, v17);
      v36 = v66;
      sub_25574F3A0();
      v44 = *(v38 + 8);
      v44(v23, v17);
      v45 = v42;
      v39 = v65;
      v44(v45, v17);
    }

    v46 = v63;
    sub_255663294(v40 + v39[6], v63, &qword_27F7BF500, &unk_25575B3E0);
    v47 = *(v37 + 6);
    if (v47(v46, 1, v36) == 1)
    {
      sub_255674B20(v46, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v48 = v60;
      (*(v37 + 4))(v60, v46, v36);
      v49 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
      sub_25574FC40();
      (*(v37 + 1))(v48, v36);
    }

    v50 = v64;
    sub_255663294(v40 + v39[7], v64, &qword_27F7BF500, &unk_25575B3E0);
    if (v47(v50, 1, v36) == 1)
    {
      sub_255674B20(v50, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v51 = v61;
      (*(v37 + 4))(v61, v50, v36);
      v52 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
      sub_25574FC40();
      (*(v37 + 1))(v51, v36);
    }

    LOBYTE(v34) = v55;
  }

  return v34;
}

uint64_t sub_2556FA940(uint64_t a1)
{
  v2 = sub_2556647F4(&qword_27F7BF590, type metadata accessor for MergeableEntryAssetsPlacement);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_2556FA9D0(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v10 = v2 + a2[5];
  sub_25574F390();
  sub_25574F3B0();
  (*(v6 + 8))(v9, v5);
  v11 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  v12 = v4 + a2[7];
  sub_25574FBA0();
  v13 = v4 + a2[8];
  return sub_25574F7A0();
}

uint64_t sub_2556FAB40(int *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610() & 1) != 0 || (v9 = v1 + a1[5], sub_25574F390(), LOBYTE(v9) = sub_25574F400(), (*(v5 + 8))(v8, v4), (v9) || (v10 = a1[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FBF0()) || (v11 = v3 + a1[7], (sub_25574FBF0()))
  {
    v12 = 1;
  }

  else
  {
    v14 = v3 + a1[8];
    v12 = sub_25574F7D0();
  }

  return v12 & 1;
}

uint64_t sub_2556FACA8(uint64_t a1, int *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v14 = a2[5];
  sub_25574F390();
  sub_25574F3C0();
  (*(v7 + 16))(v11, v13, v6);
  sub_25574F3A0();
  (*(v7 + 8))(v13, v6);
  v15 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  v16 = v4 + a2[7];
  sub_25574FBB0();
  v17 = a2[8];
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_2556FAE78(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAssetsPlacement.merge(_:)(a1, v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2556FB0A8(int *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = v1 + a1[8];
  if (sub_25574F790() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()) && (v10 = v3 + a1[5], sub_25574F390(), LOBYTE(v10) = sub_25574F380(), (*(v5 + 8))(v8, v4), (v10) && (v11 = a1[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FB90()))
  {
    v12 = v3 + a1[7];
    v13 = sub_25574FB90();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_2556FB214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556FB278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2556FB2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s13JournalShared29MergeableEntryAssetsPlacementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390);
  if ((sub_255750100() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v13 = a1 + v12[5];
  sub_25574F390();
  v14 = a2 + v12[5];
  sub_25574F390();
  sub_255669798(&qword_27F7BF658, &qword_27F7BEDB0, &unk_255759240);
  LOBYTE(v14) = sub_255750100();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_255669798(&qword_27F7BF660, &qword_27F7BE0C8, &qword_255755C60);
  if (sub_255750100() & 1) != 0 && (v17 = v12[7], (sub_255750100()))
  {
    v18 = v12[8];
    v19 = sub_25574F7E0();
  }

  else
  {
LABEL_6:
    v19 = 0;
  }

  return v19 & 1;
}

void sub_2556FB7B8()
{
  sub_255672600(319, &qword_27F7BF5E8, &qword_27F7BF560, &qword_25575B4B8);
  if (v0 <= 0x3F)
  {
    sub_2556FB884();
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF5F0, &qword_27F7BF568, &unk_25575B4C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2556FB884()
{
  if (!qword_27F7BDF80)
  {
    sub_25574FB50();
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BDF80);
    }
  }
}

void sub_2556FB904()
{
  sub_255672600(319, &qword_27F7BF608, &qword_27F7BF540, &qword_25575B498);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BF610, &qword_27F7BF548, &unk_25575B4A0);
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF618, &qword_27F7BF550, &qword_25575E6C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2556FBA10()
{
  sub_255672600(319, &qword_27F7BF630, &qword_27F7BF510, &qword_25575B3F0);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BF638, &qword_27F7BEDB0, &unk_255759240);
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF640, &qword_27F7BF508, &qword_25575E670);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id WrappedMergeableEntryAttributes.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_255678764(a1, v3 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556740EC(a1);
  return v4;
}

id WrappedMergeableEntryAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2556FBC74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DrawingAssetMetadata.drawingData.getter()
{
  v1 = *v0;
  sub_255674F54(*v0, *(v0 + 8));
  return v1;
}

uint64_t DrawingAssetMetadata.indexableContent.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DrawingAssetMetadata.init(drawingData:indexableContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t sub_2556FBD30()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x44676E6977617264;
  }

  *v0;
  return result;
}

uint64_t sub_2556FBD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44676E6977617264 && a2 == 0xEB00000000617461;
  if (v6 || (sub_255750EB0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002557533F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255750EB0();

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

uint64_t sub_2556FBE60(uint64_t a1)
{
  v2 = sub_2556FC078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556FBE9C(uint64_t a1)
{
  v2 = sub_2556FC078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DrawingAssetMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF690, &qword_25575B8C0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v13[1] = v1[3];
  v13[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255674F54(v8, v9);
  sub_2556FC078();
  sub_255750FF0();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_255687198();
  sub_255750E30();
  sub_2556755A8(v15, v16);
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_255750DB0();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_2556FC078()
{
  result = qword_27F7BF698;
  if (!qword_27F7BF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF698);
  }

  return result;
}

uint64_t DrawingAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF6A0, &qword_25575B8C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556FC078();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_255675208();
  sub_255750D80();
  v11 = v19;
  v18 = v20;
  LOBYTE(v19) = 1;
  v12 = sub_255750D00();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v18;
  *a2 = v11;
  a2[1] = v15;
  a2[2] = v12;
  a2[3] = v14;
  sub_255674F54(v11, v15);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2556755A8(v11, v15);
}

unint64_t sub_2556FC2F8(uint64_t a1)
{
  *(a1 + 8) = sub_2556FC328();
  result = sub_2556FC37C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2556FC328()
{
  result = qword_27F7BF6A8;
  if (!qword_27F7BF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6A8);
  }

  return result;
}

unint64_t sub_2556FC37C()
{
  result = qword_27F7BF6B0;
  if (!qword_27F7BF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6B0);
  }

  return result;
}

uint64_t sub_2556FC400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2556FC45C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_2556FC4D4()
{
  result = qword_27F7BF6B8;
  if (!qword_27F7BF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6B8);
  }

  return result;
}

unint64_t sub_2556FC52C()
{
  result = qword_27F7BF6C0;
  if (!qword_27F7BF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6C0);
  }

  return result;
}

unint64_t sub_2556FC584()
{
  result = qword_27F7BF6C8;
  if (!qword_27F7BF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6C8);
  }

  return result;
}

uint64_t sub_2556FC5D8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AssetSource.rawValue.getter();
  v4 = v3;
  if (v2 == AssetSource.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255750EB0();
  }

  return v7 & 1;
}

unint64_t sub_2556FC678()
{
  result = qword_27F7BF6D0;
  if (!qword_27F7BF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6D0);
  }

  return result;
}

uint64_t sub_2556FC6CC()
{
  v1 = *v0;
  sub_255750F80();
  AssetSource.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556FC734()
{
  v2 = *v0;
  AssetSource.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556FC798()
{
  v1 = *v0;
  sub_255750F80();
  AssetSource.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556FC8B8()
{
  result = qword_27F7BF6D8;
  if (!qword_27F7BF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6D8);
  }

  return result;
}

uint64_t sub_2556FC944()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF6F8, &qword_25575BC58);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_25574F290();
  __swift_allocate_value_buffer(v4, qword_27F7BF6E0);
  __swift_project_value_buffer(v4, qword_27F7BF6E0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_25574F280();
}

uint64_t static AppInfo.exportContentType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7BD7B8 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F290();
  v3 = __swift_project_value_buffer(v2, qword_27F7BF6E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2556FCB78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  v4 = (v3 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_2556FCC44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2556FCDA0(v2, v3);
}

uint64_t sub_2556FCC84()
{
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  v1 = (v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t type metadata accessor for ObservableJournal()
{
  result = qword_27F7BF730;
  if (!qword_27F7BF730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2556FCDA0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = v5[1];
      if (sub_255750EB0())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F180();
}

uint64_t sub_2556FCF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_2556FCFA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  *v4 = v1;
  swift_getKeyPath();
  sub_25574F1B0();

  v4[7] = sub_2556FCB18();
  return sub_2556FD0DC;
}

uint64_t sub_2556FD14C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  v4 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  return sub_255663294(v3 + v4, a2, &qword_27F7BFFE0, &qword_25575BCB0);
}

uint64_t sub_2556FD224(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_255663294(a1, &v10 - v6, &qword_27F7BFFE0, &qword_25575BCB0);
  v8 = *a2;
  return sub_2556FD3A8(v7);
}

uint64_t sub_2556FD2D0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  v3 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  return sub_255663294(v5 + v3, a1, &qword_27F7BFFE0, &qword_25575BCB0);
}

uint64_t sub_2556FD3A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  sub_255663294(v1 + v7, v6, &qword_27F7BFFE0, &qword_25575BCB0);
  v8 = sub_2557026CC(v6, a1);
  sub_255674B20(v6, &qword_27F7BFFE0, &qword_25575BCB0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
    sub_25574F180();
  }

  else
  {
    sub_255663294(a1, v6, &qword_27F7BFFE0, &qword_25575BCB0);
    swift_beginAccess();
    sub_25570296C(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
}

uint64_t sub_2556FD5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_255663294(a2, &v10 - v6, &qword_27F7BFFE0, &qword_25575BCB0);
  v8 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  sub_25570296C(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_2556FD68C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  *v4 = v1;
  swift_getKeyPath();
  sub_25574F1B0();

  v4[7] = sub_2556FD0E8();
  return sub_2556FD7C4;
}

void sub_2556FD7D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_25574F1A0();

  free(v1);
}

uint64_t sub_2556FD864@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  v3 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  v4 = sub_25574F0D0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_2556FD95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
  sub_25574F190();

  v4 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  v5 = sub_25574F0D0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2556FDA54(uint64_t a1, uint64_t *a2)
{
  v4 = sub_25574F0D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_2556FDB20(v7);
}

uint64_t sub_2556FDB20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_255703208(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_255750100();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
    sub_25574F180();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_2556FDDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t ObservableJournal.__allocating_init(journalID:context:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2557029F8(a1, a2);

  return v7;
}

uint64_t ObservableJournal.init(journalID:context:)(uint64_t a1, void *a2)
{
  v3 = sub_2557029F8(a1, a2);

  return v3;
}

void sub_2556FDF64(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v77 - v6;
  v93 = sub_25574F0D0();
  v8 = *(v93 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v93);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v92 = &v77 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF748, &qword_25575BD20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v77 - v19;
  sub_255663294(a1, &v77 - v19, &qword_27F7BF748, &qword_25575BD20);
  v21 = sub_25574EBA0();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_255674B20(v20, &qword_27F7BF748, &qword_25575BD20);
    return;
  }

  v23 = sub_25574EB90();
  (*(v22 + 8))(v20, v21);
  if (v23)
  {
    v24 = *MEMORY[0x277CBE310];
    v96 = sub_2557501B0();
    v97 = v25;
    sub_255750AA0();
    v26 = MEMORY[0x277D84F90];
    if (*(v23 + 16) && (v27 = sub_255674984(v99), (v28 & 1) != 0))
    {
      sub_255678EBC(*(v23 + 56) + 32 * v27, v98);
      sub_2556A7148(v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE388, &qword_255756A10);
      if (swift_dynamicCast())
      {
        v29 = v96;
        goto LABEL_11;
      }
    }

    else
    {
      sub_2556A7148(v99);
    }

    if (v26 >> 62 && sub_255750A30())
    {
      sub_255725FDC(MEMORY[0x277D84F90]);
      v29 = v76;
    }

    else
    {
      v29 = MEMORY[0x277D84FA0];
    }

LABEL_11:
    v30 = *MEMORY[0x277CBE2C0];
    v96 = sub_2557501B0();
    v97 = v31;
    sub_255750AA0();
    if (*(v23 + 16) && (v32 = sub_255674984(v99), (v33 & 1) != 0))
    {
      sub_255678EBC(*(v23 + 56) + 32 * v32, v98);
      sub_2556A7148(v99);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE388, &qword_255756A10);
      if (swift_dynamicCast())
      {
        v34 = v96;
LABEL_18:
        v87 = v12;
        v89 = v16;
        v78 = v7;
        v88 = v2;
        sub_2556FE8E4(v34, v29);
        v81 = v35;
        if ((v35 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_2557509F0();
          sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
          sub_25568B170();
          sub_2557505C0();
          v36 = v99[0];
          v37 = v99[1];
          v38 = v99[2];
          v39 = v99[3];
          v40 = v99[4];
        }

        else
        {
          v41 = -1 << *(v35 + 32);
          v37 = v35 + 56;
          v38 = ~v41;
          v42 = -v41;
          if (v42 < 64)
          {
            v43 = ~(-1 << v42);
          }

          else
          {
            v43 = -1;
          }

          v40 = v43 & *(v35 + 56);
          v39 = 0;
        }

        v80 = v38;
        v44 = (v38 + 64) >> 6;
        v86 = (v8 + 32);
        v85 = (v8 + 16);
        v45 = (v8 + 8);
        v79 = "assetsFileManager";
        v46 = &property descriptor for JournalMO.isUploadedToCloud;
        v84 = v36;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_25:
        while (2)
        {
          v47 = sub_255750A60();
          if (!v47 || (v95 = v47, sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438), swift_dynamicCast(), v38 = *&v98[0], v48 = v39, v49 = v40, !*&v98[0]))
          {
LABEL_45:
            sub_25568B1C8();

            return;
          }

          while (1)
          {
            v94 = v49;
            v91 = type metadata accessor for JournalMO();
            v52 = swift_dynamicCastClass();
            if (!v52)
            {
              goto LABEL_40;
            }

            v53 = v52;
            v38 = v38;
            v54 = [v53 v46[125]];
            if (!v54)
            {
              break;
            }

            v90 = v38;
            v82 = v40;
            v83 = v39;
            v55 = v92;
            v56 = v54;
            sub_25574F080();

            v57 = v89;
            (*v86)(v89, v55, v93);
            swift_getKeyPath();
            v58 = v45;
            v59 = v88;
            *&v98[0] = v88;
            sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal);
            sub_25574F190();

            v60 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
            swift_beginAccess();
            v61 = v59 + v60;
            v62 = v93;
            v63 = v87;
            (*v85)(v87, v61, v93);
            v38 = sub_25574F070();
            v64 = *v58;
            v65 = v63;
            v45 = v58;
            (*v58)(v65, v62);
            if (v38)
            {
              v66 = [v53 changedValuesForCurrentEvent];
              v38 = sub_255750080();

              if (*(v38 + 16))
              {
                v67 = sub_2556632FC(0xD000000000000013, v79 | 0x8000000000000000);
                if (v68)
                {
                  v71 = v67;
                  sub_25568B1C8();
                  sub_255678EBC(*(v38 + 56) + 32 * v71, v98);
                  v72 = v90;

                  v64(v89, v62);
                  v38 = v72;

                  sub_255674B20(v98, &qword_27F7BE250, &qword_255756600);

                  if (swift_dynamicCastClass())
                  {
                    v73 = JournalMO.title.getter();
                    sub_2556FCDA0(v73, v74);
                    v75 = v78;
                    JournalMO.color.getter(v78);
                    sub_2556FD3A8(v75);

                    return;
                  }

LABEL_50:

                  return;
                }
              }

              v69 = v90;

              v64(v89, v62);
              memset(v98, 0, sizeof(v98));
              sub_255674B20(v98, &qword_27F7BE250, &qword_255756600);
            }

            else
            {
              v64(v57, v62);
              v70 = v90;
            }

            v39 = v48;
            v40 = v94;
            v36 = v84;
            v46 = &property descriptor for JournalMO.isUploadedToCloud;
            if (v84 < 0)
            {
              goto LABEL_25;
            }

LABEL_28:
            v50 = v39;
            v51 = v40;
            v48 = v39;
            if (!v40)
            {
              while (1)
              {
                v48 = v50 + 1;
                if (__OFADD__(v50, 1))
                {
                  break;
                }

                if (v48 >= v44)
                {
                  goto LABEL_45;
                }

                v51 = *(v37 + 8 * v48);
                ++v50;
                if (v51)
                {
                  goto LABEL_32;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_32:
            v49 = (v51 - 1) & v51;
            v38 = *(*(v36 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v51)))));
            if (!v38)
            {
              goto LABEL_45;
            }
          }

LABEL_40:
          v39 = v48;
          v40 = v94;
          if (v36 < 0)
          {
            continue;
          }

          goto LABEL_28;
        }
      }
    }

    else
    {

      sub_2556A7148(v99);
    }

    if (v26 >> 62 && sub_255750A30())
    {
      sub_255725FDC(MEMORY[0x277D84F90]);
    }

    else
    {
      v34 = MEMORY[0x277D84FA0];
    }

    goto LABEL_18;
  }
}

void sub_2556FE8E4(unint64_t a1, void *a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2557509F0();
    sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
    sub_25568B170();
    sub_2557505C0();
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
    v6 = v16[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  v10 = (v4 + 64) >> 6;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_25568B1C8();
      return;
    }

    while (1)
    {
      sub_2556FF6F4(v16, v15, &qword_27F7BDDA8, 0x277CBE438, &qword_27F7BF750, &qword_25575BD50);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_255750A60())
      {
        sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v5;
        v14 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = v3[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t ObservableJournal.deinit()
{
  v1 = OBJC_IVAR____TtC13JournalShared17ObservableJournal_logger;
  v2 = sub_25574F2C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title + 8);

  sub_255674B20(v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__color, &qword_27F7BFFE0, &qword_25575BCB0);
  v4 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  v5 = sub_25574F0D0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  v7 = sub_25574F1D0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t ObservableJournal.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13JournalShared17ObservableJournal_logger;
  v2 = sub_25574F2C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title + 8);

  sub_255674B20(v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__color, &qword_27F7BFFE0, &qword_25575BCB0);
  v4 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  v5 = sub_25574F0D0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  v7 = sub_25574F1D0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2556FEE80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25574FF90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8]);
  v36 = a2;
  v13 = sub_255750090();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_255703208(&qword_27F7BF788, MEMORY[0x277CFB7B8]);
      v23 = sub_255750100();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_255700B80(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2556FF184(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_255750090();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_255703208(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
      v23 = sub_255750100();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_255700E48(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2556FF490(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_255750A40();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_255750A30();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2556FF994(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2557008DC(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_255700AFC(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_255750930();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_255750940();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_255701110(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2556FF6F4(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_255750A40();

    if (v17)
    {

      sub_255669A88(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_255750A30();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2556FFB8C(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2557008DC(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_255700AFC(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_255669A88(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_255750930();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_255750940();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_255701294(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2556FF994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_255750AD0();
    v22 = v8;
    sub_2557509F0();
    if (sub_255750A60())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_2557008DC(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_255750930();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_255750A60());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2556FFB8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_255750AD0();
    v24 = v10;
    sub_2557509F0();
    if (sub_255750A60())
    {
      sub_255669A88(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2557008DC(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_255750930();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_255750A60());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2556FFD8C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25574FF90();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF790, &qword_25575BD98);
  result = sub_255750AC0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8]);
      result = sub_255750090();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2557000E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF778, &qword_25575BD90);
  result = sub_255750AC0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_255750F80();
      sub_2557501F0();
      result = sub_255750FD0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_255700348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF768, &unk_25575BD80);
  result = sub_255750AC0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_255750F70();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25570056C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25574F0D0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE838, &qword_255758008);
  result = sub_255750AC0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      result = sub_255750090();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2557008DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_255750AC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_255750930();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_255700AFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_255750930();
  v5 = -1 << *(a2 + 32);
  result = sub_2557509D0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_255700B80(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25574FF90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2556FFD8C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2557016E8(MEMORY[0x277CFB7B8], &qword_27F7BF790, &qword_25575BD98);
      goto LABEL_12;
    }

    sub_255701A60(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8]);
  v15 = sub_255750090();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_255703208(&qword_27F7BF788, MEMORY[0x277CFB7B8]);
      v23 = sub_255750100();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_255750F00();
  __break(1u);
  return result;
}

uint64_t sub_255700E48(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25570056C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2557016E8(MEMORY[0x277CC95F0], &qword_27F7BE838, &qword_255758008);
      goto LABEL_12;
    }

    sub_2557021A4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v15 = sub_255750090();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_255703208(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
      v23 = sub_255750100();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_255750F00();
  __break(1u);
  return result;
}

void sub_255701110(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2557008DC(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_255701920(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2557024C0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_255750930();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_255750940();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_255750F00();
  __break(1u);
}

void sub_255701294(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2557008DC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_255701920(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2557024C0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_255750930();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_255669A88(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_255750940();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_255750F00();
  __break(1u);
}

void *sub_255701424()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF778, &qword_25575BD90);
  v2 = *v0;
  v3 = sub_255750AB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_255701580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF768, &unk_25575BD80);
  v2 = *v0;
  v3 = sub_255750AB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_2557016E8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_255750AB0();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
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
    *v6 = v14;
  }

  return result;
}

id sub_255701920(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_255750AB0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_255701A60(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25574FF90();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF790, &qword_25575BD98);
  v10 = sub_255750AC0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8]);
      result = sub_255750090();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_255701D7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF778, &qword_25575BD90);
  result = sub_255750AC0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_255750F80();

      sub_2557501F0();
      result = sub_255750FD0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_255701FB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF768, &unk_25575BD80);
  result = sub_255750AC0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_255750F70();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2557021A4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25574F0D0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE838, &qword_255758008);
  v10 = sub_255750AC0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      result = sub_255750090();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2557024C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_255750AC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_255750930();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_2557026CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableColor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF760, &qword_25575BD68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_255663294(a1, &v23 - v16, &qword_27F7BFFE0, &qword_25575BCB0);
  sub_255663294(a2, &v17[v18], &qword_27F7BFFE0, &qword_25575BCB0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_255663294(v17, v12, &qword_27F7BFFE0, &qword_25575BCB0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2557032C8(&v17[v18], v8);
      v21 = _s13JournalShared14MergeableColorO2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_25570326C(v8);
      sub_25570326C(v12);
      sub_255674B20(v17, &qword_27F7BFFE0, &qword_25575BCB0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    sub_25570326C(v12);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_255674B20(v17, &qword_27F7BF760, &qword_25575BD68);
    v20 = 1;
    return v20 & 1;
  }

  sub_255674B20(v17, &qword_27F7BFFE0, &qword_25575BCB0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_25570296C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2557029F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v31 - v12;
  v13 = OBJC_IVAR____TtC13JournalShared17ObservableJournal_logger;
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v14 = sub_25574F2C0();
  v15 = __swift_project_value_buffer(v14, qword_27F7C04B0);
  (*(*(v14 - 8) + 16))(v3 + v13, v15, v14);
  v16 = (v3 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  v18 = type metadata accessor for MergeableColor(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v3 + v17, 1, 1, v18);
  sub_25574F1C0();
  v34 = v7;
  (*(v7 + 16))(v3 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID, a1, v6);
  v35 = a2;
  sub_2557282C4(a1);
  v36 = a1;
  if (v20)
  {
    v21 = v20;
    v22 = JournalMO.title.getter();
    v24 = v23;

    sub_2556FCDA0(v22, v24);
    v25 = v21;
    v26 = v32;
    JournalMO.color.getter(v32);
  }

  else
  {
    sub_2556FCDA0(0, 0);
    v26 = v32;
    v19(v32, 1, 1, v18);
    v25 = 0;
  }

  sub_2556FD3A8(v26);

  v28 = v34;
  v27 = v35;
  v29 = [objc_opt_self() defaultCenter];
  [v29 addObserver:v3 selector:sel_contextObjectsDidChangeWithNotification_ name:*MEMORY[0x277CBE1B8] object:v27];

  (*(v28 + 8))(v36, v6);
  return v3;
}

void sub_255702F64()
{
  v0 = sub_25574F2C0();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2557031B0();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_25574F0D0();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_25574F1D0();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2557031B0()
{
  if (!qword_27F7BF740)
  {
    type metadata accessor for MergeableColor(255);
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BF740);
    }
  }
}

uint64_t sub_255703208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25570326C(uint64_t a1)
{
  v2 = type metadata accessor for MergeableColor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2557032C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableColor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255703330@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7A8, &unk_25575BDB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v77 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  v16 = sub_25574F020();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v78 = &v77 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v77 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v77 - v27;
  v29 = [v1 bundleDate];
  if (v29)
  {
    v30 = v29;
    sub_25574EFF0();

    v80 = *(v17 + 32);
    v81 = v17 + 32;
    v80(v28, v26, v16);
    v31 = JournalEntryMO.assetsArray.getter();
    v32 = v31;
    v82 = a1;
    v83 = v17;
    v85 = v16;
    if (v31 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
    {
      v34 = 0;
      v86 = v32 & 0xFFFFFFFFFFFFFF8;
      v87 = v32 & 0xC000000000000001;
      v77 = (v83 + 48);
      v79 = (v83 + 56);
      while (1)
      {
        if (v87)
        {
          v35 = MEMORY[0x259C3E830](v34, v32);
        }

        else
        {
          if (v34 >= *(v86 + 16))
          {
            goto LABEL_42;
          }

          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v38 = [v35 source];
        if (v38)
        {
          v39 = v28;
          v40 = v15;
          v41 = v38;
          v42 = sub_2557501B0();
          v44 = v43;

          if (v42 == 0x6974736567677573 && v44 == 0xEF74656568536E6FLL)
          {
          }

          else
          {
            v46 = sub_255750EB0();

            if ((v46 & 1) == 0)
            {

              v15 = v40;
              v28 = v39;
              goto LABEL_6;
            }
          }

          v47 = [v36 assetType];
          if (v47)
          {
            v48 = v47;
            v49 = sub_2557501B0();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0xE000000000000000;
          }

          v52._countAndFlagsBits = v49;
          v52._object = v51;
          AssetType.init(rawValue:)(v52);
          v28 = v39;
          if (v89 == 23)
          {

            v15 = v40;
            goto LABEL_6;
          }

          v88 = v89;
          v15 = v40;
          if (AssetType.metadataType.getter())
          {
            type metadata accessor for PhotoLibraryAssetMetadata();
            if (swift_dynamicCastMetatype())
            {
              v53 = [v36 assetMetaData];
              if (v53)
              {
                v54 = v53;
                v55 = sub_25574EF90();
                v57 = v56;

                v58 = v84;
                sub_25573FA94(v84);

                sub_2556755A8(v55, v57);
                v59 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly();
                if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
                {
                  sub_255674B20(v58, &qword_27F7BF7A8, &unk_25575BDB0);
                  v15 = v40;
                  v28 = v39;
                  goto LABEL_31;
                }

                v15 = v40;
                sub_2556700F4(v58, v40);
                sub_255704434(v58);
                v28 = v39;
                if ((*v77)(v40, 1, v85) != 1)
                {
                  v70 = v83 + 8;
                  v71 = v85;
                  (*(v83 + 8))(v28, v85);

                  v72 = v78;
                  v73 = v80;
                  v80(v78, v40, v71);
                  v74 = v82;
                  v73(v82, v72, v71);
                  return (*(v70 + 48))(v74, 0, 1, v71);
                }
              }

              else
              {

LABEL_31:
                (*v79)(v15, 1, 1, v85);
              }

              sub_255674B20(v15, &qword_27F7BEB40, &unk_255754E40);
              goto LABEL_6;
            }
          }
        }

LABEL_6:
        ++v34;
        if (v37 == i)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    v75 = v82;
    v76 = v85;
    v80(v82, v28, v85);
    return (*(v83 + 56))(v75, 0, 1, v76);
  }

  else
  {
    v60 = [v1 entryDate];
    if (v60)
    {
      v61 = v60;
      sub_25574EFF0();

      v62 = v17;
      v63 = *(v17 + 32);
      v63(v13, v21, v16);
      v64 = *(v62 + 56);
      v64(v13, 0, 1, v16);
      v63(a1, v13, v16);
      return (v64)(a1, 0, 1, v16);
    }

    else
    {
      v66 = *(v17 + 56);
      v67 = 1;
      v66(v13, 1, 1, v16);
      v68 = [v1 createdDate];
      if (v68)
      {
        v69 = v68;
        sub_25574EFF0();

        v67 = 0;
      }

      v66(v10, v67, 1, v16);
      sub_2556719B8(v10, a1);
      result = (*(v17 + 48))(v13, 1, v16);
      if (result != 1)
      {
        return sub_255674B20(v13, &qword_27F7BEB40, &unk_255754E40);
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall JournalEntryMO.updateSortingColumns()()
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF798, &unk_25575BDA0);
  v1 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v3 = &v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v47 = &v40 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_25574F020();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v45 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - v21;
  sub_255703330(v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) != 1)
  {
    v41 = v8;
    v44 = v3;
    v40 = *(v17 + 32);
    v40(v22, v15, v16);
    v24 = *(v17 + 16);
    v43 = v22;
    v24(v13, v22, v16);
    v25 = *(v17 + 56);
    v26 = 1;
    v25(v13, 0, 1, v16);
    v42 = v0;
    v27 = [v0 momentDateForSorting];
    v28 = v47;
    if (v27)
    {
      v29 = v27;
      sub_25574EFF0();

      v26 = 0;
    }

    v25(v28, v26, 1, v16);
    v30 = *(v46 + 48);
    v31 = v44;
    sub_2556700F4(v13, v44);
    sub_2556700F4(v28, v31 + v30);
    if (v23(v31, 1, v16) == 1)
    {
      sub_255674B20(v28, &qword_27F7BEB40, &unk_255754E40);
      sub_255674B20(v13, &qword_27F7BEB40, &unk_255754E40);
      v32 = v23(v31 + v30, 1, v16);
      v33 = v43;
      if (v32 == 1)
      {
        sub_255674B20(v31, &qword_27F7BEB40, &unk_255754E40);
        (*(v17 + 8))(v33, v16);
        return 0;
      }
    }

    else
    {
      v34 = v41;
      sub_2556700F4(v31, v41);
      if (v23(v31 + v30, 1, v16) != 1)
      {
        v37 = (v31 + v30);
        v38 = v45;
        v40(v45, v37, v16);
        sub_255704578(&qword_27F7BF7A0);
        LODWORD(v46) = sub_255750100();
        v39 = *(v17 + 8);
        v39(v38, v16);
        sub_255674B20(v47, &qword_27F7BEB40, &unk_255754E40);
        sub_255674B20(v13, &qword_27F7BEB40, &unk_255754E40);
        v39(v34, v16);
        sub_255674B20(v31, &qword_27F7BEB40, &unk_255754E40);
        v33 = v43;
        if (v46)
        {
          v39(v43, v16);
          return 0;
        }

LABEL_11:
        v35 = sub_25574EFC0();
        [v42 setMomentDateForSorting_];

        (*(v17 + 8))(v33, v16);
        return 1;
      }

      sub_255674B20(v47, &qword_27F7BEB40, &unk_255754E40);
      sub_255674B20(v13, &qword_27F7BEB40, &unk_255754E40);
      (*(v17 + 8))(v34, v16);
      v33 = v43;
    }

    sub_255674B20(v31, &qword_27F7BF798, &unk_25575BDA0);
    goto LABEL_11;
  }

  sub_255674B20(v15, &qword_27F7BEB40, &unk_255754E40);
  return 0;
}

uint64_t sub_255704084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7C0, &qword_25575BE10);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255704524();
  sub_255750FE0();
  if (!v2)
  {
    v17 = v20;
    sub_25574F020();
    sub_255704578(&qword_27F7BDC38);
    sub_255750D40();
    (*(v21 + 8))(v11, v8);
    sub_2556719B8(v7, v15);
    sub_2557045BC(v15, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2557042D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255750EB0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255704358(uint64_t a1)
{
  v2 = sub_255704524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255704394(uint64_t a1)
{
  v2 = sub_255704524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t type metadata accessor for PhotoLibraryAssetMetadataDateOnly()
{
  result = qword_27F7BF7B0;
  if (!qword_27F7BF7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255704434(uint64_t a1)
{
  v2 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2557044B8()
{
  sub_25566E80C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_255704524()
{
  result = qword_27F7BF7C8;
  if (!qword_27F7BF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7C8);
  }

  return result;
}

uint64_t sub_255704578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25574F020();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2557045BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255704634()
{
  result = qword_27F7BF7D0;
  if (!qword_27F7BF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7D0);
  }

  return result;
}

unint64_t sub_25570468C()
{
  result = qword_27F7BF7D8;
  if (!qword_27F7BF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7D8);
  }

  return result;
}

unint64_t sub_2557046E4()
{
  result = qword_27F7BF7E0;
  if (!qword_27F7BF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7E0);
  }

  return result;
}

uint64_t Date.startOfDay.getter()
{
  v0 = sub_25574F160();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F140();
  sub_25574F110();
  return (*(v1 + 8))(v4, v0);
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_25574F020();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25574F160();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v39 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7E8, &qword_25575BF30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7F0, &qword_25575BF38);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v38 - v22;
  v38 = sub_25574ECE0();
  v24 = *(v38 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v38);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 56))(v23, 1, 1, v5);
  v28 = sub_25574F170();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  sub_25574ECD0();
  sub_25574ECB0();
  sub_25574ECC0();
  sub_25574F140();
  sub_25574F140();
  sub_25574F110();
  v29 = *(v6 + 8);
  v30 = v5;
  v29(v10, v5);
  v31 = v39;
  sub_25574F120();
  v33 = v40;
  v32 = v41;
  (*(v40 + 8))(v4, v41);
  v29(v12, v30);
  v34 = v27;
  v35 = v32;
  (*(v24 + 8))(v34, v38);
  v36 = *(v33 + 48);
  if (v36(v31, 1, v35) != 1)
  {
    return (*(v33 + 32))(v42, v31, v35);
  }

  (*(v33 + 16))(v42, v43, v35);
  result = (v36)(v31, 1, v35);
  if (result != 1)
  {
    return sub_255687634(v31);
  }

  return result;
}

uint64_t sub_255704D38(uint64_t (*a1)(uint64_t))
{
  v3 = sub_25574F160();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F140();
  LOBYTE(a1) = a1(v1);
  (*(v4 + 8))(v7, v3);
  return a1 & 1;
}

uint64_t sub_255704E24()
{
  sub_2557052A4();
  sub_2557050DC();

  return sub_25574FDD0();
}

uint64_t sub_255704E94()
{
  sub_2557052A4();
  sub_255705250();
  return sub_25574FDF0();
}

uint64_t sub_255704F00()
{
  sub_2557052A4();
  sub_255705250();
  return sub_25574FE00();
}

uint64_t sub_255704F5C(uint64_t a1)
{
  v2 = sub_2557052A4();
  v3 = sub_255705250();
  v4 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_255705014(uint64_t a1, uint64_t a2)
{
  v4 = sub_255705250();
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t MergeableWritingDirection.debugDescription.getter()
{
  v1 = 0x69526F547466656CLL;
  if (*v0 != 1)
  {
    v1 = 0x4C6F547468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727574616ELL;
  }
}

unint64_t sub_2557050DC()
{
  result = qword_27F7BF7F8;
  if (!qword_27F7BF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7F8);
  }

  return result;
}

unint64_t sub_255705134()
{
  result = qword_27F7BF800;
  if (!qword_27F7BF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF800);
  }

  return result;
}

unint64_t sub_25570518C()
{
  result = qword_27F7BF808;
  if (!qword_27F7BF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF808);
  }

  return result;
}

uint64_t sub_2557051E0()
{
  v1 = 0x69526F547466656CLL;
  if (*v0 != 1)
  {
    v1 = 0x4C6F547468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727574616ELL;
  }
}

unint64_t sub_255705250()
{
  result = qword_27F7BF810;
  if (!qword_27F7BF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF810);
  }

  return result;
}

unint64_t sub_2557052A4()
{
  result = qword_27F7BF818;
  if (!qword_27F7BF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF818);
  }

  return result;
}

uint64_t sub_2557052F8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF820);
  __swift_project_value_buffer(v0, qword_27F7BF820);
  return sub_25574F2B0();
}

id JournalEntryMO.deepCopy()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v73 - v4;
  v77 = type metadata accessor for MergeableEntryAttributes(0);
  v76 = *(v77 - 8);
  v5 = *(v76 + 64);
  v6 = MEMORY[0x28223BE20](v77);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v73 - v11;
  v87 = sub_25574EDF0();
  v94 = *(v87 - 8);
  v13 = *(v94 + 8);
  MEMORY[0x28223BE20](v87);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25574F0D0();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v81 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v73 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v73 - v23;
  sub_255705D68();
  v26 = v25;
  if (v25)
  {
    sub_25574F0C0();
    v27 = sub_25574F050();
    v28 = v17[1];
    v96 = v17 + 1;
    v97 = v16;
    v95 = v28;
    v28(v24, v16);
    v89 = v26;
    [v26 setId_];

    v92 = v1;
    v29 = JournalEntryMO.assetsArray.getter();
    if (v29 >> 62)
    {
      goto LABEL_41;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v73 = v12;
      v74 = v10;
      v88 = v29;
      if (!v30)
      {
        break;
      }

      v10 = 0;
      v91 = v29 & 0xC000000000000001;
      v83 = v29 & 0xFFFFFFFFFFFFFF8;
      v82 = v29 + 32;
      v86 = (v94 + 8);
      v80 = (v17 + 2);
      v85 = MEMORY[0x277D84F98];
      v12 = MEMORY[0x277D84F70];
      v31 = v97;
      v90 = v30;
      while (1)
      {
        if (v91)
        {
          v29 = MEMORY[0x259C3E830](v10, v88);
        }

        else
        {
          if (v10 >= *(v83 + 16))
          {
            goto LABEL_40;
          }

          v29 = *(v82 + 8 * v10);
        }

        v17 = v29;
        if (__OFADD__(v10++, 1))
        {
          break;
        }

        sub_255705D68();
        if (v33)
        {
          v34 = v33;
          sub_25574F0C0();
          v35 = sub_25574F050();
          v95(v24, v31);
          [v34 setId_];

          v36 = [v17 fileAttachments];
          if (!v36)
          {
            sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
            v36 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
          }

          sub_255750900();

          sub_25574EDE0();
          v94 = v17;
          while (v100)
          {
            sub_255663374(&v99, &v98);
            type metadata accessor for JournalEntryAssetFileAttachmentMO();
            if (swift_dynamicCast())
            {
              v50 = v102;
              sub_255705D68();
              if (v51)
              {
                v47 = v51;
                sub_25574F0C0();
                v48 = sub_25574F050();
                v49 = v97;
                v95(v24, v97);
                [v47 setId_];

                [v34 addFileAttachmentsObject_];
                v31 = v49;
              }

              else
              {

                v31 = v97;
              }
            }

            sub_25574EDE0();
          }

          (*v86)(v15, v87);
          [v89 addAssetsObject_];
          v37 = [v94 id];
          if (v37)
          {
            v38 = v84;
            v39 = v37;
            sub_25574F080();

            v40 = [v34 id];
            if (v40)
            {
              v41 = v81;
              v42 = v40;
              sub_25574F080();

              (*v80)(v24, v41, v31);
              v43 = v85;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v99 = v43;
              sub_255707328(v24, v38, isUniquelyReferenced_nonNull_native);
              v45 = v41;
              v46 = v95;
              v95(v45, v31);
              v46(v38, v31);
              v85 = v99;
            }

            else
            {
              v95(v38, v31);
            }
          }

          v52 = v93;
          v53 = v94;
          sub_255705FBC();
          v93 = v52;
          if (v52)
          {

            v26 = v89;

            return v26;
          }

          v17 = v34;
        }

        if (v10 == v90)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v72 = v29;
      v30 = sub_255750A30();
      v29 = v72;
    }

    v85 = MEMORY[0x277D84F98];
LABEL_28:

    v54 = sub_255707CD0();
    v55 = v79;
    MergeableProvider.unwrappedMergeableAttributes.getter(v54, v79);
    if ((*(v76 + 48))(v55, 1, v77) == 1)
    {

      sub_255674B20(v55, &qword_27F7BE7E8, &unk_255757F00);
      return v89;
    }

    else
    {
      v56 = v73;
      sub_2556DFBE0(v55, v73);
      v57 = v74;
      MergeableEntryAttributes.deepCopy(idMap:)(v85, v74);

      v58 = v75;
      sub_255678764(v57, v75);
      v59 = type metadata accessor for WrappedMergeableEntryAttributes(0);
      v60 = objc_allocWithZone(v59);
      sub_255678764(v58, v60 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
      v101.receiver = v60;
      v101.super_class = v59;
      v61 = objc_msgSendSuper2(&v101, sel_init);
      sub_2556740EC(v58);
      [v89 setMergeableAttributes_];

      JournalEntryMO.cacheJournalRelationships()();
      if (v62)
      {
        if (qword_27F7BD7C0 != -1)
        {
          swift_once();
        }

        v63 = sub_25574F2C0();
        __swift_project_value_buffer(v63, qword_27F7BF820);
        v64 = v62;
        v65 = sub_25574F2A0();
        v66 = sub_255750780();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          v69 = v62;
          v70 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 4) = v70;
          *v68 = v70;
          _os_log_impl(&dword_255661000, v65, v66, "JournalEntryMO.deepCopy() - error in cacheJournalRelationships(): %@", v67, 0xCu);
          sub_255674B20(v68, &qword_27F7BEC80, &qword_255757E90);
          MEMORY[0x259C3F520](v68, -1, -1);
          MEMORY[0x259C3F520](v67, -1, -1);
        }
      }

      sub_2556740EC(v57);
      sub_2556740EC(v56);
      return v89;
    }
  }

  return v26;
}

void sub_255705D68()
{
  swift_getObjectType();
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v22 = v1;
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v23 = v0;
    v3 = [v0 entity];
    v4 = [v3 attributesByName];

    sub_255669A88(0, &qword_27F7BF840, 0x277CBE358);
    v5 = sub_255750080();

    sub_255707760(v5);
    v7 = v6;

    v8 = 0;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v2;
      v14 = v8;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = (*(v7 + 48) + ((v14 << 10) | (16 * v15)));
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_255750180();
      v20 = [v23 valueForKey_];

      v21 = sub_255750180();

      v2 = v13;
      [v13 setValue:v20 forKey:v21];
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v7 + 64 + 8 * v14);
      ++v8;
      if (v11)
      {
        v13 = v2;
        v8 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_255705FBC()
{
  v2 = sub_25574EDF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 fileAttachments];
  if (!v7)
  {
    sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
    v7 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
  }

  sub_255750900();

  sub_25574EDE0();
  if (!v12)
  {
LABEL_9:
    (*(v3 + 8))(v6, v2);
    return;
  }

  while (1)
  {
    sub_255663374(&v11, &v10);
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    sub_25574EDE0();
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v8 = v9[1];
  sub_25570617C();
  if (!v1)
  {

    goto LABEL_5;
  }

  (*(v3 + 8))(v6, v2);
}

void sub_25570617C()
{
  v148 = *MEMORY[0x277D85DE8];
  v142 = sub_25574EE20();
  v144 = *(v142 - 8);
  v1 = *(v144 + 64);
  MEMORY[0x28223BE20](v142);
  v141 = v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25574EF10();
  v145 = *(v3 - 8);
  v4 = *(v145 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v138 = v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v136 = v121 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v137 = v121 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v139 = v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v134 = v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v135 = v121 - v16;
  MEMORY[0x28223BE20](v15);
  v143 = v121 - v17;
  v18 = sub_25574F0D0();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v121 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v121 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v121 - v34;
  v140 = v0;
  v36 = [v0 asset];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 entry];
    if (v38)
    {
      v132 = v3;
      v133 = v38;
      v39 = [v37 id];
      v131 = v22;
      if (v39)
      {
        v40 = v39;
        sub_25574F080();

        v41 = v19[7];
        v41(v33, 0, 1, v18);
      }

      else
      {
        v41 = v19[7];
        v41(v33, 1, 1, v18);
      }

      sub_2556B0D64(v33, v35);
      v42 = v19;
      v43 = v19[6];
      if (v43(v35, 1, v18))
      {

        v44 = v35;
LABEL_14:
        sub_255674B20(v44, &unk_27F7BED20, &unk_2557551D0);
        goto LABEL_15;
      }

      v128 = v43;
      v129 = v41;
      v130 = v37;
      v45 = v131;
      v127 = v42[2];
      (v127)(v131, v35, v18);
      sub_255674B20(v35, &unk_27F7BED20, &unk_2557551D0);
      v125 = sub_25574F040();
      v47 = v46;
      v126 = v42[1];
      v126(v45, v18);
      v48 = [v133 id];
      if (v48)
      {
        v49 = v48;
        sub_25574F080();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v132;
      v129(v27, v50, 1, v18);
      sub_2556B0D64(v27, v30);
      v52 = v128(v30, 1, v18);
      v53 = v130;
      if (v52)
      {

        v44 = v30;
        goto LABEL_14;
      }

      v129 = v47;
      v55 = v131;
      (v127)(v131, v30, v18);
      sub_255674B20(v30, &unk_27F7BED20, &unk_2557551D0);
      v56 = sub_25574F040();
      v58 = v57;
      v126(v55, v18);
      v59 = [v140 filePath];
      if (v59)
      {
        v121[2] = v56;
        v126 = v58;
        v60 = v59;
        v121[1] = sub_2557501B0();
        v62 = v61;
        v63 = [v60 lastPathComponent];

        if (!v63)
        {
          sub_2557501B0();
          v63 = sub_255750180();
        }

        v64 = v134;
        if (qword_27F7BD7F8 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for FileStoreConfiguration();
        v66 = __swift_project_value_buffer(v65, qword_27F7BFDF0);
        v67 = *(v65 + 24);
        v131 = v66;
        v127 = v67;
        LODWORD(v67) = v67[v66];
        v121[0] = v65;
        v128 = v63;
        if (v67)
        {
          v124 = v62;
          v68 = *(v65 + 20);
          v69 = v144;
          v70 = *(v144 + 104);
          v71 = (v144 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v72 = v141;
          v73 = v142;
          (v70)(v141, *MEMORY[0x277CC91D8], v142);
          sub_255663E98();
          sub_25574EEF0();
          (*(v69 + 8))(v72, v73);
          v74 = v70;
        }

        else
        {
          sub_25574EE50();
          v69 = v144;
          v74 = *(v144 + 104);
          v71 = (v144 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v72 = v141;
          v73 = v142;
        }

        v75 = v64;
        v146 = 0x656D686361747441;
        v147 = 0xEB0000000073746ELL;
        v122 = *MEMORY[0x277CC91C0];
        v134 = v74;
        v124 = v71;
        (v74)(v72);
        sub_255663E98();
        v76 = v135;
        sub_25574EF00();
        v77 = *(v69 + 8);
        v144 = v69 + 8;
        v77(v72, v73);
        v78 = v77;
        v79 = v145 + 8;
        v80 = *(v145 + 8);
        v80(v75, v51);
        sub_25574EEA0();

        v145 = v79;
        v80(v76, v51);
        v81 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v82 = sub_255750180();

        v83 = [v81 initWithString_];

        v84 = sub_255750180();

        v85 = [v83 stringByAppendingPathComponent_];

        if (!v85)
        {
          sub_2557501B0();
          v85 = sub_255750180();
        }

        v129 = v78;
        v86 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

        v87 = v128;
        v88 = [v86 stringByAppendingPathComponent_];

        v89 = v88;
        if (!v88)
        {
          sub_2557501B0();
          v89 = sub_255750180();
        }

        v135 = v89;
        v126 = sub_2557501B0();
        v128 = v90;
        v91 = v127[v131];
        v93 = v141;
        v92 = v142;
        v94 = v136;
        v123 = v80;
        if (v91)
        {
          v95 = *(v121[0] + 20);
          v96 = v134;
          (v134)(v141, *MEMORY[0x277CC91D8], v142);
          sub_25574EEF0();
          v97 = v129;
          (v129)(v93, v92);
          v98 = v94;
        }

        else
        {
          sub_25574EE50();
          v98 = v94;
          v96 = v134;
          v97 = v129;
        }

        v146 = 0x656D686361747441;
        v147 = 0xEB0000000073746ELL;
        v96(v93, v122, v92);
        v99 = v137;
        sub_25574EF00();
        v97(v93, v92);
        v100 = v132;
        v101 = v123;
        v123(v98, v132);
        v102 = v139;
        sub_25574EEA0();

        v103 = v99;
        v104 = v102;
        v101(v103, v100);
        v105 = objc_opt_self();
        v106 = [v105 defaultManager];
        v107 = v138;
        sub_25574EEB0();
        v108 = sub_25574EE80();
        v101(v107, v100);
        v146 = 0;
        LODWORD(v100) = [v106 createDirectoryAtURL:v108 withIntermediateDirectories:1 attributes:0 error:&v146];

        v109 = v146;
        if (v100)
        {
          v110 = v146;
          v111 = [v105 defaultManager];
          v112 = v143;
          v113 = sub_25574EE80();
          v114 = sub_25574EE80();
          v146 = 0;
          v115 = [v111 copyItemAtURL:v113 toURL:v114 error:&v146];

          v109 = v146;
          v116 = v135;
          if (v115)
          {
            v117 = v146;
            [v140 setFilePath_];

            v118 = v132;
            v101(v104, v132);
            v101(v112, v118);
            goto LABEL_15;
          }
        }

        else
        {
          v112 = v143;
          v116 = v135;
        }

        v119 = v109;

        sub_25574ED90();
        swift_willThrow();

        v120 = v132;
        v101(v104, v132);
        v101(v112, v120);
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

LABEL_15:
  v54 = *MEMORY[0x277D85DE8];
}

uint64_t sub_255706FB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_255674870(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_255743CA8(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_255674870(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for Dataclass(0);
        sub_255750F10();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_255742A5C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_255707118(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25567AF04(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_255742E24();
      goto LABEL_7;
    }

    sub_2557442B8(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_25567AF04(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25570750C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_255750F10();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_255707328(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25574F0D0();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25567AF04(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2557433F0();
      goto LABEL_9;
    }

    sub_255744B28(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_25567AF04(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_255750F10();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_25570760C(v14, v11, a1, v23);
  }
}

uint64_t sub_25570750C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25574F0D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

uint64_t sub_25570760C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
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

void *sub_2557076E8(void *result, uint64_t a2, uint64_t a3)
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

    sub_2557078C0(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_255707760(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_2557076E8(v8, v4, v2);
      MEMORY[0x259C3F520](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_2557078C0(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

void sub_2557078C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v24 = 0;
  v25 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v26 = &v21;
    v13 = (*(v25 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(v25 + 56) + 8 * v12);
    v27[0] = *v13;
    v27[1] = v14;
    MEMORY[0x28223BE20](a1);
    v20[2] = v27;

    v16 = v15;
    v17 = v28;
    v18 = sub_2556A5CA8(sub_255707D28, v20, &unk_28678A178);
    v28 = v17;
    swift_arrayDestroy();

    if ((v18 & 1) == 0)
    {
      *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_255707A90(v23, v22, v24, v25);
        return;
      }
    }
  }

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
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_255707A90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF848, &qword_25575C148);
  result = sub_255750C90();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_255750F80();

    v34 = v21;
    sub_2557501F0();
    result = sub_255750FD0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_255707CD0()
{
  result = qword_27F7BF838;
  if (!qword_27F7BF838)
  {
    type metadata accessor for JournalEntryMO();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF838);
  }

  return result;
}

uint64_t sub_255707D28(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_255750EB0() & 1;
  }
}

uint64_t sub_255707D94(uint64_t a1)
{
  v2 = sub_255708BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255707DD0(uint64_t a1)
{
  v2 = sub_255708BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_255707E0C()
{
  v1 = *v0;
  v2 = 1735290739;
  v3 = 0xD000000000000014;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6F6F626F69647561;
  if (v1 != 4)
  {
    v4 = 0x7261506472696874;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74736163646F70;
  if (v1 != 2)
  {
    v5 = 0x4174736163646F70;
  }

  if (*v0)
  {
    v2 = 0x75626C41676E6F73;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_255707F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25570A0D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255707F48(uint64_t a1)
{
  v2 = sub_255708AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255707F84(uint64_t a1)
{
  v2 = sub_255708AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255707FC0(uint64_t a1)
{
  v2 = sub_255708C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255707FFC(uint64_t a1)
{
  v2 = sub_255708C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708038(uint64_t a1)
{
  v2 = sub_255708CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255708074(uint64_t a1)
{
  v2 = sub_255708CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2557080B0(uint64_t a1)
{
  v2 = sub_255708CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2557080EC(uint64_t a1)
{
  v2 = sub_255708CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708128(uint64_t a1)
{
  v2 = sub_255708D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255708164(uint64_t a1)
{
  v2 = sub_255708D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2557081A0(uint64_t a1)
{
  v2 = sub_255708B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2557081DC(uint64_t a1)
{
  v2 = sub_255708B54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708218(uint64_t a1)
{
  v2 = sub_255708B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255708254(uint64_t a1)
{
  v2 = sub_255708B00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708290(uint64_t a1)
{
  v2 = sub_255708BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2557082CC(uint64_t a1)
{
  v2 = sub_255708BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaViewType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF850, &qword_25575C150);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF858, &qword_25575C158);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF860, &qword_25575C160);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF868, &qword_25575C168);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF870, &qword_25575C170);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v15);
  v49 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF878, &qword_25575C178);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x28223BE20](v18);
  v46 = &v43 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF880, &qword_25575C180);
  v44 = *(v45 - 8);
  v21 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF888, &qword_25575C188);
  v43 = *(v24 - 8);
  v25 = *(v43 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v43 - v26;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF890, &qword_25575C190);
  v28 = *(v64 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v64);
  v30 = *v1;
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v43 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_255708AAC();
  sub_255750FF0();
  v36 = (v28 + 8);
  if (v30 > 3)
  {
    if (v30 > 5)
    {
      if (v30 == 6)
      {
        v71 = 6;
        sub_255708B54();
        v38 = v58;
        v37 = v64;
        sub_255750DA0();
        v40 = v59;
        v39 = v60;
      }

      else
      {
        v72 = 7;
        sub_255708B00();
        v38 = v61;
        v37 = v64;
        sub_255750DA0();
        v40 = v62;
        v39 = v63;
      }
    }

    else if (v30 == 4)
    {
      v69 = 4;
      sub_255708BFC();
      v38 = v52;
      v37 = v64;
      sub_255750DA0();
      v40 = v53;
      v39 = v54;
    }

    else
    {
      v70 = 5;
      sub_255708BA8();
      v38 = v55;
      v37 = v64;
      sub_255750DA0();
      v40 = v56;
      v39 = v57;
    }

    goto LABEL_16;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v67 = 2;
      sub_255708CA4();
      v38 = v46;
      v37 = v64;
      sub_255750DA0();
      v40 = v47;
      v39 = v48;
    }

    else
    {
      v68 = 3;
      sub_255708C50();
      v38 = v49;
      v37 = v64;
      sub_255750DA0();
      v40 = v50;
      v39 = v51;
    }

LABEL_16:
    (*(v40 + 8))(v38, v39);
    return (*v36)(v35, v37);
  }

  if (v30)
  {
    v66 = 1;
    sub_255708CF8();
    v41 = v64;
    sub_255750DA0();
    (*(v44 + 8))(v23, v45);
    return (*v36)(v35, v41);
  }

  v65 = 0;
  sub_255708D4C();
  v37 = v64;
  sub_255750DA0();
  (*(v43 + 8))(v27, v24);
  return (*v36)(v35, v37);
}

unint64_t sub_255708AAC()
{
  result = qword_27F7BF898;
  if (!qword_27F7BF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF898);
  }

  return result;
}

unint64_t sub_255708B00()
{
  result = qword_27F7BF8A0;
  if (!qword_27F7BF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8A0);
  }

  return result;
}

unint64_t sub_255708B54()
{
  result = qword_27F7BF8A8;
  if (!qword_27F7BF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8A8);
  }

  return result;
}

unint64_t sub_255708BA8()
{
  result = qword_27F7BF8B0;
  if (!qword_27F7BF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8B0);
  }

  return result;
}

unint64_t sub_255708BFC()
{
  result = qword_27F7BF8B8;
  if (!qword_27F7BF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8B8);
  }

  return result;
}

unint64_t sub_255708C50()
{
  result = qword_27F7BF8C0;
  if (!qword_27F7BF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8C0);
  }

  return result;
}

unint64_t sub_255708CA4()
{
  result = qword_27F7BF8C8;
  if (!qword_27F7BF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8C8);
  }

  return result;
}

unint64_t sub_255708CF8()
{
  result = qword_27F7BF8D0;
  if (!qword_27F7BF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8D0);
  }

  return result;
}

unint64_t sub_255708D4C()
{
  result = qword_27F7BF8D8;
  if (!qword_27F7BF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8D8);
  }

  return result;
}

uint64_t MediaViewType.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t MediaViewType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8E0, &qword_25575C198);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v89 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8E8, &qword_25575C1A0);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v93 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8F0, &qword_25575C1A8);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9);
  v92 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8F8, &qword_25575C1B0);
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v91 = &v68 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF900, &qword_25575C1B8);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v90 = &v68 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF908, &qword_25575C1C0);
  v76 = *(v77 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v88 = &v68 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF910, &qword_25575C1C8);
  v74 = *(v75 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF918, &qword_25575C1D0);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF920, &unk_25575C1D8);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v68 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_255708AAC();
  v34 = v95;
  sub_255750FE0();
  if (!v34)
  {
    v69 = v26;
    v68 = v23;
    v70 = v22;
    v36 = v90;
    v35 = v91;
    v38 = v92;
    v37 = v93;
    v95 = v28;
    v39 = v94;
    v72 = v27;
    v71 = v31;
    v40 = sub_255750D90();
    v41 = (2 * *(v40 + 16)) | 1;
    v97 = v40;
    v98 = v40 + 32;
    v99 = 0;
    v100 = v41;
    v42 = sub_255690550();
    if (v42 != 8 && v99 == v100 >> 1)
    {
      v101 = v42;
      if (v42 > 3u)
      {
        v54 = v72;
        v55 = v71;
        if (v42 > 5u)
        {
          v63 = v95;
          if (v42 == 6)
          {
            v102 = 6;
            sub_255708B54();
            sub_255750CE0();
            (*(v84 + 8))(v37, v85);
          }

          else
          {
            v102 = 7;
            sub_255708B00();
            v67 = v89;
            sub_255750CE0();
            (*(v86 + 8))(v67, v87);
          }

          (*(v63 + 8))(v55, v54);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        v56 = v95;
        if (v42 == 4)
        {
          v102 = 4;
          sub_255708BFC();
          sub_255750CE0();
          v57 = v80;
          v58 = v81;
        }

        else
        {
          v102 = 5;
          sub_255708BA8();
          v35 = v38;
          sub_255750CE0();
          v58 = v82;
          v57 = v83;
        }

        (*(v58 + 8))(v35, v57);
        (*(v56 + 8))(v55, v54);
      }

      else
      {
        if (v42 > 1u)
        {
          v59 = v95;
          if (v42 == 2)
          {
            v102 = 2;
            sub_255708CA4();
            v60 = v88;
            v61 = v72;
            v62 = v71;
            sub_255750CE0();
            (*(v76 + 8))(v60, v77);
          }

          else
          {
            v102 = 3;
            sub_255708C50();
            v61 = v72;
            v62 = v71;
            sub_255750CE0();
            (*(v78 + 8))(v36, v79);
          }

          (*(v59 + 8))(v62, v61);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        if (v42)
        {
          v102 = 1;
          sub_255708CF8();
          v64 = v70;
          v65 = v72;
          v66 = v71;
          sub_255750CE0();
          (*(v74 + 8))(v64, v75);
          (*(v95 + 8))(v66, v65);
        }

        else
        {
          v102 = 0;
          sub_255708D4C();
          v44 = v69;
          v45 = v72;
          v46 = v71;
          sub_255750CE0();
          (*(v73 + 8))(v44, v68);
          (*(v95 + 8))(v46, v45);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v43 = v101;
      return __swift_destroy_boxed_opaque_existential_1(v96);
    }

    v47 = sub_255750B90();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA8, &qword_25575AAB0) + 48);
    *v49 = &type metadata for MediaViewType;
    v51 = v72;
    v52 = v71;
    sub_255750CF0();
    sub_255750B80();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v95 + 8))(v52, v51);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v96);
}

unint64_t sub_25570992C()
{
  result = qword_27F7BF928;
  if (!qword_27F7BF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF928);
  }

  return result;
}

unint64_t sub_255709A54()
{
  result = qword_27F7BF930;
  if (!qword_27F7BF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF930);
  }

  return result;
}

unint64_t sub_255709AAC()
{
  result = qword_27F7BF938;
  if (!qword_27F7BF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF938);
  }

  return result;
}

unint64_t sub_255709B04()
{
  result = qword_27F7BF940;
  if (!qword_27F7BF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF940);
  }

  return result;
}

unint64_t sub_255709B5C()
{
  result = qword_27F7BF948;
  if (!qword_27F7BF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF948);
  }

  return result;
}

unint64_t sub_255709BB4()
{
  result = qword_27F7BF950;
  if (!qword_27F7BF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF950);
  }

  return result;
}

unint64_t sub_255709C0C()
{
  result = qword_27F7BF958;
  if (!qword_27F7BF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF958);
  }

  return result;
}

unint64_t sub_255709C64()
{
  result = qword_27F7BF960;
  if (!qword_27F7BF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF960);
  }

  return result;
}

unint64_t sub_255709CBC()
{
  result = qword_27F7BF968;
  if (!qword_27F7BF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF968);
  }

  return result;
}

unint64_t sub_255709D14()
{
  result = qword_27F7BF970;
  if (!qword_27F7BF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF970);
  }

  return result;
}

unint64_t sub_255709D6C()
{
  result = qword_27F7BF978;
  if (!qword_27F7BF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF978);
  }

  return result;
}

unint64_t sub_255709DC4()
{
  result = qword_27F7BF980;
  if (!qword_27F7BF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF980);
  }

  return result;
}

unint64_t sub_255709E1C()
{
  result = qword_27F7BF988;
  if (!qword_27F7BF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF988);
  }

  return result;
}

unint64_t sub_255709E74()
{
  result = qword_27F7BF990;
  if (!qword_27F7BF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF990);
  }

  return result;
}

unint64_t sub_255709ECC()
{
  result = qword_27F7BF998;
  if (!qword_27F7BF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF998);
  }

  return result;
}

unint64_t sub_255709F24()
{
  result = qword_27F7BF9A0;
  if (!qword_27F7BF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9A0);
  }

  return result;
}

unint64_t sub_255709F7C()
{
  result = qword_27F7BF9A8;
  if (!qword_27F7BF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9A8);
  }

  return result;
}

unint64_t sub_255709FD4()
{
  result = qword_27F7BF9B0;
  if (!qword_27F7BF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9B0);
  }

  return result;
}

unint64_t sub_25570A02C()
{
  result = qword_27F7BF9B8;
  if (!qword_27F7BF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9B8);
  }

  return result;
}

unint64_t sub_25570A084()
{
  result = qword_27F7BF9C0;
  if (!qword_27F7BF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9C0);
  }

  return result;
}

uint64_t sub_25570A0D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75626C41676E6F73 && a2 == 0xE90000000000006DLL || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736163646F70 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4174736163646F70 && a2 == 0xED00007473697472 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6F626F69647561 && a2 == 0xE90000000000006BLL || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEF616964654D7974 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255753520 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255753540 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_255750EB0();

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

Swift::Void __swiftcall JournalEntryMO.prepareForDeletion()()
{
  v1 = v0;
  v135 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v126 = v113 - v4;
  v130 = type metadata accessor for StreakEvent();
  v5 = *(*(v130 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v130);
  v124 = v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v113 - v8;
  v10 = sub_25574F020();
  v134 = *(v10 - 8);
  v11 = *(v134 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v123 = v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v132 = v113 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v129 = v113 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v113 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v113 - v21;
  v23 = sub_25574F0D0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v125 = v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v113 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v127 = v113 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v128 = v113 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v113 - v36;
  MEMORY[0x28223BE20](v35);
  v133 = v113 - v38;
  v39 = type metadata accessor for JournalEntryMO();
  v136.receiver = v0;
  v136.super_class = v39;
  objc_msgSendSuper2(&v136, sel_prepareForDeletion);
  v40 = [v0 managedObjectContext];
  if (!v40)
  {
    goto LABEL_10;
  }

  v131 = v40;
  v41 = [v0 id];
  if (!v41)
  {
LABEL_7:

    goto LABEL_10;
  }

  v121 = v22;
  v119 = v9;
  v42 = v41;
  sub_25574F080();

  v43 = v133;
  (*(v24 + 32))(v133, v37, v23);
  v44 = [v0 createdDate];
  if (!v44)
  {
    (*(v24 + 8))(v43, v23);
    goto LABEL_7;
  }

  v120 = v30;
  v45 = v44;
  sub_25574EFF0();

  v46 = v24;
  (*(v134 + 32))(v121, v20, v10);
  type metadata accessor for JournalEntryAssetMO();
  v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v48 = [v47 initWithContext_];
  v49 = sub_25574F040();
  v51 = v50;
  v52 = v127;
  sub_25574F090();
  v53 = v128;
  sub_2556A0210(v49, v51, v52, v128);
  v54 = sub_25574F050();
  v55 = *(v46 + 8);
  v115 = v46 + 8;
  v114 = v55;
  v55(v53, v23);
  [v48 setId_];

  v56 = v129;
  sub_25574F000();
  v57 = sub_25574EFC0();
  v58 = v134;
  v59 = *(v134 + 8);
  v113[1] = v134 + 8;
  v113[0] = v59;
  v59(v56, v10);
  [v48 setCreatedDate_];

  v60 = sub_255750180();
  [v48 setAssetType_];

  v61 = sub_255750180();
  v116 = v48;
  [v48 setSource_];

  v62 = sub_25574EB30();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_25574EB20();
  v65 = v126;
  (*(v46 + 16))(v126, v133, v23);
  v117 = v46;
  v66 = *(v46 + 56);
  v66(v65, 0, 1, v23);
  v67 = *(v58 + 16);
  v68 = v119;
  v69 = &v119[*(v130 + 20)];
  v122 = v10;
  v67(v69, v121, v10);
  v118 = v23;
  v66(v68, 1, 1, v23);
  sub_2556B17E8(v65, v68);
  sub_25570AFF4();
  v70 = v135;
  v71 = sub_25574EB10();
  v135 = v70;
  if (v70)
  {

    sub_2556B2360(v68);
    v73 = 0;
    v135 = 0;
  }

  else
  {
    v74 = v71;
    v75 = v72;
    sub_2556B2360(v68);

    v73 = sub_25574EF80();
    sub_2556755A8(v74, v75);
  }

  v30 = v120;
  v76 = v116;
  [v116 setAssetMetaData_];

  v10 = v122;
  (v113[0])(v121, v122);
  v23 = v118;
  v114(v133, v118);
  v24 = v117;
LABEL_10:
  v77 = [v1 managedObjectContext];
  if (v77)
  {
    v78 = v77;
    v79 = [v1 id];
    if (v79)
    {
      v80 = v125;
      v81 = v79;
      sub_25574F080();

      (*(v24 + 32))(v30, v80, v23);
      v82 = [v1 updatedDate];
      if (v82)
      {
        v83 = v123;
        v84 = v82;
        sub_25574EFF0();

        (*(v134 + 32))(v132, v83, v10);
        type metadata accessor for JournalEntryAssetMO();
        v85 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
        v86 = sub_25574F040();
        v87 = v10;
        v122 = v10;
        v89 = v88;
        v90 = v127;
        sub_25574F090();
        v91 = v128;
        sub_2556A0210(v86, v89, v90, v128);
        v92 = sub_25574F050();
        v93 = *(v24 + 8);
        v133 = (v24 + 8);
        v131 = v93;
        (v93)(v91, v23);
        [v85 setId_];

        v94 = v129;
        sub_25574F000();
        v95 = sub_25574EFC0();
        v96 = v134;
        v128 = *(v134 + 8);
        v129 = (v134 + 8);
        (v128)(v94, v87);
        [v85 setCreatedDate_];

        v97 = sub_255750180();
        [v85 setAssetType_];

        v98 = sub_255750180();
        [v85 setSource_];

        v99 = sub_25574EB30();
        v100 = *(v99 + 48);
        v101 = *(v99 + 52);
        swift_allocObject();
        sub_25574EB20();
        v102 = *(v24 + 16);
        v103 = v126;
        v120 = v30;
        v102(v126, v30, v23);
        v104 = *(v24 + 56);
        v104(v103, 0, 1, v23);
        v105 = v124;
        (*(v96 + 16))(&v124[*(v130 + 20)], v132, v122);
        v104(v105, 1, 1, v23);
        sub_2556B17E8(v103, v105);
        sub_25570AFF4();
        v106 = v135;
        v107 = sub_25574EB10();
        if (v106)
        {

          sub_2556B2360(v105);
          v109 = 0;
        }

        else
        {
          v110 = v107;
          v111 = v105;
          v112 = v108;
          sub_2556B2360(v111);

          v109 = sub_25574EF80();
          sub_2556755A8(v110, v112);
        }

        [v85 setAssetMetaData_];

        (v128)(v132, v122);
        (v131)(v120, v23);
      }

      else
      {
        (*(v24 + 8))(v30, v23);
      }
    }

    else
    {
    }
  }
}

unint64_t sub_25570AFF4()
{
  result = qword_27F7BF9C8;
  if (!qword_27F7BF9C8)
  {
    type metadata accessor for StreakEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9C8);
  }

  return result;
}

uint64_t MergeableFollowUpPromptAttachment.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MergeableFollowUpPromptAttachment.prompt.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MergeableFollowUpPromptAttachment.init(prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for MergeableFollowUpPromptAttachment() + 20);
  result = sub_25574FB20();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t static MergeableFollowUpPromptAttachment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_255750EB0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MergeableFollowUpPromptAttachment() + 20);

  return sub_25574FAF0();
}

uint64_t MergeableFollowUpPromptAttachment.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2557501F0();
  v3 = *(type metadata accessor for MergeableFollowUpPromptAttachment() + 20);
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t MergeableFollowUpPromptAttachment.hashValue.getter()
{
  sub_255750F80();
  v1 = *v0;
  v2 = v0[1];
  sub_2557501F0();
  v3 = *(type metadata accessor for MergeableFollowUpPromptAttachment() + 20);
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570B31C(uint64_t a1)
{
  sub_255750F80();
  v3 = *v1;
  v4 = v1[1];
  sub_2557501F0();
  v5 = *(a1 + 20);
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570B3C4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_2557501F0();
  v6 = *(a2 + 20);
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t sub_25570B450(uint64_t a1, uint64_t a2)
{
  sub_255750F80();
  v4 = *v2;
  v5 = v2[1];
  sub_2557501F0();
  v6 = *(a2 + 20);
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570B4F4(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_255750EB0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_25574FAF0();
}

uint64_t MergeableFollowUpPromptAttachment.copy(renamingReferences:)@<X0>(char *a1@<X8>)
{
  v3 = sub_25574FB30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25570B6A0(v1, a1);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(a1 + 1);

  *a1 = v9;
  *(a1 + 1) = v8;
  v11 = type metadata accessor for MergeableFollowUpPromptAttachment();
  v12 = v1 + *(v11 + 20);
  sub_25574FB00();
  return (*(v4 + 40))(&a1[*(v11 + 20)], v7, v3);
}

uint64_t sub_25570B6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableFollowUpPromptAttachment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MergeableFollowUpPromptAttachment.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5F0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MergeableFollowUpPromptAttachment.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    v4 = *v0;
    v5 = v0[1];

    sub_25574FF80();

    v3 = v0 + *(type metadata accessor for MergeableFollowUpPromptAttachment() + 20);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableFollowUpPromptAttachment.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = (v57 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v57 - v12;
  v69 = sub_25574FB30();
  v14 = *(v69 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v69);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v68 = *(type metadata accessor for MergeableFollowUpPromptAttachment() + 20);
  sub_25574FB20();
  v19 = v70;
  v20 = sub_25574FEE0();
  if (v19)
  {

    return (*(v14 + 8))(v18 + v68, v69);
  }

  else
  {
    v22 = v20;
    v64 = a1;
    v58 = v13;
    v59 = v11;
    v66 = v7;
    if (sub_25574FF00())
    {
      v23 = sub_255750260();
      v60 = v17;
      v61 = v14;
    }

    else
    {
      v60 = v17;
      v61 = v14;
      v23 = sub_255750250();
    }

    *v18 = v23;
    v18[1] = v24;
    v62 = v18;
    v57[1] = v24;
    v70 = v22;
    v25 = sub_25574FEF0();
    v26 = sub_255676334(v25);

    v72 = v26;
    sub_255676690(1);
    v27 = v72 + 56;
    v28 = 1 << *(v72 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v72 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = (v65 + 56);
    v33 = v72;

    v34 = 0;
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v35 = v34;
      if (!v30)
      {
        break;
      }

LABEL_14:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v37 = *(*(v33 + 48) + ((v34 << 9) | (8 * v36)));
      if (sub_25574FF00())
      {
        v40 = v66;
        v39 = v67;
        v41 = *(v66 + 48);
        *v67 = v37;
        v42 = v39;
        sub_25574F310();
        (*v32)(v42, 0, 1, v40);
        v43 = v58;
        sub_2556AA69C(v42, v58);
        sub_2556AA69C(v43, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_25569874C(0, v63[2] + 1, 1, v63);
        }

        v44 = v65;
        v46 = v63[2];
        v45 = v63[3];
        v47 = v59;
        if (v46 >= v45 >> 1)
        {
          v49 = sub_25569874C(v45 > 1, v46 + 1, 1, v63);
          v44 = v65;
          v63 = v49;
          v47 = v59;
        }

        v48 = v63;
        v63[2] = v46 + 1;
        sub_2556AA69C(v47, v48 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46);
      }

      else
      {
        v38 = v67;
        (*v32)(v67, 1, 1, v66);
        sub_2556DB128(v38);
      }
    }

    while (1)
    {
      v34 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);

        v14 = v61;
        v18 = v62;
        return (*(v14 + 8))(v18 + v68, v69);
      }

      if (v34 >= v31)
      {
        break;
      }

      v30 = *(v27 + 8 * v34);
      ++v35;
      if (v30)
      {
        goto LABEL_14;
      }
    }

    v50 = v63;
    if (v63[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v51 = sub_255750C90();
    }

    else
    {
      v51 = MEMORY[0x277D84F98];
    }

    v53 = v61;
    v52 = v62;
    v54 = v68;
    v55 = v69;
    v56 = v60;
    v71 = v51;
    sub_25570C118(v50, 1, &v71);
    sub_25574FB40();

    return (*(v53 + 40))(v52 + v54, v56, v55);
  }
}

uint64_t sub_25570BE20@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = sub_25574FB30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25570B6A0(v2, a2);
  v11 = *v2;
  v10 = v2[1];
  v12 = *(a2 + 1);

  *a2 = v11;
  *(a2 + 1) = v10;
  v13 = v2 + *(a1 + 20);
  sub_25574FB00();
  return (*(v6 + 40))(&a2[*(a1 + 20)], v9, v5);
}

uint64_t sub_25570BF40()
{
  sub_25570C7BC(&qword_27F7BE8F8, type metadata accessor for MergeableFollowUpPromptAttachment);
  sub_25570C7BC(&qword_27F7BF9D0, type metadata accessor for MergeableFollowUpPromptAttachment);

  return sub_25574FDD0();
}

uint64_t sub_25570C04C(uint64_t a1, uint64_t a2)
{
  result = sub_25574FF70();
  if (!v3)
  {
    v7 = *v2;
    v8 = v2[1];

    sub_25574FF80();

    v6 = v2 + *(a2 + 20);
    sub_25574FB10();
  }

  return result;
}

void sub_25570C118(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_25570C7BC(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD00000000000003BLL;
    v34[1] = 0x8000000255753560;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_25570C7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25570C804()
{
  v1 = *v0;
  sub_255750F80();
  AssetType.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_25570C86C()
{
  v2 = *v0;
  AssetType.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_25570C8D0()
{
  v1 = *v0;
  sub_255750F80();
  AssetType.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t JournalEntryAssetMO.isEntryAssetType.getter()
{
  v1 = [v0 assetType];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2557501B0();
    v5 = v4;

    if (v3 == 0x76456B6165727473 && v5 == 0xEB00000000746E65)
    {

      v8 = 0;
    }

    else
    {
      v7 = sub_255750EB0();

      v8 = v7 ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_25570CB50()
{
  result = qword_27F7BFA10;
  if (!qword_27F7BFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA10);
  }

  return result;
}

unint64_t sub_25570CBA4()
{
  result = qword_27F7BFA18;
  if (!qword_27F7BFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA18);
  }

  return result;
}

uint64_t NSPersistentStoreCoordinator.storesDidChangeNotifications.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA20, &qword_25575CD40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = [objc_opt_self() defaultCenter];
  sub_25570CD40();
  sub_255750860();

  swift_getOpaqueTypeConformance2();
  return sub_255750C30();
}

unint64_t sub_25570CD40()
{
  result = qword_27F7BFA28;
  if (!qword_27F7BFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA28);
  }

  return result;
}

unint64_t sub_25570CDA8()
{
  result = qword_27F7BFA30;
  if (!qword_27F7BFA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BFA38, &qword_25575CD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA30);
  }

  return result;
}

void AssetType.tokenTypeIdentifier.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 0x15)
  {
    *a1 = 14;
  }

  else
  {
    *a1 = byte_25575CDBE[v2];
  }
}

uint64_t ContactAssetMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContactAssetMetadata.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactAssetMetadata() + 20);

  return sub_2556700F4(v3, a1);
}

uint64_t type metadata accessor for ContactAssetMetadata()
{
  result = qword_27F7BFA68;
  if (!qword_27F7BFA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactAssetMetadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactAssetMetadata() + 24);

  return sub_2556700F4(v3, a1);
}

uint64_t ContactAssetMetadata.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for ContactAssetMetadata() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContactAssetMetadata.numberOfExchanges.getter()
{
  v1 = (v0 + *(type metadata accessor for ContactAssetMetadata() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  v16 = type metadata accessor for ContactAssetMetadata();
  sub_2556719B8(a3, a9 + v16[5]);
  result = sub_2556719B8(a4, a9 + v16[6]);
  v18 = a9 + v16[7];
  *v18 = a5;
  v18[8] = a6 & 1;
  v19 = a9 + v16[8];
  *v19 = a7;
  v19[8] = a8 & 1;
  return result;
}

uint64_t sub_25570D060()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x656D6954646E65;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D69547472617473;
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

uint64_t sub_25570D0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25570DC28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25570D124(uint64_t a1)
{
  v2 = sub_25570D3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25570D160(uint64_t a1)
{
  v2 = sub_25570D3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA40, &qword_25575CDD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25570D3FC();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  v28 = 0;
  sub_255750E00();
  if (!v2)
  {
    v13 = type metadata accessor for ContactAssetMetadata();
    v14 = v13[5];
    v27 = 1;
    sub_25574F020();
    sub_255671898(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v15 = v13[6];
    v26 = 2;
    sub_255750DF0();
    v16 = v3 + v13[7];
    v17 = *v16;
    v18 = v16[8];
    v25 = 3;
    sub_255750DD0();
    v19 = v3 + v13[8];
    v20 = *v19;
    v21 = v19[8];
    v24 = 4;
    sub_255750DE0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25570D3FC()
{
  result = qword_27F7BFA48;
  if (!qword_27F7BFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA48);
  }

  return result;
}

uint64_t ContactAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA50, &qword_25575CDE0);
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ContactAssetMetadata();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25570D3FC();
  v36 = v12;
  v18 = v38;
  sub_255750FE0();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v7;
  v19 = v35;
  v43 = 0;
  v20 = v16;
  *v16 = sub_255750D50();
  v16[1] = v21;
  v33 = v21;
  sub_25574F020();
  v42 = 1;
  v32 = sub_255671898(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  sub_2556719B8(v9, v16 + v13[5]);
  v41 = 2;
  v22 = v38;
  v32 = 0;
  sub_255750D40();
  v23 = v20;
  sub_2556719B8(v22, v20 + v13[6]);
  v40 = 3;
  v24 = sub_255750D20();
  v25 = v20 + v13[7];
  *v25 = v24;
  *(v25 + 8) = v26 & 1;
  v39 = 4;
  v27 = sub_255750D30();
  LOBYTE(v20) = v28;
  (*(v19 + 8))(v36, v37);
  v29 = v23 + v13[8];
  *v29 = v27;
  *(v29 + 8) = v20 & 1;
  sub_25570D8A8(v23, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25570D90C(v23);
}

uint64_t sub_25570D8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25570D90C(uint64_t a1)
{
  v2 = type metadata accessor for ContactAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25570D968(uint64_t a1)
{
  *(a1 + 8) = sub_255671898(&qword_27F7BFA58, type metadata accessor for ContactAssetMetadata);
  result = sub_255671898(&qword_27F7BFA60, type metadata accessor for ContactAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_25570DA44()
{
  sub_25566E80C();
  if (v0 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BEBF0);
    if (v1 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEC00);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_25570DB24()
{
  result = qword_27F7BFA78;
  if (!qword_27F7BFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA78);
  }

  return result;
}

unint64_t sub_25570DB7C()
{
  result = qword_27F7BFA80;
  if (!qword_27F7BFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA80);
  }

  return result;
}

unint64_t sub_25570DBD4()
{
  result = qword_27F7BFA88;
  if (!qword_27F7BFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA88);
  }

  return result;
}

uint64_t sub_25570DC28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002557535E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t MergeableFont.init(traits:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for MergeableFont(0) + 20);
  sub_25574FB20();
  sub_25570DEB4(a1, a3);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 40);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_25570DEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableFont.Traits(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MergeableFont.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MergeableFont(0) + 20);

  return sub_25574FAF0();
}

uint64_t MergeableFont.hash(into:)()
{
  MEMORY[0x259C3EC60](*v0);
  v1 = *(type metadata accessor for MergeableFont(0) + 20);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t MergeableFont.hashValue.getter()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  v1 = *(type metadata accessor for MergeableFont(0) + 20);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570E0C0(uint64_t a1)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v1);
  v3 = *(a1 + 20);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570E16C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x259C3EC60](*v2);
  v4 = *(a2 + 20);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t sub_25570E200(uint64_t a1, uint64_t a2)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v2);
  v4 = *(a2 + 20);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570E2A8(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  return sub_25574FAF0();
}