unint64_t sub_1D6B67DF8()
{
  result = qword_1EC8929B8;
  if (!qword_1EC8929B8)
  {
    sub_1D5B5AB88(255, &unk_1EDF1AE60, sub_1D5B7A2B8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929B8);
  }

  return result;
}

uint64_t FormatVideoData.Assets.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FormatVideoData.Assets.stillImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatVideoData.Assets(0) + 20);

  return sub_1D5EB84C0(v3, a1);
}

id FormatVideoData.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatVideoData(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v13 = v9;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v11 = v4;

  return v13;
}

uint64_t sub_1D6B68084()
{
  result = type metadata accessor for FormatVideoData.Assets(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6B68120()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    sub_1D5B54AD4(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1D6B681E4(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for FormatVideoData.Assets(0);
  MEMORY[0x1EEE9AC00](v87, v3);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC2BEC(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v86 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v92 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v91 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v90 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v89 = &v86 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v86 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v86 - v34;
  sub_1D5B54AD4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v88 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v86 - v41;
  v43 = MEMORY[0x1E69E6F90];
  sub_1D5B54AD4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B54AD4(0, &qword_1EC880490, sub_1D5EA74B8, v43);
  sub_1D5EA74B8();
  v94 = v44;
  v45 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
  v98 = *(*(v44 - 8) + 72);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D7283D60;
  v93 = v46;
  v47 = (v46 + v45);
  v99 = a2;
  sub_1D6B68FC8(a2, v35, sub_1D6AC2BEC);
  v48 = type metadata accessor for FormatVideoData(0);
  v100 = *(*(v48 - 8) + 48);
  if (v100(v35, 1, v48) == 1)
  {
    sub_1D6B69030(v35, sub_1D6AC2BEC);
    v49 = sub_1D72585BC();
    (*(*(v49 - 8) + 56))(v42, 1, 1, v49);
  }

  else
  {
    sub_1D6B68FC8(v35, v5, type metadata accessor for FormatVideoData.Assets);
    sub_1D6B69030(v35, type metadata accessor for FormatVideoData);
    v50 = sub_1D72585BC();
    v51 = *(v50 - 8);
    (*(v51 + 16))(v42, v5, v50);
    sub_1D6B69030(v5, type metadata accessor for FormatVideoData.Assets);
    (*(v51 + 56))(v42, 0, 1, v50);
  }

  sub_1D711FCD0(5001813, 0xE300000000000000, v42, v47);
  v52 = type metadata accessor for FormatInspectionItem(0);
  v53 = *(*(v52 - 8) + 56);
  v53(v47, 0, 1, v52);
  sub_1D6B68FC8(v99, v31, sub_1D6AC2BEC);
  v54 = v100(v31, 1, v48);
  v55 = v88;
  if (v54 == 1)
  {
    sub_1D6B69030(v31, sub_1D6AC2BEC);
    v56 = sub_1D72585BC();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  }

  else
  {
    sub_1D6B68FC8(v31, v5, type metadata accessor for FormatVideoData.Assets);
    sub_1D6B69030(v31, type metadata accessor for FormatVideoData);
    sub_1D5EB84C0(&v5[*(v87 + 20)], v55);
    sub_1D6B69030(v5, type metadata accessor for FormatVideoData.Assets);
  }

  v57 = v98;
  sub_1D711FCD0(0x6D492D6C6C697453, 0xEF4C525520656761, v55, &v47[v98]);
  v53(&v47[v57], 0, 1, v52);
  v58 = v99;
  sub_1D6B68FC8(v99, v27, sub_1D6AC2BEC);
  if (v100(v27, 1, v48) == 1)
  {
    sub_1D6B69030(v27, sub_1D6AC2BEC);
    v59 = 0;
  }

  else
  {
    v59 = *&v27[*(v48 + 20)];
    sub_1D6B69030(v27, type metadata accessor for FormatVideoData);
  }

  sub_1D712DB64(0x79746976617247, 0xE700000000000000, v59, &v47[2 * v57]);
  v53(&v47[2 * v57], 0, 1, v52);
  v60 = v89;
  sub_1D6B68FC8(v58, v89, sub_1D6AC2BEC);
  if (v100(v60, 1, v48) == 1)
  {
    sub_1D6B69030(v60, sub_1D6AC2BEC);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + *(v48 + 20) + 8);
    sub_1D6B69030(v60, type metadata accessor for FormatVideoData);
  }

  sub_1D711E9F0(0x6E69706F6F4C7369, 0xE900000000000067, v61, &v47[3 * v57]);
  v53(&v47[3 * v57], 0, 1, v52);
  v62 = v90;
  sub_1D6B68FC8(v58, v90, sub_1D6AC2BEC);
  v63 = v100(v62, 1, v48);
  v64 = sub_1D6AC2BEC;
  if (v63 == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = *(v62 + *(v48 + 20) + 16);
    v64 = type metadata accessor for FormatVideoData;
  }

  v66 = v62;
  v67 = v63 == 1;
  sub_1D6B69030(v66, v64);
  v68 = &v47[4 * v57];
  sub_1D712DB7C(0x6B63616279616C50, 0xE800000000000000, v65, v67, v68);
  v53(v68, 0, 1, v52);
  v69 = v91;
  sub_1D6B68FC8(v58, v91, sub_1D6AC2BEC);
  if (v100(v69, 1, v48) == 1)
  {
    sub_1D6B69030(v69, sub_1D6AC2BEC);
    v70 = 2;
  }

  else
  {
    v70 = *(v69 + *(v48 + 20) + 24);
    sub_1D6B69030(v69, type metadata accessor for FormatVideoData);
  }

  v71 = v98;
  sub_1D711E9F0(0xD000000000000018, 0x80000001D73E7210, v70, &v47[5 * v98]);
  v53(&v47[5 * v71], 0, 1, v52);
  v72 = v92;
  sub_1D6B68FC8(v58, v92, sub_1D6AC2BEC);
  if (v100(v72, 1, v48) == 1)
  {
    sub_1D6B69030(v72, sub_1D6AC2BEC);
    v73 = 2;
  }

  else
  {
    v73 = *(v72 + *(v48 + 20) + 25);
    sub_1D6B69030(v72, type metadata accessor for FormatVideoData);
  }

  sub_1D711E9F0(0x646574754D7369, 0xE700000000000000, v73, &v47[6 * v71]);
  v53(&v47[6 * v71], 0, 1, v52);
  v74 = v95;
  sub_1D6B68FC8(v58, v95, sub_1D6AC2BEC);
  if (v100(v74, 1, v48) == 1)
  {
    sub_1D6B69030(v74, sub_1D6AC2BEC);
    v75 = 0;
  }

  else
  {
    v75 = *(v74 + *(v48 + 20) + 32);
    sub_1D6B69030(v74, type metadata accessor for FormatVideoData);
  }

  sub_1D712DB94(0xD000000000000013, 0x80000001D73E7230, v75, &v47[8 * v71 - v71]);
  v53(&v47[8 * v71 - v71], 0, 1, v52);
  v76 = v97;
  sub_1D6B68FC8(v58, v97, sub_1D6AC2BEC);
  v77 = v100(v76, 1, v48);
  v78 = sub_1D6AC2BEC;
  if (v77 == 1)
  {
    v79 = 0;
  }

  else
  {
    v79 = *(v76 + *(v48 + 20) + 40);
    v78 = type metadata accessor for FormatVideoData;
  }

  v80 = v77 == 1;
  sub_1D6B69030(v76, v78);
  sub_1D712E1BC(0x6974634120646E45, 0xEA00000000006E6FLL, v79, v80, &v47[8 * v71]);
  v53(&v47[8 * v71], 0, 1, v52);
  sub_1D6795150(0x6F65646956, 0xE500000000000000, 0, 0, v93, v101);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v81 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v81 + 64) = &off_1F518B2C0;
  v82 = swift_allocObject();
  *(v81 + 32) = v82;
  *(v82 + 48) = v102;
  v83 = v101[1];
  *(v82 + 16) = v101[0];
  *(v82 + 32) = v83;
  v84 = sub_1D7073500(v81);
  swift_setDeallocating();
  sub_1D6B69030(v81 + 32, sub_1D5E4F358);
  return v84;
}

uint64_t sub_1D6B68FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B69030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BaseFeedGroupEmitterType.name.getter()
{
  swift_getDynamicType();

  return sub_1D7264C5C();
}

void BaseFeedGroupEmitterType.groupKnobs.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E6190];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v1;
  a1[5] = MEMORY[0x1E69E6160];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t BaseFeedGroupEmitterType.priority.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v9 = &v12 - v8;
  (*(a2 + 48))(a1, a2, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 112))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v9, AssociatedTypeWitness);
}

void BaseFeedGroupEmitterType.emitSettings(with:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t sub_1D6B69398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return ModernFeedGroupEmitterType.emitCachedGroup(with:cachedOutput:)(a1, a2, v10, a4, a5);
}

uint64_t ModernFeedGroupEmitterType.emitCachedGroup(with:cachedOutput:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6B6949C, 0, 0);
}

uint64_t sub_1D6B6949C()
{
  v1 = *(v0 + 16);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for FeedGroupEmitterCachedOutput();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t FeedGroupEmitter.__allocating_init<A>(emitter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FeedGroupEmitter.init<A>(emitter:)(a1, a2, a3);
  return v6;
}

uint64_t *FeedGroupEmitter.init<A>(emitter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v58 = a1;
  v63 = *v3;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v8;
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v64 = v6 + 16;
  v10(v7);
  v60 = v10;
  v65 = *(v6 + 80);
  v11 = (v65 + 40) & ~v65;
  v62 = v9;
  v12 = swift_allocObject();
  v59 = *(v63 + 80);
  v12[2] = v59;
  v12[3] = a2;
  v12[4] = a3;
  v63 = *(v6 + 32);
  v13 = v57;
  (v63)(v12 + v11, v57, a2);
  v3[2] = sub_1D5C03700;
  v3[3] = v12;
  v14 = v58;
  (v10)(v13, v58, a2);
  v15 = v11;
  v56 = v11;
  v16 = swift_allocObject();
  v17 = v59;
  v16[2] = v59;
  v16[3] = a2;
  v16[4] = v66;
  v18 = v16 + v15;
  v61 = v6 + 32;
  v19 = v63;
  (v63)(v18, v13, a2);
  v3[4] = sub_1D5C0C0A4;
  v3[5] = v16;
  (v60)(v13, v14, a2);
  v20 = v56;
  v21 = swift_allocObject();
  *(v21 + 2) = v17;
  *(v21 + 3) = a2;
  v22 = v66;
  *(v21 + 4) = v66;
  v23 = v20;
  v19(&v21[v20], v13, a2);
  v3[6] = sub_1D5BC3378;
  v3[7] = v21;
  v24 = v58;
  v25 = v60;
  (v60)(v13, v58, a2);
  v26 = swift_allocObject();
  v26[2] = v59;
  v26[3] = a2;
  v26[4] = v22;
  v27 = v63;
  (v63)(v26 + v23, v13, a2);
  v3[8] = sub_1D6B69CB4;
  v3[9] = v26;
  (v25)(v13, v24, a2);
  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 2) = v59;
  *(v28 + 3) = a2;
  v30 = v66;
  *(v28 + 4) = v66;
  v31 = v57;
  v27(&v28[v23], v57, a2);
  v3[10] = sub_1D6B69CB8;
  v3[11] = v28;
  (v25)(v31, v58, a2);
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = a2;
  v32[4] = v30;
  v33 = v57;
  (v63)(v32 + v23, v57, a2);
  v3[12] = sub_1D6B69CBC;
  v3[13] = v32;
  v34 = v58;
  (v25)(v33, v58, a2);
  v35 = swift_allocObject();
  v36 = v59;
  v35[2] = v59;
  v35[3] = a2;
  v35[4] = v66;
  v37 = v35 + v23;
  v38 = v63;
  (v63)(v37, v33, a2);
  v3[14] = sub_1D6B69CC0;
  v3[15] = v35;
  (v60)(v33, v34, a2);
  v39 = v56;
  v40 = swift_allocObject();
  *(v40 + 2) = v36;
  *(v40 + 3) = a2;
  v41 = v66;
  *(v40 + 4) = v66;
  v42 = v57;
  v38(&v40[v39], v57, a2);
  v3[16] = sub_1D6B69CC4;
  v3[17] = v40;
  v43 = v36;
  v3[20] = sub_1D6B69CC8(v34, v36, a2, v41);
  v3[21] = v44;
  v3[22] = sub_1D6B69DF4(v34, v36, a2, v41);
  v3[23] = v45;
  (v60)(v42, v34, a2);
  v46 = v56;
  v47 = swift_allocObject();
  v47[2] = v43;
  v47[3] = a2;
  v47[4] = v41;
  v48 = v47 + v46;
  v49 = v46;
  v50 = v63;
  (v63)(v48, v42, a2);
  v3[18] = sub_1D6B6A114;
  v3[19] = v47;
  v50(v42, v34, a2);
  v51 = swift_allocObject();
  *(v51 + 2) = v43;
  *(v51 + 3) = a2;
  v52 = v66;
  *(v51 + 4) = v66;
  v50(&v51[v49], v42, a2);
  v3[24] = &unk_1D732BEC0;
  v3[25] = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = a2;
  *(v53 + 24) = v52;
  v3[26] = &unk_1D732BED0;
  v3[27] = v53;
  return v3;
}

{
  v5 = sub_1D6B6B544(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t (*sub_1D6B69CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C8A0;
}

uint64_t (*sub_1D6B69DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C830;
}

void sub_1D6B69F20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a6;
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ModernFeedGroupEmitterInitialCursorContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for LegacyFeedGroupEmitterInitialCursorContext();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = (&v23 - v18);
  (*(v10 + 16))(v13, v24, v9, v17);
  LegacyFeedGroupEmitterInitialCursorContext.init(context:)(v13, a3, v19);
  v20 = (*(a5 + 16))(v19, a4, a5);
  (*(v15 + 8))(v19, v14);
  sub_1D6B6C7D8();
  v21 = v26;
  v26[3] = v22;
  *v21 = v20;
}

uint64_t sub_1D6B6A154()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E77A38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6B6A290(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6B6A2DC, 0, 0);
}

uint64_t sub_1D6B6A2DC()
{
  v1 = *(v0 + 16);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for FeedGroupEmitterCachedOutput();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D6B6A448(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D5B64680;

  return sub_1D6B6A290(a1, a2, a3, v9, v8);
}

uint64_t *FeedGroupEmitter.__allocating_init<A>(emitter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D6B6B544(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t (*sub_1D6B6A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C770;
}

uint64_t (*sub_1D6B6A72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C934;
}

uint64_t (*sub_1D6B6A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C930;
}

void *sub_1D6B6A984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return &unk_1D732C130;
}

uint64_t sub_1D6B6AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 24) + **(a5 + 24));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return v12(a1, a2, a4, a5);
}

void *sub_1D6B6ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return &unk_1D732C120;
}

uint64_t sub_1D6B6AD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (*(a6 + 32) + **(a6 + 32));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1D5B64680;

  return v14(a1, a2, a3, a5, a6);
}

uint64_t sub_1D6B6AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6B6AFC4, 0, 0);
}

uint64_t sub_1D6B6AFC4()
{
  v6 = (*(v0[5] + 208) + **(v0[5] + 208));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D5C43610;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return v6(v4, v2, v3);
}

uint64_t FeedGroupEmitter.deinit()
{

  return v0;
}

uint64_t FeedGroupEmitter.__deallocating_deinit()
{
  FeedGroupEmitter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6B6B194(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5BD7AA4(a1, a2);
}

uint64_t sub_1D6B6B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return sub_1D6B6AFA0(a1, a2, a3);
}

uint64_t sub_1D6B6B43C()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t static FeedGroupEmitter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 16))();
  v5 = v4;
  if (v3 == (*(a2 + 16))() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t *sub_1D6B6B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v61 = a1;
  v5 = *v3;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6 + 16;
  v11 = *(v6 + 16);
  v56 = v9;
  v57 = v8;
  v11(v9, v7);
  v52 = *(v6 + 80);
  v12 = v6;
  v13 = (v52 + 40) & ~v52;
  v14 = swift_allocObject();
  v15 = *(v5 + 80);
  *(v14 + 2) = v15;
  *(v14 + 3) = a2;
  v16 = v15;
  v17 = v60;
  *(v14 + 4) = v60;
  v58 = *(v12 + 32);
  v59 = v12 + 32;
  v51 = v13;
  v58(&v14[v13], v9, a2);
  v3[2] = sub_1D6B6C910;
  v3[3] = v14;
  v55 = v11;
  (v11)(v9, v61, a2);
  v54 = v10;
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = a2;
  v53 = v16;
  *(v18 + 4) = v17;
  v19 = v56;
  v58(&v18[v13], v56, a2);
  v3[4] = sub_1D6B6C91C;
  v3[5] = v18;
  v20 = v19;
  v21 = v61;
  (v11)(v20, v61, a2);
  v22 = swift_allocObject();
  *(v22 + 2) = v16;
  *(v22 + 3) = a2;
  v23 = v60;
  *(v22 + 4) = v60;
  v24 = v56;
  v25 = v58;
  v58(&v22[v13], v56, a2);
  v3[6] = sub_1D6B6C920;
  v3[7] = v22;
  v55(v24, v21, a2);
  v26 = swift_allocObject();
  *(v26 + 2) = v53;
  *(v26 + 3) = a2;
  *(v26 + 4) = v23;
  v27 = v56;
  v25(&v26[v13], v56, a2);
  v28 = v25;
  v3[8] = sub_1D6B6C924;
  v3[9] = v26;
  v29 = v55;
  v55(v27, v61, a2);
  v30 = swift_allocObject();
  v31 = v53;
  *(v30 + 2) = v53;
  *(v30 + 3) = a2;
  v32 = v60;
  *(v30 + 4) = v60;
  v28(&v30[v13], v27, a2);
  v3[10] = sub_1D6B6C928;
  v3[11] = v30;
  v33 = v61;
  v29(v27, v61, a2);
  v34 = v51;
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = a2;
  v35[4] = v32;
  v36 = v35 + v34;
  v37 = v56;
  v28(v36, v56, a2);
  v3[12] = sub_1D6B6C92C;
  v3[13] = v35;
  v29(v37, v33, a2);
  v38 = v51;
  v39 = swift_allocObject();
  v40 = v53;
  *(v39 + 2) = v53;
  *(v39 + 3) = a2;
  *(v39 + 4) = v60;
  v58(&v39[v38], v37, a2);
  v3[14] = sub_1D6B6C914;
  v3[15] = v39;
  v41 = v61;
  v55(v37, v61, a2);
  v42 = swift_allocObject();
  *(v42 + 2) = v40;
  *(v42 + 3) = a2;
  v43 = v60;
  *(v42 + 4) = v60;
  v58(&v42[v38], v37, a2);
  v3[16] = sub_1D6B6C918;
  v3[17] = v42;
  v3[18] = sub_1D6B6A600(v41, v40, a2, v43);
  v3[19] = v44;
  v3[20] = sub_1D6B6A72C(v41, v40, a2, v43);
  v3[21] = v45;
  v3[22] = sub_1D6B6A858(v41, v40, a2, v43);
  v3[23] = v46;
  v3[24] = sub_1D6B6A984(v41, v40, a2, v43);
  v3[25] = v47;
  v3[26] = sub_1D6B6ABE8(v41, v40, a2, v43);
  v3[27] = v48;
  return v3;
}

