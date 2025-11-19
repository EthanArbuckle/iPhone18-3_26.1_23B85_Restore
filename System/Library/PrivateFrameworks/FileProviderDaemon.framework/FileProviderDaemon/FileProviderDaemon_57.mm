uint64_t sub_1CF5EF074(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, __int128 *a10, __int128 *a11)
{
  v67 = a7;
  v68 = a8;
  v69 = a1;
  v70 = a6;
  v73 = a4;
  v74 = a5;
  LODWORD(v64) = a2;
  v71 = a9;
  v12 = *a3;
  v13 = *(*a3 + 104);
  v14 = *(*a3 + 88);
  *&v75 = swift_getAssociatedTypeWitness();
  *(&v75 + 1) = swift_getAssociatedTypeWitness();
  *&v76 = swift_getAssociatedConformanceWitness();
  *(&v76 + 1) = swift_getAssociatedConformanceWitness();
  v66 = type metadata accessor for FileItemVersion();
  v63 = *(v66 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v59 - v16;
  v17 = *(v12 + 96);
  v72 = a3;
  v18 = *(v12 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for ItemState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  if (v64)
  {
    v24 = swift_allocObject();
    v64 = v24;
    v25 = v74;
    *(v24 + 16) = v73;
    *(v24 + 24) = v25;
    (*(v20 + 16))(v23, v67, v19);
    v67 = v19;
    v26 = v63;
    (*(v63 + 16))(v65, v68, v66);
    v27 = (v21 + *(v26 + 80) + ((*(v20 + 80) + 64) & ~*(v20 + 80))) & ~*(v26 + 80);
    v60 = (*(v20 + 80) + 64) & ~*(v20 + 80);
    v61 = v27;
    v68 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *&v30 = v14;
    *(&v30 + 1) = v18;
    *&v31 = v13;
    *(&v31 + 1) = v17;
    *(v29 + 16) = v30;
    *(v29 + 32) = v31;
    v32 = v69;
    *(v29 + 48) = v70;
    *(v29 + 56) = v32;
    (*(v20 + 32))(v29 + v60, v23, v67);
    (*(v26 + 32))(v29 + v61, v65, v66);
    v33 = v71;
    *(v29 + v68) = v72;
    *(v29 + v62) = v33;
    v34 = (v29 + v28);
    v35 = v74;
    *v34 = v73;
    v34[1] = v35;
    swift_retain_n();

    sub_1CF2B1868(v32, 1);
    v36 = type metadata accessor for Continuation();

    sub_1CF92E6B4("stageCreation(capturedContent:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 102, 2u, sub_1CF045408, 0, sub_1CF559418, v64, sub_1CF610E44, v29, v36, MEMORY[0x1E69E6158]);
  }

  v38 = v67;
  v37 = v68;
  v39 = v71;
  v40 = v73;
  v41 = v74;
  v42 = v69;
  v43 = v72;
  v44 = *(v72 + 32);
  if (sub_1CF056558())
  {
    v45 = swift_allocObject();
    v46 = v40;
    *(v45 + 16) = v40;
    *(v45 + 24) = v41;
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = v41;
    v47[4] = v42;
    swift_retain_n();
    sub_1CF2B1868(v42, 0);
    v48 = type metadata accessor for Continuation();
    sub_1CF92E6B4("stageCreation(capturedContent:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 102, 2u, sub_1CF045408, 0, sub_1CF559418, v45, sub_1CF61097C, v47, v48, MEMORY[0x1E69E6158]);
  }

  v50 = a10[1];
  v91[0] = *a10;
  v91[1] = v50;
  v51 = a10[3];
  v91[2] = a10[2];
  v91[3] = v51;
  v52 = a11[13];
  v87 = a11[12];
  v88 = v52;
  v89 = a11[14];
  v90 = *(a11 + 30);
  v53 = a11[9];
  v83 = a11[8];
  v84 = v53;
  v54 = a11[11];
  v85 = a11[10];
  v86 = v54;
  v55 = a11[5];
  v79 = a11[4];
  v80 = v55;
  v56 = a11[7];
  v81 = a11[6];
  v82 = v56;
  v57 = a11[1];
  v75 = *a11;
  v76 = v57;
  v58 = a11[3];
  v77 = a11[2];
  v78 = v58;
  return sub_1CF5EF690(v91, v42, v38, v37, v43, v39, &v75, v40, v41);
}

uint64_t sub_1CF5EF690(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v81 = a8;
  v82 = a6;
  v90 = a3;
  v91 = a5;
  v80 = a4;
  v83 = a2;
  v77 = a1;
  v11 = *v9;
  v79 = *(*v9 + 624);
  v78 = v11[76];
  v89 = a9;
  *&v92 = swift_getAssociatedTypeWitness();
  *(&v92 + 1) = swift_getAssociatedTypeWitness();
  *&v93 = swift_getAssociatedConformanceWitness();
  *(&v93 + 1) = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FileItemVersion();
  v74 = *(v12 - 8);
  v75 = v12;
  v76 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v65 - v13;
  v68 = v11;
  v14 = v11[79];
  v15 = v11[77];
  swift_getAssociatedTypeWitness();
  v72 = v14;
  swift_getAssociatedConformanceWitness();
  v87 = type metadata accessor for ItemState();
  v85 = *(v87 - 1);
  v73 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v65 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  *&v92 = AssociatedTypeWitness;
  *(&v92 + 1) = v18;
  *&v93 = AssociatedConformanceWitness;
  *(&v93 + 1) = v20;
  type metadata accessor for FileItemVersion();
  swift_getTupleTypeMetadata2();
  v21 = sub_1CF9E75D8();
  v22 = *(v21 - 8);
  v23 = v22;
  v70 = v21;
  v71 = v22;
  v24 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v65 - v25;
  v69 = &v65 - v25;
  v27 = *(a7 + 192);
  v28 = *(a7 + 224);
  v96[13] = *(a7 + 208);
  v96[14] = v28;
  v29 = *(a7 + 128);
  v30 = *(a7 + 160);
  v31 = *(a7 + 176);
  v96[9] = *(a7 + 144);
  v96[10] = v30;
  v96[11] = v31;
  v96[12] = v27;
  v32 = *(a7 + 64);
  v33 = *(a7 + 96);
  v34 = *(a7 + 112);
  v96[5] = *(a7 + 80);
  v96[6] = v33;
  v96[7] = v34;
  v96[8] = v29;
  v35 = *(a7 + 16);
  v96[0] = *a7;
  v96[1] = v35;
  v36 = *(a7 + 48);
  v96[2] = *(a7 + 32);
  v97 = *(a7 + 240);
  v96[3] = v36;
  v96[4] = v32;
  v37 = *(v9 + 17);
  v38 = 34;
  if ((v37 & 0x210000) != 0)
  {
    v39 = 1;
  }

  else
  {
    v38 = 32;
    v39 = 0;
  }

  v40 = 2 * v39;
  if ((v37 & 0x200) != 0)
  {
    v41 = v38;
  }

  else
  {
    v41 = v40;
  }

  v67 = v41;
  v66 = *(*(v91 + 32) + 16);
  v42 = v77[1];
  v92 = *v77;
  v93 = v42;
  v43 = v77[3];
  v94 = v77[2];
  v95 = v43;
  v77 = v68[72];
  v44 = v68[85];
  swift_beginAccess();
  (*(v23 + 16))(v26, &v9[v44], v21);
  v84 = v9;
  v68 = *&v9[*(*v9 + 584)];
  v45 = v85;
  (*(v85 + 16))(v86, v90, v87);
  v46 = v74;
  v47 = v75;
  (*(v74 + 16))(v88, v80, v75);
  v48 = (*(v45 + 80) + 80) & ~*(v45 + 80);
  v49 = (v73 + *(v46 + 80) + v48) & ~*(v46 + 80);
  v50 = (v76 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *&v52 = v78;
  *(&v52 + 1) = v15;
  *&v53 = v79;
  *(&v53 + 1) = v72;
  *(v51 + 16) = v52;
  *(v51 + 32) = v53;
  v54 = v81;
  *(v51 + 48) = v91;
  *(v51 + 56) = v54;
  v55 = v84;
  *(v51 + 64) = v89;
  *(v51 + 72) = v55;
  (*(v85 + 32))(v51 + v48, v86, v87);
  (*(v46 + 32))(v51 + v49, v88, v47);
  v56 = v66;
  v57 = v67;
  *(v51 + v50) = v82;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v58 = *v56;
  v87 = *(*v56 + 648);
  v88 = (v58 + 648);
  v59 = swift_getAssociatedTypeWitness();
  v60 = swift_getAssociatedConformanceWitness();

  v61 = v84;

  v64 = v59;
  v62 = v69;
  (v87)(v90, v83, &v92, v77 + v61, v69, v68, v57, v96, sub_1CF60FA78, v51, v64, v60);

  return (*(v71 + 8))(v62, v70);
}

uint64_t sub_1CF5EFDB4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a7;
  v68 = a5;
  v77 = a4;
  v64 = a3;
  v62 = a2;
  v69 = a1;
  v8 = *v7;
  v9 = *(*v7 + 624);
  v76 = *(*v7 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = swift_getAssociatedConformanceWitness();
  v75 = type metadata accessor for FileItemVersion();
  v63 = *(v75 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v51 - v10;
  v11 = v8[79];
  v12 = v8[77];
  v13 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v73 = type metadata accessor for ItemState();
  v59 = *(v73 - 8);
  v54 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v51 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v61 = v11;
  v58 = v12;
  v18 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v15;
  v81 = v16;
  AssociatedConformanceWitness = v17;
  v83 = v18;
  v53 = type metadata accessor for FileItemVersion();
  v57 = sub_1CF9E75D8();
  v56 = *(v57 - 8);
  v19 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v21 = &v51 - v20;
  v79 = v13;
  v55 = *(v13 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v51 - v25;
  v26 = *(*(v77 + 32) + 16);
  v27 = v7;
  v28 = v8[72];
  swift_getAssociatedTypeWitness();
  v65 = v9;
  v29 = swift_getAssociatedConformanceWitness();
  v30 = *(v29 + 64);

  v31 = swift_checkMetadataState();
  v32 = v27;
  v33 = v30(v31, v29);
  v34 = *v26;
  v71 = v26;
  if (v33)
  {
    (*(v34 + 96))();
  }

  else
  {
    (*(v34 + 104))();
  }

  (*(*(v53 - 8) + 56))(v21, 1, 1);
  v53 = *(v27 + *(*v27 + 584));
  v35 = v55;
  (*(v55 + 16))(v70, v78, v79);
  v52 = v21;
  v36 = v59;
  (*(v59 + 16))(v72, v62, v73);
  v37 = v63;
  (*(v63 + 16))(v74, v64, v75);
  v38 = (*(v35 + 80) + 72) & ~*(v35 + 80);
  v39 = (v22 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v36 + 80) + v39 + 8) & ~*(v36 + 80);
  v62 = (v54 + *(v37 + 80) + v40) & ~*(v37 + 80);
  v64 = (v60 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *&v42 = v76;
  *(&v42 + 1) = v58;
  *&v43 = v65;
  *(&v43 + 1) = v61;
  *(v41 + 16) = v42;
  *(v41 + 32) = v43;
  v44 = v66;
  v45 = v67;
  *(v41 + 48) = v77;
  *(v41 + 56) = v44;
  *(v41 + 64) = v45;
  (*(v35 + 32))(v41 + v38, v70, v79);
  *(v41 + v39) = v32;
  (*(v36 + 32))(v41 + v40, v72, v73);
  (*(v37 + 32))(v41 + v62, v74, v75);
  v46 = v71;
  *(v41 + v64) = v68;
  v47 = *(*v46 + 536);

  v48 = v78;
  v49 = v52;
  v47(v78, v52, v53, v69, 0, sub_1CF60F49C, v41);

  (*(v56 + 8))(v49, v57);
  return (*(v35 + 8))(v48, v79);
}

uint64_t sub_1CF5F05D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v66 = a8;
  v67 = a6;
  v61 = a5;
  v62 = a7;
  v73 = a3;
  v74 = a4;
  v60 = a1;
  v68 = a9;
  v9 = *a2;
  v65 = *(*a2 + 104);
  v64 = v9[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion();
  v12 = *(v11 - 8);
  v71 = v11;
  v72 = v12;
  v59 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v48 - v13;
  v63 = a2;
  v14 = v9[12];
  v15 = v9[10];
  v16 = swift_getAssociatedTypeWitness();
  v57 = v14;
  v56 = v15;
  swift_getAssociatedConformanceWitness();
  v69 = type metadata accessor for ItemState();
  v17 = *(v69 - 8);
  v55 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v48 - v18;
  v54 = &v48 - v18;
  v20 = v16;
  v51 = v16;
  v21 = *(v16 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - v24;
  v53 = &v48 - v24;
  type metadata accessor for FileTreeWriter.ItemOrContinuation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v26 = sub_1CF9E8238();
  v50 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v48 - v29;
  v52 = &v48 - v29;
  v31 = swift_allocObject();
  v58 = v31;
  v32 = v74;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v27 + 16))(v30, v60, v26);
  v48 = v21;
  (*(v21 + 16))(v25, v61, v20);
  v49 = v17;
  (*(v17 + 16))(v19, v62, v69);
  v33 = v72;
  (*(v72 + 16))(v70, v66, v71);
  v34 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v35 = (v28 + *(v21 + 80) + v34) & ~*(v21 + 80);
  v36 = (v22 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v17 + 80) + v36 + 8) & ~*(v17 + 80);
  v38 = (v55 + *(v33 + 80) + v37) & ~*(v33 + 80);
  v39 = (v59 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *&v42 = v64;
  *&v43 = v65;
  *(&v42 + 1) = v56;
  *(&v43 + 1) = v57;
  *(v41 + 16) = v42;
  *(v41 + 32) = v43;
  (*(v27 + 32))(v41 + v34, v52, v50);
  (*(v48 + 32))(v41 + v35, v53, v51);
  *(v41 + v36) = v67;
  (*(v49 + 32))(v41 + v37, v54, v69);
  (*(v72 + 32))(v41 + v38, v70, v71);
  *(v41 + v39) = v63;
  *(v41 + v40) = v68;
  v44 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  v45 = v74;
  *v44 = v73;
  v44[1] = v45;
  v46 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("lookup(continuation:requestedState:otherVersion:on:result:completion:)", 70, 2u, sub_1CF045408, 0, sub_1CF559418, v58, sub_1CF60F718, v41, v46, MEMORY[0x1E69E6158]);
}

void sub_1CF5F0C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, void (*a9)(__int128 *, id, uint64_t, uint64_t, void *), uint64_t a10)
{
  v92 = a7;
  v93 = a8;
  v88 = a5;
  v89 = a6;
  v84 = a3;
  v98 = a2;
  v95 = a1;
  v96 = a10;
  v97 = a9;
  v11 = *a4;
  v12 = *(*a4 + 616);
  v13 = sub_1CF9E75D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v79 - v15;
  v86 = *(v12 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v79 - v20;
  v94 = a4;
  v21 = *(v11 + 632);
  v85 = type metadata accessor for ItemPropagationResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v22 = sub_1CF9E8238();
  v23 = *(v22 - 8);
  v90 = v22;
  v91 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v79 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v79 = &v79 - v33;
  v34 = sub_1CF9E5248();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v21;
  v39 = type metadata accessor for FileTreeWriter.ItemOrContinuation();
  v40 = sub_1CF9E8238();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v79 - v43);
  (*(v45 + 16))(&v79 - v43, v98, v40, v42);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = *v44;
    v47 = *v44;
    sub_1CF9E5108();
    sub_1CF60FA30(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
    v48 = sub_1CF9E5658();

    (*(v35 + 8))(v38, v34);
    if (v48 & 1) != 0 && (swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v50 = *(AssociatedConformanceWitness + 72), v51 = swift_checkMetadataState(), (v50(v51, AssociatedConformanceWitness)))
    {

      v52 = v95[3];
      v53 = v95[4];
      v54 = __swift_project_boxed_opaque_existential_1(v95, v52);
      v55 = v79;
      (*(*(v85 - 8) + 56))(v79, 1, 1);
      v56 = v90;
      swift_storeEnumTagMultiPayload();
      sub_1CF5ED254(v55, v88, v89, 0, v92, v93, v54, v97, v96, v52, v53);
      (*(v91 + 8))(v55, v56);
    }

    else
    {
      v60 = v95[3];
      v61 = v95[4];
      v62 = __swift_project_boxed_opaque_existential_1(v95, v60);
      *v31 = v46;
      v63 = v90;
      swift_storeEnumTagMultiPayload();
      v64 = v46;
      sub_1CF5ED254(v31, v88, v89, 0, v92, v93, v62, v97, v96, v60, v61);
      (*(v91 + 8))(v31, v63);
    }
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v58 = v86;
      if (EnumCaseMultiPayload == 1)
      {
        v59 = *v44;
        sub_1CF1A91AC(v95, &v99);

        v97(&v99, v59, 0, 0, 0);

        sub_1CEFCCC44(&v99, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      else
      {
        (*(*(v39 - 8) + 8))(v44, v39);
        v73 = v95[3];
        v74 = v95[4];
        v75 = __swift_project_boxed_opaque_existential_1(v95, v73);
        v76 = v82;
        (*(v58 + 56))(v82, 1, 1, v12);
        v105 = 0;
        v99 = 0;
        v100 = 0;
        v101 = 0;
        v102 = 0xB000000000000000;
        v103 = 0u;
        v104 = 0u;
        v77 = v80;
        sub_1CF953C88(v76, 0, v12, v80);
        v78 = v90;
        swift_storeEnumTagMultiPayload();
        sub_1CF5ED254(v77, v88, v89, 0, v92, v93, v75, v97, v96, v73, v74);
        (*(v91 + 8))(v77, v78);
      }
    }

    else
    {
      v65 = v86;
      v66 = v83;
      (*(v86 + 32))(v83, v44, v12);
      v67 = v95[3];
      v68 = v95[4];
      v69 = __swift_project_boxed_opaque_existential_1(v95, v67);
      v70 = v81;
      (*(v65 + 16))(v81, v66, v12);
      v105 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0xB000000000000000;
      v103 = 0u;
      v104 = 0u;
      v71 = sub_1CF953F04(v70, &v105, 0, &v99, v12, v28);
      (*(*(v85 - 8) + 56))(v28, 0, 1, v71);
      v72 = v90;
      swift_storeEnumTagMultiPayload();
      sub_1CF5ED254(v28, v88, v89, 0, v92, v93, v69, v97, v96, v67, v68);
      (*(v91 + 8))(v28, v72);
      (*(v65 + 8))(v66, v12);
    }
  }
}

uint64_t sub_1CF5F15E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, char a9)
{
  v123 = a7;
  v124 = a8;
  v120 = a6;
  v127 = a5;
  v128 = a3;
  v129 = a4;
  v118 = a1;
  v10 = *a2;
  v11 = *(*a2 + 96);
  v12 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v135 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v137 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v113 = sub_1CF9E75D8();
  v111 = *(v113 - 8);
  v13 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v110 = &v103 - v14;
  type metadata accessor for ItemPropagationResult();
  v15 = sub_1CF9E75D8();
  v117 = *(v15 - 8);
  v16 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v103 - v19;
  v20 = *(v10 + 104);
  v125 = a2;
  v21 = *(v10 + 88);
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v22;
  v135 = v23;
  AssociatedConformanceWitness = v24;
  v137 = v25;
  v130 = type metadata accessor for FileItemVersion();
  v116 = *(v130 - 8);
  v26 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v103 - v27;
  v122 = v12;
  swift_getAssociatedConformanceWitness();
  v132 = type metadata accessor for ItemState();
  v28 = *(v132 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v103 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  v115 = v15;
  v31 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v32 = sub_1CF9E8238();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = (&v103 - v35);
  (*(v37 + 16))(&v103 - v35, v118, v32, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v121 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    v39 = *v36;
    v40 = swift_allocObject();
    v126 = v40;
    v41 = v129;
    *(v40 + 16) = v128;
    *(v40 + 24) = v41;
    (*(v28 + 16))(v131, v120, v132);
    v42 = v116;
    (*(v116 + 16))(v133, v123, v130);
    v43 = (*(v28 + 80) + 64) & ~*(v28 + 80);
    v44 = (v29 + *(v42 + 80) + v43) & ~*(v42 + 80);
    v123 = (v26 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *&v47 = v21;
    *(&v47 + 1) = v122;
    *&v48 = v20;
    *(&v48 + 1) = v121;
    *(v46 + 16) = v47;
    *(v46 + 32) = v48;
    *(v46 + 48) = v127;
    *(v46 + 56) = v39;
    (*(v28 + 32))(v46 + v43, v131, v132);
    (*(v42 + 32))(v46 + v44, v133, v130);
    v49 = v124;
    *(v46 + v123) = v125;
    *(v46 + v45) = v49;
    v50 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
    v51 = v129;
    *v50 = v128;
    v50[1] = v51;
    swift_retain_n();

    v52 = v39;
    v53 = type metadata accessor for Continuation();

    sub_1CF92E6B4("create(capturedContent:stagedContext:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 109, 2u, sub_1CF045408, 0, sub_1CF559418, v126, sub_1CF611818, v46, v53, MEMORY[0x1E69E6158]);
  }

  else
  {
    v106 = v26;
    v108 = v28;
    v109 = v21;
    v118 = v20;
    v55 = v116;
    v56 = v130;
    v107 = *(v36 + *(v31 + 48));
    v57 = v117;
    v58 = *(v117 + 32);
    v59 = v115;
    v105 = v117 + 32;
    v104 = v58;
    v58(v126, v36, v115);
    if ((a9 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    v60 = v127;
    v61 = v57;
    v62 = *(*v127 + 680);
    swift_beginAccess();
    v63 = v111;
    v64 = v60 + v62;
    v65 = v110;
    v66 = v113;
    (*(v111 + 16))(v110, v64, v113);
    LODWORD(v62) = (*(*(TupleTypeMetadata2 - 8) + 48))(v65, 1);
    (*(v63 + 8))(v65, v66);
    v67 = v62 == 1;
    v57 = v61;
    if (v67)
    {
      TupleTypeMetadata2 = *(v125[5] + 16);
      v113 = *(*v127 + 576);
      (*(v61 + 16))(v119, v126, v59);
      v68 = v108;
      (*(v108 + 16))(v131, v120, v132);
      v69 = v55;
      (*(v55 + 16))(v133, v123, v56);
      v70 = (*(v61 + 80) + 80) & ~*(v61 + 80);
      v71 = (v114 + *(v68 + 80) + v70) & ~*(v68 + 80);
      v72 = (v29 + *(v69 + 80) + v71) & ~*(v69 + 80);
      v123 = (v106 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      *&v75 = v109;
      *(&v75 + 1) = v122;
      *&v76 = v118;
      *(&v76 + 1) = v121;
      *(v74 + 16) = v75;
      *(v74 + 32) = v76;
      v78 = v127;
      v77 = v128;
      *(v74 + 48) = v125;
      *(v74 + 56) = v78;
      v79 = v129;
      *(v74 + 64) = v77;
      *(v74 + 72) = v79;
      v104(v74 + v70, v119, v59);
      (*(v68 + 32))(v74 + v71, v131, v132);
      (*(v69 + 32))(v74 + v72, v133, v130);
      v80 = TupleTypeMetadata2;
      v81 = v107;
      v82 = v124;
      *(v74 + v123) = v107;
      *(v74 + v73) = v82;
      v83 = *(*v80 + 688);
      v84 = v81;

      v85 = v127;

      v83(v85 + v113, sub_1CF60FC88, v74);

      return (*(v117 + 8))(v126, v115);
    }

    else
    {
LABEL_7:
      v86 = swift_allocObject();
      v113 = v86;
      v87 = v129;
      *(v86 + 16) = v128;
      *(v86 + 24) = v87;
      (*(v57 + 16))(v119, v126, v59);
      v88 = v108;
      (*(v108 + 16))(v131, v120, v132);
      v89 = v55;
      (*(v55 + 16))(v133, v123, v56);
      v90 = (*(v57 + 80) + 56) & ~*(v57 + 80);
      v91 = (v114 + *(v88 + 80) + v90) & ~*(v88 + 80);
      v120 = (v29 + *(v89 + 80) + v91) & ~*(v89 + 80);
      v123 = (v106 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
      v94 = swift_allocObject();
      *&v95 = v109;
      *(&v95 + 1) = v122;
      *&v96 = v118;
      *(&v96 + 1) = v121;
      *(v94 + 16) = v95;
      *(v94 + 32) = v96;
      v97 = v127;
      *(v94 + 48) = v127;
      v104(v94 + v90, v119, v59);
      (*(v88 + 32))(v94 + v91, v131, v132);
      (*(v89 + 32))(v94 + v120, v133, v130);
      v98 = v107;
      *(v94 + v123) = v107;
      *(v94 + v92) = v125;
      *(v94 + v93) = v124;
      v99 = (v94 + ((v93 + 15) & 0xFFFFFFFFFFFFFFF8));
      v100 = v129;
      *v99 = v128;
      v99[1] = v100;
      v101 = type metadata accessor for Continuation();
      swift_retain_n();
      swift_retain_n();

      v102 = v98;
      sub_1CF92E6B4("create(capturedContent:stagedContext:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 109, 2u, sub_1CF60FC80, v97, sub_1CF559418, v113, sub_1CF6117E8, v94, v101, MEMORY[0x1E69E6158]);

      return (*(v117 + 8))(v126, v59);
    }
  }
}

uint64_t sub_1CF5F23D0(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, void (*a8)(__int128 *, void, uint64_t, uint64_t, void *), uint64_t a9)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v11 = *a2;
  v12 = *(*a2 + 616);
  v13 = *(v11 + 632);
  type metadata accessor for ItemPropagationResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v24 - v17);
  v19 = a1[3];
  v20 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
  *v18 = a3;
  swift_storeEnumTagMultiPayload();
  v22 = a3;
  sub_1CF5ED254(v18, v25, v26, 0, v27, v28, v21, v29, a9, v19, v20);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1CF5F2594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v61 = a8;
  v62 = a3;
  v59 = a7;
  v57 = a6;
  v68 = a5;
  v66 = a4;
  v63 = a9;
  v64 = a10;
  v10 = *a2;
  v60 = *(*a2 + 104);
  v58 = v10[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = swift_getAssociatedConformanceWitness();
  v65 = type metadata accessor for FileItemVersion();
  v67 = *(v65 - 8);
  v54 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v13 = &v46 - v12;
  v52 = &v46 - v12;
  v56 = a2;
  v14 = v10[10];
  v15 = v10[12];
  swift_getAssociatedTypeWitness();
  v53 = v14;
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ItemState();
  v49 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v51 = &v46 - v19;
  type metadata accessor for ItemPropagationResult();
  v21 = sub_1CF9E75D8();
  v48 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - v24;
  v50 = &v46 - v24;
  v26 = swift_allocObject();
  v55 = v26;
  v27 = v68;
  *(v26 + 16) = v66;
  *(v26 + 24) = v27;
  (*(v22 + 16))(v25, v57, v21);
  v47 = v17;
  (*(v17 + 16))(v20, v59, v16);
  v28 = v67;
  (*(v67 + 16))(v13, v61, v65);
  v29 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v30 = (v23 + *(v17 + 80) + v29) & ~*(v17 + 80);
  v31 = (v18 + *(v28 + 80) + v30) & ~*(v28 + 80);
  v32 = (v54 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *&v36 = v58;
  *(&v36 + 1) = v53;
  *&v37 = v60;
  *(&v37 + 1) = v15;
  *(v35 + 16) = v36;
  *(v35 + 32) = v37;
  v38 = v62;
  *(v35 + 48) = v62;
  (*(v22 + 32))(v35 + v29, v50, v48);
  (*(v47 + 32))(v35 + v30, v51, v49);
  (*(v67 + 32))(v35 + v31, v52, v65);
  v40 = v63;
  v39 = v64;
  *(v35 + v32) = v63;
  *(v35 + v33) = v56;
  *(v35 + v34) = v39;
  v41 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
  v42 = v68;
  *v41 = v66;
  v41[1] = v42;
  v43 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  v44 = v40;

  sub_1CF92E6B4("create(capturedContent:stagedContext:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 109, 2u, sub_1CF6117CC, v38, sub_1CF559418, v55, sub_1CF610464, v35, v43, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF5F2B58(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8, void (*a9)(__int128 *, void, uint64_t, uint64_t, void *), uint64_t a10)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v12 = *a2;
  v13 = *(*a2 + 616);
  v14 = *(v12 + 632);
  v26 = a10;
  v27 = a9;
  type metadata accessor for ItemPropagationResult();
  v15 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v16 = sub_1CF9E8238();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(*(v15 - 8) + 16))(v20, a3, v15);
  swift_storeEnumTagMultiPayload();
  sub_1CF5ED254(v20, v28, v29, v30, v31, v32, v23, v27, v26, v21, v22);
  return (*(v17 + 8))(v20, v16);
}

void sub_1CF5F2D4C(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(__int128 *, void, void, void, void *), uint64_t a6, char *a7, uint64_t a8)
{
  v120 = a8;
  v121 = a7;
  v122 = a5;
  v123 = a6;
  v126 = a4;
  v124 = a3;
  v128 = a2;
  v131 = a1;
  v9 = *v8;
  v10 = *(*v8 + 632);
  v11 = *(*v8 + 616);
  swift_getAssociatedTypeWitness();
  v110 = v11;
  v111 = v10;
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ItemState();
  v13 = sub_1CF9E75D8();
  v115 = *(v13 - 8);
  v116 = v13;
  v14 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v106 - v15;
  v16 = v9[78];
  v17 = v9[76];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = v17;
  v113 = v16;
  v21 = swift_getAssociatedConformanceWitness();
  *&v186 = AssociatedTypeWitness;
  *(&v186 + 1) = v19;
  *&v187 = AssociatedConformanceWitness;
  *(&v187 + 1) = v21;
  v22 = type metadata accessor for FileItemVersion();
  v23 = sub_1CF9E75D8();
  v130 = *(v23 - 8);
  v24 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v106 - v25;
  v129 = v12;
  v127 = *(v12 - 8);
  v27 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v118 = &v106 - v31;
  v32 = *(v22 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v106 - v38;
  v40 = *(v131[4] + 16);
  v41 = (v8 + v9[84]);
  v42 = v41[1];
  v202 = *v41;
  v203 = v42;
  v43 = v41[3];
  v204 = v41[2];
  v205 = v43;
  v44 = v9[81];
  swift_beginAccess();
  (*(v130 + 16))(v26, v8 + v44, v23);
  v45 = (*(v32 + 48))(v26, 1, v22);
  v125 = v22;
  v117 = v39;
  v119 = v45;
  if (v45 != 1)
  {
    v109 = v40;
    (*(v32 + 32))(v36, v26, v22);
    v130 = v32;
    v51 = *(v32 + 16);
    v107 = v36;
    v51(v39, v36, v22);
    v52 = *(*v8 + 664);
    swift_beginAccess();
    v54 = v114;
    v53 = v115;
    v55 = v8 + v52;
    v56 = v116;
    (*(v115 + 16))(v114, v55, v116);
    v57 = v127;
    v58 = v129;
    if ((*(v127 + 48))(v54, 1, v129) == 1)
    {
      v48 = v109;

      sub_1CEFCCBDC(&v202, &v186, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v53 + 8))(v54, v56);
      v60 = v120;
      v59 = v121;
      v61 = v8;
      v62 = v8;
      v63 = v131[3];
      v74 = sub_1CF66E6E4(v62, v126, v121, *(v120 + 8));
      *&v75 = v112;
      *&v76 = v113;
      *(&v75 + 1) = v110;
      *(&v76 + 1) = v111;
      v187 = v76;
      v186 = v75;
      type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v47 = swift_allocError();
      *v77 = v74;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v32 = v130;
      (*(v130 + 8))(v107, v125);
      v8 = v61;
      if (!v128)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v64 = v108;
    (*(v57 + 32))(v108, v54, v58);
    (*(v57 + 16))(v118, v64, v58);
    v65 = *(*v8 + 576);

    sub_1CEFCCBDC(&v202, v184, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CF5EA7E0(v131, v8 + v65, v126, v121, *(v120 + 8), &v186);
    v120 = v65;
    v126 = *(v57 + 8);
    v127 = v57 + 8;
    (v126)(v64, v58);
    v88 = *(v130 + 8);
    v130 += 8;
    v121 = v88;
    (v88)(v107, v125);
    v180 = v198;
    v181 = v199;
    v182 = v200;
    v176 = v194;
    v177 = v195;
    v178 = v196;
    v179 = v197;
    v172 = v190;
    v173 = v191;
    v174 = v192;
    v175 = v193;
    v168 = v186;
    v169 = v187;
    v170 = v188;
    v171 = v189;
    v184[12] = v198;
    v184[13] = v199;
    v184[14] = v200;
    v184[8] = v194;
    v184[9] = v195;
    v184[10] = v196;
    v184[11] = v197;
    v184[4] = v190;
    v184[5] = v191;
    v184[6] = v192;
    v184[7] = v193;
    v184[0] = v186;
    v184[1] = v187;
    v183 = v201;
    v185 = v201;
    v184[2] = v188;
    v184[3] = v189;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v184);
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      v90 = *(v58 + 40);
      v91 = (v118 + v90 + *(type metadata accessor for ItemMetadata() + 152));
      v92 = v91[1];

      *v91 = 0;
      v91[1] = 0;
    }

    v93 = v58;
    swift_getAssociatedTypeWitness();
    v94 = swift_getAssociatedConformanceWitness();
    v95 = *(v94 + 64);
    v96 = swift_checkMetadataState();
    if (v95(v96, v94) & 1) != 0 || ((*(v94 + 72))(v96, v94))
    {
      v97 = v117;
      v98 = v118;
      sub_1CF5EFDB4(v128, v118, v117, v131, v124, v122, v123);
      sub_1CEFCCC44(&v202, &unk_1EC4BF260, &unk_1CFA01B60);

      sub_1CEFCCC44(&v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      (v121)(v97, v125);
    }

    else
    {
      v100 = v125;
      v98 = v118;
      if (v128)
      {
        type metadata accessor for StagedContext();
        v101 = swift_dynamicCastClass();
        if (!v101)
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Propagation.swift", 101, 2, 1038);
        }

        v102 = v101;
        v148 = v202;
        v149 = v203;
        v150 = v204;
        v151 = v205;
        v144 = v180;
        v145 = v181;
        v146 = v182;
        v147 = v183;
        v140 = v176;
        v141 = v177;
        v142 = v178;
        v143 = v179;
        v136 = v172;
        v137 = v173;
        v138 = v174;
        v139 = v175;
        v132 = v168;
        v133 = v169;
        v134 = v170;
        v135 = v171;

        sub_1CEFCCBDC(&v168, &v152, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v103 = v102;
        v104 = v117;
        sub_1CF5EF690(&v148, v103, v98, v117, v131, v124, &v132, v122, v123);

        sub_1CEFCCC44(&v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v164 = v144;
        v165 = v145;
        v166 = v146;
        v167 = v147;
        v160 = v140;
        v161 = v141;
        v162 = v142;
        v163 = v143;
        v156 = v136;
        v157 = v137;
        v158 = v138;
        v159 = v139;
        v152 = v132;
        v153 = v133;
        v154 = v134;
        v155 = v135;
        sub_1CEFCCC44(&v152, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        (v121)(v104, v100);
        sub_1CEFCCC44(&v202, &unk_1EC4BF260, &unk_1CFA01B60);
        v99 = v93;
        goto LABEL_25;
      }

      v148 = v202;
      v149 = v203;
      v150 = v204;
      v151 = v205;
      v144 = v180;
      v145 = v181;
      v146 = v182;
      v147 = v183;
      v140 = v176;
      v141 = v177;
      v142 = v178;
      v143 = v179;
      v136 = v172;
      v137 = v173;
      v138 = v174;
      v139 = v175;
      v132 = v168;
      v133 = v169;
      v134 = v170;
      v135 = v171;
      sub_1CEFCCBDC(&v168, &v152, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v105 = v117;
      sub_1CF5EEAD0(&v148, v98, v117, v131, v124, &v132, v122, v123);

      sub_1CEFCCC44(&v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v164 = v144;
      v165 = v145;
      v166 = v146;
      v167 = v147;
      v160 = v140;
      v161 = v141;
      v162 = v142;
      v163 = v143;
      v156 = v136;
      v157 = v137;
      v158 = v138;
      v159 = v139;
      v152 = v132;
      v153 = v133;
      v154 = v134;
      v155 = v135;
      sub_1CEFCCC44(&v152, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      (v121)(v105, v100);
      sub_1CEFCCC44(&v202, &unk_1EC4BF260, &unk_1CFA01B60);
    }

    v99 = v93;
LABEL_25:
    (v126)(v98, v99);
    return;
  }

  sub_1CEFCCBDC(&v202, &v186, &unk_1EC4BF260, &unk_1CFA01B60);
  (*(v130 + 8))(v26, v23);
  v46 = *(*v8 + 688);
  v47 = *(v8 + v46);
  v48 = v40;
  if (v47)
  {
    v49 = *(v8 + v46);
    swift_willThrow();
    v50 = v47;
  }

  else
  {
    *&v66 = v112;
    *(&v66 + 1) = v110;
    *&v67 = v113;
    *(&v67 + 1) = v111;
    v187 = v67;
    v186 = v66;
    type metadata accessor for Propagation.PropagationError();
    swift_getWitnessTable();
    v47 = swift_allocError();
    v69 = v68;
    v70 = swift_getAssociatedTypeWitness();
    v71 = (v69 + *(swift_getTupleTypeMetadata2() + 48));
    v72 = *(*(v70 - 8) + 16);
    v73 = v70;
    v48 = v40;
    v72(v69, v8 + *(*v8 + 576), v73);
    *v71 = 0xD000000000000019;
    v71[1] = 0x80000001CFA54D80;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v60 = v120;
  v59 = v121;
  if (!v128)
  {
    goto LABEL_14;
  }

LABEL_11:
  type metadata accessor for StagedContext();
  v78 = swift_dynamicCastClass();
  if (v78)
  {
    v79 = v78;
    v80 = swift_allocObject();
    v130 = v32;
    LODWORD(v126) = 0;
    v81 = v80;
    v80[2] = v59;
    v80[3] = v60;
    v82 = v122;
    v80[4] = v131;
    v80[5] = v82;
    v83 = v124;
    v80[6] = v123;
    v80[7] = v8;
    v80[8] = v83;
    v80[9] = v47;
    v122 = (*v48 + 640);
    v84 = *v122;

    v85 = v47;
    v84(v79, sub_1CF60F418, v81);
    v86 = v129;
    sub_1CEFCCC44(&v202, &unk_1EC4BF260, &unk_1CFA01B60);

    LODWORD(v81) = v126;
    v32 = v130;

    v87 = v119;
    if (v81)
    {
      (*(v127 + 8))(v118, v86);
    }

    goto LABEL_16;
  }

LABEL_14:
  sub_1CF60169C(v126, v47, v8, v122, v123, v131, v124, v59, v59, v60, v60);
  sub_1CEFCCC44(&v202, &unk_1EC4BF260, &unk_1CFA01B60);

  v87 = v119;
LABEL_16:
  if (v87 != 1)
  {
    (*(v32 + 8))(v117, v125);
  }
}

id sub_1CF5F3DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 608);
  swift_getAssociatedTypeWitness();
  type metadata accessor for SnapshotItem();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = TupleTypeMetadata[12];
  v8 = TupleTypeMetadata[16];
  v9 = TupleTypeMetadata[20];
  v10 = v3[72];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v10, AssociatedTypeWitness);
  v12 = type metadata accessor for SnapshotItem();
  (*(*(v12 - 8) + 56))(a1 + v7, 1, 1, v12);
  v13 = *v1;
  *(a1 + v8) = *(v1 + *(*v1 + 640));
  v18 = *(v1 + *(v13 + 584));
  *(a1 + v9) = v18;
  v14 = v3[77];
  v15 = v3[79];
  type metadata accessor for DirectionalTestingOperation();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for TestingOperation();
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(a1, 0, 1, v16);

  return v18;
}

void sub_1CF5F4100()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 624);
  v4 = *(*v0 + 608);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v5 = sub_1CF9E75D8();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(*v0 + 656);
  swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 664);
  v9 = *(v1 + 632);
  v10 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState();
  v11 = sub_1CF9E75D8();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = (v0 + *(*v0 + 672));
  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  v16 = v12[7];
  sub_1CF480A8C(*v12, v12[1], v12[2], v12[3]);
  v17 = *(*v0 + 680);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  swift_getTupleTypeMetadata2();
  v18 = sub_1CF9E75D8();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
}

uint64_t sub_1CF5F44C8()
{
  v1 = *v0;
  v2 = sub_1CF5E9C94();
  v3 = *(*v2 + 648);
  v4 = v1[78];
  v5 = v1[76];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v6 = sub_1CF9E75D8();
  (*(*(v6 - 8) + 8))(v2 + v3, v6);
  v7 = *(*v2 + 656);
  swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  v9 = *(*v2 + 664);
  v10 = v1[79];
  v11 = v1[77];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState();
  v12 = sub_1CF9E75D8();
  (*(*(v12 - 8) + 8))(v2 + v9, v12);
  v13 = (v2 + *(*v2 + 672));
  v14 = v13[4];
  v15 = v13[5];
  v16 = v13[6];
  v17 = v13[7];
  sub_1CF480A8C(*v13, v13[1], v13[2], v13[3]);
  v18 = *(*v2 + 680);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  swift_getTupleTypeMetadata2();
  v19 = sub_1CF9E75D8();
  (*(*(v19 - 8) + 8))(v2 + v18, v19);

  return v2;
}

uint64_t sub_1CF5F48E0(void *a1)
{
  v2 = a1[79];
  v3 = a1[77];
  swift_getAssociatedTypeWitness();
  result = sub_1CF9E75D8();
  if (v5 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    v6 = a1[78];
    v7 = a1[76];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemVersion();
    result = sub_1CF9E75D8();
    if (v8 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ItemState();
      result = sub_1CF9E75D8();
      if (v9 <= 0x3F)
      {
        v13 = *(result - 8) + 64;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        type metadata accessor for FileItemVersion();
        result = sub_1CF9E75D8();
        if (v10 <= 0x3F)
        {
          v14 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF5F4C30@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 672);
  swift_beginAccess();
  v5 = *(v3 + 632);
  v6 = *(v3 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ItemState();
  result = (*(*(v7 - 8) + 48))(v4, 1, v7);
  if (result)
  {
    v9 = 4;
  }

  else
  {
    v9 = *(v4 + *(v7 + 40));
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1CF5F4D64()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 672);
  swift_beginAccess();
  v3 = *(v1 + 632);
  v4 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    return 2;
  }

  v7 = v2 + *(v5 + 40);
  return *(v7 + *(type metadata accessor for ItemMetadata() + 112));
}

uint64_t sub_1CF5F4EA0()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 672);
  swift_beginAccess();
  v3 = *(v1 + 632);
  v4 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v2, 1, v5);
  result = 0;
  if (!v4)
  {
    v7 = v2 + *(v5 + 40);
    return *(v7 + *(type metadata accessor for ItemMetadata() + 104));
  }

  return result;
}

unint64_t sub_1CF5F4FE4()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 672);
  swift_beginAccess();
  v3 = *(v1 + 632);
  v4 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState();
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    v7 = 0;
  }

  else
  {
    v8 = v2 + *(v5 + 40);
    v7 = *(v8 + 4);
    v6 = *(v8 + 8);
  }

  return v7 | (v6 << 32);
}

uint64_t sub_1CF5F5128@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 672);
  swift_beginAccess();
  v5 = *(v3 + 632);
  v6 = *(v3 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ItemState();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v1 + v4, 1, v8);
  v11 = *(AssociatedTypeWitness - 8);
  if (!v10)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v4, AssociatedTypeWitness);
    v9 = 0;
  }

  return (*(v11 + 56))(a1, v9, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF5F52B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 632);
  v4 = v2[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ItemState();
  v83 = sub_1CF9E75D8();
  v82 = *(v83 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v70 - v8;
  v85 = v6;
  v84 = *(v6 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v70 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  *&v91 = v12;
  *(&v91 + 1) = v13;
  *&v92 = v14;
  *(&v92 + 1) = v15;
  v16 = type metadata accessor for FileItemVersion();
  v75 = sub_1CF9E75D8();
  v74 = *(v75 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v70 - v18;
  v78 = v16;
  v77 = *(v16 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v70 - v21;
  v22 = sub_1CF9E75D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v70 - v25;
  v80 = *(AssociatedTypeWitness - 8);
  v27 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v70 - v29;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x74616761706F7270, 0xEC0000003C3A6465);
  v30 = *(*v1 + 576);
  v31 = v2[78];
  v32 = v2[76];
  swift_getAssociatedTypeWitness();
  v33 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A726576626420, 0xE700000000000000);
  v95 = *(v1 + *(*v1 + 640));
  v34 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v34);

  v35 = v91;
  *&v91 = 0x3A7265766D6F6420;
  *(&v91 + 1) = 0xE800000000000000;
  v36 = *(v1 + *(*v1 + 584));
  if (v36)
  {
    v37 = [v36 description];
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;
  }

  else
  {
    v40 = 0xE500000000000000;
    v38 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1D3868CC0](v38, v40);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v41 = v91;
  v91 = v35;

  MEMORY[0x1D3868CC0](v41, *(&v41 + 1));

  v96 = v91;
  v42 = *(*v1 + 656);
  swift_beginAccess();
  (*(v23 + 16))(v26, v1 + v42, v22);
  v43 = v80;
  if ((*(v80 + 48))(v26, 1, AssociatedTypeWitness) == 1)
  {
    (*(v23 + 8))(v26, v22);
    v44 = v85;
    v45 = v84;
  }

  else
  {
    v46 = v76;
    (*(v43 + 32))(v76, v26, AssociatedTypeWitness);
    v47 = *(*v1 + 688);
    swift_beginAccess();
    v48 = v1 + v47;
    v49 = v73;
    v50 = v75;
    (*(v74 + 16))(v73, v48, v75);
    v51 = v77;
    v52 = v78;
    v53 = (*(v77 + 48))(v49, 1, v78);
    v45 = v84;
    if (v53 == 1)
    {
      (*(v43 + 8))(v46, AssociatedTypeWitness);
      (*(*(&v41 + 1) + 8))(v49, v50);
    }

    else
    {
      v54 = v71;
      (*(v51 + 32))(v71, v49, v52);
      *&v91 = 0;
      *(&v91 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x3A74656772617420, 0xEC0000003A64693CLL);
      v55 = *(AssociatedConformanceWitness + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v91, *(&v91 + 1));

      (*(v51 + 8))(v54, v52);
      (*(v43 + 8))(v46, AssociatedTypeWitness);
    }

    v44 = v85;
  }

  v56 = v82;
  v57 = *(*v1 + 672);
  swift_beginAccess();
  v58 = v1 + v57;
  v59 = v81;
  v60 = v83;
  (*(v56 + 16))(v81, v58, v83);
  if ((*(v45 + 48))(v59, 1, v44) == 1)
  {
    (*(v56 + 8))(v59, v60);
  }

  else
  {
    v61 = v79;
    (*(v45 + 32))(v79, v59, v44);
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x7473657571657220, 0xEB000000003A6465);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](v91, *(&v91 + 1));

    (*(v45 + 8))(v61, v44);
  }

  v62 = *v1;
  v63 = (v1 + *(*v1 + 680));
  v64 = v63[1];
  v91 = *v63;
  v92 = v64;
  v65 = v63[3];
  v93 = v63[2];
  v94 = v65;
  if (*(&v64 + 1) >> 60 != 11)
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    v66 = v91;
    sub_1CEFF05F4(v92, *(&v64 + 1));
    MEMORY[0x1D3868CC0](0x6572757470616320, 0xEA00000000003A64);
    v87 = 677669222;
    v88 = 0xE400000000000000;
    v86 = v66;
    v67 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v67);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v87, v88);

    MEMORY[0x1D3868CC0](v89, v90);

    sub_1CEFCCC44(&v91, &unk_1EC4BF260, &unk_1CFA01B60);
    v62 = *v1;
  }

  v89 = 0x3A736666696420;
  v90 = 0xE700000000000000;
  v68 = sub_1CF071470(*(v1 + *(v62 + 648)));
  MEMORY[0x1D3868CC0](v68);

  MEMORY[0x1D3868CC0](v89, v90);

  return v96;
}

char **sub_1CF5F5E78(uint64_t a1, uint64_t a2, char **a3, char *a4, char *a5)
{
  v537 = a5;
  v536 = a4;
  v535 = a3;
  v534.i64[0] = a2;
  v487 = a1;
  v6 = *v5;
  v7 = *(*v5 + 77);
  v8 = *(*v5 + 79);
  v492 = type metadata accessor for JobLockRule();
  v486 = *(v492 - 8);
  v9 = *(v486 + 64);
  MEMORY[0x1EEE9AC00](v492);
  v491 = v445 - v10;
  v498 = type metadata accessor for ItemMetadata();
  v11 = *(*(v498 - 1) + 64);
  MEMORY[0x1EEE9AC00](v498);
  v452 = v445 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v454 = *(v13 - 8);
  v455 = v13;
  v14 = *(v454 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v457 = v445 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SnapshotItem();
  v17 = sub_1CF9E75D8();
  v463 = *(v17 - 8);
  v464 = v17;
  v18 = *(v463 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v474 = v445 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v476 = v445 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v459 = v445 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v465 = v445 - v25;
  v473 = v16;
  v472 = *(v16 - 8);
  v26 = *(v472 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v458 = v445 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v461 = v445 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v456 = v445 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v453 = v445 - v34;
  v532 = v6;
  v611 = v5;
  v35 = *(v6 + 78);
  v36 = *(v6 + 76);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v489 = *(AssociatedTypeWitness - 8);
  v38 = *(v489 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v469 = v445 - v39;
  v40 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v475 = *(TupleTypeMetadata2 - 8);
  v41 = *(v475 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v471 = v445 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v482 = v445 - v44;
  v479 = v40;
  v484 = *(v40 - 8);
  v45 = v484[8];
  MEMORY[0x1EEE9AC00](v46);
  v460 = v445 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v466 = v445 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v470 = v445 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v478 = v445 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v485 = v445 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v490 = v445 - v57;
  v58 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v529 = v58;
  v509 = type metadata accessor for ItemState();
  v508 = *(v509 - 1);
  v59 = *(v508 + 8);
  MEMORY[0x1EEE9AC00](v509);
  v507 = v445 - v60;
  v538 = v8;
  v539 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v61 = type metadata accessor for ItemState();
  v62 = sub_1CF9E75D8();
  v493 = *(v62 - 8);
  v494 = v62;
  v63 = *(v493 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v488 = v445 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v506 = v445 - v66;
  v497 = v61;
  v496 = *(v61 - 8);
  v67 = *(v496 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v495 = v445 - v69;
  v70 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = swift_getAssociatedConformanceWitness();
  v480 = AssociatedTypeWitness;
  v594.i64[0] = AssociatedTypeWitness;
  v594.i64[1] = v70;
  v468 = AssociatedConformanceWitness;
  v595.i64[0] = AssociatedConformanceWitness;
  v595.i64[1] = v72;
  v510 = type metadata accessor for FileItemVersion();
  v512 = sub_1CF9E75D8();
  v511 = *(v512 - 8);
  v73 = *(v511 + 64);
  MEMORY[0x1EEE9AC00](v512);
  v467 = v445 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v483 = v445 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v505.i64[0] = v445 - v78;
  v79 = type metadata accessor for SnapshotItem();
  v80 = sub_1CF9E75D8();
  v503 = *(v80 - 8);
  v504.i64[0] = v80;
  v81 = v503[8];
  MEMORY[0x1EEE9AC00](v80);
  v516 = v445 - v82;
  v514 = v79;
  v515 = *(v79 - 8);
  v83 = *(v515 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v513 = v445 - v85;
  v86 = v538;
  v87 = swift_getAssociatedTypeWitness();
  v88 = swift_getAssociatedTypeWitness();
  v89 = swift_getAssociatedConformanceWitness();
  v90 = swift_getAssociatedConformanceWitness();
  v594.i64[0] = v87;
  v594.i64[1] = v88;
  v595.i64[0] = v89;
  v595.i64[1] = v90;
  v91 = type metadata accessor for FileItemVersion();
  v521 = sub_1CF9E75D8();
  v520 = *(v521 - 8);
  v92 = *(v520 + 64);
  MEMORY[0x1EEE9AC00](v521);
  v502 = v445 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v518 = v445 - v95;
  v522 = v91;
  v523 = *(v91 - 8);
  v96 = *(v523 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v517 = v445 - v98;
  v99 = v539;
  v527 = sub_1CF9E75D8();
  v526 = *(v527 - 8);
  v100 = *(v526 + 64);
  MEMORY[0x1EEE9AC00](v527);
  v477 = v445 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v102);
  v501 = v445 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v525 = (v445 - v105);
  v528 = *(v99 - 8);
  v106 = *(v528 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v462 = v445 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109);
  v111 = v445 - v110;
  v499 = v36;
  v500 = v35;
  v112.i64[0] = v36;
  v519 = v7;
  v112.i64[1] = v7;
  v113.i64[0] = v35;
  v113.i64[1] = v86;
  v530 = v113;
  v531 = v112;
  v595 = v113;
  v594 = v112;
  v114 = type metadata accessor for ItemReconciliation();
  v115 = sub_1CF9E75D8();
  v524 = *(v115 - 8);
  v116 = *(v524 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v118 = v445 - v117;
  v119 = *(v114 - 8);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v123 = v445 - v122;
  v124 = *(v534.i64[0] + 16);
  v125 = *(v532 + 72);
  v126 = v533.i64[0];
  result = sub_1CF68E230(&v125[v611], v535, v536, v537, v118);
  if (!v126)
  {
    v448 = v124;
    v449 = v115;
    v532 = v125;
    v450 = v111;
    v451 = v123;
    v533.i64[0] = 0;
    if ((*(v119 + 48))(v118, 1, v114) == 1)
    {
      (*(v524 + 8))(v118, v449);
      v595 = v530;
      v594 = v531;
      type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v128 = swift_allocError();
      v130 = v129;
      v131 = v529;
      v132 = (v129 + *(swift_getTupleTypeMetadata2() + 48));
      v133 = v611;
      (*(*(v131 - 1) + 16))(v130, &v532[v611], v131);
      strcpy(v132, "no source item");
      v132[15] = -18;
      swift_storeEnumTagMultiPayload();
      v134 = *(*v133 + 89);
      v135 = *(v133 + v134);
      *(v133 + v134) = v128;
LABEL_9:

      return 0;
    }

    v136 = v451;
    (*(v119 + 32))(v451, v118, v114);
    v137 = *(v114 + 52);
    v524 = v114;
    v138 = &v136[v137];
    v139 = v526;
    v140 = v525;
    v141 = &v136[v137];
    v142 = v527;
    (*(v526 + 16))(v525, v141, v527);
    v143 = v528;
    v144 = v528 + 48;
    v145 = v539;
    v449 = *(v528 + 48);
    if (v449(v140, 1, v539) == 1)
    {
      (*(v139 + 8))(v140, v142);
      v595 = v530;
      v594 = v531;
      type metadata accessor for Propagation.PropagationError();
      v146 = v119;
      swift_getWitnessTable();
      v147 = swift_allocError();
      v149 = v148;
      v150 = v529;
      v151 = (v148 + *(swift_getTupleTypeMetadata2() + 48));
      v152 = v611;
      (*(*(v150 - 1) + 16))(v149, &v532[v611], v150);
      *v151 = 0xD000000000000010;
      v151[1] = 0x80000001CFA54A70;
      swift_storeEnumTagMultiPayload();
      (*(v146 + 8))(v451, v524);
      v153 = *(*v152 + 89);
      v135 = *(v152 + v153);
      *(v152 + v153) = v147;
      goto LABEL_9;
    }

    v446 = *(v143 + 32);
    v447 = v119;
    v446(v450, v140, v145);
    v525 = type metadata accessor for ItemReconciliationHalf();
    v154 = v525[12];
    v155 = v520;
    v156 = *(v520 + 16);
    v538 = v138;
    v157 = v138 + v154;
    v158 = v518;
    v159 = v521;
    v156(v518, v157, v521);
    v160 = v522;
    if ((*(v523 + 48))(v158, 1, v522) == 1)
    {
      (*(v155 + 8))(v158, v159);
      v595 = v530;
      v594 = v531;
      type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v161 = swift_allocError();
      v162 = v145;
      v164 = v163;
      v165 = v529;
      v166 = (v163 + *(swift_getTupleTypeMetadata2() + 48));
      v167 = v611;
      (*(*(v165 - 1) + 16))(v164, &v532[v611], v165);
      *v166 = 0xD000000000000015;
      v166[1] = 0x80000001CFA54D30;
      swift_storeEnumTagMultiPayload();
      (*(v143 + 8))(v450, v162);
LABEL_8:
      (*(v447 + 8))(v451, v524);
      v168 = *(*v167 + 89);
      v135 = *(v167 + v168);
      *(v167 + v168) = v161;
      goto LABEL_9;
    }

    v445[1] = v143 + 32;
    v519 = v144;
    v169 = v523;
    v170 = v517;
    (*(v523 + 32))(v517, v158, v160);
    v171 = *(v534.i64[0] + 40);
    v172 = v611;
    v173 = v532;
    v174 = v516;
    v175 = v533.i64[0];
    (*(*v171 + 248))(&v532[v611], *(v172 + *(*v172 + 80)), v535, v536, v537);
    v533.i64[0] = v175;
    if (v175)
    {
      (*(v169 + 8))(v170, v160);
LABEL_13:
      (*(v528 + 8))(v450, v539);
      return (*(v447 + 8))(v451, v524);
    }

    v176 = v515;
    v177 = v514;
    v178 = (*(v515 + 48))(v174, 1, v514);
    v179 = v528;
    if (v178 == 1)
    {
      (v503[1])(v174, v504.i64[0]);
      v595 = v530;
      v594 = v531;
      type metadata accessor for Propagation.PropagationError();
      v180 = v173;
      swift_getWitnessTable();
      v161 = swift_allocError();
      v167 = v172;
      v182 = v181;
      v183 = v529;
      v184 = (v181 + *(swift_getTupleTypeMetadata2() + 48));
      (*(*(v183 - 1) + 16))(v182, &v180[v167], v183);
      *v184 = 0xD000000000000025;
      v184[1] = 0x80000001CFA54D50;
      swift_storeEnumTagMultiPayload();
      (*(v523 + 8))(v517, v522);
      (*(v179 + 8))(v450, v539);
      goto LABEL_8;
    }

    v185 = v513;
    (*(v176 + 32))(v513, v174, v177);
    v186 = *(v179 + 16);
    v187 = v501;
    v188 = v539;
    v532 = (v179 + 16);
    v529 = v186;
    (v186)(v501, v450, v539);
    (*(v179 + 56))(v187, 0, 1, v188);
    v189 = v172;
    v190 = v185;
    v191 = *(*v189 + 82);
    swift_beginAccess();
    (*(v526 + 40))(v189 + v191, v187, v527);
    swift_endAccess();
    v192 = v523;
    v193 = v502;
    v194 = v522;
    (*(v523 + 16))(v502, v517, v522);
    (*(v192 + 56))(v193, 0, 1, v194);
    v195 = *(*v189 + 86);
    swift_beginAccess();
    (*(v520 + 40))(v189 + v195, v193, v521);
    swift_endAccess();
    v520 = v171;
    if (sub_1CF056558() && (v190[*(v177 + 48) + v498[20]] & 1) != 0)
    {
      v196 = xmmword_1CF9FEC40;
      v197 = 0uLL;
      v198 = 0uLL;
      v199 = 0uLL;
    }

    else
    {
      v200 = &v451[*(type metadata accessor for ItemReconciliationHalf() + 68)];
      v201 = v200[1];
      v594 = *v200;
      v595 = v201;
      v202 = v200[3];
      v596 = v200[2];
      v597 = v202;
      sub_1CEFCCBDC(&v594, &v578, &unk_1EC4BF260, &unk_1CFA01B60);
      v197 = v594;
      v196 = v595;
      v198 = v596;
      v199 = v597;
    }

    v203 = v510;
    v204 = v505.i64[0];
    v205 = (v189 + *(*v189 + 85));
    v206 = v205[1];
    v610[0] = *v205;
    v610[1] = v206;
    v207 = v205[3];
    v610[2] = v205[2];
    v610[3] = v207;
    *v205 = v197;
    v205[1] = v196;
    v205[2] = v198;
    v205[3] = v199;
    sub_1CEFCCC44(v610, &unk_1EC4BF260, &unk_1CFA01B60);
    v208 = *(v203 - 8);
    v209 = *(v208 + 16);
    v521 = *(v177 + 40);
    v209(v204, &v190[v521], v203);
    (*(v208 + 56))(v204, 0, 1, v203);
    v210 = *(*v189 + 83);
    swift_beginAccess();
    (*(v511 + 40))(v189 + v210, v204, v512);
    swift_endAccess();
    v211 = *(*v189 + 87);
    v211[v189] = 0;
    v212 = *(*v189 + 88);
    v212[v189] = 0;
    WitnessTable = swift_getWitnessTable();
    v214 = v507;
    sub_1CF937E0C(v177, WitnessTable, v507);
    v215 = v506;
    v216 = v533.i64[0];
    sub_1CF69AAA8(v214, v535, v536, v537, v506);
    v533.i64[0] = v216;
    if (v216)
    {
      (*(v508 + 1))(v214, v509);
      (*(v515 + 8))(v190, v177);
      (*(v523 + 8))(v517, v522);
      goto LABEL_13;
    }

    v516 = v211;
    v518 = v212;
    (*(v508 + 1))(v214, v509);
    v218 = v496;
    v217 = v497;
    if ((*(v496 + 48))(v215, 1, v497) == 1)
    {
      (*(v493 + 8))(v215, v494);
      v595 = v530;
      v594 = v531;
      v219 = type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v220 = swift_allocError();
      v222 = v221;
      v223 = *(v534.i64[0] + 24);
      v224 = v611;
      v225 = v533.i64[0];
      v226 = sub_1CF66E6E4(v611, v535, v536, v537);
      v533.i64[0] = v225;
      v227 = v523;
      if (v225)
      {
        (*(v515 + 8))(v513, v514);
        (*(v227 + 8))(v517, v522);
        (*(v528 + 8))(v450, v539);
        (*(v447 + 8))(v451, v524);
        return MEMORY[0x1D386CA40](v220, v219);
      }

      *v222 = v226;
      swift_storeEnumTagMultiPayload();
      (*(v515 + 8))(v513, v514);
      (*(v227 + 8))(v517, v522);
      (*(v528 + 8))(v450, v539);
      (*(v447 + 8))(v451, v524);
      v255 = *(*v224 + 89);
      v135 = *(v224 + v255);
      *(v224 + v255) = v220;
      goto LABEL_9;
    }

    v228 = v495;
    (*(v218 + 32))(v495, v215, v217);
    v509 = *(v534.i64[0] + 32);
    v229 = sub_1CF056558();
    v230 = &v228[*(v217 + 40)];
    v231 = v523;
    if (!v229)
    {
      v230[v498[20]] = 0;
      v233 = v611;
      v234 = v514;
      v236 = v491;
      v235 = v492;
      goto LABEL_30;
    }

    v232 = *v230 != 2 && (v451[*(type metadata accessor for ItemReconciliationHalf() + 52)] & 0xFB) == 0;
    v260 = v533.i64[0];
    v262 = v489;
    v261 = v490;
    v263 = v208;
    v264 = v521;
    v265 = v498[20];
    v230[v265] = v232;
    v266 = *(v611 + *(*v611 + 648));
    v508 = v230;
    v507 = v266;
    if ((v266 & 0x10) == 0)
    {
      v233 = v611;
LABEL_41:
      v234 = v514;
      v236 = v491;
      v267 = v498;
      v268 = v534.i64[0];
      v269 = v538;
LABEL_65:
      v332 = v539;
      if (v230[v265])
      {
        v235 = v492;
        goto LABEL_67;
      }

      if ((v266 & 0x10010) != 0)
      {
        v333 = v513;
        (*(*v520 + 264))(&v594, v513, v535, v536, v537);
        if (v260)
        {
          (*(v496 + 8))(v495, v497);
          (*(v515 + 8))(v333, v234);
          (*(v523 + 8))(v517, v522);
          (*(v528 + 8))(v450, v332);
          return (*(v447 + 8))(v451, v524);
        }

        v574 = v606;
        v575 = v607;
        v576 = v608;
        v570 = v602;
        v571 = v603;
        v572 = v604;
        v573 = v605;
        v566 = v598;
        v567 = v599;
        v568 = v600;
        v569 = v601;
        v562 = v594;
        v563 = v595;
        v564 = v596;
        v565 = v597;
        v590 = v606;
        v591 = v607;
        v592 = v608;
        v586 = v602;
        v587 = v603;
        v588 = v604;
        v589 = v605;
        v582 = v598;
        v583 = v599;
        v584 = v600;
        v585 = v601;
        v578 = v594;
        v579 = v595;
        v577 = v609;
        v593 = v609;
        v580 = v596;
        v581 = v597;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v578) == 1)
        {
          v340 = 6;
          v341 = 1;
        }

        else
        {
          v347 = (*(*v268 + 600))();
          v553 = v591;
          v554 = v592;
          v555 = v593;
          v548 = v586;
          v549 = v587;
          v550 = v588;
          v551 = v589;
          v552 = v590;
          v544 = v582;
          v545 = v583;
          v546 = v584;
          v547 = v585;
          v540 = v578;
          v541 = v579;
          v542 = v580;
          v543 = v581;
          sub_1CF0259D8(v347, v508, v557.i8);
          sub_1CEFCCC44(&v562, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v340 = v557.i8[0];
          v341 = v557.u8[0] == 6;
          if (v557.u8[0] == 5)
          {
LABEL_114:
            v349 = v498[21];
            v350 = 5;
LABEL_134:
            v508[v349] = v350;
            goto LABEL_135;
          }
        }

        v348 = (*(*v509 + 320))(v450, 0, v535, v536, v537);
        if (v348 != 2 && (v348 & 1) != 0)
        {
          goto LABEL_114;
        }

        v383 = *(v611 + 136);
        if ((v383 & 0x4400000000) != 0)
        {
          v349 = v498[21];
          v350 = 3;
          goto LABEL_134;
        }

        if ((v383 & 0x200000000000) == 0 || (v411 = (v538 + v525[17]), v412 = v411[1], v540 = *v411, v541 = v412, v413 = v411[3], v542 = v411[2], v543 = v413, v412.i64[1] >> 60 == 11))
        {
          if (!v341)
          {
            v508[v498[21]] = v340;
          }

          goto LABEL_135;
        }

        v414 = *(v509[2] + 136);
        v557 = *v411;
        v558 = v411[1].i64[0];
        v559 = v541.i64[1];
        v415 = v411[3];
        v560 = v411[2];
        v561 = v415;
        sub_1CEFCCBDC(&v540, &v556, &unk_1EC4BF260, &unk_1CFA01B60);

        v440 = sub_1CF9BF41C(&v557);

        sub_1CEFCCC44(&v540, &unk_1EC4BF260, &unk_1CFA01B60);
        if (v440 <= 1023)
        {
          if (!v440)
          {
            v441 = 0;
            goto LABEL_216;
          }

          if (v440 == 512)
          {
            v441 = 2;
            goto LABEL_216;
          }
        }

        else
        {
          switch(v440)
          {
            case 0x400:
              v441 = 3;
              goto LABEL_216;
            case 0x800:
              v441 = 4;
              goto LABEL_216;
            case 0x8000:
              v441 = 5;
LABEL_216:
              v508[v498[21]] = v441;
LABEL_135:
              if ((v507 & 0x10) != 0)
              {
                v386 = *(v534.i64[0] + 24);
                v533 = vextq_s8(v530, v530, 8uLL);
                v534 = vextq_s8(v531, v531, 8uLL);
                v540 = v534;
                v541 = v533;
                type metadata accessor for ItemJob();
                MetatypeMetadata = swift_getMetatypeMetadata();
                v388 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
                v389 = *(v388 + 52);
                v390 = (*(v388 + 48) + 7) & 0x1FFFFFFF8;
                swift_allocObject();
                v391 = sub_1CF9E6D68();
                v540 = v534;
                v541 = v533;
                *v392 = type metadata accessor for Materialization.MaterializeItem();
                v393 = sub_1CF045898(v391);
                v403 = (*(*v386 + 312))(v450, v393, v535, v536, v537);

                v540.i64[0] = v403;
                sub_1CF9E6E58();
                swift_getWitnessTable();
                sub_1CF9E7118();
                v404 = v557.i64[0];

                if (v404)
                {
                  v405 = *(v404 + 112);
                  if (v405 != 3 && (v405 != 4 || *(v404 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v404 + 104)) && (v406 = *(v404 + 136), (v406 & 0x800000) != 0))
                  {
                    v430 = v498[21];
                    v431 = v508[v430];
                    if (v431 == 1)
                    {
                      LOBYTE(v431) = 4;
                    }

                    else if (v508[v430] && v431 <= 4)
                    {
                      LOBYTE(v431) = 4;
                    }

                    v508[v430] = v431;
                    v443 = *(*(v509[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 26);

                    if (v443)
                    {
                      if (v406)
                      {
                        v444 = 5;
                      }

                      else
                      {
                        v444 = 6;
                      }

                      v508[v498[23]] = v444;
                    }
                  }

                  else
                  {
                  }
                }
              }

              if (v508[v498[21]])
              {
                v384 = *(v611 + 136);
                if (v384)
                {
                  if ((v384 & 0x10000800000) != 0)
                  {
                    v385 = 5;
                  }

                  else if ((v384 & 0x4400000000) != 0)
                  {
                    v385 = 0;
                  }

                  else if ((v384 & 0x200001000000) == 0x1000000)
                  {
                    v385 = 3;
                  }

                  else
                  {
                    v385 = 1;
                  }
                }

                else
                {
                  v385 = 4;
                }

                if (*(*(v509[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 26) == 1)
                {
                  v260 = 0;
                  (*(*v509 + 240))(v450, 1, v535, v536, v537);
                  if ((*(v472 + 48))(v459, 1, v473) == 1)
                  {
                    (*(v463 + 8))(v459, v464);
                  }

                  else
                  {
                    v432 = v473;
                    v433 = v456;
                    (*(v472 + 32))(v456, v459, v473);
                    v434 = &v433[*(v432 + 48)];
                    if (v434[v498[21]])
                    {
                      v435 = v434[v498[23]];
                      if (v435 != 6)
                      {
                        v540.i8[0] = v435;
                        v557.i8[0] = v385;
                        ResidencyReason.convert(to:)(&v557);
                        (*(v472 + 8))(v456, v473);
                        v442 = v498;
                        v230 = v508;
                        v508[v498[23]] = v540.i8[0];
                        v267 = v442;
                        goto LABEL_191;
                      }
                    }

                    (*(v472 + 8))(v456, v473);
                  }
                }

                v436 = v498;
                v230 = v508;
                v508[v498[23]] = v385;
                v260 = 0;
                v267 = v436;
LABEL_191:
                v233 = v611;
                v236 = v491;
                v235 = v492;
                v234 = v514;
                v269 = v538;
                goto LABEL_192;
              }

              v260 = 0;
LABEL_142:
              v233 = v611;
              v236 = v491;
              v235 = v492;
              v234 = v514;
              v267 = v498;
              v269 = v538;
              v230 = v508;
LABEL_192:
              v266 = v507;
LABEL_67:
              if ((*(v269 + v525[9]) & 0x10) != 0)
              {
                v230[v267[21]] = 0;
                if ((v266 & 0x100000000000) != 0)
                {
                  if (v451[*(v524 + 56)] == 1)
                  {
                    v230[v267[15]] = 1;
                  }

                  goto LABEL_79;
                }
              }

              else if ((v266 & 0x100000000000) != 0)
              {
LABEL_79:
                if (v451[*(v524 + 56)] == 1)
                {
                  v336 = v267;
                  v337 = v267[15];
                  if (v230[v337])
                  {
                    v338 = v260;
                    v267 = v336;
                  }

                  else
                  {
                    (*(*v509 + 240))(v450, 1, v535, v536, v537);
                    v338 = v260;
                    if (v260)
                    {
                      (*(v496 + 8))(v495, v497);
                      (*(v515 + 8))(v513, v514);
LABEL_101:
                      (*(v523 + 8))(v517, v522);
                      (*(v528 + 8))(v450, v539);
                      return (*(v447 + 8))(v451, v524);
                    }

                    if ((*(v472 + 48))(v474, 1, v473) == 1)
                    {
                      (*(v463 + 8))(v474, v464);
                      v267 = v498;
                    }

                    else
                    {
                      v395 = v472;
                      v394 = v473;
                      v396 = v458;
                      (*(v472 + 32))(v458, v474, v473);
                      v397 = v396[*(v394 + 48) + v498[18]];
                      (*(v395 + 8))(v396, v394);
                      if (v397 == 1)
                      {
                        v398 = v498;
                        v399 = v508;
                        v508[v498[18]] = 1;
                        v399[v337] = 1;
                        v267 = v398;
                      }

                      else
                      {
                        v267 = v498;
                      }
                    }
                  }
                }

                else
                {
                  v338 = v260;
                }

                if (fpfs_supports_pkg_dataless_escape_prevention() && (v339 = v267[15], (v508[v339] & 1) == 0))
                {
                  if (v508[v267[28]] == 1)
                  {
                    v508[v339] = 1;
                  }

                  v260 = v338;
                  v233 = v611;
                  v236 = v491;
                  v235 = v492;
                  v234 = v514;
                  v267 = v498;
                }

                else
                {
                  v260 = v338;
                  v233 = v611;
                  v236 = v491;
                  v235 = v492;
                  v234 = v514;
                }

                v334 = v507;
LABEL_96:
                v343 = v508;
                if ((*&v334 & 0x10010) != 0)
                {
                  v344 = v267[21];
                  if (v508[v344])
                  {
                    if ((v451[*(type metadata accessor for ItemReconciliationHalf() + 36)] & 0x10) != 0)
                    {
                      v334 = v507;
                    }

                    else
                    {
                      v345 = (*(*v509 + 488))(v450, v535, v536, v537);
                      if (v260)
                      {
                        (*(v496 + 8))(v495, v497);
                        (*(v515 + 8))(v513, v234);
                        goto LABEL_101;
                      }

                      v260 = 0;
                      v233 = v611;
                      v236 = v491;
                      v235 = v492;
                      v267 = v498;
                      v343 = v508;
                      v334 = v507;
                      if ((v345 & 1) == 0)
                      {
                        goto LABEL_104;
                      }
                    }

                    v343[v344] = 0;
                  }
                }

LABEL_104:
                if ((v334 & 0x10000) != 0)
                {
                  v237 = v495;
                  if (v343[v267[21]])
                  {
                    v346 = (*(*v509 + 544))(v495, v535, v536, v537);
                    v533.i64[0] = v260;
                    if (v260)
                    {
                      (*(v496 + 8))(v237, v497);
                      (*(v515 + 8))(v513, v234);
                      (*(v523 + 8))(v517, v522);
                      goto LABEL_13;
                    }

                    *&v508[v267[19]] = v346;
                  }

                  else
                  {
                    v533.i64[0] = v260;
                  }

LABEL_31:
                  v238 = v488;
                  v240 = v496;
                  v239 = v497;
                  (*(v496 + 16))(v488, v237, v497);
                  (*(v240 + 56))(v238, 0, 1, v239);
                  v241 = *(*v233 + 84);
                  swift_beginAccess();
                  (*(v493 + 40))(v233 + v241, v238, v494);
                  swift_endAccess();
                  v242 = *(v233 + *(*v233 + 81));
                  if (v242 == 16)
                  {
                    if ((v233[17] & 2) != 0)
                    {
                      swift_beginAccess();
                      sub_1CEFCCBDC((v233 + 7), &v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v611 = v233[15];
                      sub_1CF9E7FA8();
                      v243 = *(v486 + 72);
                      v244 = *(v486 + 80);
                      swift_allocObject();
                      v538 = sub_1CF9E6D68();
                      v246 = v245;
                      v247 = v450;
                      v248 = v539;
                      v249 = v529;
                      (v529)(v245, v450, v539);
                      swift_storeEnumTagMultiPayload();
                      v250 = v246 + v243;
                      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                      v252 = *(TupleTypeMetadata3 + 48);
                      v253 = *(TupleTypeMetadata3 + 64);
                      v249(v250, v247, v248);
                      v249(v250 + v252, v237, v248);
                      v249(v250 + v253, v237, v248);
                      swift_storeEnumTagMultiPayload();
                      sub_1CF045898(v538);
                      v254 = sub_1CF052C94();

                      sub_1CEFCCC44(&v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      (*(v496 + 8))(v237, v497);
                      (*(v515 + 8))(v513, v514);
                      (*(v523 + 8))(v517, v522);
                      (*(v528 + 8))(v247, v248);
                      (*(v447 + 8))(v451, v524);
                      return v254;
                    }

                    goto LABEL_46;
                  }

                  if ((v242 & 8) != 0 && v237[*(v497 + 40)] == 2)
                  {
                    swift_beginAccess();
                    sub_1CEFCCBDC((v233 + 7), &v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    v256 = v233[15];
                    v257 = v234;
                    v258 = v539;
                    (v529)(v236, v237, v539);
                    swift_storeEnumTagMultiPayload();
                    v259 = sub_1CF052B3C(&v594, v256, v236);
                    (*(v486 + 8))(v236, v235);
                    sub_1CEFCCC44(&v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    (*(v496 + 8))(v237, v497);
                    (*(v515 + 8))(v513, v257);
                    (*(v523 + 8))(v517, v522);
                    (*(v528 + 8))(v450, v258);
                  }

                  else
                  {
                    if ((v242 & 2) == 0)
                    {
LABEL_46:
                      swift_beginAccess();
                      sub_1CEFCCBDC((v233 + 7), &v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v611 = v233[15];
                      v271 = v539;
                      v272 = swift_getTupleTypeMetadata3();
                      v273 = *(v272 + 48);
                      v274 = *(v272 + 64);
                      v275 = v236;
                      v276 = v236;
                      v277 = v523;
                      v278 = v529;
                      (v529)(v276, v450, v271);
                      v278(v275 + v273, v237, v271);
                      v278(v275 + v274, v237, v271);
                      v279 = v492;
                      swift_storeEnumTagMultiPayload();
                      v259 = sub_1CF052B3C(&v594, v611, v275);
                      (*(v486 + 8))(v275, v279);
                      sub_1CEFCCC44(&v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      (*(v496 + 8))(v237, v497);
                      (*(v515 + 8))(v513, v514);
                      (*(v277 + 8))(v517, v522);
                      (*(v528 + 8))(v450, v271);
                      goto LABEL_47;
                    }

                    v292 = v477;
                    v293 = v450;
                    v294 = v533.i64[0];
                    (*(*v509 + 288))(v450, v535, v536, v537);
                    v533.i64[0] = v294;
                    if (v294)
                    {
                      (*(v496 + 8))(v237, v497);
                      (*(v515 + 8))(v513, v234);
                      (*(v523 + 8))(v517, v522);
                      (*(v528 + 8))(v293, v539);
                      return (*(v447 + 8))(v451, v524);
                    }

                    if (v449(v292, 1, v539) != 1)
                    {
                      v371 = v462;
                      v372 = v539;
                      v446(v462, v477, v539);
                      v373 = v611;
                      swift_beginAccess();
                      sub_1CEFCCBDC((v373 + 7), &v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v374 = v373[15];
                      v375 = swift_getTupleTypeMetadata3();
                      v376 = *(v375 + 48);
                      v377 = *(v375 + 64);
                      v378 = v491;
                      v379 = v529;
                      (v529)(v491, v450, v372);
                      v379(v378 + v376, v371, v372);
                      v380 = v495;
                      v379(v378 + v377, v495, v372);
                      v381 = v492;
                      swift_storeEnumTagMultiPayload();
                      v611 = sub_1CF052B3C(&v594, v374, v378);
                      (*(v486 + 8))(v378, v381);
                      sub_1CEFCCC44(&v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v382 = *(v528 + 8);
                      v382(v371, v372);
                      (*(v496 + 8))(v380, v497);
                      (*(v515 + 8))(v513, v514);
                      (*(v523 + 8))(v517, v522);
                      v382(v450, v372);
                      (*(v447 + 8))(v451, v524);
                      return v611;
                    }

                    (*(v526 + 8))(v477, v527);
                    v315 = v611;
                    swift_beginAccess();
                    sub_1CEFCCBDC((v315 + 7), &v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    v611 = v315[15];
                    v316 = v539;
                    v317 = swift_getTupleTypeMetadata3();
                    v318 = *(v317 + 48);
                    v319 = *(v317 + 64);
                    v320 = v491;
                    v321 = v450;
                    v322 = v529;
                    (v529)(v491, v450, v316);
                    v323 = v495;
                    v322(v320 + v318, v495, v316);
                    v322(v320 + v319, v323, v316);
                    v324 = v492;
                    swift_storeEnumTagMultiPayload();
                    v259 = sub_1CF052B3C(&v594, v611, v320);
                    (*(v486 + 8))(v320, v324);
                    sub_1CEFCCC44(&v594, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    (*(v496 + 8))(v323, v497);
                    (*(v515 + 8))(v513, v514);
                    (*(v523 + 8))(v517, v522);
                    (*(v528 + 8))(v321, v316);
                  }

LABEL_47:
                  (*(v447 + 8))(v451, v524);
                  return v259;
                }

                v533.i64[0] = v260;
LABEL_30:
                v237 = v495;
                goto LABEL_31;
              }

              fpfs_supports_pkg_dataless_escape_prevention();
              v334 = v507;
              goto LABEL_96;
          }
        }

        v441 = 1;
        goto LABEL_216;
      }

      v533.i64[0] = v260;
      v230[v267[21]] = 1;
      v335 = (*(*v268 + 600))();
      v266 = v507;
      if ((v507 & 8) == 0)
      {
        v260 = v533.i64[0];
        v269 = v538;
        v230 = v508;
        v235 = v492;
        goto LABEL_67;
      }

      v342 = v335;
      v260 = v533.i64[0];
      (*(*v509 + 240))(v450, 1, v535, v536, v537);
      if (!v260)
      {
        if ((*(v472 + 48))(v476, 1, v473) == 1)
        {
          (*(v463 + 8))(v476, v464);
        }

        else
        {
          (*(v472 + 32))(v461, v476, v473);
          (*(*v520 + 264))(&v594, v513, v535, v536, v537);
          v574 = v606;
          v575 = v607;
          v576 = v608;
          v570 = v602;
          v571 = v603;
          v572 = v604;
          v573 = v605;
          v566 = v598;
          v567 = v599;
          v568 = v600;
          v569 = v601;
          v562 = v594;
          v563 = v595;
          v564 = v596;
          v565 = v597;
          v590 = v606;
          v591 = v607;
          v592 = v608;
          v586 = v602;
          v587 = v603;
          v588 = v604;
          v589 = v605;
          v582 = v598;
          v583 = v599;
          v584 = v600;
          v585 = v601;
          v578 = v594;
          v579 = v595;
          v577 = v609;
          v593 = v609;
          v580 = v596;
          v581 = v597;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v578) != 1)
          {
            v428 = sub_1CEFF8538(v591, *(&v591 + 1), 0, v342, 0, 1u);
            sub_1CEFCCC44(&v562, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            if (v428 == 3)
            {
              (*(v472 + 8))(v461, v473);
              v429 = 3;
            }

            else
            {
              v437 = v473;
              v438 = v461;
              v439 = v452;
              sub_1CEFF4408(&v461[*(v473 + 48)], v452);
              (*(v472 + 8))(v438, v437);
              LODWORD(v437) = *(v439 + v498[11]);
              sub_1CF06DA00(v439);
              if (v437)
              {
                v429 = 5;
              }

              else
              {
                v429 = 1;
              }
            }

            v267 = v498;
            v230 = v508;
            v508[v498[23]] = v429;
            goto LABEL_191;
          }

          (*(v472 + 8))(v461, v473);
        }

        goto LABEL_142;
      }

LABEL_131:
      (*(v496 + 8))(v495, v497);
      (*(v515 + 8))(v513, v514);
      (*(v523 + 8))(v517, v522);
      (*(v528 + 8))(v450, v539);
      return (*(v447 + 8))(v451, v524);
    }

    v270 = *(v611 + 136);
    if ((v270 & 1) == 0)
    {
      if ((v270 & 2) == 0)
      {
        v233 = v611;
        goto LABEL_41;
      }

      v506 = v265;
      v230[v265] = 1;
      v295 = *(v534.i64[0] + 24);
      v504 = vextq_s8(v530, v530, 8uLL);
      v505 = vextq_s8(v531, v531, 8uLL);
      v595 = v504;
      v594 = v505;
      type metadata accessor for ItemJob();
      v296 = swift_getMetatypeMetadata();
      v297 = sub_1CF656CD8(v296, v296);
      v298 = *(v297 + 52);
      v299 = (*(v297 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v300 = sub_1CF9E6D68();
      v503 = v301;
      v595 = v504;
      v594 = v505;
      *v301 = type metadata accessor for Materialization.EvictItem();
      sub_1CF045898(v300);
      v302 = v533.i64[0];
      v303 = (*(*v295 + 312))(v450);
      v533.i64[0] = v302;
      if (v302)
      {

        (*(v218 + 8))(v495, v217);
        (*(v515 + 8))(v513, v514);
        (*(v231 + 8))(v517, v522);
        goto LABEL_13;
      }

      v351 = v303;

      v594.i64[0] = v351;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v352 = sub_1CF9E7128();

      if ((v352 & 1) == 0)
      {
        v516[v611] = 1;
      }

      if ((*(v611 + 141) & 0x10) != 0)
      {
        v260 = v533.i64[0];
        (*(*v509 + 240))(v450, 1, v535, v536, v537);
        if (v260)
        {
          goto LABEL_131;
        }

        if ((*(v472 + 48))(v465, 1, v473) != 1)
        {
          v426 = v472;
          v425 = v473;
          v427 = v453;
          (*(v472 + 32))(v453, v465, v473);
          v594.i64[0] = 8;
          v230 = v508;
          sub_1CF677700(&v594, &v427[*(v425 + 48)]);
          (*(v426 + 8))(v427, v425);
          v233 = v611;
          v234 = v514;
          v236 = v491;
          v267 = v498;
          v268 = v534.i64[0];
          v269 = v538;
          goto LABEL_171;
        }

        (*(v463 + 8))(v465, v464);
        v407 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v408 = sub_1CF9E6108();
        v409 = sub_1CF9E72A8();
        if (os_log_type_enabled(v408, v409))
        {
          v410 = swift_slowAlloc();
          *v410 = 0;
          _os_log_impl(&dword_1CEFC7000, v408, v409, "couldn't force the size on a DLV2 evicted item, missing item in snapshot", v410, 2u);
          MEMORY[0x1D386CDC0](v410, -1, -1);
        }

        (*(v454 + 8))(v457, v455);
        v233 = v611;
LABEL_170:
        v234 = v514;
        v236 = v491;
        v267 = v498;
        v268 = v534.i64[0];
        v269 = v538;
        v230 = v508;
LABEL_171:
        v266 = v507;
        v265 = v506;
        goto LABEL_65;
      }

      v353 = v489;
      v354 = *(v489 + 16);
      v355 = v470;
      v356 = v480;
      v354(v470, &v513[v521], v480);
      v357 = *(v353 + 56);
      v358 = 1;
      v357(v355, 0, 1, v356);
      v359 = type metadata accessor for ItemReconciliationHalf();
      v360 = v467;
      (*(v511 + 16))(v467, &v451[*(v359 + 48)], v512);
      if ((*(v208 + 48))(v360, 1, v510) != 1)
      {
        v354(v466, v467, v480);
        v358 = 0;
        v511 = v208;
        v512 = v510;
      }

      (*(v511 + 8))(v467, v512);
      v361 = v466;
      v362 = v480;
      v357(v466, v358, 1, v480);
      v363 = *(TupleTypeMetadata2 + 48);
      v364 = v484[2];
      v365 = v471;
      v366 = v479;
      v364(v471, v470, v479);
      v364(&v365[v363], v361, v366);
      v367 = *(v489 + 48);
      if (v367(v365, 1, v362) == 1)
      {
        v368 = v484[1];
        v369 = v479;
        v368(v466, v479);
        v368(v470, v369);
        if (v367(&v471[v363], 1, v480) == 1)
        {
          v368(v471, v479);
          v370 = 0;
LABEL_169:
          v233 = v611;
          v518[v611] = v370 & 1;
          v260 = v533.i64[0];
          goto LABEL_170;
        }
      }

      else
      {
        v400 = v471;
        v364(v460, v471, v479);
        if (v367(&v400[v363], 1, v480) != 1)
        {
          v416 = v489;
          v417 = v469;
          v418 = v480;
          (*(v489 + 32))(v469, &v471[v363], v480);
          v419 = *(v468 + 32);
          v420 = v460;
          v421 = sub_1CF9E6868();
          v422 = *(v416 + 8);
          v422(v417, v418);
          v423 = v484[1];
          v424 = v479;
          v423(v466, v479);
          v423(v470, v424);
          v422(v420, v418);
          v423(v471, v424);
          v370 = v421 ^ 1;
          goto LABEL_169;
        }

        v401 = v484[1];
        v402 = v479;
        v401(v466, v479);
        v401(v470, v402);
        (*(v489 + 8))(v460, v480);
      }

      (*(v475 + 8))(v471, TupleTypeMetadata2);
      v370 = 1;
      goto LABEL_169;
    }

    v506 = v265;
    v230[v265] = 0;
    v230[v498[23]] = 6;
    v280 = *(v262 + 16);
    v281 = v261;
    v282 = v480;
    v280(v261, &v513[v264], v480);
    v283 = *(v262 + 56);
    v283(v281, 0, 1, v282);
    v284 = type metadata accessor for ItemReconciliationHalf();
    v285 = v483;
    (*(v511 + 16))(v483, &v451[*(v284 + 48)], v512);
    v286 = v510;
    if ((*(v263 + 48))(v285, 1, v510) == 1)
    {
      v287 = v479;
      v288 = TupleTypeMetadata2;
      v289 = v482;
      v290 = v512;
      v263 = v511;
      v291 = 1;
    }

    else
    {
      v280(v485, v285, v282);
      v291 = 0;
      v290 = v286;
      v287 = v479;
      v288 = TupleTypeMetadata2;
      v289 = v482;
    }

    (*(v263 + 8))(v483, v290);
    v304 = v485;
    v283(v485, v291, 1, v282);
    v305 = *(v288 + 48);
    v306 = v484[2];
    v306(v289, v490, v287);
    v306(&v289[v305], v304, v287);
    v307 = *(v489 + 48);
    if (v307(v289, 1, v282) == 1)
    {
      v308 = v289;
      v309 = v484[1];
      v309(v485, v287);
      v309(v490, v287);
      v310 = v307(&v289[v305], 1, v282);
      v233 = v611;
      v311 = v514;
      v236 = v491;
      v312 = v287;
      v268 = v534.i64[0];
      if (v310 == 1)
      {
        v309(v289, v312);
        v313 = 0;
LABEL_64:
        v518[v233] = v313 & 1;
        v260 = v533.i64[0];
        v269 = v538;
        v230 = v508;
        v266 = v507;
        v265 = v506;
        v234 = v311;
        v267 = v498;
        goto LABEL_65;
      }
    }

    else
    {
      v306(v478, v289, v287);
      if (v307(&v289[v305], 1, v282) != 1)
      {
        v325 = v489;
        v326 = v469;
        (*(v489 + 32))(v469, &v482[v305], v282);
        v327 = *(v468 + 32);
        v328 = v478;
        v329 = sub_1CF9E6868();
        v330 = *(v325 + 8);
        v330(v326, v282);
        v331 = v484[1];
        v331(v485, v287);
        v331(v490, v287);
        v330(v328, v282);
        v331(v482, v287);
        v313 = v329 ^ 1;
        v233 = v611;
        v311 = v514;
        v236 = v491;
        v268 = v534.i64[0];
        goto LABEL_64;
      }

      v314 = v484[1];
      v314(v485, v287);
      v314(v490, v287);
      (*(v489 + 8))(v478, v282);
      v233 = v611;
      v311 = v514;
      v236 = v491;
      v268 = v534.i64[0];
      v308 = v482;
    }

    (*(v475 + 8))(v308, TupleTypeMetadata2);
    v313 = 1;
    goto LABEL_64;
  }

  return result;
}

void sub_1CF5FA3EC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v109 = a7;
  v110 = a1;
  v103 = a6;
  v111 = a3;
  v112 = a5;
  v91 = a4;
  v85 = a2;
  v93 = a10;
  v88 = a9;
  v92 = a11;
  v101 = a12;
  v15 = *v13;
  v16 = *(*v13 + 632);
  v17 = *(*v13 + 616);
  v108 = a13;
  v100 = v16;
  *&v123 = swift_getAssociatedTypeWitness();
  *(&v123 + 1) = swift_getAssociatedTypeWitness();
  *&v124 = swift_getAssociatedConformanceWitness();
  *(&v124 + 1) = swift_getAssociatedConformanceWitness();
  v89 = type metadata accessor for FileItemVersion();
  v104 = *(v89 - 8);
  v90 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v107 = &v79 - v18;
  v81 = v15;
  v19 = *(v15 + 608);
  v20 = *(v15 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v96 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v123 = AssociatedTypeWitness;
  *(&v123 + 1) = v22;
  *&v124 = AssociatedConformanceWitness;
  *(&v124 + 1) = v24;
  v106 = type metadata accessor for FileItemVersion();
  v97 = *(v106 - 8);
  v86 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v79 - v25;
  v87 = v17;
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v102 = type metadata accessor for ItemState();
  v95 = *(v102 - 8);
  v83 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v79 - v28;
  v94 = *(v26 - 8);
  v82 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v98 = &v79 - v30;
  v84 = v19;
  v31 = swift_getAssociatedTypeWitness();
  v32 = swift_getAssociatedConformanceWitness();
  *&v123 = v26;
  v80 = v26;
  *(&v123 + 1) = v31;
  *&v124 = v27;
  *(&v124 + 1) = v32;
  v33 = type metadata accessor for ReconciliationID();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v79 - v36;
  v38 = v85[1];
  v119 = *v85;
  v120 = v38;
  v39 = v85[3];
  v121 = v85[2];
  v122 = v39;
  v40 = a8[13];
  v135 = a8[12];
  v136 = v40;
  v137 = a8[14];
  v138 = *(a8 + 30);
  v41 = a8[9];
  v131 = a8[8];
  v132 = v41;
  v42 = a8[11];
  v133 = a8[10];
  v134 = v42;
  v43 = a8[5];
  v127 = a8[4];
  v128 = v43;
  v44 = a8[7];
  v129 = a8[6];
  v130 = v44;
  v45 = a8[1];
  v123 = *a8;
  v124 = v45;
  v46 = a8[3];
  v125 = a8[2];
  v126 = v46;
  v47 = v113;
  (*(*(v31 - 8) + 16))(&v79 - v36, v113 + *(v81 + 576), v31);
  swift_storeEnumTagMultiPayload();
  v48 = v103;
  v88 = (*(*v103 + 512))(v37, v88, v101, v108);
  (*(v34 + 8))(v37, v33);
  v85 = (v47[17] >> 33);
  v81 = *(*(v48 + 32) + 16);
  v118[0] = v119;
  v118[1] = v120;
  v118[2] = v121;
  v118[3] = v122;
  v117 = *(v47 + *(*v47 + 648));
  v115[12] = v135;
  v115[13] = v136;
  v115[14] = v137;
  v116 = v138;
  v115[8] = v131;
  v115[9] = v132;
  v115[10] = v133;
  v115[11] = v134;
  v115[4] = v127;
  v115[5] = v128;
  v115[6] = v129;
  v115[7] = v130;
  v115[0] = v123;
  v115[1] = v124;
  v115[2] = v125;
  v115[3] = v126;
  v49 = v94;
  (*(v94 + 16))(v98, v110, v26);
  v50 = v95;
  (*(v95 + 16))(v99, v111, v102);
  v51 = v97;
  (*(v97 + 16))(v105, v91, v106);
  v52 = v104;
  v53 = v89;
  (*(v104 + 16))(v107, v112, v89);
  v54 = (*(v49 + 80) + 168) & ~*(v49 + 80);
  v55 = (v82 + *(v50 + 80) + v54) & ~*(v50 + 80);
  v56 = (v83 + *(v51 + 80) + v55) & ~*(v51 + 80);
  v57 = (v86 + *(v52 + 80) + v56) & ~*(v52 + 80);
  v58 = (v90 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v120;
  *(v59 + 104) = v119;
  *(v59 + 120) = v60;
  v61 = v122;
  *(v59 + 136) = v121;
  v62 = v87;
  *(v59 + 16) = v84;
  *(v59 + 24) = v62;
  v63 = v96;
  *(v59 + 32) = v101;
  *(v59 + 40) = v63;
  v64 = v108;
  *(v59 + 48) = v100;
  *(v59 + 56) = v64;
  v65 = v93;
  v66 = v94;
  *(v59 + 64) = v48;
  *(v59 + 72) = v65;
  v67 = v113;
  *(v59 + 80) = v92;
  *(v59 + 88) = v67;
  *(v59 + 96) = v109;
  *(v59 + 152) = v61;
  (*(v66 + 32))(v59 + v54, v98, v80);
  (*(v95 + 32))(v59 + v55, v99, v102);
  (*(v97 + 32))(v59 + v56, v105, v106);
  (*(v104 + 32))(v59 + v57, v107, v53);
  v68 = v81;
  v69 = v59 + v58;
  *(v69 + 240) = v138;
  v70 = v136;
  *(v69 + 192) = v135;
  *(v69 + 208) = v70;
  *(v69 + 224) = v137;
  v71 = v132;
  *(v69 + 128) = v131;
  *(v69 + 144) = v71;
  v72 = v134;
  *(v69 + 160) = v133;
  *(v69 + 176) = v72;
  v73 = v128;
  *(v69 + 64) = v127;
  *(v69 + 80) = v73;
  v74 = v130;
  *(v69 + 96) = v129;
  *(v69 + 112) = v74;
  v75 = v124;
  *v69 = v123;
  *(v69 + 16) = v75;
  v76 = v126;
  *(v69 + 32) = v125;
  *(v69 + 48) = v76;
  v77 = *(*v68 + 632);

  sub_1CEFCCBDC(&v119, v114, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v123, v114, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v78 = v88;
  v77(v110, v118, v111, &v117, v112, v88, v115, v85 & 0x40, sub_1CF60F074, v59);
}

uint64_t sub_1CF5FADE8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = a7;
  v19 = a3;
  v20 = a1;
  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v22 = swift_allocObject();
    v22[2] = a14;
    v22[3] = a15;
    v22[4] = a6;
    v22[5] = v20;
    v22[6] = a4;
    v22[7] = a5;
    v22[8] = v19;
    v22[9] = v15;
    swift_retain_n();

    sub_1CF2B1868(v20, 1);
    v23 = type metadata accessor for Continuation();

    sub_1CF92E6B4("stageUpdate(itemID:capturedContent:requestedState:otherVersion:baseVersion:on:result:nonSyncableAttributes:with:completion:)", 124, 2u, sub_1CF045408, 0, sub_1CF559418, v21, sub_1CF60F3E4, v22, v23, MEMORY[0x1E69E6158]);
  }

  else
  {
    v26 = a10;
    v27 = a11;
    v28 = a9;
    if (*(a8 + 24) >> 60 == 11)
    {
      goto LABEL_9;
    }

    v29 = *(a3 + 32);
    v32 = sub_1CF056558();
    v28 = a9;
    v26 = a10;
    v27 = a11;
    v19 = a3;
    v15 = a7;
    v20 = a1;
    if (!v32)
    {
LABEL_9:
      v36 = *(a8 + 16);
      v48[0] = *a8;
      v48[1] = v36;
      v37 = *(a8 + 48);
      v48[2] = *(a8 + 32);
      v48[3] = v37;
      v38 = *(a13 + 208);
      v46[12] = *(a13 + 192);
      v46[13] = v38;
      v46[14] = *(a13 + 224);
      v47 = *(a13 + 240);
      v39 = *(a13 + 144);
      v46[8] = *(a13 + 128);
      v46[9] = v39;
      v40 = *(a13 + 176);
      v46[10] = *(a13 + 160);
      v46[11] = v40;
      v41 = *(a13 + 80);
      v46[4] = *(a13 + 64);
      v46[5] = v41;
      v42 = *(a13 + 112);
      v46[6] = *(a13 + 96);
      v46[7] = v42;
      v43 = *(a13 + 16);
      v46[0] = *a13;
      v46[1] = v43;
      v44 = *(a13 + 48);
      v46[2] = *(a13 + 32);
      v46[3] = v44;
      return sub_1CF5FB618(v28, v48, v20, v26, v27, a12, v19, v15, v46, a4, a5);
    }

    v33 = swift_allocObject();
    *(v33 + 16) = a4;
    *(v33 + 24) = a5;
    v34 = swift_allocObject();
    v34[2] = a4;
    v34[3] = a5;
    v34[4] = a1;
    swift_retain_n();
    sub_1CF2B1868(a1, 0);
    v35 = type metadata accessor for Continuation();
    sub_1CF92E6B4("stageUpdate(itemID:capturedContent:requestedState:otherVersion:baseVersion:on:result:nonSyncableAttributes:with:completion:)", 124, 2u, sub_1CF045408, 0, sub_1CF559418, v33, sub_1CF611800, v34, v35, MEMORY[0x1E69E6158]);
  }
}

uint64_t sub_1CF5FB134(uint64_t a1, uint64_t *a2, void *a3, void (*a4)(__int128 *, void, void, void, void *), uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v51 = a5;
  v52 = a4;
  v58 = a3;
  v59 = a1;
  v8 = *a2;
  v9 = *(*a2 + 616);
  v10 = *(*a2 + 632);
  v57 = type metadata accessor for SnapshotItem();
  v11 = sub_1CF9E75D8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v51 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v54 = type metadata accessor for ItemState();
  v14 = sub_1CF9E75D8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v51 - v16;
  v17 = *(v8 + 624);
  v18 = *(v8 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v62 = AssociatedTypeWitness;
  *(&v62 + 1) = v20;
  *&v63 = AssociatedConformanceWitness;
  *(&v63 + 1) = v22;
  v23 = type metadata accessor for FileItemVersion();
  v24 = sub_1CF9E75D8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v51 - v26;
  *&v28 = v9;
  *(&v28 + 1) = v18;
  *&v29 = v10;
  *(&v29 + 1) = v17;
  v63 = v29;
  v62 = v28;
  v30 = type metadata accessor for Reconciliation.ReconcileAfterPropagation();
  v55 = *(v30 - 8);
  v31 = *(v55 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v51 - v33);
  (*(*(v23 - 8) + 56))(v27, 1, 1, v23, v32);
  v35 = *(a2 + *(*a2 + 640));
  v36 = v53;
  (*(*(v54 - 8) + 56))(v53, 1, 1);
  v37 = v56;
  (*(*(v57 - 8) + 56))(v56, 1, 1);
  *&v62 = 0;
  v38 = *(a2 + *(*a2 + 584));
  v39 = v58;
  v40 = v58;
  v41 = v38;

  sub_1CF98C50C(v42, v27, v35, 0, v36, v37, &v62, 0, v34, 0, v39, v38);
  v43 = v59;
  sub_1CF1A91AC(v59, &v62);
  v44 = v43[3];
  v45 = v43[4];
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  v47 = v64;
  v48 = sub_1CF98CA58(v60, v61, v46, v30, v44, v45);
  if (!v47)
  {
    v49 = v48;
    v52(&v62, 0, 0, 0, v48);
  }

  sub_1CEFCCC44(&v62, &unk_1EC4C1B30, &qword_1CFA05300);
  return (*(v55 + 8))(v34, v30);
}

uint64_t sub_1CF5FB618(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11)
{
  v91 = a8;
  v97 = a7;
  v98 = a1;
  v86 = a6;
  v87 = a5;
  v83 = a4;
  v88 = a3;
  v81 = a2;
  v90 = a11;
  v12 = *v11;
  v13 = v12[78];
  v14 = v12[76];
  v89 = a10;
  v84 = v14;
  v85 = v13;
  *&v105 = swift_getAssociatedTypeWitness();
  *(&v105 + 1) = swift_getAssociatedTypeWitness();
  *&v106 = swift_getAssociatedConformanceWitness();
  *(&v106 + 1) = swift_getAssociatedConformanceWitness();
  v96 = type metadata accessor for FileItemVersion();
  v94 = *(v96 - 8);
  v82 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v71 - v15;
  v16 = v12[79];
  v17 = v12[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v105 = AssociatedTypeWitness;
  *(&v105 + 1) = v19;
  *&v106 = AssociatedConformanceWitness;
  *(&v106 + 1) = v21;
  v22 = type metadata accessor for FileItemVersion();
  v92 = *(v22 - 8);
  v93 = v22;
  v78 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - v23;
  v77 = &v71 - v23;
  v79 = v17;
  v80 = v16;
  v25 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = type metadata accessor for ItemState();
  v74 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v71 - v29;
  v76 = &v71 - v29;
  v73 = v25;
  v31 = *(v25 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v75 = &v71 - v34;
  v35 = v81[1];
  v101 = *v81;
  v102 = v35;
  v36 = v81[3];
  v103 = v81[2];
  v104 = v36;
  v37 = a9[13];
  v117 = a9[12];
  v118 = v37;
  v119 = a9[14];
  v120 = *(a9 + 30);
  v38 = a9[9];
  v113 = a9[8];
  v114 = v38;
  v39 = a9[11];
  v115 = a9[10];
  v116 = v39;
  v40 = a9[5];
  v109 = a9[4];
  v110 = v40;
  v41 = a9[7];
  v111 = a9[6];
  v112 = v41;
  v42 = a9[1];
  v105 = *a9;
  v106 = v42;
  v43 = a9[3];
  v107 = a9[2];
  v108 = v43;
  (*(v31 + 16))(&v71 - v34, v98);
  v72 = v27;
  (*(v27 + 16))(v30, v83, v26);
  v44 = v92;
  (*(v92 + 16))(v24, v86, v93);
  v45 = v94;
  (*(v94 + 16))(v95, v87, v96);
  v46 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v47 = (v32 + *(v27 + 80) + v46) & ~*(v27 + 80);
  v48 = (v28 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v44 + 80) + v49 + 64) & ~*(v44 + 80);
  v51 = (v78 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v51 + 255) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v83 = (*(v45 + 80) + v86 + 8) & ~*(v45 + 80);
  v52 = swift_allocObject();
  *&v53 = v84;
  *&v54 = v85;
  *(&v53 + 1) = v79;
  *(&v54 + 1) = v80;
  *(v52 + 16) = v53;
  *(v52 + 32) = v54;
  v55 = v97;
  *(v52 + 48) = v99;
  *(v52 + 56) = v55;
  (*(v31 + 32))(v52 + v46, v75, v73);
  (*(v72 + 32))(v52 + v47, v76, v74);
  *(v52 + v48) = v88;
  v56 = (v52 + v49);
  v57 = v104;
  v56[2] = v103;
  v56[3] = v57;
  v58 = v102;
  *v56 = v101;
  v56[1] = v58;
  (*(v92 + 32))(v52 + v50, v77, v93);
  v59 = v52 + v51;
  v60 = v118;
  *(v59 + 192) = v117;
  *(v59 + 208) = v60;
  *(v59 + 224) = v119;
  *(v59 + 240) = v120;
  v61 = v114;
  *(v59 + 128) = v113;
  *(v59 + 144) = v61;
  v62 = v116;
  *(v59 + 160) = v115;
  *(v59 + 176) = v62;
  v63 = v110;
  *(v59 + 64) = v109;
  *(v59 + 80) = v63;
  v64 = v112;
  *(v59 + 96) = v111;
  *(v59 + 112) = v64;
  v65 = v106;
  *v59 = v105;
  *(v59 + 16) = v65;
  v66 = v108;
  *(v59 + 32) = v107;
  *(v59 + 48) = v66;
  v67 = (v52 + v87);
  v68 = v90;
  *v67 = v89;
  v67[1] = v68;
  *(v52 + v86) = v91;
  (*(v94 + 32))(v52 + v83, v95, v96);

  v69 = v97;

  sub_1CEFCCBDC(&v101, v100, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v105, v100, &qword_1EC4BECF0, &unk_1CF9FEEB0);

  sub_1CF5FBEE4(v98, v69, sub_1CF60E63C, v52);
}

uint64_t sub_1CF5FBD84(char a1)
{
  v3 = *v1;
  v4 = v1[2];
  v1[2] = 0;

  if ((v1[17] & 2) == 0 || (v5 = v1 + *(*v1 + 672), swift_beginAccess(), v6 = *(v3 + 632), v7 = *(v3 + 616), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v8 = type metadata accessor for ItemState(), (*(*(v8 - 8) + 48))(v5, 1, v8)) || *(v5 + *(v8 + 40)) != 1)
  {
    a1 = sub_1CF04AF48(a1 & 1);
  }

  return a1 & 1;
}

uint64_t sub_1CF5FBEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, __n128), uint64_t a4)
{
  v25 = a1;
  v26 = *v4;
  v27 = a2;
  v7 = v26[79];
  v8 = v26[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24 - v13;
  if ((*(v4 + v26[81] + 6) & 4) == 0)
  {
    return a3(MEMORY[0x1E69E7CC0], 0, v12);
  }

  v15 = *(v27 + 32);
  if (sub_1CF056558())
  {
    return a3(MEMORY[0x1E69E7CC0], 0, v12);
  }

  v17 = swift_allocObject();
  v24 = v17;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v10 + 16))(v14, v25, AssociatedTypeWitness);
  v18 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 2) = v26[76];
  *(v20 + 3) = v8;
  *(v20 + 4) = v21[78];
  *(v20 + 5) = v7;
  *(v20 + 6) = v27;
  (*(v10 + 32))(&v20[v18], v14, AssociatedTypeWitness);
  v22 = &v20[v19];
  *v22 = a3;
  *(v22 + 1) = a4;
  swift_retain_n();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
  sub_1CF92DB1C("getListOfUpdatedConflicts(itemID:on:completion:)", 48, 2, 2, sub_1CF2B1400, v24, sub_1CF60E9D0, v20, v23);
}

void *sub_1CF5FC1A0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v105 = a4;
  v106 = a5;
  v132 = a3;
  v7 = *a2;
  v8 = *(*a2 + 96);
  v95 = v7[10];
  v96 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v99 = AssociatedTypeWitness;
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v94 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v89 - v13;
  v14 = sub_1CF9E6118();
  v100 = *(v14 - 8);
  v101 = v14;
  v15 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v7[13];
  v18 = v7[11];
  v19 = swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v102 = *(v20 - 8);
  isa = v102[8].isa;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v89 - v22;
  v104 = *(v19 - 8);
  v24 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v107 = a1;
  v30 = __swift_project_boxed_opaque_existential_1(a1, v28);
  v31 = v108;
  result = (*(**(a2 + 32) + 264))(&v116, v132, v30, v28, v29);
  if (v31)
  {
    return result;
  }

  v92 = v19;
  v93 = v23;
  v90 = v20;
  v91 = v27;
  v33 = v107;
  v108 = 0;
  v111[12] = v128;
  v111[13] = v129;
  v111[14] = v130;
  v111[8] = v124;
  v111[9] = v125;
  v111[10] = v126;
  v111[11] = v127;
  v111[4] = v120;
  v111[5] = v121;
  v111[6] = v122;
  v111[7] = v123;
  v111[0] = v116;
  v111[1] = v117;
  v111[2] = v118;
  v111[3] = v119;
  v113[12] = v128;
  v113[13] = v129;
  v114 = v130;
  v113[8] = v124;
  v113[9] = v125;
  v113[10] = v126;
  v113[11] = v127;
  v113[4] = v120;
  v113[5] = v121;
  v113[6] = v122;
  v113[7] = v123;
  v113[0] = v116;
  v113[1] = v117;
  v112 = v131;
  v115 = v131;
  v113[2] = v118;
  v113[3] = v119;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v113) == 1)
  {
    return (v105)(MEMORY[0x1E69E7CC0], 0);
  }

  v34 = v114;
  if (!v114)
  {
    sub_1CEFCCC44(v111, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    return (v105)(MEMORY[0x1E69E7CC0], 0);
  }

  v35 = v33;
  v36 = v33[3];
  v89 = v35[4];
  v37 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v38 = *(**(a2 + 16) + 160);

  v39 = v93;
  v40 = v132;
  v41 = v37;
  v42 = v108;
  v38(v132, v41, v36, v89);
  v108 = v42;
  if (v42)
  {

    return sub_1CEFCCC44(v111, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  }

  v43 = v104;
  v44 = v92;
  if ((*(v104 + 48))(v39, 1, v92) == 1)
  {

    sub_1CEFCCC44(v111, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (v102[1].isa)(v39, v90);
    return (v105)(MEMORY[0x1E69E7CC0], 0);
  }

  v90 = v34;
  v45 = v91;
  (*(v43 + 32))(v91, v39, v44);
  if (fpfs_supports_partial_conflicts_resolution())
  {
    v46 = v44;
    v47 = *(*(a2 + 40) + 16);
    v48 = v47[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
    swift_beginAccess();
    LODWORD(v132) = *(v48 + 8);
    v49 = swift_allocObject();
    v50 = v105;
    v49[2] = a2;
    v49[3] = v50;
    v49[4] = v106;
    v51 = *(*v47 + 592);

    v51(v45, v132, v90, sub_1CF60EA88, v49);

    sub_1CEFCCC44(v111, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    return (*(v43 + 8))(v45, v46);
  }

  else
  {
    v109 = MEMORY[0x1E69E7CC0];
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v54 = v97;
    v53 = v98;
    v55 = v40;
    v56 = v99;
    v57 = *(v98 + 16);
    v57(v97, v55, v99);
    v58 = sub_1CF9E6108();
    LODWORD(v132) = sub_1CF9E7298();
    if (os_log_type_enabled(v58, v132))
    {
      v59 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v110 = v107;
      *v59 = 136315138;
      v102 = v58;
      v60 = v94;
      v57(v94, v54, v56);
      v61 = *(v53 + 8);
      v61(v54, v56);
      v62 = *(swift_getAssociatedConformanceWitness() + 16);
      v63 = sub_1CF9E7F98();
      v65 = v64;
      v61(v60, v56);
      v43 = v104;
      v66 = sub_1CEFD0DF0(v63, v65, &v110);

      *(v59 + 4) = v66;
      v67 = v102;
      _os_log_impl(&dword_1CEFC7000, v102, v132, "⚔️  marking all loseres as resolved for %s", v59, 0xCu);
      v68 = v107;
      __swift_destroy_boxed_opaque_existential_1(v107);
      v69 = v92;
      MEMORY[0x1D386CDC0](v68, -1, -1);
      v70 = v59;
      v45 = v91;
      MEMORY[0x1D386CDC0](v70, -1, -1);

      (*(v100 + 8))(v103, v101);
      v71 = v105;
    }

    else
    {
      (*(v53 + 8))(v54, v56);

      (*(v100 + 8))(v103, v101);
      v71 = v105;
      v69 = v92;
    }

    v72 = *(v90 + 16);
    if (v72)
    {
      v73 = (v90 + 48);
      do
      {
        v132 = v72;
        v74 = *(v73 - 2);
        v75 = *(v73 - 1);
        v76 = *v73;
        v77 = v73[1];
        v79 = v73[2];
        v78 = v73[3];
        v80 = v73[5];
        v100 = v73[4];
        sub_1CEFE42D4(v74, v75);
        v101 = v76;

        sub_1CEFE42D4(v77, v79);

        v107 = v78;

        sub_1CEFE42D4(v74, v75);
        sub_1CEFE42D4(v77, v79);
        v81 = sub_1CF9E5B48();
        v102 = v77;
        v82 = sub_1CF9E5B48();
        v103 = v80;
        if (v80)
        {
          v83 = sub_1CF9E6888();
        }

        else
        {
          v83 = 0;
        }

        v84 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v81 metadataVersion:v82 lastEditorDeviceName:v83];

        v85 = v102;
        sub_1CEFE4714(v102, v79);

        sub_1CEFE4714(v74, v75);
        [v84 setConflictResolved_];
        v86 = v84;
        MEMORY[0x1D3868FA0]();
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v87 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        v73 += 8;
        sub_1CF9E6DE8();
        sub_1CEFE4714(v74, v75);

        sub_1CEFE4714(v85, v79);

        v72 = v132 - 1;
      }

      while (v132 != 1);
      v88 = v109;
      v71 = v105;
      v45 = v91;
      v69 = v92;
      v43 = v104;
    }

    else
    {
      v88 = MEMORY[0x1E69E7CC0];
    }

    v71(v88, 0);

    sub_1CEFCCC44(v111, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    return (*(v43 + 8))(v45, v69);
  }
}

uint64_t sub_1CF5FCC68(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  a2 &= 1u;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  swift_retain_n();
  sub_1CEFCF530(a1, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
  sub_1CF92E4B0("getListOfUpdatedConflicts(itemID:on:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CEFF9D98, v9, sub_1CF60EA98, v10, v11);
}

uint64_t sub_1CF5FCDA0(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v26[1] = a5;
    v27 = a4;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = a2;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();
    sub_1CF481340(a2, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v5;
      v22 = v21;
      *v20 = 138412290;
      swift_getErrorValue();
      v23 = Error.prettyDescription.getter(v28);
      *(v20 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "⚔️  Failed updateConflictList: %@", v20, 0xCu);
      sub_1CEFCCC44(v22, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v22, -1, -1);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    return v27(a2, 1);
  }

  else
  {
    if (a2)
    {
      v25 = a2;
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    return (a4)(v25, 0, v13);
  }
}

uint64_t sub_1CF5FCFD0(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v82 = a8;
  v87 = a7;
  v90 = a5;
  v91 = a6;
  v92 = a4;
  LODWORD(v72) = a2;
  v73 = a1;
  v79 = a14;
  v85 = a13;
  v84 = a12;
  v83 = a11;
  v70 = *a3;
  v15 = v70[78];
  v16 = v70[76];
  v86 = a9;
  v80 = v16;
  v81 = v15;
  *&v94 = swift_getAssociatedTypeWitness();
  *(&v94 + 1) = swift_getAssociatedTypeWitness();
  *&v95 = swift_getAssociatedConformanceWitness();
  *(&v95 + 1) = swift_getAssociatedConformanceWitness();
  v88 = type metadata accessor for FileItemVersion();
  v17 = *(v88 - 8);
  v78 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v19 = v64 - v18;
  v20 = v70[79];
  v21 = v70[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = v21;
  v77 = v20;
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for ItemState();
  v24 = *(v23 - 8);
  v74 = v23;
  v75 = v24;
  v71 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v89 = v64 - v25;
  v26 = *(AssociatedTypeWitness - 8);
  v69 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v64 - v28;
  v30 = a3;
  v31 = a3[17];
  if ((v31 & 0x200000) != 0 || (*(a3 + v70[81] + 5) & 8) != 0)
  {
    if ((v31 & 0x8000000000) == 0)
    {
      if ((v31 & 0x1000000000000) != 0)
      {
        v32 = 3074;
        goto LABEL_18;
      }

      v32 = 2;
      if ((v31 & 0x800000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      v32 |= 0x800uLL;
      goto LABEL_18;
    }

    v32 = 66;
LABEL_14:
    if ((v31 & 0x1000000000000) != 0)
    {
      v32 |= 0xC00uLL;
    }

    if ((v31 & 0x1800000000000) != 0x800000000000)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v31 & 0x8000000000) != 0)
  {
    v32 = 64;
    goto LABEL_14;
  }

  if ((v31 & 0x1000000000000) != 0)
  {
    v32 = 3072;
    goto LABEL_18;
  }

  v32 = 0;
  if ((v31 & 0x800000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v33 = v70[87];
  v34 = v73;
  if (v72)
  {
    v34 = 0;
  }

  v73 = v34;
  if (*(a3 + v33))
  {
    v32 |= 0x80uLL;
  }

  v35 = *(a3 + v70[88]);
  v36 = v32 | (v31 >> 36) & 0x100;
  v68 = *(*(v92 + 32) + 16);
  v37 = (v35 & ((v32 & 0x200) == 0)) == 0;
  v38 = *(a3 + v70[81]);
  if (!v37)
  {
    v36 |= 0x200uLL;
  }

  v72 = v36;
  v111 = v38;
  v39 = v82;
  v40 = v82[1];
  v110[0] = *v82;
  v110[1] = v40;
  v41 = v82[2];
  v42 = v82[3];
  v70 = *(a3 + v70[73]);
  v110[2] = v41;
  v110[3] = v42;
  v43 = a10[13];
  v106 = a10[12];
  v107 = v43;
  v108 = a10[14];
  v109 = *(a10 + 30);
  v44 = a10[9];
  v102 = a10[8];
  v103 = v44;
  v45 = a10[11];
  v104 = a10[10];
  v105 = v45;
  v46 = a10[5];
  v98 = a10[4];
  v99 = v46;
  v47 = a10[7];
  v100 = a10[6];
  v101 = v47;
  v48 = a10[1];
  v94 = *a10;
  v95 = v48;
  v49 = a10[3];
  v96 = a10[2];
  v97 = v49;
  v50 = *(v26 + 16);
  v66 = AssociatedTypeWitness;
  v67 = v29;
  v50(v29, v90, AssociatedTypeWitness);
  v51 = v74;
  v52 = v75;
  (*(v75 + 16))(v89, v91, v74);
  v53 = *(v17 + 16);
  v65 = v19;
  v53(v19, v79, v88);
  v54 = (*(v26 + 80) + 144) & ~*(v26 + 80);
  v55 = (v69 + *(v52 + 80) + v54) & ~*(v52 + 80);
  v64[1] = v30;
  v79 = (v71 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (*(v17 + 80) + v79 + 8) & ~*(v17 + 80);
  v56 = swift_allocObject();
  *&v57 = v80;
  *&v58 = v81;
  *(&v57 + 1) = v76;
  *(&v58 + 1) = v77;
  *(v56 + 16) = v57;
  *(v56 + 32) = v58;
  *(v56 + 48) = v92;
  *(v56 + 56) = v30;
  v59 = v84;
  *(v56 + 64) = v83;
  *(v56 + 72) = v59;
  v60 = v39[1];
  *(v56 + 80) = *v39;
  *(v56 + 96) = v60;
  v61 = v39[3];
  *(v56 + 112) = v39[2];
  *(v56 + 128) = v61;
  (*(v26 + 32))(v56 + v54, v67, v66);
  (*(v52 + 32))(v56 + v55, v89, v51);
  *(v56 + v79) = v85;
  (*(v17 + 32))(v56 + v71, v65, v88);
  v62 = *(*v68 + 656);

  sub_1CEFCCBDC(v39, &v93, &unk_1EC4BF260, &unk_1CFA01B60);

  v62(v90, v91, &v111, v87, v110, v86, v70, v72, &v94, v73, sub_1CF60EABC, v56);
}

uint64_t sub_1CF5FD6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v69 = a8;
  v67 = a7;
  v72 = a6;
  v73 = a3;
  v80 = a5;
  v81 = a4;
  v65 = a1;
  v10 = *a2;
  v71 = *(*a2 + 104);
  v70 = v10[11];
  v74 = a9;
  v68 = a10;
  v82[0] = swift_getAssociatedTypeWitness();
  v82[1] = swift_getAssociatedTypeWitness();
  v82[2] = swift_getAssociatedConformanceWitness();
  v82[3] = swift_getAssociatedConformanceWitness();
  v79 = type metadata accessor for FileItemVersion();
  v77 = *(v79 - 8);
  v64 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v55 - v12;
  v66 = a2;
  v13 = v10[12];
  v14 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = v13;
  v61 = v14;
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ItemState();
  v58 = v16;
  v76 = *(v16 - 8);
  v17 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v60 = &v55 - v18;
  v57 = AssociatedTypeWitness;
  v75 = *(AssociatedTypeWitness - 8);
  v20 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v59 = &v55 - v22;
  type metadata accessor for ItemPropagationResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v24 = sub_1CF9E8238();
  v55 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v55 - v27;
  v56 = &v55 - v27;
  v29 = swift_allocObject();
  v63 = v29;
  v30 = v80;
  *(v29 + 16) = v81;
  *(v29 + 24) = v30;
  (*(v25 + 16))(v28, v65, v24);
  v31 = v75;
  (*(v75 + 16))(v23, v67, AssociatedTypeWitness);
  v32 = v76;
  (*(v76 + 16))(v19, v69, v16);
  v33 = v77;
  (*(v77 + 16))(v78, v68, v79);
  v34 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v35 = (v26 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 71) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v31 + 80) + v37 + 8) & ~*(v31 + 80);
  v39 = (v20 + *(v32 + 80) + v38) & ~*(v32 + 80);
  v69 = (v17 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v33 + 80) + v69 + 8) & ~*(v33 + 80);
  v41 = (v64 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *&v43 = v70;
  *&v44 = v71;
  *(&v43 + 1) = v61;
  *(&v44 + 1) = v62;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  (*(v25 + 32))(v42 + v34, v56, v55);
  v45 = (v42 + v35);
  v47 = v72;
  v46 = v73;
  v48 = v72[1];
  *v45 = *v72;
  v45[1] = v48;
  v49 = *(v47 + 48);
  v45[2] = *(v47 + 32);
  v45[3] = v49;
  *(v42 + v36) = v66;
  *(v42 + v37) = v46;
  (*(v75 + 32))(v42 + v38, v59, v57);
  (*(v76 + 32))(v42 + v39, v60, v58);
  *(v42 + v69) = v74;
  (*(v77 + 32))(v42 + v40, v78, v79);
  v50 = (v42 + v41);
  v51 = v80;
  *v50 = v81;
  v50[1] = v51;
  v52 = v46;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFCCBDC(v47, v82, &unk_1EC4BF260, &unk_1CFA01B60);
  v53 = type metadata accessor for Continuation();

  sub_1CF92E6B4("update(itemID:capturedContent:stagedContext:requestedState:otherVersion:baseVersion:on:result:nonSyncableAttributes:completion:)", 128, 2u, sub_1CF60ECF8, v52, sub_1CF559418, v63, sub_1CF60ED00, v42, v53, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF5FDE20(uint64_t a1, char *a2, uint64_t a3, uint64_t *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(__int128 *, void, unint64_t, char *, void *))
{
  v223 = a8;
  v221 = a7;
  v191 = a6;
  v225 = a5;
  v236 = a3;
  v249 = a2;
  v214 = a1;
  v11 = *a4;
  v12 = *(*a4 + 96);
  v13 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v220 = type metadata accessor for ItemState();
  v15 = sub_1CF9E75D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v222 = &v188 - v17;
  v18 = *(v11 + 104);
  v224 = a4;
  v19 = *(v11 + 88);
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v245 = v20;
  *(&v245 + 1) = v21;
  *&v246 = v22;
  *(&v246 + 1) = v23;
  v210 = type metadata accessor for FileItemVersion();
  v24 = sub_1CF9E75D8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v231 = &v188 - v26;
  *&v27 = v13;
  v192 = v19;
  *(&v27 + 1) = v19;
  v217 = v27;
  *&v28 = v12;
  v193 = v18;
  *(&v28 + 1) = v18;
  v216 = v28;
  v245 = v27;
  v246 = v28;
  v213 = type metadata accessor for Reconciliation.ReconcileAfterPropagation();
  v212 = *(v213 - 8);
  v29 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v31 = &v188 - v30;
  v245 = v217;
  v246 = v216;
  v190 = type metadata accessor for ReconciliationMutation();
  v189 = *(v190 - 8);
  v32 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v188 - v33;
  v197 = *(v13 - 8);
  v34 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v188 - v36;
  v37 = type metadata accessor for SnapshotItem();
  v207 = *(v37 - 8);
  v38 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v206 = &v188 - v39;
  v208 = v40;
  v233 = sub_1CF9E75D8();
  v232 = *(v233 - 8);
  v41 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v229 = &v188 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v239 = &v188 - v44;
  v199 = AssociatedTypeWitness;
  v227 = *(AssociatedTypeWitness - 8);
  v45 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v234 = &v188 - v47;
  v219 = v13;
  v200 = v12;
  v48 = type metadata accessor for ItemPropagationResult();
  v49 = *(v48 - 1);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v198 = &v188 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v235 = &v188 - v53;
  v54 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v56 = sub_1CF9E8238();
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v59 = (&v188 - v58);
  v230 = v54;
  v60 = *(v54 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v188 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v209 = &v188 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v205 = &v188 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v204 = &v188 - v70;
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v188 - v73;
  (*(v75 + 16))(v59, v249, v56, v72);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v249 = v74;
  v237 = v49;
  v211 = v31;
  v238 = v60;
  v218 = v64;
  if (EnumCaseMultiPayload == 1)
  {
    v226 = *v59;
    (*(v49 + 56))(v74, 1, 1, v48);
    v195 = 0;
    v228 = 0;
    v201 = 0xE000000000000000;
    v77 = v49;
    v78 = v227;
    goto LABEL_32;
  }

  v228 = *(v59 + *(TupleTypeMetadata2 + 48));
  if ((*(v49 + 48))(v59, 1, v48) != 1)
  {
    v86 = v235;
    (*(v49 + 32))(v235, v59, v48);
    v87 = v199;
    if (v236[3] >> 60 != 11)
    {
      v88 = *v236;
      v89 = *(*(v224[4] + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
      sub_1CEFCCBDC(v236, &v245, &unk_1EC4BF260, &unk_1CFA01B60);

      os_unfair_lock_lock(v89);
      v90 = *(v89 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v89 + 8) = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = sub_1CF1F6AB4(0, *(v90 + 2) + 1, 1, v90);
        *(v89 + 8) = v90;
      }

      v93 = *(v90 + 2);
      v92 = *(v90 + 3);
      if (v93 >= v92 >> 1)
      {
        v90 = sub_1CF1F6AB4((v92 > 1), v93 + 1, 1, v90);
        *(v89 + 8) = v90;
      }

      *(v90 + 2) = v93 + 1;
      *&v90[8 * v93 + 32] = v88;
      os_unfair_lock_unlock(v89);

      sub_1CEFCCC44(v236, &unk_1EC4BF260, &unk_1CFA01B60);
      v86 = v235;
    }

    v94 = v237;
    v95 = v249;
    (*(v237 + 16))(v249, v86, v48);
    (*(v94 + 56))(v95, 0, 1, v48);
    v96 = v200;
    v97 = v200 + 64;
    v98 = *(v200 + 64);
    v99 = v228;
    v100 = v234;
    v236 = v97;
    v203 = v98;
    v98(v219, v96);
    FileItemID.kind.getter(v87, AssociatedConformanceWitness, &v245);
    (*(v227 + 8))(v100, v87);
    v101 = v245;
    v102 = *(*v225 + 576);
    v103 = swift_getAssociatedTypeWitness();
    v104 = swift_getAssociatedConformanceWitness();
    FileItemID.kind.getter(v103, v104, &v241);
    if (v101 != v241)
    {
      v106 = v219;
      type metadata accessor for FileTreeError();
      swift_getWitnessTable();
      v226 = swift_allocError();
      v108 = v107;
      v109 = v199;
      sub_1CF9E75D8();
      v110 = *(swift_getTupleTypeMetadata2() + 48);
      v78 = v227;
      (*(v227 + 16))(v108, v191, v109);
      (*(v78 + 56))(v108, 0, 1, v109);
      v111 = v235;
      v203(v106, v96);
      swift_storeEnumTagMultiPayload();
      v77 = v237;
      (*(v237 + 8))(v111, v48);
      v60 = v238;
      v74 = v249;
      v79 = v228;
      if (v228)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v105 = v235;
    sub_1CF06D940(v219, v96, &v245);
    v60 = v238;
    v77 = v237;
    v79 = v228;
    v78 = v227;
    if (qword_1CFA0DC10[v245] == qword_1CFA0DC10[*(v221 + *(v220 + 40))])
    {
LABEL_20:
      (*(v237 + 8))(v105, v48);
      v226 = 0;
      v74 = v249;
      if (v79)
      {
        goto LABEL_23;
      }

LABEL_30:
      v195 = 0;
      v228 = 0;
      v118 = 0xE000000000000000;
      goto LABEL_31;
    }

    if (v245 == 3)
    {
      if (!*(v221 + *(v220 + 40)))
      {
        goto LABEL_20;
      }
    }

    else if (!v245 && *(v221 + *(v220 + 40)) == 3)
    {
      goto LABEL_20;
    }

    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v226 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v77 + 8))(v105, v48);
    v74 = v249;
    if (v79)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v79 = v228;
  v78 = v227;
  if (v236[3] >> 60 != 11)
  {
    v235 = *v236;
    v80 = *(*(v224[4] + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
    sub_1CEFCCBDC(v236, &v245, &unk_1EC4BF260, &unk_1CFA01B60);

    os_unfair_lock_lock(v80);
    v81 = *(v80 + 8);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *(v80 + 8) = v81;
    if ((v82 & 1) == 0)
    {
      v81 = sub_1CF1F6AB4(0, *(v81 + 2) + 1, 1, v81);
      *(v80 + 8) = v81;
    }

    v84 = *(v81 + 2);
    v83 = *(v81 + 3);
    if (v84 >= v83 >> 1)
    {
      v81 = sub_1CF1F6AB4((v83 > 1), v84 + 1, 1, v81);
      *(v80 + 8) = v81;
    }

    *(v81 + 2) = v84 + 1;
    *&v81[8 * v84 + 32] = v235;
    os_unfair_lock_unlock(v80);

    sub_1CEFCCC44(v236, &unk_1EC4BF260, &unk_1CFA01B60);
    v60 = v238;
  }

  v77 = v237;
  v74 = v249;
  (*(v237 + 56))(v249, 1, 1, v48);
  v85 = v79;
  v226 = 0;
  if (!v79)
  {
    goto LABEL_30;
  }

LABEL_23:
  *&v245 = 0x3A7265766D6F6420;
  *(&v245 + 1) = 0xE800000000000000;
  v112 = v79;
  v113 = [v112 description];
  v114 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v116 = v115;

  v117 = v114;
  v74 = v249;
  MEMORY[0x1D3868CC0](v117, v116);

  v77 = v237;

  v118 = *(&v245 + 1);
  v195 = v245;
LABEL_31:
  v201 = v118;
  v64 = v218;
LABEL_32:
  v202 = a9;
  v119 = *(v60 + 16);
  v120 = v204;
  v121 = v74;
  v122 = v230;
  v203 = (v60 + 16);
  v236 = v119;
  (v119)(v204, v121, v230);
  v123 = *(v77 + 48);
  v235 = (v77 + 48);
  v234 = v123;
  if ((v123)(v120, 1, v48) == 1)
  {

    (*(v60 + 8))(v120, v122);
    (*(v207 + 56))(v239, 1, 1, v208);
    if (v226)
    {
      v124 = 0;
    }

    else
    {
      v124 = 0x3A6C61757463613CLL;
    }

    v201 = v124;
    v125 = 0xEC0000003E6C696ELL;
    if (v226)
    {
      v125 = 0;
    }

    v204 = v125;
  }

  else
  {
    v126 = v198;
    (*(v77 + 32))(v198, v120, v48);
    v127 = v196;
    v128 = v219;
    (*(v197 + 16))(v196, v126, v219);
    v129 = v206;
    sub_1CF06B77C(v127, v128, v200, v206);
    v130 = v207;
    v131 = v239;
    v132 = v208;
    (*(v207 + 16))(v239, v129, v208);
    (*(v130 + 56))(v131, 0, 1, v132);
    *&v245 = 0;
    *(&v245 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6C61757463613CLL, 0xE800000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v133 = v245;
    *&v245 = 0;
    *(&v245 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    strcpy(&v245, "stillPending:");
    HIWORD(v245) = -4864;
    v134 = sub_1CF071470(*&v126[v48[9]]);
    MEMORY[0x1D3868CC0](v134);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v135 = v245;
    v245 = v133;

    MEMORY[0x1D3868CC0](v135, *(&v135 + 1));

    v136 = v245;
    *&v245 = 0;
    *(&v245 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    strcpy(&v245, "shouldFetch:");
    BYTE13(v245) = 0;
    HIWORD(v245) = -5120;
    if (v126[v48[10]])
    {
      v137 = 1702195828;
    }

    else
    {
      v137 = 0x65736C6166;
    }

    if (v126[v48[10]])
    {
      v138 = 0xE400000000000000;
    }

    else
    {
      v138 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v137, v138);

    MEMORY[0x1D3868CC0](v195, v201);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v140 = *(&v245 + 1);
    v139 = v245;
    v245 = v136;

    MEMORY[0x1D3868CC0](v139, v140);
    v64 = v218;

    v77 = v237;

    v204 = *(&v245 + 1);
    v201 = v245;
    v141 = v132;
    v78 = v227;
    (*(v130 + 8))(v206, v141);
    (*(v77 + 8))(v126, v48);
  }

  v142 = v225;
  v143 = v222;
  v144 = v205;
  if ((v225[141] & 0x10) != 0)
  {
    (v236)(v205, v249, v122);
    if ((v234)(v144, 1, v48) == 1)
    {
      (*(v238 + 8))(v144, v122);
    }

    else
    {
      v145 = &v144[v48[11]];
      v146 = *(v145 + 1);
      v245 = *v145;
      v246 = v146;
      v147 = *(v145 + 3);
      v247 = *(v145 + 2);
      v248 = v147;
      sub_1CEFCCBDC(&v245, &v241, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v77 + 8))(v144, v48);
      if (*(&v246 + 1) >> 60 != 11)
      {
        v241 = v217;
        v242 = v216;
        type metadata accessor for JobResult();
        v148 = swift_getAssociatedTypeWitness();
        v149 = swift_getAssociatedConformanceWitness();
        v150 = v199;
        *&v241 = v199;
        *(&v241 + 1) = v148;
        *&v242 = AssociatedConformanceWitness;
        *(&v242 + 1) = v149;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v151 = swift_getTupleTypeMetadata2();
        v152 = v188;
        v153 = &v188[*(v151 + 48)];
        (*(v78 + 16))(v188, v191, v150);
        swift_storeEnumTagMultiPayload();
        v154 = v246;
        *v153 = v245;
        *(v153 + 1) = v154;
        v155 = v248;
        *(v153 + 2) = v247;
        *(v153 + 3) = v155;
        *(v153 + 32) = 256;
        v143 = v222;
        v142 = v225;
        swift_storeEnumTagMultiPayload();
        v156 = v190;
        swift_storeEnumTagMultiPayload();
        v241 = v245;
        v242 = v246;
        v243 = v247;
        v244 = v248;
        sub_1CF1AE1DC(&v241, v240);
        sub_1CF06EB44(v223, v152);
        sub_1CEFCCC44(&v245, &unk_1EC4BF260, &unk_1CFA01B60);
        v157 = v152;
        v64 = v218;
        (*(v189 + 8))(v157, v156);
      }
    }
  }

  v158 = v210;
  v159 = *(v210 - 8);
  v160 = v231;
  (*(v159 + 16))(v231, v202, v210);
  (*(v159 + 56))(v160, 0, 1, v158);
  v161 = *&v142[*(*v142 + 640)];
  v162 = v220;
  v163 = *(v220 - 8);
  (*(v163 + 16))(v143, v221, v220);
  v164 = v162;
  v165 = v230;
  (*(v163 + 56))(v143, 0, 1, v164);
  (*(v232 + 16))(v229, v239, v233);
  v166 = v209;
  (v236)(v209, v249, v165);
  if ((v234)(v166, 1, v48) == 1)
  {
    v167 = 0;
    v168 = v238;
    v169 = v165;
  }

  else
  {
    v167 = *&v166[v48[9]];
    v168 = v237;
    v169 = v48;
  }

  (*(v168 + 8))(v166, v169);
  *&v245 = v167;
  (v236)(v64, v249, v165);
  if ((v234)(v64, 1, v48) == 1)
  {
    v170 = 0;
    v171 = v238;
    v48 = v165;
    v172 = v211;
  }

  else
  {
    v170 = v64[v48[10]];
    v172 = v211;
    v171 = v237;
  }

  v173 = v228;
  (*(v171 + 8))(v64, v48);
  v174 = v226;
  if (v226)
  {
    v175 = *&v142[*(*v142 + 584)];
    v176 = v226;
    v177 = v175;
  }

  else
  {
    v175 = 0;
  }

  sub_1CF98C50C(v178, v231, v161, 0, v143, v229, &v245, v170, v172, v173, v174, v175);
  v179 = v214;
  sub_1CF1A91AC(v214, &v245);
  v180 = v179[3];
  v181 = v179[4];
  v182 = __swift_project_boxed_opaque_existential_1(v179, v180);
  v183 = v213;
  v184 = v215;
  v185 = sub_1CF98CA58(v224, v223, v182, v213, v180, v181);
  if (!v184)
  {
    v186 = v185;
    a10(&v245, 0, v201, v204, v185);
  }

  sub_1CEFCCC44(&v245, &unk_1EC4C1B30, &qword_1CFA05300);
  (*(v212 + 8))(v172, v183);
  (*(v232 + 8))(v239, v233);
  return (*(v238 + 8))(v249, v165);
}

void sub_1CF5FFA44(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(__int128 *, void, void, void, void *), uint64_t a6, char *a7, uint64_t a8)
{
  v9 = v8;
  v215 = a8;
  v216 = a7;
  v213 = a5;
  v214 = a6;
  v207 = a4;
  v219 = a2;
  v223 = a1;
  v10 = *v8;
  v211 = a3;
  v212 = v10;
  v12 = *(v10 + 76);
  v13 = *(v10 + 79);
  v14 = *(v10 + 78);
  *&v279 = *(v10 + 77);
  v11 = v279;
  *(&v279 + 1) = v12;
  *&v280 = v13;
  *(&v280 + 1) = v14;
  v183 = type metadata accessor for ItemReconciliation();
  v15 = sub_1CF9E75D8();
  v184 = *(v15 - 8);
  v185 = v15;
  v16 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v181 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v221 = type metadata accessor for ItemState();
  v190 = sub_1CF9E75D8();
  v188 = *(v190 - 8);
  v18 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v195 = &v181 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v196 = v11;
  v197 = v13;
  v23 = swift_getAssociatedConformanceWitness();
  *&v279 = v20;
  *(&v279 + 1) = v21;
  *&v280 = AssociatedConformanceWitness;
  *(&v280 + 1) = v23;
  v24 = type metadata accessor for FileItemVersion();
  v25 = sub_1CF9E75D8();
  v192 = *(v25 - 8);
  v193 = v25;
  v26 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v191 = &v181 - v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v198 = v14;
  v199 = v12;
  v31 = swift_getAssociatedConformanceWitness();
  *&v279 = v28;
  *(&v279 + 1) = v29;
  *&v280 = v30;
  *(&v280 + 1) = v31;
  v32 = type metadata accessor for FileItemVersion();
  v33 = sub_1CF9E75D8();
  v201 = *(v33 - 8);
  v202 = v33;
  v34 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v200 = (&v181 - v35);
  v36 = AssociatedTypeWitness;
  v37 = sub_1CF9E75D8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v181 - v40;
  v208 = v24;
  v209 = *(v24 - 8);
  v42 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v194 = &v181 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v205 = &v181 - v46;
  v217 = *(v221 - 8);
  v47 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v187 = &v181 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v203 = &v181 - v51;
  v220 = v32;
  v222 = *(v32 - 8);
  v52 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v210 = &v181 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v204 = &v181 - v56;
  v57 = *(v36 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v182 = &v181 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v181 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v206 = &v181 - v65;
  v66 = *(v223[4] + 16);
  v67 = (v9 + *(v212 + 85));
  v68 = v67[1];
  v295 = *v67;
  v296 = v68;
  v69 = v67[3];
  v297 = v67[2];
  v298 = v69;
  v70 = *(v212 + 82);
  swift_beginAccess();
  (*(v38 + 16))(v41, v9 + v70, v37);
  v71 = (*(v57 + 48))(v41, 1, v36);
  v218 = v57;
  if (v71 != 1)
  {
    v189 = v66;
    v77 = *(v57 + 32);
    v212 = v63;
    v77(v63, v41, AssociatedTypeWitness);
    v78 = *(*v9 + 83);
    swift_beginAccess();
    v80 = v201;
    v79 = v202;
    v81 = v9 + v78;
    v82 = v200;
    (*(v201 + 16))(v200, v81, v202);
    v83 = v222;
    v84 = v220;
    if ((*(v222 + 48))(v82, 1, v220) == 1)
    {
      v66 = v189;

      sub_1CEFCCBDC(&v295, &v279, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v80 + 8))(v82, v79);
      v85 = *(*v9 + 89);
      v74 = *(v9 + v85);
      if (v74)
      {
        v86 = *(v9 + v85);
        swift_willThrow();
        v87 = v74;
      }

      else
      {
        *&v279 = v199;
        *(&v279 + 1) = v196;
        *&v280 = v198;
        *(&v280 + 1) = v197;
        type metadata accessor for Propagation.PropagationError();
        swift_getWitnessTable();
        v117 = swift_allocError();
        v119 = v118;
        v120 = swift_getAssociatedTypeWitness();
        v121 = (v119 + *(swift_getTupleTypeMetadata2() + 48));
        (*(*(v120 - 8) + 16))(v119, v9 + *(*v9 + 72), v120);
        *v121 = 0xD000000000000011;
        v121[1] = 0x80000001CFA54B50;
        v74 = v117;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      (*(v218 + 8))(v212, AssociatedTypeWitness);
      goto LABEL_20;
    }

    v88 = v210;
    (*(v83 + 32))(v210, v82, v84);
    v89 = *(*v9 + 86);
    swift_beginAccess();
    v90 = v191;
    v91 = v192;
    v92 = v9 + v89;
    v93 = v193;
    (*(v192 + 16))(v191, v92, v193);
    v95 = v208;
    v94 = v209;
    if ((*(v209 + 48))(v90, 1, v208) == 1)
    {
      v96 = v91;
      v66 = v189;

      sub_1CEFCCBDC(&v295, &v279, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v96 + 8))(v90, v93);
      v97 = *(*v9 + 89);
      v74 = *(v9 + v97);
      v98 = v212;
      if (v74)
      {
        v99 = *(v9 + v97);
        swift_willThrow();
        v100 = v74;
        (*(v83 + 8))(v210, v84);
        v101 = v218;
      }

      else
      {
        *&v279 = v199;
        *(&v279 + 1) = v196;
        *&v280 = v198;
        *(&v280 + 1) = v197;
        type metadata accessor for Propagation.PropagationError();
        swift_getWitnessTable();
        v127 = swift_allocError();
        v129 = v128;
        v130 = swift_getAssociatedTypeWitness();
        v131 = (v129 + *(swift_getTupleTypeMetadata2() + 48));
        (*(*(v130 - 8) + 16))(v129, v9 + *(*v9 + 72), v130);
        *v131 = 0xD000000000000011;
        v131[1] = 0x80000001CFA54A90;
        v74 = v127;
        v132 = v218;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v222 + 8))(v210, v84);
        v101 = v132;
      }

      (*(v101 + 8))(v98, AssociatedTypeWitness);
LABEL_20:
      LODWORD(v212) = 0;
      LODWORD(v210) = 0;
      v107 = v216;
      if (!v219)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v108 = v194;
    (*(v94 + 32))(v194, v90, v95);
    v109 = v84;
    v202 = *(v218 + 16);
    v202(v206, v212, AssociatedTypeWitness);
    v110 = v217;
    (*(v83 + 16))(v204, v88, v109);
    (*(v94 + 16))(v205, v108, v95);
    v111 = *(*v9 + 84);
    swift_beginAccess();
    v112 = v188;
    v113 = v9 + v111;
    v114 = v195;
    (*(v188 + 16))(v195, v113, v190);
    v115 = v221;
    if ((*(v110 + 48))(v114, 1, v221) == 1)
    {

      sub_1CEFCCBDC(&v295, &v279, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v112 + 8))(v195, v190);
      v116 = v223[3];
      v133 = sub_1CF66E6E4(v9, v207, v216, *(v215 + 8));
      *&v279 = v199;
      *(&v279 + 1) = v196;
      *&v280 = v198;
      *(&v280 + 1) = v197;
      type metadata accessor for Propagation.PropagationError();
      swift_getWitnessTable();
      v74 = swift_allocError();
      *v134 = v133;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v209 + 8))(v194, v95);
      v84 = v220;
      (*(v222 + 8))(v210, v220);
      (*(v218 + 8))(v212, AssociatedTypeWitness);
      LODWORD(v210) = 0;
      LODWORD(v212) = 1;
      v66 = v189;
      v107 = v216;
      if (!v219)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v122 = v187;
    (*(v110 + 32))(v187, v195, v115);
    (*(v110 + 16))(v203, v122, v115);
    v123 = *(*v9 + 72);

    sub_1CEFCCBDC(&v295, v277, &unk_1EC4BF260, &unk_1CFA01B60);
    v124 = *(v215 + 8);
    v200 = v9;
    v125 = v9 + v123;
    v126 = v223;
    sub_1CF5EA7E0(v223, v125, v207, v216, v124, &v279);
    v201 = 0;
    v145 = *(v110 + 8);
    v217 = v110 + 8;
    v199 = v145;
    v145(v122, v115);
    v146 = *(v209 + 8);
    v209 += 8;
    v198 = v146;
    v146(v194, v208);
    v147 = *(v222 + 8);
    v148 = v210;
    v149 = v218;
    v222 += 8;
    v210 = v147;
    (v147)(v148, v220);
    v150 = *(v149 + 8);
    v218 = v149 + 8;
    v150(v212, AssociatedTypeWitness);
    v273 = v291;
    v274 = v292;
    v275 = v293;
    v269 = v287;
    v270 = v288;
    v271 = v289;
    v272 = v290;
    v265 = v283;
    v266 = v284;
    v267 = v285;
    v268 = v286;
    v261 = v279;
    v262 = v280;
    v263 = v281;
    v264 = v282;
    v277[12] = v291;
    v277[13] = v292;
    v277[14] = v293;
    v277[8] = v287;
    v277[9] = v288;
    v277[10] = v289;
    v277[11] = v290;
    v277[4] = v283;
    v277[5] = v284;
    v277[6] = v285;
    v277[7] = v286;
    v277[0] = v279;
    v277[1] = v280;
    v276 = v294;
    v278 = v294;
    v277[2] = v281;
    v277[3] = v282;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v277);
    v152 = v203;
    v153 = v219;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      v154 = *(v115 + 40);
      v155 = (v152 + v154 + *(type metadata accessor for ItemMetadata() + 152));
      v156 = v155[1];

      *v155 = 0;
      v155[1] = 0;
    }

    v157 = v206;
    v158 = v207;
    if (v153)
    {
      v212 = v150;
      type metadata accessor for StagedContext();
      v197 = swift_dynamicCastClass();
      if (!v197)
      {
        goto LABEL_51;
      }

      v159 = v126[2];

      v160 = v186;
      v161 = v158;
      v162 = v158;
      v163 = v216;
      v164 = v157;
      v165 = v201;
      sub_1CF68DDB0(v157, v161, v216, v124, v186);
      v166 = v165;
      if (v165)
      {
LABEL_45:
        *(&v246 + 1) = v163;
        *&v247 = v215;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v245);
        (*(*(v163 - 1) + 16))(boxed_opaque_existential_0, v162, v163);
        v169 = v166;
        v213(&v245, 0, 0, 0, v166);

        sub_1CEFCCC44(&v295, &unk_1EC4BF260, &unk_1CFA01B60);

        sub_1CEFCCC44(&v261, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v198(v205, v208);
        (v210)(v204, v220);
        (v212)(v164, AssociatedTypeWitness);
        sub_1CEFCCC44(&v245, &unk_1EC4C1B30, &qword_1CFA05300);
        v170 = v203;
LABEL_49:
        v199(v170, v221);
        return;
      }

      if ((*(*(v183 - 8) + 48))(v160, 1) == 1)
      {
        (*(v184 + 8))(v160, v185);
        v202(v182, v206, AssociatedTypeWitness);
        type metadata accessor for NSFileProviderItemIdentifier(0);
        if (swift_dynamicCast())
        {
          v167 = v245;
        }

        else
        {
          v167 = 0;
        }

        v166 = FPItemNotFoundError();

        if (v166)
        {
          swift_willThrow();
          v164 = v206;
          v162 = v207;
          v163 = v216;
          goto LABEL_45;
        }

        __break(1u);
LABEL_51:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Propagation.swift", 101, 2, 1726);
      }

      (*(v184 + 8))(v160, v185);
      v241 = v295;
      v242 = v296;
      v243 = v297;
      v244 = v298;
      v237 = v273;
      v238 = v274;
      v239 = v275;
      v240 = v276;
      v233 = v269;
      v234 = v270;
      v235 = v271;
      v236 = v272;
      v229 = v265;
      v230 = v266;
      v231 = v267;
      v232 = v268;
      v225 = v261;
      v226 = v262;
      v227 = v263;
      v228 = v264;
      sub_1CEFCCBDC(&v261, &v245, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v176 = v205;
      v177 = v206;
      v172 = v203;
      v178 = v204;
      sub_1CF5FB618(v206, &v241, v197, v203, v204, v205, v223, v211, &v225, v213, v214);

      sub_1CEFCCC44(&v261, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v257 = v237;
      v258 = v238;
      v259 = v239;
      v260 = v240;
      v253 = v233;
      v254 = v234;
      v255 = v235;
      v256 = v236;
      v249 = v229;
      v250 = v230;
      v251 = v231;
      v252 = v232;
      v245 = v225;
      v246 = v226;
      v247 = v227;
      v248 = v228;
      sub_1CEFCCC44(&v245, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v198(v176, v208);
      (v210)(v178, v220);
      (v212)(v177, AssociatedTypeWitness);
    }

    else
    {
      v241 = v295;
      v242 = v296;
      v243 = v297;
      v244 = v298;
      v237 = v273;
      v238 = v274;
      v239 = v275;
      v240 = v276;
      v233 = v269;
      v234 = v270;
      v235 = v271;
      v236 = v272;
      v229 = v265;
      v230 = v266;
      v231 = v267;
      v232 = v268;
      v225 = v261;
      v226 = v262;
      v227 = v263;
      v228 = v264;
      sub_1CEFCCBDC(&v261, &v245, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v180 = v124;
      v179 = v158;
      v171 = v157;
      v172 = v203;
      v173 = v157;
      v175 = v204;
      v174 = v205;
      sub_1CF5FA3EC(v171, &v241, v203, v204, v205, v126, v211, &v225, v179, v213, v214, v216, v180);

      sub_1CEFCCC44(&v261, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v257 = v237;
      v258 = v238;
      v259 = v239;
      v260 = v240;
      v253 = v233;
      v254 = v234;
      v255 = v235;
      v256 = v236;
      v249 = v229;
      v250 = v230;
      v251 = v231;
      v252 = v232;
      v245 = v225;
      v246 = v226;
      v247 = v227;
      v248 = v228;
      sub_1CEFCCC44(&v245, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v198(v174, v208);
      (v210)(v175, v220);
      v150(v173, AssociatedTypeWitness);
    }

    sub_1CEFCCC44(&v295, &unk_1EC4BF260, &unk_1CFA01B60);
    v170 = v172;
    goto LABEL_49;
  }

  v72 = v220;

  sub_1CEFCCBDC(&v295, &v279, &unk_1EC4BF260, &unk_1CFA01B60);
  (*(v38 + 8))(v41, v37);
  v73 = *(*v9 + 89);
  v74 = *(v9 + v73);
  if (v74)
  {
    v75 = *(v9 + v73);
    swift_willThrow();
    v76 = v74;
  }

  else
  {
    *&v279 = v199;
    *(&v279 + 1) = v196;
    *&v280 = v198;
    *(&v280 + 1) = v197;
    type metadata accessor for Propagation.PropagationError();
    swift_getWitnessTable();
    v102 = swift_allocError();
    v104 = v103;
    v105 = swift_getAssociatedTypeWitness();
    v106 = (v104 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v105 - 8) + 16))(v104, v9 + *(*v9 + 72), v105);
    *v106 = 0xD000000000000010;
    v106[1] = 0x80000001CFA54A70;
    v74 = v102;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  LODWORD(v212) = 0;
  LODWORD(v210) = 0;
  v84 = v72;
  v107 = v216;
  if (!v219)
  {
LABEL_26:
    sub_1CF60169C(v207, v74, v9, v213, v214, v223, v211, v107, v107, v215, v215);
    sub_1CEFCCC44(&v295, &unk_1EC4BF260, &unk_1CFA01B60);

    v142 = v217;
    v143 = v222;
    v144 = v212;
    if (!v212)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_23:
  type metadata accessor for StagedContext();
  v135 = swift_dynamicCastClass();
  if (!v135)
  {
    goto LABEL_26;
  }

  v136 = v135;
  v137 = swift_allocObject();
  v138 = v215;
  v137[2] = v107;
  v137[3] = v138;
  v139 = v213;
  v137[4] = v223;
  v137[5] = v139;
  v137[6] = v214;
  v137[7] = v9;
  v137[8] = v211;
  v137[9] = v74;
  v216 = (*v66 + 640);
  v140 = *v216;

  v141 = v74;
  v140(v136, sub_1CF60E600, v137);
  v84 = v220;
  v142 = v217;
  v143 = v222;
  sub_1CEFCCC44(&v295, &unk_1EC4BF260, &unk_1CFA01B60);

  v144 = v212;
  if (v212)
  {
LABEL_27:
    (*(v209 + 8))(v205, v208);
  }

LABEL_28:
  if (v210)
  {
    (*(v142 + 8))(v203, v221);
    if (!v144)
    {
      return;
    }
  }

  else if (!v144)
  {
    return;
  }

  (*(v143 + 8))(v204, v84);
  (*(v218 + 8))(v206, AssociatedTypeWitness);
}

uint64_t sub_1CF60169C(char *a1, void *a2, uint64_t *a3, void (*a4)(__int128 *, void, void, void, void *), uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63 = a6;
  v64 = a7;
  v65 = a5;
  v66 = a4;
  v56 = a1;
  v62 = a11;
  v60 = a2;
  v61 = a9;
  v12 = *a3;
  v13 = *(*a3 + 616);
  v14 = *(*a3 + 632);
  v59 = type metadata accessor for SnapshotItem();
  v15 = sub_1CF9E75D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = &v54 - v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for ItemState();
  v19 = sub_1CF9E75D8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v55 = &v54 - v21;
  v22 = *(v12 + 624);
  v23 = *(v12 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  *&v67 = AssociatedTypeWitness;
  *(&v67 + 1) = v25;
  *&v68 = AssociatedConformanceWitness;
  *(&v68 + 1) = v27;
  v28 = type metadata accessor for FileItemVersion();
  v29 = sub_1CF9E75D8();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v54 - v31;
  *&v33 = v13;
  *(&v33 + 1) = v23;
  *&v34 = v14;
  *(&v34 + 1) = v22;
  v35 = v56;
  v67 = v33;
  v68 = v34;
  v36 = type metadata accessor for Reconciliation.ReconcileAfterPropagation();
  v57 = *(v36 - 8);
  v37 = *(v57 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v54 - v39);
  (*(*(v28 - 8) + 56))(v32, 1, 1, v28, v38);
  v41 = *(a3 + *(*a3 + 640));
  v42 = v55;
  (*(*(v18 - 8) + 56))(v55, 1, 1, v18);
  v43 = v58;
  (*(*(v59 - 8) + 56))(v58, 1, 1);
  *&v67 = 0;
  v44 = *(a3 + *(*a3 + 584));
  v45 = v60;
  v46 = v60;
  v47 = v44;

  sub_1CF98C50C(v48, v32, v41, 0, v42, v43, &v67, 0, v40, 0, v45, v44);
  v50 = v61;
  v49 = v62;
  *(&v68 + 1) = v61;
  v69 = v62;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v67);
  (*(*(v50 - 8) + 16))(boxed_opaque_existential_0, v35, v50);
  v52 = sub_1CF98CA58(v63, v64, v35, v36, v50, v49);
  v66(&v67, 0, 0, 0, v52);

  (*(v57 + 8))(v40, v36);
  return sub_1CEFCCC44(&v67, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF601C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a4;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a1;
  v21[8] = a5;
  v21[9] = a6;
  swift_retain_n();

  v22 = a6;
  v23 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, a11, v20, a12, v21, v23, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF601DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v50 = a5;
  v8 = *v5;
  v9 = *(*v5 + 632);
  v48 = *(*v5 + 616);
  v49 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = *(a1 + 32);
  if (sub_1CF056558() && (*(v6 + *(*v6 + 648)) & 0x10) != 0)
  {
    v28 = v55;
    result = (*(**(a1 + 16) + 152))(v6 + *(*v6 + 576), v45, v46, v47);
    if (!v28)
    {
      if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
      {
        (*(v44 + 8))(v14, v11);
        v29 = *(v8 + 624);
        v30 = *(v8 + 608);
        v31 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v33 = swift_getAssociatedConformanceWitness();
        v51 = AssociatedTypeWitness;
        v52 = v31;
        v53 = AssociatedConformanceWitness;
        v54 = v33;
        v34 = type metadata accessor for ReconciliationID();
        return (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
      }

      else
      {
        v35 = *(v15 + 32);
        v35(v19, v14, AssociatedTypeWitness);
        v36 = v50;
        v35(v50, v19, AssociatedTypeWitness);
        v37 = *(v8 + 624);
        v38 = *(v8 + 608);
        v39 = swift_getAssociatedTypeWitness();
        v40 = swift_getAssociatedConformanceWitness();
        v41 = swift_getAssociatedConformanceWitness();
        v51 = AssociatedTypeWitness;
        v52 = v39;
        v53 = v40;
        v54 = v41;
        v42 = type metadata accessor for ReconciliationID();
        swift_storeEnumTagMultiPayload();
        return (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
      }
    }
  }

  else
  {
    v21 = *(v8 + 624);
    v22 = *(v8 + 608);
    v23 = swift_getAssociatedTypeWitness();
    v24 = swift_getAssociatedConformanceWitness();
    v25 = swift_getAssociatedConformanceWitness();
    v51 = AssociatedTypeWitness;
    v52 = v23;
    v53 = v24;
    v54 = v25;
    v26 = type metadata accessor for ReconciliationID();
    return (*(*(v26 - 8) + 56))(v50, 1, 1, v26);
  }

  return result;
}

id sub_1CF6022B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v23 = *(*v1 + 624);
  v4 = *(*v1 + 608);
  swift_getAssociatedTypeWitness();
  type metadata accessor for SnapshotItem();
  sub_1CF9E75D8();
  v5 = v3[79];
  v6 = v3[77];
  swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8 = TupleTypeMetadata[12];
  v18 = TupleTypeMetadata[16];
  v19 = TupleTypeMetadata[20];
  v20 = TupleTypeMetadata[24];
  v21 = TupleTypeMetadata[28];
  v22 = TupleTypeMetadata[32];
  v9 = v3[72];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v9, AssociatedTypeWitness);
  v11 = type metadata accessor for SnapshotItem();
  (*(*(v11 - 8) + 56))(a1 + v8, 1, 1, v11);
  v12 = swift_getAssociatedTypeWitness();
  (*(*(v12 - 8) + 56))(a1 + v18, 1, 1, v12);
  v13 = *(*v1 + 688);
  swift_beginAccess();
  type metadata accessor for FileItemVersion();
  v14 = sub_1CF9E75D8();
  (*(*(v14 - 8) + 16))(a1 + v19, v1 + v13, v14);
  v15 = *v1;
  *(a1 + v20) = *(v1 + *(*v1 + 648));
  *(a1 + v21) = *(v1 + *(v15 + 640));
  v24 = *(v1 + *(v15 + 584));
  *(a1 + v22) = v24;
  type metadata accessor for DirectionalTestingOperation();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for TestingOperation();
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(a1, 0, 1, v16);

  return v24;
}

void sub_1CF60280C()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 616);
  swift_getAssociatedTypeWitness();
  v5 = sub_1CF9E75D8();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v18 = *(*v0 + 664);
  v6 = *(v1 + 624);
  v7 = *(v1 + 608);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v8 = sub_1CF9E75D8();
  (*(*(v8 - 8) + 8))(v0 + v18, v8);
  v9 = *(*v0 + 672);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState();
  v10 = sub_1CF9E75D8();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = (v0 + *(*v0 + 680));
  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[6];
  v15 = v11[7];
  sub_1CF480A8C(*v11, v11[1], v11[2], v11[3]);
  v16 = *(*v0 + 688);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v17 = sub_1CF9E75D8();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
}

uint64_t sub_1CF602BA8()
{
  v1 = *v0;
  v2 = sub_1CF5E9C94();
  v3 = *(*v2 + 656);
  v4 = v1[79];
  v5 = v1[77];
  swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  (*(*(v6 - 8) + 8))(v2 + v3, v6);
  v20 = *(*v2 + 664);
  v7 = v1[78];
  v8 = v1[76];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v9 = sub_1CF9E75D8();
  (*(*(v9 - 8) + 8))(v2 + v20, v9);
  v10 = *(*v2 + 672);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState();
  v11 = sub_1CF9E75D8();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  v12 = (v2 + *(*v2 + 680));
  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  v16 = v12[7];
  sub_1CF480A8C(*v12, v12[1], v12[2], v12[3]);
  v17 = *(*v2 + 688);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v18 = sub_1CF9E75D8();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return v2;
}

uint64_t sub_1CF602F94(uint64_t a1)
{
  v1 = *(a1 + 632);
  v2 = *(a1 + 616);
  swift_getAssociatedTypeWitness();
  result = sub_1CF9E75D8();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemVersion();
    result = sub_1CF9E75D8();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      type metadata accessor for SnapshotItem();
      result = sub_1CF9E75D8();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1CF6031C0@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 616);
  v5 = *(*v1 + 632);
  v6 = type metadata accessor for SnapshotItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = *(v3 + 688);
  swift_beginAccess();
  result = (*(v7 + 48))(v1 + v11, 1, v6);
  if (result)
  {
    v13 = 4;
  }

  else
  {
    (*(v7 + 16))(v10, v1 + v11, v6);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v6, WitnessTable, &v15 + 7);
    result = (*(v7 + 8))(v10, v6);
    v13 = HIBYTE(v15);
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1CF60335C()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 688);
  swift_beginAccess();
  v3 = *(v1 + 616);
  v4 = *(v1 + 632);
  v5 = type metadata accessor for SnapshotItem();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    return 2;
  }

  v7 = v2 + *(v5 + 48);
  return *(v7 + *(type metadata accessor for ItemMetadata() + 112));
}

uint64_t sub_1CF603444()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 688);
  swift_beginAccess();
  v3 = *(v1 + 616);
  v4 = *(v1 + 632);
  v5 = type metadata accessor for SnapshotItem();
  v6 = (*(*(v5 - 8) + 48))(v2, 1, v5);
  result = 0;
  if (!v6)
  {
    v8 = v2 + *(v5 + 48);
    return *(v8 + *(type metadata accessor for ItemMetadata() + 104));
  }

  return result;
}

unint64_t sub_1CF603534()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 688);
  swift_beginAccess();
  v3 = *(v1 + 616);
  v4 = *(v1 + 632);
  v5 = type metadata accessor for SnapshotItem();
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    v7 = 0;
  }

  else
  {
    v8 = v2 + *(v5 + 48);
    v7 = *(v8 + 4);
    v6 = *(v8 + 8);
  }

  return v7 | (v6 << 32);
}

uint64_t sub_1CF603624@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 688);
  swift_beginAccess();
  v5 = *(v3 + 616);
  v6 = *(v3 + 632);
  v7 = type metadata accessor for SnapshotItem();
  if ((*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v10 = *(v7 + 36);
    v11 = swift_getAssociatedTypeWitness();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a1, v4 + v10, v11);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1CF6037EC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  v6 = sub_1CF9E75D8();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = v41 - v8;
  v47 = v5;
  v46 = *(v5 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41[0] = v41 - v11;
  v41[1] = v4;
  v41[2] = v3;
  v12 = swift_getAssociatedTypeWitness();
  v48 = sub_1CF9E75D8();
  v13 = *(v48 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v16 = v41 - v15;
  v17 = *(v12 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v45 = v41 - v20;
  AssociatedTypeWitness = 0;
  v54 = 0xE000000000000000;
  v21 = v2[72];
  v22 = v2[78];
  v23 = v2[76];
  swift_getAssociatedTypeWitness();
  v24 = v17;
  v25 = v12;
  v26 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v51 = AssociatedTypeWitness;
  v52 = v54;
  v27 = *(*v1 + 640);
  swift_beginAccess();
  v28 = v1 + v27;
  v29 = v48;
  (*(v13 + 16))(v16, v28, v48);
  if ((*(v17 + 48))(v16, 1, v12) == 1)
  {
    (*(v13 + 8))(v16, v29);
  }

  else
  {
    v30 = v45;
    (*(v17 + 32))(v45, v16, v12);
    v31 = *(*v1 + 656);
    swift_beginAccess();
    v32 = v43;
    v33 = v1 + v31;
    v34 = v42;
    v35 = v44;
    (*(v43 + 16))(v42, v33, v44);
    v37 = v46;
    v36 = v47;
    if ((*(v46 + 48))(v34, 1, v47) == 1)
    {
      (*(v24 + 8))(v30, v12);
      (*(v32 + 8))(v34, v35);
    }

    else
    {
      v38 = v41[0];
      (*(v37 + 32))(v41[0], v34, v36);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x3A74656772617420, 0xEC0000003A64693CLL);
      v39 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v49, v50);

      (*(v37 + 8))(v38, v36);
      (*(v24 + 8))(v30, v25);
    }
  }

  return v51;
}

uint64_t sub_1CF603E10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v233 = a4;
  v234 = a5;
  v232 = a3;
  v236 = a2;
  v193 = a1;
  v6 = *v5;
  v7 = *(*v5 + 77);
  v8 = *(*v5 + 79);
  v210 = type metadata accessor for JobLockRule();
  v9 = *(*(v210 - 8) + 64);
  MEMORY[0x1EEE9AC00](v210);
  v195 = v179 - v10;
  v228 = v6;
  v235 = v5;
  v11 = *(v6 + 78);
  v230 = *(v6 + 76);
  v231 = v11;
  v12 = type metadata accessor for SnapshotItem();
  v213 = *(v12 - 8);
  v13 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v212 = v179 - v14;
  v190 = v15;
  v189 = sub_1CF9E75D8();
  v188 = *(v189 - 8);
  v16 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v187 = v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v194 = v179 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v198 = sub_1CF9E75D8();
  v197 = *(v198 - 8);
  v21 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v196 = v179 - v22;
  v199 = AssociatedTypeWitness;
  v205 = *(AssociatedTypeWitness - 8);
  v23 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v192 = v179 - v25;
  v26 = type metadata accessor for SnapshotItem();
  v204 = sub_1CF9E75D8();
  v203 = *(v204 - 8);
  v27 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v209 = v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v208 = v179 - v30;
  v207 = v26;
  v206 = *(v26 - 8);
  v31 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v191 = v179 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v218 = sub_1CF9E75D8();
  v217 = *(v218 - 8);
  v35 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v201 = v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v200 = v179 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v211 = v179 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v214 = v179 - v42;
  v216 = v34;
  v215 = *(v34 - 8);
  v43 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v202 = v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v219 = v179 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v49 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedConformanceWitness();
  *&v237 = v48;
  *(&v237 + 1) = v49;
  *&v238 = AssociatedConformanceWitness;
  *(&v238 + 1) = v51;
  v52 = type metadata accessor for FileItemVersion();
  v227 = sub_1CF9E75D8();
  v222 = *(v227 - 8);
  v53 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v55 = v179 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = v179 - v57;
  v223 = v52;
  v224 = *(v52 - 8);
  v59 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v220 = v179 - v61;
  *&v62 = v230;
  v226 = v7;
  *(&v62 + 1) = v7;
  *&v63 = v231;
  v221 = v8;
  *(&v63 + 1) = v8;
  v237 = v62;
  v238 = v63;
  v64 = type metadata accessor for ItemReconciliation();
  v65 = sub_1CF9E75D8();
  v225 = *(v65 - 8);
  v66 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = v179 - v67;
  v69 = *(v64 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v73 = v179 - v72;
  v74 = v236[2];
  v75 = v229;
  v76 = *(v228 + 72);
  result = sub_1CF68E230(&v235[v76], v232, v233, v234, v68);
  if (!v75)
  {
    v78 = v225;
    v185 = v65;
    v79 = v227;
    v186 = v58;
    v184 = v55;
    v183 = v76;
    v228 = v73;
    v229 = 0;
    if ((*(v69 + 48))(v68, 1, v64) == 1)
    {
      (*(v78 + 8))(v68, v185);
      return 0;
    }

    v80 = v79;
    v81 = v228;
    (*(v69 + 32))(v228, v68, v64);
    v82 = &v81[*(v64 + 52)];
    v83 = type metadata accessor for ItemReconciliationHalf();
    v84 = v222;
    v85 = v186;
    (*(v222 + 16))(v186, &v82[*(v83 + 48)], v79);
    v86 = v224;
    v87 = v223;
    if ((*(v224 + 48))(v85, 1, v223) == 1)
    {
      (*(v69 + 8))(v81, v64);
      (*(v84 + 8))(v85, v80);
      return 0;
    }

    v226 = v64;
    v88 = v87;
    v89 = v220;
    (*(v86 + 32))(v220, v85, v88);
    v90 = v217;
    v91 = *(v217 + 16);
    v92 = v214;
    v93 = v218;
    v225 = v217 + 16;
    v221 = v91;
    v91(v214, v82, v218);
    v94 = v215;
    v95 = *(v215 + 48);
    v96 = v86;
    v97 = v216;
    v186 = (v215 + 48);
    v185 = v95;
    if (v95(v92, 1, v216) == 1)
    {
      (*(v96 + 8))(v89, v88);
      (*(v69 + 8))(v228, v226);
      (*(v90 + 8))(v92, v93);
      return 0;
    }

    v182 = v69;
    v98 = *(v94 + 32);
    v214 = (v94 + 32);
    v181 = v98;
    v98(v219, v92, v97);
    v99 = v226;
    v100 = v94;
    if (sub_1CF07F1A0(v226))
    {
      v101 = v236[4];
      v102 = sub_1CF056558();
      v103 = v220;
      if (v102)
      {
LABEL_12:
        v104 = v217;
        goto LABEL_14;
      }

      v131 = v208;
      v132 = v219;
      v133 = v229;
      (*(*v101 + 240))(v219, 1, v232, v233, v234);
      v229 = v133;
      if (v133)
      {
        (*(v100 + 8))(v132, v97);
        (*(v224 + 8))(v103, v88);
        return (*(v182 + 8))(v228, v99);
      }

      v154 = v206;
      v155 = v131;
      v156 = v131;
      v157 = v207;
      if ((*(v206 + 48))(v155, 1, v207) == 1)
      {
        (*(v203 + 8))(v156, v204);
        goto LABEL_12;
      }

      v169 = v224;
      (*(v224 + 8))(v103, v88);
      v170 = v191;
      (*(v154 + 32))(v191, v156, v157);
      v171 = v220;
      (*(v169 + 16))(v220, &v170[*(v157 + 40)], v88);
      (*(v154 + 8))(v170, v157);
      v104 = v217;
      v103 = v171;
    }

    else
    {
      v103 = v220;
      v104 = v217;
    }

LABEL_14:
    v105 = v211;
    v106 = *(v100 + 16);
    v107 = v211;
    v211 = (v100 + 16);
    v208 = v106;
    (v106)(v107, v219, v97);
    v191 = *(v100 + 56);
    v179[1] = v100 + 56;
    (v191)(v105, 0, 1, v97);
    v108 = v105;
    v109 = v235;
    v110 = *(*v235 + 640);
    swift_beginAccess();
    v180 = *(v104 + 40);
    v179[0] = v104 + 40;
    v180(&v109[v110], v108, v218);
    swift_endAccess();
    v111 = v224;
    v112 = v184;
    v113 = v223;
    (*(v224 + 16))(v184, v103, v223);
    (*(v111 + 56))(v112, 0, 1, v113);
    v114 = *(*v109 + 656);
    swift_beginAccess();
    (*(v222 + 40))(&v109[v114], v112, v227);
    swift_endAccess();
    v115 = *&v228[*(type metadata accessor for ItemReconciliationHalf() + 36)];
    v116 = *(*v109 + 672);
    v109[v116] = (v115 & 0x12) != 0;
    v117 = (*(*v236 + 152))();
    v118 = v213;
    v119 = v212;
    if ((v117 & 0x4000) == 0)
    {
      v120 = 0;
      v121 = v103;
LABEL_16:
      v122 = v229;
LABEL_20:
      v123 = v236;
      goto LABEL_21;
    }

    v122 = v229;
    if ((v115 & 0x10) != 0 || *(v235 + 17) == 0x2000000)
    {
      v121 = v103;
      v120 = 1;
      goto LABEL_20;
    }

    v148 = v197;
    v149 = v196;
    v150 = v198;
    (*(v197 + 16))(v196, v228, v198);
    v151 = v199;
    v152 = (*(v205 + 48))(v149, 1, v199);
    v123 = v236;
    if (v152 == 1)
    {
      (*(v148 + 8))(v149, v150);
    }

    else
    {
      v166 = v205;
      v167 = v192;
      (*(v205 + 32))(v192, v149, v151);
      v168 = v229;
      (*(*v123[5] + 240))(v167, 1, v232, v233, v234);
      v229 = v168;
      if (v168)
      {
        (*(v166 + 8))(v167, v151);
        (*(v215 + 8))(v219, v216);
        (*(v224 + 8))(v103, v223);
        return (*(v182 + 8))(v228, v226);
      }

      (*(v166 + 8))(v167, v151);
      v172 = v188;
      v173 = v187;
      v174 = v189;
      (*(v188 + 32))(v187, v194, v189);
      v175 = v190;
      if ((*(v118 + 48))(v173, 1, v190) != 1)
      {
        (*(v118 + 32))(v119, v173, v175);
        v176 = &v119[*(v175 + 48)];
        v177 = type metadata accessor for ItemMetadata();
        v153 = v183;
        if (v176[*(v177 + 64)] == 1)
        {
          v178 = v176[*(v177 + 60)];
          (*(v118 + 8))(v119, v175);
          if (v178)
          {
            v121 = v103;
            v120 = 1;
            goto LABEL_16;
          }
        }

        else
        {
          (*(v118 + 8))(v119, v175);
        }

        v123 = v236;
LABEL_38:
        v122 = v229;
        v120 = (*(*v123[5] + 488))(&v235[v153], v232, v233, v234);
        if (v122)
        {
          (*(v215 + 8))(v219, v216);
          (*(v224 + 8))(v103, v223);
          return (*(v182 + 8))(v228, v226);
        }

        v121 = v103;
LABEL_21:
        v124 = v234;
        v125 = v235;
        v235[*(*v235 + 680)] = v120 & 1;
        v126 = (*(*v123[5] + 312))(&v125[v183], v232, v233, v124);
        if (!v122)
        {
          v128 = &v125[*(*v125 + 664)];
          *v128 = v126;
          v128[8] = v127 & 1;
          v239 = sub_1CF9E6DA8();
          v129 = v125[v116];
          if (v129 != 2 && (v129 & 1) != 0 && v228[*(v226 + 56)] == 1)
          {
            (v208)(v195, v219, v216);
            swift_storeEnumTagMultiPayload();
            sub_1CF9E6E58();
            sub_1CF9E6E18();
          }

          v130 = v209;
          (*(*v236[4] + 240))(v219, 1, v232, v233, v234);
          v229 = 0;
          v134 = &v125[*(*v125 + 688)];
          swift_beginAccess();
          (*(v203 + 40))(v134, v130, v204);
          swift_endAccess();
          v135 = 1;
          v136 = v207;
          v137 = (*(v206 + 48))(v134, 1, v207);
          v138 = v200;
          if (!v137)
          {
            (v208)(v200, &v134[*(v136 + 36)], v216);
            v135 = 0;
          }

          v139 = v216;
          (v191)(v138, v135, 1, v216);
          v140 = *(*v125 + 648);
          swift_beginAccess();
          v141 = v218;
          v180(&v125[v140], v138, v218);
          swift_endAccess();
          v142 = &v125[v140];
          v143 = v141;
          v144 = v201;
          v221(v201, v142, v141);
          v145 = v185(v144, 1, v139);
          v146 = v202;
          v147 = v217;
          if (v145 != 1)
          {
            v181(v202, v144, v139);
            TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
            v159 = *(TupleTypeMetadata3 + 48);
            v160 = *(TupleTypeMetadata3 + 64);
            v161 = v195;
            v162 = v208;
            (v208)(v195, v219, v139);
            v162(&v161[v159], v146, v139);
            v162(&v161[v160], v146, v139);
            swift_storeEnumTagMultiPayload();
            sub_1CF9E6E58();
            sub_1CF9E6E18();
            swift_beginAccess();
            sub_1CEFCCBDC((v125 + 56), &v237, &unk_1EC4C1BE0, &unk_1CF9FD400);
            v163 = *(v125 + 15);
            v164 = sub_1CF052C94();

            sub_1CEFCCC44(&v237, &unk_1EC4C1BE0, &unk_1CF9FD400);
            v165 = *(v215 + 8);
            v165(v146, v139);
            v165(v219, v139);
            (*(v224 + 8))(v220, v223);
            (*(v182 + 8))(v228, v226);
            return v164;
          }

          (*(v215 + 8))(v219, v139);
          (*(v224 + 8))(v220, v223);
          (*(v182 + 8))(v228, v226);
          (*(v147 + 8))(v144, v143);
          return 0;
        }

        (*(v215 + 8))(v219, v216);
        (*(v224 + 8))(v121, v223);
        return (*(v182 + 8))(v228, v226);
      }

      (*(v172 + 8))(v173, v174);
    }

    v153 = v183;
    goto LABEL_38;
  }

  return result;
}

id sub_1CF60583C(id result)
{
  if (result)
  {
    *&v13[0] = result;
    v1 = result;
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF1B7E64();
    if (swift_dynamicCast())
    {
      v3 = v14;
      v4 = [v14 userInfo];
      v5 = sub_1CF9E6638();

      if (!*(v5 + 16) || (v6 = sub_1CEFE4328(0xD000000000000019, 0x80000001CFA54B10), (v7 & 1) == 0))
      {

        memset(v13, 0, sizeof(v13));
        sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v12 = v1;
        return v1;
      }

      sub_1CEFD1104(*(v5 + 56) + 32 * v6, v13);

      sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v8 = [v3 userInfo];
      v9 = sub_1CF9E6638();

      if (*(v9 + 16) && (v10 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA54B30), (v11 & 1) != 0))
      {
        sub_1CEFD1104(*(v9 + 56) + 32 * v10, v13);

        if (swift_dynamicCast())
        {
          return v14;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1CF605A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v275 = a5;
  *&v274 = a4;
  v273 = a3;
  v272 = a2;
  v271 = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v276 = *(*v5 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(v6 + 624);
  v265 = v5;
  v10 = *(v6 + 608);
  v11 = v9;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *v278 = AssociatedTypeWitness;
  *&v278[8] = v12;
  *&v278[16] = AssociatedConformanceWitness;
  *&v278[24] = v14;
  v241 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v244 = *(TupleTypeMetadata2 - 8);
  v16 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v226 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v225 = &v216 - v19;
  v240 = sub_1CF9E5CF8();
  v239 = *(v240 - 8);
  v20 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v216 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v278 = v12;
  *&v278[8] = AssociatedTypeWitness;
  *&v278[16] = v14;
  v259 = AssociatedConformanceWitness;
  *&v278[24] = AssociatedConformanceWitness;
  v224 = type metadata accessor for ThrottlingKey();
  v232 = swift_getTupleTypeMetadata2();
  v223 = sub_1CF9E75D8();
  v229 = *(v223 - 8);
  v22 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v222 = &v216 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v228 = &v216 - v25;
  v245 = TupleTypeMetadata2;
  v242 = sub_1CF9E75D8();
  v237 = *(v242 - 8);
  v26 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v231 = &v216 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v230 = &v216 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v234 = &v216 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v243 = &v216 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v227 = &v216 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v233 = &v216 - v37;
  v250 = sub_1CF9E75D8();
  v249 = *(v250 - 8);
  v38 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v216 - v39;
  v251 = v12;
  v262 = *(v12 - 8);
  v40 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v247 = &v216 - v42;
  *v278 = v7;
  v235 = v10;
  *&v278[8] = v10;
  *&v278[16] = v276;
  v236 = v11;
  *&v278[24] = v11;
  v43 = type metadata accessor for ItemReconciliation();
  v252 = sub_1CF9E75D8();
  v253 = *(v252 - 8);
  v44 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v252);
  v260 = &v216 - v45;
  v256 = v43;
  v257 = *(v43 - 8);
  v46 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v246 = &v216 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v255 = &v216 - v50;
  v264 = *(AssociatedTypeWitness - 8);
  v51 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v258 = &v216 - v53;
  v269 = AssociatedTypeWitness;
  v54 = sub_1CF9E75D8();
  v266 = swift_getTupleTypeMetadata2();
  v261 = *(v266 - 8);
  v55 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v263 = &v216 - v56;
  v268 = *(v54 - 8);
  v57 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v216 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v216 - v62;
  v254 = v7;
  v64 = type metadata accessor for SnapshotItem();
  v65 = sub_1CF9E75D8();
  v267 = *(v65 - 8);
  v66 = *(v267 + 8);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v216 - v67;
  v69 = *(v64 - 8);
  v70 = *(v69 + 64);
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v216 - v73;
  v75 = v270;
  result = (*(**(v272 + 32) + 240))(v271, 1, v273, v274, v275, v72);
  if (!v75)
  {
    v77 = v267;
    v220 = v63;
    v218 = v60;
    v221 = v54;
    v78 = v269;
    v219 = v74;
    v270 = 0;
    if ((*(v69 + 48))(v68, 1, v64) == 1)
    {
      (*(v77 + 1))(v68, v65);
      return 0;
    }

    v216 = v69;
    v79 = v219;
    (*(v69 + 32))(v219, v68, v64);
    v217 = v64;
    v80 = v264;
    v81 = v220;
    (*(v264 + 16))(v220, &v79[*(v64 + 36)], v78);
    (*(v80 + 56))(v81, 0, 1, v78);
    v82 = v265;
    v83 = *(*v265 + 640);
    swift_beginAccess();
    v84 = *(v266 + 48);
    v85 = *(v268 + 16);
    v86 = v263;
    v87 = v81;
    v88 = v221;
    v85(v263, v87, v221);
    v267 = v84;
    v89 = v84 + v86;
    v90 = v88;
    v91 = v86;
    v92 = v80;
    v85(v89, &v82[v83], v90);
    v93 = *(v80 + 48);
    if (v93(v91, 1, v78) == 1)
    {
      v94 = *(v268 + 8);
      v95 = v221;
      v94(v220, v221);
      v96 = v93(v267 + v91, 1, v78);
      v97 = v262;
      if (v96 == 1)
      {
        v94(v91, v95);
        v98 = v217;
        goto LABEL_14;
      }
    }

    else
    {
      v99 = v218;
      v100 = v221;
      v85(v218, v91, v221);
      v101 = v267;
      if (v93(v267 + v91, 1, v78) != 1)
      {
        v102 = v99;
        v103 = v258;
        (*(v92 + 32))(v258, &v101[v91], v78);
        v104 = *(*(v259 + 40) + 8);
        v105 = sub_1CF9E6868();
        v106 = *(v92 + 8);
        v106(v103, v78);
        v107 = *(v268 + 8);
        v107(v220, v100);
        v106(v102, v78);
        v107(v91, v100);
        v97 = v262;
        v98 = v217;
        if (v105)
        {
LABEL_14:
          v108 = *(v272 + 16);
          v109 = v260;
          v110 = v270;
          sub_1CF68DDB0(v271, v273, v274, v275, v260);
          v270 = v110;
          if (v110)
          {
LABEL_15:
            v111 = v216;
            v112 = v219;
            return (*(v111 + 8))(v112, v98);
          }

          v113 = v257;
          v114 = v256;
          if ((*(v257 + 48))(v109, 1, v256) == 1)
          {
            (*(v216 + 8))(v219, v98);
            (*(v253 + 8))(v109, v252);
            return 0;
          }

          v115 = v109;
          v116 = v255;
          (*(v113 + 32))(v255, v115, v114);
          v117 = type metadata accessor for ItemReconciliationHalf();
          if ((v116[*(v117 + 36)] & 0x10) != 0)
          {
            type metadata accessor for NSFileProviderError(0);
            v277 = -2010;
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF60FA30(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
            sub_1CF9E57D8();
            (*(v113 + 8))(v116, v114);
            (*(v216 + 8))(v219, v98);
            return *v278;
          }

          v269 = v117;
          v276 = *&v116[*(v114 + 64) + 8];
          v118 = v249;
          v119 = &v116[*(v114 + 52)];
          v120 = v114;
          v121 = v248;
          v122 = v250;
          (*(v249 + 16))(v248, v119, v250);
          v123 = v251;
          if ((*(v97 + 48))(v121, 1, v251) == 1)
          {
            (*(v118 + 8))(v121, v122);
            v124 = *(v272 + 24);
            v125 = *(*v124 + 384);
            v126 = v270;
            v127 = v125(v271, 0, v276, 0, v273, v274, v275);
            v270 = v126;
            if (v126)
            {
              (*(v113 + 8))(v255, v120);
LABEL_49:
              v98 = v217;
              goto LABEL_50;
            }

            v269 = v124;
            *v278 = v127;
            v132 = v245;
            sub_1CF9E6E58();
            WitnessTable = swift_getWitnessTable();
            v134 = v243;
            sub_1CF9E7118();

            v135 = *(v244 + 48);
            if (v135(v134, 1, v132) == 1)
            {
              v268 = WitnessTable;
              v136 = *(v237 + 8);
              v136(v134, v242);
              v137 = v270;
              v138 = v125(v271, 23, v276, 0, v273, v274, v275);
              v270 = v137;
              if (v137)
              {
                (*(v257 + 8))(v255, v256);
LABEL_66:
                v98 = v217;
                goto LABEL_15;
              }

              v267 = v136;
              *v278 = v138;
              v174 = v234;
              sub_1CF9E7118();

              v175 = v245;
              if (v135(v174, 1, v245) == 1)
              {
                v176 = v174;
                v177 = v242;
                v178 = &v282;
LABEL_53:
                (*(v178 - 32))(v176, v177);
LABEL_54:
                v130 = v256;
                v98 = v217;
                v113 = v257;
                v116 = v255;
LABEL_55:
                v179 = v270;
                v180 = (*(**(v272 + 24) + 384))(v271, 83, v276, 0, v273, v274, v275);
                v270 = v179;
                if (!v179)
                {
                  *v278 = v180;
                  v181 = v245;
                  sub_1CF9E6E58();
                  swift_getWitnessTable();
                  v182 = v230;
                  sub_1CF9E7118();
                  (*(v113 + 8))(v116, v130);
                  (*(v216 + 8))(v219, v98);

                  v183 = v237;
                  v184 = v231;
                  v185 = v182;
                  v186 = v242;
                  (*(v237 + 32))(v231, v185, v242);
                  v187 = v244;
                  if ((*(v244 + 48))(v184, 1, v181) != 1)
                  {
                    v205 = *(v187 + 32);
                    v206 = v225;
                    v205(v225, v184, v181);
                    v207 = v226;
                    v205(v226, v206, v181);
                    v208 = &v207[*(v181 + 48)];
                    v209 = *(v208 + 3);
                    *&v278[32] = *(v208 + 2);
                    v279 = v209;
                    v280 = *(v208 + 8);
                    v210 = *v208;
                    *&v278[16] = *(v208 + 1);
                    *v278 = v210;
                    v211 = *&v278[40];
                    v212 = *&v278[40];
                    sub_1CF2CA1E8(v278);
                    (*(*(v241 - 8) + 8))(v207);
                    return v211;
                  }

                  (*(v183 + 8))(v184, v186);
                  return 0;
                }

                goto LABEL_26;
              }

              v203 = &v174[*(v175 + 48)];
              v142 = *v203;
              v275 = *(v203 + 24);
              v274 = *(v203 + 8);
              v143 = *(v203 + 5);
              v144 = v203[48];
              v145 = *(v203 + 7);
              v146 = *(v203 + 8);
              (*(*(v241 - 8) + 8))(v174);
              goto LABEL_36;
            }

            v140 = &v134[*(v132 + 48)];
            v141 = v134;
            goto LABEL_34;
          }

          v128 = v247;
          (*(v97 + 32))(v247, v121, v123);
          v129 = v246;
          v130 = v120;
          v131 = v270;
          sub_1CF959950(v272, v273, v120, v274, v275, v246);
          if (v131)
          {
            v270 = v131;
            (*(v97 + 8))(v128, v123);
LABEL_26:
            (*(v113 + 8))(v116, v130);
LABEL_50:
            v112 = v219;
            v111 = v216;
            return (*(v111 + 8))(v112, v98);
          }

          if ((*(v129 + *(v269 + 10)) & 2) != 0)
          {
            v164 = *(v272 + 24);
            v165 = (*v164 + 384);
            v166 = *v165;
            v167 = (*v165)(v271, 1, v276, 0, v273, v274, v275);
            v270 = 0;
            v269 = v164;
            *v278 = v167;
            v188 = v245;
            sub_1CF9E6E58();
            swift_getWitnessTable();
            v189 = v233;
            sub_1CF9E7118();

            v190 = *(v244 + 48);
            if (v190(v189, 1, v188) == 1)
            {
              v268 = *(v237 + 8);
              (v268)(v189, v242);
              v191 = v270;
              v192 = v166(v271, 23, v276, 0, v273, v274, v275);
              v270 = v191;
              if (!v191)
              {
                *v278 = v192;
                v193 = v227;
                sub_1CF9E7118();
                (*(v257 + 8))(v246, v256);
                (*(v262 + 8))(v247, v251);

                if (v190(v193, 1, v245) == 1)
                {
                  v176 = v227;
                  v177 = v242;
                  v178 = &v283;
                  goto LABEL_53;
                }

                v141 = v227;
                v140 = &v227[*(v245 + 48)];
LABEL_34:
                v142 = *v140;
                v275 = *(v140 + 24);
                v274 = *(v140 + 8);
                v143 = *(v140 + 5);
                v144 = v140[48];
                v145 = *(v140 + 7);
                v146 = *(v140 + 8);
                v147 = &v273;
LABEL_35:
                (*(*(*(v147 - 32) - 8) + 8))(v141);
LABEL_36:
                v148 = v256;
                goto LABEL_37;
              }

LABEL_65:
              v201 = *(v257 + 8);
              v202 = v256;
              v201(v246, v256);
              (*(v262 + 8))(v247, v251);
              v201(v255, v202);
              goto LABEL_66;
            }

            v204 = &v189[*(v245 + 48)];
            v142 = *v204;
            v275 = *(v204 + 24);
            v274 = *(v204 + 8);
            v143 = *(v204 + 5);
            v144 = v204[48];
            v145 = *(v204 + 7);
            v146 = *(v204 + 8);
            (*(*(v241 - 8) + 8))(v189);
            v148 = v256;
            (*(v257 + 8))(v246, v256);
            (*(v262 + 8))(v247, v251);
          }

          else
          {
            v270 = 0;
            v139 = v129 + *(v120 + 52);
            if ((*(v139 + *(type metadata accessor for ItemReconciliationHalf() + 40)) & 2) == 0)
            {
              (*(v113 + 8))(v129, v120);
              (*(v97 + 8))(v247, v251);
              goto LABEL_55;
            }

            v169 = *(**(v272 + 24) + 376);
            v170 = v247;
            v269 = *(v272 + 24);
            v171 = v270;
            v172 = v169(v247, 1, v276, 0, v273, v274, v275);
            v270 = v171;
            if (v171)
            {
              v173 = *(v113 + 8);
              v173(v246, v120);
              (*(v97 + 8))(v170, v251);
              v173(v255, v120);
              goto LABEL_49;
            }

            *v278 = v172;
            v194 = v232;
            sub_1CF9E6E58();
            swift_getWitnessTable();
            v195 = v228;
            sub_1CF9E7118();

            v196 = *(*(v194 - 8) + 48);
            if (v196(v195, 1, v194) == 1)
            {
              v197 = *(v229 + 8);
              v229 += 8;
              v198 = v197;
              v197(v195, v223);
              v199 = v270;
              v200 = v169(v170, 23, v276, 0, v273, v274, v275);
              v270 = v199;
              if (!v199)
              {
                *v278 = v200;
                v214 = v222;
                sub_1CF9E7118();
                (*(v257 + 8))(v246, v256);
                (*(v262 + 8))(v247, v251);

                if (v196(v214, 1, v232) == 1)
                {
                  v198(v222, v223);
                  goto LABEL_54;
                }

                v141 = v222;
                v215 = &v222[*(v232 + 48)];
                v142 = *v215;
                v275 = *(v215 + 24);
                v274 = *(v215 + 8);
                v143 = *(v215 + 5);
                v144 = v215[48];
                v145 = *(v215 + 7);
                v146 = *(v215 + 8);
                v147 = &v256;
                goto LABEL_35;
              }

              goto LABEL_65;
            }

            v213 = &v195[*(v232 + 48)];
            v142 = *v213;
            v275 = *(v213 + 24);
            v274 = *(v213 + 8);
            v143 = *(v213 + 5);
            v144 = v213[48];
            v145 = *(v213 + 7);
            v146 = *(v213 + 8);
            (*(*(v224 - 8) + 8))(v195);
            v148 = v256;
            (*(v257 + 8))(v246, v256);
            (*(v262 + 8))(v170, v251);
          }

LABEL_37:
          v149 = v216;
          v150 = v240;
          v151 = v269;
          v278[0] = v142;
          *&v278[8] = v274;
          *&v278[24] = v275;
          *&v278[40] = v143;
          LOBYTE(v279) = v144;
          *(&v279 + 1) = v145;
          v280 = v146;
          v152 = v238;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v154 = v153;
          result = (*(v239 + 8))(v152, v150);
          v155 = v154 * 1000000000.0;
          if (COERCE__INT64(fabs(v154 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else
          {
            v156 = v217;
            if (v155 > -9.22337204e18)
            {
              if (v155 < 9.22337204e18)
              {
                v157 = v155 - v276;
                if (!__OFSUB__(v155, v276))
                {
                  (*(*v151 + 120))(&v281, result);
                  result = sub_1CF338754(&v281);
                  v158 = v284 - v157;
                  if (!__OFSUB__(v284, v157))
                  {
                    v159 = v257;
                    v160 = v255;
                    if (v158 <= 0)
                    {
                      (*(v257 + 8))(v255, v148);
                      (*(v149 + 8))(v219, v156);
                      v168 = v143;
                      sub_1CF2CA1E8(v278);
                      return v143;
                    }

                    v161 = sub_1CF60583C(v143);
                    if (v161)
                    {
                      v162 = v161;
                      _s3__C4CodeOMa_1(0);
                      v277 = -1004;
                      v163 = v162;
                      sub_1CF60FA30(&qword_1EDEA3590, _s3__C4CodeOMa_1);
                      sub_1CF9E5658();

                      sub_1CF2CA1E8(v278);
                      (*(v159 + 8))(v160, v148);
                      (*(v149 + 8))(v219, v156);
                      return v162;
                    }

                    sub_1CF2CA1E8(v278);
                    (*(v159 + 8))(v160, v148);
                    (*(v149 + 8))(v219, v156);
                    return 0;
                  }

LABEL_79:
                  __break(1u);
                  return result;
                }

LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

LABEL_77:
              __break(1u);
              goto LABEL_78;
            }
          }

          __break(1u);
          goto LABEL_77;
        }

LABEL_10:
        (*(v216 + 8))(v219, v98);
        return 0;
      }

      (*(v268 + 8))(v220, v100);
      (*(v80 + 8))(v99, v78);
    }

    (*(v261 + 8))(v91, v266);
    v98 = v217;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1CF607D88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__n128 *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v237 = a8;
  v238 = a7;
  v233 = a5;
  v234 = a6;
  v235 = a4;
  v232 = a3;
  v241 = a1;
  v9 = v8;
  v10 = *(*v8 + 616);
  v11 = *v8;
  v12 = *(v11 + 79);
  v13 = v9;
  v226 = type metadata accessor for SnapshotItem();
  v14 = sub_1CF9E75D8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v227 = &v191 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v225 = type metadata accessor for ItemState();
  v18 = sub_1CF9E75D8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v222 = &v191 - v20;
  v230 = v11;
  v242 = v13;
  v21 = *(v11 + 78);
  v22 = *(v11 + 76);
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v251.n128_u64[0] = v23;
  v251.n128_u64[1] = v24;
  v252.n128_u64[0] = AssociatedConformanceWitness;
  v252.n128_u64[1] = v26;
  v219 = type metadata accessor for FileItemVersion();
  v27 = sub_1CF9E75D8();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v220 = &v191 - v29;
  v30.n128_u64[0] = v21;
  v30.n128_u64[1] = v12;
  v240 = v30;
  v30.n128_u64[0] = v22;
  v30.n128_u64[1] = v10;
  v231 = v30;
  v30.n128_u64[0] = v10;
  v30.n128_u64[1] = v22;
  v239 = v30;
  v31.n128_u64[0] = v12;
  v31.n128_u64[1] = v21;
  v236 = v31;
  v251 = v30;
  v252 = v31;
  v32 = type metadata accessor for Reconciliation.ReconcileAfterPropagation();
  v223 = *(v32 - 8);
  v224 = v32;
  v33 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v221 = (&v191 - v34);
  v217 = v21;
  v218 = v22;
  v35 = type metadata accessor for ItemReconciliationHalf();
  v196 = *(v35 - 8);
  v197 = v35;
  v36 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v195 = &v191 - v37;
  v38 = type metadata accessor for ItemReconciliationHalf();
  v193 = *(v38 - 8);
  v194 = v38;
  v39 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v192 = &v191 - v40;
  v251 = v239;
  v252 = v236;
  v41 = type metadata accessor for ItemReconciliation();
  v42 = sub_1CF9E75D8();
  v199 = *(v42 - 8);
  v200 = v42;
  v43 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v208 = &v191 - v44;
  v205 = v41;
  v203 = *(v41 - 8);
  v45 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v201 = &v191 - v47;
  v48 = swift_getAssociatedTypeWitness();
  v49 = swift_getAssociatedTypeWitness();
  v50 = swift_getAssociatedConformanceWitness();
  v206 = v10;
  v207 = v12;
  v51 = swift_getAssociatedConformanceWitness();
  v251.n128_u64[0] = v48;
  v251.n128_u64[1] = v49;
  v252.n128_u64[0] = v50;
  v252.n128_u64[1] = v51;
  v52 = type metadata accessor for FileItemVersion();
  v53 = sub_1CF9E75D8();
  v214 = *(v53 - 8);
  v215 = v53;
  v54 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v229 = &v191 - v55;
  v56 = sub_1CF9E75D8();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v191 - v59;
  v228 = *(v52 - 8);
  v61 = v228[8];
  MEMORY[0x1EEE9AC00](v62);
  v209 = &v191 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v212 = &v191 - v65;
  v66 = *(AssociatedTypeWitness - 8);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v204 = &v191 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v236.n128_u64[0] = &v191 - v71;
  v202 = v72;
  MEMORY[0x1EEE9AC00](v73);
  v213 = &v191 - v74;
  v75 = v242;
  v198 = v241[4];
  v76 = *(v198 + 16);
  v77 = *(v230 + 80);
  swift_beginAccess();
  v78 = v75 + v77;
  v79 = v66;
  (*(v57 + 16))(v60, v78, v56);
  v80 = (*(v66 + 48))(v60, 1, AssociatedTypeWitness);
  v239.n128_u64[0] = v76;
  v210 = v52;
  v211 = AssociatedTypeWitness;
  v216 = v66;
  if (v80 == 1)
  {
    v81 = *(v57 + 8);

    v81(v60, v56);
    v251 = v231;
    v252 = v240;
    type metadata accessor for Propagation.PropagationError();
    swift_getWitnessTable();
    v82 = swift_allocError();
    v84 = v83;
    v85 = swift_getAssociatedTypeWitness();
    v86 = (v84 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v85 - 8) + 16))(v84, v242 + *(*v242 + 576), v85);
    *v86 = 0xD000000000000010;
    v86[1] = 0x80000001CFA54A70;
    swift_storeEnumTagMultiPayload();
    v240.n128_u64[0] = v82;
    swift_willThrow();
LABEL_11:
    v236.n128_u32[0] = 0;
    v231.n128_u64[0] = 0;
    v123 = v237;
    v122 = v238;
    v252.n128_u64[1] = v238;
    *&v253 = v237;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v251);
    v125 = *(v122 - 8);
    v126 = *(v125 + 16);
    v127 = v235;
    v217 = v125 + 16;
    v218 = v126;
    v126(boxed_opaque_existential_0, v235, v122);
    v128 = v220;
    (*(*(v219 - 8) + 56))(v220, 1, 1);
    v129 = v242;
    v130 = v129 + *(*v129 + 664);
    v230 = *v130;
    LODWORD(v229) = v130[8];
    v131 = v222;
    (*(*(v225 - 8) + 56))(v222, 1, 1);
    v132 = v227;
    (*(*(v226 - 8) + 56))(v227, 1, 1);
    v247.n128_u64[0] = 0;
    v133 = *(v129 + *(*v129 + 584));

    v134 = v240.n128_u64[0];
    v135 = v240.n128_u64[0];
    v136 = v133;
    v190 = v133;
    v137 = v221;
    sub_1CF98C50C(v129, v128, v230, v229, v131, v132, &v247, 0, v221, 0, v134, v190);
    v138 = v224;
    v139 = v231.n128_u64[0];
    v140 = sub_1CF98CA58(v241, v232, v127, v224, v122, v123);
    if (v139)
    {
      (*(v223 + 8))(v137, v138);
      sub_1CEFCCC44(&v251, &unk_1EC4C1B30, &qword_1CFA05300);
      v252.n128_u64[1] = v122;
      *&v253 = v123;
      v141 = __swift_allocate_boxed_opaque_existential_0(&v251);
      v218(v141, v127, v122);
      v142 = v139;
      v233(&v251, 0, 0, 0, v139);
    }

    else
    {
      v139 = v140;
      (*(v223 + 8))(v137, v138);
      v233(&v251, 0, 0, 0, v139);
    }

    result = sub_1CEFCCC44(&v251, &unk_1EC4C1B30, &qword_1CFA05300);
    if (v236.n128_u32[0])
    {
      (v228[1])(v212, v210);
      return (*(v216 + 8))(v213, v211);
    }

    return result;
  }

  v87 = *(v66 + 32);
  v87(v236.n128_u64[0], v60, AssociatedTypeWitness);
  v88 = v242;
  v89 = v79;
  v90 = *(*v242 + 656);
  swift_beginAccess();
  v91 = v88 + v90;
  v92 = v229;
  (*(v214 + 16))(v229, v91, v215);
  v93 = v228;
  v94 = AssociatedTypeWitness;
  if ((v228[6])(v92, 1, v52) == 1)
  {
    v95 = *(v214 + 8);

    v95(v229, v215);
    v251 = v231;
    v252 = v240;
    type metadata accessor for Propagation.PropagationError();
    swift_getWitnessTable();
    v96 = swift_allocError();
    v98 = v97;
    v99 = swift_getAssociatedTypeWitness();
    v100 = (v98 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v99 - 8) + 16))(v98, v88 + *(*v88 + 576), v99);
    *v100 = 0xD000000000000011;
    v100[1] = 0x80000001CFA54A90;
    swift_storeEnumTagMultiPayload();
    v240.n128_u64[0] = v96;
    swift_willThrow();
    v101 = v89;
LABEL_10:
    (*(v101 + 8))(v236.n128_u64[0], v94);
    goto LABEL_11;
  }

  v102 = v93;
  v103 = v209;
  (v93[4])(v209, v229, v52);
  if (*(v88 + *(*v88 + 672)) == 2)
  {
    v251 = v231;
    v252 = v240;
    type metadata accessor for Propagation.PropagationError();
    v104 = v52;
    v105 = v93;
    swift_getWitnessTable();
    v106 = v103;
    v107 = swift_allocError();
    v109 = v108;
    v110 = swift_getAssociatedTypeWitness();
    v111 = (v109 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v110 - 8) + 16))(v109, v242 + *(*v242 + 576), v110);
    *v111 = 0xD000000000000016;
    v111[1] = 0x80000001CFA54AB0;
    swift_storeEnumTagMultiPayload();
    v240.n128_u64[0] = v107;
    swift_willThrow();
    v112 = v105[1];

    v113 = v106;
LABEL_9:
    v112(v113, v104);
    v101 = v216;
    goto LABEL_10;
  }

  v114 = v240;
  v115 = v231;
  if (*(v242 + *(*v88 + 680)) == 2)
  {
    v251 = v231;
    v252 = v240;
    type metadata accessor for Propagation.PropagationError();
    v104 = v52;
    v116 = v93;
    swift_getWitnessTable();
    v117 = swift_allocError();
    v119 = v118;
    v120 = swift_getAssociatedTypeWitness();
    v121 = (v119 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v120 - 8) + 16))(v119, v242 + *(*v242 + 576), v120);
    *v121 = 0xD000000000000011;
    v121[1] = 0x80000001CFA54AD0;
    swift_storeEnumTagMultiPayload();
    v240.n128_u64[0] = v117;
    swift_willThrow();
    v112 = v116[1];

    v113 = v209;
    goto LABEL_9;
  }

  v231.n128_u32[0] = *(v88 + *(*v88 + 672));
  v240.n128_u64[0] = v87;
  v144 = (v216 + 16);
  v145 = v213;
  v230 = *(v216 + 16);
  v230(v213, v236.n128_u64[0], AssociatedTypeWitness, v114, v115);
  v146 = AssociatedTypeWitness;
  v147 = v102 + 2;
  v148 = v209;
  (v102[2])(v212, v209, v52);
  v149 = v52;
  v150 = v241[2];
  v151 = *(v237 + 8);

  sub_1CF68DDB0(v145, v235, v238, v151, v208);
  v152 = *(v147 - 1);
  v235 = (v147 - 1);
  v229 = v152;
  (v152)(v148, v149);
  v153 = *(v144 - 1);
  v154 = v236.n128_u64[0];
  v236.n128_u64[0] = (v144 - 8);
  v228 = v153;
  (v153)(v154, v146);
  v155 = v203;
  v156 = v208;
  v157 = v205;
  if ((*(v203 + 48))(v208, 1, v205) == 1)
  {
    (*(v199 + 8))(v156, v200);
    v251 = 0uLL;
    v252.n128_u64[0] = 0;
    v252.n128_u64[1] = 0xB000000000000000;
    v253 = 0u;
    v254 = 0u;
    v158 = v216;
  }

  else
  {
    v227 = v144;
    v159 = v201;
    (*(v155 + 32))(v201, v156, v157);
    if (sub_1CF056558())
    {
      v161 = v193;
      v160 = v194;
      v162 = v159;
      v163 = v192;
      (*(v193 + 16))(v192, v162, v194);
      (*(v155 + 8))(v162, v157);
      v164 = &v163[*(v160 + 68)];
      v165 = *(v164 + 1);
      v247 = *v164;
      v248 = v165;
      v166 = *(v164 + 3);
      v249 = *(v164 + 2);
      v250 = v166;
      sub_1CEFCCBDC(&v247, &v251, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v161 + 8))(v163, v160);
    }

    else
    {
      v168 = v195;
      v167 = v196;
      v169 = v197;
      (*(v196 + 16))(v195, &v159[*(v157 + 52)], v197);
      (*(v155 + 8))(v159, v157);
      v170 = &v168[*(v169 + 68)];
      v171 = *(v170 + 1);
      v247 = *v170;
      v248 = v171;
      v172 = *(v170 + 3);
      v249 = *(v170 + 2);
      v250 = v172;
      sub_1CEFCCBDC(&v247, &v251, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v167 + 8))(v168, v169);
    }

    v251 = v247;
    v252 = v248;
    v253 = v249;
    v254 = v250;
    v158 = v216;
  }

  v173 = v218;
  v174 = v242;
  v175 = *v242;
  v227 = *(v174 + *(*v174 + 584));
  v243 = v251;
  v244 = v252;
  v245 = v253;
  v246 = v254;
  v176 = v204;
  v177 = v211;
  (v230)(v204, v213, v211);
  v178 = (*(v158 + 80) + 96) & ~*(v158 + 80);
  v179 = v177;
  v180 = (v202 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
  v181 = swift_allocObject();
  v182 = v206;
  v181[2] = v173;
  v181[3] = v182;
  v183 = v217;
  v181[4] = v238;
  v181[5] = v183;
  v184 = v237;
  v181[6] = v207;
  v181[7] = v184;
  v181[8] = v241;
  v181[9] = v174;
  v185 = v234;
  v181[10] = v233;
  v181[11] = v185;
  (v240.n128_u64[0])(v181 + v178, v176, v179);
  v186 = v239.n128_u64[0];
  *(v181 + v180) = v232;
  v187 = *(*v186 + 664);
  sub_1CEFCCBDC(&v251, &v247, &unk_1EC4BF260, &unk_1CFA01B60);

  v188 = v212;
  v189 = v213;
  v187(v213, v231.n128_u8[0] & 1, v212, v227, &v243, sub_1CF60E348, v181);

  sub_1CEFCCC44(&v251, &unk_1EC4BF260, &unk_1CFA01B60);
  v247 = v243;
  v248 = v244;
  v249 = v245;
  v250 = v246;
  sub_1CEFCCC44(&v247, &unk_1EC4BF260, &unk_1CFA01B60);
  (v229)(v188, v210);
  return (v228)(v189, v211);
}

uint64_t sub_1CF6094D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a7;
  v60 = a5;
  v47 = a4;
  v48 = a3;
  v52 = a1;
  v45 = a8;
  v46 = a9;
  v57 = a2;
  v12 = *a2;
  v55 = a6;
  v56 = v12;
  v58 = *(v12 + 96);
  v53 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v42 - v15;
  v44 = &v42 - v15;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v42 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v43 = &v42 - v20;
  v22 = swift_allocObject();
  v54 = v22;
  v22[2] = a8;
  v22[3] = a9;
  v22[4] = a3;
  v23 = swift_allocObject();
  v51 = v23;
  v24 = v60;
  *(v23 + 16) = a4;
  *(v23 + 24) = v24;
  (*(v18 + 16))(v21, v52, v17);
  v25 = v49;
  v26 = v16;
  v27 = v50;
  (*(v49 + 16))(v26, v55, v50);
  v28 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v29 = (v19 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v55 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v57;
  v34 = v56;
  *(v32 + 2) = *(v56 + 88);
  v35 = v45;
  *(v32 + 3) = v53;
  *(v32 + 4) = v35;
  *(v32 + 5) = *(v34 + 104);
  v36 = v46;
  *(v32 + 6) = v58;
  *(v32 + 7) = v36;
  (*(v18 + 32))(&v32[v28], v43, v42);
  (*(v25 + 32))(&v32[v29], v44, v27);
  v37 = v47;
  *&v32[v55] = v48;
  *&v32[v30] = v33;
  v38 = v60;
  *&v32[v31] = v59;
  v39 = &v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v39 = v37;
  *(v39 + 1) = v38;
  v40 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF60E410, v54, sub_1CF559418, v51, sub_1CF60E43C, v32, v40, MEMORY[0x1E69E6158]);
}

void sub_1CF609934(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, void (*a7)(__int128 *, void, char *, uint64_t, char *), uint64_t a8)
{
  v236 = a8;
  v237 = a7;
  v247 = a6;
  v250 = a5;
  v239 = a3;
  v254 = a2;
  v249 = a1;
  v9 = *a4;
  v10 = *(*a4 + 632);
  v11 = *(*a4 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v245 = type metadata accessor for ItemState();
  v13 = sub_1CF9E75D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v260 = &v216 - v15;
  v16 = *(v9 + 624);
  v248 = a4;
  v17 = *(v9 + 608);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v262 = v18;
  *(&v262 + 1) = v19;
  *&v263 = v20;
  *(&v263 + 1) = v21;
  v242 = type metadata accessor for FileItemVersion();
  v22 = sub_1CF9E75D8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v259 = &v216 - v24;
  *&v25 = v11;
  *(&v25 + 1) = v17;
  *&v26 = v10;
  *(&v26 + 1) = v16;
  v218 = v26;
  v262 = v25;
  v263 = v26;
  v219 = v25;
  v246 = type metadata accessor for Reconciliation.ReconcileAfterPropagation();
  v244 = *(v246 - 8);
  v27 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v243 = &v216 - v28;
  v29 = type metadata accessor for SnapshotItem();
  v255 = *(v29 - 8);
  v30 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v238 = &v216 - v31;
  v252 = *(v11 - 8);
  v32 = *(v252 + 8);
  MEMORY[0x1EEE9AC00](v33);
  v231 = &v216 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v240 = &v216 - v36;
  v229 = sub_1CF9E75D8();
  v227 = *(v229 - 8);
  v37 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v224 = &v216 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v226 = &v216 - v40;
  v234 = AssociatedTypeWitness;
  v235 = *(AssociatedTypeWitness - 8);
  v41 = *(v235 + 8);
  MEMORY[0x1EEE9AC00](v42);
  v230 = &v216 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v220 = &v216 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v222 = &v216 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v225 = &v216 - v49;
  v232 = v10;
  v50 = type metadata accessor for FileTreeError();
  v228 = *(v50 - 8);
  v51 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v221 = &v216 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v216 - v54;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v57 = sub_1CF9E8238();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v61 = (&v216 - v60);
  v253 = v29;
  v62 = sub_1CF9E75D8();
  v257 = *(v62 - 8);
  v258 = v62;
  v63 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v256 = &v216 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v241 = &v216 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v216 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v223 = &v216 - v71;
  v73 = MEMORY[0x1EEE9AC00](v72);
  v261 = &v216 - v74;
  (*(v58 + 16))(v61, v254, v57, v73);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v217 = v50;
    v108 = *(v61 + *(TupleTypeMetadata2 + 48));
    v109 = v252;
    if ((*(v252 + 6))(v61, 1, v11) == 1)
    {
      v79 = v255;
      (*(v255 + 56))(v261, 1, 1, v253);
      v110 = v108;
      v111 = 0;
      v112 = v257;
      v113 = v258;
      if (v108)
      {
LABEL_12:
        *&v262 = 0x3A7265766D6F6420;
        *(&v262 + 1) = 0xE800000000000000;
        v254 = v108;
        v114 = v108;
        v115 = [v114 description];
        v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v118 = v117;

        MEMORY[0x1D3868CC0](v116, v118);
        v79 = v255;

        v119 = *(&v262 + 1);
        v239 = v262;
LABEL_18:
        v240 = v111;
        v138 = v253;
        v78 = v261;
        goto LABEL_26;
      }
    }

    else
    {
      v120 = v240;
      (*(v109 + 4))(v240, v61, v11);
      v121 = v231;
      (*(v109 + 2))(v231, v120, v11);
      v122 = v261;
      v123 = v232;
      sub_1CF06B77C(v121, v11, v232, v261);
      (*(v255 + 56))(v122, 0, 1, v253);
      v124 = v123[8];
      v125 = v108;
      v126 = v230;
      v231 = v124;
      (v124)(v11, v123);
      v127 = *(*(AssociatedConformanceWitness + 40) + 8);
      v128 = v239;
      v129 = v234;
      LOBYTE(v121) = sub_1CF9E6868();
      v130 = v235;
      (*(v235 + 1))(v126, v129);
      if (v121)
      {
        v111 = 0;
        v112 = v257;
        v131 = v240;
      }

      else
      {
        swift_getWitnessTable();
        v111 = swift_allocError();
        v254 = v108;
        v133 = v132;
        v134 = *(swift_getTupleTypeMetadata2() + 48);
        v130[2](v133, v128, v129);
        (v130[7])(v133, 0, 1, v129);
        v135 = v240;
        (v231)(v11, v123);
        v108 = v254;
        swift_storeEnumTagMultiPayload();
        v136 = v111;
        v112 = v257;
        v131 = v135;
      }

      (*(v252 + 1))(v131, v11);
      v137 = v111;
      v79 = v255;
      v113 = v258;
      if (v108)
      {
        goto LABEL_12;
      }
    }

    v239 = 0;
    v254 = 0;
    v119 = 0xE000000000000000;
    goto LABEL_18;
  }

  v264 = *v61;
  v75 = v264;
  v76 = v264;
  v77 = swift_dynamicCast();
  v78 = v261;
  v79 = v255;
  if (v77)
  {
    v80 = v50;
    v81 = v55;
    v252 = v75;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      v139 = v78;
      v141 = v249[3];
      v140 = v249[4];
      v142 = __swift_project_boxed_opaque_existential_1(v249, v141);
      v143 = v251;
      (*(*v250[4] + 240))(v239, 1, v142, v141, *(v140 + 8));
      if (v143)
      {

        (*(v228 + 8))(v55, v50);
        goto LABEL_21;
      }

      v251 = 0;
      v112 = v257;
      v113 = v258;
      v78 = v139;
      (*(v257 + 32))(v139, v69, v258);
      v240 = v252;
      (*(v228 + 8))(v55, v80);
LABEL_41:

      v239 = 0;
      v111 = 0;
      v254 = 0;
      v119 = 0xE000000000000000;
      v138 = v253;
      v79 = v255;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v217 = v50;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v83 = v234;
      v84 = v229;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v86 = *(TupleTypeMetadata3 + 12);
      v232 = TupleTypeMetadata3;
      v87 = *&v81[*(TupleTypeMetadata3 + 16)];
      v88 = v235;
      v89 = v225;
      v240 = *(v235 + 4);
      (v240)(v225, v81, v83);
      v90 = *(*(AssociatedConformanceWitness + 40) + 8);
      v91 = sub_1CF9E6868();
      v92 = *(v88 + 1);
      v254 = v88 + 8;
      AssociatedConformanceWitness = v92;
      v92(v89, v83);
      if (v91)
      {
        v231 = v87;
        v93 = &v81[v86];
        v94 = v227;
        v95 = v226;
        (*(v227 + 32))(v226, v93, v84);
        v96 = v224;
        (*(v94 + 16))(v224, v95, v84);
        v97 = v84;
        if ((*(v88 + 6))(v96, 1, v83) == 1)
        {
          (*(v94 + 8))(v96, v84);
          v98 = v252;
          v99 = v252;
          v100 = v98;
          v101 = v250;
        }

        else
        {
          v174 = v83;
          v175 = v222;
          (v240)(v222, v96, v83);
          v177 = v249[3];
          v176 = v249[4];
          v178 = __swift_project_boxed_opaque_existential_1(v249, v177);
          v179 = v251;
          v180 = sub_1CF605A5C(v175, v250, v178, v177, *(v176 + 8));
          v182 = v252;
          if (v179)
          {

            (AssociatedConformanceWitness)(v175, v174);
            (*(v94 + 8))(v226, v97);
            goto LABEL_21;
          }

          v184 = v180;
          LODWORD(v230) = v181;
          v251 = 0;
          v185 = *(v232 + 12);
          v186 = *(v232 + 16);
          v187 = v235;
          v188 = *(v235 + 2);
          v189 = v221;
          v188(v221, v239, v174);
          v188(&v189[v185], v175, v174);
          v190 = &v189[v185];
          v191 = v189;
          (*(v187 + 7))(v190, 0, 1, v174);
          v192 = v175;
          if (v184)
          {
            *&v189[v186] = v184;
          }

          else
          {
            v193 = v231;
            *&v189[v186] = v231;
            v194 = v193;
          }

          v101 = v250;
          v195 = v217;
          swift_storeEnumTagMultiPayload();
          WitnessTable = swift_getWitnessTable();
          v240 = swift_allocError();
          v197 = *(v228 + 16);
          v197(v198, v191, v195);
          if (v230)
          {
            v225 = v197;
            v230 = WitnessTable;
            v199 = v249[3];
            v235 = v249[4];
            v232 = __swift_project_boxed_opaque_existential_1(v249, v199);
            v200 = v101[4];
            v201 = v220;
            sub_1CF685B34();
            v202 = *(*v200 + 560);
            v203 = v184;
            v204 = v251;
            v205 = v202(v192, v201, v232, v199, *(v235 + 1));
            v251 = v204;
            if (v204)
            {

              v206 = AssociatedConformanceWitness;
              (AssociatedConformanceWitness)(v201, v174);
              (*(v228 + 8))(v221, v217);
              v206(v222, v174);
              (*(v227 + 8))(v226, v229);

              return;
            }

            v208 = v205;
            (AssociatedConformanceWitness)(v201, v174);
            v191 = v221;
            v195 = v217;
            if (v208)
            {
              v209 = v255;
              v138 = v253;
              (*(v255 + 56))(v261, 1, 1, v253);
              v210 = swift_allocError();
              v235 = v210;
              (v225)(v211, v191, v195);
              v262 = v219;
              v263 = v218;
              type metadata accessor for JobResult();
              v262 = v219;
              v263 = v218;
              type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot();
              v212 = v222;
              v213 = sub_1CF65A054(v222, v248[15], v248[16], 0);
              v214 = v210;
              sub_1CF803A0C(v247, v213);
              v79 = v209;

              (*(v228 + 8))(v221, v195);
              (AssociatedConformanceWitness)(v212, v234);
              v78 = v261;
              (*(v227 + 8))(v226, v229);

              v239 = 0;
              v254 = 0;
              v119 = 0xE000000000000000;
              v111 = v235;
              v112 = v257;
              v113 = v258;
              goto LABEL_26;
            }

            v101 = v250;
            v98 = v252;
            v84 = v229;
            v192 = v222;
          }

          else
          {
            v98 = v252;
            v84 = v229;
          }

          v207 = AssociatedConformanceWitness;
          (*(v228 + 8))(v191, v195);
          v207(v192, v174);
          v94 = v227;
          v100 = v240;
        }

        v103 = v249[3];
        v102 = v249[4];
        v104 = __swift_project_boxed_opaque_existential_1(v249, v103);
        v105 = *(v102 + 8);
        v106 = v223;
        v107 = v251;
        (*(*v101[4] + 240))(v239, 1, v104, v103, v105);
        v78 = v261;
        if (v107)
        {
          (*(v94 + 8))(v226, v84);

LABEL_21:
          return;
        }

        v240 = v100;
        v251 = 0;
        (*(v94 + 8))(v226, v84);

        v113 = v258;
        v183 = v106;
        v112 = v257;
        (*(v257 + 32))(v78, v183, v258);
        goto LABEL_41;
      }

      (*(v227 + 8))(&v81[v86], v84);
      v78 = v261;
      v79 = v255;
    }

    else
    {
      (*(v228 + 8))(v55, v50);
    }

    v75 = v252;
  }

  v138 = v253;
  (*(v79 + 56))(v78, 1, 1, v253);
  v144 = v75;
  v145 = v75;
  v239 = 0;
  v254 = 0;
  v119 = 0xE000000000000000;
  v240 = v75;
  v112 = v257;
  v113 = v258;
  v111 = v75;
LABEL_26:
  v252 = v111;
  v146 = v241;
  v255 = *(v112 + 16);
  (v255)(v241, v78, v113);
  if ((*(v79 + 48))(v146, 1, v138) == 1)
  {
    (*(v112 + 8))(v146, v113);
    *&v262 = 0x3A6C61757463613CLL;
    *(&v262 + 1) = 0xEB000000006C696ELL;
    MEMORY[0x1D3868CC0](v239, v119);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v253 = *(&v262 + 1);
    v241 = v262;
  }

  else
  {
    v148 = v146;
    v149 = v238;
    (*(v79 + 32))(v238, v148, v138);
    *&v262 = 0;
    *(&v262 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6C61757463613CLL, 0xE800000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](v239, v119);

    MEMORY[0x1D3868CC0](8254, 0xE200000000000000);
    v253 = *(&v262 + 1);
    v241 = v262;
    (*(v79 + 8))(v149, v138);
  }

  v147 = v113;
  v150 = v249;
  sub_1CF1A91AC(v249, &v262);
  v151 = v150[3];
  v152 = v150[4];
  v153 = __swift_project_boxed_opaque_existential_1(v150, v151);
  (*(*(v242 - 8) + 56))(v259, 1, 1);
  v154 = v248;
  v155 = v154 + *(*v154 + 664);
  v156 = *v155;
  v157 = *(v155 + 8);
  (*(*(v245 - 8) + 56))(v260, 1, 1);
  (v255)(v256, v261, v147);
  v264 = 0;
  v158 = v252;
  if (v252)
  {
    v159 = *(v154 + *(*v154 + 584));
    v160 = v252;
    v161 = v159;
  }

  else
  {
    v159 = 0;
  }

  v162 = v243;

  v215 = v159;
  v164 = v254;
  sub_1CF98C50C(v163, v259, v156, v157, v260, v256, &v264, 0, v162, v254, v158, v215);
  v165 = v251;
  v166 = v246;
  v167 = sub_1CF98CA58(v250, v247, v153, v246, v151, v152);
  if (v165)
  {

    (*(v244 + 8))(v162, v166);
    sub_1CEFCCC44(&v262, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v257 + 8))(v261, v258);
  }

  else
  {
    v168 = v167;
    (*(v244 + 8))(v162, v166);
    v169 = v257;
    v170 = v258;
    v171 = v261;
    v172 = v240;
    if (!v168)
    {
      v173 = v240;
      v168 = v172;
    }

    v237(&v262, 0, v241, v253, v168);

    sub_1CEFCCC44(&v262, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v169 + 8))(v171, v170);
  }
}

id sub_1CF60B46C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v21 = *(*v1 + 608);
  swift_getAssociatedTypeWitness();
  v5 = v3[79];
  v6 = v3[77];
  swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8 = TupleTypeMetadata[12];
  v18 = TupleTypeMetadata[16];
  v19 = TupleTypeMetadata[20];
  v20 = TupleTypeMetadata[24];
  v9 = v3[72];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v9, AssociatedTypeWitness);
  v11 = *(*v1 + 640);
  swift_beginAccess();
  v12 = sub_1CF9E75D8();
  (*(*(v12 - 8) + 16))(a1 + v8, v1 + v11, v12);
  v13 = *(*v1 + 656);
  swift_beginAccess();
  type metadata accessor for FileItemVersion();
  v14 = sub_1CF9E75D8();
  (*(*(v14 - 8) + 16))(a1 + v18, v1 + v13, v14);
  v15 = *v1;
  *(a1 + v19) = *(v1 + *(*v1 + 672));
  v22 = *(v1 + *(v15 + 584));
  *(a1 + v20) = v22;
  type metadata accessor for DirectionalTestingOperation();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for TestingOperation();
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(a1, 0, 1, v16);

  return v22;
}

uint64_t sub_1CF60B900()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 632);
  v3 = *(*v0 + 616);
  swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v1, v4);
  v5(v0 + *(*v0 + 648), v4);
  v6 = *(*v0 + 656);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v7 = sub_1CF9E75D8();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 688);
  type metadata accessor for SnapshotItem();
  v9 = sub_1CF9E75D8();
  return (*(*(v9 - 8) + 8))(v0 + v8, v9);
}

uint64_t sub_1CF60BB48()
{
  v1 = *v0;
  v2 = sub_1CF5E9C94();
  v3 = *(*v2 + 640);
  v4 = *(v1 + 632);
  v5 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(*(v6 - 8) + 8);
  v7(v2 + v3, v6);
  v7(v2 + *(*v2 + 648), v6);
  v8 = *(*v2 + 656);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v9 = sub_1CF9E75D8();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  v10 = *(*v2 + 688);
  type metadata accessor for SnapshotItem();
  v11 = sub_1CF9E75D8();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  return v2;
}

uint64_t sub_1CF60BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  result = a6(a1, a2, a3, a4, *(a5 + 8));
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF60BE30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, id), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v146 = a6;
  v147 = a5;
  v150 = a4;
  v127 = a3;
  v139 = a2;
  v12 = *v8;
  v13 = *(*v8 + 608);
  v14 = *(*v8 + 624);
  v15 = type metadata accessor for SnapshotItem();
  v125 = sub_1CF9E75D8();
  v124 = *(v125 - 8);
  v16 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v134 = &v107 - v17;
  v18 = *(v12 + 600);
  v140 = v8;
  v19 = *(v12 + 616);
  v154 = v13;
  v155 = v18;
  v156 = v14;
  v157 = v19;
  v129 = type metadata accessor for ReconciliationMutation();
  v138 = *(v129 - 8);
  v20 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v107 - v21;
  v133 = v13;
  v154 = v13;
  v155 = v18;
  v130 = v18;
  v131 = v14;
  v156 = v14;
  v157 = v19;
  v132 = v19;
  v22 = type metadata accessor for ItemReconciliation();
  v142 = sub_1CF9E75D8();
  v137 = *(v142 - 8);
  v23 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v107 - v24;
  v144 = v22;
  v136 = *(v22 - 8);
  v25 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v135 = (&v107 - v27);
  v145 = *(v15 - 8);
  v28 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v126 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v107 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v149 = &v107 - v34;
  v35 = sub_1CF9E6118();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(*a1 + 152))(v38) & 0x4000) == 0)
  {
    v157 = a7;
    v158 = a8;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v154);
    (*(*(a7 - 8) + 16))(v41, v150, a7);
    v42 = FPNotSupportedError();
LABEL_7:
    v52 = v42;
    v147(&v154, 0, 0, 0, v52);

    return sub_1CEFCCC44(&v154, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v141 = a8;
  v148 = a7;
  v43 = a1[4];
  if (sub_1CF056558())
  {
    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v45 = sub_1CF9E6108();
    v46 = sub_1CF9E72A8();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v141;
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1CEFC7000, v45, v46, "DeletionAcked triggered on FS snapshot", v49, 2u);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    (*(v36 + 8))(v40, v35);
    v50 = v148;
    v157 = v148;
    v158 = v48;
    v51 = __swift_allocate_boxed_opaque_existential_0(&v154);
    (*(*(v50 - 8) + 16))(v51, v150, v50);
    v42 = FPNotSupportedError();
    goto LABEL_7;
  }

  v119 = a1;
  v53 = *(*v140 + 576);
  v54 = *(v141 + 8);
  v56 = (*(*v43 + 496))(v140 + v53, v139);
  v139 = v54;
  v115 = v43;
  v114 = v53;
  v118 = v57;
  v116 = sub_1CF9E6DF8();
  if (sub_1CF9E6DF8())
  {
    v58 = 0;
    v112 = 0;
    v117 = 0;
    v123 = (v145 + 16);
    v122 = (v145 + 32);
    v120 = (v136 + 48);
    v121 = (v145 + 8);
    v137 += 8;
    v113 = (v136 + 32);
    v136 += 8;
    v111 = (v138 + 8);
    v59 = v139;
    while (2)
    {
      v60 = v58;
      v61 = v119;
      while (1)
      {
        v62 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v62)
        {
          result = (*(v145 + 16))(v149, v56 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v60, v15);
          v58 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v28 != 8)
          {
            goto LABEL_42;
          }

          v154 = result;
          (*v123)(v149, &v154, v15);
          result = swift_unknownObjectRelease();
          v58 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        (*v122)(v32, v149, v15);
        v63 = v61[2];
        v64 = v59;
        v65 = v143;
        sub_1CF68DDB0(v32, v150, v148, v64, v143);
        if ((*v120)(v65, 1, v144) != 1)
        {
          break;
        }

        (*v121)(v32, v15);
        (*v137)(v65, v142);
        v66 = sub_1CF9E6DF8();
        ++v60;
        v59 = v139;
        if (v58 == v66)
        {
          v77 = v148;
          v78 = v141;
          goto LABEL_32;
        }
      }

      v67 = v135;
      (*v113)(v135, v65, v144);
      v68 = v61;
      v77 = v148;
      v78 = v141;
      result = sub_1CF61A3C8(v67, v68, v150, v148, v141);
      if (result)
      {
        v117 = v112 + 1;
        v59 = v139;
        if (__OFADD__(v112, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        WitnessTable = swift_getWitnessTable();
        sub_1CF06D940(v15, WitnessTable, &v154);
        if (v154 == 1 && ((*(*v115 + 384))(v32, 1, v150, v77, v59) & 1) == 0)
        {
          v154 = v133;
          v155 = v130;
          v156 = v131;
          v157 = v132;
          v112 = type metadata accessor for JobResult();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v110 = swift_getAssociatedTypeWitness();
          v71 = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v78 = v141;
          v72 = v110;
          v73 = swift_getAssociatedConformanceWitness();
          v154 = v71;
          v155 = v72;
          v156 = AssociatedConformanceWitness;
          v157 = v73;
          AssociatedConformanceWitness = type metadata accessor for ReconciliationID();
          v110 = type metadata accessor for ReconciliationSideMutation();
          v108 = *(swift_getTupleTypeMetadata2() + 48);
          v74 = *(*(v71 - 8) + 16);
          v75 = v128;
          v76 = v71;
          v77 = v148;
          v74(v128, v32, v76);
          swift_storeEnumTagMultiPayload();
          *(v75 + v108) = *(v140 + 15);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v127, v75);
          (*v111)(v128, v129);
        }

        v112 = v117;
      }

      else
      {
        v59 = v139;
      }

      (*v136)(v135, v144);
      (*v121)(v32, v15);
      if (v58 != sub_1CF9E6DF8())
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v117 = 0;
    v78 = v141;
    v59 = v139;
    v77 = v148;
  }

LABEL_32:

  v79 = v150;
  v80 = v118;
  v81 = v77;
  if (!v118)
  {
    v85 = v59;
    v86 = v78;
    v87 = v140;
    v88 = v114;
    v89 = v134;
    (*(*v115 + 240))(v140 + v114, 1, v150, v77, v85);
    v90 = v145;
    if ((*(v145 + 48))(v89, 1, v15) == 1)
    {
      (*(v124 + 8))(v89, v125);
      v80 = v118;
      v78 = v86;
    }

    else
    {
      v91 = v126;
      (*(v90 + 32))(v126, v89, v15);
      v92 = swift_getWitnessTable();
      sub_1CF06D940(v15, v92, &v154);
      if (v154 == 1)
      {
        v154 = v133;
        v93 = v133;
        v94 = v130;
        v155 = v130;
        v156 = v131;
        v95 = v131;
        v157 = v132;
        v149 = type metadata accessor for JobResult();
        v154 = v93;
        v155 = v94;
        v156 = v95;
        v157 = v132;
        type metadata accessor for Ingestion.ReSnapshotChildren();
        v96 = sub_1CF656FE0(v87 + v88, v87[15], v87[16], v87[17]);
        sub_1CF803A0C(v127, v96);

        v97 = swift_getAssociatedTypeWitness();
        v98 = swift_getAssociatedTypeWitness();
        v99 = swift_getAssociatedConformanceWitness();
        v100 = swift_getAssociatedConformanceWitness();
        v154 = v97;
        v155 = v98;
        v156 = v99;
        v157 = v100;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v101 = *(swift_getTupleTypeMetadata2() + 48);
        v102 = v140;
        v103 = v128;
        (*(*(v97 - 8) + 16))(v128, v140 + v114, v97);
        swift_storeEnumTagMultiPayload();
        *(v103 + v101) = 1;
        v78 = v141;
        swift_storeEnumTagMultiPayload();
        v104 = v129;
        swift_storeEnumTagMultiPayload();
        v105 = v127;
        sub_1CF06EB44(v127, v103);
        (*(v138 + 8))(v103, v104);
        v154 = v133;
        v155 = v130;
        v156 = v131;
        v157 = v132;
        type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty();
        sub_1CF65A050(v102 + v114, v102[15], v102[16], v102[17]);
        v106 = sub_1CF052548(8);

        sub_1CF803A0C(v105, v106);

        (*(v145 + 8))(v126, v15);
        v80 = v118;
      }

      else
      {
        (*(v90 + 8))(v91, v15);
        v80 = v118;
        v78 = v86;
      }

      v81 = v77;
    }
  }

  v157 = v81;
  v158 = v78;
  v82 = __swift_allocate_boxed_opaque_existential_0(&v154);
  (*(*(v81 - 8) + 16))(v82, v79, v81);
  v152 = 0;
  v153 = 0xE000000000000000;

  sub_1CF9E7948();

  v152 = 0x3A656C6174733CLL;
  v153 = 0xE700000000000000;
  v151 = v117;
  v83 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v83);

  MEMORY[0x1D3868CC0](0x3A6C61746F7420, 0xE700000000000000);
  v151 = v116;
  v84 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v84);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v147(&v154, v80, v152, v153, 0);

  return sub_1CEFCCC44(&v154, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF60D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF55900C(a1, a2, a3, a4);
  v7 = *(v4 + 624);
  v8 = *(v4 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_1CF60D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = *(*v8 + 576);
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a1;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(*v14 + 792);

  v17(v8 + v15, sub_1CF60E2A4, v16);
}

uint64_t sub_1CF60D3A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  swift_retain_n();
  v9 = a1;
  v10 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v7, sub_1CF60E2B4, v8, v10, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF60D4D8(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF60D548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 576);
  v12 = *(*v5 + 560);
  v13 = *(*v5 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v5 + v11, a1, AssociatedTypeWitness);
  *(v5 + *(*v5 + 584)) = a2;
  v15 = sub_1CF0525C8(a3, a4, a5);
  v16 = *(v15 + 96);
  v17 = *(v15 + 104);
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  LOBYTE(a3) = *(v15 + 112);
  *(v15 + 112) = 0;

  sub_1CF03D7A8(v16, v17, a3);

  return v15;
}

uint64_t sub_1CF60D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v8 = *(*v6 + 648);
  v9 = *(*v6 + 624);
  v10 = *(*v6 + 608);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion();
  (*(*(v11 - 8) + 56))(v6 + v8, 1, 1, v11);
  v12 = *(*v6 + 656);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v6 + v12, 1, 1, AssociatedTypeWitness);
  v14 = *(*v6 + 664);
  v15 = *(v7 + 632);
  v16 = *(v7 + 616);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ItemState();
  (*(*(v17 - 8) + 56))(v6 + v14, 1, 1, v17);
  v18 = v6 + *(*v6 + 672);
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0xB000000000000000;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  v19 = *(*v6 + 680);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(v6 + v19, 1, 1, TupleTypeMetadata2);
  *(v6 + *(*v6 + 688)) = 0;
  *(v6 + *(*v6 + 640)) = a2;
  return sub_1CF60D548(a1, a3, a4, a5, a6);
}

uint64_t sub_1CF60DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return sub_1CF60D678(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1CF60DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*v5 + 640);
  v9 = *(*v5 + 632);
  v10 = *(*v5 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 56);
  v12(v5 + v8, 1, 1, AssociatedTypeWitness);
  v12(v5 + *(*v5 + 648), 1, 1, AssociatedTypeWitness);
  v13 = *(*v5 + 656);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for FileItemVersion();
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  v15 = v5 + *(*v5 + 664);
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v5 + *(*v5 + 672)) = 2;
  *(v5 + *(*v5 + 680)) = 2;
  v16 = *(*v5 + 688);
  v17 = type metadata accessor for SnapshotItem();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  return sub_1CF60D548(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF60DDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return sub_1CF60DADC(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF60DE10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v24 = *a3;
  v9 = *(*v7 + 656);
  v10 = *(*v7 + 632);
  v11 = *(*v7 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v7 + v9, 1, 1, AssociatedTypeWitness);
  v22 = *(*v7 + 664);
  v13 = *(v8 + 624);
  v14 = *(v8 + 608);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FileItemVersion();
  (*(*(v15 - 8) + 56))(v7 + v22, 1, 1, v15);
  v16 = *(*v7 + 672);
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ItemState();
  (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
  v18 = v7 + *(*v7 + 680);
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0xB000000000000000;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  v19 = *(*v7 + 688);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for FileItemVersion();
  (*(*(v20 - 8) + 56))(v7 + v19, 1, 1, v20);
  *(v7 + *(*v7 + 712)) = 0;
  *(v7 + *(*v7 + 640)) = a2;
  *(v7 + *(*v7 + 648)) = v24;
  *(v7 + *(*v7 + 696)) = 0;
  *(v7 + *(*v7 + 704)) = 0;
  return sub_1CF60D548(a1, a4, a5, a6, a7);
}

uint64_t sub_1CF60E220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  return sub_1CF60DE10(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1CF60E2A4(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF60D3A0(a1, v1[4], v1[5], v1[6]);
}

uint64_t sub_1CF60E2B4(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  sub_1CF1A91AC(a1, v6);
  v3(v6, 0, 0, 0, v4);
  return sub_1CEFCCC44(v6, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF60E348(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  return sub_1CF6094D0(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), v1 + v8, *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v4, v6);
}

void sub_1CF60E43C(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v7 = *(sub_1CF9E8238() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF609934(a1, v1 + v8, v1 + v11, *(v1 + v12), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF60E63C(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  v15 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v18 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v7 = v18 + *(v6 + 64);
  swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for ItemState() - 8);
  v17 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v16 = (*(v8 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for FileItemVersion() - 8);
  v10 = (((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 255) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v13 = *(type metadata accessor for FileItemVersion() - 8);
  return sub_1CF5FCFD0(a1, a2 & 1, *(v2 + 48), *(v2 + 56), v2 + v18, v2 + v17, *(v2 + v16), (v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + v10, (v2 + v11), *(v2 + v12), *(v2 + v12 + 8), *(v2 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v13 + 80) + 8) & ~*(v13 + 80)));
}

void *sub_1CF60E9D0(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF5FC1A0(a1, v1[6], v1 + v6, *v7, *(v7 + 1));
}

uint64_t sub_1CF60EABC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 144) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for ItemState() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(type metadata accessor for FileItemVersion() - 8);
  return sub_1CF5FD6B0(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), (v1 + 80), v1 + v7, v1 + v10, *(v1 + v11), v1 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80)));
}

uint64_t sub_1CF60ED00(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  type metadata accessor for ItemPropagationResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = *(sub_1CF9E8238() - 8);
  v20 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v19 = (*(v6 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v19 + 71) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = (*(v7 + 80) + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80);
  v8 = *(v7 + 64);
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for ItemState() - 8);
  v10 = (v17 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(type metadata accessor for FileItemVersion() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = &v1[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8];
  v16 = *(v14 + 1);
  return sub_1CF5FDE20(a1, &v1[v20], &v1[v19], *&v1[v18], *&v1[(v18 + 15) & 0xFFFFFFFFFFFFFFF8], &v1[v17], &v1[v10], *&v1[v11], &v1[v13], *v14);
}

uint64_t sub_1CF60F074(void *a1, char a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[5];
  v21 = v2[4];
  v6 = v2[6];
  v19 = v2[7];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v18 = (*(v7 + 80) + 168) & ~*(v7 + 80);
  v8 = v18 + *(v7 + 64);
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for ItemState() - 8);
  v17 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v10 = *(v9 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(type metadata accessor for FileItemVersion() - 8);
  v12 = (v17 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v14 = *(type metadata accessor for FileItemVersion() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  return sub_1CF5FADE8(a1, a2 & 1, v2[8], v2[9], v2[10], v2[11], v2[12], (v2 + 13), v2 + v18, v2 + v17, v2 + v12, v2 + v15, v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8), v21, v19);
}

uint64_t sub_1CF60F3E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1CF5FB134(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1CF60F49C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v7 = (*(v6 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for ItemState() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(type metadata accessor for FileItemVersion() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  return sub_1CF5F05D8(a1, v1[6], v1[7], v1[8], v1 + v14, *(v1 + v7), v1 + v9, v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF60F704(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void sub_1CF60F718(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  type metadata accessor for FileTreeWriter.ItemOrContinuation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = *(sub_1CF9E8238() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v18 = v7;
  v8 = *(v6 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v10 = (*(v9 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedConformanceWitness();
  v11 = *(type metadata accessor for ItemState() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v16 = *(v11 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v13 = *(type metadata accessor for FileItemVersion() - 8);
  v14 = (v12 + v16 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5F0C8C(a1, v1 + v18, v1 + v17, *(v1 + v10), v1 + v12, v1 + v14, *(v1 + v15), *(v1 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF60FA30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF60FA78(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(type metadata accessor for ItemState() - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(type metadata accessor for FileItemVersion() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5F15E4(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v8, v1 + v11, *(v1 + v12), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF60FC88(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  type metadata accessor for ItemPropagationResult();
  v6 = *(sub_1CF9E75D8() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for ItemState() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(type metadata accessor for FileItemVersion() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5F2594(a1, v1[6], v1[7], v1[8], v1[9], v1 + v7, v1 + v10, v1 + v13, *(v1 + v14), *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)));
}