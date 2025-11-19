uint64_t sub_1BAD6A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v12[0] = sub_1BAD9C978();
  v12[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A678);
  v12[2] = swift_getWitnessTable();
  v12[3] = sub_1BAD60048(&qword_1EDBA5DA8, &qword_1EBC2A678);
  v3 = sub_1BAD9C558();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  sub_1BAD9C4F8();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v13, v3);
    sub_1BAD9C4F8();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1BAD6A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = *(v9 + 80);
  *(v14 + 3) = a2;
  *(v14 + 4) = *(v9 + 88);
  *(v14 + 5) = a3;
  (*(v10 + 32))(&v14[v13], &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1BAD6BC94(a5, v14, &unk_1F38EC0B8, sub_1BAD6ED24, &block_descriptor_64);
}

uint64_t sub_1BAD6A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1BAD9D3B8();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = v13;
  sub_1BAD9D278();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BAD9D488();
}

uint64_t sub_1BAD6A928()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_1BAD9D7F8();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1BAD9D398();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_1BAD6AA94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a4;
  v24 = *a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 80);
  v10 = sub_1BAD9C978();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A678);
  v26 = v10;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1BAD60048(&qword_1EDBA5DA8, &qword_1EBC2A678);
  v36 = v10;
  v37 = v11;
  v38 = WitnessTable;
  v39 = v13;
  v14 = sub_1BAD9C558();
  v29 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  swift_beginAccess();
  v17 = v24;
  v24 = a1;
  v18 = v17[11];

  static DiffableData.makeSnapshot<A>(fromShelves:)(v19, v9, v18, v16);

  (*(v6 + 16))(v25, v27, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = v28;
  v21 = sub_1BAD9D3B8();
  v35 = sub_1BAD9C538();
  v30 = v9;
  v31 = a3;
  v32 = v18;
  v33 = v20;
  v34 = v21;
  sub_1BAD9D278();
  swift_getWitnessTable();
  v22 = sub_1BAD9D858();

  v35 = v22;
  swift_getWitnessTable();
  if (sub_1BAD9D428())
  {
    (*(v29 + 8))(v16, v14);
  }

  else
  {
    sub_1BAD9C508();

    sub_1BAD9C6F8();
    return (*(v29 + 8))(v16, v14);
  }
}

uint64_t sub_1BAD6AE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14 - v6;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD9C978();
  sub_1BAD9C948();
  sub_1BAD9D7F8();
  (*(v8 + 8))(v11, a3);
  swift_getAssociatedConformanceWitness();
  v12 = sub_1BAD9D398();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t sub_1BAD6B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v26 = a3;
  v27 = a5;
  v25[1] = a4;
  v9 = *v6;
  v10 = sub_1BAD9C6A8();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAD9C6C8();
  v30 = *(v13 - 8);
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6[2];
  (*(v16 + 16))(v20, a1, a2, v19);
  v21 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = *(v9 + 80);
  *(v22 + 3) = a2;
  *(v22 + 4) = *(v9 + 88);
  *(v22 + 5) = v26;
  *(v22 + 6) = v6;
  (*(v16 + 32))(&v22[v21], v20, a2);
  aBlock[4] = v27;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAD689BC;
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);

  sub_1BAD9C6B8();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1BAD6D104(&qword_1EDBA60B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2AFC0);
  sub_1BAD60048(&qword_1EDBA60A8, qword_1EBC2AFC0);
  sub_1BAD9D688();
  MEMORY[0x1BFB02B70](0, v15, v12, v23);
  _Block_release(v23);
  (*(v32 + 8))(v12, v10);
  (*(v30 + 8))(v15, v31);
}

