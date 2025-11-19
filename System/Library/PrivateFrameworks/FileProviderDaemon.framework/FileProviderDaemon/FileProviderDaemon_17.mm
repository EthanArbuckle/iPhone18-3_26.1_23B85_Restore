uint64_t sub_1CF20948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a2;
  v69 = a3;
  v54 = a1;
  v7 = *v4;
  v8 = *(*v4 + 624);
  v9 = *(*v4 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v53 - v14;
  v67 = *(AssociatedTypeWitness - 8);
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v53 - v16;
  v17 = *(v7 + 616);
  v18 = *(v7 + 600);
  v19 = swift_getAssociatedTypeWitness();
  v55 = v18;
  v56 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v9;
  v63 = v8;
  v21 = swift_getAssociatedConformanceWitness();
  *&v70 = v19;
  *(&v70 + 1) = AssociatedTypeWitness;
  v59 = AssociatedConformanceWitness;
  *&v71 = AssociatedConformanceWitness;
  *(&v71 + 1) = v21;
  v57 = v21;
  v22 = type metadata accessor for ReconciliationID();
  v60 = *(v22 - 8);
  v61 = v22;
  v23 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v53 - v24;
  v25 = sub_1CF9E75D8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v53 - v29;
  v31 = *(v19 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v34 = &v53 - v33;
  result = (*(a4 + 8))(v69, a4);
  if (result == 2)
  {
    v36 = v54;
    (*(v26 + 16))(v30, v54, v25);
    if ((*(v31 + 48))(v30, 1, v19) == 1)
    {
      (*(v26 + 8))(v30, v25);
    }

    else
    {
      (*(v31 + 32))(v34, v30, v19);
      *&v70 = v19;
      *(&v70 + 1) = AssociatedTypeWitness;
      *&v71 = v59;
      *(&v71 + 1) = v57;
      type metadata accessor for ReconciliationIDObject();
      v37 = v36;
      v38 = v58;
      (*(v31 + 16))(v58, v34, v19);
      v39 = v61;
      swift_storeEnumTagMultiPayload();
      v40 = sub_1CF01D170(v38);
      (*(v60 + 8))(v38, v39);
      [*(v5 + *(*v5 + 664)) removeObjectForKey_];

      v36 = v37;
      (*(v31 + 8))(v34, v19);
    }

    *&v41 = v55;
    *&v42 = v56;
    *(&v41 + 1) = v62;
    *(&v42 + 1) = v63;
    v71 = v42;
    v70 = v41;
    v43 = type metadata accessor for ItemReconciliation();
    v45 = v64;
    v44 = v65;
    v46 = v36 + *(v43 + 52);
    v47 = v66;
    (*(v65 + 16))(v64, v46, v66);
    v48 = v67;
    if ((*(v67 + 48))(v45, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v44 + 8))(v45, v47);
    }

    else
    {
      v49 = v53;
      (*(v48 + 32))(v53, v45, AssociatedTypeWitness);
      *&v70 = v19;
      *(&v70 + 1) = AssociatedTypeWitness;
      *&v71 = v59;
      *(&v71 + 1) = v57;
      type metadata accessor for ReconciliationIDObject();
      v50 = v58;
      (*(v48 + 16))(v58, v49, AssociatedTypeWitness);
      v51 = v61;
      swift_storeEnumTagMultiPayload();
      v52 = sub_1CF01D170(v50);
      (*(v60 + 8))(v50, v51);
      [*(v5 + *(*v5 + 664)) removeObjectForKey_];

      return (*(v48 + 8))(v49, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1CF209B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *v4;
  v8 = *v4;
  v9 = (*(a3 + 8))(a2, a3);
  v10 = v7[78];
  if (v9 == 2)
  {
    v25 = a1;
    v26 = a4;
    v11 = v8[77];
    v12 = v8[75];
    swift_getAssociatedTypeWitness();
    v13 = v8[76];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for ReconciliationIDObject();
    v14 = sub_1CF01D170(v25);
    v15 = *(v4 + *(*v4 + 664));
    v16 = [v15 objectForKey_];

    if (v16)
    {
      v17 = type metadata accessor for ItemReconciliation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v19 = *(TupleTypeMetadata2 + 48);
      (*(*(v17 - 8) + 16))(v26, &v16[*(*v16 + 112)], v17);
      v20 = *&v16[*(*v16 + 120)];

      *(v26 + v19) = v20;
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v26, 0, 1, TupleTypeMetadata2);
    }

    type metadata accessor for ItemReconciliation();
    v22 = swift_getTupleTypeMetadata2();
    v23 = *(*(v22 - 8) + 56);
    v24 = v26;
  }

  else
  {
    v27 = *(v8 + 75);
    v28 = v8[77];
    type metadata accessor for ItemReconciliation();
    v22 = swift_getTupleTypeMetadata2();
    v23 = *(*(v22 - 8) + 56);
    v24 = a4;
  }

  return v23(v24, 1, 1, v22);
}

id sub_1CF209E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a2, a3);
  if (result == 2)
  {
    v5 = *(v3 + *(*v3 + 664));

    return [v5 removeAllObjects];
  }

  return result;
}