uint64_t sub_1D6B6BA80(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6B6BABC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of ModernFeedGroupEmitterType.emitNextGroup(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ModernFeedGroupEmitterType.emitCachedGroup(with:cachedOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of FeedGroupEmitter.__allocating_init<A>(emitter:)()
{
  return (*(v0 + 200))();
}

{
  return (*(v0 + 208))();
}

uint64_t dispatch thunk of FeedGroupEmitter.emitNextGroup(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 304) + **(*v2 + 304));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D5B64680;

  return v8(a1, a2);
}

uint64_t dispatch thunk of FeedGroupEmitter.emitCachedGroup(with:cachedOutput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 312) + **(*v3 + 312));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D5B64680;

  return v10(a1, a2, a3);
}

uint64_t sub_1D6B6C580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = (*(*(v8 - 8) + 80) + 40) & ~*(*(v8 - 8) + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D5B64680;

  return sub_1D6B6AD14(a1, a2, a3, v3 + v10, v8, v9);
}

uint64_t sub_1D6B6C680(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D5B64680;

  return sub_1D6B6AAB0(a1, a2, v2 + v8, v6, v7);
}

void sub_1D6B6C7D8()
{
  if (!qword_1EDF3B8E8)
  {
    sub_1D5BE1404();
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B8E8);
    }
  }
}

uint64_t static FormatRecipeOverrides.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);
  return sub_1D6B6DE74(v3, a1, type metadata accessor for FormatRecipeOverrides);
}

double sub_1D6B6C9BC()
{
  v0 = type metadata accessor for FormatRecipeOverrides();
  __swift_allocate_value_buffer(v0, qword_1EDF0DF50);
  v1 = __swift_project_value_buffer(v0, qword_1EDF0DF50);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FormatThumbnail();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  result = 0.0;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  return result;
}

uint64_t FormatRecipeOverrides.init(title:shortExcerpt:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for FormatRecipeOverrides();
  return sub_1D5CE4644(a5, a6 + *(v8 + 24), sub_1D5B5CFA0);
}

uint64_t FormatRecipeOverrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatRecipeOverrides.shortExcerpt.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6B6CB54()
{
  v1 = 0x63784574726F6873;
  if (*v0 != 1)
  {
    v1 = 0x69616E626D756874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D6B6CBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B6DD54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B6CBE0(uint64_t a1)
{
  v2 = sub_1D6B6DA68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6CC1C(uint64_t a1)
{
  v2 = sub_1D6B6DA68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRecipeOverrides.encode(to:)(void *a1)
{
  sub_1D6B6DABC(0, &qword_1EDF02658, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B6DA68();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D726437C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D726437C();
    type metadata accessor for FormatRecipeOverrides();
    v10[13] = 2;
    type metadata accessor for FormatThumbnail();
    sub_1D6B6DBCC(&qword_1EDF117E8, type metadata accessor for FormatThumbnail);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatRecipeOverrides.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B6DABC(0, &unk_1EDF03A08, MEMORY[0x1E69E6F48]);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v21 - v10;
  v12 = type metadata accessor for FormatRecipeOverrides();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B6DA68();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v16 = v24;
  v17 = v25;
  v28 = 0;
  *v15 = sub_1D726422C();
  v15[1] = v18;
  v21[1] = v18;
  v27 = 1;
  v15[2] = sub_1D726422C();
  v15[3] = v19;
  type metadata accessor for FormatThumbnail();
  v26 = 2;
  sub_1D6B6DBCC(qword_1EDF41148, type metadata accessor for FormatThumbnail);
  sub_1D726427C();
  (*(v16 + 8))(v11, v17);
  sub_1D5CE4644(v7, v15 + *(v22 + 24), sub_1D5B5CFA0);
  sub_1D6B6DE74(v15, v23, type metadata accessor for FormatRecipeOverrides);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6B6DF40(v15, type metadata accessor for FormatRecipeOverrides);
}

uint64_t sub_1D6B6D1FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatRecipeOverrides();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 appliedOverrideMetadata];
  if (!v14)
  {

    goto LABEL_19;
  }

  v15 = v14;
  v32 = a2;
  v16 = [v14 title];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = sub_1D726207C();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_7:
    v18 = 0;
    v20 = 0;
  }

  v22 = [v15 shortExcerpt];
  if (!v22)
  {
LABEL_13:
    v24 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v23 = v22;
  v24 = sub_1D726207C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_13;
  }

LABEL_14:
  a2 = v32;
  sub_1D6B6D4D4(v15, v7);
  swift_unknownObjectRelease();

  if (!(v26 | v20))
  {
    v28 = type metadata accessor for FormatThumbnail();
    if ((*(*(v28 - 8) + 48))(v7, 1, v28) == 1)
    {
      sub_1D6B6DF40(v7, sub_1D5B5CFA0);
LABEL_19:
      v29 = 1;
      return (*(v9 + 56))(a2, v29, 1, v8);
    }
  }

  *v13 = v31;
  v13[1] = v20;
  v13[2] = v24;
  v13[3] = v26;
  sub_1D5CE4644(v7, v13 + *(v8 + 24), sub_1D5B5CFA0);
  sub_1D5CE4644(v13, a2, type metadata accessor for FormatRecipeOverrides);
  v29 = 0;
  return (*(v9 + 56))(a2, v29, 1, v8);
}

uint64_t sub_1D6B6D4D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5CFA0();
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 formatThumbnail];
  if (v9)
  {
    v10 = v9;
    v11 = v9;
    sub_1D5EFB8E4(v10, v8);
    v12 = type metadata accessor for FormatThumbnail();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {

      sub_1D6B6DF40(v8, sub_1D5B5CFA0);
      return (*(v13 + 56))(a2, 1, 1, v12);
    }

    else
    {
      v17 = sub_1D5EFA80C();

      if (v17)
      {
        v18 = 1;
      }

      else
      {
        sub_1D6B6DE74(v8, a2, type metadata accessor for FormatThumbnail);
        v18 = 0;
      }

      (*(v13 + 56))(a2, v18, 1, v12);
      return sub_1D6B6DF40(v8, type metadata accessor for FormatThumbnail);
    }
  }

  else
  {
    v15 = type metadata accessor for FormatThumbnail();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

BOOL _s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FormatThumbnail();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B6DEDC();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19 || (*a1 != *a2 || v18 != v19) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = a1[3];
  v21 = a2[3];
  if (v20)
  {
    if (!v21 || (a1[2] != a2[2] || v20 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = *(type metadata accessor for FormatRecipeOverrides() + 24);
  v23 = *(v14 + 48);
  sub_1D6B6DE74(a1 + v22, v17, sub_1D5B5CFA0);
  sub_1D6B6DE74(a2 + v22, &v17[v23], sub_1D5B5CFA0);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v23], 1, v4) == 1)
    {
      sub_1D6B6DF40(v17, sub_1D5B5CFA0);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1D6B6DE74(v17, v12, sub_1D5B5CFA0);
  if (v24(&v17[v23], 1, v4) == 1)
  {
    sub_1D6B6DF40(v12, type metadata accessor for FormatThumbnail);
LABEL_20:
    sub_1D6B6DF40(v17, sub_1D6B6DEDC);
    return 0;
  }

  sub_1D5CE4644(&v17[v23], v8, type metadata accessor for FormatThumbnail);
  v26 = _s8NewsFeed15FormatThumbnailV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1D6B6DF40(v8, type metadata accessor for FormatThumbnail);
  sub_1D6B6DF40(v12, type metadata accessor for FormatThumbnail);
  sub_1D6B6DF40(v17, sub_1D5B5CFA0);
  return v26;
}

unint64_t sub_1D6B6DA68()
{
  result = qword_1EDF0DF78;
  if (!qword_1EDF0DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF78);
  }

  return result;
}

void sub_1D6B6DABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B6DA68();
    v7 = a3(a1, &type metadata for FormatRecipeOverrides.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6B6DB20(void *a1)
{
  a1[1] = sub_1D6B6DBCC(&qword_1EDF0DF38, type metadata accessor for FormatRecipeOverrides);
  a1[2] = sub_1D6B6DBCC(&qword_1EDF0DF40, type metadata accessor for FormatRecipeOverrides);
  result = sub_1D6B6DBCC(&qword_1EC8929C0, type metadata accessor for FormatRecipeOverrides);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6B6DBCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6B6DC50()
{
  result = qword_1EC8929C8;
  if (!qword_1EC8929C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929C8);
  }

  return result;
}

unint64_t sub_1D6B6DCA8()
{
  result = qword_1EDF0DF68;
  if (!qword_1EDF0DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF68);
  }

  return result;
}

unint64_t sub_1D6B6DD00()
{
  result = qword_1EDF0DF70;
  if (!qword_1EDF0DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF70);
  }

  return result;
}

uint64_t sub_1D6B6DD54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63784574726F6873 && a2 == 0xEC00000074707265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6B6DE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6B6DEDC()
{
  if (!qword_1EDF117E0)
  {
    sub_1D5B5CFA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF117E0);
    }
  }
}

uint64_t sub_1D6B6DF40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatFontWidth.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x61707845696D6573;
    v7 = 0x6465646E61707865;
    if (v1 != 8)
    {
      v7 = 0x7078456172747865;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x646E6F43696D6573;
    if (v1 != 5)
    {
      v8 = 0x647261646E617473;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6D6F436172746C75;
    v3 = 0x73736572706D6F63;
    v4 = 0x6E6F436172747865;
    if (v1 != 3)
    {
      v4 = 0x65736E65646E6F63;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6D6F436172747865;
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
}

NewsFeed::FormatFontWidth_optional __swiftcall FormatFontWidth.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D6B6E178()
{
  result = qword_1EC8929D0;
  if (!qword_1EC8929D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929D0);
  }

  return result;
}

uint64_t sub_1D6B6E1CC()
{
  sub_1D7264A0C();
  sub_1D694FD84();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B6E21C()
{
  sub_1D7264A0C();
  sub_1D694FD84();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B6E26C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatFontWidth.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D6B6E294(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B6E2C4();
  result = sub_1D6B6E318();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B6E2C4()
{
  result = qword_1EC8929D8;
  if (!qword_1EC8929D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929D8);
  }

  return result;
}

unint64_t sub_1D6B6E318()
{
  result = qword_1EDF31990;
  if (!qword_1EDF31990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31990);
  }

  return result;
}

unint64_t sub_1D6B6E36C(uint64_t a1)
{
  result = sub_1D6B6E394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B6E394()
{
  result = qword_1EC8929E0;
  if (!qword_1EC8929E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929E0);
  }

  return result;
}

unint64_t sub_1D6B6E3E8(void *a1)
{
  a1[1] = sub_1D668AA74();
  a1[2] = sub_1D668AC6C();
  result = sub_1D6B6E178();
  a1[3] = result;
  return result;
}

uint64_t FormatGroupNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatGroupNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatGroupNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FormatGroupNodeDataLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatGroupNodeDataLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
}

uint64_t FormatGroupNodeDataLayoutAttributes.maskLayoutAttributes.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  v6 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1D61CC60C(v2, v3, v4, v5);
}

uint64_t FormatGroupNodeDataLayoutAttributes.__allocating_init(layoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:maskLayoutAttributes:style:canFlatten:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char a5, uint64_t *a6, __int128 *a7, uint64_t a8, char a9)
{
  v14 = swift_allocObject();
  v15 = *a2;
  v16 = *a4;
  v17 = *a6;
  v18 = *(a6 + 8);
  v25 = *(a7 + 4);
  v19 = *(a1 + 56);
  *(v14 + 16) = *(a1 + 48);
  *(v14 + 24) = v19;
  v20 = *(a1 + 72);
  *(v14 + 32) = *(a1 + 64);
  *(v14 + 40) = v20;
  v21 = *(a1 + 88);
  *(v14 + 48) = *(a1 + 80);
  *(v14 + 56) = v21;
  *(v14 + 64) = a1;
  swift_beginAccess();
  v22 = *(a1 + 32);
  *(v14 + 72) = *(a1 + 16);
  *(v14 + 88) = v22;
  *(v14 + 104) = v15;
  *(v14 + 112) = a3;
  *(v14 + 120) = v16;
  *(v14 + 128) = a5;
  *(v14 + 136) = v17;
  *(v14 + 144) = v18;
  v23 = *a7;
  *(v14 + 168) = a7[1];
  *(v14 + 152) = v23;
  *(v14 + 184) = v25;
  *(v14 + 192) = a8;
  *(v14 + 200) = MEMORY[0x1E69E7CD0];
  *(v14 + 208) = a9;

  return v14;
}

uint64_t FormatGroupNodeDataLayoutAttributes.init(layoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:maskLayoutAttributes:style:canFlatten:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char a5, uint64_t *a6, __int128 *a7, uint64_t a8, char a9)
{
  v12 = *a2;
  v13 = *a4;
  v14 = *a6;
  v15 = *(a6 + 8);
  v23 = *(a7 + 4);
  v16 = *(a1 + 56);
  *(v9 + 16) = *(a1 + 48);
  *(v9 + 24) = v16;
  v17 = *(a1 + 72);
  *(v9 + 32) = *(a1 + 64);
  *(v9 + 40) = v17;
  v18 = *(a1 + 88);
  *(v9 + 48) = *(a1 + 80);
  *(v9 + 56) = v18;
  *(v9 + 64) = a1;
  swift_beginAccess();
  v19 = *(a1 + 32);
  *(v9 + 72) = *(a1 + 16);
  *(v9 + 88) = v19;
  *(v9 + 104) = v12;
  *(v9 + 112) = a3;
  *(v9 + 120) = v13;
  *(v9 + 128) = a5;
  *(v9 + 136) = v14;
  *(v9 + 144) = v15;
  v20 = *a7;
  *(v9 + 168) = a7[1];
  *(v9 + 152) = v20;
  *(v9 + 184) = v23;
  *(v9 + 192) = a8;
  *(v9 + 200) = MEMORY[0x1E69E7CD0];
  *(v9 + 208) = a9;

  return v9;
}

uint64_t FormatGroupNodeDataLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 120));
  sub_1D61CC678(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return v0;
}