uint64_t sub_1BAD6B418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v56 = a4;
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v45 - v10;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 80);
  v16 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1BAD60048(&qword_1EDBA5DA8, &qword_1EBC2A678);
  v60[0] = v16;
  v60[1] = v7;
  v58 = v7;
  v60[2] = WitnessTable;
  v60[3] = v18;
  v19 = sub_1BAD9C558();
  v48 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  swift_beginAccess();
  v45[1] = a1;
  v22 = *(v6 + 88);

  static DiffableData.makeSnapshot<A>(fromShelves:)(v23, v15, v22, v21);

  (*(v11 + 16))(v14, v55, a3);
  v24 = sub_1BAD9D3B8();
  v49 = v19;
  v47 = v21;
  result = sub_1BAD9C528();
  v56 = *(result + 16);
  if (v56)
  {
    v26 = 0;
    v27 = v46;
    v54 = v46 + 16;
    v28 = v24 + 56;
    v50 = (v46 + 32);
    v53 = (v46 + 8);
    v52 = MEMORY[0x1E69E7CC0];
    v55 = result;
    while (v26 < *(result + 16))
    {
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = *(v27 + 72);
      v31 = v27;
      (*(v27 + 16))(v57, result + v29 + v30 * v26, v58);
      sub_1BAD9C938();
      if (*(v24 + 16) && (v32 = sub_1BAD9D748(), v33 = -1 << *(v24 + 32), v34 = v32 & ~v33, ((*(v28 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        while (1)
        {
          sub_1BAD6E7C0(*(v24 + 48) + 40 * v34, v59);
          v36 = MEMORY[0x1BFB02DC0](v59, v60);
          sub_1BAD6E81C(v59);
          if (v36)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v28 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1BAD6E81C(v60);
        v37 = *v50;
        (*v50)(v51, v57, v58);
        v38 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        v61 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BAD5B254(0, *(v38 + 2) + 1, 1);
          v40 = v61;
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        if (v42 >= v41 >> 1)
        {
          v52 = v37;
          sub_1BAD5B254(v41 > 1, v42 + 1, 1);
          v37 = v52;
          v40 = v61;
        }

        *(v40 + 2) = v42 + 1;
        v52 = v40;
        v37(v40 + v29 + v42 * v30, v51, v58);
      }

      else
      {
LABEL_3:
        sub_1BAD6E81C(v60);
        (*v53)(v57, v58);
      }

      ++v26;
      result = v55;
      v27 = v31;
      if (v26 == v56)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
LABEL_18:

    if (*(v52 + 2))
    {
      v43 = v49;
      v44 = v47;
      sub_1BAD9C4D8();

      sub_1BAD9C6F8();
      return (*(v48 + 8))(v44, v43);
    }

    else
    {
      (*(v48 + 8))(v47, v49);
    }
  }

  return result;
}

uint64_t ShelvesPresenter.updateEachShelf(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;

  sub_1BAD6BC94(sub_1BAD6D4F4, v6, &unk_1F38EC0B8, sub_1BAD6ED24, &block_descriptor_64);
}

uint64_t sub_1BAD6BAFC(uint64_t *a1, uint64_t (*a2)(unint64_t), uint64_t a3, uint64_t a4)
{
  sub_1BAD9D278();
  swift_getWitnessTable();
  result = sub_1BAD9D3D8();
  v8 = v12;
  if (v12 == v13)
  {
    return result;
  }

  if (v13 < v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= v13)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  do
  {
    v9 = v8 + 1;
    sub_1BAD9D1B8();
    v10 = *a1;
    sub_1BAD6D08C(v8, *a1);
    if (_swift_isClassOrObjCExistentialType())
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v11 = v10;
    }

    result = a2(v11 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + *(*(a4 - 8) + 72) * v8++);
  }

  while (v13 != v9);
  return result;
}

uint64_t sub_1BAD6BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BAD9C6A8();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BAD9C6C8();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v5;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAD689BC;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  sub_1BAD9C6B8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1BAD6D104(&qword_1EDBA60B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2AFC0);
  sub_1BAD60048(&qword_1EDBA60A8, qword_1EBC2AFC0);
  sub_1BAD9D688();
  MEMORY[0x1BFB02B70](0, v15, v12, v17);
  _Block_release(v17);
  (*(v21 + 8))(v12, v10);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_1BAD6BF68(void (*a1)(uint64_t))
{
  swift_beginAccess();

  a1(v2);
}

uint64_t ShelvesPresenter.deinit()
{

  return v0;
}

uint64_t ShelvesPresenter.__deallocating_deinit()
{
  ShelvesPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD6C034()
{
  sub_1BAD6D0E0();
}

uint64_t ShelvesPresenter<>.merge<A>(contentsOf:handlingProblemsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v21 = a2;
  v10 = *v6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v13);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = *(v10 + 80);
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = *(v10 + 88);
  *(v17 + 6) = v20;
  (*(v11 + 32))(&v17[v15], v14, a4);
  v18 = &v17[v16];
  *v18 = v21;
  *(v18 + 1) = a3;

  sub_1BAD6BC94(sub_1BAD6D50C, v17, &unk_1F38EC0B8, sub_1BAD6ED24, &block_descriptor_64);
}

uint64_t sub_1BAD6C228(uint64_t *a1, void (**a2)(char *, uint64_t), void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = a4;
  v101 = a3;
  v130 = a2;
  v86 = a1;
  v104 = type metadata accessor for ShelvesPresenter.InsertionPoint();
  v126 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v92 = v83 - v12;
  v13 = type metadata accessor for ShelvesPresenter<>.MergeSolution();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = v83 - v14;
  v103 = a7;
  v84 = type metadata accessor for ShelvesPresenter<>.MergeProblem();
  v111 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v16 = v83 - v15;
  v122 = *(a8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v118 = v83 - v17;
  v125 = sub_1BAD9D598();
  v108 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v19 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = v83 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = v83 - v23;
  v123 = a5;
  v93 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v91 = v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v99 = v83 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v98 = v83 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v124 = v83 - v31;
  v32 = sub_1BAD9D598();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = v83 - v33;
  v35 = a6;
  v36 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = swift_getAssociatedTypeWitness();
  v85 = *(v40 - 8);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v83 - v42;
  v134 = *v86;
  v44 = v134;
  (*(v36 + 16))(v39, v130, v35, v41);
  v45 = v34;
  v83[1] = v44;

  sub_1BAD9D0F8();
  v46 = v84;
  v47 = v123;
  v48 = v124;
  v49 = v122;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v120 = v43;
  v121 = v40;
  v117 = AssociatedConformanceWitness;
  sub_1BAD9D5E8();
  v51 = *(v93 + 48);
  v116 = v93 + 48;
  v115 = v51;
  if (v51(v45, 1, v47) != 1)
  {
    v113 = 0;
    v110 = *(v93 + 32);
    v53 = (v111 + 56);
    v109 = v127 + 1;
    v127 = (v93 + 8);
    v130 = (v108 + 1);
    v87 = v93 + 40;
    v96 = v108 + 4;
    v108 += 2;
    v107 = (v111 + 48);
    v95 = (v111 + 32);
    v94 = (v126 + 48);
    v97 = (v111 + 8);
    v90 = (v126 + 32);
    v111 = v93 + 32;
    v89 = (v93 + 16);
    v88 = (v126 + 8);
    v129 = v53;
    v112 = v16;
    v114 = v19;
    v106 = v45;
    v110(v48, v45, v47);
    while (1)
    {
      v58 = *v53;
      v59 = v128;
      (*v53)(v128, 1, 1, v46);
      v60 = v46;
      v131 = v134;

      v61 = v118;
      sub_1BAD9D7F8();
      v62 = sub_1BAD9D278();
      WitnessTable = swift_getWitnessTable();
      v135 = v62;
      v136 = WitnessTable;
      v137 = v49;
      v138 = v61;
      v126 = v62;
      v64 = v49;
      sub_1BAD9D418();
      (*v109)(v61, AssociatedTypeWitness);

      if (v133 == 1)
      {
        break;
      }

      v68 = v132;
      v69 = v98;
      sub_1BAD9D2A8();
      v70 = v99;
      v71 = v113;
      sub_1BAD9CA68();
      if (v71)
      {
        (*v127)(v69, v47);
        v59 = v128;
        v67 = v125;
        (*v130)(v128, v125);
        *v59 = v71;
        v46 = v60;
        swift_storeEnumTagMultiPayload();
        v58(v59, 0, 1, v60);
        v113 = 0;
        v49 = v122;
        goto LABEL_12;
      }

      v113 = 0;
      sub_1BAD9D1B8();
      v79 = v134;
      sub_1BAD6D08C(v68, v134);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v81 = v93;
      (*(v93 + 8))(v69, v47);
      v82 = v79 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v82 = v79;
      }

      (*(v81 + 40))(v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v68, v70, v47);
      v46 = v60;
      v49 = v122;
      v67 = v125;
      v72 = v114;
      v59 = v128;
LABEL_13:
      (*v108)(v72, v59, v67);
      v73 = (*v107)(v72, 1, v46);
      v74 = v112;
      if (v73 == 1)
      {
        v54 = *v130;
        (*v130)(v59, v67);
        v47 = v123;
        v55 = v124;
        (*v127)(v124, v123);
        v54(v72, v67);
      }

      else
      {
        (*v95)(v112, v72, v46);
        v75 = v105;
        v101(v74);
        v76 = (*v94)(v75, 2, v104);
        if (v76)
        {
          if (v76 != 2)
          {
            (*v97)(v74, v46);
            (*v130)(v59, v67);
            (*v127)(v124, v123);
            (*(v85 + 8))(v120, v121);
          }

          (*v97)(v74, v46);
          (*v130)(v59, v67);
          v47 = v123;
          v55 = v124;
          (*v127)(v124, v123);
        }

        else
        {
          v77 = v92;
          v78 = v104;
          (*v90)(v92, v105, v104);
          sub_1BAD67FA4(v134, v78);
          v47 = v123;
          v55 = v124;
          (*v89)(v91, v124, v123);
          sub_1BAD9D238();
          (*v88)(v77, v78);
          (*v97)(v74, v46);
          (*v130)(v128, v125);
          (*v127)(v55, v47);
        }

        v49 = v122;
      }

      v56 = v106;
      sub_1BAD9D5E8();
      v57 = v115(v56, 1, v47);
      v53 = v129;
      if (v57 == 1)
      {
        goto LABEL_2;
      }

      v110(v55, v56, v47);
    }

    v65 = v100;
    sub_1BAD9D7F8();
    v66 = v125;
    (*v130)(v59, v125);
    swift_storeEnumTagMultiPayload();
    v58(v65, 0, 1, v46);
    (*v96)(v59, v65, v66);
    v49 = v64;
    v67 = v66;
LABEL_12:
    v72 = v114;
    goto LABEL_13;
  }

LABEL_2:

  (*(v85 + 8))(v120, v121);
  *v86 = v134;
}

uint64_t sub_1BAD6D08C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAD6D104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAD6D17C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ShelvesPresenter.InsertionPoint() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1 + ((v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80));

  return sub_1BAD69054(a1, v1 + v6, v7, v3, v4);
}

uint64_t sub_1BAD6D270()
{
  v1 = (*(*(v0[3] - 8) + 80) + 56) & ~*(*(v0[3] - 8) + 80);
  v2 = v0 + ((*(*(v0[3] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1BAD695A8(v0[6], v0 + v1, *v2, *(v2 + 1), v0[3], v0[5]);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BAD6D50C(uint64_t *a1)
{
  v2 = (*(*(v1[3] - 8) + 80) + 56) & ~*(*(v1[3] - 8) + 80);
  v3 = v1 + ((*(*(v1[3] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1BAD6C228(a1, (v1 + v2), *v3, *(v3 + 1), v1[2], v1[3], v1[4], v1[5]);
}

uint64_t sub_1BAD6D5A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BAD6D684()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAD6D6FC(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_25;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1BAD6D86C(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_31:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_19;
  }

LABEL_15:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_35:
    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_35;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_39:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v9)
  {
    a1[v8] = v15;
  }
}

uint64_t sub_1BAD6DA60()
{
  v0 = type metadata accessor for ShelvesPresenter.InsertionPoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BAD6DABC(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 - 1 >= a2)
  {
    goto LABEL_25;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v10 = ((~(-1 << v7) + a2 - v5 + 1) >> v7) + 1;
  if (HIWORD(v10))
  {
    v8 = *(a1 + v6);
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_25:
    v12 = *(a1 + v4);
    v13 = v12 ^ 0xFF;
    if ((v12 - 255) >= 2 && v5 > v13)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFF)
  {
    v8 = *(a1 + v6);
    if (*(a1 + v6))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v10 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + v5;
}

void sub_1BAD6DC34(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v7 - 1;
  v9 = v6 + 1;
  if (v7 - 1 >= a3)
  {
    v10 = 0;
    if (v8 < a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 1;
    if (v9 <= 3)
    {
      v11 = ((~(-1 << (8 * v9)) + a3 - v7 + 1) >> (8 * v9)) + 1;
      v12 = HIWORD(v11);
      if (v11 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v11 >= 2)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v12)
      {
        v10 = 4;
      }

      else
      {
        v10 = v14;
      }
    }

    if (v8 < a2)
    {
LABEL_15:
      v15 = a2 - v7;
      if (v9 < 4)
      {
        v16 = (v15 >> (8 * v9)) + 1;
        if (v6 != -1)
        {
          v17 = v15 & ~(-1 << (8 * v9));
          bzero(a1, v9);
          if (v9 != 3)
          {
            if (v9 == 2)
            {
              *a1 = v17;
              if (v10 > 1)
              {
LABEL_46:
                if (v10 == 2)
                {
                  *&a1[v9] = v16;
                }

                else
                {
                  *&a1[v9] = v16;
                }

                return;
              }
            }

            else
            {
              *a1 = v15;
              if (v10 > 1)
              {
                goto LABEL_46;
              }
            }

            goto LABEL_43;
          }

          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        if (v10 > 1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        bzero(a1, v6 + 1);
        *a1 = v15;
        v16 = 1;
        if (v10 > 1)
        {
          goto LABEL_46;
        }
      }

LABEL_43:
      if (v10)
      {
        a1[v9] = v16;
      }

      return;
    }
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v9] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

  a1[v9] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  v18 = a2 - v7;
  if (a2 >= v7)
  {
    if (v9 < 4)
    {
      if (v6 != -1)
      {
        v19 = v18 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v9 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v18;
    }
  }

  else
  {
    a1[v6] = ~a2;
  }
}

unint64_t sub_1BAD6DEB0()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1BAD6E290();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAD6DF40(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_1BAD6E098(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1BAD6E290()
{
  result = qword_1EBC2B148[0];
  if (!qword_1EBC2B148[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EBC2B148);
  }

  return result;
}

uint64_t sub_1BAD6E2F4()
{
  v0 = type metadata accessor for ShelvesPresenter.InsertionPoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BAD6E354(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 - 2 < a2)
  {
    v6 = v4 + 1;
    v7 = 8 * (v4 + 1);
    if ((v4 + 1) > 3)
    {
      goto LABEL_6;
    }

    v9 = ((~(-1 << v7) + a2 - v5 + 2) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    if (v9 >= 2)
    {
LABEL_6:
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

LABEL_13:
      v10 = (v8 - 1) << v7;
      if (v6 > 3)
      {
        v10 = 0;
      }

      if (v6)
      {
        if (v6 > 3)
        {
          LODWORD(v6) = 4;
        }

        if (v6 > 2)
        {
          if (v6 == 3)
          {
            LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v6) = *a1;
          }
        }

        else if (v6 == 1)
        {
          LODWORD(v6) = *a1;
        }

        else
        {
          LODWORD(v6) = *a1;
        }
      }

      return v5 + (v6 | v10) - 1;
    }
  }

LABEL_24:
  v11 = *(a1 + v4);
  if (v5 <= (v11 ^ 0xFFu) || (v11 - 254) <= 2)
  {
    return 0;
  }

  return -2 - (v11 | 0xFFFFFF00);
}

void sub_1BAD6E4E4(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v7 - 2;
  v9 = v6 + 1;
  if (v7 - 2 >= a3)
  {
    v10 = 0;
    if (v8 < a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 1;
    if (v9 <= 3)
    {
      v11 = ((~(-1 << (8 * v9)) + a3 - v7 + 2) >> (8 * v9)) + 1;
      v12 = HIWORD(v11);
      if (v11 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v11 >= 2)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v12)
      {
        v10 = 4;
      }

      else
      {
        v10 = v14;
      }
    }

    if (v8 < a2)
    {
LABEL_15:
      v15 = a2 - v7 + 1;
      if (v9 < 4)
      {
        v16 = (v15 >> (8 * v9)) + 1;
        if (v6 != -1)
        {
          v17 = v15 & ~(-1 << (8 * v9));
          bzero(a1, v9);
          if (v9 != 3)
          {
            if (v9 == 2)
            {
              *a1 = v17;
              if (v10 > 1)
              {
LABEL_46:
                if (v10 == 2)
                {
                  *&a1[v9] = v16;
                }

                else
                {
                  *&a1[v9] = v16;
                }

                return;
              }
            }

            else
            {
              *a1 = v15;
              if (v10 > 1)
              {
                goto LABEL_46;
              }
            }

            goto LABEL_43;
          }

          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        if (v10 > 1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        bzero(a1, v9);
        *a1 = v15;
        v16 = 1;
        if (v10 > 1)
        {
          goto LABEL_46;
        }
      }

LABEL_43:
      if (v10)
      {
        a1[v9] = v16;
      }

      return;
    }
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v9] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

  a1[v9] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (a2 + 2 <= v7)
  {
    a1[v6] = -2 - a2;
  }

  else
  {
    v18 = a2 - v7 + 1;
    if (v9 < 4)
    {
      if (v6 != -1)
      {
        v19 = v18 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v9 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v18;
    }
  }
}

uint64_t sub_1BAD6E900(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (sub_1BAD9D208())
  {
    sub_1BAD9D7A8();
    v15 = sub_1BAD9D798();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1BAD9D208();
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
    v17 = sub_1BAD9D1E8();
    sub_1BAD9D198();
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
      result = sub_1BAD9D808();
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
    v21 = sub_1BAD9CED8();
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
        v31 = sub_1BAD9CF28();
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

uint64_t objectdestroy_29Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double AnyDimension.topMargin(from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v10 = sub_1BAD9DA68();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD6EE7C(v13);
  AnyDimension.value(in:rounded:)(a1, v13, a2, a3);
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  return v15 - a6;
}

uint64_t sub_1BAD6EE7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBA6238 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAD9DA68();
  v3 = __swift_project_value_buffer(v2, qword_1EDBA61A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double AnyDimension.bottomMargin(from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = sub_1BAD9DA68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD6EE7C(v14);
  AnyDimension.value(in:rounded:)(a1, v14, a2, a3);
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  return v16 - a7;
}

double AnyDimension.estimatedTopMargin(for:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BAD9DA68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD6EE7C(v11);
  AnyDimension.value(in:rounded:)(a2, v11, a3, a4);
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  [a1 lineHeight];
  v15 = v14;
  [a1 descender];
  return v13 - (v15 + v16);
}

double AnyDimension.estimatedBottomMargin(for:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BAD9DA68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD6EE7C(v11);
  AnyDimension.value(in:rounded:)(a2, v11, a3, a4);
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  [a1 descender];
  return v13 + v14;
}

__n128 Resize.init(_:width:height:firstBaseline:lastBaseline:)@<Q0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1BAD47F34(a2, &v24);
  sub_1BAD47F34(a3, &v28);
  sub_1BAD47F34(a4, &v32);
  sub_1BAD47F34(a5, &v36);
  if (v27 == 2 && ((v12 = vorrq_s8(v25, v26), !(*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v24)) ? (v13 = v31 == 2) : (v13 = 0), v13 && ((v14 = vorrq_s8(v29, v30), !(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | v28)) ? (v15 = v35 == 2) : (v15 = 0), v15 && ((v16 = vorrq_s8(v33, v34), !(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | v32)) ? (v17 = v39 == 2) : (v17 = 0), v17 && (v18 = vorrq_s8(v37, v38), !(*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | v36))))))
  {
    sub_1BAD9CB88();
    sub_1BAD5C0F0(&v32);
    sub_1BAD5C0F0(&v28);
    sub_1BAD5C0F0(&v24);
  }

  else
  {
    sub_1BAD1A420(&v24, &qword_1EBC2AE78);
  }

  sub_1BAD0B40C(a1, a6);
  v19 = a2[1];
  *(a6 + 40) = *a2;
  *(a6 + 56) = v19;
  *(a6 + 65) = *(a2 + 25);
  v20 = a3[1];
  *(a6 + 88) = *a3;
  *(a6 + 104) = v20;
  *(a6 + 113) = *(a3 + 25);
  *(a6 + 161) = *(a4 + 25);
  v21 = *a4;
  *(a6 + 152) = a4[1];
  *(a6 + 136) = v21;
  *(a6 + 209) = *(a5 + 25);
  v23 = *a5;
  result = *(a5 + 16);
  *(a6 + 200) = result;
  *(a6 + 184) = v23;
  return result;
}

uint64_t Resize.Placements.union.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BAD47F90(v1, v15);
  Resize.Placements.next()(v9);
  result = sub_1BAD47FEC(v15);
  if (v10)
  {
    v4 = v13;
    v5 = v14;
    v7 = v12;
    v8 = v11;
    result = sub_1BAD17170(v9);
    *a1 = v8;
    *(a1 + 16) = v7;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
  }

  else
  {
    if (qword_1EBC29BA0 != -1)
    {
      result = swift_once();
    }

    v6 = *&qword_1EBC29BB8;
    *a1 = xmmword_1EBC29BA8;
    *(a1 + 16) = v6;
    *(a1 + 32) = xmmword_1EBC29BC8;
  }

  return result;
}

uint64_t Resize.Placements.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1BAD1ADC4(v1 + 232, &v44);
  if (v45)
  {
    sub_1BAD0B40C(&v44, v50);
    sub_1BAD1A420(v1 + 232, &qword_1EBC2A2B0);
    *(v1 + 232) = 0u;
    *(v1 + 248) = 0u;
    *(v1 + 264) = 0;
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    sub_1BAD47F34(v1 + 40, &v44);
    if (v46)
    {
      sub_1BAD5C0F0(&v44);
      v6 = v5;
    }

    else
    {
      sub_1BAD0B40C(&v44, v47);
      v8 = v48;
      v9 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v10 = AnyDimension.value(with:)(*(v2 + 32), v8, v9);
      if (v10 < v5 || v5 == 0.0)
      {
        v6 = v10;
      }

      else
      {
        v6 = v5;
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    sub_1BAD47F34(v2 + 88, &v44);
    if (v46)
    {
      sub_1BAD5C0F0(&v44);
      v12 = v4;
    }

    else
    {
      sub_1BAD0B40C(&v44, v47);
      v13 = v48;
      v14 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v15 = AnyDimension.value(with:)(*(v2 + 32), v13, v14);
      if (v15 < v4 || v4 == 0.0)
      {
        v12 = v15;
      }

      else
      {
        v12 = v4;
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v17 = v51;
    v18 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v19 = *(v2 + 32);
    v20 = (*(v18 + 8))(v19, v17, v18, v6, v12);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_1BAD47F34(v2 + 40, &v44);
    if (v46)
    {
      if (v46 == 1)
      {
        v20 = (v44)(v19, v20, v6, v12);
      }
    }

    else
    {
      sub_1BAD0B40C(&v44, v47);
      v27 = v48;
      v28 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v20 = AnyDimension.value(with:)(v19, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    sub_1BAD47F34(v2 + 88, &v44);
    if (v46)
    {
      if (v46 == 1)
      {
        v22 = (v44)(v19, v22, v6, v12);
      }
    }

    else
    {
      sub_1BAD0B40C(&v44, v47);
      v29 = v48;
      v30 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v22 = AnyDimension.value(with:)(v19, v29, v30);
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    sub_1BAD47F34(v2 + 136, &v44);
    if (v46)
    {
      if (v46 == 1)
      {
        v24 = (v44)(v19, v24, v6, v12);
      }
    }

    else
    {
      sub_1BAD0B40C(&v44, v47);
      v31 = v48;
      v32 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v24 = AnyDimension.value(with:)(v19, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v43 = v22;
    sub_1BAD47F34(v2 + 184, &v44);
    if (v46)
    {
      v33 = v20;
      v34 = v26;
      v35 = v24;
      if (v46 == 1)
      {
        v36 = (v44)(v19, v34, v6, v12);
      }

      else
      {
        v36 = v34;
      }
    }

    else
    {
      v33 = v20;
      v35 = v24;
      sub_1BAD0B40C(&v44, v47);
      v37 = v48;
      v38 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v36 = AnyDimension.value(with:)(v19, v37, v38);
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v39 = *v2;
    v40 = *(v2 + 8);
    v53.origin.x = *v2;
    v53.origin.y = v40;
    v53.size.width = v5;
    v53.size.height = v4;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = v39;
    v54.origin.y = v40;
    v54.size.width = v5;
    v54.size.height = v4;
    MinY = CGRectGetMinY(v54);
    sub_1BAD14A3C(v50, &v44);
    sub_1BAD14A3C(&v44, a1);
    *(a1 + 40) = floor(MinX);
    *(a1 + 48) = floor(MinY);
    *(a1 + 56) = ceil(v33);
    *(a1 + 64) = ceil(v43);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    *(a1 + 72) = floor(v35);
    *(a1 + 80) = floor(v36);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    result = sub_1BAD1A420(&v44, &qword_1EBC2A2B0);
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1BAD6FAC0()
{
  v1 = sub_1BAD83A78(v0);
  sub_1BAD47FEC(v0);
  return v1;
}

uint64_t Resize.layout(relativeTo:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_1BAD47F34(v6 + 40, a2 + 40);
  sub_1BAD47F34(v6 + 88, a2 + 88);
  sub_1BAD47F34(v6 + 136, a2 + 136);
  sub_1BAD47F34(v6 + 184, a2 + 184);
  sub_1BAD14A3C(v6, v15);
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 264) = 0;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  v13 = a1;
  sub_1BAD1A420(a2 + 232, &qword_1EBC2A2B0);
  return sub_1BAD0B40C(v15, a2 + 232);
}

JetUI::_LayoutAlignment __swiftcall Resize._layoutAlignment(with:)(UITraitCollection with)
{
  v3 = v2;
  v5 = v1;
  sub_1BAD14A3C(v3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
  if (swift_dynamicCast())
  {
    sub_1BAD0B40C(v9, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v7 + 8))(with.super.isa, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = sub_1BAD1A420(v9, &qword_1EBC2A1C0);
    *v5 = 0;
  }

  return v8;
}

unint64_t sub_1BAD6FCF4(uint64_t a1)
{
  result = sub_1BAD6FD1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD6FD1C()
{
  result = qword_1EBC2B1D0;
  if (!qword_1EBC2B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B1D0);
  }

  return result;
}

unint64_t sub_1BAD6FD74()
{
  result = qword_1EBC2B1D8;
  if (!qword_1EBC2B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B1D8);
  }

  return result;
}

unint64_t sub_1BAD6FDCC()
{
  result = qword_1EBC2B1E0;
  if (!qword_1EBC2B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B1E0);
  }

  return result;
}

uint64_t sub_1BAD6FE20@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_1BAD47F34(v6 + 40, a2 + 40);
  sub_1BAD47F34(v6 + 88, a2 + 88);
  sub_1BAD47F34(v6 + 136, a2 + 136);
  sub_1BAD47F34(v6 + 184, a2 + 184);
  sub_1BAD14A3C(v6, v15);
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 264) = 0;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  v13 = a1;
  sub_1BAD1A420(a2 + 232, &qword_1EBC2A2B0);
  return sub_1BAD0B40C(v15, a2 + 232);
}

uint64_t get_enum_tag_for_layout_string_5JetUI6ResizeV4RuleO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1BAD6FF64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 225))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD6FFAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD70038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAD70074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BAD700C0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1BAD70100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD70148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void NSTextStorage.juWritingDirectionOfLine(_:layoutManager:textContainer:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (!a2)
  {
    v9 = [v3 layoutManagers];
    sub_1BAD053C8(0, &qword_1EBC2B1E8);
    v10 = sub_1BAD9D178();
    v11 = v10;
    if (v10 >> 62)
    {
      goto LABEL_24;
    }

    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v7 = a2;
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  for (i = v4; ; i = v5)
  {
    v18 = v5;
    v19 = v4;
    [v7 ensureLayoutForTextContainer_];
    v31 = i;

    v20 = [v3 juFullRange];
    v32 = [v7 glyphRangeForCharacterRange:v20 actualCharacterRange:{v21, 0}];
    v23 = v22;
    v4 = swift_allocObject();
    v4[2] = 0;
    v5 = swift_allocObject();
    v5[2] = sub_1BAD9C1A8();
    v24 = v5 + 2;
    v5[3] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 1;
    v26 = swift_allocObject();
    v26[2] = v4;
    v26[3] = a1;
    v26[4] = v5;
    v26[5] = v7;
    v26[6] = v25;
    aBlock[4] = sub_1BAD70788;
    v34 = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAD707B8;
    aBlock[3] = &block_descriptor_8;
    v3 = _Block_copy(aBlock);
    v9 = v34;
    v27 = v7;

    [v27 enumerateLineFragmentsForGlyphRange:v32 usingBlock:{v23, v3}];
    _Block_release(v3);
    if (a1 == -1)
    {
      swift_beginAccess();
      if ((*(v25 + 32) & 1) == 0)
      {
        v28 = [v27 characterRangeForGlyphRange:*(v25 + 16) actualGlyphRange:{*(v25 + 24), 0}];
        v3 = v29;
        swift_beginAccess();
        v5[2] = v28;
        v5[3] = v3;
      }
    }

    v11 = sub_1BAD9C1A8();
    swift_beginAccess();
    if (v11 == *v24)
    {

      return;
    }

    v30 = v5[3] + *v24;
    if (!__OFSUB__(v30, 1))
    {
      NSAttributedString.juStrongBaseWritingDirectionOfParagraph(atOrBefore:)(v30 - 1);

      return;
    }

    __break(1u);
LABEL_24:
    if (!sub_1BAD9D8D8())
    {
LABEL_25:

      __break(1u);
      goto LABEL_26;
    }

LABEL_6:

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_26:
    v12 = MEMORY[0x1BFB02E80](0, v11);
LABEL_9:
    v7 = v12;

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v5;
    v14 = [v7 textContainers];
    sub_1BAD053C8(0, &qword_1EBC2B1F0);
    v15 = sub_1BAD9D178();
    v16 = v15;
    if (v15 >> 62)
    {
      if (!sub_1BAD9D8D8())
      {
LABEL_28:

        __break(1u);
LABEL_29:
        v17 = MEMORY[0x1BFB02E80](0, v16);
        goto LABEL_15;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v17 = *(v16 + 32);
LABEL_15:
    v5 = v17;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1BAD70668(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v28.size.height = a8;
  v28.size.width = a7;
  v28.origin.y = a6;
  v28.origin.x = a5;
  if (CGRectGetHeight(v28) != 0.0)
  {
    swift_beginAccess();
    v24 = *(a13 + 16);
    if (v24 == a14)
    {
      v25 = [a16 characterRangeForGlyphRange:a10 actualGlyphRange:{a11, 0}];
      v27 = v26;
      swift_beginAccess();
      *(a15 + 16) = v25;
      *(a15 + 24) = v27;
      *a12 = 1;
    }

    else
    {
      swift_beginAccess();
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      else
      {
        *(a13 + 16) = v24 + 1;
        swift_beginAccess();
        *(a17 + 16) = a10;
        *(a17 + 24) = a11;
        *(a17 + 32) = 0;
      }
    }
  }
}

void sub_1BAD707B8(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAD708BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a1;
  NSTextStorage.juWritingDirectionOfLine(_:layoutManager:textContainer:)(a3, a4, a5);
  v13 = v12;

  return v13;
}

void *AppStore.FourLineTextLayout.init(primaryText:middleStationaryText:secondaryText:primaryFirstLineSpace:primarySecondLineSpace:middleStationaryLineSpace:secondaryFirstLineSpace:secondarySecondLineSpace:numberOfLines:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  sub_1BAD0B40C(a1, v21);
  v18 = *(a2 + 16);
  *&v21[5] = *a2;
  *&v21[7] = v18;
  v21[9] = *(a2 + 32);
  sub_1BAD0B40C(a3, &v21[10]);
  sub_1BAD0B40C(a4, &v21[15]);
  sub_1BAD0B40C(a5, &v21[20]);
  sub_1BAD0B40C(a6, &v21[25]);
  sub_1BAD0B40C(a7, &v21[30]);
  sub_1BAD0B40C(a8, &v21[35]);
  v21[40] = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
  v19 = swift_allocObject();
  result = memcpy((v19 + 16), v21, 0x148uLL);
  *a9 = v19;
  return result;
}

uint64_t AppStore.FourLineTextLayout.primaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

uint64_t AppStore.FourLineTextLayout.primaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  __swift_destroy_boxed_opaque_existential_1(__src);
  sub_1BAD0B40C(a1, __src);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

void (*AppStore.FourLineTextLayout.primaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  return sub_1BAD70C78;
}

uint64_t AppStore.FourLineTextLayout.middleStationaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD70CDC(v3 + 56, a1);
}

uint64_t sub_1BAD70CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppStore.FourLineTextLayout.middleStationaryText.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  sub_1BAD70E2C(a1, &__src[40]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BAD70E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*AppStore.FourLineTextLayout.middleStationaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD70CDC(v5 + 56, v4);
  return sub_1BAD70F30;
}

void sub_1BAD70F30(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1BAD70CDC(*a1, v2 + 40);
    AppStore.FourLineTextLayout.middleStationaryText.setter(v2 + 40);
    sub_1BAD70F98(v2);
  }

  else
  {
    AppStore.FourLineTextLayout.middleStationaryText.setter(*a1);
  }

  free(v2);
}

uint64_t sub_1BAD70F98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppStore.FourLineTextLayout.secondaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 96, a1);
}

uint64_t AppStore.FourLineTextLayout.secondaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  __swift_destroy_boxed_opaque_existential_1(&__src[80]);
  sub_1BAD0B40C(a1, &__src[80]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

void (*AppStore.FourLineTextLayout.secondaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 96, v4);
  return sub_1BAD711C8;
}

void sub_1BAD711E0(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1BAD14A3C(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t AppStore.FourLineTextLayout.primaryFirstLineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 136, a1);
}

uint64_t AppStore.FourLineTextLayout.primaryFirstLineSpace.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  __swift_destroy_boxed_opaque_existential_1(&__src[120]);
  sub_1BAD0B40C(a1, &__src[120]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

void (*AppStore.FourLineTextLayout.primaryFirstLineSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 136, v4);
  return sub_1BAD71424;
}

uint64_t AppStore.FourLineTextLayout.primarySecondLineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 176, a1);
}

uint64_t AppStore.FourLineTextLayout.primarySecondLineSpace.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  __swift_destroy_boxed_opaque_existential_1(&__src[160]);
  sub_1BAD0B40C(a1, &__src[160]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

void (*AppStore.FourLineTextLayout.primarySecondLineSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 176, v4);
  return sub_1BAD71604;
}

uint64_t AppStore.FourLineTextLayout.middleStationaryLineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 216, a1);
}

uint64_t AppStore.FourLineTextLayout.middleStationaryLineSpace.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  __swift_destroy_boxed_opaque_existential_1(&__src[200]);
  sub_1BAD0B40C(a1, &__src[200]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

void (*AppStore.FourLineTextLayout.middleStationaryLineSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 216, v4);
  return sub_1BAD717E4;
}

void (*AppStore.FourLineTextLayout.secondaryFirstLineSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 256, v4);
  return sub_1BAD71898;
}

uint64_t _s5JetUI8AppStoreO18FourLineTextLayoutV014secondaryFirstF5SpaceAA12AnyDimension_pvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 256, a1);
}

uint64_t _s5JetUI8AppStoreO18FourLineTextLayoutV014secondaryFirstF5SpaceAA12AnyDimension_pvs_0(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  __swift_destroy_boxed_opaque_existential_1(&__src[240]);
  sub_1BAD0B40C(a1, &__src[240]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

void (*AppStore.FourLineTextLayout.secondarySecondLineSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 256, v4);
  return sub_1BAD71A78;
}

uint64_t AppStore.FourLineTextLayout.numberOfLines.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 336);
}

uint64_t AppStore.FourLineTextLayout.numberOfLines.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD70B74(v3 + 16, __src);
  __src[40] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD70BAC(__src, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B1F8);
    v6 = swift_allocObject();
    memcpy((v6 + 16), __src, 0x148uLL);

    *v1 = v6;
  }

  return result;
}

void (*AppStore.FourLineTextLayout.numberOfLines.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 336);
  return sub_1BAD71C34;
}

void sub_1BAD71C34(uint64_t a1)
{
  v1 = *a1;
  AppStore.FourLineTextLayout.numberOfLines.setter(*(*a1 + 24));

  free(v1);
}

double AppStore.FourLineTextLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v5 = sub_1BAD9DA68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  swift_beginAccess();
  sub_1BAD14A3C(v9 + 136, v26);
  v10 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1BAD6EE7C(v8);
  AnyDimension.value(in:rounded:)(a1, v8, v10, v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_1BAD14A3C(v9 + 176, v23);
  v13 = v24;
  v14 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1BAD6EE7C(v8);
  AnyDimension.value(in:rounded:)(a1, v8, v13, v14);
  v12(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1BAD14A3C(v9 + 256, v26);
  v15 = v27;
  v16 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1BAD6EE7C(v8);
  AnyDimension.value(in:rounded:)(a1, v8, v15, v16);
  v12(v8, v5);
  sub_1BAD14A3C(v9 + 256, v23);
  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1BAD6EE7C(v8);
  AnyDimension.value(in:rounded:)(a1, v8, v17, v18);
  v12(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1BAD14A3C(v9 + 136, v26);
  v19 = v27;
  v20 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1BAD6EE7C(v8);
  AnyDimension.value(in:rounded:)(a1, v8, v19, v20);
  v12(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return a2;
}

double AppStore.FourLineTextLayout.placeChildren(relativeTo:in:)@<D0>(uint64_t a1@<X0>, CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v131 = a6;
  v130 = a5;
  v11 = sub_1BAD9DA68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  swift_beginAccess();
  sub_1BAD14A3C(v15 + 16, v135);
  v16 = v136;
  v17 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  if ((*(v17 + 88))(v16, v17))
  {
    __swift_destroy_boxed_opaque_existential_1(v135);
    goto LABEL_8;
  }

  sub_1BAD70CDC(v15 + 56, &v132);
  v18 = v133;
  if (v133)
  {
    v19 = v134;
    __swift_project_boxed_opaque_existential_1(&v132, v133);
    v20 = (*(v19 + 88))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    __swift_destroy_boxed_opaque_existential_1(v135);
    if (v20)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1BAD70F98(&v132);
    __swift_destroy_boxed_opaque_existential_1(v135);
  }

  sub_1BAD14A3C(v15 + 96, v135);
  v21 = v136;
  v22 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  v23 = (*(v22 + 88))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v135);
  if (v23)
  {
LABEL_8:
    sub_1BAD14A3C(v15 + 16, v135);
    v24 = v136;
    v25 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    (*(v25 + 24))(1, v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v135);
    sub_1BAD14A3C(v15 + 96, v135);
    v26 = v136;
    v27 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    (*(v27 + 24))(1, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v135);
    sub_1BAD14A3C(v15 + 16, v135);
    v28 = v136;
    v29 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    v30 = *&v130;
    v31 = *&v131;
    (*(*(*(v29 + 8) + 8) + 8))(a1, v28, v130, v131);
    v33 = v32;
    v129 = v34;
    v126 = v35;
    __swift_destroy_boxed_opaque_existential_1(v135);
    sub_1BAD14A3C(v15 + 96, v135);
    v36 = v136;
    v37 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    v38.n128_u64[0] = v30;
    v39.n128_u64[0] = v31;
    (*(*(*(v37 + 8) + 8) + 8))(a1, v36, v38, v39);
    goto LABEL_9;
  }

  sub_1BAD14A3C(v15 + 16, v135);
  v99 = v136;
  v100 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  (*(v100 + 24))(*(v15 + 336), v99, v100);
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1BAD14A3C(v15 + 16, v135);
  v101 = v136;
  v102 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  v103 = (*(*(*(v102 + 8) + 8) + 8))(a1, v101, v130, v131);
  v33 = v104;
  v106 = v105;
  v108 = v107;
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1BAD14A3C(v15 + 16, v135);
  __swift_project_boxed_opaque_existential_1(v135, v136);
  v154.var0 = v103;
  v154.var1 = v33;
  v129 = v106;
  v154.var2 = v106;
  v126 = v108;
  v154.var3 = v108;
  v109 = LayoutTextView.estimatedNumberOfLines(from:)(v154);
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1BAD14A3C(v15 + 96, v135);
  v110 = v136;
  v111 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  if (v109 >= 2 && (sub_1BAD70CDC(v15 + 56, &v132), v112 = v133, sub_1BAD70F98(&v132), v112))
  {
    v113 = 1;
  }

  else
  {
    v113 = *(v15 + 336);
  }

  (*(v111 + 24))(v113, v110, v111);
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1BAD14A3C(v15 + 96, v135);
  v114 = v136;
  v115 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  v116.n128_f64[0] = v130;
  v117.n128_f64[0] = v131;
  (*(*(*(v115 + 8) + 8) + 8))(a1, v114, v116, v117);
LABEL_9:
  v127 = v40;
  v125 = v41;
  v128 = v42;
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1BAD70CDC(v15 + 56, v135);
  v43 = v136;
  if (v136)
  {
    v44 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    (*(v44 + 24))(1, v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v135);
  }

  else
  {
    sub_1BAD70F98(v135);
  }

  sub_1BAD14A3C(v15 + 136, v135);
  v45 = v136;
  v46 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  sub_1BAD6EE7C(v14);
  AnyDimension.value(in:rounded:)(a1, v14, v45, v46);
  v48 = v47;
  v49 = *(v12 + 8);
  v49(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1BAD14A3C(v15 + 216, v135);
  v50 = v136;
  v51 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  sub_1BAD6EE7C(v14);
  AnyDimension.value(in:rounded:)(a1, v14, v50, v51);
  v120 = v52;
  v49(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1BAD14A3C(v15 + 256, v135);
  v53 = v136;
  v54 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  sub_1BAD6EE7C(v14);
  AnyDimension.value(in:rounded:)(a1, v14, v53, v54);
  v121 = v55;
  v49(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(v135);
  v138.origin.x = a3;
  v138.origin.y = a4;
  v56 = v130;
  v138.size.width = v130;
  v57 = v131;
  v138.size.height = v131;
  MinX = CGRectGetMinX(v138);
  v139.origin.x = a3;
  v139.origin.y = a4;
  v139.size.width = v56;
  v139.size.height = v57;
  v59 = v48 - v129 + CGRectGetMinY(v139);
  v140.origin.x = a3;
  v140.origin.y = a4;
  v140.size.width = v56;
  v140.size.height = v57;
  Width = CGRectGetWidth(v140);
  sub_1BAD14A3C(v15 + 16, v135);
  v62 = v136;
  v61 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  (*(*(v61 + 8) + 24))(v62, MinX, v59, Width, v33);
  __swift_destroy_boxed_opaque_existential_1(v135);
  v124 = MinX;
  v141.origin.x = MinX;
  v123 = v59;
  v141.origin.y = v59;
  v122 = Width;
  v141.size.width = Width;
  v141.size.height = v33;
  MaxY = CGRectGetMaxY(v141);
  sub_1BAD70CDC(v15 + 56, v135);
  v64 = v136;
  if (v136)
  {
    v65 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    (*(v65 + 24))(1, v64, v65);
    __swift_destroy_boxed_opaque_existential_1(v135);
  }

  else
  {
    sub_1BAD70F98(v135);
  }

  v66 = MaxY - v126;
  sub_1BAD70CDC(v15 + 56, &v132);
  if (v133)
  {
    sub_1BAD0B40C(&v132, v135);
    v67 = v136;
    v68 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    v69 = *(*(*(v68 + 8) + 8) + 8);
    v126 = v33;
    v70 = v130;
    v71 = v131;
    v69(a1, v67, v130, v131);
    v73 = v72;
    v75 = v74;
    v119 = v76;
    v142.origin.x = a3;
    v142.origin.y = a4;
    v142.size.width = v70;
    v142.size.height = v71;
    v77 = a4;
    v78 = CGRectGetMinX(v142);
    v79 = v66 + v120 - v75;
    v143.origin.x = a3;
    v143.origin.y = v77;
    v143.size.width = v70;
    v33 = v126;
    v143.size.height = v71;
    v80 = CGRectGetWidth(v143);
    v82 = v136;
    v81 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    (*(*(v81 + 8) + 24))(v82, v78, v79, v80, v73);
    v144.origin.x = v78;
    a4 = v77;
    v144.origin.y = v79;
    v144.size.width = v80;
    v144.size.height = v73;
    v66 = CGRectGetMaxY(v144) - v119;
    __swift_destroy_boxed_opaque_existential_1(v135);
  }

  else
  {
    sub_1BAD70F98(&v132);
  }

  v145.origin.x = a3;
  v145.origin.y = a4;
  v83 = v130;
  v145.size.width = v130;
  v84 = v131;
  v145.size.height = v131;
  v85 = CGRectGetMinX(v145);
  v120 = v85;
  v86 = v121 - v125 + v66;
  v125 = v86;
  v146.origin.x = a3;
  v146.origin.y = a4;
  v146.size.width = v83;
  v146.size.height = v84;
  v87 = CGRectGetWidth(v146);
  v126 = v87;
  sub_1BAD14A3C(v15 + 96, v135);
  v89 = v136;
  v88 = v137;
  __swift_project_boxed_opaque_existential_1(v135, v136);
  v90 = v85;
  v91 = v127;
  (*(*(v88 + 8) + 24))(v89, v90, v86, v87, v127);
  __swift_destroy_boxed_opaque_existential_1(v135);
  v147.origin.x = v124;
  v147.origin.y = v123;
  v147.size.width = v122;
  v147.size.height = v33;
  MinY = CGRectGetMinY(v147);
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = v83;
  v148.size.height = v84;
  v129 = v129 + MinY - CGRectGetMinY(v148);
  v149.origin.x = a3;
  v149.origin.y = a4;
  v149.size.width = v83;
  v149.size.height = v84;
  v93 = CGRectGetMinX(v149);
  v150.origin.x = a3;
  v150.origin.y = a4;
  v150.size.width = v83;
  v150.size.height = v84;
  v94 = CGRectGetMinY(v150);
  v151.origin.x = a3;
  v151.origin.y = a4;
  v151.size.width = v83;
  v151.size.height = v84;
  v95 = CGRectGetWidth(v151);
  v152.origin.x = v120;
  v152.origin.y = v125;
  v152.size.width = v126;
  v152.size.height = v91;
  v96 = CGRectGetMaxY(v152);
  v153.origin.x = a3;
  v153.origin.y = a4;
  v153.size.width = v83;
  v153.size.height = v84;
  v97 = CGRectGetMinY(v153);
  *a2 = v93;
  a2[1] = v94;
  a2[2] = v95;
  a2[3] = v96 - v97;
  result = v128;
  a2[4] = v129;
  a2[5] = result;
  return result;
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 256, a2);
}

uint64_t get_enum_tag_for_layout_string_5JetUI14LayoutTextView_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BAD72B6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD72BB4(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Center.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  Measurable.placeable.getter(v4, v5, a2);
  a2[5] = 0;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Center.init(_:filling:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  Measurable.placeable.getter(v6, v7, a3);
  a3[5] = a2;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

UIFontDescriptor_optional __swiftcall UIFontDescriptor.withCompatibleSymbolicTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  v3 = v2;
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

id _sSo16UIFontDescriptorC5JetUIE010systemFontB06ofSize6weightAB12CoreGraphics7CGFloatV_So0A6WeightatFZ_0(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BADA1240;
  v5 = *MEMORY[0x1E69DB940];
  *(inited + 32) = *MEMORY[0x1E69DB940];
  v6 = sub_1BAD9CF68();
  v7 = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v9 = *MEMORY[0x1E69DB990];
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = MEMORY[0x1E69E63B0];
  *(inited + 104) = MEMORY[0x1E69E63B0];
  *(inited + 80) = a2;
  v11 = v5;
  v12 = v9;
  v13 = sub_1BAD1F050(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A408);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B680);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1BADA1240;
  v15 = *MEMORY[0x1E69DB8C0];
  *(v14 + 32) = *MEMORY[0x1E69DB8C0];
  *(v14 + 40) = a1;
  v16 = *MEMORY[0x1E69DB8F0];
  *(v14 + 64) = v10;
  *(v14 + 72) = v16;
  *(v14 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B210);
  *(v14 + 80) = v13;
  v17 = v15;
  v18 = v16;
  sub_1BAD1F178(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3D0);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x1E69DB880]);
  type metadata accessor for AttributeName(0);
  sub_1BAD72FA4();
  v20 = sub_1BAD9CE88();

  v21 = [v19 initWithFontAttributes_];

  return v21;
}

unint64_t sub_1BAD72FA4()
{
  result = qword_1EDBA61D0;
  if (!qword_1EDBA61D0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA61D0);
  }

  return result;
}

__n128 AppStore.ThreeLineTextLayout.init(primaryText:secondaryText:primaryRegularSpace:primaryCompressedSpace:secondarySpace:numberOfLines:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_1BAD0B40C(a1, v20);
  sub_1BAD0B40C(a2, v21 + 8);
  sub_1BAD0B40C(a3, v22);
  sub_1BAD0B40C(a4, v23 + 8);
  sub_1BAD0B40C(a5, v24);
  *(&v25 + 1) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B218);
  v13 = swift_allocObject();
  v14 = v24[1];
  *(v13 + 176) = v24[0];
  *(v13 + 192) = v14;
  *(v13 + 208) = v25;
  v15 = v23[0];
  *(v13 + 112) = v22[1];
  *(v13 + 128) = v15;
  v16 = v23[2];
  *(v13 + 144) = v23[1];
  *(v13 + 160) = v16;
  v17 = v21[1];
  *(v13 + 48) = v21[0];
  *(v13 + 64) = v17;
  v18 = v22[0];
  *(v13 + 80) = v21[2];
  *(v13 + 96) = v18;
  result = v20[1];
  *(v13 + 16) = v20[0];
  *(v13 + 32) = result;
  *a7 = v13;
  return result;
}

uint64_t AppStore.ThreeLineTextLayout.primaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

uint64_t AppStore.ThreeLineTextLayout.primaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD73244(v3 + 16, v13);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_1BAD0B40C(a1, v13);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7327C(v13, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B218);
    v6 = swift_allocObject();
    v7 = v13[11];
    v6[11] = v13[10];
    v6[12] = v7;
    v6[13] = v13[12];
    v8 = v13[7];
    v6[7] = v13[6];
    v6[8] = v8;
    v9 = v13[9];
    v6[9] = v13[8];
    v6[10] = v9;
    v10 = v13[3];
    v6[3] = v13[2];
    v6[4] = v10;
    v11 = v13[5];
    v6[5] = v13[4];
    v6[6] = v11;
    v12 = v13[1];
    v6[1] = v13[0];
    v6[2] = v12;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.ThreeLineTextLayout.primaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  return sub_1BAD73348;
}

uint64_t AppStore.ThreeLineTextLayout.secondaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 56, a1);
}

uint64_t AppStore.ThreeLineTextLayout.secondaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD73244(v3 + 16, v13);
  __swift_destroy_boxed_opaque_existential_1(v14 + 8);
  sub_1BAD0B40C(a1, v14 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7327C(v13, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B218);
    v6 = swift_allocObject();
    v7 = v14[9];
    v6[11] = v14[8];
    v6[12] = v7;
    v6[13] = v14[10];
    v8 = v14[5];
    v6[7] = v14[4];
    v6[8] = v8;
    v9 = v14[7];
    v6[9] = v14[6];
    v6[10] = v9;
    v10 = v14[1];
    v6[3] = v14[0];
    v6[4] = v10;
    v11 = v14[3];
    v6[5] = v14[2];
    v6[6] = v11;
    v12 = v13[1];
    v6[1] = v13[0];
    v6[2] = v12;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.ThreeLineTextLayout.secondaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 56, v4);
  return sub_1BAD73568;
}

void sub_1BAD73580(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1BAD14A3C(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t AppStore.ThreeLineTextLayout.primaryRegularSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 96, a1);
}

uint64_t AppStore.ThreeLineTextLayout.primaryRegularSpace.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD73244(v3 + 16, v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1BAD0B40C(a1, v14);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7327C(v13, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B218);
    v6 = swift_allocObject();
    v7 = v14[6];
    v6[11] = v14[5];
    v6[12] = v7;
    v6[13] = v14[7];
    v8 = v14[2];
    v6[7] = v14[1];
    v6[8] = v8;
    v9 = v14[4];
    v6[9] = v14[3];
    v6[10] = v9;
    v10 = v13[3];
    v6[3] = v13[2];
    v6[4] = v10;
    v11 = v14[0];
    v6[5] = v13[4];
    v6[6] = v11;
    v12 = v13[1];
    v6[1] = v13[0];
    v6[2] = v12;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.ThreeLineTextLayout.primaryRegularSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 96, v4);
  return sub_1BAD73804;
}

uint64_t AppStore.ThreeLineTextLayout.primaryCompressedSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 136, a1);
}

uint64_t AppStore.ThreeLineTextLayout.primaryCompressedSpace.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD73244(v3 + 16, v13);
  __swift_destroy_boxed_opaque_existential_1(v14 + 8);
  sub_1BAD0B40C(a1, v14 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7327C(v13, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B218);
    v6 = swift_allocObject();
    v7 = v14[4];
    v6[11] = v14[3];
    v6[12] = v7;
    v6[13] = v14[5];
    v8 = v14[0];
    v6[7] = v13[6];
    v6[8] = v8;
    v9 = v14[2];
    v6[9] = v14[1];
    v6[10] = v9;
    v10 = v13[3];
    v6[3] = v13[2];
    v6[4] = v10;
    v11 = v13[5];
    v6[5] = v13[4];
    v6[6] = v11;
    v12 = v13[1];
    v6[1] = v13[0];
    v6[2] = v12;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.ThreeLineTextLayout.primaryCompressedSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 136, v4);
  return sub_1BAD73A24;
}

uint64_t AppStore.ThreeLineTextLayout.secondarySpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 176, a1);
}

uint64_t AppStore.ThreeLineTextLayout.secondarySpace.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD73244(v3 + 16, v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1BAD0B40C(a1, v14);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7327C(v13, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B218);
    v6 = swift_allocObject();
    v7 = v14[1];
    v6[11] = v14[0];
    v6[12] = v7;
    v6[13] = v14[2];
    v8 = v13[7];
    v6[7] = v13[6];
    v6[8] = v8;
    v9 = v13[9];
    v6[9] = v13[8];
    v6[10] = v9;
    v10 = v13[3];
    v6[3] = v13[2];
    v6[4] = v10;
    v11 = v13[5];
    v6[5] = v13[4];
    v6[6] = v11;
    v12 = v13[1];
    v6[1] = v13[0];
    v6[2] = v12;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.ThreeLineTextLayout.secondarySpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 176, v4);
  return sub_1BAD73C44;
}

uint64_t AppStore.ThreeLineTextLayout.numberOfLines.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 216);
}

uint64_t AppStore.ThreeLineTextLayout.numberOfLines.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD73244(v3 + 16, v13);
  *(&v14 + 1) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7327C(v13, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B218);
    v6 = swift_allocObject();
    v7 = v13[11];
    v6[11] = v13[10];
    v6[12] = v7;
    v6[13] = v14;
    v8 = v13[7];
    v6[7] = v13[6];
    v6[8] = v8;
    v9 = v13[9];
    v6[9] = v13[8];
    v6[10] = v9;
    v10 = v13[3];
    v6[3] = v13[2];
    v6[4] = v10;
    v11 = v13[5];
    v6[5] = v13[4];
    v6[6] = v11;
    v12 = v13[1];
    v6[1] = v13[0];
    v6[2] = v12;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.ThreeLineTextLayout.numberOfLines.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 216);
  return sub_1BAD73E28;
}

void sub_1BAD73E28(uint64_t a1)
{
  v1 = *a1;
  AppStore.ThreeLineTextLayout.numberOfLines.setter(*(*a1 + 24));

  free(v1);
}

double AppStore.ThreeLineTextLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v5 = sub_1BAD9DA68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  swift_beginAccess();
  sub_1BAD14A3C(v9 + 96, v17);
  v10 = v18;
  v11 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_1BAD6EE7C(v8);
  AnyDimension.value(in:rounded:)(a1, v8, v10, v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_1BAD14A3C(v9 + 176, v17);
  v13 = v18;
  v14 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_1BAD6EE7C(v8);
  AnyDimension.value(in:rounded:)(a1, v8, v13, v14);
  v12(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return a2;
}

double AppStore.ThreeLineTextLayout.placeChildren(relativeTo:in:)@<D0>(void *a1@<X0>, CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v157 = a6;
  v156 = a5;
  v154 = a4;
  v155 = a3;
  v147 = a2;
  v8 = sub_1BAD9DA68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v6;
  swift_beginAccess();
  sub_1BAD14A3C(v12 + 16, &v159);
  d = v159.d;
  tx = v159.tx;
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  if ((*(*&tx + 88))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx)))
  {
    __swift_destroy_boxed_opaque_existential_1(&v159);
LABEL_4:
    sub_1BAD14A3C(v12 + 16, &v159);
    v18 = v159.d;
    v19 = v159.tx;
    __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
    (*(*&v19 + 24))(1, COERCE_CGFLOAT(*&v18), COERCE_CGFLOAT(*&v19));
    __swift_destroy_boxed_opaque_existential_1(&v159);
    sub_1BAD14A3C(v12 + 56, &v159);
    v20 = v159.d;
    v21 = v159.tx;
    __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
    (*(*&v21 + 24))(1, COERCE_CGFLOAT(*&v20), COERCE_CGFLOAT(*&v21));
    __swift_destroy_boxed_opaque_existential_1(&v159);
    sub_1BAD14A3C(v12 + 16, &v159);
    v22 = v159.d;
    v23 = v159.tx;
    __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
    v24 = v156;
    v25 = v157;
    v26 = (*(*(*(*&v23 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v22), v156, v157);
    v153 = v27;
    v29 = v28;
    v151 = v30;
    __swift_destroy_boxed_opaque_existential_1(&v159);
    sub_1BAD14A3C(v12 + 56, &v159);
    v31 = v159.d;
    v32 = v159.tx;
    __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
    v33 = v25;
    v34 = v29;
    v152 = (*(*(*(*&v32 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v31), v24, v33);
    v146 = v35;
    v145 = v36;
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1(&v159);
LABEL_5:
    v148 = v38;
    sub_1BAD14A3C(v12 + 96, &v159);
    v39 = *&v159.d;
    v40 = *&v159.tx;
    __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
    sub_1BAD6EE7C(v11);
    AnyDimension.value(in:rounded:)(a1, v11, v39, v40);
    v42 = v41;
    v43 = *(v9 + 8);
    v43(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    goto LABEL_6;
  }

  sub_1BAD14A3C(v12 + 56, &v158);
  v15 = v158.d;
  v16 = v158.tx;
  __swift_project_boxed_opaque_existential_1(&v158, *&v158.d);
  v17 = (*(*&v16 + 88))(COERCE_CGFLOAT(*&v15), COERCE_CGFLOAT(*&v16));
  __swift_destroy_boxed_opaque_existential_1(&v158);
  __swift_destroy_boxed_opaque_existential_1(&v159);
  if (v17)
  {
    goto LABEL_4;
  }

  sub_1BAD14A3C(v12 + 16, &v159);
  v111 = v159.d;
  v112 = v159.tx;
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  (*(*&v112 + 24))(*(v12 + 216), COERCE_CGFLOAT(*&v111), COERCE_CGFLOAT(*&v112));
  __swift_destroy_boxed_opaque_existential_1(&v159);
  sub_1BAD14A3C(v12 + 16, &v159);
  v113 = v159.d;
  v114 = v159.tx;
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  v115 = (*(*(*(*&v114 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v113), v156, v157);
  v117 = v116;
  v119 = v118;
  v121 = v120;
  __swift_destroy_boxed_opaque_existential_1(&v159);
  sub_1BAD14A3C(v12 + 16, &v159);
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  v182.var0 = v115;
  v153 = v117;
  v182.var1 = v117;
  v182.var2 = v119;
  v182.var3 = v121;
  v122 = LayoutTextView.estimatedNumberOfLines(from:)(v182);
  __swift_destroy_boxed_opaque_existential_1(&v159);
  sub_1BAD14A3C(v12 + 56, &v159);
  v123 = v159.d;
  v124 = v159.tx;
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  v150 = v119;
  MinX = v115;
  if (v122 <= 1)
  {
    v125 = *(v12 + 216);
  }

  else
  {
    v125 = 1;
  }

  (*(*&v124 + 24))(v125, COERCE_CGFLOAT(*&v123), COERCE_CGFLOAT(*&v124));
  __swift_destroy_boxed_opaque_existential_1(&v159);
  sub_1BAD14A3C(v12 + 56, &v159);
  v126 = v159.d;
  v127 = v159.tx;
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  v128 = (*(*(*(*&v127 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v126), v156, v157);
  v130 = v129;
  v132 = v131;
  v38 = v133;
  __swift_destroy_boxed_opaque_existential_1(&v159);
  sub_1BAD14A3C(v12 + 56, &v159);
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  v152 = v128;
  v183.var0 = v128;
  v146 = v130;
  v183.var1 = v130;
  v145 = v132;
  v183.var2 = v132;
  v183.var3 = v38;
  v134 = LayoutTextView.estimatedNumberOfLines(from:)(v183);
  __swift_destroy_boxed_opaque_existential_1(&v159);
  v135 = [a1 traitCollection];
  v136 = [v135 preferredContentSizeCategory];
  v137 = sub_1BAD9D528();

  v151 = v121;
  if ((v137 & 1) == 0 && v122 <= 1 && v134 < 2)
  {
    v34 = v150;
    v26 = MinX;
    goto LABEL_5;
  }

  v148 = v38;
  sub_1BAD14A3C(v12 + 136, &v159);
  v138 = *&v159.d;
  v139 = *&v159.tx;
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  sub_1BAD6EE7C(v11);
  AnyDimension.value(in:rounded:)(a1, v11, v138, v139);
  v42 = v140;
  v43 = *(v9 + 8);
  v43(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(&v159);
  v34 = v150;
  v26 = MinX;
LABEL_6:
  sub_1BAD14A3C(v12 + 176, &v159);
  v44 = *&v159.d;
  v45 = *&v159.tx;
  __swift_project_boxed_opaque_existential_1(&v159, *&v159.d);
  sub_1BAD6EE7C(v11);
  AnyDimension.value(in:rounded:)(a1, v11, v44, v45);
  *&v144 = v46;
  v43(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(&v159);
  v47 = v155;
  v163.origin.x = v155;
  v48 = v154;
  v163.origin.y = v154;
  v49 = v156;
  v163.size.width = v156;
  v50 = v157;
  v163.size.height = v157;
  MinX = CGRectGetMinX(v163);
  v164.origin.x = v47;
  v164.origin.y = v48;
  v164.size.width = v49;
  v164.size.height = v50;
  MinY = CGRectGetMinY(v164);
  v165.origin.x = v47;
  v165.origin.y = v48;
  v165.size.width = v49;
  v165.size.height = v50;
  Width = CGRectGetWidth(v165);
  if (Width >= v26)
  {
    v53 = v26;
  }

  else
  {
    v53 = Width;
  }

  v54 = v42 - v34 + MinY;
  sub_1BAD14A3C(v12 + 16, v160);
  v55 = v161;
  v56 = v162;
  __swift_project_boxed_opaque_existential_1(v160, v161);
  v57 = [a1 traitCollection];
  v58 = [v57 layoutDirection];

  v150 = v34;
  if (v58 == 1)
  {
    CGAffineTransformMakeScale(&v159, -1.0, 1.0);
    ty = v159.ty;
    v143 = v159.tx;
    v142 = *&v159.a;
    v141 = *&v159.c;
    v64 = v42 - v34 + MinY;
    v65 = v53;
    v66 = v155;
    v166.origin.x = v155;
    v67 = v154;
    v166.origin.y = v154;
    v68 = v156;
    v166.size.width = v156;
    v69 = v157;
    v166.size.height = v157;
    v70 = CGRectGetMinX(v166);
    v167.origin.x = v66;
    v53 = v65;
    v54 = v64;
    v167.origin.y = v67;
    v167.size.width = v68;
    v167.size.height = v69;
    MaxX = CGRectGetMaxX(v167);
    *&v159.c = v141;
    *&v159.a = v142;
    v159.tx = v143;
    v159.ty = ty;
    CGAffineTransformTranslate(&v158, &v159, -(v70 + MaxX), 0.0);
    v159 = v158;
    v72 = MinX;
    v168.origin.x = MinX;
    v168.origin.y = v64;
    v168.size.width = v53;
    v73 = v153;
    v168.size.height = v153;
    *v59.n128_u64 = CGRectApplyAffineTransform(v168, &v159);
  }

  else
  {
    v62.n128_f64[0] = v153;
    v73 = v153;
    v72 = MinX;
    v59.n128_f64[0] = MinX;
    v60.n128_f64[0] = v54;
    v61.n128_f64[0] = v53;
  }

  (*(*(v56 + 8) + 24))(v55, v59, v60, v61, v62);
  __swift_destroy_boxed_opaque_existential_1(v160);
  v74 = v155;
  v169.origin.x = v155;
  v75 = v154;
  v169.origin.y = v154;
  v76 = v156;
  v169.size.width = v156;
  v77 = v157;
  v169.size.height = v157;
  v153 = CGRectGetMinX(v169);
  v170.origin.x = v72;
  v170.origin.y = v54;
  v170.size.width = v53;
  v143 = v73;
  v170.size.height = v73;
  MaxY = CGRectGetMaxY(v170);
  v171.origin.x = v74;
  v171.origin.y = v75;
  v171.size.width = v76;
  v171.size.height = v77;
  v79 = CGRectGetWidth(v171);
  if (v79 >= v152)
  {
    v79 = v152;
  }

  v152 = v79;
  v151 = *&v144 - v145 + MaxY - v151;
  sub_1BAD14A3C(v12 + 56, v160);
  v80 = v161;
  v81 = v162;
  __swift_project_boxed_opaque_existential_1(v160, v161);
  v82 = [a1 traitCollection];
  v83 = [v82 layoutDirection];

  if (v83 == 1)
  {
    CGAffineTransformMakeScale(&v159, -1.0, 1.0);
    v88 = v154;
    v145 = v54;
    v89 = v159.tx;
    v90 = v159.ty;
    v144 = *&v159.a;
    v142 = *&v159.c;
    v91 = v155;
    v172.origin.x = v155;
    v172.origin.y = v154;
    v92 = v53;
    v93 = v156;
    v172.size.width = v156;
    v94 = v157;
    v172.size.height = v157;
    v95 = CGRectGetMinX(v172);
    v173.origin.x = v91;
    v173.origin.y = v88;
    v173.size.width = v93;
    v53 = v92;
    v173.size.height = v94;
    v96 = CGRectGetMaxX(v173);
    *&v159.c = v142;
    *&v159.a = v144;
    v159.tx = v89;
    v159.ty = v90;
    v54 = v145;
    v72 = MinX;
    CGAffineTransformTranslate(&v158, &v159, -(v95 + v96), 0.0);
    v159 = v158;
    v174.origin.x = v153;
    v174.origin.y = v151;
    v174.size.width = v152;
    v97 = v146;
    v174.size.height = v146;
    *v84.n128_u64 = CGRectApplyAffineTransform(v174, &v159);
  }

  else
  {
    v87.n128_f64[0] = v146;
    v97 = v146;
    v84.n128_f64[0] = v153;
    v85.n128_f64[0] = v151;
    v86.n128_f64[0] = v152;
  }

  v98 = v150;
  (*(*(v81 + 8) + 24))(v80, v84, v85, v86, v87);
  __swift_destroy_boxed_opaque_existential_1(v160);
  v175.origin.x = v72;
  v175.origin.y = v54;
  v175.size.width = v53;
  v175.size.height = v143;
  v99 = CGRectGetMinY(v175);
  v100 = v155;
  v176.origin.x = v155;
  v101 = v154;
  v176.origin.y = v154;
  v102 = v156;
  v176.size.width = v156;
  v103 = v157;
  v176.size.height = v157;
  v150 = v98 + v99 - CGRectGetMinY(v176);
  v177.origin.x = v100;
  v177.origin.y = v101;
  v177.size.width = v102;
  v177.size.height = v103;
  v104 = CGRectGetMinX(v177);
  v178.origin.x = v100;
  v178.origin.y = v101;
  v178.size.width = v102;
  v178.size.height = v103;
  v105 = CGRectGetMinY(v178);
  v179.origin.x = v100;
  v179.origin.y = v101;
  v179.size.width = v102;
  v179.size.height = v103;
  v106 = CGRectGetWidth(v179);
  v180.origin.x = v153;
  v180.origin.y = v151;
  v180.size.width = v152;
  v180.size.height = v97;
  v107 = CGRectGetMaxY(v180);
  v181.origin.x = v100;
  v181.origin.y = v101;
  v181.size.width = v102;
  v181.size.height = v103;
  v108 = CGRectGetMinY(v181);
  v109 = v147;
  *v147 = v104;
  v109[1] = v105;
  v109[2] = v106;
  v109[3] = v107 - v108;
  result = v148;
  v109[4] = v150;
  v109[5] = result;
  return result;
}

uint64_t sub_1BAD74D94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD74DDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id Placeable.juPlaceable.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  v13 = *(v6 + 16);
  v13(v17 - v11, v3, a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B220);
  if (swift_dynamicCast() || swift_dynamicCast())
  {
    v14 = v17[1];
  }

  else
  {
    v15 = type metadata accessor for _PlaceableAsJUPlaceable();
    (v13)(v8, v3, a1);
    v14 = sub_1BAD754AC(v8, v15, a1, a2);
  }

  (*(v6 + 8))(v12, a1);
  return v14;
}

JUMeasurements __swiftcall _PlaceableAsJUPlaceable.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v6 = *(v2 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base + 24);
  v7 = *(v2 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base), v6);
  (*(v7 + 8))(with.super.isa, v6, v7, width, height);
  result.var3 = v11;
  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

Swift::Void __swiftcall _PlaceableAsJUPlaceable.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v8 = *(v2 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base + 24);
  v9 = *(v2 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base), v8);
  (*(v9 + 16))(with.super.isa, v8, v9, x, y, width, height);
}

uint64_t _PlaceableAsJUPlaceable.description.getter()
{
  sub_1BAD14A3C(v0 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  return sub_1BAD9CFB8();
}

id _PlaceableAsJUPlaceable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _PlaceableAsJUPlaceable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BAD754AC(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v8 = objc_allocWithZone(a2);
  sub_1BAD14A3C(v12, v8 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base);
  v11.receiver = v8;
  v11.super_class = a2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_1BAD7557C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BAD755C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD7567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD756F4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_1BAD9C4B8();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_1BAD757B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_1BAD7567C(v6, a3);
}

id JUContentUnavailableViewController.__allocating_init(error:presentationContext:retry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error] = a1;
  sub_1BAD7567C(a2, &v9[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext]);
  v10 = &v9[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry];
  *v10 = a3;
  *(v10 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD759A4(a2);
  return v11;
}

id JUContentUnavailableViewController.init(error:presentationContext:retry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error] = a1;
  sub_1BAD7567C(a2, &v4[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext]);
  v10 = &v4[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry];
  *v10 = a3;
  *(v10 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD759A4(a2);
  return v11;
}

uint64_t sub_1BAD759A4(uint64_t a1)
{
  v2 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id JUContentUnavailableViewController.__allocating_init(error:retry:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error] = a1;
  v8 = a1;
  if (qword_1EBC29C58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  v10 = __swift_project_value_buffer(v9, qword_1EBC2B230);
  sub_1BAD7567C(v10, &v7[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext]);
  v11 = &v7[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);

  return v12;
}

id JUContentUnavailableViewController.init(error:retry:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error] = a1;
  v8 = a1;
  if (qword_1EBC29C58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  v10 = __swift_project_value_buffer(v9, qword_1EBC2B230);
  sub_1BAD7567C(v10, &v3[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext]);
  v11 = &v3[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);

  return v12;
}

id JUContentUnavailableViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall JUContentUnavailableViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B268);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v41 - v5;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_viewDidLoad, v4);
  sub_1BAD76268(v1, v6);
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B270));
  v8 = sub_1BAD9C658();
  [v1 addChildViewController_];
  v9 = [v8 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v8 view];

  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v12 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BADA5C60;
  v15 = [v8 view];

  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = [v15 topAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v14 + 32) = v20;
  v21 = [v8 view];

  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = [v21 leadingAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v14 + 40) = v26;
  v27 = [v8 view];

  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = [v27 bottomAnchor];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v14 + 48) = v32;
  v33 = [v8 view];

  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = [v33 trailingAnchor];

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;
    v37 = objc_opt_self();
    v38 = [v36 trailingAnchor];

    v39 = [v34 constraintEqualToAnchor_];
    *(v14 + 56) = v39;
    sub_1BAD05AB8();
    v40 = sub_1BAD9D168();

    [v37 activateConstraints_];

    [v8 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1BAD76268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B278);
  v33 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v33 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B280);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v33 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B288);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v33 - v7;
  v8 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B290);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B298);
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v33 - v16;
  v18 = *(a1 + OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry);
  if (v18)
  {
    v19 = *(a1 + OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error);
    sub_1BAD31584(*(a1 + OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry));
    sub_1BAD31584(v18);
    v20 = v19;
    sub_1BAD9C488();
    sub_1BAD7567C(a1 + OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext, v10);
    v21 = sub_1BAD76F2C(&unk_1EDBA5B58, &qword_1EBC2B290);
    sub_1BAD9C678();
    (*(v12 + 8))(v14, v11);
    v22 = sub_1BAD9C4B8();
    (*(*(v22 - 8) + 8))(v10, v22);
    v23 = v36;
    (*(v15 + 16))(v37, v17, v36);
    swift_storeEnumTagMultiPayload();
    v41 = v11;
    v42 = v21;
    swift_getOpaqueTypeConformance2();
    v24 = sub_1BAD76F2C(&qword_1EDBA5B50, &qword_1EBC2B278);
    v41 = v38;
    v42 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1BAD9C668();
    sub_1BAD17DC0(v18);
    return (*(v15 + 8))(v17, v23);
  }

  else
  {
    v26 = *(a1 + OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error);
    sub_1BAD9C498();
    sub_1BAD7567C(a1 + OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext, v10);
    v27 = sub_1BAD76F2C(&qword_1EDBA5B50, &qword_1EBC2B278);
    v28 = v38;
    sub_1BAD9C678();
    (*(v33 + 8))(v4, v28);
    v29 = sub_1BAD9C4B8();
    (*(*(v29 - 8) + 8))(v10, v29);
    v30 = v34;
    v31 = v39;
    (*(v34 + 16))(v37, v6, v39);
    swift_storeEnumTagMultiPayload();
    v32 = sub_1BAD76F2C(&unk_1EDBA5B58, &qword_1EBC2B290);
    v41 = v11;
    v42 = v32;
    swift_getOpaqueTypeConformance2();
    v41 = v28;
    v42 = v27;
    swift_getOpaqueTypeConformance2();
    sub_1BAD9C668();
    return (*(v30 + 8))(v6, v31);
  }
}

id JUContentUnavailableViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BAD9CF38();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id JUContentUnavailableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ObjCFunctions.makeContentUnavailableViewController(with:retry:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA5A60 != -1)
  {
    v17 = v7;
    swift_once();
    v7 = v17;
  }

  v10 = __swift_project_value_buffer(v7, qword_1EBC29A38);
  sub_1BAD7567C(v10, v9);
  v11 = type metadata accessor for JUContentUnavailableViewController(0);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error] = a1;
  sub_1BAD7567C(v9, &v12[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext]);
  v13 = &v12[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry];
  *v13 = a2;
  v13[1] = a3;
  v14 = a1;
  sub_1BAD31584(a2);
  v18.receiver = v12;
  v18.super_class = v11;
  v15 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD759A4(v9);
  return v15;
}