uint64_t sub_1CF209EF0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA36980);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 10, 0);
  v0 = *(v8 + 16);
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BED148 + v1);
    v3 = *(v8 + 24);
    if (v0 >= v3 >> 1)
    {
      sub_1CF680C9C((v3 > 1), v0 + 1, 1);
    }

    *(v8 + 16) = v0 + 1;
    *(v8 + 8 * v0 + 32) = v2;
    v1 += 8;
    ++v0;
  }

  while (v1 != 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF20A0E8(void *a1, void (*a2)(char *), uint64_t a3)
{
  v12[1] = a3;
  v13 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v12 - v8;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v10 + 16))(a1, 0, AssociatedTypeWitness, v10);
  if (!v3)
  {
    v13(v9);
    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF20A25C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a5;
  v98 = a3;
  v99 = a4;
  v100 = a1;
  v83 = a6;
  v8 = *(*v6 + 600);
  v9 = *(*v6 + 608);
  v10 = *(*v6 + 624);
  v86 = *(*v6 + 616);
  v87 = v8;
  v101 = v8;
  v102 = v9;
  v88 = v10;
  v89 = v9;
  v103 = v86;
  v104 = v10;
  v11 = type metadata accessor for ItemReconciliation();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v79 - v13;
  v15 = sub_1CF9E6068();
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v79 - v22;
  v91 = type metadata accessor for Signpost(0);
  v23 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = sub_1CF9E75D8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v79 - v30;
  v32 = *(TupleTypeMetadata2 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v29);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v79 - v37;
  v81 = a2;
  if (a2)
  {
    sub_1CF209B04(v100, v99, v97, v31);
    if ((*(v32 + 48))(v31, 1, TupleTypeMetadata2) != 1)
    {
      v68 = *(v32 + 32);
      v68(v38, v31, TupleTypeMetadata2);
      v68(v36, v38, TupleTypeMetadata2);
      v69 = *&v36[*(TupleTypeMetadata2 + 48)];
      v70 = v85;
      v71 = swift_getTupleTypeMetadata2();
      v72 = *(v71 + 48);
      v73 = v83;
      (*(v82 + 32))(v83, v36, v70);
      *(v73 + v72) = v69;
      return (*(*(v71 - 8) + 56))(v73, 0, 1, v71);
    }

    (*(v27 + 8))(v31, v26);
  }

  v80 = v14;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v84 = qword_1EDEBBE40;
  v40 = v93;
  v39 = v94;
  (*(v93 + 56))(v105, 1, 1, v94);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = swift_getAssociatedTypeWitness();
  v43 = v40;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  v101 = AssociatedTypeWitness;
  v102 = v42;
  v103 = AssociatedConformanceWitness;
  v104 = v45;
  v46 = type metadata accessor for ReconciliationID();
  v88 = sub_1CF01D738(v46);
  v89 = v47;
  v48 = v90;
  sub_1CEFCCBDC(v105, v90, &unk_1EC4BED20, &unk_1CFA00700);
  v49 = *(v40 + 48);
  if (v49(v48, 1, v39) == 1)
  {
    v50 = v84;
    v51 = v84;
    v52 = v92;
    sub_1CF9E6048();
    v53 = v49(v48, 1, v39);
    v54 = v95;
    if (v53 != 1)
    {
      sub_1CEFCCC44(v48, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v52 = v92;
    (*(v43 + 32))(v92, v48, v39);
    v54 = v95;
    v50 = v84;
  }

  (*(v43 + 16))(v54, v52, v39);
  v55 = v91;
  *(v54 + *(v91 + 20)) = v50;
  v56 = v54 + *(v55 + 24);
  *v56 = "SQLDB: fetch reconciliation";
  *(v56 + 8) = 27;
  *(v56 + 16) = 2;
  v57 = v50;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1CF9FA450;
  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1CEFD51C4();
  v59 = v89;
  *(v58 + 32) = v88;
  *(v58 + 40) = v59;
  v95 = v57;
  sub_1CF9E6028();

  (*(v43 + 8))(v52, v39);
  v60 = sub_1CEFCCC44(v105, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v60);
  v61 = v97;
  v62 = v96;
  v63 = (*(v97 + 24))(sub_1CF24F6C0);
  if (!v62)
  {
    v64 = v63;
    if ([v63 next])
    {
      v65 = [v64 longAtIndex_];
      v66 = v85;
      WitnessTable = swift_getWitnessTable();
      sub_1CF01E03C(v64, 1, v66, WitnessTable, v80);
      if (v81)
      {
        sub_1CF208D00(v80, v65, v98, v99, v61);
      }

      v76 = swift_getTupleTypeMetadata2();
      v77 = *(v76 + 48);
      v78 = v83;
      (*(v82 + 32))(v83, v80, v66);
      *(v78 + v77) = v65;
      (*(*(v76 - 8) + 56))(v78, 0, 1, v76);
    }

    else
    {
      v75 = swift_getTupleTypeMetadata2();
      (*(*(v75 - 8) + 56))(v83, 1, 1, v75);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5218(v54, type metadata accessor for Signpost);
}

uint64_t sub_1CF20ACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C6469776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA3B7C0);
  v7 = v6[75];
  v8 = v6[76];
  v9 = v6[77];
  v10 = v6[78];
  v13[2] = 0;
  v13[3] = 0xE000000000000000;
  v11 = sub_1CF01DAF0(a3, a1, sub_1CF01DEA4, v13, v7, v8, v9, v10);
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

uint64_t sub_1CF20AE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v114 = a3;
  v115 = a4;
  v113 = a2;
  v118 = a1;
  v106 = a5;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v104 = v10;
  v105 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v85 - v13;
  v14 = sub_1CF9E6068();
  v101 = *(v14 - 8);
  v102 = v14;
  v15 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v85 - v21;
  v97 = type metadata accessor for Signpost(0);
  v22 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v110 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v7;
  v95 = type metadata accessor for ItemReconciliationHalf();
  v94 = *(v95 - 8);
  v24 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v85 - v25;
  v108 = v5;
  v26 = *(v6 + 624);
  v27 = *(v6 + 608);
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v87 = AssociatedTypeWitness;
  *&v116 = AssociatedTypeWitness;
  *(&v116 + 1) = v28;
  v85 = AssociatedConformanceWitness;
  *&v117 = AssociatedConformanceWitness;
  *(&v117 + 1) = v30;
  v91 = v30;
  v107 = type metadata accessor for ReconciliationID();
  v31 = *(v107 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v34 = &v85 - v33;
  v103 = v8;
  *&v35 = v8;
  v98 = v27;
  *(&v35 + 1) = v27;
  *&v36 = v112;
  v99 = v26;
  *(&v36 + 1) = v26;
  v117 = v36;
  v116 = v35;
  v90 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = sub_1CF9E75D8();
  v88 = *(v89 - 8);
  v38 = *(v88 + 64);
  v39 = MEMORY[0x1EEE9AC00](v89);
  v41 = &v85 - v40;
  v42 = *(TupleTypeMetadata2 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v39);
  v46 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v85 - v47;
  v49 = *(*(v28 - 8) + 16);
  v92 = v28;
  v49(v34, v118, v28);
  v50 = v107;
  swift_storeEnumTagMultiPayload();
  sub_1CF209B04(v34, v114, v115, v41);
  (*(v31 + 8))(v34, v50);
  if ((*(v42 + 48))(v41, 1, TupleTypeMetadata2) != 1)
  {
    v60 = *(v42 + 32);
    v60(v48, v41, TupleTypeMetadata2);
    v60(v46, v48, TupleTypeMetadata2);
    v61 = v94;
    v62 = v93;
    v63 = v95;
    (*(v94 + 16))(v93, v46, v95);
    (*(*(v90 - 8) + 8))(v46);
    (*(v105 + 16))(v106, v62, v104);
    return (*(v61 + 8))(v62, v63);
  }

  (*(v88 + 8))(v41, v89);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDEBBE40;
  v53 = v101;
  v52 = v102;
  v54 = v109;
  (*(v101 + 56))(v109, 1, 1, v102);
  *&v116 = 0;
  *(&v116 + 1) = 0xE000000000000000;
  v55 = *(v91 + 16);
  sub_1CF9E7FE8();
  v107 = *(&v116 + 1);
  v108 = v116;
  v56 = v96;
  sub_1CEFCCBDC(v54, v96, &unk_1EC4BED20, &unk_1CFA00700);
  v57 = *(v53 + 48);
  if (v57(v56, 1, v52) == 1)
  {
    v58 = v51;
    v59 = v100;
    sub_1CF9E6048();
    if (v57(v56, 1, v52) != 1)
    {
      sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v59 = v100;
    (*(v53 + 32))(v100, v56, v52);
  }

  v65 = v110;
  (*(v53 + 16))(v110, v59, v52);
  v66 = v97;
  *&v65[*(v97 + 20)] = v51;
  v67 = &v65[*(v66 + 24)];
  *v67 = "SQLDB: fetch reconciliation FS id";
  *(v67 + 1) = 33;
  v67[16] = 2;
  v68 = v51;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v69 = v52;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CF9FA450;
  *(v70 + 56) = MEMORY[0x1E69E6158];
  *(v70 + 64) = sub_1CEFD51C4();
  v71 = v107;
  *(v70 + 32) = v108;
  *(v70 + 40) = v71;
  v84 = v70;
  LOBYTE(v83) = 2;
  v82 = 2;
  sub_1CF9E6028();

  (*(v53 + 8))(v59, v69);
  v72 = sub_1CEFCCC44(v109, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v72);
  v73 = v98;
  *(&v85 - 8) = v103;
  *(&v85 - 7) = v73;
  v74 = v115;
  v75 = v112;
  *(&v85 - 6) = v114;
  *(&v85 - 5) = v75;
  v82 = v99;
  v83 = v74;
  v84 = v118;
  v76 = v111;
  v77 = (*(v74 + 24))(sub_1CF24F68C);
  if (v76)
  {
    goto LABEL_10;
  }

  v79 = v77;
  if ([v77 next])
  {
    v80 = v86;
    Optional<A>.init(rs:at:)(v79, 0, v87, *(v85 + 8), v86);
    (*(v105 + 32))(v106, v80, v104);
LABEL_10:
    sub_1CF9E7458();
    v78 = v110;
    sub_1CF9E6038();
    return sub_1CEFD5218(v78, type metadata accessor for Signpost);
  }

  (*(*(v87 - 8) + 56))(v106, 1, 1);

  sub_1CF9E7458();
  v81 = v110;
  sub_1CF9E6038();
  return sub_1CEFD5218(v81, type metadata accessor for Signpost);
}

uint64_t sub_1CF20B9B0(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA3B750);
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

uint64_t sub_1CF20BAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a2;
  v119 = a3;
  v120 = a4;
  v123 = a1;
  v112 = a5;
  v6 = *v5;
  v7 = *(*v5 + 624);
  v8 = *(*v5 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v110 = v10;
  v111 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v90 - v13;
  v14 = sub_1CF9E6068();
  v106 = *(v14 - 8);
  v107 = v14;
  v15 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v101 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v90 - v21;
  v102 = type metadata accessor for Signpost(0);
  v22 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v116 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ItemReconciliationHalf();
  v99 = *(v100 - 8);
  v24 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v90 - v25;
  v114 = v5;
  v26 = *(v6 + 616);
  v27 = *(v6 + 600);
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  *&v121 = v28;
  *(&v121 + 1) = AssociatedTypeWitness;
  v92 = AssociatedTypeWitness;
  v96 = AssociatedConformanceWitness;
  *&v122 = AssociatedConformanceWitness;
  *(&v122 + 1) = v30;
  v90 = v30;
  v113 = type metadata accessor for ReconciliationID();
  v31 = *(v113 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v34 = &v90 - v33;
  v103 = v27;
  *&v35 = v27;
  v108 = v8;
  v109 = v7;
  *(&v35 + 1) = v8;
  v104 = v26;
  *&v36 = v26;
  *(&v36 + 1) = v7;
  v122 = v36;
  v121 = v35;
  v95 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = sub_1CF9E75D8();
  v93 = *(v94 - 8);
  v38 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v40 = &v90 - v39;
  v41 = *(TupleTypeMetadata2 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v90 - v48;
  v50 = *(*(v28 - 8) + 16);
  v97 = v28;
  v50(v34, v123, v28, v47);
  v51 = v113;
  swift_storeEnumTagMultiPayload();
  sub_1CF209B04(v34, v119, v120, v40);
  (*(v31 + 8))(v34, v51);
  if ((*(v41 + 48))(v40, 1, TupleTypeMetadata2) != 1)
  {
    v61 = *(v41 + 32);
    v61(v49, v40, TupleTypeMetadata2);
    v61(v45, v49, TupleTypeMetadata2);
    v62 = v95;
    v63 = v99;
    v64 = v98;
    v65 = v100;
    (*(v99 + 16))(v98, &v45[*(v95 + 52)], v100);
    (*(*(v62 - 8) + 8))(v45, v62);
    (*(v111 + 16))(v112, v64, v110);
    return (*(v63 + 8))(v64, v65);
  }

  (*(v93 + 8))(v40, v94);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDEBBE40;
  v53 = v106;
  v54 = v107;
  v55 = v115;
  (*(v106 + 56))(v115, 1, 1, v107);
  *&v121 = 0;
  *(&v121 + 1) = 0xE000000000000000;
  v56 = *(v96 + 16);
  sub_1CF9E7FE8();
  v113 = *(&v121 + 1);
  v114 = v121;
  v57 = v101;
  sub_1CEFCCBDC(v55, v101, &unk_1EC4BED20, &unk_1CFA00700);
  v58 = *(v53 + 48);
  if (v58(v57, 1, v54) == 1)
  {
    v59 = v52;
    v60 = v105;
    sub_1CF9E6048();
    if (v58(v57, 1, v54) != 1)
    {
      sub_1CEFCCC44(v57, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v60 = v105;
    (*(v53 + 32))(v105, v57, v54);
  }

  v67 = *(v53 + 16);
  v68 = v53;
  v69 = v116;
  v67(v116, v60, v54);
  v70 = v102;
  *&v69[*(v102 + 20)] = v52;
  v71 = &v69[*(v70 + 24)];
  *v71 = "SQLDB: fetch reconciliation FP id";
  *(v71 + 1) = 33;
  v71[16] = 2;
  v72 = v52;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v73 = v60;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CF9FA450;
  *(v74 + 56) = MEMORY[0x1E69E6158];
  *(v74 + 64) = sub_1CEFD51C4();
  v75 = v113;
  *(v74 + 32) = v114;
  *(v74 + 40) = v75;
  v89 = v74;
  LOBYTE(v88) = 2;
  v87 = 2;
  sub_1CF9E6028();

  (*(v68 + 8))(v73, v54);
  v76 = sub_1CEFCCC44(v115, &unk_1EC4BED20, &unk_1CFA00700);
  v77 = MEMORY[0x1EEE9AC00](v76);
  v78 = v108;
  *(&v90 - 8) = v103;
  *(&v90 - 7) = v78;
  v79 = v120;
  v80 = v104;
  *(&v90 - 6) = v119;
  *(&v90 - 5) = v80;
  v87 = v109;
  v88 = v79;
  v89 = v123;
  v81 = v117;
  v82 = (*(v79 + 24))(sub_1CF24F674, v77);
  if (v81)
  {
    goto LABEL_10;
  }

  v84 = v82;
  if ([v82 next])
  {
    v85 = v91;
    Optional<A>.init(rs:at:)(v84, 0, v92, *(v90 + 8), v91);
    (*(v111 + 32))(v112, v85, v110);
LABEL_10:
    sub_1CF9E7458();
    v83 = v116;
    sub_1CF9E6038();
    return sub_1CEFD5218(v83, type metadata accessor for Signpost);
  }

  (*(*(v92 - 8) + 56))(v112, 1, 1);

  sub_1CF9E7458();
  v86 = v116;
  sub_1CF9E6038();
  return sub_1CEFD5218(v86, type metadata accessor for Signpost);
}

uint64_t sub_1CF20C658(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA3B6E0);
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

uint64_t sub_1CF20C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v57 = a2;
  v58 = a3;
  v51 = a5;
  v7 = *(*v5 + 616);
  v49 = *(*v5 + 600);
  v50 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v10;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - v21;
  v23 = type metadata accessor for Signpost(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBBE40;
  (*(v12 + 56))(v22, 1, 1, v11);
  v56 = a1;
  v61 = a1;
  sub_1CEFFD0A8();
  v28 = sub_1CF9E7718();
  v53 = v29;
  v54 = v28;
  v55 = v22;
  sub_1CEFCCBDC(v22, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(v12 + 48);
  if (v30(v20, 1, v11) == 1)
  {
    v31 = v27;
    sub_1CF9E6048();
    v32 = v15;
    if (v30(v20, 1, v11) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v32 = v15;
    (*(v12 + 32))(v15, v20, v11);
  }

  (*(v12 + 16))(v26, v32, v11);
  *&v26[*(v23 + 20)] = v27;
  v33 = &v26[*(v23 + 24)];
  *v33 = "SQLDB: fetch ID for clone";
  *(v33 + 1) = 25;
  v33[16] = 2;
  v34 = v27;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1CF9FA450;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1CEFD51C4();
  v36 = v53;
  *(v35 + 32) = v54;
  *(v35 + 40) = v36;
  sub_1CF9E6028();

  (*(v12 + 8))(v32, v11);
  v37 = sub_1CEFCCC44(v55, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v37);
  v38 = v59;
  v39 = (*(v60 + 24))(sub_1CF24F66C);
  if (!v38)
  {
    v40 = v39;
    if ([v39 next])
    {
      v41 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v43 = v48;
      Optional<A>.init(rs:at:)(v40, 0, v41, *(AssociatedConformanceWitness + 8), v48);
      (*(v46 + 32))(v51, v43, v47);
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v51, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5218(v26, type metadata accessor for Signpost);
}

uint64_t sub_1CF20CD7C(void *a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA3B660);
  v2 = sub_1CF9E8268();
  v3 = [a1 bindObjectParameter_];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  return 0;
}

char *sub_1CF20CE4C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v39 = a1;
  AssociatedTypeWitness = a4;
  v44 = a3;
  v38[1] = a2;
  v45 = *v6;
  v46 = a5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v38 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v43 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  (*(v8 + 56))(v18, 1, 1, v7);
  sub_1CEFCCBDC(v18, v16, &unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(v8 + 48);
  if (v23(v16, 1, v7) == 1)
  {
    v24 = v22;
    sub_1CF9E6048();
    if (v23(v16, 1, v7) != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v16, v7);
  }

  v25 = v43;
  (*(v8 + 16))(v43, v11, v7);
  *(v25 + *(v19 + 20)) = v22;
  v26 = v25 + *(v19 + 24);
  *v26 = "SQLDB: reconciliation evictWithOldVersion pending download";
  *(v26 + 8) = 58;
  *(v26 + 16) = 2;
  v27 = v22;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v8 + 8))(v11, v7);
  v28 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v28);
  v29 = v41;
  v30 = (*(v42 + 24))(sub_1CF24F664);
  if (!v29)
  {
    v31 = v30;
    v41 = v27;
    v32 = v45[77];
    v33 = v45[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18 = sub_1CF9E6DA8();
    v48 = v18;
    v47 = 0;
    if ([v31 next])
    {
      do
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v45[76];
        v36 = v45[78];
        sub_1CF227C10(&v47, v31, &v48);
        objc_autoreleasePoolPop(v34);
      }

      while (([v31 next] & 1) != 0);
      v18 = v48;
    }

    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v25, type metadata accessor for Signpost);
  return v18;
}

uint64_t sub_1CF20D3DC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000108, 0x80000001CFA3B530);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v10 = [a1 bindLongParameter_];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  return 0;
}

uint64_t sub_1CF20D50C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v94 = a7;
  v8 = v7;
  v93 = a6;
  v91 = a4;
  v87 = a1;
  v12 = *v7;
  v13 = sub_1CF9E5CF8();
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v12[76];
  v18 = v12[77];
  v19 = v12[78];
  v96 = v12[75];
  v16 = v96;
  v97 = v17;
  v98 = v18;
  v99 = v19;
  v90 = type metadata accessor for ReconciliationMutation();
  v85 = *(v90 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v78 - v21;
  v92 = v16;
  v96 = v16;
  v97 = v17;
  v88 = v17;
  v89 = v19;
  v98 = v18;
  v99 = v19;
  v22 = type metadata accessor for ItemReconciliation();
  result = sub_1CF07CD80(v22);
  if ((result & 1) == 0)
  {
    v60 = a2;
    v61 = a3;
    v62 = a5;
    v63 = v93;
    v64 = v94;
    return sub_1CF216504(v60, v61, 0, v62, v63, v64);
  }

  v80 = v8;
  v81 = a5;
  if ((v91 & 4) != 0)
  {
    if (*(a2 + *(type metadata accessor for ItemReconciliationHalf() + 56)) != 5)
    {
      v65 = a2 + *(v22 + 52);
      result = type metadata accessor for ItemReconciliationHalf();
      if ((*(v65 + *(result + 40)) & 2) != 0 || *(v65 + *(result + 64) + 16) == 2)
      {
        sub_1CF9E7FA8();
        v66 = *(v85 + 72);
        v67 = *(v85 + 80);
        swift_allocObject();
        v91 = sub_1CF9E6D68();
        v69 = v68;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v71 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v73 = swift_getAssociatedConformanceWitness();
        v96 = AssociatedTypeWitness;
        v97 = v71;
        v98 = AssociatedConformanceWitness;
        v99 = v73;
        type metadata accessor for ReconciliationID();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v75 = *(TupleTypeMetadata3 + 48);
        v76 = *(TupleTypeMetadata3 + 64);
        (*(*(AssociatedTypeWitness - 8) + 16))(v69, v87, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *(v69 + v75) = 5;
        *(v69 + v76) = 1;
        swift_storeEnumTagMultiPayload();
        v96 = sub_1CF045898(v91);
        v77 = sub_1CF9E6E58();
        WitnessTable = swift_getWitnessTable();
        v56 = v81;
        v57 = v77;
        v58 = v93;
        v59 = v94;
LABEL_25:
        sub_1CF693824(&v96, v56, v57, v58, WitnessTable, v59);
      }

      return result;
    }

    v60 = a2;
    v61 = a3;
    v62 = v81;
    v63 = v93;
    v64 = v94;
    return sub_1CF216504(v60, v61, 0, v62, v63, v64);
  }

  if ((v91 & 2) != 0)
  {
    result = type metadata accessor for ItemReconciliationHalf();
    if ((*(a2 + *(result + 36)) & 0x10) == 0)
    {
      v24 = result;
      v95 = sub_1CF9E6DA8();
      v25 = *(v22 + 52);
      v91 = a2;
      v26 = a2 + v25;
      v27 = type metadata accessor for ItemReconciliationHalf();
      if (*(v26 + *(v27 + 36)))
      {
LABEL_12:
        if (*(v26 + *(v27 + 52)))
        {
          v88 = v24;
          v39 = swift_getAssociatedTypeWitness();
          v40 = swift_getAssociatedTypeWitness();
          v41 = swift_getAssociatedConformanceWitness();
          v42 = swift_getAssociatedConformanceWitness();
          v96 = v39;
          v97 = v40;
          v98 = v41;
          v99 = v42;
          type metadata accessor for ReconciliationID();
          type metadata accessor for ReconciliationSideMutation();
          v43 = *(swift_getTupleTypeMetadata2() + 48);
          v44 = v86;
          (*(*(v39 - 8) + 16))(v86, v87, v39);
          swift_storeEnumTagMultiPayload();
          v44[v43] = 0;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          v24 = v88;
          sub_1CF9E6E18();
        }

        v45 = *(v91 + *(v24 + 40));
        v47 = v93;
        v46 = v94;
        if ((v45 & 2) == 0)
        {
          v48 = swift_getAssociatedTypeWitness();
          v49 = swift_getAssociatedTypeWitness();
          v50 = swift_getAssociatedConformanceWitness();
          v51 = swift_getAssociatedConformanceWitness();
          v96 = v48;
          v97 = v49;
          v98 = v50;
          v99 = v51;
          type metadata accessor for ReconciliationID();
          v52 = *(swift_getTupleTypeMetadata2() + 48);
          v53 = v86;
          (*(*(v48 - 8) + 16))(v86, v87, v48);
          swift_storeEnumTagMultiPayload();
          v53[v52] = 1;
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          v46 = v94;
          sub_1CF9E6E18();
        }

        v96 = v95;
        v54 = sub_1CF9E6E58();
        WitnessTable = swift_getWitnessTable();
        v56 = v81;
        v57 = v54;
        v58 = v47;
        v59 = v46;
        goto LABEL_25;
      }

      v79 = v27;
      v85 = v26;
      v28 = swift_getAssociatedTypeWitness();
      v29 = swift_getAssociatedTypeWitness();
      v30 = swift_getAssociatedConformanceWitness();
      v31 = swift_getAssociatedConformanceWitness();
      v96 = v28;
      v97 = v29;
      v98 = v30;
      v99 = v31;
      type metadata accessor for ReconciliationID();
      type metadata accessor for ReconciliationSideMutation();
      v32 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v28 - 8) + 16))(v86, v87, v28);
      swift_storeEnumTagMultiPayload();
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDEABDE8;
      v34 = v82;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v36 = v35;
      result = (*(v83 + 8))(v34, v84);
      v37 = v36 * 1000000000.0;
      if (COERCE__INT64(fabs(v36 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v38 = &v86[v32];
          *v38 = v33;
          v38[1] = 0x2000000000000000;
          v38[2] = v37;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          v26 = v85;
          v27 = v79;
          goto LABEL_12;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CF20DFF4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v64 = a5;
  v58 = a3;
  v59 = a4;
  v48 = a2;
  v57 = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = v5;
  v10 = *(v6 + 624);
  v11 = *(v6 + 608);
  v60 = AssociatedTypeWitness;
  v61 = swift_getAssociatedTypeWitness();
  v12 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ReconciliationID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v50 = v8;
  v51 = v7;
  v60 = v8;
  v61 = v11;
  AssociatedConformanceWitness = v7;
  v63 = v10;
  v18 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_1CF9E75D8();
  v49 = *(v53 - 8);
  v19 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v21 = &v44 - v20;
  v22 = swift_getTupleTypeMetadata2();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v44 - v25;
  v52 = *(v18 - 8);
  v27 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v44 - v28;
  (*(*(v12 - 8) + 16))(v17, v57, v12);
  swift_storeEnumTagMultiPayload();
  v30 = v55;
  sub_1CF20A25C(v17, 1, v58, v59, *(v64 + 8), v21);
  if (v30)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v45 = v26;
  v46 = v29;
  v55 = 0;
  v32 = v52;
  v33 = v53;
  v47 = v18;
  (*(v14 + 8))(v17, v13);
  v34 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v21, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v49 + 8))(v21, v33);
  }

  v35 = *&v21[*(v34 + 48)];
  v36 = *(v22 + 48);
  v37 = *(v32 + 32);
  v38 = v45;
  v39 = v21;
  v40 = v47;
  v37(v45, v39, v47);
  *&v38[v36] = v35;
  v41 = *&v38[*(v22 + 48)];
  v42 = v46;
  v37(v46, v38, v40);
  v43 = v42 + *(type metadata accessor for ItemReconciliationHalf() + 64);
  if (!*(v43 + 16) && (*v43 & 0x4002) != 0 && sub_1CF07CD80(v40))
  {
    return (*(v32 + 8))(v42, v40);
  }

  sub_1CF20D50C(v57, v42, v41, v48, v58, v59, v64);
  return (*(v32 + 8))(v42, v40);
}

uint64_t sub_1CF20E534(void (**a1)(uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v105 = a1;
  v111 = a4;
  v112 = a5;
  v109 = a3;
  v114 = a2;
  v6 = *v5;
  v107 = (v5 + 2);
  v7 = v6[77];
  v8 = v6[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v6[78];
  v115 = v5;
  v11 = v6[76];
  v119 = AssociatedTypeWitness;
  v120 = swift_getAssociatedTypeWitness();
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v122 = swift_getAssociatedConformanceWitness();
  v97 = type metadata accessor for ReconciliationID();
  v102 = *(v97 - 8);
  v13 = v102[8];
  MEMORY[0x1EEE9AC00](v97);
  v116 = &v76 - v14;
  v119 = v8;
  v120 = v11;
  AssociatedConformanceWitness = v7;
  v122 = v10;
  v15 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = sub_1CF9E75D8();
  v101 = *(v93 - 8);
  v16 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v76 - v17;
  v94 = swift_getTupleTypeMetadata2();
  v18 = *(*(v94 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v94);
  v92 = &v76 - v20;
  v95 = v15;
  v100 = *(v15 - 8);
  v21 = *(v100 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v91 = &v76 - v23;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v76 - v26;
  v110 = AssociatedTypeWitness;
  v27 = sub_1CF9E75D8();
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  v28 = swift_getTupleTypeMetadata2();
  v88 = sub_1CF9E75D8();
  v87 = *(v88 - 8);
  v29 = *(v87 + 64);
  v30 = MEMORY[0x1EEE9AC00](v88);
  v108 = &v76 - v31;
  v113 = v27;
  v104 = *(v27 - 8);
  v32 = *(v104 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v98 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v117 = &v76 - v35;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v37 = *(result + 32);

  v119 = v8;
  v120 = v12;
  AssociatedConformanceWitness = v7;
  v122 = v10;
  v38 = v37;
  type metadata accessor for SQLSnapshot();
  v39 = swift_dynamicCastClassUnconditional();
  sub_1CF9E7FA8();
  v40 = *(v28 - 8);
  v41 = *(v40 + 72);
  v42 = *(v40 + 80);
  swift_allocObject();
  v43 = sub_1CF9E6D68();
  v45 = v44;
  v107 = v24;
  (*(v24 + 56))(v44, 1, 1, v110);
  v46 = *(v112 + 8);
  v47 = v106;
  v48 = v28;
  v49 = sub_1CF492074(v105, v109, v111, v46);
  if (v47)
  {
    (*(v104 + 8))(v45, v113);
    sub_1CF3588D0(v43);
  }

  v106 = v39;
  v83 = v46;
  v86 = v38;
  v50 = v109;
  v51 = v111;
  *(v45 + *(v28 + 48)) = v49;
  v119 = sub_1CF045898(v43);
  v52 = sub_1CF9E6E58();
  v53 = (v40 + 48);
  v105 = (v104 + 32);
  v85 = (v104 + 16);
  v84 = (v107 + 6);
  v81 = (v107 + 4);
  v80 = (v107 + 2);
  v82 = (v102 + 1);
  v79 = TupleTypeMetadata2 - 8;
  v78 = (v100 + 32);
  v100 += 8;
  v102 = v107 + 1;
  v101 += 8;
  v107 = (v104 + 8);
  v54 = v108;
  v90 = v28;
  v89 = v52;
  while (1)
  {
    v55 = v52;
    WitnessTable = swift_getWitnessTable();
    v57 = swift_getWitnessTable();
    MEMORY[0x1D3869410](v55, WitnessTable, v57);
    if ((*v53)(v54, 1, v48) == 1)
    {
      break;
    }

    v58 = v53;
    v59 = v54;
    v60 = *&v54[*(v48 + 48)];
    (*v105)(v117, v59, v113);
    v124 = 0;
    v61 = v112;
    v62 = v116;
    v63 = v106;
    do
    {
      if (![v60 next])
      {
        break;
      }

      v64 = objc_autoreleasePoolPush();
      sub_1CF20F250(v60, v115, v50, v114, &v119, v117, v63, &v124, &v123, v51, v61, &v118);
      objc_autoreleasePoolPop(v64);
      v62 = v116;
    }

    while ((v123 & 1) != 0);
    if (v124)
    {

LABEL_11:
      v65 = v113;
      goto LABEL_14;
    }

    v66 = v98;
    v65 = v113;
    (*v85)(v98, v117, v113);
    v67 = v110;
    if ((*v84)(v66, 1, v110) != 1)
    {
      v68 = v99;
      (*v81)(v99, v66, v67);
      (*v80)(v62, v68, v67);
      v69 = v97;
      swift_storeEnumTagMultiPayload();
      v70 = v96;
      sub_1CF20A25C(v62, 1, v50, v51, v83, v96);
      (*v82)(v116, v69);
      v71 = TupleTypeMetadata2;
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v70, 1, TupleTypeMetadata2) == 1)
      {
        (*v102)(v99, v67);

        (*v101)(v70, v93);
      }

      else
      {
        v77 = *(v70 + *(v71 + 48));
        v76 = *(v94 + 48);
        v104 = *v78;
        v72 = v92;
        v73 = v95;
        (v104)(v92, v70, v95);
        *&v72[v76] = v77;
        v77 = *&v72[*(v94 + 48)];
        v74 = v91;
        (v104)(v91, v72, v73);
        v75 = v99;
        sub_1CF20D50C(v99, v74, v77, v114, v50, v111, v112);

        (*v100)(v74, v95);
        (*v102)(v75, v110);
      }

      goto LABEL_11;
    }

    (*v107)(v66, v65);
LABEL_14:
    (*v107)(v117, v65);
    v48 = v90;
    v54 = v108;
    v52 = v89;
    v53 = v58;
  }

  (*(v87 + 8))(v54, v88);
}

uint64_t sub_1CF20F250@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, char *a10, uint64_t a11, uint64_t *a12)
{
  v96 = a8;
  v102 = a7;
  v99 = a6;
  v104 = a5;
  v105 = a4;
  v117 = a3;
  v122 = a1;
  v112 = a9;
  v13 = *a2;
  v14 = *(*a2 + 616);
  v15 = *(*a2 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v100 = v87 - v19;
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  v101 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v98 = v87 - v21;
  v22 = *(v13 + 624);
  v116 = a2;
  v23 = *(v13 + 608);
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  *&v123 = AssociatedTypeWitness;
  *(&v123 + 1) = v24;
  *&v124 = AssociatedConformanceWitness;
  *(&v124 + 1) = v26;
  v120 = type metadata accessor for ReconciliationID();
  v115 = *(v120 - 8);
  v27 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = v87 - v28;
  v110 = v14;
  v111 = v15;
  *&v29 = v15;
  *(&v29 + 1) = v23;
  *&v30 = v14;
  *(&v30 + 1) = v22;
  v124 = v30;
  v123 = v29;
  v31 = type metadata accessor for ItemReconciliation();
  v113 = swift_getTupleTypeMetadata2();
  v32 = sub_1CF9E75D8();
  v108 = *(v32 - 8);
  v109 = v32;
  v33 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v118 = v87 - v34;
  v107 = swift_getTupleTypeMetadata2();
  v35 = *(*(v107 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v107);
  v106 = v87 - v37;
  v114 = *(v31 - 1);
  v38 = *(v114 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = v87 - v40;
  v121 = *(AssociatedTypeWitness - 8);
  v42 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v44 = v87 - v43;
  v45 = *(*(AssociatedConformanceWitness + 8) + 16);
  v46 = v122;
  v47 = v125;
  v125 = AssociatedTypeWitness;
  result = v45();
  v49 = v47;
  if (v47)
  {
    goto LABEL_6;
  }

  v50 = v119;
  v51 = v120;
  v95 = v41;
  v122 = v31;
  v52 = [v46 longAtIndex_];
  if (v52 > 4 || ((0x17u >> v52) & 1) == 0)
  {
    sub_1CF1DA5D8();
    v49 = swift_allocError();
    *v57 = 0;
    swift_willThrow();
    result = (*(v121 + 8))(v44, v125);
LABEL_6:
    *a12 = v49;
    return result;
  }

  v92 = v52;
  v91 = v46;
  v54 = v121 + 16;
  v53 = *(v121 + 16);
  v94 = v44;
  v90 = v53;
  v53(v50, v44, v125);
  v55 = v51;
  swift_storeEnumTagMultiPayload();
  v89 = a11;
  v56 = *(a11 + 8);
  v93 = a10;
  sub_1CF20A25C(v50, 0, v117, a10, v56, v118);
  v58 = v125;
  v87[1] = v54;
  v88 = v56;
  v59 = v94;
  (*(v115 + 8))(v50, v55);
  v60 = v113;
  v61 = v118;
  if ((*(*(v113 - 8) + 48))(v118, 1, v113) == 1)
  {
    (*(v121 + 8))(v59, v58);
    result = (*(v108 + 8))(v61, v109);
LABEL_9:
    *v112 = 1;
    return result;
  }

  v62 = *(v61 + *(v60 + 48));
  v64 = v106;
  v63 = v107;
  v65 = *(v107 + 48);
  v66 = *(v114 + 32);
  v67 = v61;
  v68 = v122;
  v66(v106, v67, v122);
  *&v64[v65] = v62;
  v69 = *&v64[*(v63 + 48)];
  v70 = v95;
  v66(v95, v64, v68);
  v71 = v70;
  v72 = v70 + *(type metadata accessor for ItemReconciliationHalf() + 64);
  if (!*(v72 + 16) && (*v72 & 0x4002) != 0 && sub_1CF07CD80(v68))
  {
    (*(v121 + 8))(v59, v125);
    result = (*(v114 + 8))(v70, v68);
    goto LABEL_9;
  }

  v73 = v125;
  if ((2u >> v92) & 1) != 0 && (v105)
  {
    v74 = *(TupleTypeMetadata2 + 48);
    v75 = v97;
    v76 = v98;
    v77 = v101;
    (*(v97 + 16))(v98, v99, v101);
    v78 = v91;
    *&v76[v74] = v91;
    v79 = sub_1CF9E6E58();
    v80 = v78;
    v120 = v79;
    sub_1CF9E6E18();
    v81 = v100;
    v90(v100, v59, v73);
    v82 = v121;
    (*(v121 + 56))(v81, 0, 1, v73);
    v84 = sub_1CF492074(v59, v117, v93, v88);
    v85 = v77;
    v86 = *(TupleTypeMetadata2 + 48);
    (*(v75 + 32))(v76, v81, v85);
    *&v76[v86] = v84;
    sub_1CF9E6E18();
    (*(v82 + 8))(v59, v73);
    *v96 = 1;
    result = (*(v114 + 8))(v95, v122);
    *v112 = 0;
  }

  else
  {
    sub_1CF20D50C(v59, v71, v69, v105, v117, v93, v89);
    v83 = v112;
    (*(v121 + 8))(v59, v73);
    result = (*(v114 + 8))(v71, v68);
    *v83 = 1;
  }

  return result;
}

uint64_t sub_1CF20FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = a1;
  v95 = a4;
  v96 = a5;
  v94 = a3;
  v82 = a2;
  v6 = *v5;
  v79 = sub_1CF9E5CF8();
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v5;
  v9 = v6[75];
  v10 = v6[76];
  v11 = v6[77];
  v12 = v6[78];
  v99 = v9;
  v100 = v10;
  v101 = v11;
  v102 = v12;
  v84 = type metadata accessor for ReconciliationMutation();
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v72 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v99 = AssociatedTypeWitness;
  v100 = v16;
  v101 = AssociatedConformanceWitness;
  v102 = v18;
  v19 = type metadata accessor for ReconciliationID();
  v91 = *(v19 - 8);
  v20 = *(v91 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v81 = v9;
  v99 = v9;
  v100 = v10;
  v80 = v11;
  v101 = v11;
  v102 = v12;
  v24 = v21;
  v25 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = sub_1CF9E75D8();
  v85 = *(v26 - 8);
  v86 = v26;
  v27 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v72 - v28;
  v88 = swift_getTupleTypeMetadata2();
  v30 = *(*(v88 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v88);
  v33 = &v72 - v32;
  v87 = *(v25 - 8);
  v34 = v87[8];
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v72 - v35;
  v37 = *(v16 - 8);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v38(v23, v93, v16);
  swift_storeEnumTagMultiPayload();
  v40 = *(v96 + 8);
  v89 = v29;
  v41 = v92;
  sub_1CF20A25C(v23, 0, v94, v95, v40, v29);
  if (v41)
  {
    v42 = *(v91 + 8);
    v43 = v23;
    return v42(v43, v24);
  }

  v76 = v33;
  v45 = v88;
  v74 = v39;
  v75 = v38;
  v73 = v16;
  v92 = v36;
  (*(v91 + 8))(v23, v24);
  v47 = v89;
  v46 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v89, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v85 + 8))(v47, v86);
  }

  v86 = v24;
  v91 = 0;
  v48 = *&v47[*(v46 + 48)];
  v49 = *(v45 + 48);
  v50 = v87[4];
  v51 = v76;
  v24 = v25;
  v50(v76, v47, v25);
  *&v51[v49] = v48;
  v52 = *&v51[*(v45 + 48)];
  v53 = v92;
  v50(v92, v51, v25);
  if (!sub_1CF07CD80(v25))
  {
    sub_1CF216504(v53, v52, 0, v94, v95, v96);
    v42 = v87[1];
    v43 = v53;
    return v42(v43, v24);
  }

  v99 = sub_1CF9E6DA8();
  if ((v82 & 2) == 0)
  {
    v54 = v96;
    v56 = v94;
    v55 = v95;
    v57 = v83;
    if ((v82 & 4) == 0)
    {
LABEL_20:
      v98 = v99;
      v70 = sub_1CF9E6E58();
      WitnessTable = swift_getWitnessTable();
      sub_1CF693824(&v98, v56, v70, v55, WitnessTable, v54);

      v42 = v87[1];
      v43 = v92;
      return v42(v43, v24);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    TupleTypeMetadata2 = *(TupleTypeMetadata3 + 48);
    v59 = *(TupleTypeMetadata3 + 64);
    v75(v57, v93, v73);
    swift_storeEnumTagMultiPayload();
    v57[TupleTypeMetadata2] = 5;
LABEL_19:
    v57[v59] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    goto LABEL_20;
  }

  v60 = *(v53 + *(type metadata accessor for ItemReconciliationHalf() + 36));
  v61 = v93;
  v57 = v83;
  v62 = v73;
  if (v60)
  {
LABEL_18:
    v59 = *(swift_getTupleTypeMetadata2() + 48);
    v75(v57, v61, v62);
    swift_storeEnumTagMultiPayload();
    v54 = v96;
    v56 = v94;
    v55 = v95;
    goto LABEL_19;
  }

  type metadata accessor for ReconciliationSideMutation();
  v63 = *(swift_getTupleTypeMetadata2() + 48);
  v75(v57, v61, v62);
  swift_storeEnumTagMultiPayload();
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v64 = qword_1EDEABDE8;
  v65 = v77;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v67 = v66;
  result = (*(v78 + 8))(v65, v79);
  v68 = v67 * 1000000000.0;
  if (COERCE__INT64(fabs(v67 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v68 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v68 < 9.22337204e18)
  {
    v69 = &v57[v63];
    *v69 = v64;
    v69[1] = 0x2000000000000000;
    v69[2] = v68;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1CF2106C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v51 = a1;
  v57 = a3;
  v58 = a5;
  v54 = a2;
  v7 = *v5;
  v8 = *v5;
  v9 = *(*v5 + 624);
  v55 = v5;
  v10 = *(v7 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_1CF9E75D8();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v46 - v17;
  v56 = v12;
  v50 = *(v12 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v53 = v46 - v20;
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + 40);

    v23 = *(v8 + 600);
    v24 = *(v8 + 616);
    v59[0] = v10;
    v59[1] = v23;
    v59[2] = v9;
    v59[3] = v24;
    v25 = v22;
    type metadata accessor for SQLSnapshot();
    v26 = swift_dynamicCastClassUnconditional();
    sub_1CF9E7FA8();
    v27 = *(TupleTypeMetadata2 - 8);
    v28 = *(v27 + 72);
    v29 = *(v27 + 80);
    swift_allocObject();
    v30 = sub_1CF9E6D68();
    v32 = v31;
    (*(*(AssociatedTypeWitness - 8) + 56))(v31, 1, 1, AssociatedTypeWitness);
    v33 = v52;
    v34 = sub_1CF492074(v51, v57, a4, v58[1]);
    if (v33)
    {
      (*(v50 + 8))(v32, v56);
      sub_1CF3588D0(v30);
    }

    else
    {
      v51 = v26;
      v52 = a4;
      v46[1] = v25;
      *(v32 + *(TupleTypeMetadata2 + 48)) = v34;
      v59[0] = sub_1CF045898(v30);
      v35 = sub_1CF9E6E58();
      v36 = (v27 + 48);
      v49 = (v50 + 32);
      v50 += 8;
      while (1)
      {
        WitnessTable = swift_getWitnessTable();
        v38 = swift_getWitnessTable();
        MEMORY[0x1D3869410](v35, WitnessTable, v38);
        if ((*v36)(v18, 1, TupleTypeMetadata2) == 1)
        {
          break;
        }

        v39 = TupleTypeMetadata2;
        v40 = *&v18[*(TupleTypeMetadata2 + 48)];
        v41 = v18;
        v42 = v53;
        v43 = v41;
        v44 = v56;
        (*v49)(v53);
        v45 = objc_autoreleasePoolPush();
        sub_1CF210C00(v40, v54, v59, v42, v51, v57, v55, v52, v58, &v60);
        objc_autoreleasePoolPop(v45);

        (*v50)(v42, v44);
        TupleTypeMetadata2 = v39;
        v18 = v43;
      }

      (*(v47 + 8))(v18, v48);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF210C00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v11 = v10;
  v42 = a8;
  v43 = a7;
  v40 = a2;
  v41 = a6;
  v16 = *(*a5 + 776);
  v17 = *(*a5 + 760);
  v18 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v37 = *(v20 - 8);
  v38 = v20;
  v21 = *(v37 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v36 = &v33 - v23;
  v39 = *(AssociatedTypeWitness - 8);
  v24 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v35 = &v33 - v25;
  v45 = 0;
  if ([a1 next])
  {
    v33 = AssociatedTypeWitness;
    v34 = a10;
    do
    {
      v26 = objc_autoreleasePoolPush();
      sub_1CF210F28(a1, v40, a3, a4, a5, v41, &v45, v43, v42, a9, &v44);
      if (v11)
      {
        v32 = v44;
        objc_autoreleasePoolPop(v26);
        *v34 = v32;
        return;
      }

      v11 = 0;
      objc_autoreleasePoolPop(v26);
    }

    while (([a1 next] & 1) != 0);
    AssociatedTypeWitness = v33;
    v18 = v34;
    if (v45)
    {
      return;
    }
  }

  v28 = v36;
  v27 = v37;
  v29 = v38;
  (*(v37 + 16))(v36, a4, v38);
  v30 = v39;
  if ((*(v39 + 48))(v28, 1, AssociatedTypeWitness) == 1)
  {
    (*(v27 + 8))(v28, v29);
  }

  else
  {
    v31 = v35;
    (*(v30 + 32))(v35, v28, AssociatedTypeWitness);
    sub_1CF20FD30(v31, v40, v41, v42, a9);
    (*(v30 + 8))(v31, AssociatedTypeWitness);
    if (v11)
    {
      *v18 = v11;
    }
  }
}

uint64_t sub_1CF210F28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v57 = a2;
  v58 = a8;
  v51 = a7;
  v52 = a4;
  v60 = a6;
  v61 = a1;
  v54 = a3;
  v12 = *(*a5 + 776);
  v13 = *(*a5 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v53 = v49 - v17;
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(*(TupleTypeMetadata2 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = v49 - v20;
  v59 = *(AssociatedTypeWitness - 8);
  v22 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = v49 - v23;
  v25 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v26 = v61;
  v27 = v62;
  result = v25();
  if (v27)
  {
    goto LABEL_11;
  }

  v49[0] = v21;
  v49[1] = a5;
  v29 = TupleTypeMetadata2;
  v30 = v57;
  v50 = AssociatedTypeWitness;
  v31 = v15;
  v32 = v60;
  v61 = a10;
  v62 = a9;
  v33 = v26;
  v34 = [v26 longAtIndex_];
  if (v34 <= 1)
  {
    v35 = v32;
    if (v34)
    {
      if (v34 == 1)
      {
        if (v30)
        {
          v36 = *(v29 + 48);
          v37 = v49[0];
          (*(v55 + 16))(v49[0], v52, v31);
          *(v37 + v36) = v33;
          v38 = sub_1CF9E6E58();
          v39 = v33;
          v58 = v38;
          sub_1CF9E6E18();
          v40 = v59;
          v41 = v24;
          v42 = v53;
          v43 = v50;
          (*(v59 + 16))();
          (*(v40 + 56))(v42, 0, 1, v43);
          v47 = sub_1CF492074(v41, v60, v62, v61[1]);
          v48 = *(v29 + 48);
          (*(v55 + 32))(v37, v42, v31);
          *(v37 + v48) = v47;
          sub_1CF9E6E18();
          result = (*(v40 + 8))(v41, v50);
          *v51 = 1;
          return result;
        }

        goto LABEL_9;
      }

      goto LABEL_10;
    }

LABEL_9:
    sub_1CF20FD30(v24, v30, v35, v62, v61);
    return (*(v59 + 8))(v24, v50);
  }

  v35 = v32;
  if (v34 == 2 || v34 == 4)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1CF1DA5D8();
  v44 = swift_allocError();
  *v45 = 0;
  v46 = v44;
  swift_willThrow();
  result = (*(v59 + 8))(v24, v50);
  v27 = v46;
LABEL_11:
  *a11 = v27;
  return result;
}

uint64_t sub_1CF211480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v37 = a6;
  v38 = a7;
  v42 = a4;
  v47 = a5;
  v39 = a3;
  v40 = a1;
  v41 = a2;
  v8 = *v7;
  v9 = *(*v7 + 624);
  v10 = *(*v7 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v32 - v13;
  v14 = *(v8 + 616);
  v15 = *(v8 + 600);
  v16 = swift_getAssociatedTypeWitness();
  v34 = *(v16 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v33 = &v32 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v43 = v16;
  v44 = AssociatedTypeWitness;
  v45 = AssociatedConformanceWitness;
  v46 = v20;
  v21 = type metadata accessor for ReconciliationID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  v26 = v39;
  (*(*(v47 + 8) + 88))(v42);
  (*(v22 + 16))(v25, v40, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v35;
    v27 = v36;
    (*(v36 + 32))(v35, v25, AssociatedTypeWitness);
    v38(v28, v41, v26, v42, v47);
    return (*(v27 + 8))(v28, AssociatedTypeWitness);
  }

  else
  {
    v31 = v33;
    v30 = v34;
    (*(v34 + 32))(v33, v25, v16);
    v37(v31, v41, v26, v42, v47);
    return (*(v30 + 8))(v31, v16);
  }
}

uint64_t sub_1CF21182C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a3;
  v120 = a1;
  v7 = *v4;
  v8 = *v4;
  v9 = *(*v4 + 624);
  v115 = v4;
  v10 = *(v7 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = sub_1CF9E75D8();
  v96 = *(v97 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v98 = v95 - v12;
  *&v13 = *(v8 + 616);
  *&v14 = *(v8 + 600);
  v95[0] = v10;
  *(&v14 + 1) = v10;
  v95[1] = v9;
  *(&v13 + 1) = v9;
  v119[1] = v13;
  v119[0] = v14;
  v15 = type metadata accessor for ItemReconciliation();
  v16 = sub_1CF9E75D8();
  v103 = *(v16 - 8);
  v104 = v16;
  v17 = *(v103 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v101 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v102 = v95 - v20;
  v109 = sub_1CF9E6068();
  v21 = *(v109 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v106 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v105 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v116 = v95 - v28;
  v108 = type metadata accessor for Signpost(0);
  v29 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v114 = v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E6118();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a4;
  v36 = *(a4 + 8);
  v37 = *(v36 + 88);
  v113 = a2;
  v100 = v36;
  v37(v118);
  v112 = v15;
  v38 = sub_1CF082CB0(v15);
  v40 = v39;
  v41 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E7288();

  v44 = os_log_type_enabled(v42, v43);
  v117 = v40;
  v107 = v38;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v38;
    v48 = v46;
    *&v119[0] = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_1CEFD0DF0(v47, v40, v119);
    _os_log_impl(&dword_1CEFC7000, v42, v43, " ✍️  reconciliation insert: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);
  }

  (*(v32 + 8))(v35, v31);
  v49 = v114;
  v50 = v109;
  v51 = v105;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDEBBE40;
  v53 = v116;
  (*(v21 + 56))(v116, 1, 1, v50);
  sub_1CEFCCBDC(v53, v51, &unk_1EC4BED20, &unk_1CFA00700);
  v54 = *(v21 + 48);
  v55 = v54(v51, 1, v50);
  v56 = v117;
  if (v55 == 1)
  {
    v57 = v52;
    v58 = v106;
    sub_1CF9E6048();
    v59 = v21;
    if (v54(v51, 1, v50) != 1)
    {
      sub_1CEFCCC44(v51, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v58 = v106;
    (*(v21 + 32))(v106, v51, v50);
    v59 = v21;
  }

  (*(v59 + 16))(v49, v58, v50);
  v60 = v108;
  *&v49[*(v108 + 20)] = v52;
  v61 = &v49[*(v60 + 24)];
  *v61 = "SQLDB: reconciliation insert";
  *(v61 + 1) = 28;
  v61[16] = 2;

  v62 = v52;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1CF9FA450;
  *(v63 + 56) = MEMORY[0x1E69E6158];
  *(v63 + 64) = sub_1CEFD51C4();
  *(v63 + 32) = v107;
  *(v63 + 40) = v56;
  v94 = v63;
  LOBYTE(v93) = 2;
  v92 = 2;
  v108 = v62;
  sub_1CF9E6028();

  (*(v59 + 8))(v58, v50);
  sub_1CEFCCC44(v116, &unk_1EC4BED20, &unk_1CFA00700);
  v64 = v112;
  v65 = v120;
  v66 = sub_1CF083A1C(v112);
  v67 = v66;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v69 = v118;
  v70 = v110;
  v71 = v111;
  v95[-6] = v118;
  v95[-5] = v71;
  v92 = v115;
  v93 = v65;
  LOBYTE(v94) = v68 & 1;
  v72 = v113;
  (*(v71 + 32))(sub_1CF24F654);
  v116 = v70;
  if (v70)
  {

LABEL_13:
    sub_1CF9E7458();
    sub_1CF9E6038();
    v82 = v49;
    return sub_1CEFD5218(v82, type metadata accessor for Signpost);
  }

  LODWORD(v110) = v67;
  v73 = (*(v71 + 16))(v69, v71);
  v74 = v100;
  sub_1CF208D00(v65, v73, v72, v69, v100);
  v75 = *(v64 - 8);
  v76 = v102;
  (*(v75 + 16))(v102, v65, v64);
  v77 = *(v75 + 56);
  v77(v76, 0, 1, v64);
  v78 = v101;
  v77(v101, 1, 1, v64);
  v79 = v116;
  sub_1CF215514(v76, v78, v113, v69, v74);
  v116 = v79;
  if (v79)
  {

    v80 = v104;
    v81 = *(v103 + 8);
    v81(v78, v104);
    v81(v76, v80);
    v49 = v114;
    goto LABEL_13;
  }

  v84 = v104;
  v85 = *(v103 + 8);
  v85(v78, v104);
  v85(v76, v84);
  if ((v110 & 1) == 0)
  {

    v90 = v114;
    goto LABEL_19;
  }

  v86 = v112;
  v87 = v120;
  v88 = v98;
  (*(v96 + 16))(v98, v120 + *(v112 + 52), v97);
  v89 = (*(*(AssociatedTypeWitness - 8) + 48))(v88, 1, AssociatedTypeWitness) == 1;
  result = v117;
  v90 = v114;
  if (!v89)
  {

    swift_getAssociatedConformanceWitness();
    type metadata accessor for PendingSetItem();
    v91 = sub_1CF206528(v88, *(v87 + *(v86 + 64) + 8), *(v87 + *(v86 + 68)), 0);
    sub_1CF212638(v91);

LABEL_19:
    sub_1CF9E7458();
    sub_1CF9E6038();
    v82 = v90;
    return sub_1CEFD5218(v82, type metadata accessor for Signpost);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF21237C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(*a2 + 616);
  v25[0] = *(*a2 + 600);
  v25[1] = v8;
  v9 = type metadata accessor for ItemReconciliation();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B4A0);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3B4D0);
  v15 = *(v9 - 8);
  (*(v15 + 16))(v14, a3, v9);
  (*(v15 + 56))(v14, 0, 1, v9);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1CF073320(v14, v9, WitnessTable);
  v19 = v18;
  (*(v11 + 8))(v14, v10);
  MEMORY[0x1D3868CC0](v17, v19);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v20 = [a1 bindBooleanParameter_];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return *&v25[0];
}

uint64_t sub_1CF212638(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 672);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for PendingSetItem();

  swift_getWitnessTable();
  v7 = sub_1CF9E6FD8();

  v8 = [objc_opt_self() defaultStore];
  v9 = [v8 pendingSetMaxItemCount];

  v10 = *(*v1 + 680);
  if (((*(v1 + v10) & 1) != 0 || v7 == v9) && (v11 = *(v1 + v3), , v12 = sub_1CF9E7048(), result = , (v12 & 1) == 0))
  {
    *(v1 + v10) = 1;
  }

  else
  {
    swift_beginAccess();
    sub_1CF9E7068();

    sub_1CF9E7018();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1CF212818(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a4;
  v99 = a5;
  v97 = a3;
  v91 = a2;
  v105 = a1;
  v6 = *v5;
  v7 = *(*v5 + 608);
  v8 = *(*v5 + 624);
  v9 = type metadata accessor for SnapshotItem();
  v10 = sub_1CF9E75D8();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v93 = v9;
  v94 = &v77 - v13;
  v92 = *(v9 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v77 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v101 = *(v17 - 8);
  v102 = v17;
  v18 = *(v101 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  v104 = AssociatedTypeWitness;
  v103 = *(AssociatedTypeWitness - 8);
  v22 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v77 - v23;
  v24 = *(v6 + 600);
  v100 = v5;
  v25 = *(v6 + 616);
  v26 = type metadata accessor for SnapshotItem();
  v79 = sub_1CF9E75D8();
  v78 = *(v79 - 8);
  v27 = *(v78 + 64);
  v28 = MEMORY[0x1EEE9AC00](v79);
  v82 = &v77 - v29;
  v81 = v26;
  v80 = *(v26 - 8);
  v30 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v83 = &v77 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v86 = sub_1CF9E75D8();
  v85 = *(v86 - 8);
  v33 = *(v85 + 64);
  v34 = MEMORY[0x1EEE9AC00](v86);
  v36 = &v77 - v35;
  v88 = v32;
  v87 = *(v32 - 8);
  v37 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v84 = &v77 - v38;
  *&v39 = v24;
  *(&v39 + 1) = v7;
  *&v40 = v25;
  *(&v40 + 1) = v8;
  v107 = v40;
  v106 = v39;
  v41 = type metadata accessor for ItemReconciliation();
  v42 = v105;
  result = sub_1CF086A0C(v41);
  if (result != 2)
  {
    if (result)
    {
      v45 = v101;
      v44 = v102;
      (*(v101 + 16))(v21, v42 + *(v41 + 52), v102);
      v47 = v103;
      v46 = v104;
      if ((*(v103 + 48))(v21, 1, v104) == 1)
      {
        return (*(v45 + 8))(v21, v44);
      }

      v54 = v96;
      (*(v47 + 32))(v96, v21, v46);
      result = swift_weakLoadStrong();
      v55 = v108;
      if (result)
      {
        v56 = *(result + 40);

        v57 = v94;
        (*(*v56 + 240))(v54, 1, v97, v98, v99);
        v58 = v95;
        if (v55)
        {
          (*(v47 + 8))(v54, v46);
        }

        v60 = v92;
        v59 = v93;
        if ((*(v92 + 48))(v57, 1, v93) == 1)
        {
          (*(v47 + 8))(v54, v46);
          return (*(v89 + 8))(v57, v90);
        }

        (*(v60 + 32))(v58, v57, v59);
        result = swift_weakLoadStrong();
        if (result)
        {
          v61 = v60;
          v62 = result;
          v63 = v59;
          v64 = &v58[*(v59 + 48)];
          v65 = type metadata accessor for ItemMetadata();
          (*(*v62 + 528))(1, *&v64[*(v65 + 104)], v91 & 1, 0);

          (*(v61 + 8))(v58, v63);
          return (*(v47 + 8))(v54, v46);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      result = type metadata accessor for ItemReconciliationHalf();
      if ((*(v42 + *(result + 36)) & 0x10) != 0)
      {
        return result;
      }

      if ((*(v42 + *(result + 76)) & 4) != 0)
      {
        return result;
      }

      v48 = result;
      v49 = v42 + *(v41 + 52);
      result = type metadata accessor for ItemReconciliationHalf();
      if ((*(v49 + *(result + 76)) & 4) != 0 || !*(v42 + *(v48 + 56)))
      {
        return result;
      }

      v50 = v85;
      v51 = v86;
      (*(v85 + 16))(v36, v42, v86);
      v52 = v87;
      v53 = v88;
      if ((*(v87 + 48))(v36, 1, v88) == 1)
      {
        return (*(v50 + 8))(v36, v51);
      }

      v66 = v84;
      (*(v52 + 32))(v84, v36, v53);
      result = swift_weakLoadStrong();
      if (result)
      {
        v67 = *(result + 32);

        v68 = v82;
        v69 = v108;
        (*(*v67 + 240))(v66, 1, v97, v98, v99);
        v70 = v83;
        if (v69)
        {
          (*(v52 + 8))(v66, v53);
        }

        v71 = v80;
        v72 = v81;
        if ((*(v80 + 48))(v68, 1, v81) == 1)
        {
          (*(v52 + 8))(v84, v53);
          return (*(v78 + 8))(v68, v79);
        }

        (*(v71 + 32))(v70, v68, v72);
        result = swift_weakLoadStrong();
        if (result)
        {
          v73 = v71;
          v74 = result;
          v75 = &v70[*(v72 + 48)];
          v76 = type metadata accessor for ItemMetadata();
          (*(*v74 + 528))(0, *&v75[*(v76 + 104)], v91 & 1, 0);

          (*(v73 + 8))(v70, v72);
          return (*(v52 + 8))(v84, v53);
        }

LABEL_31:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1CF2132A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v220 = a4;
  v183 = a3;
  v209 = a1;
  v210 = a2;
  v10 = *(*v6 + 608);
  v11 = *(*v6 + 616);
  v12 = *(*v6 + 624);
  v216 = *(*v6 + 600);
  v9 = v216;
  v217 = v10;
  v218 = v11;
  v219 = v12;
  v166 = type metadata accessor for PersistenceTrigger();
  v165 = *(v166 - 8);
  v13 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v161[-v14];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v176 = *(AssociatedTypeWitness - 8);
  v16 = *(v176 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v167 = &v161[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v161[-v19];
  v177 = v20;
  v174 = sub_1CF9E75D8();
  v173 = *(v174 - 8);
  v21 = *(v173 + 64);
  v22 = MEMORY[0x1EEE9AC00](v174);
  v170 = &v161[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v171 = &v161[-v24];
  v25 = swift_getAssociatedTypeWitness();
  v188 = sub_1CF9E75D8();
  v190 = *(v188 - 8);
  v26 = v190[8];
  v27 = MEMORY[0x1EEE9AC00](v188);
  v172 = &v161[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v179 = &v161[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v182 = &v161[-v32];
  v189 = v25;
  v187 = *(v25 - 8);
  v33 = *(v187 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v169 = &v161[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v178 = &v161[-v36];
  v181 = v9;
  v216 = v9;
  v217 = v10;
  v185 = v10;
  v180 = v11;
  v218 = v11;
  v219 = v12;
  v184 = v12;
  v37 = type metadata accessor for ItemReconciliation();
  v200 = sub_1CF9E75D8();
  v199 = *(v200 - 8);
  v38 = *(v199 + 8);
  v39 = MEMORY[0x1EEE9AC00](v200);
  v197 = &v161[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39);
  v198 = &v161[-v41];
  v196 = sub_1CF9E6068();
  v195 = *(v196 - 8);
  v42 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v204 = &v161[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v193 = &v161[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v203 = &v161[-v48];
  v194 = type metadata accessor for Signpost(0);
  v49 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v205 = &v161[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v192 = sub_1CF9E6118();
  v191 = *(v192 - 8);
  v51 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v53 = &v161[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = *(a6 + 8);
  (*(v54 + 88))(a5, v54);
  WitnessTable = swift_getWitnessTable();
  v56 = sub_1CF01E0C4(v37, WitnessTable);
  v207 = a5;
  v211 = a5;
  v212 = a6;
  v186 = a6;
  v206 = v6;
  v213 = v6;
  v214 = v210;
  v215 = v209;
  v216 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  sub_1CEFCCCEC(&qword_1EDEA37A0, &qword_1EC4BE188, &qword_1CFA03800);
  v57 = v208;
  v58 = sub_1CF9E7A08();
  v208 = v57;
  v216 = v58;
  sub_1CEFCCCEC(&qword_1EDEA37A8, &qword_1EC4BE188, &qword_1CFA03800);
  v59 = sub_1CF9E7128();
  v60 = v59;
  if (v59)
  {

    v61 = v60 ^ 1;
    return v61 & 1;
  }

  v201 = v54;
  v162 = v59;
  v62 = sub_1CF082CB0(v37);
  v64 = v63;
  v65 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v66 = sub_1CF9E6108();
  v67 = sub_1CF9E7288();

  v68 = os_log_type_enabled(v66, v67);
  v175 = v58;
  v202 = v64;
  v163 = v62;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v216 = v70;
    *v69 = 136446210;
    *(v69 + 4) = sub_1CEFD0DF0(v62, v64, &v216);
    _os_log_impl(&dword_1CEFC7000, v66, v67, " ✍️  reconciliation update: %{public}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1D386CDC0](v70, -1, -1);
    MEMORY[0x1D386CDC0](v69, -1, -1);
  }

  (*(v191 + 8))(v53, v192);
  v71 = v196;
  v72 = v195;
  sub_1CF20948C(v210, v220, v207, v201);
  v73 = v204;
  v74 = v193;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v75 = qword_1EDEBBE40;
  v76 = v203;
  (*(v72 + 56))(v203, 1, 1, v71);
  sub_1CEFCCBDC(v76, v74, &unk_1EC4BED20, &unk_1CFA00700);
  v77 = *(v72 + 48);
  if (v77(v74, 1, v71) == 1)
  {
    v78 = v75;
    sub_1CF9E6048();
    if (v77(v74, 1, v71) != 1)
    {
      sub_1CEFCCC44(v74, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v72 + 32))(v73, v74, v71);
  }

  v79 = v205;
  (*(v72 + 16))(v205, v73, v71);
  v80 = v194;
  *&v79[*(v194 + 20)] = v75;
  v81 = &v79[*(v80 + 24)];
  *v81 = "SQLDB: reconciliation update";
  *(v81 + 1) = 28;
  v81[16] = 2;
  v82 = v202;

  v83 = v75;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1CF9FA450;
  *(v84 + 56) = MEMORY[0x1E69E6158];
  *(v84 + 64) = sub_1CEFD51C4();
  *(v84 + 32) = v163;
  *(v84 + 40) = v82;
  v159 = v84;
  LOBYTE(v158) = 2;
  v157 = 2;
  v196 = v83;
  sub_1CF9E6028();

  (*(v72 + 8))(v204, v71);
  sub_1CEFCCC44(v203, &unk_1EC4BED20, &unk_1CFA00700);
  v85 = v209;
  LODWORD(v204) = sub_1CF083A1C(v37);
  v86 = *(v37 - 1);
  v87 = *(v86 + 16);
  v88 = v198;
  v87(v198, v85, v37);
  v89 = *(v86 + 56);
  v89(v88, 0, 1, v37);
  v90 = v197;
  v87(v197, v210, v37);
  v89(v90, 0, 1, v37);
  v91 = v208;
  sub_1CF215514(v88, v90, v220, v207, v201);
  if (v91)
  {

    v92 = *(v199 + 1);
    v93 = v200;
    v92(v90, v200);
    v92(v88, v93);
LABEL_22:
    sub_1CF9E7458();
    v120 = v205;
    sub_1CF9E6038();
    sub_1CEFD5218(v120, type metadata accessor for Signpost);
    return v61 & 1;
  }

  v203 = v37;
  v208 = 0;
  v94 = *(v199 + 1);
  v95 = v200;
  v94(v90, v200);
  v94(v88, v95);
  v96 = v190;
  v97 = v190 + 2;
  v98 = v190[2];
  v99 = v182;
  v100 = v188;
  v98();
  v101 = v187;
  v103 = (v187 + 48);
  v102 = *(v187 + 48);
  v104 = v189;
  v105 = (v102)(v99, 1, v189);
  v200 = v97;
  v199 = v98;
  v198 = v102;
  if (v105 == 1)
  {
    v106 = v96[1];
    v107 = v106(v99, v100);
    v108 = v183;
    v197 = v103;
  }

  else
  {
    v109 = v178;
    (*(v101 + 32))(v178, v99, v104);
    v110 = v179;
    (v98)(v179, v209, v100);
    if ((v102)(v110, 1, v104) == 1)
    {
      v106 = v190[1];
      v106(v110, v100);
      v111 = v208;
      sub_1CF215F80(v109, 0xD000000000000022, 0x80000001CFA3B420, v220, v207, v186);
      v208 = v111;
      v108 = v183;
      if (v111)
      {
        (*(v101 + 8))(v109, v104);

        goto LABEL_22;
      }

      v197 = v103;
      v107 = (*(v101 + 8))(v109, v104);
    }

    else
    {
      v197 = v103;
      (*(v101 + 8))(v109, v104);
      v106 = v190[1];
      v107 = v106(v110, v100);
      v108 = v183;
    }
  }

  MEMORY[0x1EEE9AC00](v107);
  v112 = v185;
  *&v161[-80] = v181;
  *&v161[-72] = v112;
  v113 = v207;
  v114 = v180;
  *&v161[-64] = v207;
  *&v161[-56] = v114;
  v115 = v186;
  *&v161[-48] = v184;
  *&v161[-40] = v115;
  v116 = v208;
  v117 = v209;
  v157 = v175;
  v158 = v209;
  v118 = v204;
  LOBYTE(v159) = v204 & 1;
  v160 = v108;
  v119 = v220;
  (*(v115 + 32))(sub_1CF24F420);
  if (v116)
  {

    goto LABEL_22;
  }

  sub_1CF208D00(v117, v108, v119, v113, v201);
  v122 = v203[13];
  v123 = v173;
  v124 = *(v173 + 16);
  v125 = v176;
  v126 = (v176 + 48);
  if (v118)
  {
    v127 = v171;
    v124(v171, v117 + v122, v174);
    result = (*v126)(v127, 1, v177);
    v128 = v172;
    if (result == 1)
    {
      __break(1u);
      goto LABEL_46;
    }

    swift_getAssociatedConformanceWitness();
    type metadata accessor for PendingSetItem();
    v129 = sub_1CF206528(v127, *(v117 + v203[16] + 8), *(v117 + v203[17]), 0);
    sub_1CF212638(v129);

    v130 = v210;
    v131 = v199;
    v132 = v198;
  }

  else
  {
    v208 = v106;
    v130 = v210;
    v133 = v170;
    v134 = v174;
    v124(v170, v210 + v122, v174);
    v135 = v177;
    if ((*v126)(v133, 1, v177) == 1)
    {
      (*(v123 + 8))(v133, v134);
    }

    else
    {
      v136 = v133;
      v137 = v168;
      (*(v125 + 32))(v168, v136, v135);
      swift_getAssociatedConformanceWitness();
      type metadata accessor for PendingSetItem();
      v138 = v167;
      (*(v125 + 16))(v167, v137, v135);
      v139 = sub_1CF206528(v138, 0, 0, 1);
      sub_1CF2152D4(v139, v220, v207, v201);
      (*(v125 + 8))(v137, v135);
    }

    v128 = v172;
    v131 = v199;
    v132 = v198;
    v106 = v208;
  }

  v140 = v188;
  (v131)(v128, v117, v188);
  v141 = v189;
  if (v132(v128, 1, v189) == 1)
  {

    v106(v128, v140);
    v142 = v205;
LABEL_38:
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v142, type metadata accessor for Signpost);
    v61 = v162 ^ 1;
    return v61 & 1;
  }

  v143 = v130;
  v208 = 0;
  v144 = v187;
  v145 = v169;
  (*(v187 + 32))(v169, v128, v141);
  v146 = type metadata accessor for ItemReconciliationHalf();
  v142 = v205;
  if ((*(v117 + *(v146 + 36)) & 2) == 0)
  {
    (*(v144 + 8))(v145, v141);
LABEL_35:

    goto LABEL_38;
  }

  v147 = *(v146 + 64);
  if (*(v143 + v147 + 16))
  {

    (*(v187 + 8))(v145, v141);
    goto LABEL_38;
  }

  if ((*(v143 + v147 + 1) & 2) == 0 || (v148 = v117 + v147, !*(v148 + 16)) && (*(v148 + 1) & 2) != 0)
  {
    (*(v187 + 8))(v145, v141);
    goto LABEL_35;
  }

  result = swift_weakLoadStrong();
  v149 = v187;
  if (result)
  {
    v150 = result;

    v151 = v164;
    (*(v149 + 16))(v164, v145, v141);
    v152 = v141;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v154 = v177;
    v155 = swift_getAssociatedConformanceWitness();
    v216 = v141;
    v217 = v154;
    v218 = AssociatedConformanceWitness;
    v219 = v155;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    v156 = v166;
    swift_storeEnumTagMultiPayload();
    (*(*v150 + 312))(v151);

    (*(v165 + 8))(v151, v156);
    (*(v149 + 8))(v169, v152);
    goto LABEL_38;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1CF2149E8(unsigned __int8 *a1, void *a2, uint64_t (*a3)(char *, uint64_t, uint64_t), _BYTE *a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = (v7 >> 4) & 3;
  if (v8 <= 1)
  {
    if (v8)
    {
      v20 = v6[78];
      v37 = v6[75];
      v45 = v6[76];
      v53 = v6[77];
      v21 = type metadata accessor for ItemReconciliation();
      v12 = sub_1CF2472B0((a3 + *(v21 + 52)), &a4[*(v21 + 52)], v7 & 0xFFFFFFCF);
    }

    else
    {
      v9 = v6[75];
      v10 = v6[76];
      v11 = v6[78];
      v34 = v6[77];
      v12 = sub_1CF2472B0(a3, a4, v7);
    }

    return v12 & 1;
  }

  if (v8 == 2)
  {
    v13 = v6[75];
    v14 = v6[76];
    v15 = v6[77];
    v16 = v6[78];
    if (v7)
    {
      v36 = v6[75];
      v44 = v6[76];
      v52 = v6[77];
      v56 = v6[78];
      v17 = *(type metadata accessor for ItemReconciliation() + 64);
      v18 = *(a3 + v17 + 8);
      v19 = *&a4[v17 + 8];
LABEL_30:
      v12 = v18 != v19;
      return v12 & 1;
    }

    v39 = v6[75];
    v47 = v6[76];
    v54 = v6[77];
    v58 = v6[78];
    v23 = *(type metadata accessor for ItemReconciliation() + 64);
LABEL_29:
    v18 = *(a3 + v23);
    v19 = *&a4[v23];
    goto LABEL_30;
  }

  v22 = v6[75];
  if (*a1 > 0x32u)
  {
    if (*a1 > 0x34u)
    {
      v41 = v6[75];
      v49 = *(v6 + 38);
      v60 = v6[78];
      if (v7 == 53)
      {
        v23 = *(type metadata accessor for ItemReconciliation() + 80);
      }

      else
      {
        v23 = *(type metadata accessor for ItemReconciliation() + 72);
      }
    }

    else
    {
      if (v7 != 51)
      {
        v43 = v6[75];
        v51 = *(v6 + 38);
        v62 = v6[78];
        v32 = type metadata accessor for ItemReconciliation();
        v12 = *(a3 + *(v32 + 76)) ^ a4[*(v32 + 76)];
        return v12 & 1;
      }

      v38 = v6[75];
      v46 = *(v6 + 38);
      v57 = v6[78];
      v23 = *(type metadata accessor for ItemReconciliation() + 68);
    }

    goto LABEL_29;
  }

  if (v7 != 48)
  {
    if (v7 == 49)
    {
      v40 = v6[75];
      v48 = v6[76];
      v55 = v6[77];
      v59 = v6[78];
      v24 = *(type metadata accessor for ItemReconciliation() + 60);
      v63 = *(a3 + v24);
      v35 = *&a4[v24];
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ReconciliationID();
      swift_getWitnessTable();
      v12 = sub_1CF9E6E78() ^ 1;
      return v12 & 1;
    }

    v30 = v6[77];
    v31 = v6[75];
    v23 = *(type metadata accessor for ItemReconciliationHalf() + 76);
    goto LABEL_29;
  }

  v42 = v6[75];
  v50 = *(v6 + 38);
  v61 = v6[78];
  v25 = *(type metadata accessor for ItemReconciliation() + 56);
  v26 = *(a3 + v25);
  v27 = a4[v25];
  v28 = v26 == 4;
  if (v27 != 4)
  {
    v28 = 0;
  }

  if (v26 != 4 && v27 != 4)
  {
    v28 = qword_1CF9FF5B0[v26] == qword_1CF9FF5B0[v27];
  }

  v12 = !v28;
  return v12 & 1;
}

uint64_t sub_1CF214DD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  *&v42 = a1;
  v38 = a6;
  v39 = a7;
  v44 = a5;
  v43 = a4;
  v40 = a11;
  *&v49 = a6;
  *(&v49 + 1) = a7;
  v50 = a9;
  v51 = a10;
  v13 = type metadata accessor for ItemReconciliation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  *&v45 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  v19 = sub_1CEFCCCEC(&unk_1EDEA37B0, &qword_1EC4BE188, &qword_1CFA03800);
  MEMORY[0x1D3868E50](&v48, v18, v19);
  v47 = v48;
  (*(v14 + 16))(v17, a3, v13);
  v20 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v22 = v39;
  *(v21 + 2) = v38;
  *(v21 + 3) = v22;
  v23 = v40;
  *(v21 + 4) = v41;
  *(v21 + 5) = a9;
  *(v21 + 6) = a10;
  *(v21 + 7) = v23;
  (*(v14 + 32))(&v21[v20], v17, v13);
  v24 = v42;
  *&v21[(v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v42;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA60, &qword_1CF9FF088);
  sub_1CEFCCCEC(&qword_1EDEA33F0, &qword_1EC4BEA60, &qword_1CF9FF088);
  sub_1CF9E7C38();

  v42 = v49;
  v45 = v49;
  v46 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01D0, &unk_1CF9FF090);
  sub_1CF24F550();
  v26 = sub_1CF9E67D8();
  v28 = v27;

  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B450);
  MEMORY[0x1D3868CC0](v26, v28);

  MEMORY[0x1D3868CC0](0x6E65705F7369202CLL, 0xEF203D20676E6964);
  v29 = [v25 bindBooleanParameter_];
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;

  MEMORY[0x1D3868CC0](v30, v32);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39760);
  v33 = [v25 bindLongParameter_];
  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v36 = v35;

  MEMORY[0x1D3868CC0](v34, v36);

  return v49;
}

uint64_t sub_1CF2151CC@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  sub_1CF24F600();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v6 = type metadata accessor for ItemReconciliation();
  v7 = sub_1CF0849E8(v5, a2, v6);
  MEMORY[0x1D3868CC0](v7);

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

void sub_1CF2152D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v6 = v4;
  v10 = *a1;
  v11 = *(*v4 + 672);
  swift_beginAccess();
  v12 = *(v10 + 80);
  v13 = *(v10 + 88);
  type metadata accessor for PendingSetItem();
  swift_getWitnessTable();
  sub_1CF9E7068();
  sub_1CF9E7008();
  swift_endAccess();
  if (v24)
  {
    v20 = a2;

    v14 = *(*v4 + 680);
    if (*(v4 + v14) == 1)
    {
      v15 = *(v4 + v11);

      v16 = sub_1CF9E6FD8();

      v17 = [objc_opt_self() defaultStore];
      v18 = [v17 pendingSetRegatherThreshold];

      if (v16 <= v18)
      {
        (*(a4 + 48))(&v21, MEMORY[0x1E69E6530], sub_1CF233FCC, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a3, a4);
        if (!v5)
        {
          v19 = v21;
          if (v22)
          {
            v19 = 0;
          }

          if (v16 >= v19)
          {
            *(v6 + v14) = 0;
          }

          else
          {
            sub_1CF23309C(v20, a3, a4);
          }
        }
      }
    }
  }
}

uint64_t sub_1CF215514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v105 = a4;
  v101 = a3;
  v111 = a1;
  v7 = *v5;
  v8 = sub_1CF9E6118();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v91 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v93 = &v87 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v100 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v87 - v16;
  v17 = *(v7 + 616);
  v112 = *(v7 + 600);
  v113 = v17;
  v18 = type metadata accessor for ItemReconciliation();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v90 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v92 = &v87 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v99 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v87 - v27;
  v28 = sub_1CF9E75D8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v94 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v95 = &v87 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v106 = &v87 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v98 = &v87 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v87 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v87 - v42;
  v44 = *(v29 + 16);
  v107 = a2;
  v114 = v44;
  v44(&v87 - v42, a2, v28);
  v110 = *(v19 + 48);
  v45 = v110(v43, 1, v18);
  v108 = v19;
  if (v45 == 1)
  {
    v46 = 2;
    v47 = v29;
    v48 = v28;
  }

  else
  {
    v46 = sub_1CF086A0C(v18);
    v47 = v19;
    v48 = v18;
  }

  v49 = v29;
  (*(v47 + 8))(v43, v48);
  v114(v41, v111, v28);
  v50 = v110;
  if (v110(v41, 1, v18) == 1)
  {
    result = (*(v49 + 8))(v41, v28);
    if (v46 == 2)
    {
      return result;
    }

LABEL_13:
    v63 = v106;
    v114(v106, v107, v28);
    if (v50(v63, 1, v18) != 1)
    {
      v65 = v108;
      v66 = v99;
      (*(v108 + 32))(v99, v63, v18);
      sub_1CF212818(v66, 0, v101, v105, v104);
      return (*(v65 + 8))(v66, v18);
    }

    (*(v49 + 8))(v63, v28);
    v64 = fpfs_current_or_default_log();
    v58 = v100;
    sub_1CF9E6128();
    v59 = sub_1CF9E6108();
    v60 = sub_1CF9E72A8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "[GlobalProgress] RT.agp, oldSide!=nil, side==nil, but no oldEntry";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v52 = sub_1CF086A0C(v18);
  v53 = *(v108 + 8);
  v54 = v41;
  v89 = v108 + 8;
  v55 = v53;
  result = v53(v54, v18);
  if (v46 == 2)
  {
    if (v52 == 2)
    {
      return result;
    }

    v56 = v98;
    v114(v98, v111, v28);
    if (v50(v56, 1, v18) == 1)
    {
      (*(v49 + 8))(v56, v28);
      v57 = fpfs_current_or_default_log();
      v58 = v97;
      sub_1CF9E6128();
      v59 = sub_1CF9E6108();
      v60 = sub_1CF9E72A8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        v62 = "[GlobalProgress] RT.agp, oldSide=nil, side!=nil, but no entry";
LABEL_16:
        _os_log_impl(&dword_1CEFC7000, v59, v60, v62, v61, 2u);
        MEMORY[0x1D386CDC0](v61, -1, -1);
      }

LABEL_17:

      return (*(v102 + 8))(v58, v103);
    }

    v76 = v96;
    (*(v108 + 32))(v96, v56, v18);
    sub_1CF212818(v76, 1, v101, v105, v104);
    v77 = v76;
    goto LABEL_26;
  }

  if (v52 == 2)
  {
    goto LABEL_13;
  }

  if ((v52 ^ v46))
  {
    v67 = v95;
    v114(v95, v111, v28);
    v68 = v50(v67, 1, v18);
    v69 = v109;
    v87 = v49;
    v88 = v28;
    if (v68 == 1)
    {
      v111 = v18;
      (*(v49 + 8))(v67, v28);
      v70 = fpfs_current_or_default_log();
      v71 = v93;
      sub_1CF9E6128();
      v72 = sub_1CF9E6108();
      v73 = sub_1CF9E72A8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1CEFC7000, v72, v73, "[GlobalProgress] RT.agp, oldSide!=side, but no entry", v74, 2u);
        MEMORY[0x1D386CDC0](v74, -1, -1);
      }

      (*(v102 + 8))(v71, v103);
      v75 = v104;
    }

    else
    {
      v78 = v92;
      (*(v108 + 32))(v92, v67, v18);
      v79 = v104;
      sub_1CF212818(v78, 1, v101, v105, v104);
      v77 = v78;
      if (v69)
      {
LABEL_26:
        v80 = v18;
        return v55(v77, v80);
      }

      v111 = v18;
      v55(v78, v18);
      v75 = v79;
    }

    v81 = v105;
    v82 = v94;
    v83 = v88;
    v114(v94, v107, v88);
    v84 = v111;
    if (v110(v82, 1, v111) == 1)
    {
      (*(v87 + 8))(v82, v83);
      v85 = fpfs_current_or_default_log();
      v58 = v91;
      sub_1CF9E6128();
      v59 = sub_1CF9E6108();
      v60 = sub_1CF9E72A8();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_17;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "[GlobalProgress] RT.agp, oldSide!=side, but no oldEntry";
      goto LABEL_16;
    }

    v86 = v90;
    (*(v108 + 32))(v90, v82, v84);
    sub_1CF212818(v86, 0, v101, v81, v75);
    v77 = v86;
    v80 = v84;
    return v55(v77, v80);
  }

  return result;
}

uint64_t sub_1CF215F80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v70 = a5;
  v71 = a3;
  v73 = a4;
  v63 = a2;
  v11 = *v6;
  v72 = sub_1CF9E6118();
  v78 = *(v72 - 8);
  v12 = *(v78 + 64);
  v13 = MEMORY[0x1EEE9AC00](v72);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = v61 - v16;
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 24);

    v19 = v11[75];
    v20 = v11[76];
    v21 = v11[77];
    v22 = v11[78];
    v74 = v19;
    v75 = v20;
    v76 = v21;
    v77 = v22;
    type metadata accessor for SQLJobRegistry();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v61[1] = v18;
      v24 = *(v23 + 16);
      v25 = *(a6 + 8);
      v26 = v23;

      v27 = sub_1CF3782E8(a1, &unk_1F4BEC7A8, v73, v70, v25);
      if (v8)
      {
LABEL_4:
      }

      v69 = v26;
      v32 = v27;

      v74 = v19;
      v75 = v20;
      v76 = v21;
      v77 = v22;
      v33 = type metadata accessor for ItemJob();
      v35 = v32;
      if (sub_1CF9E6DF8())
      {
        v65 = (v78 + 8);
        *&v34 = 136315394;
        v62 = v34;
        v36 = 4;
        v37 = v70;
        v38 = v64;
        v67 = v35;
        v68 = a6;
        v66 = v33;
        while (1)
        {
          v39 = v36 - 4;
          v40 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v40)
          {
            v41 = *(v35 + 8 * v36);

            v42 = v36 - 3;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            v41 = sub_1CF9E7998();
            v42 = v36 - 3;
            if (__OFADD__(v39, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          v78 = v42;
          v44 = *(v41 + 96);
          v43 = *(v41 + 104);
          *(v41 + 96) = 0;
          *(v41 + 104) = 0;
          v45 = *(v41 + 112);
          *(v41 + 112) = 4;

          sub_1CF03D7A8(v44, v43, v45);

          v46 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v47 = v71;

          v48 = v47;
          v49 = sub_1CF9E6108();
          v50 = v38;
          v51 = sub_1CF9E7288();

          if (os_log_type_enabled(v49, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v64 = 0;
            v54 = v53;
            v74 = v53;
            *v52 = v62;
            *(v52 + 4) = sub_1CEFD0DF0(v63, v48, &v74);
            *(v52 + 12) = 2080;
            v55 = sub_1CF044BA4();
            v57 = v56;

            v58 = sub_1CEFD0DF0(v55, v57, &v74);
            v37 = v70;

            *(v52 + 14) = v58;
            _os_log_impl(&dword_1CEFC7000, v49, v51, "✍️  Cancelling materialize job due to %s: %s", v52, 0x16u);
            swift_arrayDestroy();
            v59 = v54;
            v8 = v64;
            MEMORY[0x1D386CDC0](v59, -1, -1);
            MEMORY[0x1D386CDC0](v52, -1, -1);
          }

          else
          {
          }

          (*v65)(v50, v72);
          v38 = v50;
          v35 = v67;
          v60 = *(v69 + 16);

          sub_1CF3763A8(v41, v73, v37, v68);
          if (v8)
          {
            break;
          }

          ++v36;
          if (v78 == sub_1CF9E6DF8())
          {
            goto LABEL_21;
          }
        }

        goto LABEL_4;
      }

LABEL_21:
    }

    else
    {

      v28 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v29 = sub_1CF9E6108();
      v30 = sub_1CF9E72A8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1CEFC7000, v29, v30, "unable to cancel materializations, job registry didn't cast", v31, 2u);
        MEMORY[0x1D386CDC0](v31, -1, -1);
      }

      return (*(v78 + 8))(v15, v72);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF216504(uint64_t a1, NSObject *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v215 = a6;
  v222 = a5;
  v220 = a4;
  v179 = a3;
  v193 = a2;
  v239 = a1;
  v7 = *v6;
  v8 = *(*v6 + 624);
  v9 = *(*v6 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v184 = sub_1CF9E75D8();
  v181 = *(v184 - 8);
  v11 = *(v181 + 64);
  v12 = MEMORY[0x1EEE9AC00](v184);
  v177 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v189 = &v171 - v15;
  v182 = AssociatedTypeWitness;
  v185 = *(AssociatedTypeWitness - 8);
  v16 = *(v185 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v173 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v174 = &v171 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v171 - v21;
  v22 = *(v7 + 616);
  v221 = v6;
  v23 = *(v7 + 600);
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E75D8();
  v26 = *(v25 - 8);
  v186 = v25;
  v187 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v183 = &v171 - v32;
  v190 = v24;
  v188 = *(v24 - 8);
  v33 = *(v188 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v176 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v178 = &v171 - v36;
  v210 = v23;
  v211 = v22;
  *&v37 = v23;
  v216 = v9;
  *(&v37 + 1) = v9;
  v219 = v37;
  *&v38 = v22;
  v214 = v8;
  *(&v38 + 1) = v8;
  v213 = v38;
  v232 = v37;
  v233 = v38;
  v39 = type metadata accessor for ItemReconciliation();
  v40 = sub_1CF9E75D8();
  v201 = *(v40 - 8);
  v202 = v40;
  v41 = *(v201 + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v200 = &v171 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v217 = &v171 - v44;
  v232 = v219;
  v233 = v213;
  v45 = type metadata accessor for PersistenceTrigger();
  v195 = *(v45 - 8);
  v196 = v45;
  v46 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v194 = (&v171 - v47);
  v48 = sub_1CF9E6068();
  v208 = *(v48 - 8);
  v209 = v48;
  v49 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v212 = &v171 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v205 = &v171 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v207 = &v171 - v55;
  v206 = type metadata accessor for Signpost(0);
  v56 = *(*(v206 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v206);
  *&v219 = &v171 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(v39 - 8);
  v60 = v59[8];
  v61 = MEMORY[0x1EEE9AC00](v57);
  v192 = &v171 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v171 - v63;
  *&v213 = sub_1CF9E6118();
  v204 = *(v213 - 8);
  v65 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v67 = &v171 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v69 = v59[2];
  v69(v64, v239, v39);
  v70 = sub_1CF9E6108();
  v191 = sub_1CF9E7288();
  v71 = os_log_type_enabled(v70, v191);
  v180 = v30;
  v218 = v39;
  v198 = v59 + 2;
  v199 = v59;
  v197 = v69;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *&v232 = v172;
    *v72 = 136446466;
    v171 = v70;
    v73 = v192;
    v69(v192, v64, v39);
    v74 = v59[1];
    v74(v64, v39);
    v75 = sub_1CF082CB0(v39);
    v77 = v76;
    v74(v73, v39);
    v78 = sub_1CEFD0DF0(v75, v77, &v232);

    *(v72 + 4) = v78;
    *(v72 + 12) = 2050;
    *(v72 + 14) = v193;
    v70 = v171;
    _os_log_impl(&dword_1CEFC7000, v171, v191, " ✍️  reconciliation delete: %{public}s %{public}ld", v72, 0x16u);
    v79 = v172;
    __swift_destroy_boxed_opaque_existential_1(v172);
    MEMORY[0x1D386CDC0](v79, -1, -1);
    MEMORY[0x1D386CDC0](v72, -1, -1);
  }

  else
  {
    (v59[1])(v64, v39);
  }

  (*(v204 + 8))(v67, v213);
  v80 = *(v215 + 8);
  (*(v80 + 88))(v222, v80);
  v82 = v208;
  v81 = v209;
  v83 = v207;
  v84 = v205;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v85 = qword_1EDEBBE40;
  (*(v82 + 56))(v83, 1, 1, v81);
  sub_1CEFCCBDC(v83, v84, &unk_1EC4BED20, &unk_1CFA00700);
  v86 = *(v82 + 48);
  v87 = v86(v84, 1, v81);
  *&v213 = v80;
  if (v87 == 1)
  {
    v88 = v85;
    v89 = v212;
    sub_1CF9E6048();
    if (v86(v84, 1, v81) != 1)
    {
      sub_1CEFCCC44(v84, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v89 = v212;
    (*(v82 + 32))(v212, v84, v81);
  }

  v90 = v219;
  (*(v82 + 16))(v219, v89, v81);
  v91 = v206;
  *(v90 + *(v206 + 20)) = v85;
  v92 = v90 + *(v91 + 24);
  *v92 = "SQLDB: reconciliation delete";
  *(v92 + 8) = 28;
  *(v92 + 16) = 2;
  v93 = v85;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v82 + 8))(v89, v81);
  sub_1CEFCCC44(v83, &unk_1EC4BED20, &unk_1CFA00700);
  v211 = type metadata accessor for ItemReconciliationHalf();
  v94 = v239;
  v95 = (v239 + *(v211 + 68));
  v96 = v95[1];
  v232 = *v95;
  v233 = v96;
  v97 = v95[3];
  v234 = v95[2];
  v235 = v97;
  v98 = *(v95 + 8);
  v237 = v97;
  v238 = v98;
  v99 = v232;
  v100 = *(&v233 + 1);
  v236 = v234;
  if (*(&v233 + 1) >> 60 != 11 && v232)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      goto LABEL_55;
    }

    v102 = result;
    v103 = v194;
    *v194 = v99;
    v104 = v237;
    *(v103 + 1) = v238;
    v103[3] = v100;
    *(v103 + 2) = v236;
    *(v103 + 3) = v104;
    v105 = v196;
    swift_storeEnumTagMultiPayload();
    v106 = *(*v102 + 312);
    v225 = v232;
    v226 = v233;
    v227 = v234;
    v228 = v235;
    sub_1CEFCCBDC(&v232, v224, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CF1AE1DC(&v225, v224);
    v106(v103);

    sub_1CEFCCC44(&v232, &unk_1EC4BF260, &unk_1CFA01B60);
    (*(v195 + 8))(v103, v105);
    v94 = v239;
  }

  v212 = v93;
  v107 = v94 + *(v218 + 52);
  v208 = type metadata accessor for ItemReconciliationHalf();
  v209 = v107;
  v108 = (v107 + *(v208 + 68));
  v109 = v108[1];
  v225 = *v108;
  v226 = v109;
  v110 = v108[3];
  v227 = v108[2];
  v228 = v110;
  v111 = *(v108 + 8);
  v230 = v110;
  v231 = v111;
  v112 = v225;
  v113 = *(&v226 + 1);
  v229 = v227;
  if (*(&v226 + 1) >> 60 != 11 && v225)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v114 = result;
      v115 = v194;
      *v194 = v112;
      v116 = v230;
      *(v115 + 1) = v231;
      v115[3] = v113;
      *(v115 + 2) = v229;
      *(v115 + 3) = v116;
      v117 = v196;
      swift_storeEnumTagMultiPayload();
      v118 = *(*v114 + 312);
      v224[0] = v225;
      v224[1] = v226;
      v224[2] = v227;
      v224[3] = v228;
      sub_1CEFCCBDC(&v225, v223, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CF1AE1DC(v224, v223);
      v118(v115);

      sub_1CEFCCC44(&v225, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v195 + 8))(v115, v117);
      v94 = v239;
      goto LABEL_18;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_18:
  v119 = v218;
  LODWORD(v210) = sub_1CF083A1C(v218);
  v120 = v220;
  v121 = v213;
  sub_1CF20948C(v94, v220, v222, v213);
  v122 = v199[7];
  v123 = v217;
  v122(v217, 1, 1, v119);
  v124 = v200;
  v197(v200, v94, v119);
  v122(v124, 0, 1, v119);
  v125 = v203;
  sub_1CF215514(v123, v124, v120, v222, v121);
  if (v125)
  {
    v126 = *(v201 + 8);
    v127 = v124;
    v128 = v202;
    v126(v127, v202);
    v126(v217, v128);
LABEL_29:
    sub_1CF9E7458();
    v142 = v219;
    sub_1CF9E6038();
    return sub_1CEFD5218(v142, type metadata accessor for Signpost);
  }

  v129 = v210;
  v130 = v202;
  v131 = *(v201 + 8);
  v131(v124, v202);
  v132 = (v131)(v217, v130);
  v133 = v211;
  if (*(v239 + *(v211 + 44)))
  {
    v134 = v190;
LABEL_27:
    v140 = v189;
    v141 = v193;
    goto LABEL_28;
  }

  v136 = v186;
  v135 = v187;
  v137 = v183;
  (*(v187 + 16))(v183);
  v138 = v188;
  v134 = v190;
  if ((*(v188 + 48))(v137, 1, v190) == 1)
  {
    v132 = (*(v135 + 8))(v137, v136);
    goto LABEL_27;
  }

  v139 = v178;
  (*(v138 + 32))(v178, v137, v134);
  if ((v179 & 1) == 0)
  {
    v132 = (*(v138 + 8))(v139, v134);
    goto LABEL_27;
  }

  sub_1CF215F80(v139, 0xD000000000000015, 0x80000001CFA3B3A0, v220, v222, v215);
  v140 = v189;
  v141 = v193;
  v132 = (*(v188 + 8))(v139, v134);
LABEL_28:
  MEMORY[0x1EEE9AC00](v132);
  *(&v171 - 2) = v141;
  (*(v215 + 32))(sub_1CF24F3F0);
  if (v129)
  {
    v143 = v181;
    v144 = v184;
    (*(v181 + 16))(v140, v209, v184);
    v145 = v185;
    v146 = v182;
    v147 = (*(v185 + 48))(v140, 1, v182);
    v148 = v140;
    v149 = v187;
    if (v147 == 1)
    {
      (*(v143 + 8))(v140, v144);
    }

    else
    {
      v150 = v175;
      (*(v145 + 32))(v175, v148, v146);
      swift_getAssociatedConformanceWitness();
      type metadata accessor for PendingSetItem();
      v151 = v174;
      (*(v145 + 16))(v174, v150, v146);
      v152 = sub_1CF206528(v151, 0, 0, 1);
      sub_1CF2152D4(v152, v220, v222, v213);
      (*(v145 + 8))(v150, v146);

      v144 = v184;
    }

    v133 = v211;
  }

  else
  {
    v144 = v184;
    v149 = v187;
  }

  v153 = v239 + *(v133 + 64);
  if (*(v153 + 16))
  {
    v154 = v209 + *(v208 + 64);
    LOBYTE(v155) = *(v154 + 16);
    v156 = v185;
    v157 = v186;
    if (!v155)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v158 = *v153;
    v154 = v209 + *(v208 + 64);
    if (!*(v154 + 16))
    {
      v155 = (v158 >> 18) & 1;
      v156 = v185;
      v157 = v186;
LABEL_43:
      if (*(v154 + 2) & 4) != 0 || (v155)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v156 = v185;
    v157 = v186;
    if ((v158 & 0x40000) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_45:
  if ((*(v239 + *(v133 + 36)) & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_46:
  v159 = v180;
  (*(v149 + 16))(v180, v239, v157);
  v160 = v188;
  if ((*(v188 + 48))(v159, 1, v134) != 1)
  {
    v161 = *(v160 + 32);
    v162 = v176;
    v161(v176, v159, v134);
    result = swift_weakLoadStrong();
    if (result)
    {
      v163 = *(result + 24);

      (*(*v163 + 392))(v162, v220, v222, v215);
      (*(v188 + 8))(v162, v134);

      v144 = v184;
      goto LABEL_50;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  (*(v149 + 8))(v159, v157);
LABEL_50:
  v164 = v181;
  v165 = v177;
  (*(v181 + 16))(v177, v209, v144);
  v166 = v156;
  v167 = *(v156 + 48);
  v168 = v182;
  if (v167(v165, 1, v182) == 1)
  {
    (*(v164 + 8))(v165, v144);
    goto LABEL_29;
  }

  v169 = v173;
  (*(v166 + 32))(v173, v165, v168);
  result = swift_weakLoadStrong();
  if (result)
  {
    v170 = *(result + 24);

    (*(*v170 + 400))(v169, v220, v222, v215);
    (*(v166 + 8))(v169, v168);

    goto LABEL_29;
  }

LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1CF217A60(void *a1, uint64_t a2)
{
  sub_1CF9E7948();

  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);

  return 0xD000000000000030;
}

void sub_1CF217B18(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = *(a5 + 24);
  v21 = (v9)(sub_1CF217F44, 0, a4, a5);
  [v21 next];
  [v21 longAtIndex_];
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  sub_1CF9E7948();

  v23 = 0xD000000000000012;
  v24 = 0x80000001CFA3BE10;
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0x73656972746E6520, 0xEA00000000003A29);
  sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA3BE10, v18, v19);

  MEMORY[0x1EEE9AC00](v11);
  v12 = v9(sub_1CF24F70C);
  v22 = 0;
  if (![v12 next])
  {
    goto LABEL_6;
  }

  do
  {
    v13 = objc_autoreleasePoolPush();
    sub_1CF2181D8(v12, a2, &v22, v8[75], v8[76], a4, v8[77], v8[78]);
    objc_autoreleasePoolPop(v13);
  }

  while (([v12 next] & 1) != 0);
  if (v22 >= 3000 && (a3 & 1) != 0)
  {
    v14 = a2[3];
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v14);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3BE30);
    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BE50);
    sub_1CF4FB2BC(v23, v24, v14, v15);

    v17 = v21;
  }

  else
  {
LABEL_6:
    v17 = v12;
    v12 = v21;
  }
}

uint64_t sub_1CF217F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000058, 0x80000001CFA3BE80);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA3BEE0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BF10);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA3BF40);
  if (a6)
  {
    v11 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v11);

    v12 = 0x2054494D494CLL;
    v13 = 0xE600000000000000;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v13);

  return 0;
}

uint64_t sub_1CF2181D8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a4;
  v22 = a5;
  v23 = a7;
  v24 = a8;
  v12 = type metadata accessor for ItemReconciliation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF01E03C(a1, 0, v12, WitnessTable, v16);
  if (!v8)
  {
    v25 = 0;
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v21 = 0;
    v22 = 0xE000000000000000;
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    sub_1CF4FB2BC(v21, v22, v19, v20);

    result = (*(v13 + 8))(v16, v12);
    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
    }
  }

  return result;
}

void sub_1CF21838C(uint64_t a1, void *a2, void (*a3)(void), const char *a4)
{
  v5 = v4;
  v10 = *(*v5 + 624);
  v115 = *(*v5 + 608);
  v116 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  v11 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v112 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v100 - v18;
  v123 = a3;
  v124 = a4;
  v125 = v5;
  v20 = *(a4 + 3);
  v114 = a3;
  v21 = v20(sub_1CF24F6D8, &v121, a3, a4, v17);
  v117 = v19;
  v118 = a2;
  v102 = v15;
  v108 = v20;
  v109 = a4 + 24;
  v101 = v5;
  v110 = a1;
  v111 = a4;
  v22 = v21;
  if (![v21 next])
  {
    goto LABEL_34;
  }

  v23 = v118[3];
  v24 = v118[4];
  __swift_project_boxed_opaque_existential_1(v118, v23);
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1CF9E7948();

  v121 = 0xD000000000000015;
  v122 = 0x80000001CFA3BB90;
  v120 = [v22 longAtIndex_];
  v25 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v25);

  v100 = "+ Content counters : ";
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA3BBB0);
  v120 = [v22 longLongAtIndex_];
  v26 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v26);

  sub_1CF4FB2BC(v121, v122, v23, v24);

  v107 = v22;
  v27 = [v22 longAtIndex_];
  v28 = v108;
  if (v27 <= 0)
  {
    v31 = v111;
    v30 = v114;
  }

  else
  {
    v29 = MEMORY[0x1EEE9AC00](v27);
    v30 = v114;
    v31 = v111;
    *(&v100 - 4) = v114;
    *(&v100 - 3) = v31;
    *(&v100 - 2) = v101;
    v32 = v28(sub_1CF24F700, v29);
    v33 = v113;
    v34 = v32;
    if ([v32 next])
    {
      v106 = v34;
      v35 = 0;
      v105 = " the queries have been updated";
      v104 = (v33 + 8);
      while (!__OFADD__(v35, 1))
      {
        v103 = (v35 + 1);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v37 = *(*(AssociatedConformanceWitness + 8) + 16);
        v38 = v106;
        v37();
        v39 = [v38 longLongAtIndex_];
        v40 = [v38 integerAtIndex_];
        v42 = v118[3];
        v41 = v118[4];
        __swift_project_boxed_opaque_existential_1(v118, v42);
        v121 = 0;
        v122 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x202D202020, 0xE500000000000000);
        v43 = *(AssociatedConformanceWitness + 16);
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
        v120 = v39;
        v44 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v44);

        MEMORY[0x1D3868CC0](0xD000000000000012, v105 | 0x8000000000000000);
        v120 = v40;
        v45 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v45);

        v46 = v42;
        v47 = AssociatedTypeWitness;
        v48 = v117;
        sub_1CF4FB2BC(v121, v122, v46, v41);

        (*v104)(v48, v47);
        ++v35;
        if (([v38 next] & 1) == 0)
        {
          v49 = v107;
          v28 = v108;
          v31 = v111;
          v30 = v114;
          v34 = v106;
          v50 = v103;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_34:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 897);
    }

    v50 = 0;
    v49 = v107;
LABEL_11:
    if (v50 != [v49 longAtIndex_])
    {
      v51 = v118[3];
      v52 = v118[4];
      __swift_project_boxed_opaque_existential_1(v118, v51);
      sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v51, v52);
    }
  }

  v53 = (v28)(sub_1CF22964C, 0, v30, v31);
  if (([v53 next] & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 929);
  }

  v55 = v118[3];
  v54 = v118[4];
  __swift_project_boxed_opaque_existential_1(v118, v55);
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1CF9E7948();

  v121 = 0xD000000000000019;
  v122 = 0x80000001CFA3BBD0;
  v120 = [v53 longAtIndex_];
  v56 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v56);

  MEMORY[0x1D3868CC0](0xD000000000000011, v100 | 0x8000000000000000);
  v120 = [v53 longLongAtIndex_];
  v57 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v57);

  sub_1CF4FB2BC(v121, v122, v55, v54);

  if ([v53 longAtIndex_] <= 0)
  {
    v74 = v111;
    v75 = v114;
    v76 = v101;
    v70 = v108;
  }

  else
  {
    v58 = (v108)(sub_1CF2197A4, 0, v114, v111);
    v104 = v53;
    if ([v58 next])
    {
      v105 = swift_getAssociatedConformanceWitness();
      v117 = *(v105 + 8);
      v106 = *(v117 + 2);
      v59 = (v113 + 8);
      do
      {
        v60 = v58;
        (v106)();
        v61 = [v60 longLongAtIndex_];
        v62 = v118[3];
        v63 = v118[4];
        __swift_project_boxed_opaque_existential_1(v118, v62);
        v121 = 0;
        v122 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x202D202020, 0xE500000000000000);
        v64 = *(v105 + 16);
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
        v120 = v61;
        v65 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v65);

        v66 = v63;
        v67 = AssociatedTypeWitness;
        sub_1CF4FB2BC(v121, v122, v62, v66);
        v68 = v102;

        (*v59)(v68, v67);
      }

      while (([v60 next] & 1) != 0);
    }

    v53 = v104;
    v69 = [v104 longAtIndex_];
    v70 = v108;
    if (v69)
    {
      v71 = v58;
      v72 = v118[3];
      v73 = v118[4];
      __swift_project_boxed_opaque_existential_1(v118, v72);
      sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v72, v73);
      v58 = v71;
    }

    v74 = v111;
    v75 = v114;
    v76 = v101;
  }

  v123 = v75;
  v124 = v74;
  v125 = v76;
  v77 = v70(sub_1CF24F6CC, &v121);
  if (![v77 next])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 956);
  }

  v78 = v118[3];
  v79 = v118[4];
  __swift_project_boxed_opaque_existential_1(v118, v78);
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1CF9E7948();

  v121 = 0xD000000000000012;
  v122 = 0x80000001CFA3BBF0;
  v120 = [v77 longAtIndex_];
  v80 = sub_1CF9E7F98();
  v106 = v77;
  MEMORY[0x1D3868CC0](v80);

  MEMORY[0x1D3868CC0](0xD000000000000011, v100 | 0x8000000000000000);
  v120 = [v106 longLongAtIndex_];
  v81 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v81);

  sub_1CF4FB2BC(v121, v122, v78, v79);
  v82 = v106;

  v83 = [v82 longAtIndex_];
  if (v83 <= 0)
  {
    goto LABEL_31;
  }

  v84 = MEMORY[0x1EEE9AC00](v83);
  v85 = v111;
  *(&v100 - 4) = v114;
  *(&v100 - 3) = v85;
  *(&v100 - 2) = v76;
  v86 = v108(sub_1CF24F6F4, v84);
  v87 = [v86 next];
  v88 = v112;
  if (v87)
  {
    v110 = swift_getAssociatedConformanceWitness();
    v111 = v86;
    v116 = *(v110 + 8);
    v114 = *(v116 + 16);
    v115 = v116 + 16;
    v113 += 8;
    do
    {
      v89 = v86;
      v114();
      v90 = [v89 longLongAtIndex_];
      v91 = [v89 integerAtIndex_];
      v92 = v118[3];
      v117 = v118[4];
      __swift_project_boxed_opaque_existential_1(v118, v92);
      v121 = 0;
      v122 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x202D202020, 0xE500000000000000);
      v93 = *(v110 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
      v120 = v90;
      v94 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v94);

      MEMORY[0x1D3868CC0](0x797420626F6A202CLL, 0xEC000000203A6570);
      v120 = v91;
      v95 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v95);

      v96 = AssociatedTypeWitness;
      v86 = v111;
      sub_1CF4FB2BC(v121, v122, v92, v117);

      (*v113)(v88, v96);
    }

    while (([v89 next] & 1) != 0);
  }

  v82 = v106;
  if (![v106 longAtIndex_])
  {

LABEL_31:
    goto LABEL_32;
  }

  v97 = v82;
  v98 = v118[3];
  v99 = v118[4];
  __swift_project_boxed_opaque_existential_1(v118, v98);
  sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v98, v99);

LABEL_32:
}

uint64_t sub_1CF219374(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A9, 0x80000001CFA3BC80);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BAA0);
  v18 = *(a2 + *(*a2 + 696));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v8 = *(v19 + 16);
  v9 = 0x20u;
  do
  {
    v10 = *(&unk_1F4BED230 + v9);
    v11 = *(v19 + 24);
    if (v8 >= v11 >> 1)
    {
      sub_1CF680C9C((v11 > 1), v8 + 1, 1);
    }

    *(v19 + 16) = v8 + 1;
    *(v19 + 8 * v8 + 32) = v10;
    v9 += 8;
    ++v8;
  }

  while (v9 != 128);

  v12 = sub_1CF9E6C18();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA3BB00);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF2197A4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000009CLL, 0x80000001CFA383D0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38490);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF2198F8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D3, 0x80000001CFA3BD30);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3B8E0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B900);
  v15 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v6 = sub_1CF9E6C18();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA3B930);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3B950);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B980);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3B9B0);
  v13 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF219D30(char a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  v18 = a5;
  v19 = a6;
  v20 = v6;
  v21 = a1;
  v11 = v10;
  v12 = (*(a6 + 24))(sub_1CF24F6E4, v17, a5, a6);
  if (!v7)
  {
    v15 = v12;
    while ([v15 next])
    {
      v16 = objc_autoreleasePoolPush();
      sub_1CF219F88(v15, a3, v11[75], v11[76], v11[77], v11[78], &v23, a6, &v22);
      objc_autoreleasePoolPop(v16);
      if ((v23 & 1) == 0)
      {

        v13 = 0;
        return v13 & 1;
      }
    }

    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_1CF219E9C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3BB40);
  if (a3)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = 0x80000001CFA3BB60;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v5, v6);

  return 0x205443454C4553;
}

uint64_t sub_1CF219F88@<X0>(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>, uint64_t a8, void *a9)
{
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v13 = type metadata accessor for ItemReconciliation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF01E03C(a1, 0, v13, WitnessTable, v17);
  if (v9)
  {
    *a9 = v9;
  }

  else
  {
    v20 = a2(v17);
    result = (*(v14 + 8))(v17, v13);
    *a7 = v20 & 1;
  }

  return result;
}

id sub_1CF21A104(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a3;
  v50 = a4;
  v51 = a5;
  v45 = a2;
  v43 = *v5;
  v44 = a1;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v7 + 56))(v17, 1, 1, v6);
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(v7 + 48);
  if (v22(v14, 1, v6) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v14, 1, v6) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
  }

  v24 = v49;
  (*(v7 + 16))(v49, v10, v6);
  *(v24 + *(v18 + 20)) = v21;
  v25 = v24 + *(v18 + 24);
  *v25 = "SQLDB: Scan ignored items";
  *(v25 + 8) = 25;
  *(v25 + 16) = 2;
  v26 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v10, v6);
  v27 = sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v29 = v51;
  *(&v42 - 6) = v50;
  *(&v42 - 5) = v29;
  v30 = v44;
  *(&v42 - 4) = v46;
  *(&v42 - 3) = v30;
  LOBYTE(v40) = v45 & 1;
  v41 = 200;
  v31 = v48;
  v32 = (*(v29 + 24))(sub_1CF24F3BC, v28);
  if (!v31)
  {
    v33 = v32;
    v48 = v26;
    v34 = v43[75];
    v35 = v43[76];
    v36 = v43[77];
    v37 = v43[78];
    v52[0] = v34;
    v52[1] = v35;
    v52[2] = v36;
    v52[3] = v37;
    v47 = type metadata accessor for ItemReconciliation();
    v26 = sub_1CF9E6DA8();
    v53 = v26;
    v52[0] = 0;
    if ([v33 next])
    {
      do
      {
        v38 = objc_autoreleasePoolPush();
        v40 = v51;
        sub_1CF21A8BC(v52, v33, &v53, v34, v35, v50, v36, v37);
        objc_autoreleasePoolPop(v38);
      }

      while (([v33 next] & 1) != 0);
      v26 = v53;
    }

    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v24, type metadata accessor for Signpost);
  return v26;
}

uint64_t sub_1CF21A694(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA3B320);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a4)
  {
    v11 = 0xE100000000000000;
    v12 = 49;
  }

  else
  {
    v13 = [a1 bindLongParameter_];
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;

    MEMORY[0x1D3868CC0](v14, v16);

    v12 = 0x203E204449776F72;
    v11 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v11);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);

  return 0;
}