uint64_t FormatGroupNodeDataLayoutAttributes.__deallocating_deinit()
{
  FormatGroupNodeDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatSourceMapEntry()
{
  result = qword_1EC8929E8;
  if (!qword_1EC8929E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6B6E978()
{
  sub_1D6B6EA0C();
  if (v0 <= 0x3F)
  {
    sub_1D69F80E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D6B6EA0C()
{
  if (!qword_1EDF1B2E0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B2E0);
    }
  }
}

uint64_t sub_1D6B6EA5C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6F65646976;
  }

  else
  {
    v2 = 0x6567616D69;
  }

  if (*a2)
  {
    v3 = 0x6F65646976;
  }

  else
  {
    v3 = 0x6567616D69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6B6EADC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B6EB4C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B6EBA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B6EC0C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6B6EC6C(uint64_t *a1@<X8>)
{
  v2 = 0x6567616D69;
  if (*v1)
  {
    v2 = 0x6F65646976;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1D6B6ED4C()
{
  v1 = 0x73746365666665;
  if (*v0 != 1)
  {
    v1 = 0x6165724165666173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564496567616D69;
  }
}

uint64_t sub_1D6B6EDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B740A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B6EDDC(uint64_t a1)
{
  v2 = sub_1D6B72E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6EE18(uint64_t a1)
{
  v2 = sub_1D6B72E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B6EE54@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6B722CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1D6B6EEA0()
{
  v1 = 0x6564496F65646976;
  v2 = 0x73746365666665;
  if (*v0 != 2)
  {
    v2 = 0x6165724165666173;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6B6EF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B741C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B6EF54(uint64_t a1)
{
  v2 = sub_1D6B72EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6EF90(uint64_t a1)
{
  v2 = sub_1D6B72EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D6B6EFCC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B72594(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D6B6F018(uint64_t a1)
{
  v2 = sub_1D6B72DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F054(uint64_t a1)
{
  v2 = sub_1D6B72DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D6B6F090@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B72970(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D6B6F0DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B6F140()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B6F18C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6B6F258()
{
  v1 = 0x6564496567616D69;
  v2 = 0x6F697469646E6F63;
  if (*v0 != 2)
  {
    v2 = 0x6165724165666173;
  }

  if (*v0)
  {
    v1 = 0x73746365666665;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6B6F2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B73F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B6F30C(uint64_t a1)
{
  v2 = sub_1D6B73090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F348(uint64_t a1)
{
  v2 = sub_1D6B73090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B6F384@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6B71C4C(a1, v8);
  if (!v2)
  {
    v5 = v12;
    a2[4] = v11;
    a2[5] = v5;
    a2[6] = v13[0];
    *(a2 + 105) = *(v13 + 9);
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    result = *&v9;
    v7 = v10;
    a2[2] = v9;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D6B6F3E0(uint64_t a1)
{
  v2 = sub_1D6B72FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F41C(uint64_t a1)
{
  v2 = sub_1D6B72FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_OWORD *sub_1D6B6F458@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1D6B7208C(a1, v5);
  if (!v2)
  {
    return sub_1D6B72FB8(v5, a2);
  }

  return result;
}

uint64_t sub_1D6B6F4A0()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_1D6B6F4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6B6F5A8(uint64_t a1)
{
  v2 = sub_1D6B7345C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F5E4(uint64_t a1)
{
  v2 = sub_1D6B7345C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6B6F620(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D6B71A4C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1D6B6F64C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702521203;
  if (v2 != 1)
  {
    v4 = 0x617053726F6C6F63;
    v3 = 0xEA00000000006563;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702521203;
  if (*a2 != 1)
  {
    v8 = 0x617053726F6C6F63;
    v7 = 0xEA00000000006563;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465737361;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6B6F744()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B6F7E0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B6F868()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B6F900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B71730();
  *a1 = result;
  return result;
}

void sub_1D6B6F930(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x617053726F6C6F63;
    v4 = 0xEA00000000006563;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465737361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6B6F988()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x617053726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1D6B6F9DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B71730();
  *a1 = result;
  return result;
}

uint64_t sub_1D6B6FA04(uint64_t a1)
{
  v2 = sub_1D6B73204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6FA40(uint64_t a1)
{
  v2 = sub_1D6B73204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6B6FA7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_1D6B731A0(0, &qword_1EDF17330, MEMORY[0x1E69D7570], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v37 - v5;
  v43 = sub_1D725C9DC();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B733FC(0, &qword_1EDF03B10, sub_1D6B73204);
  v45 = v9;
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for LayeredMedia.ImageResource();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B73204();
  v17 = v46;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v13;
  v39 = v8;
  v46 = v16;
  v18 = a1;
  v19 = v44;
  v21 = v42;
  v20 = v43;
  LOBYTE(v47) = 0;
  v22 = sub_1D72642BC();
  v24 = v46;
  *v46 = v22;
  v24[1] = v25;
  v48 = 1;
  sub_1D6B73258();
  sub_1D726431C();
  *(v24 + 1) = v47;
  LOBYTE(v47) = 2;
  sub_1D6B732AC(&qword_1EDF17338, MEMORY[0x1E69D7570]);
  v26 = v20;
  v27 = v19;
  v28 = v45;
  sub_1D726421C();
  (*(v21 + 8))(v12, v28);
  v29 = v40;
  v30 = *(v40 + 48);
  if (v30(v19, 1, v26) == 1)
  {
    v31 = v39;
    (*(v29 + 104))(v39, *MEMORY[0x1E69D7568], v26);
    v32 = v30(v27, 1, v26);
    v33 = v41;
    v34 = v38;
    if (v32 != 1)
    {
      sub_1D6B732F4(v44, &qword_1EDF17330, MEMORY[0x1E69D7570], MEMORY[0x1E69E6720], sub_1D6B731A0);
    }
  }

  else
  {
    v31 = v39;
    (*(v29 + 32))(v39, v27, v26);
    v33 = v41;
    v34 = v38;
  }

  v35 = *(v34 + 24);
  v36 = v46;
  (*(v29 + 32))(v46 + v35, v31, v26);
  sub_1D610D094(v36, v33);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1D610D0F8(v36);
}

uint64_t sub_1D6B6FF8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x706D2F6F65646976;
  v4 = 0xE900000000000034;
  if (v2 != 1)
  {
    v3 = 0x75712F6F65646976;
    v4 = 0xEF656D69746B6369;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x2D782F6F65646976;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB0000000076346DLL;
  }

  v7 = 0x706D2F6F65646976;
  v8 = 0xE900000000000034;
  if (*a2 != 1)
  {
    v7 = 0x75712F6F65646976;
    v8 = 0xEF656D69746B6369;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x2D782F6F65646976;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB0000000076346DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6B700B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B70170()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B70218()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B702D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B717C8();
  *a1 = result;
  return result;
}

void sub_1D6B70300(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000076346DLL;
  v4 = 0xE900000000000034;
  v5 = 0x706D2F6F65646976;
  if (v2 != 1)
  {
    v5 = 0x75712F6F65646976;
    v4 = 0xEF656D69746B6369;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x2D782F6F65646976;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6B703D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702521203;
  if (v2 != 1)
  {
    v4 = 0x65707954656D696DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702521203;
  if (*a2 != 1)
  {
    v8 = 0x65707954656D696DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465737361;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6B704C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B70560()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B705E4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B70678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B7177C();
  *a1 = result;
  return result;
}

void sub_1D6B706A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x65707954656D696DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465737361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6B706FC()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x65707954656D696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1D6B7074C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B7177C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6B70774(uint64_t a1)
{
  v2 = sub_1D6B73354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B707B0(uint64_t a1)
{
  v2 = sub_1D6B73354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B707EC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B71814(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6B70834()
{
  v1 = 1702060386;
  v2 = 0x7365526567616D69;
  if (*v0 != 2)
  {
    v2 = 0x7365526F65646976;
  }

  if (*v0)
  {
    v1 = 0x73726579616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6B708BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B72C3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B708E4(uint64_t a1)
{
  v2 = sub_1D6B70D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B70920(uint64_t a1)
{
  v2 = sub_1D6B70D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LayeredMedia.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B733FC(0, &qword_1EDF03B18, sub_1D6B70D88);
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  v10 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D6B70D88();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v34 = 0;
  sub_1D6B70DDC();
  sub_1D726431C();
  v41 = v37;
  *v42 = v38[0];
  *&v42[9] = *(v38 + 9);
  v39 = v35;
  v40 = v36;
  sub_1D5B58388(0, &qword_1EDF05080, &type metadata for LayeredMedia.Layer, MEMORY[0x1E69E62F8]);
  LOBYTE(v25[0]) = 1;
  sub_1D6B7121C(&qword_1EDF05078, &qword_1EDF05080, &type metadata for LayeredMedia.Layer, sub_1D6B70E30);
  sub_1D726431C();
  v23 = *&v28[0];
  sub_1D6B70EB4();
  LOBYTE(v25[0]) = 2;
  sub_1D6B70F98();
  sub_1D726427C();
  v22 = *&v28[0];
  sub_1D6B710E4();
  v32 = 3;
  sub_1D6B71170();
  sub_1D726427C();
  (*(v6 + 8))(v9, v24);
  v11 = v33;
  v13 = *v42;
  v12 = *&v42[16];
  v25[3] = *v42;
  v25[4] = *&v42[16];
  v15 = v40;
  v14 = v41;
  v25[1] = v40;
  v25[2] = v41;
  v16 = v39;
  v25[0] = v39;
  v18 = v22;
  v17 = v23;
  *&v26 = v23;
  *(&v26 + 1) = v22;
  v27 = v33;
  *(a2 + 96) = v33;
  *(a2 + 32) = v14;
  *(a2 + 48) = v13;
  *a2 = v16;
  *(a2 + 16) = v15;
  v19 = v26;
  *(a2 + 64) = v12;
  *(a2 + 80) = v19;
  sub_1D6B712FC(v25, v28);
  __swift_destroy_boxed_opaque_existential_1(v43);
  v28[2] = v41;
  v28[3] = *v42;
  v28[4] = *&v42[16];
  v28[0] = v39;
  v28[1] = v40;
  v29 = v17;
  v30 = v18;
  v31 = v11;
  return sub_1D6762EA0(v28);
}

unint64_t sub_1D6B70D88()
{
  result = qword_1EDF121F0;
  if (!qword_1EDF121F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121F0);
  }

  return result;
}

unint64_t sub_1D6B70DDC()
{
  result = qword_1EDF12030;
  if (!qword_1EDF12030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12030);
  }

  return result;
}

unint64_t sub_1D6B70E30()
{
  result = qword_1EDF12090;
  if (!qword_1EDF12090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12090);
  }

  return result;
}

void sub_1D6B70EB4()
{
  if (!qword_1EDF056E0)
  {
    sub_1D6B731A0(255, &qword_1EDF050A0, type metadata accessor for LayeredMedia.ImageResource, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF056E0);
    }
  }
}

uint64_t type metadata accessor for LayeredMedia.ImageResource()
{
  result = qword_1EDF121B0;
  if (!qword_1EDF121B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D6B70F98()
{
  result = qword_1EDF056D8;
  if (!qword_1EDF056D8)
  {
    sub_1D6B70EB4();
    sub_1D6B71018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF056D8);
  }

  return result;
}

unint64_t sub_1D6B71018()
{
  result = qword_1EDF05098;
  if (!qword_1EDF05098)
  {
    sub_1D6B731A0(255, &qword_1EDF050A0, type metadata accessor for LayeredMedia.ImageResource, MEMORY[0x1E69E62F8]);
    sub_1D6B732AC(&qword_1EDF121C0, type metadata accessor for LayeredMedia.ImageResource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05098);
  }

  return result;
}

void sub_1D6B710E4()
{
  if (!qword_1EDF056D0)
  {
    sub_1D5B58388(255, &qword_1EDF05090, &type metadata for LayeredMedia.VideoResource, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF056D0);
    }
  }
}

unint64_t sub_1D6B71170()
{
  result = qword_1EDF056C8;
  if (!qword_1EDF056C8)
  {
    sub_1D6B710E4();
    sub_1D6B7121C(&qword_1EDF05088, &qword_1EDF05090, &type metadata for LayeredMedia.VideoResource, sub_1D6B712A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF056C8);
  }

  return result;
}

uint64_t sub_1D6B7121C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58388(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6B712A8()
{
  result = qword_1EDF120F8;
  if (!qword_1EDF120F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120F8);
  }

  return result;
}

uint64_t sub_1D6B71358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 57);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D6B713A4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 8;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6B7145C()
{
  result = sub_1D725C9DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22LayeredMediaConditionsVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6B71524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 57);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D6B71570(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 8;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6B715EC(uint64_t result, char a2)
{
  v2 = *(result + 72) & 1 | (a2 << 7);
  *(result + 56) = *(result + 56);
  *(result + 72) = v2;
  return result;
}

unint64_t sub_1D6B7162C()
{
  result = qword_1EC8929F8;
  if (!qword_1EC8929F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929F8);
  }

  return result;
}

unint64_t sub_1D6B71684()
{
  result = qword_1EDF121E0;
  if (!qword_1EDF121E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121E0);
  }

  return result;
}

unint64_t sub_1D6B716DC()
{
  result = qword_1EDF121E8;
  if (!qword_1EDF121E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121E8);
  }

  return result;
}

uint64_t sub_1D6B71730()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6B7177C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6B717C8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6B71814@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1D6B733FC(0, &qword_1EDF03B08, sub_1D6B73354);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B73354();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v19;
  LOBYTE(v20) = 0;
  v13 = sub_1D72642BC();
  v15 = v14;
  v23 = 1;
  sub_1D6B73258();
  sub_1D726421C();
  if (v22)
  {
    v16 = 1.79769313e308;
  }

  else
  {
    v16 = v20;
  }

  if (v22)
  {
    v17 = 1.79769313e308;
  }

  else
  {
    v17 = v21;
  }

  v23 = 2;
  sub_1D6B733A8();
  sub_1D726421C();
  (*(v10 + 8))(v9, v5);
  v18 = LOBYTE(v20);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v13;
  *(v11 + 8) = v15;
  *(v11 + 16) = v16;
  *(v11 + 24) = v17;
  *(v11 + 32) = v18;
  return result;
}

double sub_1D6B71A4C(void *a1)
{
  sub_1D6B733FC(0, &qword_1EDF03B00, sub_1D6B7345C);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B7345C();
  sub_1D7264B0C();
  if (!v1)
  {
    v12 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v2 = v13;
    v12 = 1;
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1D6B71C4C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v25 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AF8, sub_1D6B73090);
  v51 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B73090();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v25;
  LOBYTE(v29) = 0;
  v10 = sub_1D72642BC();
  v12 = v11;
  v24 = v10;
  LOBYTE(v26) = 1;
  sub_1D6B72EA8();
  sub_1D726427C();
  v20 = v29;
  v22 = v31;
  v23 = v30;
  v21 = v32;
  v44 = 2;
  sub_1D6B730E4();
  sub_1D726427C();
  *(v50 + 7) = v45;
  *(&v50[1] + 7) = v46;
  *(&v50[2] + 7) = v47;
  *(&v50[3] + 7) = v48;
  v41 = 3;
  sub_1D5B57870();
  sub_1D726427C();
  (*(v5 + 8))(v8, v51);
  *(&v28[1] + 9) = v50[1];
  *(&v28[2] + 9) = v50[2];
  *(&v28[3] + 9) = v50[3];
  v51 = v42;
  v13 = v43;
  v49 = v43;
  v14 = v24;
  *&v26 = v24;
  *(&v26 + 1) = v12;
  v15 = v20;
  *&v27 = v20;
  *(&v27 + 1) = v23;
  *&v28[0] = v22;
  BYTE8(v28[0]) = v21;
  *(v28 + 9) = v50[0];
  *(&v28[4] + 1) = *(&v50[3] + 15);
  *&v28[5] = v42;
  BYTE8(v28[5]) = v43;
  sub_1D6B73138(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36 = v50[1];
  v37 = v50[2];
  *v38 = v50[3];
  v29 = v14;
  v30 = v12;
  v31 = v15;
  v32 = v23;
  v33 = v22;
  v34 = v21;
  v35 = v50[0];
  *&v38[15] = *(&v50[3] + 15);
  v39 = v51;
  v40 = v13;
  result = sub_1D6B73170(&v29);
  v17 = v28[3];
  v9[4] = v28[2];
  v9[5] = v17;
  v9[6] = v28[4];
  *(v9 + 105) = *(&v28[4] + 9);
  v18 = v27;
  *v9 = v26;
  v9[1] = v18;
  v19 = v28[1];
  v9[2] = v28[0];
  v9[3] = v19;
  return result;
}

_OWORD *sub_1D6B7208C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AF0, sub_1D6B72FE8);
  v5 = v4;
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72FE8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v13;
  v10 = v26;
  sub_1D6B7303C();
  sub_1D726431C();
  sub_1D5B68374(a1, v23);
  sub_1D6B71C4C(v23, v24);
  v18 = v24[4];
  v19 = v24[5];
  v20[0] = v25[0];
  *(v20 + 9) = *(v25 + 9);
  v14 = v24[0];
  v15 = v24[1];
  v16 = v24[2];
  v17 = v24[3];
  (*(v9 + 8))(v8, v5);
  v21[4] = v18;
  v21[5] = v19;
  v22[0] = v20[0];
  *(v22 + 9) = *(v20 + 9);
  v21[0] = v14;
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  nullsub_1();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6B72FB8(v21, v10);
}

uint64_t sub_1D6B722CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AE8, sub_1D6B72E54);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72E54();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v23;
  LOBYTE(v25) = 0;
  v12 = sub_1D72642BC();
  v14 = v13;
  v15 = v12;
  v29[0] = 1;
  sub_1D6B72EA8();
  sub_1D726427C();
  v21 = v26;
  v22 = v25;
  v20 = v27;
  HIDWORD(v19) = v28;
  v30 = 2;
  sub_1D5B57870();
  sub_1D726427C();
  (*(v10 + 8))(v9, v5);
  v16 = v25;
  v24 = v26;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v15;
  *(v11 + 8) = v14;
  v18 = v21;
  *(v11 + 16) = v22;
  *(v11 + 24) = v18;
  *(v11 + 32) = v20;
  *(v11 + 40) = BYTE4(v19);
  *(v11 + 41) = *v29;
  *(v11 + 44) = *&v29[3];
  *(v11 + 48) = v16;
  *(v11 + 56) = v24;
  return result;
}

uint64_t sub_1D6B72594@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AE0, sub_1D6B72EFC);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72EFC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  LOBYTE(v38) = 0;
  v11 = v5;
  v12 = sub_1D72642BC();
  v14 = v13;
  v33 = v12;
  LOBYTE(v38) = 1;
  v15 = sub_1D72642BC();
  v17 = v16;
  v32 = v15;
  LOBYTE(v34) = 2;
  sub_1D6B72EA8();
  sub_1D726427C();
  v29 = v38;
  v28 = v39;
  v31 = v40;
  v30 = v41;
  v49 = 3;
  sub_1D5B57870();
  sub_1D726427C();
  (*(v10 + 8))(v9, v11);
  v27 = v50;
  LOBYTE(v11) = v51;
  v52 = v51;
  v18 = v33;
  *&v34 = v33;
  *(&v34 + 1) = v14;
  v19 = v32;
  *&v35 = v32;
  *(&v35 + 1) = v17;
  v20 = v29;
  v21 = v28;
  *&v36 = v29;
  *(&v36 + 1) = v28;
  *v37 = v31;
  v37[8] = v30;
  *&v37[9] = v53[0];
  *&v37[12] = *(v53 + 3);
  *&v37[16] = v50;
  v37[24] = v51;
  sub_1D6B72F50(&v34, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38 = v18;
  v39 = v14;
  v40 = v19;
  v41 = v17;
  v42 = v20;
  v43 = v21;
  v44 = v31;
  v45 = v30;
  *v46 = v53[0];
  *&v46[3] = *(v53 + 3);
  v47 = v27;
  v48 = v11;
  result = sub_1D6B72F88(&v38);
  v23 = *v37;
  v24 = v54;
  v54[2] = v36;
  v24[3] = v23;
  *(v24 + 57) = *&v37[9];
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  return result;
}

uint64_t sub_1D6B72970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AD8, sub_1D6B72DAC);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72DAC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v26;
  sub_1D6B72E00();
  v11 = v9;
  sub_1D726431C();
  if (v40)
  {
    sub_1D5B68374(a1, v27);
    sub_1D6B72594(v27, v33);
    v25 = v33[1];
    v24 = v33[0];
    v23 = v34;
    v13 = v5;
    v22 = v35;
    v14 = v36;
    v15 = v37;
    v16 = v38;
    v17 = v39;
    (*(v6 + 8))(v9, v13);
    v18 = v17 & 1 | 0x80;
    v11 = v16;
    v19 = v22;
  }

  else
  {
    sub_1D5B68374(a1, v27);
    sub_1D6B722CC(v27, v28);
    v25 = v28[1];
    v24 = v28[0];
    v19 = v30;
    v23 = v29;
    v20 = v5;
    v14 = v31;
    v15 = v32;
    (*(v6 + 8))(v9, v20);
    v18 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = v25;
  *v10 = v24;
  *(v10 + 16) = v21;
  *(v10 + 32) = v23;
  *(v10 + 40) = v19;
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  *(v10 + 64) = v11;
  *(v10 + 72) = v18;
  return result;
}

uint64_t sub_1D6B72C3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365526567616D69 && a2 == 0xEE0073656372756FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365526F65646976 && a2 == 0xEE0073656372756FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D6B72DAC()
{
  result = qword_1EDF12048;
  if (!qword_1EDF12048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12048);
  }

  return result;
}

unint64_t sub_1D6B72E00()
{
  result = qword_1EDF12050;
  if (!qword_1EDF12050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12050);
  }

  return result;
}

unint64_t sub_1D6B72E54()
{
  result = qword_1EDF12088;
  if (!qword_1EDF12088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12088);
  }

  return result;
}

unint64_t sub_1D6B72EA8()
{
  result = qword_1EDF0F838;
  if (!qword_1EDF0F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F838);
  }

  return result;
}

unint64_t sub_1D6B72EFC()
{
  result = qword_1EDF12070;
  if (!qword_1EDF12070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12070);
  }

  return result;
}

_OWORD *sub_1D6B72FB8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  *(a2 + 105) = *(a1 + 105);
  a2[5] = v6;
  a2[6] = v7;
  a2[4] = v5;
  return a2;
}

unint64_t sub_1D6B72FE8()
{
  result = qword_1EDF120A8;
  if (!qword_1EDF120A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120A8);
  }

  return result;
}

unint64_t sub_1D6B7303C()
{
  result = qword_1EDF120B0;
  if (!qword_1EDF120B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120B0);
  }

  return result;
}

unint64_t sub_1D6B73090()
{
  result = qword_1EDF120D0;
  if (!qword_1EDF120D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120D0);
  }

  return result;
}

unint64_t sub_1D6B730E4()
{
  result = qword_1EDF0D998;
  if (!qword_1EDF0D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D998);
  }

  return result;
}

void sub_1D6B731A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6B73204()
{
  result = qword_1EDF121D8;
  if (!qword_1EDF121D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121D8);
  }

  return result;
}

unint64_t sub_1D6B73258()
{
  result = qword_1EDF120D8;
  if (!qword_1EDF120D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120D8);
  }

  return result;
}

uint64_t sub_1D6B732AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6B732F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D6B73354()
{
  result = qword_1EDF12120[0];
  if (!qword_1EDF12120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF12120);
  }

  return result;
}

unint64_t sub_1D6B733A8()
{
  result = qword_1EDF12100;
  if (!qword_1EDF12100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12100);
  }

  return result;
}

void sub_1D6B733FC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D726435C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6B7345C()
{
  result = qword_1EDF120F0;
  if (!qword_1EDF120F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120F0);
  }

  return result;
}

unint64_t sub_1D6B73594()
{
  result = qword_1EC892A08;
  if (!qword_1EC892A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A08);
  }

  return result;
}

unint64_t sub_1D6B735EC()
{
  result = qword_1EC892A10;
  if (!qword_1EC892A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A10);
  }

  return result;
}

unint64_t sub_1D6B73644()
{
  result = qword_1EC892A18;
  if (!qword_1EC892A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A18);
  }

  return result;
}

unint64_t sub_1D6B7369C()
{
  result = qword_1EC892A20;
  if (!qword_1EC892A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A20);
  }

  return result;
}

unint64_t sub_1D6B736F4()
{
  result = qword_1EC892A28;
  if (!qword_1EC892A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A28);
  }

  return result;
}

unint64_t sub_1D6B7374C()
{
  result = qword_1EC892A30;
  if (!qword_1EC892A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A30);
  }

  return result;
}

unint64_t sub_1D6B737A4()
{
  result = qword_1EC892A38;
  if (!qword_1EC892A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A38);
  }

  return result;
}

unint64_t sub_1D6B737FC()
{
  result = qword_1EC892A40;
  if (!qword_1EC892A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A40);
  }

  return result;
}