uint64_t sub_1BAD76BE0()
{
  result = sub_1BAD9C4B8();
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

uint64_t sub_1BAD76CEC()
{
  result = sub_1BAD9C4B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAD76F2C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAD76F80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD76FE4(uint64_t a1, double a2, double a3)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  return (*(v8 + 8))(a1, v7, v8, a2, a3);
}

uint64_t sub_1BAD7705C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1BAD770B4(double a1, double a2, double a3, double a4)
{
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 88);
  __swift_project_boxed_opaque_existential_1((*v4 + 56), v9);
  return (*(v10 + 24))(v9, v10, a1, a2, a3, a4);
}

void (*sub_1BAD7713C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = v5[10];
  v7 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v6);
  *v4 = (*(v7 + 16))(v6, v7);
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  return sub_1BAD771F0;
}

void sub_1BAD771F0(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = v2[10];
  v8 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v7);
  (*(v8 + 24))(v7, v8, v3, v4, v5, v6);

  free(v1);
}

uint64_t sub_1BAD77288()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 40))(v1, v2) & 1;
}

uint64_t sub_1BAD772E4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((*v1 + 56), v3);
  return (*(v4 + 48))(a1, v3, v4);
}

uint64_t (*sub_1BAD77344(uint64_t a1))(unsigned __int8 *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = v3[10];
  v5 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v4);
  *(a1 + 8) = (*(v5 + 40))(v4, v5) & 1;
  return sub_1BAD773C8;
}