uint64_t sub_1CF21A8BC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a5;
  v24 = a7;
  v25 = a8;
  v11 = type metadata accessor for ItemReconciliation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v22 - v18;
  *a1 = [a2 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF01E03C(a2, 1, v11, WitnessTable, v19);
  if (!v8)
  {
    (*(v12 + 16))(v15, v19, v11);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v12 + 8))(v19, v11);
  }

  return result;
}

void sub_1CF21AA60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a2;
  v31 = a4;
  v6 = *v4;
  v7 = *(*v4 + 616);
  v8 = *(*v4 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v6 + 624);
  v11 = *(v6 + 608);
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = v12;
  v36 = AssociatedConformanceWitness;
  v37 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ReconciliationID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v19 = v38;
  v20 = (*(a3 + 24))(sub_1CF21ADC0, 0, v33, a3);
  if (!v19)
  {
    v21 = v20;
    v38 = 0;
    if ([v20 next])
    {
      v22 = *(*(AssociatedConformanceWitness + 8) + 16);
      v23 = v21;
      v24 = v38;
      v22();
      if (v24)
      {
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v26 = [v23 BOOLAtIndex_];

        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v28 = *(TupleTypeMetadata2 + 48);
        v29 = v31;
        (*(v15 + 32))(v31, v18, v14);
        *(v29 + v28) = v26;
        (*(*(TupleTypeMetadata2 - 8) + 56))(v29, 0, 1, TupleTypeMetadata2);
      }
    }

    else
    {
      v25 = swift_getTupleTypeMetadata2();
      (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    }
  }
}