unint64_t sub_1D6B73854()
{
  result = qword_1EC892A48;
  if (!qword_1EC892A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A48);
  }

  return result;
}

unint64_t sub_1D6B738AC()
{
  result = qword_1EC892A50;
  if (!qword_1EC892A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A50);
  }

  return result;
}

unint64_t sub_1D6B73904()
{
  result = qword_1EC892A58;
  if (!qword_1EC892A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A58);
  }

  return result;
}

unint64_t sub_1D6B7395C()
{
  result = qword_1EDF120E0;
  if (!qword_1EDF120E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120E0);
  }

  return result;
}

unint64_t sub_1D6B739B4()
{
  result = qword_1EDF120E8;
  if (!qword_1EDF120E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120E8);
  }

  return result;
}

unint64_t sub_1D6B73A0C()
{
  result = qword_1EDF12110;
  if (!qword_1EDF12110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12110);
  }

  return result;
}

unint64_t sub_1D6B73A64()
{
  result = qword_1EDF12118;
  if (!qword_1EDF12118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12118);
  }

  return result;
}

unint64_t sub_1D6B73ABC()
{
  result = qword_1EDF121C8;
  if (!qword_1EDF121C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121C8);
  }

  return result;
}

unint64_t sub_1D6B73B14()
{
  result = qword_1EDF121D0;
  if (!qword_1EDF121D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121D0);
  }

  return result;
}

unint64_t sub_1D6B73B6C()
{
  result = qword_1EDF120C0;
  if (!qword_1EDF120C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120C0);
  }

  return result;
}

unint64_t sub_1D6B73BC4()
{
  result = qword_1EDF120C8;
  if (!qword_1EDF120C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120C8);
  }

  return result;
}

unint64_t sub_1D6B73C1C()
{
  result = qword_1EDF12098;
  if (!qword_1EDF12098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12098);
  }

  return result;
}

unint64_t sub_1D6B73C74()
{
  result = qword_1EDF120A0;
  if (!qword_1EDF120A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120A0);
  }

  return result;
}

unint64_t sub_1D6B73CCC()
{
  result = qword_1EDF12060;
  if (!qword_1EDF12060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12060);
  }

  return result;
}

unint64_t sub_1D6B73D24()
{
  result = qword_1EDF12068;
  if (!qword_1EDF12068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12068);
  }

  return result;
}

unint64_t sub_1D6B73D7C()
{
  result = qword_1EDF12078;
  if (!qword_1EDF12078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12078);
  }

  return result;
}

unint64_t sub_1D6B73DD4()
{
  result = qword_1EDF12080;
  if (!qword_1EDF12080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12080);
  }

  return result;
}

unint64_t sub_1D6B73E2C()
{
  result = qword_1EDF12038;
  if (!qword_1EDF12038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12038);
  }

  return result;
}

unint64_t sub_1D6B73E84()
{
  result = qword_1EDF12040;
  if (!qword_1EDF12040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12040);
  }

  return result;
}

unint64_t sub_1D6B73ED8()
{
  result = qword_1EDF12058;
  if (!qword_1EDF12058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12058);
  }

  return result;
}

uint64_t sub_1D6B73F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496567616D69 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D6B740A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496567616D69 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6B741C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496F65646976 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73E73F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D6B74334()
{
  result = qword_1EDF120B8;
  if (!qword_1EDF120B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120B8);
  }

  return result;
}

unint64_t sub_1D6B74388()
{
  result = qword_1EDF12108;
  if (!qword_1EDF12108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12108);
  }

  return result;
}

uint64_t type metadata accessor for FormatLayoutViewRoute()
{
  result = qword_1EC892A60;
  if (!qword_1EC892A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6B74434()
{
  type metadata accessor for FeedItem(319);
  if (v0 <= 0x3F)
  {
    sub_1D61CCC84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D6B744A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  *&v97 = a1;
  v2 = sub_1D72585BC();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92 - v8;
  sub_1D5C4E168();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1D5C8E028();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v63 = *(v26 + 16);
        v64 = *(v26 + 24);
        v65 = v26;

        v66 = sub_1D5F9D31C(v97, v63, v64);

        v67 = swift_allocObject();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E7CC0];
        *(v68 + 16) = v66 & 1;
        *(v68 + 24) = v69;
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        *v98 = v67 | 0x8000000000000000;
      }

      if (v29 == 1)
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v103[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v103[1] = v41;
        v104 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v42 = v26;
        sub_1D66665DC(v103, &v100);
        sub_1D6B7D36C(v97, &v100);
        sub_1D6666638(v103);
        v43 = v101;
        v96 = v102;
        v97 = v100;
        v34 = swift_allocObject();
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v97;
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        v36 = v44 | 0x1000000000000000;
        goto LABEL_24;
      }

      v93 = v26;
      v70 = swift_projectBox();
      sub_1D5D2878C(v70, v28, sub_1D5C8E028);
      sub_1D5F9D418(v22);
      v71 = swift_allocObject();
      *&v97 = swift_allocBox();
      v73 = v72;
      v74 = *(v94 + 32);
      v74(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v74(v73, v18, v15);
      *&v73[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v75 = v97 | 0x2000000000000000;
      *(v71 + 16) = v93;
      *(v71 + 24) = v75;
      v76 = v71 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9D460(v30, v97, v31);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v98 = v34 | 0x8000000000000000;
        }

        v78 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = v26;

        v79 = sub_1D5F9D564(v97, v78, v77);

        v34 = swift_allocObject();
        v80 = swift_allocObject();
        v81 = MEMORY[0x1E69E7CC0];
        *(v80 + 16) = v79;
        *(v80 + 24) = v81;
        v36 = v80 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v42;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = v26;

        v59 = sub_1D5F9D660(v97, v56, v55, v57);
        v61 = v60;

        v34 = swift_allocObject();
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        *(v62 + 24) = v61;
        *(v62 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v62 | 0x5000000000000000;
        *(v34 + 16) = v58;
        goto LABEL_25;
      }

      v93 = v26;
      v82 = swift_projectBox();
      sub_1D5D2878C(v82, v14, sub_1D5C4E168);
      sub_1D5F9D780(v9);
      v83 = swift_allocObject();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v95 + 32);
      v88 = v9;
      v89 = v96;
      v87(v5, v88, v96);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v87(v86, v5, v89);
      *&v86[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v83 + 16) = v93;
      *(v83 + 24) = v84 | 0x6000000000000000;
      v76 = v83 | 0x8000000000000000;
    }

    *v98 = v76;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v99;
      v39 = swift_allocObject();

      sub_1D5FA6CB0(v97, v38, (v39 + 16));

      if (v37)
      {
        return swift_deallocUninitializedObject();
      }

      *v98 = v39 | 0x7000000000000000;
      return result;
    }

LABEL_18:
    *v98 = v26;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v46 = v99;
  v47 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v48 = swift_allocObject();
  v49 = v48;
  if (v47 >> 61 == 3)
  {
    v50 = v47 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    v54 = *(v50 + 40);

    sub_1D5F58038(v51, v52, v53, v54);
    sub_1D5F501D4(v97, v51, v52, v53, v54, &v100);
    if (v46)
    {
      sub_1D5F57FEC(v51, v52, v53, v54);

      return swift_deallocUninitializedObject();
    }

    v90 = v100;
    v91 = swift_allocObject();
    *(v91 + 16) = v51;
    *(v91 + 24) = v52;
    *(v91 + 32) = v53;
    *(v91 + 40) = v54;
    *(v91 + 48) = v90;
    *(v49 + 16) = v91 | 0x8000000000000000;
  }

  else
  {
    *(v48 + 16) = v47;
  }

  *v98 = v49 | 0xC000000000000000;
  return result;
}

uint64_t sub_1D6B74D28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  *&v97 = a1;
  v2 = sub_1D72585BC();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92 - v8;
  sub_1D5C4E168();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1D5C8E028();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v63 = *(v26 + 16);
        v64 = *(v26 + 24);
        v65 = v26;

        v66 = sub_1D5F9DA9C(v97, v63, v64);

        v67 = swift_allocObject();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E7CC0];
        *(v68 + 16) = v66 & 1;
        *(v68 + 24) = v69;
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        *v98 = v67 | 0x8000000000000000;
      }

      if (v29 == 1)
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v103[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v103[1] = v41;
        v104 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v42 = v26;
        sub_1D66665DC(v103, &v100);
        sub_1D6B7D490(v97, &v100);
        sub_1D6666638(v103);
        v43 = v101;
        v96 = v102;
        v97 = v100;
        v34 = swift_allocObject();
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v97;
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        v36 = v44 | 0x1000000000000000;
        goto LABEL_24;
      }

      v93 = v26;
      v70 = swift_projectBox();
      sub_1D5D2878C(v70, v28, sub_1D5C8E028);
      sub_1D5F9DBB0(v22);
      v71 = swift_allocObject();
      *&v97 = swift_allocBox();
      v73 = v72;
      v74 = *(v94 + 32);
      v74(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v74(v73, v18, v15);
      *&v73[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v75 = v97 | 0x2000000000000000;
      *(v71 + 16) = v93;
      *(v71 + 24) = v75;
      v76 = v71 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9DBF8(v30, v97, v31);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v98 = v34 | 0x8000000000000000;
        }

        v78 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = v26;

        v79 = sub_1D5F9DD0C(v97, v78, v77);

        v34 = swift_allocObject();
        v80 = swift_allocObject();
        v81 = MEMORY[0x1E69E7CC0];
        *(v80 + 16) = v79;
        *(v80 + 24) = v81;
        v36 = v80 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v42;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = v26;

        v59 = sub_1D5F9DE20(v97, v56, v55, v57);
        v61 = v60;

        v34 = swift_allocObject();
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        *(v62 + 24) = v61;
        *(v62 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v62 | 0x5000000000000000;
        *(v34 + 16) = v58;
        goto LABEL_25;
      }

      v93 = v26;
      v82 = swift_projectBox();
      sub_1D5D2878C(v82, v14, sub_1D5C4E168);
      sub_1D5F9DF50(v9);
      v83 = swift_allocObject();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v95 + 32);
      v88 = v9;
      v89 = v96;
      v87(v5, v88, v96);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v87(v86, v5, v89);
      *&v86[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v83 + 16) = v93;
      *(v83 + 24) = v84 | 0x6000000000000000;
      v76 = v83 | 0x8000000000000000;
    }

    *v98 = v76;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v99;
      v39 = swift_allocObject();

      sub_1D5FA74A4(v97, v38, (v39 + 16));

      if (v37)
      {
        return swift_deallocUninitializedObject();
      }

      *v98 = v39 | 0x7000000000000000;
      return result;
    }

LABEL_18:
    *v98 = v26;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v46 = v99;
  v47 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v48 = swift_allocObject();
  v49 = v48;
  if (v47 >> 61 == 3)
  {
    v50 = v47 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    v54 = *(v50 + 40);

    sub_1D5F58038(v51, v52, v53, v54);
    sub_1D5F5022C(v97, v51, v52, v53, v54, &v100);
    if (v46)
    {
      sub_1D5F57FEC(v51, v52, v53, v54);

      return swift_deallocUninitializedObject();
    }

    v90 = v100;
    v91 = swift_allocObject();
    *(v91 + 16) = v51;
    *(v91 + 24) = v52;
    *(v91 + 32) = v53;
    *(v91 + 40) = v54;
    *(v91 + 48) = v90;
    *(v49 + 16) = v91 | 0x8000000000000000;
  }

  else
  {
    *(v48 + 16) = v47;
  }

  *v98 = v49 | 0xC000000000000000;
  return result;
}

uint64_t sub_1D6B755A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  *&v97 = a1;
  v2 = sub_1D72585BC();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92 - v8;
  sub_1D5C4E168();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1D5C8E028();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v63 = *(v26 + 16);
        v64 = *(v26 + 24);
        v65 = v26;

        v66 = sub_1D5F9E298(v97, v63, v64);

        v67 = swift_allocObject();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E7CC0];
        *(v68 + 16) = v66 & 1;
        *(v68 + 24) = v69;
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        *v98 = v67 | 0x8000000000000000;
      }

      if (v29 == 1)
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v103[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v103[1] = v41;
        v104 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v42 = v26;
        sub_1D66665DC(v103, &v100);
        sub_1D6B7D5C4(v97, &v100);
        sub_1D6666638(v103);
        v43 = v101;
        v96 = v102;
        v97 = v100;
        v34 = swift_allocObject();
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v97;
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        v36 = v44 | 0x1000000000000000;
        goto LABEL_24;
      }

      v93 = v26;
      v70 = swift_projectBox();
      sub_1D5D2878C(v70, v28, sub_1D5C8E028);
      sub_1D5F9E394(v22);
      v71 = swift_allocObject();
      *&v97 = swift_allocBox();
      v73 = v72;
      v74 = *(v94 + 32);
      v74(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v74(v73, v18, v15);
      *&v73[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v75 = v97 | 0x2000000000000000;
      *(v71 + 16) = v93;
      *(v71 + 24) = v75;
      v76 = v71 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9E3DC(v30, v97, v31);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v98 = v34 | 0x8000000000000000;
        }

        v78 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = v26;

        v79 = sub_1D5F9E4E0(v97, v78, v77);

        v34 = swift_allocObject();
        v80 = swift_allocObject();
        v81 = MEMORY[0x1E69E7CC0];
        *(v80 + 16) = v79;
        *(v80 + 24) = v81;
        v36 = v80 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v42;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = v26;

        v59 = sub_1D5F9E5DC(v97, v56, v55, v57);
        v61 = v60;

        v34 = swift_allocObject();
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        *(v62 + 24) = v61;
        *(v62 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v62 | 0x5000000000000000;
        *(v34 + 16) = v58;
        goto LABEL_25;
      }

      v93 = v26;
      v82 = swift_projectBox();
      sub_1D5D2878C(v82, v14, sub_1D5C4E168);
      sub_1D5F9E6FC(v9);
      v83 = swift_allocObject();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v95 + 32);
      v88 = v9;
      v89 = v96;
      v87(v5, v88, v96);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v87(v86, v5, v89);
      *&v86[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v83 + 16) = v93;
      *(v83 + 24) = v84 | 0x6000000000000000;
      v76 = v83 | 0x8000000000000000;
    }

    *v98 = v76;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v99;
      v39 = swift_allocObject();

      sub_1D5FA7DC4(v97, v38, (v39 + 16));

      if (v37)
      {
        return swift_deallocUninitializedObject();
      }

      *v98 = v39 | 0x7000000000000000;
      return result;
    }