uint64_t sub_1BAD773C8(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  __swift_project_boxed_opaque_existential_1((*a1 + 56), v2);
  return (*(v3 + 48))(v1, v2, v3);
}

uint64_t sub_1BAD77428()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 64))(v1, v2) & 1;
}

uint64_t sub_1BAD77484()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 72))(v1, v2);
}

void *sub_1BAD774DC(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a1, a7);
  v15 = swift_allocObject();
  v15[5] = &type metadata for StaticMeasurable;
  v15[6] = &protocol witness table for StaticMeasurable;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE88);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v15[2] = v16;
  sub_1BAD0B40C(&v18, (v15 + 7));
  return v15;
}

uint64_t sub_1BAD775D4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v9 = swift_allocObject();
  sub_1BAD0B40C(a1, v9 + 16);
  sub_1BAD0B40C(&v11, v9 + 56);
  return v9;
}

uint64_t sub_1BAD7768C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = *v5;
  swift_beginAccess();
  sub_1BAD14A3C(v11 + 56, v15);
  v12 = v16;
  v13 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v13 + 8))(a1, v12, v13, a2, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

double sub_1BAD7775C(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  swift_beginAccess();
  sub_1BAD14A3C(v7 + 16, v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = (*(v9 + 8))(a1, v8, v9, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

__n128 sub_1BAD7782C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a2, a3);
  sub_1BAD0B40C(a1, v11);
  sub_1BAD0B40C(&v13, v12 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2A0);
  v8 = swift_allocObject();
  v9 = v12[1];
  *(v8 + 48) = v12[0];
  *(v8 + 64) = v9;
  *(v8 + 80) = v12[2];
  result = v11[1];
  *(v8 + 16) = v11[0];
  *(v8 + 32) = result;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BAD77918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD77960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UIViewController.PresenterMultiplexer.add(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1BAD18EF4(0, v5[2] + 1, 1, v5);
    *v2 = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1BAD18EF4((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *v2 = v5;

  return swift_unknownObjectRetain();
}

uint64_t UIViewController.PresenterMultiplexer.remove(_:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
    for (i = (*v1 + 32); *i != result; i += 2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    sub_1BAD335EC(v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIViewController.PresenterMultiplexer.viewWillDisappear(forReason:)()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BAD9CBF8();
      result = swift_unknownObjectRelease();
      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1BAD77BEC(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (*v1 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v3(ObjectType, v5);
      result = swift_unknownObjectRelease();
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

double DisjointStack.Properties.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t DisjointStack.Placements.union.getter@<X0>(CGFloat *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[5];
  v49 = v1[4];
  v50 = v4;
  v5 = v1[1];
  v46[0] = *v1;
  v46[1] = v5;
  v6 = v1[3];
  v8 = *v1;
  v7 = v1[1];
  v47 = v1[2];
  v48 = v6;
  v9 = v1[5];
  v43 = v49;
  v44 = v9;
  v39 = v8;
  v40 = v7;
  v51 = *(v1 + 96);
  v45 = *(v1 + 96);
  v41 = v47;
  v42 = v3;
  sub_1BAD47E28(v46, &v26);
  DisjointStack.Placements.next()(&v33);
  if (*(&v34 + 1))
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    height = 0.0;
    width = 0.0;
    y = 0.0;
    x = 0.0;
    do
    {
      r1 = height;
      v25 = v12;
      v17 = width;
      v18 = v11;
      while (1)
      {
        v28 = v35;
        v29 = v36;
        v30 = v37;
        *&v31 = v38;
        v26 = v33;
        v27 = v34;
        v19 = *(&v35 + 1);
        width = *(&v36 + 1);
        v20 = *&v36;
        height = *&v37;
        v52.origin.x = *(&v35 + 1);
        *&v52.origin.y = v36;
        *&v52.size.height = v37;
        if (!CGRectIsEmpty(v52))
        {
          break;
        }

        sub_1BAD17170(&v26);
        DisjointStack.Placements.next()(&v33);
        if (!*(&v34 + 1))
        {
          v11 = v18;
          height = r1;
          v12 = v25;
          width = v17;
          goto LABEL_18;
        }
      }

      if (v10)
      {
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = v17;
        v53.size.height = r1;
        v55.origin.x = v19;
        v55.origin.y = v20;
        v55.size.width = width;
        v55.size.height = height;
        v54 = CGRectUnion(v53, v55);
        x = v54.origin.x;
        y = v54.origin.y;
        width = v54.size.width;
        height = v54.size.height;
        v21 = *&v31;
        if (v18 >= *(&v30 + 1))
        {
          v11 = *(&v30 + 1);
        }

        else
        {
          v11 = v18;
        }

        sub_1BAD17170(&v26);
        v12 = v25;
        if (v25 >= v21)
        {
          v12 = v21;
        }
      }

      else
      {
        v22 = *(&v30 + 1);
        v12 = *&v31;
        sub_1BAD17170(&v26);
        x = v19;
        v11 = v22;
        y = v20;
      }

      DisjointStack.Placements.next()(&v33);
      v10 = 1;
    }

    while (*(&v34 + 1));
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
    y = 0.0;
  }

LABEL_18:
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  result = sub_1BAD47E84(&v26);
  *a1 = x;
  a1[1] = y;
  a1[2] = width;
  a1[3] = height;
  a1[4] = v11;
  a1[5] = v12;
  return result;
}

void DisjointStack.Placements.next()(uint64_t a1@<X8>)
{
  v11 = *(v2 + 7);
  v12 = *(v2 + 5);
  if (v11 >= *(v12 + 16))
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v1 = v2;
  v4 = v70;
  sub_1BAD78528(v12 + 208 * v11 + 32, v70);
  if (v73[40] == 1)
  {
    v8 = sub_1BAD78988();
    v7 = v13;
    v15 = v14;
    v9 = v16;
    if ((v74 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (qword_1EDBA5998 == -1)
    {
LABEL_14:
      v33 = *(&xmmword_1EDBA59A0 + 1);
      v32 = *&xmmword_1EDBA59A0;
      sub_1BAD14A3C(v70, &v66);
      sub_1BAD14A3C(&v66, a1);
      *(a1 + 40) = floor(v8);
      *(a1 + 48) = floor(v7);
      v15 = floor(v32);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      sub_1BAD78D08(v70);
      *(a1 + 72) = v15;
      *(a1 + 80) = floor(v33);
      v34 = *(v1 + 7);
      v35 = __OFADD__(v34, 1);
      v21 = v34 + 1;
      if (!v35)
      {
LABEL_38:
        *(v1 + 7) = v21;
        return;
      }

      __break(1u);
      goto LABEL_17;
    }

LABEL_42:
    swift_once();
    goto LABEL_14;
  }

  v8 = *v2;
  v7 = *(v2 + 1);
  v15 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v74)
  {
    goto LABEL_13;
  }

LABEL_5:
  v3 = *(v2 + 7);
  sub_1BAD78BA0(v3);
  v5 = v17;
  v6 = v18;
  v58 = v20;
  v59 = v19;
  v2 = &v66;
  sub_1BAD30518(&v71, &v66);
  sub_1BAD30518(v73, &v68);
  v21 = v69;
  if (v67)
  {
    if (v69)
    {
      sub_1BAD0B40C(&v66, v63);
      sub_1BAD0B40C(&v68, v60);
      v75.origin.x = v8;
      v75.origin.y = v7;
      v75.size.width = v15;
      v75.size.height = v9;
      MinX = CGRectGetMinX(v75);
      v23 = v64;
      v24 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v25 = *(v1 + 4);
      v26 = MinX + AnyDimension.value(with:)(v25, v23, v24);
      v76.origin.x = v8;
      v76.origin.y = v7;
      v76.size.width = v15;
      v76.size.height = v9;
      MaxX = CGRectGetMaxX(v76);
      v77.origin.y = 0.0;
      v77.size.width = 0.0;
      v77.size.height = 0.0;
      v77.origin.x = v26;
      v28 = MaxX - CGRectGetMinX(v77);
      if (v5 > v28)
      {
        v29 = v5;
      }

      else
      {
        v29 = v28;
      }

      v30 = v61;
      v31 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v5 = v29 - AnyDimension.value(with:)(v25, v30, v31);
      __swift_destroy_boxed_opaque_existential_1(v60);
    }

    else
    {
      sub_1BAD0B40C(&v66, v63);
      v79.origin.x = v8;
      v79.origin.y = v7;
      v79.size.width = v15;
      v79.size.height = v9;
      v39 = CGRectGetMinX(v79);
      v40 = v64;
      v41 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v26 = v39 + AnyDimension.value(with:)(*(v1 + 4), v40, v41);
    }

    goto LABEL_20;
  }

LABEL_17:
  if (v21)
  {
    sub_1BAD0B40C((v2 + 40), v63);
    v78.origin.x = v8;
    v78.origin.y = v7;
    v78.size.width = v15;
    v78.size.height = v9;
    v36 = CGRectGetMaxX(v78) - v5;
    v37 = v64;
    v38 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v26 = v36 - AnyDimension.value(with:)(*(v1 + 4), v37, v38);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v63);
    goto LABEL_21;
  }

  v87.origin.x = v8;
  v87.origin.y = v7;
  v87.size.width = v15;
  v87.size.height = v9;
  v26 = CGRectGetMidX(v87) + v5 * -0.5;
LABEL_21:
  sub_1BAD30518((v4 + 40), &v66);
  sub_1BAD30518(&v72, &v68);
  if (v67)
  {
    if (v69)
    {
      sub_1BAD0B40C(&v66, v63);
      sub_1BAD0B40C(&v68, v60);
      v80.origin.x = v8;
      v80.origin.y = v7;
      v80.size.width = v15;
      v80.size.height = v9;
      MinY = CGRectGetMinY(v80);
      v43 = v64;
      v44 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v45 = *(v1 + 4);
      v46 = MinY + AnyDimension.value(with:)(v45, v43, v44);
      v81.origin.x = v8;
      v81.origin.y = v7;
      v81.size.width = v15;
      v81.size.height = v9;
      MaxY = CGRectGetMaxY(v81);
      v82.size.height = 0.0;
      v82.origin.x = v26;
      v82.origin.y = v46;
      v82.size.width = v5;
      v48 = MaxY - CGRectGetMinY(v82);
      if (v6 > v48)
      {
        v49 = v6;
      }

      else
      {
        v49 = v48;
      }

      v50 = v61;
      v51 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v6 = v49 - AnyDimension.value(with:)(v45, v50, v51);
      __swift_destroy_boxed_opaque_existential_1(v60);
    }

    else
    {
      sub_1BAD0B40C(&v66, v63);
      v84.origin.x = v8;
      v84.origin.y = v7;
      v84.size.width = v15;
      v84.size.height = v9;
      v55 = CGRectGetMinY(v84);
      v56 = v64;
      v57 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v46 = v55 + AnyDimension.value(with:)(*(v1 + 4), v56, v57);
    }
  }

  else
  {
    if (!v69)
    {
      v88.origin.x = v8;
      v88.origin.y = v7;
      v88.size.width = v15;
      v88.size.height = v9;
      v46 = CGRectGetMidY(v88) + v6 * -0.5;
      goto LABEL_31;
    }

    sub_1BAD0B40C(&v68, v63);
    v83.origin.x = v8;
    v83.origin.y = v7;
    v83.size.width = v15;
    v83.size.height = v9;
    v52 = CGRectGetMaxY(v83) - v6;
    v53 = v64;
    v54 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v46 = v52 - AnyDimension.value(with:)(*(v1 + 4), v53, v54);
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
LABEL_31:
  v85.origin.x = v26;
  v85.origin.y = v46;
  v85.size.width = v5;
  v85.size.height = v6;
  if (CGRectGetMinX(v85) < 0.0 && CGRectGetWidth(*v1) == 0.0)
  {
    v26 = 0.0;
  }

  v86.origin.x = v26;
  v86.origin.y = v46;
  v86.size.width = v5;
  v86.size.height = v6;
  if (CGRectGetMinY(v86) < 0.0 && CGRectGetHeight(*v1) == 0.0)
  {
    v46 = 0.0;
  }

  sub_1BAD14A3C(v70, &v66);
  sub_1BAD14A3C(&v66, a1);
  *(a1 + 40) = floor(v26);
  *(a1 + 48) = floor(v46);
  *(a1 + 56) = ceil(v5);
  *(a1 + 64) = ceil(v6);
  __swift_destroy_boxed_opaque_existential_1(&v66);
  sub_1BAD78D08(v70);
  *(a1 + 72) = floor(v59);
  *(a1 + 80) = floor(v58);
  v21 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_38;
  }

  __break(1u);
}

uint64_t sub_1BAD78528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DisjointStack.init(with:)@<X0>(void (*a1)(_OWORD *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (a1)
  {
    a1(v5);
  }

  sub_1BAD31520(v5, a2);
  sub_1BAD17DC0(a1);
  result = sub_1BAD308A4(v5);
  *(a2 + 168) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t DisjointStack.insert(_:at:with:)(uint64_t a1, int64_t a2, char a3, void (*a4)(_BYTE *))
{
  v5 = v4;
  sub_1BAD31520(v4, v38);
  if (a4)
  {
    a4(v38);
  }

  if (a3)
  {
    sub_1BAD14A3C(a1, &v26);
    sub_1BAD31520(v38, &v28 + 8);
    v10 = *(v4 + 168);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BAD1850C(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1BAD1850C((v11 > 1), v12 + 1, 1, v10);
    }

    result = sub_1BAD308A4(v38);
    v10[2] = v12 + 1;
    v14 = &v10[26 * v12];
    v15 = v30;
    v17 = v27;
    v16 = v28;
    v14[5] = v29;
    v14[6] = v15;
    v14[3] = v17;
    v14[4] = v16;
    v18 = v34;
    v20 = v31;
    v19 = v32;
    v14[9] = v33;
    v14[10] = v18;
    v14[7] = v20;
    v14[8] = v19;
    v22 = v36;
    v21 = v37[0];
    v23 = v35;
    *(v14 + 218) = *(v37 + 10);
    v14[12] = v22;
    v14[13] = v21;
    v14[11] = v23;
    v14[2] = v26;
    *(v5 + 168) = v10;
  }

  else
  {
    sub_1BAD14A3C(a1, &v26);
    result = sub_1BAD31520(v38, &v28 + 8);
    if (*(*(v4 + 168) + 16) < a2)
    {
      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      v24[10] = v36;
      v25[0] = v37[0];
      *(v25 + 10) = *(v37 + 10);
      v24[6] = v32;
      v24[7] = v33;
      v24[8] = v34;
      v24[9] = v35;
      v24[2] = v28;
      v24[3] = v29;
      v24[4] = v30;
      v24[5] = v31;
      v24[0] = v26;
      v24[1] = v27;
      sub_1BAD1984C(a2, a2, v24);
      return sub_1BAD308A4(v38);
    }

    __break(1u);
  }

  return result;
}

void __swiftcall DisjointStack.layout(relativeTo:with:)(JetUI::DisjointStack::Placements *__return_ptr retstr, __C::CGRect relativeTo, UITraitCollection with)
{
  v5 = *(v3 + 168);
  retstr->$__lazy_storage_$_contentBoundingRect.value.origin = 0u;
  retstr->$__lazy_storage_$_contentBoundingRect.value.size = 0u;
  retstr->$__lazy_storage_$_contentBoundingRect.is_nil = 1;
  retstr->boundingRect = relativeTo;
  retstr->traits = with;
  retstr->children._rawValue = v5;
  v6 = v5[2];
  v7 = with.super.isa;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A7F0);
    v8 = sub_1BAD9D1D8();
    v8[2] = v6;
    v9 = 4;
    do
    {
      v10 = &v8[v9];
      *v10 = 0uLL;
      *(v10 + 1) = 0uLL;
      *(v10 + 32) = 1;
      v9 += 5;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  retstr->measurements._rawValue = v8;
  retstr->walkingChildIndex = 0;
}

double sub_1BAD78988()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    return *(v0 + 64);
  }

  sub_1BAD789C8(v0);
  *(v0 + 64) = result;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = 0;
  return result;
}

void sub_1BAD789C8(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    v6 = 32;
    v7 = 0.0;
    while (1)
    {
      v10 = *(a1 + 48);
      if (v4 >= *(v10 + 16))
      {
        break;
      }

      v11 = v10 + v3;
      if (*(v11 + 64))
      {
        v12 = *(a1 + 40);
        if (v4 >= *(v12 + 16))
        {
          goto LABEL_18;
        }

        sub_1BAD78528(v12 + v6, v26);
        v13 = *(a1 + 16);
        v14 = *(a1 + 24);
        v15 = *(a1 + 32);
        v16 = v27;
        v17 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v9 = (*(v17 + 8))(v15, v16, v17, v13, v14);
        v8 = v18;
        v20 = v19;
        v22 = v21;
        sub_1BAD78D08(v26);
        v23 = *(a1 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 48) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_1BAD9331C(v23);
          *(a1 + 48) = v23;
        }

        if (v4 >= *(v23 + 2))
        {
          goto LABEL_19;
        }

        v25 = &v23[v3];
        *(v25 + 4) = v9;
        *(v25 + 5) = v8;
        *(v25 + 6) = v20;
        *(v25 + 7) = v22;
        v25[64] = 0;
      }

      else
      {
        v9 = *(v11 + 32);
        v8 = *(v11 + 40);
      }

      ++v4;
      if (v7 <= v9)
      {
        v7 = v9;
      }

      if (v5 <= v8)
      {
        v5 = v8;
      }

      v3 += 40;
      v6 += 208;
      if (v2 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_16:
    CGRectGetMidX(*a1);
    CGRectGetMidY(*a1);
  }
}

unint64_t sub_1BAD78BA0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v1 = v2;
  v4 = result;
  v3 = *(v2 + 6);
  if (*(v3 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = 40 * result;
  if ((*(v3 + 40 * result + 64) & 1) == 0)
  {
    return result;
  }

  v10 = *(v2 + 5);
  if (*(v10 + 16) > result)
  {
    sub_1BAD78528(v10 + 208 * result + 32, v20);
    v11 = v2[2];
    v12 = v2[3];
    v13 = *(v2 + 4);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v6 = (*(v15 + 8))(v13, v14, v15, v11, v12);
    v7 = v16;
    v8 = v17;
    v9 = v18;
    sub_1BAD78D08(v20);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  result = sub_1BAD9331C(v3);
  v3 = result;
LABEL_6:
  if (*(v3 + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    v19 = v3 + v5;
    *(v19 + 32) = v6;
    *(v19 + 40) = v7;
    *(v19 + 48) = v8;
    *(v19 + 56) = v9;
    *(v19 + 64) = 0;
    *(v1 + 6) = v3;
  }

  return result;
}

uint64_t sub_1BAD78D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAD78D74()
{
  v1 = *(v0 + 80);
  v7[4] = *(v0 + 64);
  v7[5] = v1;
  v8 = *(v0 + 96);
  v2 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v2;
  v3 = *(v0 + 48);
  v7[2] = *(v0 + 32);
  v7[3] = v3;
  sub_1BAD831CC(v7);
  v5 = v4;
  sub_1BAD47E84(v7);
  return v5;
}

uint64_t sub_1BAD78E44@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = *(v6 + 168);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v8;
  memset(v12, 0, sizeof(v12));
  v13 = 1;
  v9 = *(v8 + 16);
  v10 = a1;

  result = sub_1BAD3149C(v12, v9);
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  return result;
}

unint64_t sub_1BAD78F54(uint64_t a1)
{
  result = sub_1BAD78F7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD78F7C()
{
  result = qword_1EBC2B2A8;
  if (!qword_1EBC2B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B2A8);
  }

  return result;
}

unint64_t sub_1BAD78FD4()
{
  result = qword_1EBC2B2B0;
  if (!qword_1EBC2B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B2B0);
  }

  return result;
}

unint64_t sub_1BAD7902C()
{
  result = qword_1EBC2B2B8;
  if (!qword_1EBC2B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B2B8);
  }

  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BAD790DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 162))
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

uint64_t sub_1BAD79138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

NSAttributedString __swiftcall NSAttributedString.init(attributedString:defaultAttributes:)(NSAttributedString attributedString, Swift::OpaquePointer defaultAttributes)
{
  v3 = [(objc_class *)attributedString.super.isa string];
  if (!v3)
  {
    sub_1BAD9CF68();
    v3 = sub_1BAD9CF38();
  }

  v4 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  type metadata accessor for Key(0);
  sub_1BAD30308();
  v5 = sub_1BAD9CE88();

  v6 = [v4 initWithString:v3 attributes:v5];

  v7 = [(objc_class *)attributedString.super.isa length];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BAD13DA0;
  *(v9 + 24) = v8;
  v14[4] = sub_1BAD30360;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BAD12750;
  v14[3] = &block_descriptor_9;
  v10 = _Block_copy(v14);
  v11 = v6;

  [(objc_class *)attributedString.super.isa enumerateAttributesInRange:0 options:v7 usingBlock:0, v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

    return v13;
  }

  return result;
}

void sub_1BAD7943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for Key(0);
  sub_1BAD30308();
  v8 = sub_1BAD9CE88();
  [a5 addAttributes:v8 range:{a2, a3}];
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1BAD794F8(uint64_t a1, double a2, double a3)
{
  v6 = sub_1BAD9DA68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 * a3;
  v16 = v10;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x1E69E7038])
  {
    v12 = round(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7030])
  {
    v12 = rint(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7040])
  {
    v12 = ceil(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7048])
  {
    v12 = floor(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7020])
  {
    v12 = trunc(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7028])
  {
    v12 = ceil(v10);
    v13 = floor(v10);
    if (v10 < 0.0)
    {
      v12 = v13;
    }
  }

  else
  {
    sub_1BAD9D318();
    (*(v7 + 8))(v9, v6);
    v12 = v16;
  }

  return v12 / a2;
}

uint64_t sub_1BAD796E0(void *a1, void *a2)
{
  [a1 size];
  v5 = v4;
  [a2 size];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  [a1 size];
  v8 = v7;
  [a2 size];
  v10 = v8 + v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v5;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BAD7999C;
  *(v13 + 24) = v12;
  v20[4] = sub_1BAD799AC;
  v20[5] = v13;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1BAD209F0;
  v20[3] = &block_descriptor_10;
  v14 = _Block_copy(v20);
  v15 = a1;
  v16 = a2;

  v17 = [v11 imageWithActions_];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

id sub_1BAD798D0(int a1, id a2, double a3, double a4, void *a5)
{
  [a2 size];
  v9 = a4 - v8;
  [a2 size];
  v11 = v10;
  [a2 size];
  [a2 drawInRect_];
  [a5 size];
  v14 = v13;
  [a5 size];

  return [a5 drawInRect_];
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAD799D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 8);
  a4[3] = a2;
  a4[4] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  result = (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, a1, a2);
  a4[5] = MEMORY[0x1E69E7CC0];
  return result;
}

__n128 Adaptive.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for Adaptive;
  a2[4] = &protocol witness table for Adaptive;
  v4 = swift_allocObject();
  *a2 = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  result = *(a1 + 32);
  *(v4 + 48) = result;
  a2[5] = MEMORY[0x1E69E7CC0];
  return result;
}

__n128 _s5JetUI8AdaptiveV8onCustomyACSbSo17UITraitCollectionCc_xtAA0E6LayoutRzlF_0@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1BAD79ABC(v6, a6);
  v13 = *(a5 + 8);
  *(&v24 + 1) = a4;
  v25 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a3, a4);
  v22.n128_u64[0] = a1;
  v22.n128_u64[1] = a2;
  v15 = *(a6 + 40);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1BAD19028(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1BAD19028((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  v19 = v25;
  result = v22;
  v21 = v24;
  *(v18 + 3) = v23;
  *(v18 + 4) = v21;
  *(v18 + 2) = v22;
  *(v18 + 10) = v19;
  *(a6 + 40) = v15;
  return result;
}

__n128 Adaptive.onCustom(_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  sub_1BAD79ABC(v5, a4);
  v10 = swift_allocObject();
  sub_1BAD79ABC(a3, v10 + 16);
  v11 = *(a4 + 40);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1BAD19028(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1BAD19028((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[56 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *(v14 + 6) = v10;
  result = v16;
  *(v14 + 56) = v16;
  *(v14 + 9) = &type metadata for Adaptive;
  *(v14 + 10) = &protocol witness table for Adaptive;
  *(a4 + 40) = v11;
  return result;
}

uint64_t Adaptive.onAccessibleContentSize<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return Adaptive.onCustom<A>(_:_:)(sub_1BAD7A6C4, 0, a1, a2, a3);
}

{
  return Adaptive.onCustom<A>(_:_:)(sub_1BAD7A6C4, 0, a1, a2, a3);
}

__n128 Adaptive.onAccessibleContentSize(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAD79ABC(v2, a2);
  v5 = swift_allocObject();
  sub_1BAD79ABC(a1, v5 + 16);
  v6 = *(a2 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1BAD19028(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1BAD19028((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[56 * v8];
  *(v9 + 4) = sub_1BAD7A6C4;
  *(v9 + 5) = 0;
  *(v9 + 6) = v5;
  result = v11;
  *(v9 + 56) = v11;
  *(v9 + 9) = &type metadata for Adaptive;
  *(v9 + 10) = &protocol witness table for Adaptive;
  *(a2 + 40) = v6;
  return result;
}

uint64_t Adaptive.bestLayout(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return sub_1BAD14A3C(v2, a2);
  }

  v6 = result;
  v7 = 0;
  v8 = v4 + 32;
  while (v7 < *(v4 + 16))
  {
    sub_1BAD7A524(v8, &v9);
    if (v9(v6))
    {
      sub_1BAD14A3C(&v10, a2);
      return sub_1BAD7A55C(&v9);
    }

    ++v7;
    result = sub_1BAD7A55C(&v9);
    v8 += 56;
    if (v5 == v7)
    {
      return sub_1BAD14A3C(v2, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t Adaptive._bestLayoutForTesting(with:)(uint64_t a1)
{
  Adaptive.bestLayout(with:)(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD38);
  return swift_dynamicCast();
}

JUMeasurements __swiftcall Adaptive.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  Adaptive.bestLayout(with:)(with.super.isa, v18);
  v5 = v19;
  v6 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v7 = (*(v6 + 8))(with.super.isa, v5, v6, width, height);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

Swift::Void __swiftcall Adaptive.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  Adaptive.bestLayout(with:)(with.super.isa, v9);
  v7 = v10;
  v8 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v8 + 16))(with.super.isa, v7, v8, x, y, width, height);
  __swift_destroy_boxed_opaque_existential_1(v9);
}

JetUI::_LayoutAlignment __swiftcall Adaptive._layoutAlignment(with:)(UITraitCollection with)
{
  v3 = v1;
  Adaptive.bestLayout(with:)(with.super.isa, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
  if (swift_dynamicCast())
  {
    sub_1BAD1A480(v7, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v5 + 8))(with.super.isa, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v6 = sub_1BAD7A58C(v7);
    *v3 = 0;
  }

  return v6;
}

uint64_t Adaptive._eraseToAnyForTesting(with:)(uint64_t a1)
{
  Adaptive.bestLayout(with:)(a1, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD38);
  swift_dynamicCast();
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v3 + 8))(a1, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

double sub_1BAD7A300(uint64_t a1, double a2, double a3)
{
  Adaptive.bestLayout(with:)(a1, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 8))(a1, v6, v7, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_1BAD7A3B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  Adaptive.bestLayout(with:)(a1, v13);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 16))(a1, v10, v11, a2, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1BAD7A45C(uint64_t a1)
{
  Adaptive.bestLayout(with:)(a1, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD38);
  swift_dynamicCast();
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v3 + 8))(a1, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1BAD7A58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1BAD7A620(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BAD7A668(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t VerticalStack.add(_:with:)(void *a1, void (*a2)(_OWORD *))
{
  v3 = a1[3];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  Measurable.placeable.getter(v3, v4, v6);
  VerticalStack.add(_:with:)(v6, a2);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t VerticalStack.adding(_:with:)@<X0>(void *a1@<X0>, void (*a2)(_OWORD *)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Measurable.placeable.getter(v7, v8, v10);
  sub_1BAD48040(v4, a3);
  VerticalStack.add(_:with:)(v10, a2);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t VerticalStack.insert(_:at:with:)(void *a1, int64_t a2, void (*a3)(_BYTE *))
{
  v5 = a1[3];
  v6 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Measurable.placeable.getter(v5, v6, v8);
  VerticalStack.insert(_:at:with:)(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t VerticalStack.inserting(_:at:with:)@<X0>(void *a1@<X0>, int64_t a2@<X1>, void (*a3)(_BYTE *)@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Measurable.placeable.getter(v9, v10, v12);
  sub_1BAD48040(v5, a4);
  VerticalStack.insert(_:at:with:)(v12, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

__n128 FrameLayout.init(view:skipLayoutMeasurements:layoutMargins:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  sub_1BAD1A480(a1, v16);
  BYTE8(v17) = a2;
  *&v18 = a4;
  *(&v18 + 1) = a5;
  *&v19 = a6;
  *(&v19 + 1) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C0);
  v13 = swift_allocObject();
  v14 = v18;
  *(v13 + 48) = v17;
  *(v13 + 64) = v14;
  *(v13 + 80) = v19;
  result = v16[1];
  *(v13 + 16) = v16[0];
  *(v13 + 32) = result;
  *a3 = v13;
  return result;
}

uint64_t FrameLayout.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD7AA0C(v3 + 16, v5);
  return sub_1BAD1A480(v5, a1);
}

uint64_t sub_1BAD7AA44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1BAD7AA0C(v3 + 16, v5);
  return sub_1BAD1A480(v5, a2);
}

uint64_t FrameLayout.view.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD7AA0C(v3 + 16, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1BAD1A480(a1, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7AB88(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C0);
    v6 = swift_allocObject();
    v7 = v9[3];
    v6[3] = v9[2];
    v6[4] = v7;
    v6[5] = v9[4];
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*FrameLayout.view.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD7AA0C(v5 + 16, v4);
  sub_1BAD1A480(v4, (v4 + 5));
  return sub_1BAD7AC60;
}

void sub_1BAD7AC60(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 5;
  if (a2)
  {
    sub_1BAD14A3C(v3, v2);
    FrameLayout.view.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 5));
  }

  else
  {
    FrameLayout.view.setter(v3);
  }

  free(v2);
}

uint64_t FrameLayout.skipLayoutMeasurements.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t FrameLayout.skipLayoutMeasurements.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD7AA0C(v3 + 16, v9);
  BYTE8(v10) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7AB88(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C0);
    v6 = swift_allocObject();
    v7 = v11;
    v6[3] = v10;
    v6[4] = v7;
    v6[5] = v12;
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*FrameLayout.skipLayoutMeasurements.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 56);
  return sub_1BAD7AE6C;
}

void sub_1BAD7AE6C(uint64_t a1)
{
  v1 = *a1;
  FrameLayout.skipLayoutMeasurements.setter(*(*a1 + 32));

  free(v1);
}

double FrameLayout.layoutMargins.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t FrameLayout.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_1BAD7AA0C(v9 + 16, v15);
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v4;
    swift_beginAccess();
    sub_1BAD7AB88(v15, v10 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C0);
    v12 = swift_allocObject();
    v13 = v16;
    v12[3] = v15[2];
    v12[4] = v13;
    v12[5] = v17;
    v14 = v15[1];
    v12[1] = v15[0];
    v12[2] = v14;

    *v4 = v12;
  }

  return result;
}

void (*FrameLayout.layoutMargins.modify(uint64_t *a1))(double **a1)
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
  *(v3 + 56) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 80);
  *v4 = *(v5 + 64);
  v4[1] = v6;
  return sub_1BAD7B074;
}

void sub_1BAD7B074(double **a1)
{
  v1 = *a1;
  FrameLayout.layoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double FrameLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = a2 - (v7[9] + v7[11]);
  v9 = a3 - (v7[8] + v7[10]);
  sub_1BAD7AA0C((v7 + 2), v14);
  sub_1BAD1A480(v14, v15);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(*(v11 + 8) + 8))(a1, v10, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

void FrameLayout.placeChildren(relativeTo:in:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = *v6;
  swift_beginAccess();
  v14 = *(v13 + 64);
  v15 = *(v13 + 72);
  v16 = v15 + a3;
  v17 = v14 + a4;
  v18 = a5 - (v15 + *(v13 + 88));
  v19 = a6 - (v14 + *(v13 + 80));
  if (*(v13 + 56) == 1)
  {
    sub_1BAD7AA0C(v13 + 16, v36);
    sub_1BAD1A480(v36, v37);
    v20 = v38;
    v21 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v21 + 24))(v20, v21, v16, v17, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v40.origin.x = v16;
    v40.origin.y = v17;
    v40.size.width = v18;
    v40.size.height = v19;
    Height = CGRectGetHeight(v40);
    v23 = 0;
  }

  else
  {
    sub_1BAD7AA0C(v13 + 16, v36);
    sub_1BAD1A480(v36, v37);
    v24 = v38;
    v25 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v35 = (*(*(v25 + 8) + 8))(a1, v24, v18, v19);
    v27 = v26;
    Height = v28;
    v23 = v29;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v41.origin.x = v16;
    v41.origin.y = v17;
    v41.size.width = v18;
    v41.size.height = v19;
    MinX = CGRectGetMinX(v41);
    v42.origin.x = v16;
    v42.origin.y = v17;
    v42.size.width = v18;
    v42.size.height = v19;
    MinY = CGRectGetMinY(v42);
    sub_1BAD7AA0C(v13 + 16, v36);
    sub_1BAD1A480(v36, v37);
    v32 = v38;
    v33 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v34 = MinY;
    v18 = v35;
    (*(v33 + 24))(v32, v33, MinX, v34, v35, v27);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v19 = v27;
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = Height;
  *(a2 + 40) = v23;
}

id sub_1BAD7B41C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 layer];
  [v10 anchorPoint];
  v12 = v11;
  v14 = v13;

  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  v16 = MinX + v12 * CGRectGetWidth(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  [a1 setCenter_];
  [a1 bounds];

  return [a1 setBounds_];
}

CGFloat sub_1BAD7B54C()
{
  v1 = *v0;
  v2 = [*v0 layer];
  [v2 anchorPoint];
  v4 = v3;

  [v1 center];
  v6 = v5;
  [v1 frame];
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v10 = v6 - v4 * CGRectGetWidth(v12);
  v13.origin.x = v10;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetHeight(v13);
  return v10;
}

void (*sub_1BAD7B630(uint64_t *a1))(CGFloat **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 32) = v5;
  v6 = [v5 layer];
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;

  [v5 center];
  v12 = v11;
  v14 = v13;
  [v5 frame];
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v18 = v12 - v8 * CGRectGetWidth(v21);
  v22.origin.x = v18;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v19 = CGRectGetHeight(v22);
  *v4 = v18;
  v4[1] = v14 - v10 * v19;
  v4[2] = width;
  v4[3] = height;
  return sub_1BAD7B75C;
}

void sub_1BAD7B75C(CGFloat **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = [v2 layer];
  [v7 anchorPoint];
  v9 = v8;
  v11 = v10;

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = v3;
  v17.origin.y = v4;
  v17.size.width = v5;
  v17.size.height = v6;
  v13 = MinX + v9 * CGRectGetWidth(v17);
  v18.origin.x = v3;
  v18.origin.y = v4;
  v18.size.width = v5;
  v18.size.height = v6;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = v3;
  v19.origin.y = v4;
  v19.size.width = v5;
  v19.size.height = v6;
  [v2 setCenter_];
  [v2 bounds];
  [v2 setBounds_];

  free(v1);
}

id UIView.withUntransformedFrame.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for UIViewAffineTransformAdapter;
  a1[4] = &off_1F38ECF00;
  *a1 = v1;
  return v1;
}

__C::CGRect __swiftcall measuringBoundingRect(toFit:)(CGSize toFit)
{
  height = toFit.height;
  width = toFit.width;
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = width;
  v7.size.height = height;
  if (CGRectGetWidth(v7) == 1.79769313e308)
  {
    width = 0.0;
  }

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = width;
  v8.size.height = height;
  if (CGRectGetHeight(v8) == 1.79769313e308)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = height;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = width;
  result.size.height = v3;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

CGSize __swiftcall constrainWidth(of:toFit:)(CGSize of, CGSize toFit)
{
  height = toFit.height;
  width = toFit.width;
  v4 = of.height;
  v5 = of.width;
  if (qword_1EDBA6028 != -1)
  {
    swift_once();
  }

  sub_1BAD9DC68();
  if ((v10 & 2) == 0)
  {
    if (width == 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (width != 0.0 || height != 0.0)
  {
LABEL_10:
    if (width < v5)
    {
      v5 = width;
    }
  }

LABEL_12:
  v7 = v5;
  v8 = v4;
  result.height = v8;
  result.width = v7;
  return result;
}

CGSize __swiftcall constrainHeight(of:toFit:)(CGSize of, CGSize toFit)
{
  height = toFit.height;
  width = toFit.width;
  v4 = of.height;
  v5 = of.width;
  if (qword_1EDBA6028 != -1)
  {
    swift_once();
  }

  sub_1BAD9DC68();
  if ((v10 & 2) == 0)
  {
    if (height == 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (width != 0.0 || height != 0.0)
  {
LABEL_10:
    if (height < v4)
    {
      v4 = height;
    }
  }

LABEL_12:
  v7 = v5;
  v8 = v4;
  result.height = v8;
  result.width = v7;
  return result;
}

__n128 AspectFitLayout.init(view:aspectRatio:anchorPoint:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  sub_1BAD1A480(a1, v14);
  *(&v15 + 1) = v8;
  *&v16 = v9;
  BYTE8(v16) = v10;
  *&v17 = a4;
  *(&v17 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C8);
  v11 = swift_allocObject();
  v12 = v16;
  *(v11 + 48) = v15;
  *(v11 + 64) = v12;
  *(v11 + 80) = v17;
  result = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = result;
  *a3 = v11;
  return result;
}

uint64_t AspectFitLayout.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD7BBEC(v3 + 16, v5);
  return sub_1BAD1A480(v5, a1);
}

uint64_t sub_1BAD7BC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1BAD7BBEC(v3 + 16, v5);
  return sub_1BAD1A480(v5, a2);
}

uint64_t AspectFitLayout.view.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD7BBEC(v3 + 16, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1BAD1A480(a1, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD7BD68(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C8);
    v6 = swift_allocObject();
    v7 = v9[3];
    v6[3] = v9[2];
    v6[4] = v7;
    v6[5] = v9[4];
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*AspectFitLayout.view.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD7BBEC(v5 + 16, v4);
  sub_1BAD1A480(v4, (v4 + 5));
  return sub_1BAD7BE40;
}

void sub_1BAD7BE40(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 5;
  if (a2)
  {
    sub_1BAD14A3C(v3, v2);
    AspectFitLayout.view.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 5));
  }

  else
  {
    AspectFitLayout.view.setter(v3);
  }

  free(v2);
}

__n128 AspectFitLayout.explicitAspectRatio.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  result = *(v3 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t AspectFitLayout.explicitAspectRatio.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD7BBEC(v5 + 16, v11);
  *(&v12 + 1) = v2;
  *&v13 = v3;
  BYTE8(v13) = v4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    sub_1BAD7BD68(v11, v6 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C8);
    v8 = swift_allocObject();
    v9 = v13;
    v8[3] = v12;
    v8[4] = v9;
    v8[5] = v14;
    v10 = v11[1];
    v8[1] = v11[0];
    v8[2] = v10;

    *v1 = v8;
  }

  return result;
}

void (*AspectFitLayout.explicitAspectRatio.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  v5 = *v1;
  *(v3 + 160) = v5;
  swift_beginAccess();
  v6 = *(v5 + 72);
  *(v4 + 128) = *(v5 + 56);
  *(v4 + 144) = v6;
  return sub_1BAD7C078;
}

void sub_1BAD7C078(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v4 = *(*a1 + 144);
  sub_1BAD7BBEC(*(*a1 + 160) + 16, *a1);
  v1[5] = v2;
  v1[6] = v3;
  *(v1 + 56) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1[19];
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *v6;
    swift_beginAccess();
    sub_1BAD7BD68(v1, v7 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C8);
    v8 = swift_allocObject();
    v8[1] = *v1;
    v9 = *(v1 + 4);
    v11 = *(v1 + 1);
    v10 = *(v1 + 2);
    v8[4] = *(v1 + 3);
    v8[5] = v9;
    v8[2] = v11;
    v8[3] = v10;

    *v6 = v8;
  }

  free(v1);
}

double AspectFitLayout.anchorPoint.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t AspectFitLayout.anchorPoint.setter(double a1, double a2)
{
  v5 = *v2;
  swift_beginAccess();
  sub_1BAD7BBEC(v5 + 16, v11);
  *&v12 = a1;
  *(&v12 + 1) = a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v2;
    swift_beginAccess();
    sub_1BAD7BD68(v11, v6 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2C8);
    v8 = swift_allocObject();
    v9 = v11[3];
    v8[3] = v11[2];
    v8[4] = v9;
    v8[5] = v12;
    v10 = v11[1];
    v8[1] = v11[0];
    v8[2] = v10;

    *v2 = v8;
  }

  return result;
}

void (*AspectFitLayout.anchorPoint.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 80);
  return sub_1BAD7C320;
}

void sub_1BAD7C320(uint64_t a1)
{
  v1 = *a1;
  AspectFitLayout.anchorPoint.setter(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

void AspectFitLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v7 = *v3;
  swift_beginAccess();
  if (*(v7 + 72))
  {
    sub_1BAD7BBEC(v7 + 16, v13);
    sub_1BAD1A480(v13, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(*(v9 + 8) + 8))(a1, v8, a2, a3);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v10 = *(v7 + 56);
    v12 = *(v7 + 64);
  }

  *v13 = v10;
  *(&v13[0] + 1) = v12;
  AspectFitMeasurable.measurements(fitting:in:)(a1, a2, a3);
}

double AspectFitLayout.placeChildren(relativeTo:in:)@<D0>(void *a1@<X0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v57 = a2;
  v12 = sub_1BAD9DA68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = *v6;
  swift_beginAccess();
  if (*(v19 + 72))
  {
    sub_1BAD7BBEC(v19 + 16, v59);
    sub_1BAD1A480(v59, v60);
    v21 = v61;
    v20 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v22 = (*(*(v20 + 8) + 8))(a1, v21, a5, a6);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    v22 = *(v19 + 56);
    v24 = *(v19 + 64);
  }

  *v59 = v22;
  *(&v59[0] + 1) = v24;
  v25 = AspectFitMeasurable.measurements(fitting:in:)(a1, a5, a6);
  v27 = v26;
  v63.origin.x = a3;
  v63.origin.y = a4;
  v63.size.width = a5;
  v63.size.height = a6;
  MinX = CGRectGetMinX(v63);
  v64.origin.x = a3;
  v64.origin.y = a4;
  v64.size.width = a5;
  v64.size.height = a6;
  Width = CGRectGetWidth(v64);
  v30 = *(v19 + 80);
  v58 = v25;
  v31 = MinX + Width * v30 - v25 * v30;
  v65.origin.x = a3;
  v65.origin.y = a4;
  v65.size.width = a5;
  v65.size.height = a6;
  MinY = CGRectGetMinY(v65);
  v66.origin.x = a3;
  v66.origin.y = a4;
  v66.size.width = a5;
  v66.size.height = a6;
  Height = CGRectGetHeight(v66);
  v33 = *(v19 + 88);
  v34 = *MEMORY[0x1E69E7048];
  v35 = *(v13 + 104);
  v35(v18, v34, v12);
  v36 = [a1 traitCollection];
  [v36 displayScale];
  if (v37 <= 0.0)
  {
    v37 = ForJetUIOnly_MainScreenScale();
  }

  v38 = sub_1BAD794F8(v18, v37, v31);

  v39 = *(v13 + 8);
  v39(v18, v12);
  v35(v15, v34, v12);
  v40 = [a1 traitCollection];
  [v40 displayScale];
  if (v41 <= 0.0)
  {
    v41 = ForJetUIOnly_MainScreenScale();
  }

  v42 = sub_1BAD794F8(v15, v41, MinY + Height * v33 - v27 * v33);

  v39(v15, v12);
  sub_1BAD7BBEC(v19 + 16, v59);
  sub_1BAD1A480(v59, v60);
  v43 = v61;
  v44 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v45 = *(v44 + 24);
  v54 = v42;
  v46 = v58;
  v45(v43, v44, v38, v42, v58, v27);
  __swift_destroy_boxed_opaque_existential_1(v60);
  v67.origin.x = a3;
  v67.origin.y = a4;
  v67.size.width = a5;
  v67.size.height = a6;
  MinY = CGRectGetMinX(v67);
  v68.origin.x = a3;
  v68.origin.y = a4;
  v68.size.width = a5;
  v68.size.height = a6;
  v55 = CGRectGetMinY(v68);
  v69.origin.x = v38;
  v69.origin.y = v42;
  v69.size.width = v46;
  v69.size.height = v27;
  v47 = v38;
  MaxY = CGRectGetMaxY(v69);
  v70.origin.x = a3;
  v70.origin.y = a4;
  v70.size.width = a5;
  v70.size.height = a6;
  v49 = MaxY - CGRectGetMinY(v70);
  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  v50 = CGRectGetMaxY(v71);
  v72.origin.x = v47;
  v72.origin.y = v54;
  v72.size.width = v46;
  v72.size.height = v27;
  result = v50 - CGRectGetMaxY(v72);
  v52 = v57;
  v53 = v55;
  *v57 = MinY;
  v52[1] = v53;
  v52[2] = v46;
  v52[3] = v27;
  v52[4] = v49;
  v52[5] = result;
  return result;
}

double sub_1BAD7C91C(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v16 = sub_1BAD9DA68();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v9 > 1u)
  {
    if (*v9 == 2)
    {
      v33.origin.x = a6;
      v33.origin.y = a7;
      v33.size.width = a8;
      v33.size.height = a9;
      return CGRectGetMaxY(v33) - a3;
    }
  }

  else if (*v9)
  {
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    MidY = CGRectGetMidY(v32);
    v21 = a3 * 0.5;
    (*(v17 + 104))(v19, *MEMORY[0x1E69E7048], v16);
    v22 = [a1 traitCollection];
    [v22 displayScale];
    if (v23 <= 0.0)
    {
      v23 = ForJetUIOnly_MainScreenScale();
    }

    v24 = sub_1BAD794F8(v19, v23, v21);

    (*(v17 + 8))(v19, v16);
    return MidY - v24;
  }

  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;

  return CGRectGetMinY(*&v26);
}

JetUI::FlankedHorizontalLayout::ViewAlignment_optional __swiftcall FlankedHorizontalLayout.ViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a4;
  v14 = *a7;
  *(a8 + 56) = 0u;
  *(a8 + 40) = 0u;
  v15 = a8 + 40;
  *(a8 + 72) = 0;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0;
  *(a8 + 128) = 0u;
  v16 = a8 + 128;
  sub_1BAD0B40C(a1, a8);
  sub_1BAD55304(a2, v15);
  sub_1BAD0B40C(a3, a8 + 80);
  *(a8 + 120) = v13;
  sub_1BAD55304(a5, v16);
  result = sub_1BAD0B40C(a6, a8 + 168);
  *(a8 + 208) = v14;
  return result;
}

uint64_t FlankedHorizontalLayout.sublayout.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1BAD0B40C(a1, v1);
}

uint64_t FlankedHorizontalLayout.leadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1BAD0B40C(a1, v1 + 80);
}

uint64_t FlankedHorizontalLayout.trailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 168);

  return sub_1BAD0B40C(a1, v1 + 168);
}

uint64_t FlankedHorizontalLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v81 = a3;
  v80 = sub_1BAD9DA68();
  v79 = *(v80 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v80).n128_u64[0];
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 traitCollection];
  v17 = [v16 layoutDirection];

  v18 = v17 == 1;
  if (v17 == 1)
  {
    v19 = 16;
  }

  else
  {
    v19 = 5;
  }

  if (v17 == 1)
  {
    v20 = 5;
  }

  else
  {
    v20 = 16;
  }

  if (v17 == 1)
  {
    v21 = 26;
  }

  else
  {
    v21 = 15;
  }

  if (v18)
  {
    v22 = 15;
  }

  else
  {
    v22 = 26;
  }

  if (v18)
  {
    v23 = 21;
  }

  else
  {
    v23 = 10;
  }

  if (v18)
  {
    v24 = 10;
  }

  else
  {
    v24 = 21;
  }

  sub_1BAD55418(&v7[v19], v94);
  sub_1BAD55418(&v7[v20], v93);
  v25 = LOBYTE(v7[v21]);
  v78 = LOBYTE(v7[v22]);
  sub_1BAD14A3C(&v7[v23], v90);
  sub_1BAD14A3C(&v7[v24], v87);
  sub_1BAD55418(v94, &v85);
  if (v86)
  {
    sub_1BAD0B40C(&v85, v82);
    v26 = v83;
    v27 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    if (((*(v27 + 40))(v26, v27) & 1) == 0)
    {
      v30 = v83;
      v31 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      Height = (*(*(v31 + 8) + 8))(a1, v30, a5, a6);
      v36 = Height;
      if (v25 == 3)
      {
        v95.origin.x = v81;
        v95.origin.y = a4;
        v95.size.width = a5;
        v95.size.height = a6;
        Height = CGRectGetHeight(v95);
        v37 = Height;
      }

      else
      {
        v37 = v33;
      }

      LOBYTE(v85) = v25;
      v38 = v81;
      v39 = sub_1BAD7C91C(a1, Height, v37, v34, v35, v81, a4, a5, a6);
      v96.origin.x = v38;
      v96.origin.y = a4;
      v96.size.width = a5;
      v96.size.height = a6;
      MinX = CGRectGetMinX(v96);
      v77 = a4;
      v41 = MinX;
      v42 = v83;
      v43 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      (*(v43 + 24))(v42, v43, v41, v39, v36, v37);
      v44 = v91;
      v45 = v92;
      __swift_project_boxed_opaque_existential_1(v90, v91);
      sub_1BAD6EE7C(v15);
      AnyDimension.value(in:rounded:)(a1, v15, v44, v45);
      v46 = a5;
      v47 = a6;
      v49 = v48;
      (*(v79 + 8))(v15, v80);
      v97.origin.x = v41;
      v97.origin.y = v39;
      v97.size.width = v36;
      v97.size.height = v37;
      v29 = v49 + CGRectGetWidth(v97) + v38;
      v98.origin.x = v41;
      a4 = v77;
      v98.origin.y = v39;
      v98.size.width = v36;
      v98.size.height = v37;
      v50 = v49 + CGRectGetWidth(v98);
      a6 = v47;
      a5 = v46;
      v28 = v46 - v50;
      __swift_destroy_boxed_opaque_existential_1(v82);
      goto LABEL_28;
    }

    __swift_destroy_boxed_opaque_existential_1(v82);
  }

  else
  {
    sub_1BAD55F6C(&v85);
  }

  v28 = a5;
  v29 = v81;
LABEL_28:
  sub_1BAD55418(v93, &v85);
  if (v86)
  {
    sub_1BAD0B40C(&v85, v82);
    v51 = v83;
    v52 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    if ((*(v52 + 40))(v51, v52))
    {
      __swift_destroy_boxed_opaque_existential_1(v82);
    }

    else
    {
      v53 = v83;
      v54 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v55 = (*(*(v54 + 8) + 8))(a1, v53, a5, a6);
      v59 = v55;
      v60 = v78;
      v77 = v29;
      v76 = v28;
      if (v78 == 3)
      {
        v99.origin.x = v81;
        v99.origin.y = a4;
        v99.size.width = a5;
        v99.size.height = a6;
        v55 = CGRectGetHeight(v99);
        v61 = v55;
      }

      else
      {
        v61 = v56;
      }

      LOBYTE(v85) = v60;
      v62 = a4;
      v63 = sub_1BAD7C91C(a1, v55, v61, v57, v58, v81, a4, a5, a6);
      v100.origin.x = v81;
      v100.origin.y = v62;
      v100.size.width = a5;
      v100.size.height = a6;
      v64 = CGRectGetMaxX(v100) - v59;
      v65 = v83;
      v66 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      (*(v66 + 24))(v65, v66, v64, v63, v59, v61);
      v67 = v88;
      v68 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      sub_1BAD6EE7C(v15);
      AnyDimension.value(in:rounded:)(a1, v15, v67, v68);
      v70 = v69;
      (*(v79 + 8))(v15, v80);
      v101.origin.x = v64;
      v101.origin.y = v63;
      a4 = v62;
      v101.size.width = v59;
      v101.size.height = v61;
      v28 = v76 - (v70 + CGRectGetWidth(v101));
      __swift_destroy_boxed_opaque_existential_1(v82);
      v29 = v77;
    }
  }

  else
  {
    sub_1BAD55F6C(&v85);
  }

  v71 = v7[3];
  v72 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v71);
  (*(v72 + 8))(v82, a1, v71, v72, v29, a4, v28, a6);
  v73 = v81;
  v102.origin.x = v81;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  v74 = CGRectGetHeight(v102);
  sub_1BAD55F6C(v93);
  sub_1BAD55F6C(v94);
  *a2 = v73;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = v74;
  *(a2 + 40) = 0;
  __swift_destroy_boxed_opaque_existential_1(v87);
  return __swift_destroy_boxed_opaque_existential_1(v90);
}