uint64_t sub_1CF21ADC0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA3B290);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF21AEF0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000049, 0x80000001CFA3B230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA58, &unk_1CF9FF070);
  sub_1CEFCCCEC(&qword_1EDEAB508, &qword_1EC4BEA58, &unk_1CF9FF070);
  sub_1CEFE4E68();
  v0 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF21B0DC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA3B1E0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t (**sub_1CF21B194(uint64_t a1, uint64_t a2, uint64_t (**a3)(void)))(void)
{
  v45 = a2;
  v50 = a3;
  v43 = a1;
  v40 = *v3;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = type metadata accessor for Signpost(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  (*(v5 + 56))(v15, 1, 1, v4);
  sub_1CEFCCBDC(v15, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    v21 = v19;
    sub_1CF9E6048();
    v22 = v8;
    if (v20(v13, 1, v4) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v22 = v8;
    (*(v5 + 32))(v8, v13, v4);
  }

  v23 = v41;
  (*(v5 + 16))(v41, v22, v4);
  *(v23 + *(v16 + 20)) = v19;
  v24 = v23 + *(v16 + 24);
  *v24 = "SQLDB: Scan pending reimport items";
  *(v24 + 8) = 34;
  *(v24 + 16) = 2;
  v25 = v19;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v5 + 8))(v22, v4);
  v26 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v26);
  v27 = v44;
  v28 = v45;
  v29 = v50;
  *(&v40 - 4) = v45;
  *(&v40 - 3) = v29;
  *(&v40 - 2) = v42;
  *(&v40 - 1) = 200;
  v30 = v29[3](sub_1CF24F354);
  if (!v27)
  {
    v31 = v30;
    v32 = MEMORY[0x1EEE9AC00](v30);
    v33 = v40;
    v34 = *(v40 + 600);
    v35 = *(v40 + 608);
    *(&v40 - 8) = v34;
    *(&v40 - 7) = v35;
    v36 = *(v33 + 616);
    *(&v40 - 6) = v28;
    *(&v40 - 5) = v36;
    v37 = *(v33 + 624);
    *(&v40 - 4) = v37;
    *(&v40 - 3) = v29;
    *(&v40 - 2) = v32;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v38 = type metadata accessor for ItemReconciliation();
    v29 = sub_1CF4C1FE4(sub_1CF24F360, (&v40 - 10), v38);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v23, type metadata accessor for Signpost);
  return v29;
}