LABEL_18:
    *v98 = v26;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v46 = v99;
  v47 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v48 = swift_allocObject();
  v49 = v48;
  if (v47 >> 61 == 3)
  {
    v50 = v47 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    v54 = *(v50 + 40);

    sub_1D5F58038(v51, v52, v53, v54);
    sub_1D5F506C0(v97, v51, v52, v53, v54, &v100);
    if (v46)
    {
      sub_1D5F57FEC(v51, v52, v53, v54);

      return swift_deallocUninitializedObject();
    }

    v90 = v100;
    v91 = swift_allocObject();
    *(v91 + 16) = v51;
    *(v91 + 24) = v52;
    *(v91 + 32) = v53;
    *(v91 + 40) = v54;
    *(v91 + 48) = v90;
    *(v49 + 16) = v91 | 0x8000000000000000;
  }

  else
  {
    *(v48 + 16) = v47;
  }

  *v98 = v49 | 0xC000000000000000;
  return result;
}

uint64_t sub_1D6B75E28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  *&v97 = a1;
  v2 = sub_1D72585BC();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92 - v8;
  sub_1D5C4E168();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1D5C8E028();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v63 = *(v26 + 16);
        v64 = *(v26 + 24);
        v65 = v26;

        v66 = sub_1D5F9F81C(v97, v63, v64);

        v67 = swift_allocObject();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E7CC0];
        *(v68 + 16) = v66 & 1;
        *(v68 + 24) = v69;
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        *v98 = v67 | 0x8000000000000000;
      }

      if (v29 == 1)
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v103[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v103[1] = v41;
        v104 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v42 = v26;
        sub_1D66665DC(v103, &v100);
        sub_1D6B7D6E8(&v100);
        sub_1D6666638(v103);
        v43 = v101;
        v96 = v102;
        v97 = v100;
        v34 = swift_allocObject();
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v97;
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        v36 = v44 | 0x1000000000000000;
        goto LABEL_24;
      }

      v93 = v26;
      v70 = swift_projectBox();
      sub_1D5D2878C(v70, v28, sub_1D5C8E028);
      sub_1D5F9F8F0(v22);
      v71 = swift_allocObject();
      *&v97 = swift_allocBox();
      v73 = v72;
      v74 = *(v94 + 32);
      v74(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v74(v73, v18, v15);
      *&v73[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v75 = v97 | 0x2000000000000000;
      *(v71 + 16) = v93;
      *(v71 + 24) = v75;
      v76 = v71 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9F938(v30, v97, v31);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v98 = v34 | 0x8000000000000000;
        }

        v78 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = v26;

        v79 = sub_1D5F9FA0C(v97, v78, v77);

        v34 = swift_allocObject();
        v80 = swift_allocObject();
        v81 = MEMORY[0x1E69E7CC0];
        *(v80 + 16) = v79;
        *(v80 + 24) = v81;
        v36 = v80 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v42;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = v26;

        v59 = sub_1D5F9FAE0(v97, v56, v55, v57);
        v61 = v60;

        v34 = swift_allocObject();
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        *(v62 + 24) = v61;
        *(v62 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v62 | 0x5000000000000000;
        *(v34 + 16) = v58;
        goto LABEL_25;
      }

      v93 = v26;
      v82 = swift_projectBox();
      sub_1D5D2878C(v82, v14, sub_1D5C4E168);
      sub_1D5F9FBD0(v9);
      v83 = swift_allocObject();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v95 + 32);
      v88 = v9;
      v89 = v96;
      v87(v5, v88, v96);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v87(v86, v5, v89);
      *&v86[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v83 + 16) = v93;
      *(v83 + 24) = v84 | 0x6000000000000000;
      v76 = v83 | 0x8000000000000000;
    }

    *v98 = v76;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v99;
      v39 = swift_allocObject();

      sub_1D5FA85A4(v97, v38, (v39 + 16));

      if (v37)
      {
        return swift_deallocUninitializedObject();
      }

      *v98 = v39 | 0x7000000000000000;
      return result;
    }

LABEL_18:
    *v98 = v26;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v46 = v99;
  v47 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v48 = swift_allocObject();
  v49 = v48;
  if (v47 >> 61 == 3)
  {
    v50 = v47 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    v54 = *(v50 + 40);

    sub_1D5F58038(v51, v52, v53, v54);
    sub_1D5F50C20(v97, v51, v52, v53, v54, &v100);
    if (v46)
    {
      sub_1D5F57FEC(v51, v52, v53, v54);

      return swift_deallocUninitializedObject();
    }

    v90 = v100;
    v91 = swift_allocObject();
    *(v91 + 16) = v51;
    *(v91 + 24) = v52;
    *(v91 + 32) = v53;
    *(v91 + 40) = v54;
    *(v91 + 48) = v90;
    *(v49 + 16) = v91 | 0x8000000000000000;
  }

  else
  {
    *(v48 + 16) = v47;
  }

  *v98 = v49 | 0xC000000000000000;
  return result;
}

uint64_t sub_1D6B766A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  *&v97 = a1;
  v2 = sub_1D72585BC();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92 - v8;
  sub_1D5C4E168();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1D5C8E028();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v63 = *(v26 + 16);
        v64 = *(v26 + 24);
        v65 = v26;

        v66 = sub_1D5FA0108(v97, v63, v64);

        v67 = swift_allocObject();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E7CC0];
        *(v68 + 16) = v66 & 1;
        *(v68 + 24) = v69;
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        *v98 = v67 | 0x8000000000000000;
      }

      if (v29 == 1)
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v103[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v103[1] = v41;
        v104 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v42 = v26;
        sub_1D66665DC(v103, &v100);
        sub_1D6B7D7DC(&v100);
        sub_1D6666638(v103);
        v43 = v101;
        v96 = v102;
        v97 = v100;
        v34 = swift_allocObject();
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v97;
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        v36 = v44 | 0x1000000000000000;
        goto LABEL_24;
      }

      v93 = v26;
      v70 = swift_projectBox();
      sub_1D5D2878C(v70, v28, sub_1D5C8E028);
      sub_1D5FA0200(v22);
      v71 = swift_allocObject();
      *&v97 = swift_allocBox();
      v73 = v72;
      v74 = *(v94 + 32);
      v74(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v74(v73, v18, v15);
      *&v73[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v75 = v97 | 0x2000000000000000;
      *(v71 + 16) = v93;
      *(v71 + 24) = v75;
      v76 = v71 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5FA0248(v30, v97, v31);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v98 = v34 | 0x8000000000000000;
        }

        v78 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = v26;

        v79 = sub_1D5FA0348(v97, v78, v77);

        v34 = swift_allocObject();
        v80 = swift_allocObject();
        v81 = MEMORY[0x1E69E7CC0];
        *(v80 + 16) = v79;
        *(v80 + 24) = v81;
        v36 = v80 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v42;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = v26;

        v59 = sub_1D5FA0440(v97, v56, v55, v57);
        v61 = v60;

        v34 = swift_allocObject();
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        *(v62 + 24) = v61;
        *(v62 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v62 | 0x5000000000000000;
        *(v34 + 16) = v58;
        goto LABEL_25;
      }

      v93 = v26;
      v82 = swift_projectBox();
      sub_1D5D2878C(v82, v14, sub_1D5C4E168);
      sub_1D5FA055C(v9);
      v83 = swift_allocObject();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v95 + 32);
      v88 = v9;
      v89 = v96;
      v87(v5, v88, v96);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v87(v86, v5, v89);
      *&v86[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v83 + 16) = v93;
      *(v83 + 24) = v84 | 0x6000000000000000;
      v76 = v83 | 0x8000000000000000;
    }

    *v98 = v76;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v99;
      v39 = swift_allocObject();

      sub_1D5FA8D3C(v97, v38);

      if (v37)
      {
        return swift_deallocUninitializedObject();
      }

      *v98 = v39 | 0x7000000000000000;
      return result;
    }

LABEL_18:
    *v98 = v26;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v46 = v99;
  v47 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v48 = swift_allocObject();
  v49 = v48;
  if (v47 >> 61 == 3)
  {
    v50 = v47 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    v54 = *(v50 + 40);

    sub_1D5F58038(v51, v52, v53, v54);
    sub_1D5F50E54(v97, v51, v52, v53, v54, &v100);
    if (v46)
    {
      sub_1D5F57FEC(v51, v52, v53, v54);

      return swift_deallocUninitializedObject();
    }

    v90 = v100;
    v91 = swift_allocObject();
    *(v91 + 16) = v51;
    *(v91 + 24) = v52;
    *(v91 + 32) = v53;
    *(v91 + 40) = v54;
    *(v91 + 48) = v90;
    *(v49 + 16) = v91 | 0x8000000000000000;
  }

  else
  {
    *(v48 + 16) = v47;
  }

  *v98 = v49 | 0xC000000000000000;
  return result;
}

uint64_t sub_1D6B76F28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  *&v97 = a1;
  v2 = sub_1D72585BC();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92 - v8;
  sub_1D5C4E168();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1D5C8E028();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v63 = *(v26 + 16);
        v64 = *(v26 + 24);
        v65 = v26;

        v66 = sub_1D5FA0AEC(v97, v63, v64);

        v67 = swift_allocObject();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E7CC0];
        *(v68 + 16) = v66 & 1;
        *(v68 + 24) = v69;
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        *v98 = v67 | 0x8000000000000000;
      }

      if (v29 == 1)
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v103[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v103[1] = v41;
        v104 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v42 = v26;
        sub_1D66665DC(v103, &v100);
        sub_1D6B7D900(v97, &v100);
        sub_1D6666638(v103);
        v43 = v101;
        v96 = v102;
        v97 = v100;
        v34 = swift_allocObject();
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v97;
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        v36 = v44 | 0x1000000000000000;
        goto LABEL_24;
      }

      v93 = v26;
      v70 = swift_projectBox();
      sub_1D5D2878C(v70, v28, sub_1D5C8E028);
      sub_1D5FA0BA8(v97, v22);
      v71 = swift_allocObject();
      *&v97 = swift_allocBox();
      v73 = v72;
      v74 = *(v94 + 32);
      v74(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v74(v73, v18, v15);
      *&v73[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v75 = v97 | 0x2000000000000000;
      *(v71 + 16) = v93;
      *(v71 + 24) = v75;
      v76 = v71 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5FA0BF0(v97, v31, v30);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v98 = v34 | 0x8000000000000000;
        }

        v78 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = v26;

        v79 = sub_1D5FA0CAC(v97, v78, v77);

        v34 = swift_allocObject();
        v80 = swift_allocObject();
        v81 = MEMORY[0x1E69E7CC0];
        *(v80 + 16) = v79;
        *(v80 + 24) = v81;
        v36 = v80 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v42;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = v26;

        v59 = sub_1D5FA0D68(v97, v56, v55, v57);
        v61 = v60;

        v34 = swift_allocObject();
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        *(v62 + 24) = v61;
        *(v62 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v62 | 0x5000000000000000;
        *(v34 + 16) = v58;
        goto LABEL_25;
      }

      v93 = v26;
      v82 = swift_projectBox();
      sub_1D5D2878C(v82, v14, sub_1D5C4E168);
      sub_1D5FA0E40(v97, v9);
      v83 = swift_allocObject();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v95 + 32);
      v88 = v9;
      v89 = v96;
      v87(v5, v88, v96);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v87(v86, v5, v89);
      *&v86[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v83 + 16) = v93;
      *(v83 + 24) = v84 | 0x6000000000000000;
      v76 = v83 | 0x8000000000000000;
    }

    *v98 = v76;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v99;
      v39 = swift_allocObject();

      sub_1D5FA94D4(v97, v38, (v39 + 16));

      if (v37)
      {
        return swift_deallocUninitializedObject();
      }

      *v98 = v39 | 0x7000000000000000;
      return result;
    }

LABEL_18:
    *v98 = v26;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v46 = v99;
  v47 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v48 = swift_allocObject();
  v49 = v48;
  if (v47 >> 61 == 3)
  {
    v50 = v47 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    v54 = *(v50 + 40);

    sub_1D5F58038(v51, v52, v53, v54);
    sub_1D5F512D8(v97, v51, v52, v53, v54, &v100);
    if (v46)
    {
      sub_1D5F57FEC(v51, v52, v53, v54);

      return swift_deallocUninitializedObject();
    }

    v90 = v100;
    v91 = swift_allocObject();
    *(v91 + 16) = v51;
    *(v91 + 24) = v52;
    *(v91 + 32) = v53;
    *(v91 + 40) = v54;
    *(v91 + 48) = v90;
    *(v49 + 16) = v91 | 0x8000000000000000;
  }

  else
  {
    *(v48 + 16) = v47;
  }

  *v98 = v49 | 0xC000000000000000;
  return result;
}

uint64_t sub_1D6B777A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  *&v97 = a1;
  v2 = sub_1D72585BC();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92 - v8;
  sub_1D5C4E168();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1D5C8E028();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v63 = *(v26 + 16);
        v64 = *(v26 + 24);
        v65 = v26;

        v66 = sub_1D5FA10D8(v97, v63, v64);

        v67 = swift_allocObject();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E7CC0];
        *(v68 + 16) = v66 & 1;
        *(v68 + 24) = v69;
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        *v98 = v67 | 0x8000000000000000;
      }

      if (v29 == 1)
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v103[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v103[1] = v41;
        v104 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v42 = v26;
        sub_1D66665DC(v103, &v100);
        sub_1D6B7D9D8(v97, &v100);
        sub_1D6666638(v103);
        v43 = v101;
        v96 = v102;
        v97 = v100;
        v34 = swift_allocObject();
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v97;
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        v36 = v44 | 0x1000000000000000;
        goto LABEL_24;
      }

      v93 = v26;
      v70 = swift_projectBox();
      sub_1D5D2878C(v70, v28, sub_1D5C8E028);
      sub_1D5FA1238(v97, v22);
      v71 = swift_allocObject();
      *&v97 = swift_allocBox();
      v73 = v72;
      v74 = *(v94 + 32);
      v74(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v74(v73, v18, v15);
      *&v73[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v75 = v97 | 0x2000000000000000;
      *(v71 + 16) = v93;
      *(v71 + 24) = v75;
      v76 = v71 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5FA1280(v97, v31, v30);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v98 = v34 | 0x8000000000000000;
        }

        v78 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = v26;

        v79 = sub_1D5FA13E0(v97, v78, v77);

        v34 = swift_allocObject();
        v80 = swift_allocObject();
        v81 = MEMORY[0x1E69E7CC0];
        *(v80 + 16) = v79;
        *(v80 + 24) = v81;
        v36 = v80 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v42;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v57 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = v26;

        v59 = sub_1D5FA1540(v97, v56, v55, v57);
        v61 = v60;

        v34 = swift_allocObject();
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        *(v62 + 24) = v61;
        *(v62 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v62 | 0x5000000000000000;
        *(v34 + 16) = v58;
        goto LABEL_25;
      }

      v93 = v26;
      v82 = swift_projectBox();
      sub_1D5D2878C(v82, v14, sub_1D5C4E168);
      sub_1D5FA16C4(v97, v9);
      v83 = swift_allocObject();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v95 + 32);
      v88 = v9;
      v89 = v96;
      v87(v5, v88, v96);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v87(v86, v5, v89);
      *&v86[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v83 + 16) = v93;
      *(v83 + 24) = v84 | 0x6000000000000000;
      v76 = v83 | 0x8000000000000000;
    }

    *v98 = v76;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v99;
      v39 = swift_allocObject();

      sub_1D5FA9D9C(v97, v38, (v39 + 16));

      if (v37)
      {
        return swift_deallocUninitializedObject();
      }

      *v98 = v39 | 0x7000000000000000;
      return result;
    }

LABEL_18:
    *v98 = v26;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v46 = v99;
  v47 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v48 = swift_allocObject();
  v49 = v48;
  if (v47 >> 61 == 3)
  {
    v50 = v47 & 0x1FFFFFFFFFFFFFFFLL;
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    v54 = *(v50 + 40);

    sub_1D5F58038(v51, v52, v53, v54);
    sub_1D5F516EC(v97, v51, v52, v53, v54);
    if (v46)
    {
      sub_1D5F57FEC(v51, v52, v53, v54);

      return swift_deallocUninitializedObject();
    }

    v90 = v100;
    v91 = swift_allocObject();
    *(v91 + 16) = v51;
    *(v91 + 24) = v52;
    *(v91 + 32) = v53;
    *(v91 + 40) = v54;
    *(v91 + 48) = v90;
    *(v49 + 16) = v91 | 0x8000000000000000;
  }

  else
  {
    *(v48 + 16) = v47;
  }

  *v98 = v49 | 0xC000000000000000;
  return result;
}