unint64_t sub_1BAD7D548()
{
  result = qword_1EBC2B2D0;
  if (!qword_1EBC2B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B2D0);
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1BAD7D5E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD7D628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BAD7D6C0()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_1EDBA58D0 = v1;
}

id UIColor.highlighted.getter()
{
  v1 = v0;
  if (qword_1EDBA58C8 != -1)
  {
    swift_once();
    v1 = v3;
  }

  result = [v1 _colorBlendedWithColor_];
  if (!result)
  {

    return v3;
  }

  return result;
}

__C::CGRect __swiftcall CGRect.adding(outsets:)(UIEdgeInsets outsets)
{
  v5 = v2 - outsets.top;
  v6 = outsets.left + outsets.right + v3;
  v7 = outsets.top + outsets.bottom + v4;
  v8 = v1 - outsets.left;
  v9 = v5;
  v10 = v6;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

__C::CGRect __swiftcall CGRect.subtracting(insets:)(UIEdgeInsets insets)
{
  v5 = insets.top + v2;
  v6 = v3 - (insets.left + insets.right);
  v7 = v4 - (insets.top + insets.bottom);
  v8 = insets.left + v1;
  v9 = v5;
  v10 = v6;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

Swift::Void __swiftcall CGRect.subtract(insets:)(UIEdgeInsets insets)
{
  top = insets.top;
  *v1 = vaddq_f64(*v1, *&insets.left);
  v3 = v1[1].f64[1] - (insets.top + insets.bottom);
  v1[1].f64[0] = v1[1].f64[0] - (insets.left + insets.right);
  v1[1].f64[1] = v3;
}

Swift::Void __swiftcall CGRect.add(outsets:)(UIEdgeInsets outsets)
{
  top = outsets.top;
  *v1 = vsubq_f64(*v1, *&outsets.left);
  v3 = outsets.top + outsets.bottom + v1[1].f64[1];
  v1[1].f64[0] = outsets.left + outsets.right + v1[1].f64[0];
  v1[1].f64[1] = v3;
}

uint64_t static Locale.storefront.getter()
{
  if (qword_1EDBA5D00 != -1)
  {
    swift_once();
  }

  sub_1BAD9C3B8();
  return sub_1BAD9D4F8();
}

uint64_t sub_1BAD7D904()
{
  v0 = sub_1BAD9D4C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAD9C6C8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BAD9D4B8();
  MEMORY[0x1EEE9AC00](v5);
  v8[0] = sub_1BAD5FED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BAD9F5A0;
  sub_1BAD9D4A8();
  v8[1] = v6;
  sub_1BAD7EA40(&qword_1EDBA6098, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE98);
  sub_1BAD7EA88(&qword_1EDBA60A0, &qword_1EBC2AE98);
  sub_1BAD9D688();
  sub_1BAD9C6B8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1BAD9D518();
  qword_1EDBA5B88 = result;
  return result;
}

uint64_t sub_1BAD7DBD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E0);
  __swift_allocate_value_buffer(v0, qword_1EDBA5B70);
  v1 = __swift_project_value_buffer(v0, qword_1EDBA5B70);
  v2 = sub_1BAD9C3B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

id static Locale.useLocale(forStorefront:)(uint64_t a1)
{
  v2 = sub_1BAD9C6A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA5D00 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BAD9F5A0;
  sub_1BAD9C698();
  v9[1] = v6;
  sub_1BAD7EA40(&qword_1EDBA60B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2AFC0);
  sub_1BAD7EA88(&qword_1EDBA60A8, qword_1EBC2AFC0);
  v7 = sub_1BAD9D688();
  MEMORY[0x1EEE9AC00](v7);
  v9[-2] = a1;
  sub_1BAD9D4E8();
  (*(v3 + 8))(v5, v2);
  if (qword_1EDBA6230 != -1)
  {
    swift_once();
  }

  [qword_1EDBA61D8 removeAllObjects];
  if (qword_1EDBA61B8 != -1)
  {
    swift_once();
  }

  return [qword_1EDBA61C0 removeAllObjects];
}

uint64_t static Locale.withMockLocaleForStorefront(_:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v21 = a1;
  v3 = sub_1BAD9C6A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA5D00 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDBA5B88;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2D8);
  v18 = *(v4 + 72);
  v19 = v7;
  v8 = swift_allocObject();
  v17 = xmmword_1BAD9F5A0;
  *(v8 + 16) = xmmword_1BAD9F5A0;
  sub_1BAD9C698();
  v25 = v8;
  v9 = sub_1BAD7EA40(&qword_1EDBA60B0, MEMORY[0x1E69E7F60]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2AFC0);
  sub_1BAD7EA88(&qword_1EDBA60A8, qword_1EBC2AFC0);
  v16[1] = v10;
  v20 = v9;
  v11 = sub_1BAD9D688();
  MEMORY[0x1EEE9AC00](v11);
  v16[-2] = v21;
  sub_1BAD9D4E8();
  v12 = *(v4 + 8);
  v13 = v12(v6, v3);
  v23(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  sub_1BAD9C698();
  v25 = v14;
  sub_1BAD9D688();
  sub_1BAD9D4E8();
  return v12(v6, v3);
}

uint64_t sub_1BAD7E2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  if (qword_1EDBA5B68 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v6 = __swift_project_value_buffer(v3, qword_1EDBA5B70);
  v7 = sub_1BAD9C3B8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  swift_beginAccess();
  sub_1BAD7E8F8(v5, v6);
  return swift_endAccess();
}

uint64_t sub_1BAD7E44C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  if (qword_1EDBA5B68 != -1)
  {
    v11 = v3;
    swift_once();
    v3 = v11;
  }

  v6 = __swift_project_value_buffer(v3, qword_1EDBA5B70);
  swift_beginAccess();
  sub_1BAD7E968(v6, v5);
  v7 = sub_1BAD9C3B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1BAD9C3A8();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1BAD7E9D8(v5);
  }

  return result;
}