uint64_t sub_1CF21B6AC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003CLL, 0x80000001CFA3B1A0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE800000000000000);
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  return 0;
}

uint64_t sub_1CF21B7FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ItemReconciliation();
  WitnessTable = swift_getWitnessTable();
  return sub_1CF01E03C(a1, 0, v4, WitnessTable, a2);
}

void sub_1CF21B888(uint64_t a1, uint64_t (*a2)(char *, char *, id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = (*(a5 + 24))(sub_1CF21B9C8, 0, a4, a5);
  if (!v6)
  {
    v12 = v11;
    do
    {
      if (![v12 next])
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = v10[75];
      v15 = v10[77];
      sub_1CF21BAD0(v12, a2, a3, v10[76], v10[78], &v17, a5, &v16);
      objc_autoreleasePoolPop(v13);
    }

    while ((v17 & 1) != 0);
  }
}

uint64_t sub_1CF21B9C8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000068, 0x80000001CFA3B0D0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF21BAD0@<X0>(void *a1@<X0>, uint64_t (*a2)(char *, char *, id)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X7>, _BYTE *a6@<X8>, uint64_t a7, void *a8)
{
  v27 = a3;
  v28 = a2;
  v25 = a6;
  v29 = a4;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v33 = sub_1CF9E75D8();
  v32 = *(v33 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v18 = &v25 - v17;
  if ([a1 isNullAtIndex_])
  {
    (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
    goto LABEL_5;
  }

  v26 = v11;
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v19 + 16))(a1, 0, v15, v19);
  if (!v8)
  {
    (*(*(v15 - 8) + 56))(v18, 0, 1, v15);
    v11 = v26;
LABEL_5:
    v21 = 1;
    if (([a1 isNullAtIndex_] & 1) == 0)
    {
      v26 = v11;
      v22 = *(swift_getAssociatedConformanceWitness() + 8);
      (*(v22 + 16))(a1, 1, AssociatedTypeWitness, v22);
      if (v8)
      {
LABEL_11:
        result = (*(v32 + 8))(v18, v33);
        goto LABEL_12;
      }

      v21 = 0;
      v11 = v26;
    }

    (*(*(AssociatedTypeWitness - 8) + 56))(v14, v21, 1, AssociatedTypeWitness);
    v23 = sub_1CF1E0758(2);
    if (!v8)
    {
      v24 = v28(v18, v14, v23);
      (*(v31 + 8))(v14, v11);
      result = (*(v32 + 8))(v18, v33);
      *v25 = v24 & 1;
      return result;
    }

    (*(v31 + 8))(v14, v11);
    goto LABEL_11;
  }

LABEL_12:
  *a8 = v8;
  return result;
}

uint64_t sub_1CF21BF0C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000071, 0x80000001CFA3B050);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xEE00312054494D49);
  return 0;
}