uint64_t sub_1D6B78028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v20);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D6B79734(a2, MEMORY[0x1E69E7CC0], boxed_opaque_existential_1);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_1D5D282A8(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v19 = 5001813;
    v19[1] = 0xE300000000000000;
    v19[2] = 7958081;
    v19[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B782E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void (*a3)(void)@<X3>, void (*a4)(void)@<X4>, uint64_t *a5@<X8>)
{
  v24 = a4;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23[-v11];
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v23);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v12, 0, 1, v13);
    (*(v14 + 32))(v17, v12, v13);
    a5[3] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    sub_1D6B79C88(a2, MEMORY[0x1E69E7CC0], a3, v24, boxed_opaque_existential_1);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v19(v12, 1, 1, v13);
    sub_1D5D282A8(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v22 = 5001813;
    v22[1] = 0xE300000000000000;
    v22[2] = 7958081;
    v22[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B785B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v20);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D6B79C88(a2, MEMORY[0x1E69E7CC0], sub_1D6B85498, sub_1D6B85498, boxed_opaque_existential_1);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_1D5D282A8(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v19 = 5001813;
    v19[1] = 0xE300000000000000;
    v19[2] = 7958081;
    v19[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B78890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v27 = a5;
  v25 = a4;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B76B10(a1, v26);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v13, 0, 1, v14);
    (*(v15 + 32))(v18, v13, v14);
    a6[3] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    sub_1D6B7A77C(a2, a3, MEMORY[0x1E69E7CC0], v25, v27, boxed_opaque_existential_1);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v20(v13, 1, 1, v14);
    sub_1D5D282A8(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v23 = 5001813;
    v23[1] = 0xE300000000000000;
    v23[2] = 7958081;
    v23[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B78B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v20);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D6B7ACBC(a2, MEMORY[0x1E69E7CC0], boxed_opaque_existential_1);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_1D5D282A8(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v19 = 5001813;
    v19[1] = 0xE300000000000000;
    v19[2] = 7958081;
    v19[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void FormatImageNodeBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v4 = type metadata accessor for FormatOption();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27E80(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  v22 = (v21 >> 1) & 0xF;
  if (v22 <= 3)
  {
    if (v22 < 2)
    {
      return;
    }

    if (v22 == 2)
    {
      v46 = *v2;
      v47 = v17;
      v48 = v19;
      v49 = v18;
      v50 = v20;
      v51 = v21 & 0xE1;
      FormatGroupBinding.Image.bind(binder:context:)(v44, v45);
      return;
    }

    v24 = (v17 >> 59) & 2 | (v17 >> 2) & 1;
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        return;
      }

      v26 = *(v2 + 24);
      v46 = v17 & 0xEFFFFFFFFFFFFFFBLL;

      v28 = v44;
      v27 = v45;
      FormatFont.bind(binder:context:)(v44, v45);
      if (v3)
      {

        return;
      }

      sub_1D620B270(v28, v27, v19);

      v33 = v28;
      v34 = v27;
      v35 = v26;
    }

    else
    {
      v25 = *(v2 + 24);
      if (v24)
      {
        v46 = v17 & 0xEFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v46 = *(v2 + 8);
      }

      v32 = v44;
      v31 = v45;
      FormatFont.bind(binder:context:)(v44, v45);

      if (v3)
      {
        return;
      }

      sub_1D620B270(v32, v31, v19);

      v33 = v32;
      v34 = v31;
      v35 = v25;
    }

    sub_1D620B270(v33, v34, v35);

    return;
  }

  if (((v21 >> 1) & 0xF) < 7)
  {
    return;
  }

  if (v22 == 7)
  {
    v46 = *v2;
    v47 = v17;
    v48 = v19;
    v52 = 8;
    sub_1D62B4B68(v16, v17, v19, v18, v20, v21);
    v23 = sub_1D703E0C8(&v46, &v52);
    v44 = v3;
    if (!v3)
    {
      v29 = v23;
      v30 = v45;
      FormatOptionCollection.subscript.getter(v16, v17, v11);
      if ((*(v43 + 48))(v11, 1, v4) == 1)
      {

        sub_1D5D282A8(v11, &qword_1EDF337F0, type metadata accessor for FormatOption, sub_1D5D27E80);
        if ((*(v30 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v36 = v16;
          v36[1] = v17;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        (*(v43 + 56))(v15, 1, 1, v4);
      }

      else
      {
        sub_1D5D5E544(v11, v7, type metadata accessor for FormatOption);
        v46 = v7[2];

        FormatOptionValue.type.getter(&v52);
        if ((sub_1D6183C84(v52, v29) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v38 = v37;
          v40 = *v7;
          v39 = v7[1];
          v46 = v7[2];

          FormatOptionValue.type.getter(&v52);
          v41 = v52;
          *v38 = v40;
          *(v38 + 8) = v39;
          *(v38 + 16) = v41;
          *(v38 + 24) = v29;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D6B850C8(v7, type metadata accessor for FormatOption);
          return;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D5E544(v7, v15, type metadata accessor for FormatOption);
        (*(v43 + 56))(v15, 0, 1, v4);
      }

      sub_1D5D282A8(v15, &qword_1EDF337F0, type metadata accessor for FormatOption, sub_1D5D27E80);
    }
  }

  else if (v22 == 8)
  {
    v46 = *v2;
    v47 = v17;
    v48 = v19;
    v49 = v18;
    v50 = v20;
    v51 = v21 & 1;
    FormatSportsEventBinding.Image.bind(binder:context:)(v44, v45);
  }
}

uint64_t sub_1D6B7947C(uint64_t result)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = (v8 >> 1) & 0xF;
  if (v9 <= 3)
  {
    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v18 = *v1;
      v19 = v4;
      v20 = v6;
      v21 = v5;
      v22 = v7;
      v23 = v8 & 0xE1;
      return sub_1D6291A5C(result);
    }

    v12 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        return result;
      }

      v18 = v4 & 0xEFFFFFFFFFFFFFFBLL;
      v14 = result;

      sub_1D6290ACC(v14);
      if (v2)
      {
      }

      sub_1D6273544(v14, v6);

      v15 = v14;
      v16 = v5;
    }

    else
    {
      v13 = result;
      if (v12)
      {
        v18 = v4 & 0xEFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v18 = *(v1 + 8);
      }

      sub_1D6290ACC(v13);

      if (v2)
      {
        return result;
      }

      sub_1D6273544(v13, v6);

      v15 = v13;
      v16 = v5;
    }

    sub_1D6273544(v15, v16);
  }

  if (((v8 >> 1) & 0xF) >= 7)
  {
    if (v9 == 7)
    {
      v18 = *v1;
      v19 = v4;
      v20 = v6;
      v17 = 8;
      sub_1D62B4B68(v3, v4, v6, v5, v7, v8);
      result = sub_1D703E0C8(&v18, &v17);
      if (!v2)
      {
        v10 = result;
        v11 = swift_allocObject();
        *(v11 + 16) = v3;
        *(v11 + 24) = v4;
        *(v11 + 32) = v10;
        *(v11 + 40) = 0;

        sub_1D6C4D24C(v11 | 0x3000000000000000);
      }
    }

    else if (v9 == 8)
    {
      v18 = *v1;
      v19 = v4;
      v20 = v6;
      v21 = v5;
      v22 = v7;
      v23 = v8 & 1;
      return sub_1D6291E90(result);
    }
  }

  return result;
}

uint64_t sub_1D6B79734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - v9;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_1D7257C7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v42 - v22;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D5D282A8(v14, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v24 = sub_1D72585BC();
      return (*(*(v24 - 8) + 16))(a3, v3, v24);
    }

    else
    {
      v43 = v3;
      (*(v16 + 32))(v23, v14, v15);
      v26 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        v42 = a3;
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v27)
        {
          sub_1D7257C1C();
        }

        v28 = sub_1D7257B6C();
        v30 = v26;
        if (v28)
        {
          v26 = v28;
        }

        MEMORY[0x1EEE9AC00](v28, v29);
        *(&v42 - 2) = v45;
        v31 = sub_1D5FBB260(sub_1D6B85498, (&v42 - 4), a2);
        v44 = v26;
        v26 = v30;
        sub_1D69852E4(v31);
        v32 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v32);
        sub_1D7257C5C();
        (*(v16 + 8))(v19, v15);
        a3 = v42;
      }

      v33 = sub_1D7257B6C();
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v26;
      }

      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v42 - 2) = v45;
      v36 = sub_1D5FBB260(sub_1D6B85304, (&v42 - 4), a1);
      v44 = v35;
      sub_1D69852E4(v36);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v16 + 8))(v23, v15);
      v37 = sub_1D72585BC();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v10, 1, v37) == 1)
      {
        (*(v38 + 16))(a3, v43, v37);
        result = v39(v10, 1, v37);
        if (result != 1)
        {
          return sub_1D5D282A8(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v38 + 32))(a3, v10, v37);
      }
    }
  }

  else
  {
    v40 = sub_1D72585BC();
    v41 = *(*(v40 - 8) + 16);

    return v41(a3, v3, v40);
  }

  return result;
}

uint64_t sub_1D6B79C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a5;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v45 - v11;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v45 - v15;
  v17 = sub_1D7257C7C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v45 - v24;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1D5D282A8(v16, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v26 = sub_1D72585BC();
      return (*(*(v26 - 8) + 16))(v47, v5, v26);
    }

    else
    {
      v45 = v5;
      (*(v18 + 32))(v25, v16, v17);
      v28 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v29)
        {
          sub_1D7257C1C();
        }

        v30 = sub_1D7257B6C();
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1EEE9AC00](v30, v31);
        *(&v45 - 2) = &v49;
        v33 = sub_1D5FBB260(a4, (&v45 - 4), a2);
        v48 = v32;
        v28 = MEMORY[0x1E69E7CC0];
        sub_1D69852E4(v33);
        v34 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v34);
        sub_1D7257C5C();
        (*(v18 + 8))(v21, v17);
      }

      v35 = sub_1D7257B6C();
      if (v35)
      {
        v28 = v35;
      }

      MEMORY[0x1EEE9AC00](v35, v36);
      *(&v45 - 2) = &v49;
      v37 = sub_1D5FBB260(v46, (&v45 - 4), a1);
      v48 = v28;
      sub_1D69852E4(v37);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v18 + 8))(v25, v17);
      v38 = sub_1D72585BC();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);
      if (v40(v12, 1, v38) == 1)
      {
        (*(v39 + 16))(v47, v45, v38);
        result = v40(v12, 1, v38);
        if (result != 1)
        {
          return sub_1D5D282A8(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v39 + 32))(v47, v12, v38);
      }
    }
  }

  else
  {
    v41 = sub_1D72585BC();
    v42 = *(*(v41 - 8) + 16);
    v43 = v41;
    v44 = v47;

    return v42(v44, v5, v43);
  }

  return result;
}

uint64_t sub_1D6B7A1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - v9;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_1D7257C7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v42 - v22;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D5D282A8(v14, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v24 = sub_1D72585BC();
      return (*(*(v24 - 8) + 16))(a3, v3, v24);
    }

    else
    {
      v43 = v3;
      (*(v16 + 32))(v23, v14, v15);
      v26 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        v42 = a3;
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v27)
        {
          sub_1D7257C1C();
        }

        v28 = sub_1D7257B6C();
        v30 = v26;
        if (v28)
        {
          v26 = v28;
        }

        MEMORY[0x1EEE9AC00](v28, v29);
        *(&v42 - 2) = v45;
        v31 = sub_1D5FBB260(sub_1D6B85498, (&v42 - 4), a2);
        v44 = v26;
        v26 = v30;
        sub_1D69852E4(v31);
        v32 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v32);
        sub_1D7257C5C();
        (*(v16 + 8))(v19, v15);
        a3 = v42;
      }

      v33 = sub_1D7257B6C();
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v26;
      }

      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v42 - 2) = v45;
      v36 = sub_1D5FBB260(sub_1D6B85304, (&v42 - 4), a1);
      v44 = v35;
      sub_1D69852E4(v36);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v16 + 8))(v23, v15);
      v37 = sub_1D72585BC();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v10, 1, v37) == 1)
      {
        (*(v38 + 16))(a3, v43, v37);
        result = v39(v10, 1, v37);
        if (result != 1)
        {
          return sub_1D5D282A8(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v38 + 32))(a3, v10, v37);
      }
    }
  }

  else
  {
    v40 = sub_1D72585BC();
    v41 = *(*(v40 - 8) + 16);

    return v41(a3, v3, v40);
  }

  return result;
}

uint64_t sub_1D6B7A77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v52 = a1;
  v53 = a4;
  v54 = a6;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v49 - v12;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v49 - v16;
  v18 = sub_1D7257C7C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  if (*(a2 + 16) || *(a3 + 16))
  {
    sub_1D7257BCC();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_1D5D282A8(v17, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v27 = sub_1D72585BC();
      return (*(*(v27 - 8) + 16))(v54, v6, v27);
    }

    else
    {
      v50 = v6;
      (*(v19 + 32))(v26, v17, v18);
      v29 = *(a3 + 16);
      v30 = MEMORY[0x1E69E7CC0];
      v51 = a2;
      if (v29)
      {
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v31)
        {
          sub_1D7257C1C();
        }

        v32 = sub_1D7257B6C();
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1EEE9AC00](v32, v33);
        v35 = v52;
        *(&v49 - 2) = v52;
        v36 = sub_1D5FBB260(a5, (&v49 - 4), a3);
        v55 = v34;
        v30 = MEMORY[0x1E69E7CC0];
        sub_1D69852E4(v36);
        v37 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v37);
        sub_1D7257C5C();
        (*(v19 + 8))(v22, v18);
      }

      else
      {
        v35 = v52;
      }

      v38 = sub_1D7257B6C();
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = v30;
      }

      MEMORY[0x1EEE9AC00](v38, v39);
      *(&v49 - 2) = v35;
      v41 = sub_1D5FBB260(v53, (&v49 - 4), v51);
      v55 = v40;
      sub_1D69852E4(v41);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v19 + 8))(v26, v18);
      v42 = sub_1D72585BC();
      v43 = *(v42 - 8);
      v44 = *(v43 + 48);
      if (v44(v13, 1, v42) == 1)
      {
        (*(v43 + 16))(v54, v50, v42);
        result = v44(v13, 1, v42);
        if (result != 1)
        {
          return sub_1D5D282A8(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v43 + 32))(v54, v13, v42);
      }
    }
  }

  else
  {
    v45 = sub_1D72585BC();
    v46 = *(*(v45 - 8) + 16);
    v47 = v45;
    v48 = v54;

    return v46(v48, v6, v47);
  }

  return result;
}

uint64_t sub_1D6B7ACBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - v9;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_1D7257C7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v42 - v22;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D5D282A8(v14, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v24 = sub_1D72585BC();
      return (*(*(v24 - 8) + 16))(a3, v3, v24);
    }

    else
    {
      v43 = v3;
      (*(v16 + 32))(v23, v14, v15);
      v26 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        v42 = a3;
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v27)
        {
          sub_1D7257C1C();
        }

        v28 = sub_1D7257B6C();
        v30 = v26;
        if (v28)
        {
          v26 = v28;
        }

        MEMORY[0x1EEE9AC00](v28, v29);
        *(&v42 - 2) = v45;
        v31 = sub_1D5FBB260(sub_1D6B85498, (&v42 - 4), a2);
        v44 = v26;
        v26 = v30;
        sub_1D69852E4(v31);
        v32 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v32);
        sub_1D7257C5C();
        (*(v16 + 8))(v19, v15);
        a3 = v42;
      }

      v33 = sub_1D7257B6C();
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v26;
      }

      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v42 - 2) = v45;
      v36 = sub_1D5FBB260(sub_1D6B85304, (&v42 - 4), a1);
      v44 = v35;
      sub_1D69852E4(v36);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v16 + 8))(v23, v15);
      v37 = sub_1D72585BC();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v10, 1, v37) == 1)
      {
        (*(v38 + 16))(a3, v43, v37);
        result = v39(v10, 1, v37);
        if (result != 1)
        {
          return sub_1D5D282A8(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v38 + 32))(a3, v10, v37);
      }
    }
  }

  else
  {
    v40 = sub_1D72585BC();
    v41 = *(*(v40 - 8) + 16);

    return v41(a3, v3, v40);
  }

  return result;
}

uint64_t sub_1D6B7B210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedRecipe();
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF34D20, type metadata accessor for FeedRecipe, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedRecipe);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v13 = 0x6963655264656546;
    *(v13 + 8) = 0xEA00000000006570;
    *(v13 + 56) = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1D6B7B418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v48);
      sub_1D5EFF46C();
      if (swift_dynamicCast())
      {
        break;
      }

      --v2;
      sub_1D5F588A0(&v14);
      v44 = v26;
      v45 = v27;
      v46 = v28;
      v40 = v22;
      v41 = v23;
      v42 = v24;
      v43 = v25;
      v36 = v18;
      v37 = v19;
      v38 = v20;
      v39 = v21;
      v32 = v14;
      v33 = v15;
      v34 = v16;
      v35 = v17;
      v30[12] = v26;
      v30[13] = v27;
      v30[14] = v28;
      v30[8] = v22;
      v30[9] = v23;
      v30[10] = v24;
      v30[11] = v25;
      v30[4] = v18;
      v30[5] = v19;
      v30[6] = v20;
      v30[7] = v21;
      v30[0] = v14;
      v30[1] = v15;
      v47 = v29;
      v31 = v29;
      v30[2] = v16;
      v30[3] = v17;
      sub_1D5D282A8(v30, &qword_1EDF34BC0, &type metadata for FeedPaywall, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    result = nullsub_1(&v32);
    v7 = v45;
    *(a2 + 192) = v44;
    *(a2 + 208) = v7;
    *(a2 + 224) = v46;
    *(a2 + 240) = v47;
    v8 = v41;
    *(a2 + 128) = v40;
    *(a2 + 144) = v8;
    v9 = v43;
    *(a2 + 160) = v42;
    *(a2 + 176) = v9;
    v10 = v37;
    *(a2 + 64) = v36;
    *(a2 + 80) = v10;
    v11 = v39;
    *(a2 + 96) = v38;
    *(a2 + 112) = v11;
    v12 = v33;
    *a2 = v32;
    *(a2 + 16) = v12;
    v13 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v13;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v5 = 0x7779615064656546;
    *(v5 + 8) = 0xEB000000006C6C61;
    *(v5 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v9);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_1D5F5885C(0, 0);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    *a2 = *&v7[0];
    *(a2 + 8) = *(v7 + 8);
    *(a2 + 24) = *(&v7[1] + 1);
    *(a2 + 32) = v8 & 1;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v6 = 0x726F705364656546;
    *(v6 + 8) = 0xEF746E6576457374;
    *(v6 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7B794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF39CF0, type metadata accessor for FeedCustomItem);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedCustomItem();
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF39CF0, type metadata accessor for FeedCustomItem, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedCustomItem);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v13, "FeedCustomItem");
    v13[15] = -18;
    v13[56] = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1D6B7B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedPuzzleStatistic();
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedPuzzleStatistic);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v13 = 0xD000000000000013;
    *(v13 + 8) = 0x80000001D73C3770;
    *(v13 + 56) = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1D6B7BBAC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v14);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      memset(v9, 0, sizeof(v9));
      sub_1D5D282A8(v9, &unk_1EDF154F0, &type metadata for FeedPuzzleType, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v7 = v11;
    *a2 = v10;
    a2[1] = v7;
    v8 = v13;
    a2[2] = v12;
    a2[3] = v8;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v6, "FeedPuzzleType");
    v6[15] = -18;
    v6[56] = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7BCEC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v26);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      sub_1D5D282A8(&v13, &qword_1EDF12E30, &type metadata for FeedPuzzle, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v7 = v24;
    a2[10] = v23;
    a2[11] = v7;
    a2[12] = v25;
    v8 = v20;
    a2[6] = v19;
    a2[7] = v8;
    v9 = v22;
    a2[8] = v21;
    a2[9] = v9;
    v10 = v16;
    a2[2] = v15;
    a2[3] = v10;
    v11 = v18;
    a2[4] = v17;
    a2[5] = v11;
    v12 = v14;
    *a2 = v13;
    a2[1] = v12;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v6 = 0x7A7A755064656546;
    *(v6 + 8) = 0xEA0000000000656CLL;
    *(v6 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7BE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedWebEmbed();
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF34968, type metadata accessor for FeedWebEmbed, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedWebEmbed);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v13, "FeedWebEmbed");
    v13[13] = 0;
    *(v13 + 7) = -5120;
    v13[56] = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1D6B7C06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v21);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      sub_1D5D282A8(&v11, &unk_1EDF34F60, &type metadata for FeedTag, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v7 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v7;
    *(a2 + 128) = v19;
    *(a2 + 144) = v20;
    v8 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v8;
    v9 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v9;
    v10 = v12;
    *a2 = v11;
    *(a2 + 16) = v10;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v6 = 0x67615464656546;
    *(v6 + 8) = 0xE700000000000000;
    *(v6 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7C1C8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v29);
      sub_1D5EFF46C();
      if (swift_dynamicCast())
      {
        break;
      }

      --v2;
      sub_1D5D62850(&v11);
      v27 = v17;
      v28[0] = v18[0];
      *(v28 + 9) = *(v18 + 9);
      v23 = v13;
      v24 = v14;
      v25 = v15;
      v26 = v16;
      v21 = v11;
      v22 = v12;
      v19[6] = v17;
      v20[0] = v18[0];
      *(v20 + 9) = *(v18 + 9);
      v19[2] = v13;
      v19[3] = v14;
      v19[4] = v15;
      v19[5] = v16;
      v19[0] = v11;
      v19[1] = v12;
      sub_1D5D282A8(v19, &qword_1EDF34E30, &type metadata for FeedIssue, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    result = nullsub_1(&v21);
    v7 = v28[0];
    a2[6] = v27;
    a2[7] = v7;
    *(a2 + 121) = *(v28 + 9);
    v8 = v24;
    a2[2] = v23;
    a2[3] = v8;
    v9 = v26;
    a2[4] = v25;
    a2[5] = v9;
    v10 = v22;
    *a2 = v21;
    a2[1] = v10;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v5 = 0x7573734964656546;
    *(v5 + 8) = 0xE900000000000065;
    *(v5 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7C374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedHeadline(0);
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF42030, type metadata accessor for FeedHeadline, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedHeadline);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v13, "FeedHeadline");
    v13[13] = 0;
    *(v13 + 7) = -5120;
    v13[56] = 6;
    return swift_willThrow();
  }
}