uint64_t sub_1BAD7E614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BAD9C3B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAD9C378();
  if (!v9)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v8 == 29281 && v9 == 0xE200000000000000)
  {
  }

  else
  {
    v10 = sub_1BAD9DA98();

    if ((v10 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  sub_1BAD9C3A8();
  v11 = sub_1BAD9C378();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  if (!v13)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v11 == 29281 && v13 == 0xE200000000000000)
  {
  }

  else
  {
    v15 = sub_1BAD9DA98();

    if ((v15 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  return sub_1BAD9C3A8();
}

uint64_t sub_1BAD7E7C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E0);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  if (qword_1EDBA5B68 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = __swift_project_value_buffer(v1, qword_1EDBA5B70);
  v5 = sub_1BAD9C3B8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  swift_beginAccess();
  sub_1BAD7E8F8(v3, v4);
  return swift_endAccess();
}

uint64_t sub_1BAD7E8F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD7E968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD7E9D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAD7EA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAD7EA88(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAD7EAF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6449010;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x63696D616E7964;
    }

    else
    {
      v4 = 1819112552;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656D616ELL;
    }

    else
    {
      v4 = 6449010;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x63696D616E7964;
  if (a2 != 2)
  {
    v8 = 1819112552;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x64656D616ELL;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BAD9DA98();
  }

  return v11 & 1;
}