uint64_t sub_1CF21BFCC(int a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v56 = a5;
  v57 = a2;
  v12 = *(*v6 + 600);
  v13 = *(*v6 + 608);
  v14 = *(*v6 + 624);
  v59 = *(*v6 + 616);
  v60 = v12;
  v62 = v12;
  v63 = v13;
  v55 = v13;
  v64 = v59;
  v65 = v14;
  v58 = v14;
  v15 = type metadata accessor for ItemReconciliation();
  v16 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v17 = sub_1CF9E6DA8();
  v54 = v15;
  v18 = sub_1CF04F294(v17, v16, v15, MEMORY[0x1E69E6540]);

  v66 = v18;
  v53 = a1;
  if (a1)
  {
    v19 = v55;
    v20 = v56;
  }

  else
  {
    v31 = a3(6);
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);

    if (__OFSUB__(v32, v33))
    {
      goto LABEL_20;
    }

    MEMORY[0x1EEE9AC00](result);
    v20 = v56;
    v26 = v57;
    v48 = v56;
    v49 = a6;
    v50 = v8;
    v51 = v34;
    v35 = (*(a6 + 24))(sub_1CF24F310);
    if (v7)
    {
      goto LABEL_14;
    }

    v36 = v35;
    if ([v35 next])
    {
      v19 = v55;
      do
      {
        v37 = objc_autoreleasePoolPush();
        sub_1CF21CA0C(v36, &v66, v60, v55, v56, v59, v58);
        objc_autoreleasePoolPop(v37);
      }

      while (([v36 next] & 1) != 0);
    }

    else
    {
      v19 = v55;
    }

    if (v53 != 2)
    {
LABEL_17:
      v57 = &v52;
      v61 = v66;
      MEMORY[0x1EEE9AC00](v30);
      v56 = &v45;
      v39 = v59;
      v38 = v60;
      v46 = v60;
      v47 = v19;
      v48 = v20;
      v49 = v59;
      v40 = v58;
      v50 = v58;
      v51 = a6;
      v41 = sub_1CF9E6708();

      v62 = v38;
      v63 = v19;
      v64 = v39;
      v65 = v40;
      v42 = type metadata accessor for SchedulableReconciliation();
      WitnessTable = swift_getWitnessTable();
      v26 = sub_1CF054A5C(sub_1CF24F32C, v56, v41, v42, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v44);
      swift_bridgeObjectRelease_n();
      return v26;
    }
  }

  v21 = a3(7);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);

  if (!__OFSUB__(v22, v23))
  {
    MEMORY[0x1EEE9AC00](result);
    v46 = v20;
    v47 = a6;
    v48 = v8;
    v49 = &v66;
    v50 = v25;
    v26 = v57;
    v27 = (*(a6 + 24))(sub_1CF24F31C);
    if (!v7)
    {
      v28 = v27;
      if ([v27 next])
      {
        do
        {
          v29 = objc_autoreleasePoolPush();
          sub_1CF21CA0C(v28, &v66, v60, v19, v20, v59, v58);
          objc_autoreleasePoolPop(v29);
        }

        while (([v28 next] & 1) != 0);
      }

      goto LABEL_17;
    }

LABEL_14:

    return v26;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1CF21C444(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA3AF60);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA3AFA0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3AFD0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3AFD0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA3B000);
  v10 = [a1 bindLongParameter_];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  return 0;
}

uint64_t sub_1CF21C690(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a2;
  *&v23 = 0;
  *(&v23 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  v27 = v23;
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA3AE80);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3AEC0);
  v25 = 40;
  v26 = 0xE100000000000000;
  *&v23 = &unk_1F4BED310;
  *(&v23 + 1) = sub_1CF067ADC;
  *&v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v10 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3AEF0);
  v11 = *a3;
  v12 = *(v8 + 616);
  v23 = *(v8 + 600);
  v24 = v12;
  type metadata accessor for ItemReconciliation();
  *&v23 = nullsub_1(v11);
  v13 = sub_1CF9E6688();

  WitnessTable = swift_getWitnessTable();
  v15 = sub_1CF4C20AC(&v23, v13, WitnessTable);
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3AF10);
  v18 = [a1 bindLongParameter_];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);

  return v27;
}

uint64_t sub_1CF21CA0C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a3;
  v23 = a4;
  v24 = a6;
  v25 = a7;
  v9 = type metadata accessor for ItemReconciliation();
  v10 = sub_1CF9E75D8();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v22 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v22 - v17;
  v19 = [a1 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF01E03C(a1, 1, v9, WitnessTable, v18);
  if (!v7)
  {
    (*(v15 + 16))(v14, v18, v9);
    (*(v15 + 56))(v14, 0, 1, v9);
    v22 = v19;
    sub_1CF9E6708();
    sub_1CF9E6738();
    return (*(v15 + 8))(v18, v9);
  }

  return result;
}

uint64_t sub_1CF21CC08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v21 = a6;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v11 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v20 - v15;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  type metadata accessor for SchedulableReconciliation();
  (*(v13 + 16))(v16, a1, TupleTypeMetadata2);
  v17 = *(TupleTypeMetadata2 + 48);
  v18 = sub_1CF247110(&v16[v17], *a1);
  result = (*(*(v11 - 8) + 8))(&v16[v17], v11);
  *v21 = v18;
  return result;
}

void *sub_1CF21CD94(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t (*)(), _BYTE *, void, void))
{
  v5 = a3;
  v7 = *v3;
  v19 = 100;
  v8 = a3[3](sub_1CF24F2DC, v18, a2, a3);
  if (!v4)
  {
    v9 = v8;
    v10 = MEMORY[0x1EEE9AC00](v8);
    v13[1] = *(v7 + 600);
    v14 = a2;
    v15 = *(v7 + 616);
    v16 = v5;
    v17 = v10;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = sub_1CF4C1FE4(sub_1CF24F2E4, v13, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return v5;
}

uint64_t sub_1CF21CF14()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000078, 0x80000001CFA3AE00);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39380);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xED00002054494D49);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  return 0;
}

uint64_t sub_1CF21D064(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  return (*(v3 + 16))(a1, 0, AssociatedTypeWitness, v3);
}

uint64_t sub_1CF21D124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v5;
  v10 = v9;
  v11 = (*(a3 + 24))(sub_1CF24F2D0, v16, a2, a3);
  if (!v4)
  {
    v12 = v11;
    v13 = *(v10 + 616);
    v17 = *(v10 + 600);
    v18 = v13;
    type metadata accessor for TestingOperation();
    v10 = sub_1CF9E6DA8();
    v19 = v10;
    if ([v12 next])
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        sub_1CF21D474(v12, v5, a1, &v19, a2, a3);
        objc_autoreleasePoolPop(v14);
      }

      while (([v12 next] & 1) != 0);
      v10 = v19;
    }
  }

  return v10;
}

uint64_t sub_1CF21D298(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA39BE0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA3AD70);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3ADA0);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA3ADD0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

void (*sub_1CF21D474(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t, char *, uint64_t)
{
  v53 = a3;
  v51 = a5;
  v52 = a6;
  v47 = a4;
  v7 = *(*a2 + 608);
  v8 = *(*a2 + 616);
  v9 = *(*a2 + 624);
  v55 = *(*a2 + 600);
  v56 = v7;
  v57 = v8;
  v58 = v9;
  v10 = type metadata accessor for ItemReconciliation();
  v11 = sub_1CF9E75D8();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v41 - v13;
  v56 = v7;
  v57 = v8;
  v58 = v9;
  v14 = type metadata accessor for TestingOperation();
  v15 = sub_1CF9E75D8();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v48 = *(v14 - 8);
  v20 = *(v48 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v41 - v25;
  v27 = *(v10 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v41 - v29;
  WitnessTable = swift_getWitnessTable();
  v32 = v54;
  result = sub_1CF01E03C(a1, 0, v10, WitnessTable, v30);
  if (!v32)
  {
    v43 = v23;
    v44 = 0;
    v42 = v26;
    v34 = v53;
    v35 = v59;
    (*(v27 + 16))(v59, v30, v10);
    v54 = v27;
    (*(v27 + 56))(v35, 0, 1, v10);
    result = swift_weakLoadStrong();
    if (result)
    {
      v36 = v19;
      v37 = v44;
      sub_1CF68E6AC(v59, result, v34, v51, v52, v19);
      v38 = v43;
      if (v37)
      {

        (*(v49 + 8))(v59, v50);
      }

      else
      {
        (*(v49 + 8))(v59, v50);

        v39 = v48;
        if ((*(v48 + 48))(v36, 1, v14) == 1)
        {
          (*(v54 + 8))(v30, v10);
          return (*(v45 + 8))(v36, v46);
        }

        v40 = v42;
        (*(v39 + 32))(v42, v36, v14);
        (*(v39 + 16))(v38, v40, v14);
        sub_1CF9E6E58();
        sub_1CF9E6E18();
        (*(v39 + 8))(v40, v14);
      }

      return (*(v54 + 8))(v30, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CF21D94C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v17 = a2;
  v18 = a3;
  v19 = v5;
  v9 = *(a3 + 24);
  v10 = (v9)(sub_1CF24F2B8, v16, a2, a3);
  if (!v4)
  {
    v11 = v10;
    if ([v10 next])
    {

      a1 = 1;
    }

    else
    {
      v12 = (v9)(sub_1CF21DE64, 0, a2, a3);
      v13 = [v12 next];
      if (v13)
      {

        a1 = 1;
      }

      else
      {
        v20 = v16;
        MEMORY[0x1EEE9AC00](v13);
        v14 = v9(sub_1CF24F2C4);
        a1 = [v14 next];
      }
    }
  }

  return a1 & 1;
}

uint64_t sub_1CF21DB24()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 152))(result);

    if (v1 < 0)
    {
      sub_1CF9E7948();

      v8 = 0xD000000000000022;
      v9 = 0x80000001CFA3AD40;
      v6 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v6);

      v4 = 0x30203D2029;
      v5 = 0xE500000000000000;
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3ACA0);
      v2 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v2);

      MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA3ACC0);
      v3 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v3);

      v4 = 0x290A30203D2029;
      v5 = 0xE700000000000000;
    }

    MEMORY[0x1D3868CC0](v4, v5);
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA3ACF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v7 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v7);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
    MEMORY[0x1D3868CC0](v8, v9);

    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF21DE64()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA3AC50);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 10, 0);
  v0 = *(v8 + 16);
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BED148 + v1);
    v3 = *(v8 + 24);
    if (v0 >= v3 >> 1)
    {
      sub_1CF680C9C((v3 > 1), v0 + 1, 1);
    }

    *(v8 + 16) = v0 + 1;
    *(v8 + 8 * v0 + 32) = v2;
    v1 += 8;
    ++v0;
  }

  while (v1 != 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF21E07C()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 152))(result);

    if (v1 < 0)
    {
      sub_1CF9E7948();

      v10 = 0xD000000000000022;
      v11 = 0x80000001CFA3AC20;
      v6 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v6);

      v4 = 0x30203D2029;
      v5 = 0xE500000000000000;
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3AB00);
      v2 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v2);

      MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA3AB20);
      v3 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v3);

      v4 = 0x290A30203D2029;
      v5 = 0xE700000000000000;
    }

    MEMORY[0x1D3868CC0](v4, v5);
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA3AB50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v7 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v7);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA3ABA0);
    v8 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v8);

    MEMORY[0x1D3868CC0](0x20200A30203D2029, 0xED000020444E4120);
    MEMORY[0x1D3868CC0](v10, v11);

    MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
    v9 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x54494D494C200A29, 0xEA00000000003120);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CF21E470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = (*(a3 + 24))(sub_1CF21E64C, 0, a2, a3);
  if (!v5)
  {
    v10 = v9;
    v27 = &v21;
    v11 = MEMORY[0x1EEE9AC00](v9);
    v22 = v20;
    v12 = v8[76];
    v20[2] = v8[75];
    v20[3] = v12;
    v13 = v8[77];
    v20[4] = a2;
    v20[5] = v13;
    v20[6] = v8[78];
    v20[7] = a3;
    v20[8] = v11;
    v21 = 0;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = swift_getAssociatedConformanceWitness();
    v23 = AssociatedTypeWitness;
    v24 = v15;
    v25 = AssociatedConformanceWitness;
    v26 = v17;
    v18 = type metadata accessor for ReconciliationID();
    v3 = sub_1CF4C1FE4(sub_1CF24F28C, v22, v18);
  }

  return v3;
}