void sub_1D6B7C580(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v116 = a3;
  v117 = a4;
  v109 = a2;
  v118 = a1;
  v5 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v115 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v112, v8);
  v113 = (&v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27E80(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v109 - v12;
  v14 = type metadata accessor for FormatOption();
  v114 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeedPuzzleStatistic();
  v110 = *(v18 - 8);
  v19 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v111 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v109 - v23;
  v25 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v4;
  v30 = *(v4 + 8);
  v31 = *(v4 + 16);
  v32 = *(v4 + 24);
  v33 = *(v4 + 32);
  v34 = *(v4 + 40);
  v35 = (v34 >> 1) & 0xF;
  if (v35 > 4)
  {
    if (((v34 >> 1) & 0xF) <= 6)
    {
      v55 = v140;
      if (v35 == 5)
      {
        sub_1D6B7BBAC(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v139);
        if (!v55)
        {
          v56 = swift_allocObject();
          v57 = v116;
          v58 = *(v116 + 96);
          v133 = *(v116 + 80);
          v134 = v58;
          v135 = *(v116 + 112);
          LOBYTE(v136) = *(v116 + 128);
          v59 = *(v116 + 64);
          v131 = *(v116 + 48);
          v132 = v59;
          v60 = swift_allocObject();
          v61 = v139[1];
          v60[1] = v139[0];
          v60[2] = v61;
          v62 = v139[3];
          v60[3] = v139[2];
          v60[4] = v62;
          *(v56 + 16) = 0u;
          *(v56 + 32) = 0u;
          v63 = *(v57 + 96);
          *(v56 + 88) = *(v57 + 80);
          *(v56 + 104) = v63;
          *(v56 + 120) = *(v57 + 112);
          v64 = *(v57 + 64);
          *(v56 + 56) = *(v57 + 48);
          *(v56 + 48) = 1;
          *(v56 + 136) = *(v57 + 128);
          *(v56 + 72) = v64;
          *(v56 + 144) = sub_1D6A3CDCC;
          *(v56 + 152) = v60;
          *v117 = v56 | 0x2000000000000000;
          sub_1D673F334(&v131, &v122);
        }
      }

      else
      {
        v84 = v29;
        sub_1D6B7B9A4(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v24);
        if (!v55)
        {
          if (v84)
          {
            v85 = swift_allocObject();
            v86 = *(v116 + 96);
            v133 = *(v116 + 80);
            v134 = v86;
            v135 = *(v116 + 112);
            LOBYTE(v136) = *(v116 + 128);
            v87 = *(v116 + 64);
            v131 = *(v116 + 48);
            v132 = v87;
            v88 = v111;
            sub_1D5D5E544(v24, v111, type metadata accessor for FeedPuzzleStatistic);
            v89 = (*(v110 + 80) + 16) & ~*(v110 + 80);
            v90 = swift_allocObject();
            sub_1D5D5E544(v88, v90 + v89, type metadata accessor for FeedPuzzleStatistic);
            *(v85 + 16) = 0u;
            *(v85 + 32) = 0u;
            v91 = v134;
            *(v85 + 88) = v133;
            *(v85 + 104) = v91;
            *(v85 + 120) = v135;
            v92 = v132;
            *(v85 + 56) = v131;
            *(v85 + 48) = 1;
            *(v85 + 136) = v136;
            *(v85 + 72) = v92;
            v93 = sub_1D683EA90;
          }

          else
          {
            v85 = swift_allocObject();
            v95 = *(v116 + 96);
            v133 = *(v116 + 80);
            v134 = v95;
            v135 = *(v116 + 112);
            LOBYTE(v136) = *(v116 + 128);
            v96 = *(v116 + 64);
            v131 = *(v116 + 48);
            v132 = v96;
            v97 = v111;
            sub_1D5D5E544(v24, v111, type metadata accessor for FeedPuzzleStatistic);
            v98 = (*(v110 + 80) + 16) & ~*(v110 + 80);
            v90 = swift_allocObject();
            sub_1D5D5E544(v97, v90 + v98, type metadata accessor for FeedPuzzleStatistic);
            *(v85 + 16) = 0u;
            *(v85 + 32) = 0u;
            v99 = v134;
            *(v85 + 88) = v133;
            *(v85 + 104) = v99;
            *(v85 + 120) = v135;
            v100 = v132;
            *(v85 + 56) = v131;
            *(v85 + 48) = 1;
            *(v85 + 136) = v136;
            *(v85 + 72) = v100;
            v93 = sub_1D683EB10;
          }

          *(v85 + 144) = v93;
          *(v85 + 152) = v90;
          *v117 = v85 | 0x2000000000000000;
          sub_1D673F334(&v131, &v122);
        }
      }
    }

    else
    {
      v42 = v140;
      if (v35 == 7)
      {
        v65 = v31;
        v66 = v118;
        v67 = v29;
        v68 = v30;

        FormatOptionCollection.subscript.getter(v67, v68, v13);
        if ((*(v114 + 48))(v13, 1, v14) == 1)
        {
          sub_1D5D282A8(v13, &qword_1EDF337F0, type metadata accessor for FormatOption, sub_1D5D27E80);
          v69 = v113;
          *v113 = v67;
          *(v69 + 8) = v68;
          swift_storeEnumTagMultiPayload();
          v70 = *(v66 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v72 = swift_allocError();
          if ((v70 & 1) == 0)
          {
            sub_1D5D2878C(v69, v71, type metadata accessor for FormatLayoutError);
            swift_willThrow();
            v53 = type metadata accessor for FormatLayoutError;
            v54 = v69;
LABEL_36:
            sub_1D6B850C8(v54, v53);
            return;
          }

          sub_1D5D5E544(v69, v71, type metadata accessor for FormatLayoutError);

          v73 = 0x9000000000000000;
        }

        else
        {

          sub_1D5D5E544(v13, v17, type metadata accessor for FormatOption);

          v94 = v140;
          sub_1D6B744A8(v66, &v122);
          if (v94)
          {
            sub_1D6B850C8(v17, type metadata accessor for FormatOption);

            return;
          }

          sub_1D6B8227C(v122, v67, v68, v65, v66, &v131);
          v140 = 0;
          sub_1D6B850C8(v17, type metadata accessor for FormatOption);

          v73 = v131;
        }

        *&v131 = v73;
        sub_1D6F7D724(v66, v109, v116, v117);

        return;
      }

      v43 = v29;
      v44 = v118;
      if (v35 != 8)
      {
        v83 = v115;
        sub_1D6B7B210(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v115);
        if (v42)
        {
          return;
        }

        LOBYTE(v131) = v43 & 1;
        sub_1D6AD0E24(*(v83 + 56), v116, v117);
        v53 = type metadata accessor for FeedRecipe;
        v54 = v83;
        goto LABEL_36;
      }

      v45 = v32;
      v46 = v31;
      v47 = v30;
      sub_1D6B7B65C(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v131);
      if (!v42)
      {
        v48 = v131;
        v49 = v132;
        v50 = v133;
        *&v131 = v43;
        *(&v131 + 1) = v47;
        *&v132 = v46;
        *(&v132 + 1) = v45;
        *&v133 = v33;
        BYTE8(v133) = v34 & 1;
        v122 = v48;
        v123 = v49;
        LOBYTE(v124) = v50;
        sub_1D715CD38(&v122, v44, v116, v117);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (((v34 >> 1) & 0xF) > 1)
    {
      v36 = v140;
      v37 = v118;
      if (v35 == 2)
      {
        *&v131 = v29;
        *(&v131 + 1) = v30;
        *&v132 = v31;
        *(&v132 + 1) = v32;
        *&v133 = v33;
        BYTE8(v133) = v34 & 0xE1;
        sub_1D71D9B70(v118, v116, v117);
      }

      else
      {
        v38 = v29;
        if (v35 == 3)
        {
          v39 = v32;
          v40 = v31;
          v41 = v30;
          sub_1D6B7C06C(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v131);
          if (!v36)
          {
            *&v122 = v38;
            *(&v122 + 1) = v41;
            *&v123 = v40;
            *(&v123 + 1) = v39;
            sub_1D6AC722C(v132, v37, v116, v117);
            sub_1D5EE5B54(&v131);
          }
        }

        else
        {
          sub_1D6B7BCEC(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v131);
          if (!v36)
          {
            v74 = *(&v134 + 1);
            if (v38)
            {
              v75 = swift_allocObject();
              v76 = v116;
              v77 = *(v116 + 96);
              v124 = *(v116 + 80);
              v125 = v77;
              v126 = *(v116 + 112);
              LOBYTE(v127) = *(v116 + 128);
              v78 = *(v116 + 64);
              v122 = *(v116 + 48);
              v123 = v78;
              v79 = swift_allocObject();
              *(v75 + 16) = 0u;
              *(v75 + 32) = 0u;
              v80 = *(v76 + 96);
              *(v75 + 88) = *(v76 + 80);
              *(v75 + 104) = v80;
              *(v75 + 120) = *(v76 + 112);
              v81 = *(v76 + 64);
              *(v75 + 56) = *(v76 + 48);
              *(v79 + 16) = v74;
              *(v75 + 48) = 1;
              *(v75 + 136) = *(v76 + 128);
              *(v75 + 72) = v81;
              if (v38 == 1)
              {
                v82 = sub_1D6B8529C;
              }

              else
              {
                v82 = sub_1D6B85294;
              }

              *(v75 + 144) = v82;
              *(v75 + 152) = v79;
              v108 = v75 | 0x2000000000000000;
            }

            else
            {
              v101 = v116;
              v102 = *(v116 + 96);
              v124 = *(v116 + 80);
              v125 = v102;
              v126 = *(v116 + 112);
              LOBYTE(v127) = *(v116 + 128);
              v103 = *(v116 + 64);
              v122 = *(v116 + 48);
              v123 = v103;
              v104 = swift_allocObject();
              v105 = *(v101 + 96);
              *&v130[39] = *(v101 + 80);
              *&v130[55] = v105;
              *&v130[71] = *(v101 + 112);
              v106 = *(v101 + 64);
              *&v130[7] = *(v101 + 48);
              *(v104 + 16) = v74;
              LOBYTE(v119[0]) = 1;
              v130[87] = *(v101 + 128);
              *&v130[23] = v106;
              v107 = swift_allocObject();
              *(v107 + 16) = 0u;
              *(v107 + 32) = 0u;
              *(v107 + 48) = 1;
              *(v107 + 81) = *&v130[32];
              *(v107 + 97) = *&v130[48];
              *(v107 + 113) = *&v130[64];
              *(v107 + 129) = *&v130[80];
              *(v107 + 49) = *v130;
              *(v107 + 65) = *&v130[16];
              *(v107 + 144) = sub_1D673F3C4;
              *(v107 + 152) = v104;
              v108 = v107 | 0x2000000000000000;
            }

            *v117 = v108;
            sub_1D673F334(&v122, v119);
            swift_unknownObjectRetain();
            sub_1D5F2DF58(&v131);
          }
        }
      }

      return;
    }

    v51 = v29;
    v52 = v140;
    if (!v35)
    {
      sub_1D6B7C374(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v28);
      if (v52)
      {
        return;
      }

      LOBYTE(v131) = v51;
      FormatHeadlineBinding.Image.image(from:imageContext:)(v28, v116, v117);
      v53 = type metadata accessor for FeedHeadline;
      v54 = v28;
      goto LABEL_36;
    }

    sub_1D6B7C1C8(*(v118 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v131);
    if (!v52)
    {
      v128 = v137;
      v129[0] = v138[0];
      *(v129 + 9) = *(v138 + 9);
      v124 = v133;
      v125 = v134;
      v126 = v135;
      v127 = v136;
      v122 = v131;
      v123 = v132;
      v119[6] = v137;
      *v120 = v138[0];
      *&v120[9] = *(v138 + 9);
      v119[2] = v133;
      v119[3] = v134;
      v119[4] = v135;
      v119[5] = v136;
      v121 = v51 & 1;
      v119[0] = v131;
      v119[1] = v132;
      sub_1D6AEFF4C(v119, v116, v117);
      sub_1D5ECF320(&v122);
    }
  }
}

uint64_t sub_1D6B7D36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v14[0] = *v2;
    v14[1] = v4;
    v15 = *(v2 + 32);
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v10, a2);
  }

  else
  {
    v11 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v11;
    *(a2 + 32) = *(v2 + 32);
    return sub_1D66665DC(v2, v14);
  }
}

uint64_t sub_1D6B7D490@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v23 = a1[5];
  v24 = v4;
  v5 = a1[4];
  v21 = a1[3];
  v22 = v5;
  v6 = a1[2];
  v19 = a1[1];
  v20 = v6;
  v18 = *a1;
  if (*(*(v2 + 32) + 16))
  {
    v7 = *(v2 + 16);
    v16[0] = *v2;
    v16[1] = v7;
    v17 = *(v2 + 32);
    v8 = off_1F51B1B90();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v15 = *(v8 + 56);

      v11 = sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v15;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v12, a2);
  }

  else
  {
    v13 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v2 + 32);
    return sub_1D66665DC(v2, v16);
  }
}

uint64_t sub_1D6B7D5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v14[0] = *v2;
    v14[1] = v4;
    v15 = *(v2 + 32);
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v10, a2);
  }

  else
  {
    v11 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v11;
    *(a2 + 32) = *(v2 + 32);
    return sub_1D66665DC(v2, v14);
  }
}

uint64_t sub_1D6B7D6E8@<X0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 32) + 16))
  {
    v3 = *(v1 + 16);
    v12[0] = *v1;
    v12[1] = v3;
    v13 = *(v1 + 32);
    v4 = sub_1D6C4356C();
    v5 = *(*(v4 + 40) + 16);
    swift_beginAccess();
    if (*(*(v5 + 16) + 16))
    {
      v11 = *(v4 + 56);

      v7 = sub_1D6F622E0(v6);
      sub_1D5B886D0(v7);

      v8 = v11;
    }

    else
    {
      v8 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v8, a1);
  }

  else
  {
    v9 = *(v1 + 16);
    *a1 = *v1;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(v1 + 32);
    return sub_1D66665DC(v1, v12);
  }
}

uint64_t sub_1D6B7D7DC@<X0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 32) + 16))
  {
    v3 = *(v1 + 16);
    v13[0] = *v1;
    v13[1] = v3;
    v14 = *(v1 + 32);
    v4 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v5 = v4();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v9, a1);
  }

  else
  {
    v10 = *(v1 + 16);
    *a1 = *v1;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(v1 + 32);
    return sub_1D66665DC(v1, v13);
  }
}

uint64_t sub_1D6B7D900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v13[0] = *v2;
    v13[1] = v4;
    v14 = *(v2 + 32);
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v9, a2);
  }

  else
  {
    v10 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v2 + 32);
    return sub_1D66665DC(v2, v13);
  }
}

uint64_t sub_1D6B7D9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v14[0] = *v2;
    v14[1] = v4;
    v15 = *(v2 + 32);
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v11 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    sub_1D6E182F8(v9, a2);
  }

  else
  {
    v12 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v12;
    *(a2 + 32) = *(v2 + 32);
    return sub_1D66665DC(v2, v14);
  }
}