uint64_t sub_1CF21E64C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA3AA50);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39D00);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD00000000000005DLL, 0x80000001CFA3AAA0);
  return 0;
}

uint64_t sub_1CF21E7A0(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 8) + 16))(a1, 0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  if (!v1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for ReconciliationID();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1CF21E918(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000090, 0x80000001CFA3A870);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000013DLL, 0x80000001CFA3A910);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x200A2930203D2120, 0xEE0020444E412020);
  if (a3)
  {
    v8 = 0xE100000000000000;
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    v9 = 0x203E204449776F72;
    v8 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v8);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t sub_1CF21EB38(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v51 = a3;
  v50 = a2;
  v8 = *(*v6 + 608);
  v9 = *(*v6 + 616);
  v10 = *(*v6 + 624);
  v57 = *(*v6 + 600);
  v58 = v8;
  v47 = v8;
  v59 = v9;
  v60 = v10;
  v56 = v10;
  v45 = type metadata accessor for ItemReconciliation();
  v46 = sub_1CF9E75D8();
  v44 = *(v46 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v43 - v12;
  v48 = v57;
  v49 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v43 - v23;
  (*(v16 + 16))(v20, a1, v15);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    v46 = AssociatedTypeWitness;
    v25 = (*(v16 + 8))(v20, v15);
    MEMORY[0x1EEE9AC00](v25);
    *(&v43 - 4) = v50;
    *(&v43 - 24) = v51 & 1;
    v41 = 100;
    v26 = v55;
    v27 = v52;
    v6 = v53;
    v28 = (*(v55 + 24))(sub_1CF24F228);
    if (v27)
    {
      return v6;
    }

    v29 = v28;
  }

  else
  {
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    v31 = v54;
    v26 = v55;
    v32 = v52;
    sub_1CF68DDB0(v24, v53, v54, v55, v13);
    if (v32)
    {
      (*(v21 + 8))(v24, AssociatedTypeWitness);
      return v6;
    }

    v34 = (*(*(v45 - 8) + 48))(v13, 1);
    v35 = (*(v44 + 8))(v13, v46);
    if (v34 != 1)
    {
      v6 = sub_1CF9E6DA8();
      (*(v21 + 8))(v24, AssociatedTypeWitness);
      return v6;
    }

    v46 = AssociatedTypeWitness;
    MEMORY[0x1EEE9AC00](v35);
    v36 = v49;
    v37 = v47;
    *(&v43 - 10) = v48;
    *(&v43 - 9) = v37;
    *(&v43 - 8) = v31;
    *(&v43 - 7) = v36;
    *(&v43 - 6) = v56;
    *(&v43 - 5) = v26;
    v38 = v50;
    *(&v43 - 4) = v24;
    *(&v43 - 3) = v38;
    LOBYTE(v41) = v51 & 1;
    v42 = 100;
    v39 = (*(v26 + 24))(sub_1CF24F238);
    v40 = *(v21 + 8);
    v29 = v39;
    v40(v24, v46);
  }

  v6 = sub_1CF9E6DA8();
  v57 = v6;
  v61 = 0;
  if ([v29 next])
  {
    do
    {
      v30 = objc_autoreleasePoolPush();
      v41 = v26;
      sub_1CF21F570(&v61, v29);
      objc_autoreleasePoolPop(v30);
    }

    while (([v29 next] & 1) != 0);
    v6 = v57;
  }

  sub_1CF9E6DF8();

  return v6;
}

uint64_t sub_1CF21F124(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000008CLL, 0x80000001CFA3A640);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38D90);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a4)
  {
    v12 = 0xE100000000000000;
    v13 = 49;
  }

  else
  {
    v14 = [a1 bindLongParameter_];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);

    v13 = 0x4449776F722E7472;
    v12 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v13, v12);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  return 0;
}

uint64_t sub_1CF21F3B0(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A5, 0x80000001CFA3A6D0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD0000000000000C8, 0x80000001CFA3A780);
  if (a3)
  {
    v7 = 0xE100000000000000;
    v8 = 49;
  }

  else
  {
    v9 = [a1 bindLongParameter_];
    v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v11;

    MEMORY[0x1D3868CC0](v10, v12);

    v8 = 0x4449776F722E7472;
    v7 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v8, v7);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3A850);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  return 0;
}

uint64_t sub_1CF21F570(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = a2;
  *a1 = [v7 longAtIndex_];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 8) + 16))(v7, 1, AssociatedTypeWitness);
  if (!v2)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF21F6E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  v24 = a1;
  v25 = a2 & 1;
  v26 = 100;
  v11 = (*(a5 + 24))(a6, v23, a4, a5);
  if (!v7)
  {
    v12 = v11;
    v13 = v10[77];
    v14 = v10[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16 = v10[78];
    v17 = v10[76];
    v18 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = swift_getAssociatedConformanceWitness();
    v27[0] = AssociatedTypeWitness;
    v27[1] = v18;
    v27[2] = AssociatedConformanceWitness;
    v27[3] = v19;
    type metadata accessor for ReconciliationID();
    v8 = sub_1CF9E6DA8();
    v28 = v8;
    v27[0] = 0;
    if ([v12 next])
    {
      do
      {
        v20 = objc_autoreleasePoolPush();
        sub_1CF223600(v27, v12, &v28);
        objc_autoreleasePoolPop(v20);
      }

      while (([v12 next] & 1) != 0);
      v8 = v28;
    }

    sub_1CF9E6DF8();
  }

  return v8;
}

uint64_t sub_1CF21F938(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000066, 0x80000001CFA3A580);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA3A5F0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA3A610);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a3)
  {
    v9 = 0xE100000000000000;
    v10 = 49;
  }

  else
  {
    v11 = [a1 bindLongParameter_];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;

    MEMORY[0x1D3868CC0](v12, v14);

    v10 = 0x203E204449776F72;
    v9 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v10, v9);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  return 0;
}

uint64_t sub_1CF21FB9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v19[16] = a1 & 1;
  v20 = a2;
  v21 = 100;
  v11 = (*(a5 + 24))(sub_1CF24F20C, v19, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v13 = v10[77];
    v14 = v10[75];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v15 = v10[78];
    v16 = v10[76];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    swift_getTupleTypeMetadata3();
    v7 = sub_1CF9E6DA8();
    v23 = v7;
    v22 = 0;
    if ([v12 next])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        sub_1CF21FF84(&v22, v12, &v23, v14, v16, a4, v13, v15);
        objc_autoreleasePoolPop(v17);
      }

      while (([v12 next] & 1) != 0);
      v7 = v23;
    }

    sub_1CF9E6DF8();
  }

  return v7;
}

uint64_t sub_1CF21FDCC(void *a1, char a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA3A4E0);
  if (a2)
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA3A530);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA3A550);
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  return 0;
}

uint64_t sub_1CF21FF84(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a3;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v48 = a5;
  v49 = a8;
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(*(TupleTypeMetadata3 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v45 = &v44 - v17;
  v51 = v14;
  v50 = *(v14 - 8);
  v18 = *(v50 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v53 = &v44 - v20;
  v54 = v12;
  v52 = *(v12 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v44 - v22;
  v24 = [a2 longAtIndex_];
  *v55 = v24;
  if ([a2 isNullAtIndex_])
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v23, 1, 1, AssociatedTypeWitness);
    v25 = v56;
  }

  else
  {
    v26 = *(swift_getAssociatedConformanceWitness() + 8);
    v27 = *(v26 + 16);
    v28 = a2;
    v29 = v56;
    result = v27(v28, 1, AssociatedTypeWitness, v26);
    v25 = v29;
    if (v29)
    {
      return result;
    }

    (*(*(AssociatedTypeWitness - 8) + 56))(v23, 0, 1, AssociatedTypeWitness);
  }

  v31 = [a2 isNullAtIndex_];
  v32 = v53;
  if (v31)
  {
    v33 = 1;
  }

  else
  {
    v34 = *(swift_getAssociatedConformanceWitness() + 8);
    (*(v34 + 16))(a2, 2, v13, v34);
    if (v25)
    {
      return (*(v52 + 8))(v23, v54);
    }

    v33 = 0;
  }

  (*(*(v13 - 8) + 56))(v32, v33, 1, v13);
  v35 = [a2 longAtIndex_];
  if (v35 < 5 && ((0x17u >> v35) & 1) != 0)
  {
    v56 = 0x300020100uLL >> (8 * v35);
    v36 = v45;
    v37 = *(TupleTypeMetadata3 + 48);
    v55 = *(TupleTypeMetadata3 + 64);
    v38 = v52;
    v39 = v54;
    (*(v52 + 16))(v45, v23, v54);
    v40 = v50;
    v41 = &v36[v37];
    v42 = v51;
    (*(v50 + 16))(v41, v32, v51);
    *(v55 + v36) = v56;
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    (*(v40 + 8))(v32, v42);
    return (*(v38 + 8))(v23, v39);
  }

  sub_1CF1DA5D8();
  swift_allocError();
  *v43 = 0;
  swift_willThrow();
  (*(v50 + 8))(v32, v51);
  return (*(v52 + 8))(v23, v54);
}

uint64_t sub_1CF2204A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v19 = a1;
  v20 = a2 & 1;
  v21 = 100;
  v10 = (*(a5 + 24))(sub_1CF24F1FC, v18, a4, a5);
  if (!v6)
  {
    v11 = v10;
    v12 = v9[78];
    v13 = v9[76];
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata3();
    v7 = sub_1CF9E6DA8();
    v23 = v7;
    v22 = 0;
    if ([v11 next])
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v9[75];
        v16 = v9[77];
        sub_1CF2209C8(&v22, v11, &v23);
        objc_autoreleasePoolPop(v14);
      }

      while (([v11 next] & 1) != 0);
      v7 = v23;
    }

    sub_1CF9E6DF8();
  }

  return v7;
}

uint64_t sub_1CF22069C(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000008FLL, 0x80000001CFA3A390);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3A420);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA3A440);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3A480);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3A4B0);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39C80);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a3)
  {
    v12 = 0xE100000000000000;
    v13 = 49;
  }

  else
  {
    v14 = [a1 bindLongParameter_];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);

    v13 = 0x203E204449776F72;
    v12 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v13, v12);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  return 0;
}

uint64_t sub_1CF2209C8(void *a1, void *a2, uint64_t a3)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = *(*(TupleTypeMetadata3 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v10 = &v21 - v9;
  v24 = *(AssociatedTypeWitness - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  *a1 = [a2 longAtIndex_];
  v14 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v15 = a2;
  v16 = v25;
  result = v14();
  if (!v16)
  {
    v18 = v24;
    v19 = sub_1CEFEBAE8(2);
    v25 = [v15 longAtIndex_];
    v22 = *(TupleTypeMetadata3 + 48);
    v20 = *(TupleTypeMetadata3 + 64);
    (*(v18 + 16))(v10, v13, AssociatedTypeWitness);
    v10[v22] = v19;
    *&v10[v20] = v25;
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v18 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF220C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v18 = a1;
  v19 = 100;
  v9 = (*(a4 + 24))(sub_1CF24F1F4, v17);
  if (!v5)
  {
    v10 = v9;
    v11 = v8[78];
    v12 = v8[76];
    swift_getAssociatedTypeWitness();
    v6 = sub_1CF9E6DA8();
    v21 = v6;
    v20 = 0;
    if ([v10 next])
    {
      do
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v8[75];
        v15 = v8[77];
        sub_1CF220F00(&v20, v10);
        objc_autoreleasePoolPop(v13);
      }

      while (([v10 next] & 1) != 0);
      v6 = v21;
    }

    sub_1CF9E6DF8();
  }

  return v6;
}

uint64_t sub_1CF220DEC(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000081, 0x80000001CFA3A2D0);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  return 0;
}

uint64_t sub_1CF220F00(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *a1 = [a2 longAtIndex_];
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v7 + 16))(a2, 1, AssociatedTypeWitness, v7);
  if (!v2)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF221088(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000088, 0x80000001CFA3A1B0);
  v6 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA3A240);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a3)
  {
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    v9 = 0x203E204449776F72;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v6);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

void *sub_1CF221378(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  v19 = a2 & 1;
  v20 = 100;
  result = (*(*(a5 + 8) + 24))(a6, v17, a4);
  if (!v8)
  {
    v12 = result;
    v13 = MEMORY[0x1E69E7CC0];
    v22 = MEMORY[0x1E69E7CC0];
    v21 = 0;
    v14 = [result next];
    if (v14)
    {
      do
      {
        v15 = objc_autoreleasePoolPush();
        sub_1CF2217D4(&v21, v12, &v22, v7);
        objc_autoreleasePoolPop(v15);
        v14 = [v12 next];
      }

      while ((v14 & 1) != 0);
      v13 = v22;
    }

    if (*(v13 + 16))
    {
      MEMORY[0x1EEE9AC00](v14);
      (*(a5 + 32))(a7);

      v13 = v22;
    }

    else
    {
    }

    v16 = *(v13 + 16);

    if (v16 == 100)
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF221528(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A1, 0x80000001CFA3A080);
  v6 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000072, 0x80000001CFA3A130);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a3)
  {
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    v9 = 0x203E204449776F72;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v6);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t sub_1CF2217D4(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(*a4 + 624);
  v9 = *(*a4 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v10 = *(v32 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v33 = a2;
  v15 = [a2 longAtIndex_];
  *a1 = v15;
  v16 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((result & 1) == 0)
  {
    result = sub_1CF1F6A58(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
    *a3 = result;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    result = sub_1CF1F6A58((v18 > 1), v19 + 1, 1, v16);
    v16 = result;
    *a3 = result;
  }

  v20 = v14;
  *(v16 + 16) = v19 + 1;
  *(v16 + 8 * v19 + 32) = v15;
  v21 = AssociatedTypeWitness;
  if ((*(a4 + *(*a4 + 680)) & 1) == 0)
  {
    v22 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v23 = v33;
    v24 = v35;
    result = v22();
    if (!v24)
    {
      v35 = 0;
      v25 = [v23 longAtIndex_];
      v26 = [v23 isNullAtIndex_];
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = [v23 integerAtIndex_];
      }

      type metadata accessor for PendingSetItem();
      v29 = v31;
      v28 = v32;
      (*(v32 + 16))(v31, v20, v21);
      v30 = sub_1CF206528(v29, v25, v27, v26);
      sub_1CF212638(v30);

      return (*(v28 + 8))(v20, v21);
    }
  }

  return result;
}

uint64_t sub_1CF221B08(void *a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3A040);
  v4 = *a2;
  *(swift_allocObject() + 16) = a1;

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v6 = sub_1CF9E6C18();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF221CCC(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D2, 0x80000001CFA39F60);
  if (a3)
  {
    v6 = 0xE100000000000000;
    v7 = 49;
  }

  else
  {
    v8 = [a1 bindLongParameter_];
    v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v11 = v10;

    MEMORY[0x1D3868CC0](v9, v11);

    v7 = 0x4449776F722E7472;
    v6 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v7, v6);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  return 0;
}

uint64_t sub_1CF221E34(void *a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA39F00);
  v4 = *a2;
  *(swift_allocObject() + 16) = a1;

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v6 = sub_1CF9E6C18();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF221FC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v23 = a1;
  v24 = a2 & 1;
  v25 = 100;
  v10 = (*(a5 + 24))(sub_1CF24F13C, v22, a4, a5);
  if (!v6)
  {
    v11 = v10;
    v12 = v9[77];
    v13 = v9[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = v9[78];
    v16 = v9[76];
    v17 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = swift_getAssociatedConformanceWitness();
    v26[0] = AssociatedTypeWitness;
    v26[1] = v17;
    v26[2] = AssociatedConformanceWitness;
    v26[3] = v18;
    type metadata accessor for ReconciliationID();
    v7 = sub_1CF9E6DA8();
    v27 = v7;
    v26[0] = 0;
    if ([v11 next])
    {
      do
      {
        v19 = objc_autoreleasePoolPush();
        sub_1CF222488(v26, v11, &v27);
        objc_autoreleasePoolPop(v19);
      }

      while (([v11 next] & 1) != 0);
      v7 = v27;
    }

    sub_1CF9E6DF8();
  }

  return v7;
}

uint64_t sub_1CF222228(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA39E90);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA39360);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39380);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a3)
  {
    v9 = 0xE100000000000000;
    v10 = 49;
  }

  else
  {
    v11 = [a1 bindLongParameter_];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;

    MEMORY[0x1D3868CC0](v12, v14);

    v10 = 0x203E204449776F72;
    v9 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v10, v9);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  return 0;
}

uint64_t sub_1CF222488(void *a1, void *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ReconciliationID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  *a1 = [a2 longAtIndex_];
  result = (*(*(AssociatedConformanceWitness + 8) + 16))(a2, 1, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  if (!v11)
  {
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF22264C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v20[16] = a1 & 1;
  v21 = a2;
  v22 = a3 & 1;
  v23 = 100;
  v12 = (*(a6 + 24))(sub_1CF24F128, v20, a5, a6);
  if (!v7)
  {
    v13 = v12;
    v14 = v11[77];
    v15 = v11[75];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v16 = v11[78];
    v17 = v11[76];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    swift_getTupleTypeMetadata2();
    v8 = sub_1CF9E6DA8();
    v25 = v8;
    v24 = 0;
    if ([v13 next])
    {
      do
      {
        v18 = objc_autoreleasePoolPush();
        sub_1CF226FD8(&v24, v13, &v25, v15, v17, a5, v14, v16);
        objc_autoreleasePoolPop(v18);
      }

      while (([v13 next] & 1) != 0);
      v8 = v25;
    }

    sub_1CF9E6DF8();
  }

  return v8;
}

uint64_t sub_1CF222880(void *a1, char a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA39E30);
  if (a2)
  {
    v8 = 21318;
  }

  else
  {
    v8 = 20550;
  }

  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA39E70);
  if (a4)
  {
    v11 = 0xE100000000000000;
    v12 = 49;
  }

  else
  {
    v13 = [a1 bindLongParameter_];
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;

    MEMORY[0x1D3868CC0](v14, v16);

    v12 = 0x203E204449776F72;
    v11 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v11);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v17 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v17);

  return 0;
}

uint64_t sub_1CF222B50(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = *a3;
  v15 = *(a3 + 8);
  v25[16] = a2 & 1;
  v26 = a1;
  v27 = v14;
  v28 = v15;
  v29 = a4;
  v30 = a5 & 1;
  v31 = 100;
  v16 = v13;
  v17 = (*(a8 + 24))(sub_1CF24F10C, v25, a7, a8);
  if (!v9)
  {
    v18 = v17;
    v19 = v16[77];
    v20 = v16[75];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v21 = v16[78];
    v22 = v16[76];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    swift_getTupleTypeMetadata2();
    v10 = sub_1CF9E6DA8();
    v33 = v10;
    v32 = 0;
    if ([v18 next])
    {
      do
      {
        v23 = objc_autoreleasePoolPush();
        sub_1CF226FD8(&v32, v18, &v33, v20, v22, a7, v19, v21);
        objc_autoreleasePoolPop(v23);
      }

      while (([v18 next] & 1) != 0);
      v10 = v33;
    }

    sub_1CF9E6DF8();
  }

  return v10;
}

uint64_t sub_1CF222D94(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v11 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA39D90);
  if (a2)
  {
    v12 = 20550;
  }

  else
  {
    v12 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x20444E4120200ALL, 0xE700000000000000);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](2314861410284020000, 0xE800000000000000);
  if (a5)
  {
    v18 = 0;
  }

  else
  {
    sub_1CF9E7948();

    MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA39E10);
    v19 = [a1 bindLongParameter_];
    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    MEMORY[0x1D3868CC0](v20, v22);

    MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
    v18 = 541347393;
    v11 = 0xE400000000000000;
  }

  MEMORY[0x1D3868CC0](v18, v11);

  MEMORY[0x1D3868CC0](0x20444E4120200ALL, 0xE700000000000000);
  if (a7)
  {
    v23 = 0xE100000000000000;
    v24 = 49;
  }

  else
  {
    v25 = [a1 bindLongParameter_];
    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;

    MEMORY[0x1D3868CC0](v26, v28);

    v24 = 0x203E204449776F72;
    v23 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v24, v23);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v29 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v29);

  return 0;
}

uint64_t sub_1CF22316C(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA39CB0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39D60);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39D00);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a3)
  {
    v9 = 0xE100000000000000;
    v10 = 49;
  }

  else
  {
    v11 = [a1 bindLongParameter_];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;

    MEMORY[0x1D3868CC0](v12, v14);

    v10 = 0x203E204449776F72;
    v9 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v10, v9);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  return 0;
}

uint64_t sub_1CF2233F4(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA39CB0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39D00);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA39D30);
  if (a3)
  {
    v8 = 0xE100000000000000;
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    v9 = 0x203E204449776F72;
    v8 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v8);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t sub_1CF223600(void *a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ReconciliationID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  *a1 = [a2 longAtIndex_];
  result = (*(*(AssociatedConformanceWitness + 8) + 16))(a2, 1, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  if (!v11)
  {
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

void *sub_1CF2237C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v20 = a4;
  v21 = a5;
  v22 = v5;
  v23 = a1;
  v24 = a2 & 1;
  v25 = 100;
  v10 = v9;
  v11 = (*(a5 + 24))(sub_1CF24F0D4, v19, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v13 = v10[75];
    v14 = v10[76];
    v15 = v10[77];
    v16 = v10[78];
    v26[0] = v13;
    v26[1] = v14;
    v26[2] = v15;
    v26[3] = v16;
    type metadata accessor for ItemReconciliation();
    v10 = sub_1CF9E6DA8();
    v27 = v10;
    v26[0] = 0;
    if ([v12 next])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        sub_1CF2241CC(v26, v12, &v27, v13, v14, a4, v15, v16);
        objc_autoreleasePoolPop(v17);
      }

      while (([v12 next] & 1) != 0);
      v10 = v27;
    }

    sub_1CF9E6DF8();
  }

  return v10;
}

uint64_t sub_1CF223990(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA39BE0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39C20);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA39C50);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39C80);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a4)
  {
    v12 = 0xE100000000000000;
    v13 = 49;
  }

  else
  {
    v14 = [a1 bindLongParameter_];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);

    v13 = 0x203E204449776F72;
    v12 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v13, v12);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  return 0;
}

void *sub_1CF223C88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v20 = a4;
  v21 = a5;
  v22 = v5;
  v23 = 262400;
  v24 = a1;
  v25 = a2 & 1;
  v26 = 100;
  v10 = v9;
  v11 = (*(a5 + 24))(sub_1CF24F0BC, v19, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v13 = v10[75];
    v14 = v10[76];
    v15 = v10[77];
    v16 = v10[78];
    v27[0] = v13;
    v27[1] = v14;
    v27[2] = v15;
    v27[3] = v16;
    type metadata accessor for ItemReconciliation();
    v10 = sub_1CF9E6DA8();
    v28 = v10;
    v27[0] = 0;
    if ([v12 next])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        sub_1CF2241CC(v27, v12, &v28, v13, v14, a4, v15, v16);
        objc_autoreleasePoolPop(v17);
      }

      while (([v12 next] & 1) != 0);
      v10 = v28;
    }

    sub_1CF9E6DF8();
  }

  return v10;
}

uint64_t sub_1CF223E64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003CLL, 0x80000001CFA39B10);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA39B50);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA39B80);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA39BB0);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x4E412020200A2929, 0xEA00000000002044);
  if (a5)
  {
    v14 = 0xE100000000000000;
    v15 = 49;
  }

  else
  {
    v16 = [a1 bindLongParameter_];
    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;

    MEMORY[0x1D3868CC0](v17, v19);

    v15 = 0x203E204449776F72;
    v14 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v15, v14);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v20 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v20);

  return 0;
}

uint64_t sub_1CF2241CC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v11 = type metadata accessor for ItemReconciliation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  *a1 = [a2 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF01E03C(a2, 1, v11, WitnessTable, v14);
  if (!v8)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF22430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a3 + 24))(a4, 0, a2, a3);
  if (!v5)
  {
    v7 = v6;
    v4 = [v6 next];
  }

  return v4 & 1;
}

uint64_t sub_1CF224384()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA39AA0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

id sub_1CF224478(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  v21 = a2 & 1;
  v22 = 100;
  result = (*(*(a5 + 8) + 24))(a6, v19, a4);
  if (!v7)
  {
    v11 = result;
    v12 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
    v13 = [result next];
    if (v13)
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [v11 longAtIndex_];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1CF1F6A58(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_1CF1F6A58((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        *&v12[8 * v17 + 32] = v15;
        objc_autoreleasePoolPop(v14);
        v13 = [v11 next];
      }

      while ((v13 & 1) != 0);
    }

    else
    {
      v15 = 0;
    }

    v23 = v12;
    if (*(v12 + 2))
    {
      MEMORY[0x1EEE9AC00](v13);
      (*(a5 + 32))(a7);

      v12 = v23;
    }

    else
    {
    }

    v18 = *(v12 + 2);

    if (v18 == 100)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF224678(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000C1, 0x80000001CFA39980);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA39A50);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEC00000020444E41);
  if (a3)
  {
    v8 = 0xE100000000000000;
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    v9 = 0x4449776F722E7472;
    v8 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v9, v8);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t sub_1CF224898(void *a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA39900);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39960);
  v5 = *a2;
  *(swift_allocObject() + 16) = a1;

  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

void *sub_1CF224A80(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF24A9A8(a1, a2 & 1, a3, *(*v5 + 600), *(*v5 + 608), a4, *(*v5 + 616), *(*v5 + 624), a5);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF224B10(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000013ELL, 0x80000001CFA39780);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA398C0);
  v5 = [a1 bindLongParameter_];
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA398E0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  return 0;
}

uint64_t sub_1CF224C84(void *a1, id a2, char **a3, int a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v22[3] = a7;
  v14 = [a2 longAtIndex_];
  *a1 = v14;
  v15 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1CF1F6A58(0, *(v15 + 2) + 1, 1, v15);
    *a3 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1CF1F6A58((v17 > 1), v18 + 1, 1, v15);
    *a3 = v15;
  }

  *(v15 + 2) = v18 + 1;
  *&v15[8 * v18 + 32] = v14;
  result = sub_1CEFE9AC4([a2 longAtIndex_], v22);
  if (!v10)
  {
    v20 = [a2 isNullAtIndex_];
    if ((v20 & 1) == 0)
    {
      v21 = [a2 stringAtIndex_];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    }

    MEMORY[0x1EEE9AC00](v20);
    (*(a10 + 32))(sub_1CF24F090);
  }

  return result;
}

uint64_t sub_1CF224E78(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA396F0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v12 = [a1 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA39730);
  v16 = sub_1CF074DF4(a4, a5);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39760);
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);

  return v22;
}

const char *sub_1CF225038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v37 = a1;
  AssociatedTypeWitness = a2;
  v43 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v6 + 48);
  if (v21(v14, 1, v5) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v14, 1, v5) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
  }

  v23 = v42;
  (*(v6 + 16))(v42, v9, v5);
  *(v23 + *(v17 + 20)) = v20;
  v24 = "SQLDB: list dataless items with conflicts";
  v25 = v23 + *(v17 + 24);
  *v25 = "SQLDB: list dataless items with conflicts";
  *(v25 + 8) = 41;
  *(v25 + 16) = 2;
  v26 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v9, v5);
  v27 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v39;
  v29 = (*(v41 + 24))(sub_1CF24F080);
  if (!v28)
  {
    v30 = v29;
    v39 = v26;
    v31 = v43[77];
    v32 = v43[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = sub_1CF9E6DA8();
    v45 = v24;
    v44 = 0;
    if ([v30 next])
    {
      do
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v43[76];
        v35 = v43[78];
        sub_1CF225728(&v44, v30);
        objc_autoreleasePoolPop(v33);
      }

      while (([v30 next] & 1) != 0);
      v24 = v45;
    }

    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v23, type metadata accessor for Signpost);
  return v24;
}

uint64_t sub_1CF2255B8(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA39640);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA396A0);
  v5 = [a1 bindLongParameter_];
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  return 0;
}

uint64_t sub_1CF225728(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *a1 = [a2 longAtIndex_];
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v7 + 16))(a2, 1, AssociatedTypeWitness, v7);
  if (!v2)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

const char *sub_1CF225870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v49 = a3;
  v44 = a1;
  v45 = a2;
  v43 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v6 + 48);
  if (v21(v14, 1, v5) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v14, 1, v5) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
  }

  v23 = v48;
  (*(v6 + 16))(v48, v9, v5);
  *(v23 + *(v17 + 20)) = v20;
  v24 = "SQLDB: list items blocked by bouncing";
  v25 = v23 + *(v17 + 24);
  *v25 = "SQLDB: list items blocked by bouncing";
  *(v25 + 8) = 37;
  *(v25 + 16) = 2;
  v26 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v9, v5);
  v27 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v46;
  v29 = (*(v47 + 24))(sub_1CF24F078);
  if (v28)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v23, type metadata accessor for Signpost);
  }

  else
  {
    v30 = v29;
    v46 = v26;
    v31 = v43;
    v32 = *(v43 + 616);
    v33 = *(v43 + 600);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v45 = sub_1CF9E75D8();
    v35 = *(v31 + 624);
    v36 = *(v31 + 608);
    v37 = swift_getAssociatedTypeWitness();
    v44 = sub_1CF9E75D8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v39 = swift_getAssociatedConformanceWitness();
    v51[0] = AssociatedTypeWitness;
    v51[1] = v37;
    v51[2] = AssociatedConformanceWitness;
    v51[3] = v39;
    type metadata accessor for ReconciliationID();
    sub_1CF9E6E58();
    swift_getTupleTypeMetadata3();
    v24 = sub_1CF9E6DA8();
    v52 = v24;
    v50 = 0;
    v51[0] = 0;
    if ([v30 next])
    {
      do
      {
        v40 = objc_autoreleasePoolPush();
        sub_1CF225FC4(v51, &v50, v30, &v52);
        objc_autoreleasePoolPop(v40);
      }

      while (([v30 next] & 1) != 0);
      v24 = v52;

      v41 = v48;
    }

    else
    {

      v41 = v48;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v41, type metadata accessor for Signpost);
  }

  return v24;
}

uint64_t sub_1CF225EB0(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000008CLL, 0x80000001CFA39560);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  return 0;
}

void sub_1CF225FC4(char *a1, void *a2, void *a3, uint64_t a4)
{
  v69 = a2;
  v60 = a4;
  v71 = a1;
  v72 = a3;
  v63 = sub_1CF9E79E8();
  v61 = *(v63 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = sub_1CF9E75D8();
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v9 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v74 = v9;
  v75 = v7;
  v76 = AssociatedConformanceWitness;
  v77 = v11;
  v12 = type metadata accessor for ReconciliationID();
  v13 = sub_1CF9E6E58();
  v14 = v73;
  v65 = v13;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(*(TupleTypeMetadata3 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v67 = v8;
  v17 = *(*(v8 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v57 - v19;
  v20 = *(v14 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v26 = &v57 - v25;
  v27 = *v24 + 1;
  if (__OFADD__(*v24, 1))
  {
    __break(1u);
    return;
  }

  v66 = v23;
  v28 = v7;
  v64 = v12;
  v58 = v22;
  *v24 = v27;
  v29 = v72;
  v30 = [v72 longAtIndex_];
  *v69 = v30;
  v31 = 1;
  if ([v29 isNullAtIndex_])
  {
    v71 = v26;
    v32 = v70;
  }

  else
  {
    v33 = *(AssociatedConformanceWitness + 8);
    v34 = *(v33 + 16);
    v35 = v29;
    v36 = v70;
    v34(v35, 1, v9, v33);
    v32 = v36;
    if (v36)
    {
      return;
    }

    v71 = v26;
    v29 = v72;
    v31 = 0;
  }

  v37 = 1;
  (*(*(v9 - 1) + 56))(v71, v31, 1, v9);
  if (([v29 isNullAtIndex_] & 1) == 0)
  {
    (*(*(v11 + 8) + 16))(v29, 2, v28, *(v11 + 8));
    if (v32)
    {
      (*(v20 + 8))(v71, v73);
      return;
    }

    v37 = 0;
  }

  v38 = v68;
  (*(*(v28 - 8) + 56))(v68, v37, 1, v28);
  v39 = v20;
  if ([v29 isNullAtIndex_])
  {
    (*(v66 + 8))(v38, v67);
  }

  else
  {
    v40 = v64;
    WitnessTable = swift_getWitnessTable();
    v41 = v65;
    swift_getWitnessTable();
    sub_1CF4C1368(v41, 3);
    if (v32)
    {
      v74 = v32;
      v42 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v44 = v62;
      v43 = v63;
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v66 + 8))(v68, v67);
        (*(v39 + 8))(v71, v73);

        return;
      }

      sub_1CF9E7FA8();
      v45 = *(v40[-1].Description + 9);
      v46 = *(v40[-1].Description + 80);
      swift_allocObject();
      v47 = sub_1CF9E6D68();
      sub_1CF4C1368(v40, 3);
      v48 = sub_1CF045898(v47);
      v49 = *(v61 + 8);

      v49(v44, v43);

      v38 = v68;
    }

    else
    {
      v48 = v74;
    }

    v74 = v48;
    swift_getWitnessTable();
    v50 = sub_1CF9E7128();

    if ((v50 & 1) == 0)
    {
      v51 = v58;
      v52 = *(TupleTypeMetadata3 + 48);
      v72 = *(TupleTypeMetadata3 + 64);
      v53 = v73;
      (*(v39 + 16))(v58, v71, v73);
      v54 = v66;
      v55 = v51 + v52;
      v56 = v67;
      (*(v66 + 16))(v55, v38, v67);
      *(v72 + v51) = v48;
      sub_1CF9E6E58();
      sub_1CF9E6E18();
      (*(v54 + 8))(v38, v56);
      (*(v39 + 8))(v71, v53);
      return;
    }

    (*(v66 + 8))(v38, v67);
  }

  (*(v39 + 8))(v71, v73);
}

const char *sub_1CF226800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = a2;
  v42 = a3;
  v43 = a4;
  v38[0] = *v4;
  v38[1] = a1;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v38 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v41 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v6 + 48);
  if (v21(v14, 1, v5) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v14, 1, v5) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
  }

  v23 = v41;
  (*(v6 + 16))(v41, v9, v5);
  *(v23 + *(v17 + 20)) = v20;
  v24 = "SQLDB: list items marked evicting with not interested content";
  v25 = v23 + *(v17 + 24);
  *v25 = "SQLDB: list items marked evicting with not interested content";
  *(v25 + 8) = 61;
  *(v25 + 16) = 2;
  v26 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v9, v5);
  v27 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v40;
  v29 = (*(v43 + 24))(sub_1CF24F070);
  if (!v28)
  {
    v30 = v29;
    v40 = v26;
    v31 = v38[0];
    v32 = *(v38[0] + 616);
    v33 = *(v38[0] + 600);
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v34 = *(v31 + 624);
    v35 = *(v31 + 608);
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v24 = sub_1CF9E6DA8();
    v45 = v24;
    v44 = 0;
    if ([v30 next])
    {
      do
      {
        v36 = objc_autoreleasePoolPush();
        sub_1CF226FD8(&v44, v30, &v45, v33, v35, v42, v32, v34);
        objc_autoreleasePoolPop(v36);
      }

      while (([v30 next] & 1) != 0);
      v24 = v45;
    }

    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v23, type metadata accessor for Signpost);
  return v24;
}

uint64_t sub_1CF226DD0(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA39460);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA394C0);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA394F0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39510);
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

uint64_t sub_1CF226FD8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v48 = a3;
  v53 = a1;
  v49 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v50 = a5;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(*(TupleTypeMetadata2 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v45 = &v41 - v18;
  v47 = v15;
  v43 = *(v15 - 8);
  v19 = *(v43 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v42 = &v41 - v21;
  v44 = *(v14 - 8);
  v22 = *(v44 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v51 = &v41 - v24;
  v52 = v13;
  v25 = *(v13 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v41 - v27;
  v29 = [a2 longAtIndex_];
  *v53 = v29;
  if ([a2 isNullAtIndex_])
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v28, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v53 = a8;
    v30 = *(swift_getAssociatedConformanceWitness() + 8);
    result = (*(v30 + 16))(a2, 1, AssociatedTypeWitness, v30);
    if (v8)
    {
      return result;
    }

    (*(*(AssociatedTypeWitness - 8) + 56))(v28, 0, 1, AssociatedTypeWitness);
  }

  v32 = *(swift_getAssociatedConformanceWitness() + 8);
  v33 = *(v32 + 16);
  v34 = a2;
  v35 = v51;
  v33(v34, 2, v14, v32);
  if (!v8)
  {
    v36 = v35;
    v37 = v44;
    v38 = v42;
    (*(v44 + 16))(v42, v36, v14);
    (*(v37 + 56))(v38, 0, 1, v14);
    v39 = v45;
    v40 = *(TupleTypeMetadata2 + 48);
    (*(v25 + 16))(v45, v28, v52);
    (*(v43 + 32))(&v39[v40], v38, v47);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    (*(v37 + 8))(v51, v14);
  }

  return (*(v25 + 8))(v28, v52);
}

const char *sub_1CF227490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v37 = a1;
  AssociatedTypeWitness = a2;
  v43 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v6 + 48);
  if (v21(v14, 1, v5) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v14, 1, v5) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
  }

  v23 = v42;
  (*(v6 + 16))(v42, v9, v5);
  *(v23 + *(v17 + 20)) = v20;
  v24 = "SQLDB: list items pending old content injection but stuck on ignored";
  v25 = v23 + *(v17 + 24);
  *v25 = "SQLDB: list items pending old content injection but stuck on ignored";
  *(v25 + 8) = 68;
  *(v25 + 16) = 2;
  v26 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v9, v5);
  v27 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v39;
  v29 = (*(v41 + 24))(sub_1CF24F068);
  if (!v28)
  {
    v30 = v29;
    v39 = v26;
    v31 = v43[77];
    v32 = v43[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = sub_1CF9E6DA8();
    v45 = v24;
    v44 = 0;
    if ([v30 next])
    {
      do
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v43[76];
        v35 = v43[78];
        sub_1CF227C10(&v44, v30, &v45);
        objc_autoreleasePoolPop(v33);
      }

      while (([v30 next] & 1) != 0);
      v24 = v45;
    }

    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v23, type metadata accessor for Signpost);
  return v24;
}

uint64_t sub_1CF227A10(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA39300);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA39360);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39380);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA393B0);
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

uint64_t sub_1CF227C10(void *a1, void *a2, uint64_t a3)
{
  v18[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  *a1 = [a2 longAtIndex_];
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = *(v13 + 16);
  v15 = a2;
  v16 = v18[3];
  result = v14(v15, 1, AssociatedTypeWitness, v13);
  if (!v16)
  {
    (*(v6 + 16))(v10, v12, AssociatedTypeWitness);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v6 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF227DE8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA3BFC0);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v0 = *(v8 + 16);
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BED230 + v1);
    v3 = *(v8 + 24);
    if (v0 >= v3 >> 1)
    {
      sub_1CF680C9C((v3 > 1), v0 + 1, 1);
    }

    *(v8 + 16) = v0 + 1;
    *(v8 + 8 * v0 + 32) = v2;
    v1 += 8;
    ++v0;
  }

  while (v1 != 128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF227FE0(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), void (**a4)(char *, uint64_t), uint64_t a5)
{
  AssociatedConformanceWitness = a5;
  v56 = a3;
  v57 = a4;
  v61 = a2;
  v62 = a1;
  v6 = *(*v5 + 616);
  v50 = *(*v5 + 600);
  v51 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - v13;
  v14 = sub_1CF9E6068();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47 - v24;
  v26 = type metadata accessor for Signpost(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v60 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDEBBE40;
  (*(v15 + 56))(v25, 1, 1, v14);
  v54 = v25;
  sub_1CEFCCBDC(v25, v23, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(v15 + 48);
  if (v30(v23, 1, v14) == 1)
  {
    v31 = v29;
    sub_1CF9E6048();
    if (v30(v23, 1, v14) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v23, v14);
  }

  v32 = v60;
  (*(v15 + 16))(v60, v18, v14);
  *(v32 + *(v26 + 20)) = v29;
  v33 = v32 + *(v26 + 24);
  *v33 = "SQLDB: list items pending recursive deletion";
  *(v33 + 8) = 44;
  *(v33 + 16) = 2;
  v34 = v29;
  sub_1CF9E7468();
  v55 = v34;
  sub_1CF9E6038();
  (*(v15 + 8))(v18, v14);
  sub_1CEFCCC44(v54, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = v58;
  v36 = (*(AssociatedConformanceWitness + 24))(sub_1CF2286B4, 0, v57);
  if (v35)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v32, type metadata accessor for Signpost);
  }

  else
  {
    v37 = v36;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = *(AssociatedConformanceWitness + 40);
    v63 = sub_1CF9E65F8();
    if ([v37 next])
    {
      v39 = v49;
      v56 = (v48 + 16);
      v57 = (v48 + 8);
      v58 = v37;
      do
      {
        if (sub_1CF9E6FD8() >= v62)
        {
          break;
        }

        v43 = *(*(AssociatedConformanceWitness + 8) + 16);
        v44 = v37;
        v43();
        if (sub_1CF9E7048())
        {
          (*v57)(v39, AssociatedTypeWitness);
        }

        else
        {
          (*v56)(v53, v39, AssociatedTypeWitness);
          sub_1CF9E7068();
          v40 = v52;
          sub_1CF9E6FF8();
          v41 = *v57;
          (*v57)(v40, AssociatedTypeWitness);
          v41(v39, AssociatedTypeWitness);
        }

        v42 = [v44 next];
        v37 = v58;
      }

      while ((v42 & 1) != 0);
    }

    v32 = v63;
    sub_1CF9E7458();
    v45 = v60;
    sub_1CF9E6038();
    sub_1CEFD5218(v45, type metadata accessor for Signpost);
  }

  return v32;
}

uint64_t sub_1CF2286B4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000128, 0x80000001CFA38FF0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA39120);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA39160);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD00000000000007DLL, 0x80000001CFA391A0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA39220);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA39260);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA39290);
  return 0;
}

void sub_1CF2288E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  v17 = v3;
  v5 = *(a3 + 24);
  v6 = (v5)(sub_1CF24F050, v14, a2, a3);
  if (!v4)
  {
    v7 = v6;
    if ([v6 next])
    {
      v18 = [v7 longAtIndex_];
      v13 = [v7 longLongAtIndex_];
      MEMORY[0x1EEE9AC00](v13);
      v8 = v5(sub_1CF24F05C);
      v9 = v8;
      v10 = v18;
      if (![v8 next])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2324);
      }

      v11 = [v9 longAtIndex_];
      v12 = [v9 longLongAtIndex_];

      if (__OFADD__(v10, v11))
      {
        __break(1u);
      }

      else if (!__OFADD__(v13, v12))
      {
        return;
      }

      __break(1u);
    }

    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2304);
  }
}

uint64_t sub_1CF228AE0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A6, 0x80000001CFA38E10);
  v12 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v3 = sub_1CF9E6C18();
  v5 = v4;

  MEMORY[0x1D3868CC0](v3, v5);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA38EC0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000049, 0x80000001CFA38EE0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA38F30);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA38F60);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA38FA0);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF228DE8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000DCLL, 0x80000001CFA38C30);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA38D30);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA38D50);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA38D70);
  v14 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38D90);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA38DC0);
  v11 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA38DF0);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF229218(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B2, 0x80000001CFA3B9E0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BAA0);
  v18 = *(a2 + *(*a2 + 696));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v8 = *(v19 + 16);
  v9 = 0x20u;
  do
  {
    v10 = *(&unk_1F4BED230 + v9);
    v11 = *(v19 + 24);
    if (v8 >= v11 >> 1)
    {
      sub_1CF680C9C((v11 > 1), v8 + 1, 1);
    }

    *(v19 + 16) = v8 + 1;
    *(v19 + 8 * v8 + 32) = v10;
    v9 += 8;
    ++v8;
  }

  while (v9 != 128);

  v12 = sub_1CF9E6C18();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA3BB00);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22964C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000BBLL, 0x80000001CFA384C0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38490);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF22982C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000E7, 0x80000001CFA3B7F0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3B8E0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B900);
  v15 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v6 = sub_1CF9E6C18();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA3B930);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3B950);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B980);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3B9B0);
  v13 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

void sub_1CF229C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25 = v3;
  v7 = *(a3 + 24);
  v8 = v7(sub_1CF24F6D8, v22, a2, a3);
  if (!v4)
  {
    v9 = v8;
    if (![v8 next])
    {
      goto LABEL_17;
    }

    v21 = [v9 longAtIndex_];
    v10 = [v9 longLongAtIndex_];
    v11 = v7(sub_1CF22964C, 0, a2, a3);
    v26 = 0;
    v12 = v11;
    v20 = v10;
    if (([v11 next] & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2390);
    }

    v19 = [v12 longAtIndex_];
    v13 = [v12 longLongAtIndex_];
    v23 = a2;
    v24 = a3;
    v25 = v3;
    v14 = v26;
    v15 = v7(sub_1CF24F6CC, v22, a2, a3);
    v26 = v14;
    if (v14)
    {

      return;
    }

    v16 = v15;
    if (![v15 next])
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2394);
    }

    v17 = [v16 longAtIndex_];
    v18 = [v16 longLongAtIndex_];

    if (!__OFADD__(v21, v19))
    {
      if (__OFADD__(v20, v13))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (__OFADD__(&v19[v21], v17))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2386);
      }

      if (!__OFADD__(&v13[v20], v18))
      {
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}