uint64_t sub_1D6B7DC5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v9 = a5[5];
  v38 = a5[4];
  v39 = v9;
  v40 = a5[6];
  v10 = a5[1];
  v34 = *a5;
  v35 = v10;
  v11 = a5[3];
  v12 = a1 >> 60;
  v36 = a5[2];
  v37 = v11;
  if ((a1 >> 60) > 0xD)
  {
LABEL_14:
    if (v12)
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v31[3] = MEMORY[0x1E69E6158];
      v31[0] = v27;
      v31[1] = v26;
      MEMORY[0x1EEE9AC00](v26, a2);

      sub_1D632A5E4(v31, sub_1D6B85540, a4, &v32);
      v19 = v31;
      if (v5)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(v31);
      sub_1D5B76B10(&v32, v31);
      if (swift_dynamicCast())
      {
        goto LABEL_5;
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v29 = a2;
      v29[1] = a3;
      v29[2] = 0x676E69727453;
      v29[3] = 0xE600000000000000;
      v29[4] = 0x676E69727453;
      v29[5] = 0xE600000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_7:
      v19 = &v32;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v19);
      return a3;
    }

    goto LABEL_3;
  }

  if (((1 << v12) & 0x36FC) == 0)
  {
    if (v12 == 8)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v21 = a5[5];
      v41[4] = a5[4];
      v41[5] = v21;
      v41[6] = a5[6];
      v22 = a5[1];
      v41[0] = *a5;
      v41[1] = v22;
      v23 = a5[3];
      v41[2] = a5[2];
      v41[3] = v23;
      swift_retain_n();

      v24 = sub_1D6B7DC5C(v20, a2, a3, a4, v41);
      if (!v5)
      {
        a3 = v24;
      }

      return a3;
    }

    if (v12 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 0x676E69727453;
      v25[3] = 0xE600000000000000;
      v25[4] = 0x7463617274736261;
      v25[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return a3;
    }

    goto LABEL_14;
  }

LABEL_3:
  v30 = a1;
  sub_1D6BE73AC(v31);
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1D632A5E4(v31, sub_1D6B85540, a4, &v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  if (!v5)
  {
    sub_1D5B76B10(&v32, v31);
    if (swift_dynamicCast())
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(&v32);
      return v30;
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    v16 = v15;
    __swift_project_boxed_opaque_existential_1(&v32, v33);
    swift_getDynamicType();

    v17 = sub_1D7264C5C();
    *v16 = a2;
    v16[1] = a3;
    v16[2] = 0x676E69727453;
    v16[3] = 0xE600000000000000;
    v16[4] = v17;
    v16[5] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  return a3;
}

uint64_t sub_1D6B7E138@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t *a6@<X8>)
{
  v11 = a5[5];
  v39 = a5[4];
  v40 = v11;
  v41 = a5[6];
  v12 = a5[1];
  v35 = *a5;
  v36 = v12;
  v13 = a5[3];
  v14 = a1 >> 60;
  v37 = a5[2];
  v38 = v13;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v31 = a1;
      sub_1D6BE73AC(v32);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v32, sub_1D6B85540, a4, &v33);
      result = __swift_destroy_boxed_opaque_existential_1(v32);
      if (v6)
      {
        return result;
      }

      sub_1D5B76B10(&v33, v32);
      if (swift_dynamicCast())
      {
LABEL_5:
        result = __swift_destroy_boxed_opaque_existential_1(&v33);
        *a6 = v31;
        return result;
      }

      sub_1D5C8500C(0xF000000000000007);
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v19 = v18;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      swift_getDynamicType();

      v20 = sub_1D7264C5C();
      *v19 = a2;
      v19[1] = a3;
      v19[2] = 0x6F4674616D726F46;
      v19[3] = 0xEA0000000000746ELL;
      v19[4] = v20;
      v19[5] = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v24 = a5[5];
      v42[4] = a5[4];
      v42[5] = v24;
      v42[6] = a5[6];
      v25 = a5[1];
      v42[0] = *a5;
      v42[1] = v25;
      v26 = a5[3];
      v42[2] = a5[2];
      v42[3] = v26;
      swift_retain_n();

      sub_1D6B7E138(v23, a2, a3, a4, v42);
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v27 = a2;
      v27[1] = a3;
      v27[2] = 0x6F4674616D726F46;
      v27[3] = 0xEA0000000000746ELL;
      v27[4] = 0x7463617274736261;
      v27[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v32[3] = MEMORY[0x1E69E6158];
  v32[0] = v29;
  v32[1] = v28;
  MEMORY[0x1EEE9AC00](v28, a2);

  sub_1D632A5E4(v32, sub_1D6B85540, a4, &v33);
  v22 = v32;
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_1D5B76B10(&v33, v32);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C8500C(0xF000000000000007);
  type metadata accessor for FormatLayoutError();
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v30 = a2;
  v30[1] = a3;
  v30[2] = 0x6F4674616D726F46;
  v30[3] = 0xEA0000000000746ELL;
  v30[4] = 0x676E69727453;
  v30[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v22 = &v33;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D6B7E640@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t *a6@<X8>)
{
  v11 = a5[5];
  v39 = a5[4];
  v40 = v11;
  v41 = a5[6];
  v12 = a5[1];
  v35 = *a5;
  v36 = v12;
  v13 = a5[3];
  v14 = a1 >> 60;
  v37 = a5[2];
  v38 = v13;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v31 = a1;
      sub_1D6BE73AC(v32);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v32, sub_1D6B85540, a4, &v33);
      result = __swift_destroy_boxed_opaque_existential_1(v32);
      if (v6)
      {
        return result;
      }

      sub_1D5B76B10(&v33, v32);
      if (swift_dynamicCast())
      {
LABEL_5:
        result = __swift_destroy_boxed_opaque_existential_1(&v33);
        *a6 = v31;
        return result;
      }

      sub_1D5C84FF4(0xF000000000000007);
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v19 = v18;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      swift_getDynamicType();

      v20 = sub_1D7264C5C();
      *v19 = a2;
      v19[1] = a3;
      v19[2] = 0x6F4374616D726F46;
      v19[3] = 0xEB00000000726F6CLL;
      v19[4] = v20;
      v19[5] = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v24 = a5[5];
      v42[4] = a5[4];
      v42[5] = v24;
      v42[6] = a5[6];
      v25 = a5[1];
      v42[0] = *a5;
      v42[1] = v25;
      v26 = a5[3];
      v42[2] = a5[2];
      v42[3] = v26;
      swift_retain_n();

      sub_1D6B7E640(v23, a2, a3, a4, v42);
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v27 = a2;
      v27[1] = a3;
      v27[2] = 0x6F4374616D726F46;
      v27[3] = 0xEB00000000726F6CLL;
      v27[4] = 0x7463617274736261;
      v27[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v32[3] = MEMORY[0x1E69E6158];
  v32[0] = v29;
  v32[1] = v28;
  MEMORY[0x1EEE9AC00](v28, a2);

  sub_1D632A5E4(v32, sub_1D6B85540, a4, &v33);
  v22 = v32;
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_1D5B76B10(&v33, v32);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C84FF4(0xF000000000000007);
  type metadata accessor for FormatLayoutError();
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v30 = a2;
  v30[1] = a3;
  v30[2] = 0x6F4374616D726F46;
  v30[3] = 0xEB00000000726F6CLL;
  v30[4] = 0x676E69727453;
  v30[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v22 = &v33;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D6B7EB54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a3;
  v59 = a4;
  v56 = a6;
  v57 = a2;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - v14;
  v16 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v25 = &v55 - v24;
  v26 = a5[5];
  v64[4] = a5[4];
  v64[5] = v26;
  v64[6] = a5[6];
  v27 = a5[1];
  v64[0] = *a5;
  v64[1] = v27;
  v28 = a5[3];
  v29 = a1 >> 60;
  v64[2] = a5[2];
  v64[3] = v28;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v29) & 0x36FC) != 0)
    {
LABEL_3:
      v30 = v23;
      v60 = a1;
      sub_1D6BE73AC(v61);
      MEMORY[0x1EEE9AC00](v31, v32);
      *(&v55 - 2) = v64;
      v33 = v66;
      sub_1D632A5E4(v61, sub_1D6B85540, v59, &v62);
      result = __swift_destroy_boxed_opaque_existential_1(v61);
      if (v33)
      {
        return result;
      }

      sub_1D5B76B10(&v62, v61);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&v62);
        (*(v30 + 56))(v15, 0, 1, v16);
        v35 = *(v30 + 32);
        v35(v25, v15, v16);
        return (v35)(v56, v25, v16);
      }

      (*(v30 + 56))(v15, 1, 1, v16);
      sub_1D5D282A8(v15, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v37 = v36;
      __swift_project_boxed_opaque_existential_1(&v62, v63);
      swift_getDynamicType();
      v38 = v58;

      v39 = sub_1D7264C5C();
      *v37 = v57;
      v37[1] = v38;
      v37[2] = 5001813;
      v37[3] = 0xE300000000000000;
      v37[4] = v39;
      v37[5] = v40;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v29 == 8)
    {
      v42 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v43 = a5[5];
      v65[4] = a5[4];
      v65[5] = v43;
      v65[6] = a5[6];
      v44 = a5[1];
      v65[0] = *a5;
      v65[1] = v44;
      v45 = a5[3];
      v65[2] = a5[2];
      v65[3] = v45;
      swift_retain_n();

      sub_1D6B7EB54(v42, v57, v58, v59, v65);
    }

    if (v29 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v46 = v58;
      *v47 = v57;
      v47[1] = v46;
      v47[2] = 5001813;
      v47[3] = 0xE300000000000000;
      v47[4] = 0x7463617274736261;
      v47[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  if (!v29)
  {
    goto LABEL_3;
  }

  v48 = v23;
  v50 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v49 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v61[3] = MEMORY[0x1E69E6158];
  v61[0] = v50;
  v61[1] = v49;
  MEMORY[0x1EEE9AC00](v49, v22);
  *(&v55 - 2) = v64;

  v51 = v66;
  sub_1D632A5E4(v61, sub_1D6B85464, v59, &v62);
  v41 = v61;
  if (v51)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1D5B76B10(&v62, v61);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v62);
    (*(v48 + 56))(v11, 0, 1, v16);
    v52 = *(v48 + 32);
    v52(v19, v11, v16);
    return (v52)(v56, v19, v16);
  }

  (*(v48 + 56))(v11, 1, 1, v16);
  sub_1D5D282A8(v11, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
  type metadata accessor for FormatLayoutError();
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  v53 = v58;
  *v54 = v57;
  v54[1] = v53;
  v54[2] = 5001813;
  v54[3] = 0xE300000000000000;
  v54[4] = 0x676E69727453;
  v54[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v41 = &v62;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1D6B7F2F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a7)(_OWORD *__return_ptr, _OWORD *, uint64_t *)@<X7>, unint64_t *a8@<X8>)
{
  v36 = a5;
  v14 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v32 = a1;
      sub_1D6BE73AC(v33);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v33, a7, a4, &v34);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
      if (v8)
      {
        return result;
      }

      sub_1D5B76B10(&v34, v33);
      if (swift_dynamicCast())
      {
LABEL_5:
        result = __swift_destroy_boxed_opaque_existential_1(&v34);
        *a8 = v32;
        return result;
      }

      sub_1D5C8500C(0xF000000000000007);
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v19 = v18;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      swift_getDynamicType();

      v20 = sub_1D7264C5C();
      *v19 = a2;
      v19[1] = a3;
      v19[2] = 0x6F4674616D726F46;
      v19[3] = 0xEA0000000000746ELL;
      v19[4] = v20;
      v19[5] = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      a6(v23, a2, a3, a4, a5);
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x6F4674616D726F46;
      v26[3] = 0xEA0000000000746ELL;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v33[3] = MEMORY[0x1E69E6158];
  v33[0] = v28;
  v33[1] = v27;
  MEMORY[0x1EEE9AC00](v27, a2);
  v30 = v29;

  sub_1D632A5E4(v33, v30, a4, &v34);
  v22 = v33;
  if (v8)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1D5B76B10(&v34, v33);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C8500C(0xF000000000000007);
  type metadata accessor for FormatLayoutError();
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v31 = a2;
  v31[1] = a3;
  v31[2] = 0x6F4674616D726F46;
  v31[3] = 0xEA0000000000746ELL;
  v31[4] = 0x676E69727453;
  v31[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v22 = &v34;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D6B7F7F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a7)(_OWORD *__return_ptr, _OWORD *, uint64_t *)@<X7>, unint64_t *a8@<X8>)
{
  v36 = a5;
  v14 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v32 = a1;
      sub_1D6BE73AC(v33);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v33, a7, a4, &v34);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
      if (v8)
      {
        return result;
      }

      sub_1D5B76B10(&v34, v33);
      if (swift_dynamicCast())
      {
LABEL_5:
        result = __swift_destroy_boxed_opaque_existential_1(&v34);
        *a8 = v32;
        return result;
      }

      sub_1D5C84FF4(0xF000000000000007);
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v19 = v18;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      swift_getDynamicType();

      v20 = sub_1D7264C5C();
      *v19 = a2;
      v19[1] = a3;
      v19[2] = 0x6F4374616D726F46;
      v19[3] = 0xEB00000000726F6CLL;
      v19[4] = v20;
      v19[5] = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      a6(v23, a2, a3, a4, a5);
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x6F4374616D726F46;
      v26[3] = 0xEB00000000726F6CLL;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v33[3] = MEMORY[0x1E69E6158];
  v33[0] = v28;
  v33[1] = v27;
  MEMORY[0x1EEE9AC00](v27, a2);
  v30 = v29;

  sub_1D632A5E4(v33, v30, a4, &v34);
  v22 = v33;
  if (v8)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1D5B76B10(&v34, v33);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C84FF4(0xF000000000000007);
  type metadata accessor for FormatLayoutError();
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v31 = a2;
  v31[1] = a3;
  v31[2] = 0x6F4374616D726F46;
  v31[3] = 0xEB00000000726F6CLL;
  v31[4] = 0x676E69727453;
  v31[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v22 = &v34;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D6B7FD08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(_OWORD *__return_ptr, _OWORD *, uint64_t *))
{
  v10 = v8;
  v37 = a5;
  v14 = a1 >> 60;
  if ((a1 >> 60) > 0xD)
  {
LABEL_14:
    if (v14)
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v34[3] = MEMORY[0x1E69E6158];
      v34[0] = v28;
      v34[1] = v27;
      MEMORY[0x1EEE9AC00](v27, a2);
      v30 = v29;

      sub_1D632A5E4(v34, v30, a4, &v35);
      v21 = v34;
      if (v8)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_1D5B76B10(&v35, v34);
      if (swift_dynamicCast())
      {
        goto LABEL_5;
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v32 = a2;
      v32[1] = a3;
      v32[2] = 0x676E69727453;
      v32[3] = 0xE600000000000000;
      v32[4] = 0x676E69727453;
      v32[5] = 0xE600000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_7:
      v21 = &v35;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v21);
      return a3;
    }

    goto LABEL_3;
  }

  if (((1 << v14) & 0x36FC) == 0)
  {
    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      v25 = a7(v22, a2, a3, a4, a5);
      if (!v10)
      {
        a3 = v25;
      }

      return a3;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x676E69727453;
      v26[3] = 0xE600000000000000;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return a3;
    }

    goto LABEL_14;
  }

LABEL_3:
  v33 = a1;
  sub_1D6BE73AC(v34);
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1D632A5E4(v34, a8, a4, &v35);
  __swift_destroy_boxed_opaque_existential_1(v34);
  if (!v8)
  {
    sub_1D5B76B10(&v35, v34);
    if (swift_dynamicCast())
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(&v35);
      return v33;
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    v18 = v17;
    __swift_project_boxed_opaque_existential_1(&v35, v36);
    swift_getDynamicType();

    v19 = sub_1D7264C5C();
    *v18 = a2;
    v18[1] = a3;
    v18[2] = 0x676E69727453;
    v18[3] = 0xE600000000000000;
    v18[4] = v19;
    v18[5] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  return a3;
}

uint64_t sub_1D6B8028C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(_OWORD *__return_ptr, _OWORD *, uint64_t *)@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(_OWORD *__return_ptr, _OWORD *, uint64_t *)@<X7>, uint64_t a9@<X8>)
{
  v55 = a7;
  v56 = a6;
  v59 = a3;
  v57 = a9;
  v58 = a2;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v54 - v19;
  v21 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v30 = &v54 - v29;
  v65 = a5;
  v31 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v31) & 0x36FC) != 0)
    {
LABEL_3:
      v32 = v28;
      v61 = a1;
      sub_1D6BE73AC(v62);
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v54 - 2) = &v65;
      v35 = v60;
      sub_1D632A5E4(v62, a8, a4, &v63);
      result = __swift_destroy_boxed_opaque_existential_1(v62);
      if (v35)
      {
        return result;
      }

      sub_1D5B76B10(&v63, v62);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&v63);
        (*(v32 + 56))(v20, 0, 1, v21);
        v37 = *(v32 + 32);
        v37(v30, v20, v21);
        return (v37)(v57, v30, v21);
      }

      (*(v32 + 56))(v20, 1, 1, v21);
      sub_1D5D282A8(v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v39 = v38;
      __swift_project_boxed_opaque_existential_1(&v63, v64);
      swift_getDynamicType();
      v40 = v59;

      v41 = sub_1D7264C5C();
      *v39 = v58;
      v39[1] = v40;
      v39[2] = 5001813;
      v39[3] = 0xE300000000000000;
      v39[4] = v41;
      v39[5] = v42;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v31 == 8)
    {
      v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      v55(v44, v58, v59, a4, a5);
    }

    if (v31 == 11)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v45 = v59;
      *v46 = v58;
      v46[1] = v45;
      v46[2] = 5001813;
      v46[3] = 0xE300000000000000;
      v46[4] = 0x7463617274736261;
      v46[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  if (!v31)
  {
    goto LABEL_3;
  }

  v47 = v28;
  v49 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v62[3] = MEMORY[0x1E69E6158];
  v62[0] = v49;
  v62[1] = v48;
  MEMORY[0x1EEE9AC00](v48, v27);
  *(&v54 - 2) = &v65;

  v50 = v60;
  sub_1D632A5E4(v62, v56, a4, &v63);
  v43 = v62;
  if (v50)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v62);
  sub_1D5B76B10(&v63, v62);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v63);
    (*(v47 + 56))(v16, 0, 1, v21);
    v51 = *(v47 + 32);
    v51(v24, v16, v21);
    return (v51)(v57, v24, v21);
  }

  (*(v47 + 56))(v16, 1, 1, v21);
  sub_1D5D282A8(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
  type metadata accessor for FormatLayoutError();
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  v52 = v59;
  *v53 = v58;
  v53[1] = v52;
  v53[2] = 5001813;
  v53[3] = 0xE300000000000000;
  v53[4] = 0x676E69727453;
  v53[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v43 = &v63;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}