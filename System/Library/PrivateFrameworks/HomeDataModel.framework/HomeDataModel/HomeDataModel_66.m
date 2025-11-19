void HMHome.sortID.getter()
{
  v1 = [v0 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t StaticResident.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D1C81010@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C8098C(v6);
  v12 = type metadata accessor for StaticService(0);
  if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC6436F0, &qword_1D1E99BC0);
    return (*(v8 + 16))(a1, v1, v7);
  }

  else
  {
    (*(v8 + 16))(v11, v6, v7);
    sub_1D1C86FC0(v6, type metadata accessor for StaticService);
    return (*(v8 + 32))(a1, v11, v7);
  }
}

uint64_t TileInfoBearer.sortID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for StaticMatterDevice();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v37 - v20;
  v22 = *(a1 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v3, a1);
  if (swift_dynamicCast())
  {
    sub_1D1C86F58(v21, v18, type metadata accessor for StaticMatterDevice);
    v26 = *(v14 + 48);
    v27 = sub_1D1E66A7C();
    (*(*(v27 - 8) + 16))(a3, &v18[v26], v27);
    sub_1D1C86FC0(v18, type metadata accessor for StaticMatterDevice);
  }

  else
  {
    v28 = a3;
    v29 = v38;
    TileInfoBearer.primaryStaticService.getter(a1, v9);
    v30 = type metadata accessor for StaticService(0);
    if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC6436F0, &qword_1D1E99BC0);
      v31 = sub_1D1E66A7C();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v13, 1, 1, v31);
      v33 = *(v29 + 48);
      sub_1D1E6886C();
      if ((*(v32 + 48))(v13, 1, v31) != 1)
      {
        sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v34 = sub_1D1E66A7C();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v13, v9, v34);
      sub_1D1C86FC0(v9, type metadata accessor for StaticService);
      (*(v35 + 56))(v13, 0, 1, v34);
      (*(v35 + 32))(v28, v13, v34);
    }
  }

  return (*(v22 + 8))(v25, a1);
}

uint64_t sub_1D1C81660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v155 = a2;
  v139 = sub_1D1E669FC();
  v145 = *(v139 - 8);
  v10 = *(v145 + 64);
  v11 = MEMORY[0x1EEE9AC00](v139);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v119 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v146 = &v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v131 = &v119 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v137 = &v119 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v134 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v119 - v29;
  v30 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v150 = AssociatedTypeWitness;
  v141 = *(AssociatedTypeWitness - 8);
  v32 = *(v141 + 64);
  v33 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v132 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v140 = &v119 - v35;
  v36 = type metadata accessor for StaticActionSet();
  v143 = *(v36 - 8);
  v144 = v36;
  v37 = *(v143 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v130 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v133 = &v119 - v40;
  v41 = sub_1D1E66A7C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v127 = &v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v126 = &v119 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v119 - v48;
  v50 = *(a6 + 24);
  v147 = a1;
  v50(AssociatedTypeWitness);
  v135 = sub_1D18E4158(v49, a3);
  LODWORD(v149) = v51;
  v52 = *(v42 + 8);
  v52(v49, v41);
  v148 = a6;
  v125 = a6 + 24;
  v124 = v50;
  (v50)(v150, a6);
  v53 = sub_1D18E4158(v49, a3);
  v55 = v54;
  v129 = v41;
  v128 = v42 + 8;
  v123 = v52;
  v52(v49, v41);
  if (v149)
  {
    if ((v55 & 1) == 0)
    {
LABEL_3:
      v56 = 0;
      return v56 & 1;
    }
  }

  else
  {
    if (v55)
    {
      goto LABEL_5;
    }

    v57 = v135 < v53;
    if (v135 != v53)
    {
      goto LABEL_37;
    }
  }

  v58 = *(v141 + 16);
  v59 = v150;
  v58(v140, v147, v150);
  v60 = v142;
  v61 = v144;
  v62 = swift_dynamicCast();
  v63 = *(v143 + 56);
  if (!v62)
  {
    v65 = v60;
    v67 = v148;
    v68 = v145;
LABEL_20:
    v63(v65, 1, 1, v61);
    sub_1D1741A30(v65, &qword_1EC643718, &qword_1D1E71E70);
    v77 = v146;
    goto LABEL_21;
  }

  v63(v60, 0, 1, v61);
  v64 = v133;
  sub_1D1C86F58(v60, v133, type metadata accessor for StaticActionSet);
  v58(v132, v155, v59);
  v65 = v134;
  v66 = swift_dynamicCast();
  v67 = v148;
  v68 = v145;
  if ((v66 & 1) == 0)
  {
    sub_1D1C86FC0(v64, type metadata accessor for StaticActionSet);
    goto LABEL_20;
  }

  v63(v65, 0, 1, v61);
  v69 = v130;
  sub_1D1C86F58(v65, v130, type metadata accessor for StaticActionSet);
  if (*(v64 + *(v61 + 24)) == 7)
  {
    v70 = 4;
  }

  else
  {
    v70 = *(v64 + *(v61 + 24));
  }

  v149 = sub_1D18E4248(v70, &unk_1F4D660E8);
  v72 = v71;
  if (*(v69 + *(v61 + 24)) == 7)
  {
    v73 = 4;
  }

  else
  {
    v73 = *(v69 + *(v61 + 24));
  }

  v74 = sub_1D18E4248(v73, &unk_1F4D660E8);
  v76 = v75;
  sub_1D1C86FC0(v69, type metadata accessor for StaticActionSet);
  sub_1D1C86FC0(v64, type metadata accessor for StaticActionSet);
  if (v72)
  {
    v77 = v146;
    v59 = v150;
    if ((v76 & 1) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  v77 = v146;
  if (v76)
  {
LABEL_5:
    v56 = 1;
    return v56 & 1;
  }

  v57 = v149 < v74;
  v59 = v150;
  if (v149 != v74)
  {
LABEL_37:
    v56 = v57;
    return v56 & 1;
  }

LABEL_21:
  v78 = *(v67 + 8);
  v79 = v136;
  v78(v59, v67);
  v80 = v67;
  v81 = v137;
  v78(v59, v80);
  v82 = *(v138 + 48);
  sub_1D1741A90(v79, v77, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v81, v77 + v82, &qword_1EC642570, &qword_1D1E6C6A0);
  v83 = v68;
  v84 = *(v68 + 48);
  v85 = v139;
  if (v84(v77, 1, v139) == 1)
  {
    if (v84(v77 + v82, 1, v85) != 1)
    {
      sub_1D1741A30(v77 + v82, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v77, &qword_1EC642570, &qword_1D1E6C6A0);
      v56 = 0;
      return v56 & 1;
    }
  }

  else
  {
    v86 = v131;
    sub_1D1741C08(v77, v131, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v84(v77 + v82, 1, v85) == 1)
    {
      (*(v83 + 8))(v86, v85);
      sub_1D1741A30(v77 + v82, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v77, &qword_1EC642570, &qword_1D1E6C6A0);
      v56 = 1;
      return v56 & 1;
    }

    v87 = v120;
    sub_1D1741C08(v77 + v82, v120, &qword_1EC642570, &qword_1D1E6C6A0);
    v88 = *(v83 + 32);
    v89 = v122;
    v88(v122, v86, v85);
    v90 = v83;
    v91 = v121;
    v88(v121, v87, v85);
    sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v56 = sub_1D1E6696C();
      v113 = *(v90 + 8);
      v113(v91, v85);
      v113(v89, v85);
      sub_1D1741A30(v77 + v82, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v77, &qword_1EC642570, &qword_1D1E6C6A0);
      return v56 & 1;
    }

    v92 = *(v90 + 8);
    v92(v91, v85);
    v92(v89, v85);
  }

  sub_1D1741A30(v77, &qword_1EC642AC0, &qword_1D1E6E810);
  v93 = v148;
  v94 = *(v148 + 16);
  v95 = v150;
  v96 = v94(v150, v148);
  v98 = v97;
  if (v96 == v94(v95, v93) && v98 == v99)
  {
  }

  else
  {
    v100 = sub_1D1E6904C();

    if ((v100 & 1) == 0)
    {
      v114 = v150;
      v153 = v94(v150, v93);
      v154 = v115;
      v151 = v94(v114, v93);
      v152 = v116;
      sub_1D17D8EF0();
      v117 = sub_1D1E685FC();

      v56 = v117 == -1;
      return v56 & 1;
    }
  }

  v101 = v126;
  v102 = v150;
  v103 = v124;
  (v124)(v150, v93);
  v149 = sub_1D1E66A1C();
  v147 = v104;
  v105 = v101;
  v106 = v129;
  v107 = v123;
  v123(v105, v129);
  v108 = v127;
  v103(v102, v93);
  v109 = v147;
  v110 = sub_1D1E66A1C();
  v112 = v111;
  v107(v108, v106);
  if (v149 == v110 && v109 == v112)
  {

    v56 = 0;
  }

  else
  {
    v56 = sub_1D1E6904C();
  }

  return v56 & 1;
}

uint64_t sub_1D1C823C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30) + 48);
  sub_1D17419CC(a1, v17);
  v5 = v18;
  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v6 + 64))(v5, v6);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = (*(v8 + 56))(v7, v8);
  v11 = v10;
  v12 = type metadata accessor for DashboardSortableData();
  v13 = (a2 + *(v12 + 20));
  *v13 = v9;
  v13[1] = v11;
  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  TileInfoBearer.sortID.getter(v14, v15, a2 + *(v12 + 24));
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1D17419CC(a1, a2 + v4);
}

uint64_t DashboardSortableData.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 64))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v10 = v9;
  v11 = type metadata accessor for DashboardSortableData();
  v12 = (a2 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  TileInfoBearer.sortID.getter(v13, v14, a2 + *(v11 + 24));

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1C82A18@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 3);
  v15 = *(a1 + 2);
  v16 = v4;
  v5 = *(a1 + 5);
  v17 = *(a1 + 4);
  v18 = v5;
  v6 = *(a1 + 1);
  v13 = *a1;
  v14 = v6;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC50, &qword_1D1EA2260) + 48));
  sub_1D1741914(&v13, v12);
  DashboardSortableData.init(_:)(a1, a2);
  v8 = v16;
  v7[2] = v15;
  v7[3] = v8;
  v9 = v18;
  v7[4] = v17;
  v7[5] = v9;
  v10 = v14;
  *v7 = v13;
  v7[1] = v10;
  return sub_1D1741914(&v13, v12);
}

uint64_t DashboardSortableData.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v28 - v9;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *(a1 + 2);
  v28[4] = *(a1 + 3);
  v28[5] = v18;
  v19 = *(a1 + 5);
  v28[2] = *(a1 + 6);
  v28[3] = v19;
  v28[1] = *(a1 + 7);
  v28[6] = *(a1 + 9);
  v28[7] = v17;
  v28[8] = *(a1 + 11);
  v20 = sub_1D1E669FC();
  (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  v31 = v16;
  v21 = UmbrellaCategory.localizedDescription.getter();
  v23 = v22;
  v29 = type metadata accessor for DashboardSortableData();
  v30 = a2;
  v24 = (a2 + *(v29 + 20));
  *v24 = v21;
  v24[1] = v23;
  sub_1D1E66A0C();

  v25 = v12[6];
  if (v25(v10, 1, v11) != 1)
  {

    v27 = v12[4];
    v27(v15, v10, v11);
    return (v27)(v30 + *(v29 + 24), v15, v11);
  }

  sub_1D1E66A0C();
  result = (v25)(v8, 1, v11);
  if (result != 1)
  {

    v27 = v12[4];
    v27(v15, v8, v11);
    if (v25(v10, 1, v11) != 1)
    {
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
    }

    return (v27)(v30 + *(v29 + 24), v15, v11);
  }

  __break(1u);
  return result;
}

uint64_t DashboardSortableData.name.getter()
{
  v1 = (v0 + *(type metadata accessor for DashboardSortableData() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DashboardSortableData.sortID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DashboardSortableData() + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DashboardSortableData.init(dateAdded:name:sortID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D1741A90(a1, a5, &qword_1EC642570, &qword_1D1E6C6A0);
  v9 = type metadata accessor for DashboardSortableData();
  v10 = (a5 + *(v9 + 20));
  *v10 = a2;
  v10[1] = a3;
  v11 = *(v9 + 24);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a4, v12);
}

uint64_t DashboardSortableData.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  sub_1D1741C08(v1, &v17 - v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1C86F10(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for DashboardSortableData();
  v12 = (v1 + *(v11 + 20));
  v13 = *v12;
  v14 = v12[1];
  sub_1D1E678EC();
  v15 = *(v11 + 24);
  sub_1D1E66A7C();
  sub_1D1C86F10(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  return sub_1D1E676EC();
}

uint64_t DashboardSortableData.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  sub_1D1E6920C();
  sub_1D1741C08(v1, v10, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1C86F10(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for DashboardSortableData();
  v12 = (v1 + *(v11 + 20));
  v13 = *v12;
  v14 = v12[1];
  sub_1D1E678EC();
  v15 = *(v11 + 24);
  sub_1D1E66A7C();
  sub_1D1C86F10(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C83538(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E669FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  sub_1D1E6920C();
  sub_1D1741C08(v4, v13, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1C86F10(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  v14 = (v4 + *(a2 + 20));
  v15 = *v14;
  v16 = v14[1];
  sub_1D1E678EC();
  v17 = *(a2 + 24);
  sub_1D1E66A7C();
  sub_1D1C86F10(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C837DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v65 = a6;
  v7 = v6;
  v63 = type metadata accessor for DashboardSortableData();
  v13 = *(*(v63 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v63);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v24 = &v54 - v23;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_65;
  }

  v27 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v26 != -1)
  {
    v28 = (a2 - a1) / v26;
    v70 = a1;
    v69 = a4;
    v66 = v26;
    if (v28 < v27 / v26)
    {
      v29 = v28 * v26;
      v62 = v20;
      if (a4 < a1 || a1 + v29 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v61 = a4 + v29;
      v68 = (a4 + v29);
      if (v29 >= 1 && a2 < a3)
      {
        v64 = a5;
        while (1)
        {
          v32 = a3;
          sub_1D1C86EA8(a2, v24, type metadata accessor for DashboardSortableData);
          v33 = v24;
          v34 = v62;
          sub_1D1C86EA8(a4, v62, type metadata accessor for DashboardSortableData);
          v35 = v65(v33, v34, a5);
          if (v7)
          {
            break;
          }

          v36 = v35;
          v67 = 0;
          v37 = a2;
          sub_1D1C86FC0(v34, type metadata accessor for DashboardSortableData);
          sub_1D1C86FC0(v33, type metadata accessor for DashboardSortableData);
          v24 = v33;
          if (v36)
          {
            v38 = a2;
            v39 = v66;
            a2 += v66;
            a3 = v32;
            if (a1 < v37 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v66;
              v7 = v67;
            }

            else
            {
              v7 = v67;
              if (a1 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
                v39 = v66;
              }
            }
          }

          else
          {
            v39 = v66;
            v40 = a4 + v66;
            a3 = v32;
            if (a1 < a4 || a1 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v66;
              v7 = v67;
            }

            else
            {
              v7 = v67;
              if (a1 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v39 = v66;
              }
            }

            v69 = v40;
            a4 = v40;
          }

          a5 = v64;
          a1 += v39;
          v70 = a1;
          if (a4 >= v61 || a2 >= a3)
          {
            goto LABEL_63;
          }
        }

        sub_1D1C86FC0(v34, type metadata accessor for DashboardSortableData);
        sub_1D1C86FC0(v33, type metadata accessor for DashboardSortableData);
      }

LABEL_63:
      sub_1D1DC71BC(&v70, &v69, &v68);

      return 1;
    }

    v30 = v27 / v26 * v26;
    v61 = v22;
    if (a4 < a2 || a2 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_39:
        v41 = a4 + v30;
        if (v30 >= 1)
        {
          v59 = v16;
          v42 = -v26;
          v43 = a4 + v30;
          v64 = a5;
          v56 = -v26;
          v57 = a4;
          do
          {
            v62 = v41;
            v55 = v41;
            v44 = a2 + v42;
            v58 = a2 + v42;
            v60 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v70 = a2;
                v68 = v55;
                goto LABEL_63;
              }

              v46 = a3;
              v47 = a1;
              v48 = v7;
              v66 = v43;
              v49 = v43 + v42;
              v50 = v61;
              sub_1D1C86EA8(v43 + v42, v61, type metadata accessor for DashboardSortableData);
              v51 = v59;
              sub_1D1C86EA8(v44, v59, type metadata accessor for DashboardSortableData);
              v52 = v65(v50, v51, v64);
              v67 = v48;
              if (v48)
              {
                sub_1D1C86FC0(v51, type metadata accessor for DashboardSortableData);
                sub_1D1C86FC0(v50, type metadata accessor for DashboardSortableData);
                v70 = v60;
                v68 = v62;
                goto LABEL_63;
              }

              v53 = v52;
              a3 += v42;
              sub_1D1C86FC0(v51, type metadata accessor for DashboardSortableData);
              sub_1D1C86FC0(v50, type metadata accessor for DashboardSortableData);
              if (v53)
              {
                break;
              }

              a1 = v47;
              if (v46 < v66 || a3 >= v66)
              {
                swift_arrayInitWithTakeFrontToBack();
                v44 = v58;
              }

              else
              {
                v44 = v58;
                if (v46 != v66)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v62 = v49;
              v43 = v49;
              v42 = v56;
              v45 = v49 > v57;
              v7 = v67;
              a2 = v60;
              if (!v45)
              {
                v41 = v62;
                goto LABEL_62;
              }
            }

            a1 = v47;
            if (v46 < v60 || a3 >= v60)
            {
              a2 = v58;
              swift_arrayInitWithTakeFrontToBack();
              v42 = v56;
            }

            else
            {
              a2 = v58;
              v42 = v56;
              if (v46 != v60)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v66;
            v7 = v67;
            v41 = v62;
          }

          while (v66 > v57);
        }

LABEL_62:
        v70 = a2;
        v68 = v41;
        goto LABEL_63;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v26 = v66;
    goto LABEL_39;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel017DashboardSortableB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v30 - v16;
  v18 = *(v15 + 56);
  sub_1D1741C08(a1, &v30 - v16, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(a2, &v17[v18], &qword_1EC642570, &qword_1D1E6C6A0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D1741C08(v17, v12, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      v21 = sub_1D1E6775C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_9:
  v23 = type metadata accessor for DashboardSortableData();
  v24 = *(v23 + 20);
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if (v25 == *v27 && v26 == v27[1] || (sub_1D1E6904C() & 1) != 0)
  {
    v28 = *(v23 + 24);
    v20 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D1C84198(uint64_t a1, char a2, void *a3)
{
  v50 = type metadata accessor for DashboardSortableData();
  v53 = *(v50 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v48 - v13;
  if (*(a1 + 16))
  {
    v51 = *(a1 + 16);
    v52 = a1;
    v15 = *(result + 48);
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v55 = *(v12 + 72);
    v49 = v16;
    sub_1D1741C08(a1 + v16, &v48 - v13, &qword_1EC6436D8, &unk_1D1E71E30);
    sub_1D1C86F58(v14, v8, type metadata accessor for DashboardSortableData);
    sub_1D16EEE20(&v14[v15], v54);
    v17 = *a3;
    v19 = sub_1D171DC84(v8);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      sub_1D172E834(v22, a2 & 1);
      v24 = *a3;
      v25 = sub_1D171DC84(v8);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_27:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v19 = v25;
      v27 = *a3;
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_1D1C86FC0(v8, type metadata accessor for DashboardSortableData);
      v28 = (v27[7] + 40 * v19);
      __swift_destroy_boxed_opaque_existential_1(v28);
      result = sub_1D16EEE20(v54, v28);
LABEL_13:
      v32 = v51 - 1;
      if (v51 == 1)
      {
        return result;
      }

      v33 = v52 + v55 + v49;
      while (1)
      {
        sub_1D1741C08(v33, v14, &qword_1EC6436D8, &unk_1D1E71E30);
        sub_1D1C86F58(v14, v8, type metadata accessor for DashboardSortableData);
        sub_1D16EEE20(&v14[v15], v54);
        v35 = *a3;
        v37 = sub_1D171DC84(v8);
        v38 = v35[2];
        v39 = (v36 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_25;
        }

        v41 = v36;
        if (v35[3] < v40)
        {
          sub_1D172E834(v40, 1);
          v42 = *a3;
          v43 = sub_1D171DC84(v8);
          if ((v41 & 1) != (v44 & 1))
          {
            goto LABEL_27;
          }

          v37 = v43;
        }

        v45 = *a3;
        if (v41)
        {
          sub_1D1C86FC0(v8, type metadata accessor for DashboardSortableData);
          v34 = (v45[7] + 40 * v37);
          __swift_destroy_boxed_opaque_existential_1(v34);
          result = sub_1D16EEE20(v54, v34);
        }

        else
        {
          v45[(v37 >> 6) + 8] |= 1 << v37;
          sub_1D1C86F58(v8, v45[6] + *(v53 + 72) * v37, type metadata accessor for DashboardSortableData);
          result = sub_1D16EEE20(v54, v45[7] + 40 * v37);
          v46 = v45[2];
          v30 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v30)
          {
            goto LABEL_26;
          }

          v45[2] = v47;
        }

        v33 += v55;
        if (!--v32)
        {
          return result;
        }
      }
    }

    if (a2)
    {
      v27 = *a3;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1D173C740();
      v27 = *a3;
      if (v23)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v27[(v19 >> 6) + 8] |= 1 << v19;
    sub_1D1C86F58(v8, v27[6] + *(v53 + 72) * v19, type metadata accessor for DashboardSortableData);
    result = sub_1D16EEE20(v54, v27[7] + 40 * v19);
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v27[2] = v31;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D1C84678(uint64_t a1, char a2, void *a3)
{
  v49[0] = type metadata accessor for DashboardSortableData();
  v50 = *(v49[0] - 8);
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49[0]);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC50, &qword_1D1EA2260);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v9);
  v59 = v49 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return result;
  }

  v15 = (v59 + *(result + 48));
  v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v51 = *(v12 + 72);
  for (i = v14 - 1; ; --i)
  {
    v18 = v59;
    sub_1D1741C08(v16, v59, &qword_1EC64CC50, &qword_1D1EA2260);
    sub_1D1C86F58(v18, v8, type metadata accessor for DashboardSortableData);
    v19 = v15[3];
    v55 = v15[2];
    v56 = v19;
    v20 = v15[5];
    v57 = v15[4];
    v58 = v20;
    v21 = v15[1];
    v53 = *v15;
    v54 = v21;
    v22 = *a3;
    v24 = sub_1D171DC84(v8);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (a2)
      {
        if (v23)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D173DD20();
        if (v28)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1D1731334(v27, a2 & 1);
      v29 = *a3;
      v30 = sub_1D171DC84(v8);
      if ((v28 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v24 = v30;
      if (v28)
      {
LABEL_10:
        v32 = *a3;
        sub_1D1C86FC0(v8, type metadata accessor for DashboardSortableData);
        v33 = (v32[7] + 96 * v24);
        v35 = v33[4];
        v34 = v33[5];
        v36 = v33[2];
        v52[3] = v33[3];
        v52[4] = v35;
        v52[5] = v34;
        v37 = v33[1];
        v52[0] = *v33;
        v52[1] = v37;
        v52[2] = v36;
        v38 = v56;
        v33[2] = v55;
        v33[3] = v38;
        v39 = v58;
        v33[4] = v57;
        v33[5] = v39;
        v40 = v54;
        *v33 = v53;
        v33[1] = v40;
        result = sub_1D1B539E4(v52);
        if (!i)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    v41 = *a3;
    *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    result = sub_1D1C86F58(v8, v41[6] + *(v50 + 72) * v24, type metadata accessor for DashboardSortableData);
    v42 = (v41[7] + 96 * v24);
    v43 = v54;
    *v42 = v53;
    v42[1] = v43;
    v44 = v58;
    v42[4] = v57;
    v42[5] = v44;
    v45 = v56;
    v42[2] = v55;
    v42[3] = v45;
    v46 = v41[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_18;
    }

    v41[2] = v48;
    if (!i)
    {
      return result;
    }

LABEL_15:
    v16 += v51;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1C84A14(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v236 = a7;
  v217 = a6;
  v220 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v234 = &v214 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v233 = &v214 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v214 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v214 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v240 = &v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v214 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v222 = &v214 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v223 = &v214 - v31;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v32 = *(*(v246 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v246);
  v247 = &v214 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v225 = &v214 - v35;
  v36 = type metadata accessor for DashboardSortableData();
  v237 = *(v36 - 8);
  v37 = *(v237 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v227 = &v214 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v252 = &v214 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v258 = &v214 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v257 = &v214 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v245 = &v214 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v244 = &v214 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v50);
  v238 = a3;
  v53 = a3[1];
  v255 = a5;
  if (v53 < 1)
  {
    swift_bridgeObjectRetain_n();
    v55 = MEMORY[0x1E69E7CC0];
LABEL_151:
    v53 = *v220;
    if (!*v220)
    {
      goto LABEL_191;
    }

    v11 = v55;
    v36 = v255;
    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_153:
      v263 = v11;
      v202 = *(v11 + 16);
      if (v202 >= 2)
      {
        do
        {
          v203 = *v238;
          if (!*v238)
          {
            goto LABEL_189;
          }

          v204 = *(v11 + 16 * v202);
          v205 = v11;
          v206 = *(v11 + 16 * (v202 - 1) + 40);
          v207 = *(v237 + 72);
          v208 = v203 + v207 * v204;
          v209 = v203 + v207 * *(v11 + 16 * (v202 - 1) + 32);
          v210 = v203 + v207 * v206;

          v211 = v208;
          v212 = v243;
          sub_1D1C837DC(v211, v209, v210, v53, v36, v236);
          v11 = v212;
          if (v212)
          {
            break;
          }

          if (v206 < v204)
          {
            goto LABEL_178;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v205 = sub_1D1E0BE44(v205);
          }

          if (v202 - 2 >= *(v205 + 2))
          {
            goto LABEL_179;
          }

          v243 = 0;
          v213 = &v205[16 * v202];
          *v213 = v204;
          *(v213 + 1) = v206;
          v263 = v205;
          sub_1D1E0BDB8(v202 - 1);
          v11 = v263;
          v202 = *(v263 + 16);
        }

        while (v202 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_185:
    v11 = sub_1D1E0BE44(v11);
    goto LABEL_153;
  }

  v215 = &v214 - v51;
  v216 = v52;
  v253 = (v11 + 48);
  v235 = (v11 + 32);
  v242 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v54 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  v219 = a4;
  v248 = v10;
  v221 = v19;
  v224 = v21;
  v239 = v28;
  v56 = v247;
  v256 = v36;
  v57 = v10;
LABEL_4:
  v58 = v54;
  v59 = v54 + 1;
  v228 = v55;
  if (v59 >= v53)
  {
    v68 = v59;
    goto LABEL_51;
  }

  v241 = v53;
  v60 = *v238;
  v53 = *(v237 + 72);
  v61 = *v238 + v53 * v59;
  v62 = v215;
  sub_1D1C86EA8(v61, v215, type metadata accessor for DashboardSortableData);
  v63 = v216;
  sub_1D1C86EA8(v60 + v53 * v58, v216, type metadata accessor for DashboardSortableData);
  v64 = v58;
  v65 = v243;
  LODWORD(v251) = v217(v62, v63, v255);
  if (v65)
  {
    sub_1D1C86FC0(v63, type metadata accessor for DashboardSortableData);
    sub_1D1C86FC0(v62, type metadata accessor for DashboardSortableData);
    swift_bridgeObjectRelease_n();
  }

  v243 = 0;
  v11 = type metadata accessor for DashboardSortableData;
  sub_1D1C86FC0(v63, type metadata accessor for DashboardSortableData);
  sub_1D1C86FC0(v62, type metadata accessor for DashboardSortableData);
  v218 = v58;
  v66 = v58 + 2;
  v67 = v60 + v53 * (v64 + 2);
  v68 = v241;
  v56 = v247;
  v69 = v53;
  v254 = v53;
  while (v68 != v66)
  {
    v70 = v244;
    sub_1D1C86EA8(v67, v244, type metadata accessor for DashboardSortableData);
    v71 = v245;
    sub_1D1C86EA8(v61, v245, type metadata accessor for DashboardSortableData);
    v250 = *(v36 + 24);
    v72 = v70 + v250;
    v53 = v255;
    v73 = sub_1D18E4158(v72, v255);
    v75 = v74;
    v76 = sub_1D18E4158(v71 + *(v36 + 24), v53);
    if (v75)
    {
      if ((v77 & 1) == 0)
      {
        v11 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if (v77)
      {
        v11 = 1;
        goto LABEL_32;
      }

      if (v73 != v76)
      {
        v11 = v73 < v76;
        goto LABEL_32;
      }
    }

    v78 = *(v246 + 48);
    v53 = v225;
    sub_1D1741C08(v244, v225, &qword_1EC642570, &qword_1D1E6C6A0);
    v249 = v78;
    sub_1D1741C08(v245, v53 + v78, &qword_1EC642570, &qword_1D1E6C6A0);
    v79 = *v253;
    v80 = v248;
    if ((*v253)(v53, 1, v248) == 1)
    {
      if (v79(v53 + v249, 1, v80) != 1)
      {
        sub_1D1741A30(v53 + v249, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
        v11 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v81 = v223;
      sub_1D1741C08(v53, v223, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v79(v53 + v249, 1, v80) == 1)
      {
        (*v242)(v81, v80);
        sub_1D1741A30(v53 + v249, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
        v11 = 1;
        v56 = v247;
        goto LABEL_32;
      }

      sub_1D1741C08(v53 + v249, v222, &qword_1EC642570, &qword_1D1E6C6A0);
      v82 = *v235;
      (*v235)(v224, v81, v80);
      v82(v221, v222, v80);
      sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      if ((sub_1D1E6775C() & 1) == 0)
      {
        v98 = v221;
        v11 = sub_1D1E6696C();
        v99 = *v242;
        (*v242)(v98, v80);
        v99(v224, v80);
        sub_1D1741A30(v53 + v249, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
        v56 = v247;
        goto LABEL_32;
      }

      v83 = *v242;
      (*v242)(v221, v80);
      v83(v224, v80);
      v56 = v247;
    }

    sub_1D1741A30(v53, &qword_1EC642AC0, &qword_1D1E6E810);
    v84 = *(v256 + 20);
    v85 = (v244 + v84);
    v86 = *(v244 + v84);
    v53 = *(v244 + v84 + 8);
    v87 = (v245 + v84);
    v88 = *v87;
    v89 = v87[1];
    if (*v85 == *v87 && v53 == v89 || (v90 = *v85, v91 = v85[1], v92 = *v87, v93 = v87[1], (sub_1D1E6904C() & 1) != 0))
    {
      v94 = sub_1D1E66A1C();
      v53 = v95;
      v96 = sub_1D1E66A1C();
      v68 = v241;
      if (v94 == v96 && v53 == v97)
      {

        v11 = 0;
      }

      else
      {
        v11 = sub_1D1E6904C();
      }

      v36 = v256;
      goto LABEL_33;
    }

    v261 = v86;
    v262 = v53;
    v259 = v88;
    v260 = v89;
    sub_1D17D8EF0();
    v11 = sub_1D1E685FC() == -1;
LABEL_32:
    v36 = v256;
    v68 = v241;
LABEL_33:
    sub_1D1C86FC0(v245, type metadata accessor for DashboardSortableData);
    sub_1D1C86FC0(v244, type metadata accessor for DashboardSortableData);
    ++v66;
    v69 = v254;
    v67 += v254;
    v61 += v254;
    if ((v251 ^ v11))
    {
      v68 = v66 - 1;
      break;
    }
  }

  a4 = v219;
  v58 = v218;
  if ((v251 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v68 < v218)
  {
    goto LABEL_184;
  }

  if (v218 >= v68)
  {
LABEL_49:
    v57 = v248;
    goto LABEL_51;
  }

  v53 = v69 * (v68 - 1);
  v100 = v68 * v69;
  v101 = v68;
  v102 = v218;
  v103 = v218 * v69;
  do
  {
    if (v102 != --v68)
    {
      v104 = *v238;
      if (!*v238)
      {
        goto LABEL_188;
      }

      v11 = v104 + v103;
      sub_1D1C86F58(v104 + v103, v227, type metadata accessor for DashboardSortableData);
      if (v103 < v53 || v11 >= v104 + v100)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v103 != v53)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      sub_1D1C86F58(v227, v104 + v53, type metadata accessor for DashboardSortableData);
      v69 = v254;
    }

    ++v102;
    v53 -= v69;
    v100 -= v69;
    v103 += v69;
  }

  while (v102 < v68);
  a4 = v219;
  v68 = v101;
  v58 = v218;
  v56 = v247;
  v57 = v248;
LABEL_51:
  v105 = v238[1];
  if (v68 >= v105)
  {
    goto LABEL_60;
  }

  if (__OFSUB__(v68, v58))
  {
    goto LABEL_181;
  }

  if (v68 - v58 >= a4)
  {
LABEL_60:
    v107 = v68;
    if (v68 < v58)
    {
      goto LABEL_180;
    }

    goto LABEL_61;
  }

  if (__OFADD__(v58, a4))
  {
    goto LABEL_182;
  }

  if (v58 + a4 >= v105)
  {
    v106 = v238[1];
  }

  else
  {
    v106 = v58 + a4;
  }

  if (v106 < v58)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  if (v68 == v106)
  {
    goto LABEL_60;
  }

  v162 = *v238;
  v163 = *(v237 + 72);
  v164 = *v238 + v163 * (v68 - 1);
  v250 = -v163;
  v218 = v58;
  v165 = v58 - v68;
  v251 = v162;
  v226 = v163;
  v166 = v162 + v68 * v163;
  v229 = v106;
  while (2)
  {
    v241 = v68;
    v230 = v166;
    v231 = v165;
    v167 = v165;
    v232 = v164;
    v168 = v164;
LABEL_115:
    v53 = v56;
    v169 = v257;
    sub_1D1C86EA8(v166, v257, type metadata accessor for DashboardSortableData);
    v170 = v258;
    sub_1D1C86EA8(v168, v258, type metadata accessor for DashboardSortableData);
    v254 = *(v36 + 24);
    v171 = v255;
    v172 = sub_1D18E4158(v169 + v254, v255);
    LOBYTE(v169) = v173;
    v174 = *(v36 + 24);
    v175 = sub_1D18E4158(v170 + v174, v171);
    if ((v169 & 1) == 0)
    {
      v177 = v253;
      v56 = v53;
      if (v176)
      {
        goto LABEL_125;
      }

      if (v172 == v175)
      {
        goto LABEL_120;
      }

      v11 = v172 < v175;
      goto LABEL_139;
    }

    v177 = v253;
    v56 = v53;
    if ((v176 & 1) == 0)
    {
      goto LABEL_112;
    }

LABEL_120:
    v249 = v174;
    v178 = *(v246 + 48);
    v53 = &qword_1D1E6C6A0;
    sub_1D1741C08(v257, v56, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v258, v56 + v178, &qword_1EC642570, &qword_1D1E6C6A0);
    v179 = *v177;
    v180 = v248;
    if ((*v177)(v56, 1, v248) == 1)
    {
      if (v179(v56 + v178, 1, v180) == 1)
      {
        goto LABEL_128;
      }

      v53 = &qword_1EC642570;
      sub_1D1741A30(v56 + v178, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v56, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_112:
      v11 = type metadata accessor for DashboardSortableData;
      sub_1D1C86FC0(v258, type metadata accessor for DashboardSortableData);
      sub_1D1C86FC0(v257, type metadata accessor for DashboardSortableData);
      v36 = v256;
LABEL_113:
      v68 = v241 + 1;
      v164 = v232 + v226;
      v165 = v231 - 1;
      v166 = v230 + v226;
      v107 = v229;
      if (v241 + 1 != v229)
      {
        continue;
      }

      v58 = v218;
      v57 = v248;
      if (v229 < v218)
      {
        goto LABEL_180;
      }

LABEL_61:
      v108 = v57;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v55 = v228;
      }

      else
      {
        v55 = sub_1D177D070(0, *(v228 + 2) + 1, 1, v228);
      }

      v53 = *(v55 + 2);
      v109 = *(v55 + 3);
      v11 = v53 + 1;
      if (v53 >= v109 >> 1)
      {
        v55 = sub_1D177D070((v109 > 1), v53 + 1, 1, v55);
      }

      v57 = v108;
      *(v55 + 2) = v11;
      v110 = &v55[16 * v53];
      *(v110 + 4) = v58;
      *(v110 + 5) = v107;
      v229 = v107;
      v111 = *v220;
      if (!*v220)
      {
        goto LABEL_190;
      }

      if (v53)
      {
        while (2)
        {
          v112 = v11 - 1;
          if (v11 >= 4)
          {
            v117 = &v55[16 * v11 + 32];
            v118 = *(v117 - 64);
            v119 = *(v117 - 56);
            v123 = __OFSUB__(v119, v118);
            v120 = v119 - v118;
            if (v123)
            {
              goto LABEL_167;
            }

            v122 = *(v117 - 48);
            v121 = *(v117 - 40);
            v123 = __OFSUB__(v121, v122);
            v115 = v121 - v122;
            v116 = v123;
            if (v123)
            {
              goto LABEL_168;
            }

            v124 = &v55[16 * v11];
            v126 = *v124;
            v125 = *(v124 + 1);
            v123 = __OFSUB__(v125, v126);
            v127 = v125 - v126;
            if (v123)
            {
              goto LABEL_170;
            }

            v123 = __OFADD__(v115, v127);
            v128 = v115 + v127;
            if (v123)
            {
              goto LABEL_173;
            }

            if (v128 >= v120)
            {
              v146 = &v55[16 * v112 + 32];
              v148 = *v146;
              v147 = *(v146 + 1);
              v123 = __OFSUB__(v147, v148);
              v149 = v147 - v148;
              if (v123)
              {
                goto LABEL_177;
              }

              if (v115 < v149)
              {
                v112 = v11 - 2;
              }
            }

            else
            {
LABEL_80:
              if (v116)
              {
                goto LABEL_169;
              }

              v129 = &v55[16 * v11];
              v131 = *v129;
              v130 = *(v129 + 1);
              v132 = __OFSUB__(v130, v131);
              v133 = v130 - v131;
              v134 = v132;
              if (v132)
              {
                goto LABEL_172;
              }

              v135 = &v55[16 * v112 + 32];
              v137 = *v135;
              v136 = *(v135 + 1);
              v123 = __OFSUB__(v136, v137);
              v138 = v136 - v137;
              if (v123)
              {
                goto LABEL_175;
              }

              if (__OFADD__(v133, v138))
              {
                goto LABEL_176;
              }

              if (v133 + v138 < v115)
              {
                goto LABEL_94;
              }

              if (v115 < v138)
              {
                v112 = v11 - 2;
              }
            }
          }

          else
          {
            if (v11 == 3)
            {
              v113 = *(v55 + 4);
              v114 = *(v55 + 5);
              v123 = __OFSUB__(v114, v113);
              v115 = v114 - v113;
              v116 = v123;
              goto LABEL_80;
            }

            v139 = &v55[16 * v11];
            v141 = *v139;
            v140 = *(v139 + 1);
            v123 = __OFSUB__(v140, v141);
            v133 = v140 - v141;
            v134 = v123;
LABEL_94:
            if (v134)
            {
              goto LABEL_171;
            }

            v142 = &v55[16 * v112];
            v144 = *(v142 + 4);
            v143 = *(v142 + 5);
            v123 = __OFSUB__(v143, v144);
            v145 = v143 - v144;
            if (v123)
            {
              goto LABEL_174;
            }

            if (v145 < v133)
            {
              break;
            }
          }

          v53 = v112 - 1;
          if (v112 - 1 >= v11)
          {
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v150 = *v238;
          if (!*v238)
          {
            goto LABEL_187;
          }

          v36 = v55;
          v151 = *&v55[16 * v53 + 32];
          v152 = *&v55[16 * v112 + 40];
          v153 = *(v237 + 72);
          v154 = v150 + v153 * v151;
          v155 = v150 + v153 * *&v55[16 * v112 + 32];
          v156 = v150 + v153 * v152;
          v157 = v255;

          v158 = v154;
          v159 = v243;
          sub_1D1C837DC(v158, v155, v156, v111, v157, v236);
          v11 = v159;
          if (v159)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v152 < v151)
          {
            goto LABEL_165;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v160 = v36;
          }

          else
          {
            v160 = sub_1D1E0BE44(v36);
          }

          v36 = v256;
          if (v53 >= *(v160 + 2))
          {
            goto LABEL_166;
          }

          v243 = 0;
          v161 = &v160[16 * v53];
          *(v161 + 4) = v151;
          *(v161 + 5) = v152;
          v263 = v160;
          sub_1D1E0BDB8(v112);
          v55 = v263;
          v11 = *(v263 + 16);
          v56 = v247;
          v57 = v248;
          if (v11 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v53 = v238[1];
      v54 = v229;
      a4 = v219;
      if (v229 >= v53)
      {
        goto LABEL_151;
      }

      goto LABEL_4;
    }

    break;
  }

  v181 = v239;
  sub_1D1741C08(v56, v239, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v179(v56 + v178, 1, v180) != 1)
  {
    sub_1D1741C08(v56 + v178, v240, &qword_1EC642570, &qword_1D1E6C6A0);
    v182 = *v235;
    v183 = v233;
    (*v235)(v233, v181, v180);
    v53 = v234;
    v182(v234, v240, v180);
    sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if (sub_1D1E6775C())
    {
      v184 = *v242;
      (*v242)(v53, v180);
      v184(v183, v180);
      v56 = v247;
LABEL_128:
      sub_1D1741A30(v56, &qword_1EC642AC0, &qword_1D1E6E810);
      v185 = *(v256 + 20);
      v186 = *(v257 + v185);
      v187 = *(v257 + v185 + 8);
      v188 = (v258 + v185);
      v190 = *v188;
      v189 = v188[1];
      v191 = v186 == *v188 && v187 == v189;
      if (v191 || (v192 = *v188, v193 = v188[1], (sub_1D1E6904C() & 1) != 0))
      {
        v194 = sub_1D1E66A1C();
        v196 = v195;
        if (v194 == sub_1D1E66A1C() && v196 == v197)
        {

          v56 = v247;
          goto LABEL_112;
        }

        v11 = sub_1D1E6904C();

        v56 = v247;
      }

      else
      {
        v261 = v186;
        v262 = v187;
        v259 = v190;
        v260 = v189;
        sub_1D17D8EF0();
        v11 = sub_1D1E685FC() == -1;
        v56 = v247;
      }
    }

    else
    {
      v11 = sub_1D1E6696C();
      v198 = v53;
      v199 = *v242;
      (*v242)(v198, v180);
      v199(v183, v180);
      v56 = v247;
      v53 = &qword_1D1E6C6A0;
      sub_1D1741A30(&v247[v178], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v56, &qword_1EC642570, &qword_1D1E6C6A0);
    }

LABEL_139:
    sub_1D1C86FC0(v258, type metadata accessor for DashboardSortableData);
    sub_1D1C86FC0(v257, type metadata accessor for DashboardSortableData);
    v36 = v256;
    if ((v11 & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_140;
  }

  (*v242)(v181, v180);
  sub_1D1741A30(v56 + v178, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v56, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_125:
  sub_1D1C86FC0(v258, type metadata accessor for DashboardSortableData);
  sub_1D1C86FC0(v257, type metadata accessor for DashboardSortableData);
  v36 = v256;
LABEL_140:
  if (v251)
  {
    v11 = type metadata accessor for DashboardSortableData;
    v53 = v252;
    sub_1D1C86F58(v166, v252, type metadata accessor for DashboardSortableData);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C86F58(v53, v168, type metadata accessor for DashboardSortableData);
    v168 += v250;
    v166 += v250;
    if (__CFADD__(v167++, 1))
    {
      goto LABEL_113;
    }

    goto LABEL_115;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_188:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_189:

  __break(1u);
LABEL_190:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_191:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1C861FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v102 = a5;
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v81[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v81[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v86 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v81[-v20];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v21 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v81[-v22];
  v23 = type metadata accessor for DashboardSortableData();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v101 = &v81[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v111 = &v81[-v28];
  result = MEMORY[0x1EEE9AC00](v27);
  v106 = &v81[-v31];
  v83 = a2;
  if (a3 != a2)
  {
    v32 = result;
    v33 = *a4;
    v34 = *(v30 + 72);
    v35 = (v10 + 48);
    v84 = (v10 + 32);
    v91 = (v10 + 8);
    v36 = v33 + v34 * (a3 - 1);
    v99 = -v34;
    v100 = v33;
    v37 = a1 - a3;
    v82 = v34;
    v38 = v33 + v34 * a3;
    v104 = v9;
    v85 = v14;
    v94 = v35;
    v95 = result;
LABEL_6:
    v90 = a3;
    v87 = v38;
    v88 = v37;
    v39 = v37;
    v89 = v36;
    while (1)
    {
      v105 = v39;
      v40 = v106;
      sub_1D1C86EA8(v38, v106, type metadata accessor for DashboardSortableData);
      v41 = v111;
      sub_1D1C86EA8(v36, v111, type metadata accessor for DashboardSortableData);
      v42 = *(v32 + 24);
      v43 = v102;
      v44 = sub_1D18E4158(&v40[v42], v102);
      v46 = v45;
      v47 = *(v32 + 24);
      v48 = sub_1D18E4158(&v41[v47], v43);
      if (v46)
      {
        v103 = v42;
        v50 = v98;
        v51 = v104;
        if ((v49 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v51 = v104;
        if (v49)
        {
          goto LABEL_17;
        }

        v103 = v42;
        v50 = v98;
        if (v44 != v48)
        {
          v77 = v44 < v48;
          goto LABEL_31;
        }
      }

      v52 = v96;
      v53 = *(v97 + 48);
      sub_1D1741C08(v106, v96, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v111, &v52[v53], &qword_1EC642570, &qword_1D1E6C6A0);
      v54 = *v94;
      if ((*v94)(v52, 1, v51) == 1)
      {
        if (v54(&v52[v53], 1, v51) != 1)
        {
          sub_1D1741A30(&v52[v53], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v52, &qword_1EC642570, &qword_1D1E6C6A0);
          v32 = v95;
LABEL_4:
          sub_1D1C86FC0(v111, type metadata accessor for DashboardSortableData);
          result = sub_1D1C86FC0(v106, type metadata accessor for DashboardSortableData);
LABEL_5:
          a3 = v90 + 1;
          v36 = v89 + v82;
          v37 = v88 - 1;
          v38 = v87 + v82;
          if (v90 + 1 == v83)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v93 = v47;
      v55 = v92;
      sub_1D1741C08(v52, v92, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v54(&v52[v53], 1, v51) == 1)
      {
        (*v91)(v55, v51);
        sub_1D1741A30(&v52[v53], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v52, &qword_1EC642570, &qword_1D1E6C6A0);
        v32 = v95;
LABEL_17:
        sub_1D1C86FC0(v111, type metadata accessor for DashboardSortableData);
        result = sub_1D1C86FC0(v106, type metadata accessor for DashboardSortableData);
        v56 = v105;
        goto LABEL_32;
      }

      v57 = v86;
      sub_1D1741C08(&v52[v53], v86, &qword_1EC642570, &qword_1D1E6C6A0);
      v58 = *v84;
      (*v84)(v50, v55, v104);
      v59 = v50;
      v60 = v85;
      v61 = v57;
      v62 = v104;
      v58(v85, v61, v104);
      sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      if (sub_1D1E6775C())
      {
        v63 = *v91;
        (*v91)(v60, v62);
        v63(v59, v62);
LABEL_20:
        sub_1D1741A30(v52, &qword_1EC642AC0, &qword_1D1E6E810);
        v32 = v95;
        v64 = *(v95 + 20);
        v65 = *&v106[v64];
        v66 = *&v106[v64 + 8];
        v67 = &v111[v64];
        v68 = *v67;
        v69 = v67[1];
        v70 = v65 == *v67 && v66 == v69;
        if (v70 || (v71 = *v67, v72 = v67[1], (sub_1D1E6904C() & 1) != 0))
        {
          v73 = sub_1D1E66A1C();
          v75 = v74;
          if (v73 == sub_1D1E66A1C() && v75 == v76)
          {

            goto LABEL_4;
          }

          v77 = sub_1D1E6904C();
        }

        else
        {
          v109 = v65;
          v110 = v66;
          v107 = v68;
          v108 = v69;
          sub_1D17D8EF0();
          v77 = sub_1D1E685FC() == -1;
        }

        goto LABEL_31;
      }

      v77 = sub_1D1E6696C();
      v78 = *v91;
      (*v91)(v60, v62);
      v78(v98, v62);
      sub_1D1741A30(&v52[v53], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v52, &qword_1EC642570, &qword_1D1E6C6A0);
      v32 = v95;
LABEL_31:
      sub_1D1C86FC0(v111, type metadata accessor for DashboardSortableData);
      result = sub_1D1C86FC0(v106, type metadata accessor for DashboardSortableData);
      v56 = v105;
      if ((v77 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v100)
      {
        __break(1u);
        return result;
      }

      v79 = v101;
      sub_1D1C86F58(v38, v101, type metadata accessor for DashboardSortableData);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C86F58(v79, v36, type metadata accessor for DashboardSortableData);
      v36 += v99;
      v38 += v99;
      v80 = __CFADD__(v56, 1);
      v39 = v56 + 1;
      if (v80)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C86AE8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DashboardSortableData();
        v10 = sub_1D1E67C8C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for DashboardSortableData() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;

      sub_1D1C84A14(v12, v13, a1, v8, a2, a3, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_1D1C861FC(0, v6, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C86C80(void **a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DashboardSortableData() - 8);
  v7 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D1E0C0BC(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;

  sub_1D1C86AE8(v10, a2, a3);

  *a1 = v7;
  return swift_bridgeObjectRelease_n();
}

void sub_1D1C86E1C()
{
  sub_1D17B77BC();
  if (v0 <= 0x3F)
  {
    sub_1D1E66A7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D1C86EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C86F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1C86F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C86FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ActionService()
{
  result = qword_1EC64CC78;
  if (!qword_1EC64CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActionService.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionService() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActionService.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionService() + 32);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionService.mediaSourceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionService() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ActionService.customIconSymbol.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionService() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActionService.serviceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActionService();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ActionService.displayServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActionService();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ActionService.serviceSubKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActionService();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t ActionService.linkedStaticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 56));
}

uint64_t ActionService.staticCharacteristicsBag.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ActionService() + 60));
}

uint64_t ActionService.staticProfileBag.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActionService() + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ActionService.bridgedValveServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 68));
}

uint64_t ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a2;
  v80 = a3;
  v6 = type metadata accessor for StaticService(0);
  v73 = *(v6 - 1);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for ActionService();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - v17;
  v19 = sub_1D1E66A7C();
  v20 = *(*(v19 - 8) + 16);
  v20(a4, a1, v19);
  v21 = (a1 + v6[5]);
  v22 = *v21;
  v23 = v21[1];
  v24 = (a4 + v12[5]);
  *v24 = v22;
  v24[1] = v23;
  v72 = v23;
  *(a4 + v12[6]) = *(a1 + v6[6]);
  *(a4 + v12[7]) = *(a1 + v6[7]);
  v20(a4 + v12[8], a1 + v6[11], v19);
  v25 = a1 + v6[12];
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  v27 = a4 + v12[9];
  *v27 = v26;
  *(v27 + 8) = v25;
  v28 = (a1 + v6[25]);
  v29 = *v28;
  v30 = v28[1];
  v31 = (a4 + v12[10]);
  *v31 = v29;
  v31[1] = v30;
  v32 = *(a1 + v6[26]);
  *(a4 + v12[11]) = v32;
  if (*(a1 + v6[28]) != 53)
  {
    v32 = *(a1 + v6[28]);
  }

  *(a4 + v12[12]) = v32;
  v33 = *(a1 + v6[27]);
  v76 = a4;
  v77 = v12;
  *(a4 + v12[13]) = v33;
  v74 = a1;
  v75 = v6;
  v34 = *(a1 + v6[31]);
  v35 = *(v34 + 16);
  if (v35)
  {
    *&v83 = MEMORY[0x1E69E7CC0];

    sub_1D178DC80(0, v35, 0);
    v36 = v83;
    v37 = v34 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v38 = *(v73 + 72);
    do
    {
      sub_1D1C8D2B4(v37, v11, type metadata accessor for StaticService);
      v39 = v78;
      sub_1D1C8D2B4(v11, v78, type metadata accessor for StaticService);
      v40 = v80;

      v41 = v79;

      ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)(v39, v41, v40);
      sub_1D1C8D31C(v11, type metadata accessor for StaticService);
      *&v83 = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D178DC80(v42 > 1, v43 + 1, 1);
        v36 = v83;
      }

      *(v36 + 16) = v43 + 1;
      sub_1D1C8D398(v18, v36 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v43, type metadata accessor for ActionService);
      v37 += v38;
      --v35;
    }

    while (v35);
    a1 = v74;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v44 = v79;
  v45 = v76;
  *(v76 + v77[14]) = v36;
  v84 = sub_1D1C8ACE8(a1, v44);
  v46 = v75;
  v47 = (a1 + v75[33]);
  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
  v51 = v80;

  v52 = sub_1D1C8AAD8(v50, v48, v51, &v84);

  v53 = v84;
  v54 = sub_1D1C8C368(v84, *(a1 + v46[32]));
  v55 = v47[1];
  v81 = *v47;
  v82 = v55;

  sub_1D1B9F16C(v52, &v83);

  v56 = v77;
  *(v45 + v77[16]) = v83;
  *(v45 + v56[15]) = v54;
  v57 = *(a1 + v46[36]);
  v58 = *(v57 + 16);
  if (v58)
  {
    v72 = v53;
    *&v83 = MEMORY[0x1E69E7CC0];
    sub_1D178DC80(0, v58, 0);
    v59 = v83;
    v60 = v57 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v61 = *(v73 + 72);
    v62 = v71;
    do
    {
      sub_1D1C8D2B4(v60, v11, type metadata accessor for StaticService);
      v63 = v78;
      sub_1D1C8D2B4(v11, v78, type metadata accessor for StaticService);
      v64 = v80;

      v65 = v79;

      ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)(v63, v65, v64);
      sub_1D1C8D31C(v11, type metadata accessor for StaticService);
      *&v83 = v59;
      v67 = *(v59 + 16);
      v66 = *(v59 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1D178DC80(v66 > 1, v67 + 1, 1);
        v59 = v83;
      }

      *(v59 + 16) = v67 + 1;
      sub_1D1C8D398(v62, v59 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v67, type metadata accessor for ActionService);
      v60 += v61;
      --v58;
    }

    while (v58);

    a1 = v74;
  }

  else
  {

    v59 = MEMORY[0x1E69E7CC0];
  }

  v69 = v76;
  v68 = v77;
  *(v76 + v77[17]) = v59;
  sub_1D1741C08(a1 + v75[39], v69 + v68[18], &qword_1EC644870, &unk_1D1EABA00);
  return sub_1D1C8D31C(a1, type metadata accessor for StaticService);
}

void sub_1D1C87B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v55[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55[0] = v55 - v6;
  v7 = sub_1D1E66A7C();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v10 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v12 = v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v57 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v55 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v55 - v20;
  sub_1D1741C08(a2, &v64, &qword_1EC646C38, &qword_1D1E82548);
  v22 = v64;
  __swift_destroy_boxed_opaque_existential_1(v65);
  sub_1D1741C08(a2, &v64, &qword_1EC646C38, &qword_1D1E82548);

  sub_1D1742194(v65, v63);
  v59 = v22;
  v23 = [v22 service];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 uniqueIdentifier];

    sub_1D1E66A5C();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v66;
  v28 = *(v66 + 56);
  v28(v21, v26, 1, v7);
  (*(v27 + 16))(v19, v60, v7);
  v28(v19, 0, 1, v7);
  v29 = *(v58 + 48);
  sub_1D1741C08(v21, v12, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v19, &v12[v29], &qword_1EC642590, qword_1D1E71260);
  v30 = *(v27 + 48);
  if (v30(v12, 1, v7) != 1)
  {
    v31 = v57;
    sub_1D1741C08(v12, v57, &qword_1EC642590, qword_1D1E71260);
    if (v30(&v12[v29], 1, v7) != 1)
    {
      v32 = v66;
      v33 = v56;
      (*(v66 + 32))(v56, &v12[v29], v7);
      sub_1D1C8D400(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      LODWORD(v58) = sub_1D1E6775C();
      v34 = *(v32 + 8);
      v34(v33, v7);
      sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
      v34(v31, v7);
      sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
      if (v58)
      {
        goto LABEL_12;
      }

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v63);

      return;
    }

    sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    (*(v66 + 8))(v31, v7);
LABEL_9:
    sub_1D1741A30(v12, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_10;
  }

  sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
  if (v30(&v12[v29], 1, v7) != 1)
  {
    goto LABEL_9;
  }

  sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
LABEL_12:
  v35 = *(v60 + *(type metadata accessor for StaticService(0) + 104));
  LOBYTE(v64) = v35;
  v36 = ServiceKind.requiredCharacteristicKinds.getter();
  LOBYTE(v61[0]) = v35;
  v37 = ServiceKind.optionalCharacteristicKinds.getter();
  v38 = sub_1D18C0104(v37, v36);
  v39 = v59;
  v40 = [v59 characteristicType];
  v41 = sub_1D1E6781C();
  v43 = v42;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  CharacteristicKind.init(rawValue:)(v44);
  if (v64 == 174)
  {
    v45 = 0;
  }

  else
  {
    v45 = v64;
  }

  v46 = sub_1D171974C(v45, v38);

  if (v46)
  {
    v47 = [v39 characteristicType];
    v48 = sub_1D1E6781C();
    v50 = v49;

    v51._countAndFlagsBits = v48;
    v51._object = v50;
    CharacteristicKind.init(rawValue:)(v51);
    if (v64 == 174)
    {
      v52 = 0;
    }

    else
    {
      v52 = v64;
    }

    sub_1D1741970(v63, &v64);
    v61[1] = 0;
    v61[2] = 0;
    v61[0] = 1;
    v62 = 3;
    v53 = v39;
    v54 = v55[0];
    StaticCharacteristic.init(from:value:loadingState:)(v53, &v64, v61, v55[0]);
    sub_1D1B0F194(v54, v52);

    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }
}

unint64_t sub_1D1C88250(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v130 = a1;
  v129 = a4;
  v6 = sub_1D1E669FC();
  v127 = *(v6 - 8);
  v128 = v6;
  v7 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v131 = v9;
  v132 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v125 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v116 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v113 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v117 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v115 = &v113 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v121 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v113 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v119 = &v113 - v31;
  v118 = type metadata accessor for StaticCharacteristic();
  v122 = *(v118 - 8);
  v32 = *(v122 + 64);
  v33 = MEMORY[0x1EEE9AC00](v118);
  v113 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v123 = &v113 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v113 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v113 - v44;
  v46 = a2;
  sub_1D1741C08(a2, &v113 - v44, &qword_1EC645578, &qword_1D1E79B20);
  v47 = *(v36 + 48);
  if (!*(a3 + 16) || (v48 = sub_1D1742188(v45), (v49 & 1) == 0))
  {
    sub_1D1C8D31C(&v45[v47], type metadata accessor for StaticLightProfile);
    v51 = v131;
    v52 = *(v132 + 8);
    v52(v45, v131);
LABEL_11:
    v70 = sub_1D179B3D4(&unk_1F4D61268);
    v71 = *v129;

    v73 = sub_1D17829C8(v72);
    v74 = sub_1D1E63FD8(v70, v73);

    v75 = v74[2];

    if (v75)
    {
      v76 = 0;
    }

    else
    {
      sub_1D1741C08(v46, v40, &qword_1EC645578, &qword_1D1E79B20);
      v77 = &v40[*(v36 + 48)];
      v78 = (v77 + *(type metadata accessor for StaticLightProfile() + 24));
      v79 = *v78;
      v80 = v78[1];
      if (v80 == 2)
      {
        v76 = v79;
      }

      else
      {
        v76 = v80;
      }

      sub_1D1C8D31C(v77, type metadata accessor for StaticLightProfile);
      v52(v40, v51);
    }

    sub_1D1741C08(v46, v43, &qword_1EC645578, &qword_1D1E79B20);
    v81 = *(v36 + 48);
    v82 = v130;
    v83 = *v130;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = *v82;
    sub_1D17560EC(v76 & 1, v43, isUniquelyReferenced_nonNull_native);
    v52(v43, v51);
    *v82 = v133;
    v85 = type metadata accessor for StaticLightProfile;
    v86 = &v43[v81];
    return sub_1D1C8D31C(v86, v85);
  }

  v50 = *(*(a3 + 56) + v48);
  sub_1D1C8D31C(&v45[v47], type metadata accessor for StaticLightProfile);
  v51 = v131;
  v52 = *(v132 + 8);
  v52(v45, v131);
  if (v50 < 0)
  {
    goto LABEL_11;
  }

  sub_1D1741C08(v46, v43, &qword_1EC645578, &qword_1D1E79B20);
  v53 = *(v36 + 48);
  v54 = v130;
  v55 = *v130;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v54;
  sub_1D17560EC(v50, v43, v56);
  v52(v43, v51);
  *v54 = v133;
  result = sub_1D1C8D31C(&v43[v53], type metadata accessor for StaticLightProfile);
  if (v50)
  {
    v58 = *v129;
    if (*(*v129 + 16))
    {
      result = sub_1D171D140(26);
      if (v59)
      {
        v60 = v113;
        sub_1D1C8D2B4(*(v58 + 56) + *(v122 + 72) * result, v113, type metadata accessor for StaticCharacteristic);
        v61 = v123;
        sub_1D1C8D398(v60, v123, type metadata accessor for StaticCharacteristic);
        v62 = v131;
        v63 = v132;
        v64 = *(v132 + 56);
        v65 = v114;
        v64(v114, 1, 1, v131);
        v67 = v127;
        v66 = v128;
        (*(v127 + 56))(v120, 1, 1, v128);
        v64(v121, 1, 1, v62);
        v68 = v115;
        sub_1D1741A90(v65, v115, &qword_1EC642590, qword_1D1E71260);
        v69 = *(v63 + 48);
        if (v69(v68, 1, v62) == 1)
        {
          (*(v63 + 16))(v124, v61, v62);
          if (v69(v68, 1, v62) != 1)
          {
            sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          (*(v63 + 32))(v124, v68, v62);
        }

        v87 = v118;
        LODWORD(v115) = *(v61 + *(v118 + 20));
        v88 = v116;
        sub_1D1741A90(v120, v116, &qword_1EC642570, &qword_1D1E6C6A0);
        v89 = *(v67 + 48);
        if (v89(v88, 1, v66) == 1)
        {
          (*(v67 + 16))(v126, v61 + v87[7], v66);
          v90 = v89(v88, 1, v66);
          v91 = v125;
          if (v90 != 1)
          {
            sub_1D1741A30(v88, &qword_1EC642570, &qword_1D1E6C6A0);
          }
        }

        else
        {
          (*(v67 + 32))(v126, v88, v66);
          v91 = v125;
        }

        v92 = v87[9];
        v93 = v61 + v87[8];
        v94 = *v93;
        v130 = *(v93 + 8);
        v120 = *(v93 + 16);
        LODWORD(v116) = *(v93 + 24);
        v114 = *(v61 + v92);
        v95 = v117;
        sub_1D1741A90(v121, v117, &qword_1EC642590, qword_1D1E71260);
        v96 = v131;
        v97 = v69(v95, 1, v131);
        v113 = v94;
        if (v97 == 1)
        {
          v98 = v132;
          (*(v132 + 16))(v91, v61 + v87[10], v96);
          v99 = v69(v95, 1, v96);
          sub_1D17418FC(v94, v130, v120, v116);
          if (v99 != 1)
          {
            sub_1D1741A30(v95, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          v98 = v132;
          (*(v132 + 32))(v91, v95, v96);
          sub_1D17418FC(v94, v130, v120, v116);
        }

        v100 = (v61 + v87[11]);
        v101 = v100[1];
        v132 = *v100;
        v102 = v100[2];
        v103 = v100[3];
        v104 = v100[4];
        v105 = *(v98 + 32);
        v106 = v87;
        v107 = v119;
        v105(v119, v124, v96);
        *(v107 + v106[5]) = v115;
        v108 = v107 + v106[6];
        *v108 = xmmword_1D1EA2400;
        *(v108 + 16) = 5;
        (*(v127 + 32))(v107 + v106[7], v126, v128);
        v109 = v107 + v106[8];
        v110 = v130;
        *v109 = v113;
        *(v109 + 8) = v110;
        *(v109 + 16) = v120;
        *(v109 + 24) = v116;
        *(v107 + v106[9]) = v114;
        v105((v107 + v106[10]), v125, v96);
        v111 = (v107 + v106[11]);
        v112 = v132;
        *v111 = v132;
        v111[1] = v101;
        v111[2] = v102;
        v111[3] = v103;
        v111[4] = v104;
        (*(v122 + 56))(v107, 0, 1, v106);
        sub_1D18F323C(v112, v101, v102, v103);
        sub_1D1B0F194(v107, 26);
        v85 = type metadata accessor for StaticCharacteristic;
        v86 = v123;
        return sub_1D1C8D31C(v86, v85);
      }
    }
  }

  return result;
}

uint64_t ActionService.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EndpointPath(0);
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = v48 - v9;
  v10 = type metadata accessor for ActionService();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v48 - v16;
  v18 = sub_1D1E66A7C();
  v19 = sub_1D1C8D400(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v20 = (v1 + v10[5]);
  v21 = *v20;
  v22 = v20[1];
  sub_1D1E678EC();
  v23 = *(v1 + v10[6]);
  sub_1D1E6922C();
  v24 = *(v1 + v10[7]);
  sub_1D1E6922C();
  v25 = v1 + v10[8];
  v48[1] = v19;
  v48[2] = v18;
  sub_1D1E676EC();
  v26 = (v2 + v10[9]);
  v27 = *(v26 + 8);
  v52 = v4;
  if (v27 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v28 = *v26;
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v28);
  }

  v29 = (v2 + v10[10]);
  v30 = v11;
  if (v29[1])
  {
    v31 = *v29;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v54 = *(v2 + v10[11]);
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  v53 = *(v2 + v10[12]);
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  v32 = *(v2 + v10[13]);
  sub_1D1E6922C();
  if (v32 != 5)
  {
    sub_1D1E678EC();
  }

  v33 = *(v2 + v10[14]);
  MEMORY[0x1D3892850](*(v33 + 16));
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v33 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v36 = *(v30 + 72);
    do
    {
      sub_1D1C8D2B4(v35, v17, type metadata accessor for ActionService);
      ActionService.hash(into:)(a1);
      sub_1D1C8D31C(v17, type metadata accessor for ActionService);
      v35 += v36;
      --v34;
    }

    while (v34);
  }

  sub_1D18563E0(a1, *(v2 + v10[15]));
  v37 = (v2 + v10[16]);
  v38 = v37[1];
  sub_1D18582DC(a1, *v37);
  sub_1D1857C7C(a1, v38);
  v39 = *(v2 + v10[17]);
  MEMORY[0x1D3892850](*(v39 + 16));
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v39 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v42 = *(v30 + 72);
    do
    {
      sub_1D1C8D2B4(v41, v15, type metadata accessor for ActionService);
      ActionService.hash(into:)(a1);
      sub_1D1C8D31C(v15, type metadata accessor for ActionService);
      v41 += v42;
      --v40;
    }

    while (v40);
  }

  v43 = v50;
  sub_1D1741C08(v2 + v10[18], v50, &qword_1EC644870, &unk_1D1EABA00);
  v44 = v52;
  if ((*(v51 + 48))(v43, 1, v52) == 1)
  {
    return sub_1D1E6922C();
  }

  v46 = v49;
  sub_1D1C8D398(v43, v49, type metadata accessor for EndpointPath);
  sub_1D1E6922C();
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v46 + *(v44 + 20)));
  v47 = *(v46 + *(v44 + 24));
  sub_1D1E6923C();
  return sub_1D1C8D31C(v46, type metadata accessor for EndpointPath);
}

uint64_t ActionService.hashValue.getter()
{
  sub_1D1E6920C();
  ActionService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C89434()
{
  sub_1D1E6920C();
  ActionService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C89478()
{
  sub_1D1E6920C();
  ActionService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t ActionService.canBeToggled.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 44));
  if (v1 - 3) < 0x2E && ((0x32C892066001uLL >> (v1 - 3)))
  {
    v2 = 1;
  }

  else
  {
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = off_1EC646318;

    v2 = sub_1D171951C(v1, v3);
  }

  return v2 & 1;
}

uint64_t ActionService.statusIcon.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ActionService();
  *a1 = *(v1 + *(result + 44)) | (*(v1 + *(result + 52)) << 8);
  *(a1 + 8) = 23552;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ActionService.temperatureStringStatusIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ActionService();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C8D2B4(v1, v6, type metadata accessor for ActionService);
  return sub_1D18F21EC(v6, a1);
}

uint64_t ActionService.isActivated.getter()
{
  v1 = type metadata accessor for ActionService();
  result = 2;
  switch(*(v0 + *(v1 + 44)))
  {
    case 3:
    case 0x11:
    case 0x14:
    case 0x15:
    case 0x2A:
    case 0x2C:
    case 0x2F:
    case 0x30:
      v8 = *(v0 + *(v1 + 60));
      v3 = 3;
      goto LABEL_8;
    case 0xE:
    case 0x33:
    case 0x34:
      v8 = *(v0 + *(v1 + 60));
      v7 = -98;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v4 = v9.value > 0;
      goto LABEL_16;
    case 0x10:
    case 0x1C:
    case 0x22:
    case 0x29:
      v8 = *(v0 + *(v1 + 60));
      v3 = 105;
      goto LABEL_8;
    case 0x13:
      v8 = *(v0 + *(v1 + 60));
      v6 = -107;
      goto LABEL_11;
    case 0x18:
      v8 = *(v0 + *(v1 + 60));
      v3 = 65;
      goto LABEL_8;
    case 0x1E:
      v8 = *(v0 + *(v1 + 60));
      v6 = -100;
LABEL_11:
      v7 = v6;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v5 = v9.value == 1;
      goto LABEL_13;
    case 0x1F:
    case 0x26:
      v8 = *(v0 + *(v1 + 60));
      v3 = 84;
LABEL_8:
      v7 = v3;
      return sub_1D1CE4920(&v7);
    case 0x23:
      v8 = *(v0 + *(v1 + 60));
      v7 = -96;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v5 = v9.value == 3;
      goto LABEL_13;
    case 0x2E:
      v8 = *(v0 + *(v1 + 60));
      v7 = -104;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v5 = v9.value == 0;
LABEL_13:
      v4 = !v5;
LABEL_16:
      if (v9.is_nil)
      {
        result = 2;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t ActionService.staticCharacteristic(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(type metadata accessor for ActionService() + 60));
  if (*(v5 + 16))
  {
    v6 = *a1;

    v7 = sub_1D171D140(v6);
    if (v8)
    {
      v9 = v7;
      v10 = *(v5 + 56);
      v11 = type metadata accessor for StaticCharacteristic();
      v12 = *(v11 - 8);
      sub_1D1C8D2B4(v10 + *(v12 + 72) * v9, a2, type metadata accessor for StaticCharacteristic);
      (*(v12 + 56))(a2, 0, 1, v11);
    }

    else
    {
      v16 = type metadata accessor for StaticCharacteristic();
      (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  else
  {
    v13 = type metadata accessor for StaticCharacteristic();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t ActionService.staticCharacteristic(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActionService() + 60));

  sub_1D1747C74(sub_1D1C2B338, v3, a1);
}

uint64_t sub_1D1C89BB8(char *a1, uint64_t (*a2)(char *))
{
  v4 = *a1;
  v8 = *(v2 + *(type metadata accessor for ActionService() + 60));
  v7 = v4;

  v5 = a2(&v7);

  return v5;
}

uint64_t sub_1D1C89EF4(uint64_t a1)
{
  v3 = type metadata accessor for StaticCharacteristic();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for ActionService() + 60));
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = sub_1D171D140(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_1D1C8D2B4(*(v8 + 56) + *(v4 + 72) * v9, v7, type metadata accessor for StaticCharacteristic);
  v11 = &v7[*(v3 + 24)];
  if (v11[16] == 8)
  {
    v12 = *v11;
    v13 = *(v11 + 1);
  }

  else
  {
    v12 = 0;
  }

  sub_1D1C8D31C(v7, type metadata accessor for StaticCharacteristic);
  return v12;
}

uint64_t sub_1D1C8A16C(unsigned __int8 a1)
{
  v5 = *(v1 + *(type metadata accessor for ActionService() + 60));
  v4 = a1;
  return sub_1D1CE4920(&v4);
}

Swift::Int sub_1D1C8A28C(char a1)
{
  v5 = *(v1 + *(type metadata accessor for ActionService() + 60));
  v4 = a1;
  v6 = StaticCharacteristicsBag.int(for:)(&v4);
  if (v6.is_nil)
  {
    v6.value = 0;
  }

  return v6.value;
}

uint64_t sub_1D1C8A33C(char a1, uint64_t (*a2)(char *))
{
  v7 = *(v2 + *(type metadata accessor for ActionService() + 60));
  v6 = a1;
  return a2(&v6);
}

uint64_t sub_1D1C8A39C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0) + 48);
  *a2 = *a1;
  return sub_1D1C8D2B4(&a1[v4], &a2[v5], type metadata accessor for StaticCharacteristic);
}

BOOL _s13HomeDataModel13ActionServiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB00, &qword_1D1EA1838);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v62[-v15];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for ActionService();
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v17[6]) != *(a2 + v17[6]))
  {
    return 0;
  }

  if (*(a1 + v17[7]) != *(a2 + v17[7]))
  {
    return 0;
  }

  v23 = v17[8];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v24 = v17[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v17[10];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = v17[11];
  v35 = *(a1 + v34);
  LOBYTE(v34) = *(a2 + v34);
  v71 = v35;
  v70 = v34;
  v66 = ServiceKind.rawValue.getter();
  v67 = v36;
  if (v66 == ServiceKind.rawValue.getter() && v67 == v37)
  {
  }

  else
  {
    LODWORD(v66) = sub_1D1E6904C();

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v17[12];
  v39 = *(a1 + v38);
  LOBYTE(v38) = *(a2 + v38);
  v69 = v39;
  v68 = v38;
  v66 = ServiceKind.rawValue.getter();
  v67 = v40;
  if (v66 == ServiceKind.rawValue.getter() && v67 == v41)
  {
  }

  else
  {
    LODWORD(v66) = sub_1D1E6904C();

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  v42 = v17[13];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43 == 5)
  {
    if (v44 != 5)
    {
      return 0;
    }
  }

  else if (v44 == 5 || (sub_1D17A07A0(v43, v44) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D177B190(*(a1 + v17[14]), *(a2 + v17[14])) & 1) == 0)
  {
    return 0;
  }

  v45 = v17[15];
  v67 = *(a1 + v45);
  v46 = *(a2 + v45);

  LODWORD(v66) = sub_1D1846E74(v67, v46);

  if ((v66 & 1) == 0)
  {
    return 0;
  }

  v47 = v17[16];
  v48 = *(a1 + v47);
  v65 = *(a1 + v47 + 8);
  v66 = v48;
  v49 = (a2 + v47);
  v50 = *v49;
  v67 = v49[1];

  v64 = v50;
  if ((sub_1D184CF18(v66, v50) & 1) == 0)
  {

    return 0;
  }

  v63 = sub_1D184D5B4(v65, v67);

  if ((v63 & 1) == 0 || (sub_1D177B190(*(a1 + v17[17]), *(a2 + v17[17])) & 1) == 0)
  {
    return 0;
  }

  v51 = v17[18];
  v52 = *(v13 + 48);
  sub_1D1741C08(a1 + v51, v16, &qword_1EC644870, &unk_1D1EABA00);
  v53 = a2 + v51;
  v54 = v52;
  sub_1D1741C08(v53, &v16[v52], &qword_1EC644870, &unk_1D1EABA00);
  v55 = *(v5 + 48);
  if (v55(v16, 1, v4) == 1)
  {
    if (v55(&v16[v54], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC644870, &unk_1D1EABA00);
      return 1;
    }

    goto LABEL_48;
  }

  sub_1D1741C08(v16, v12, &qword_1EC644870, &unk_1D1EABA00);
  if (v55(&v16[v54], 1, v4) == 1)
  {
    sub_1D1C8D31C(v12, type metadata accessor for EndpointPath);
LABEL_48:
    v57 = &qword_1EC64CB00;
    v58 = &qword_1D1EA1838;
LABEL_54:
    sub_1D1741A30(v16, v57, v58);
    return 0;
  }

  sub_1D1C8D398(&v16[v54], v8, type metadata accessor for EndpointPath);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v12[*(v4 + 20)] != *&v8[*(v4 + 20)])
  {
    sub_1D1C8D31C(v8, type metadata accessor for EndpointPath);
    sub_1D1C8D31C(v12, type metadata accessor for EndpointPath);
    v57 = &qword_1EC644870;
    v58 = &unk_1D1EABA00;
    goto LABEL_54;
  }

  v59 = *(v4 + 24);
  v60 = *&v12[v59];
  v61 = *&v8[v59];
  sub_1D1C8D31C(v8, type metadata accessor for EndpointPath);
  sub_1D1C8D31C(v12, type metadata accessor for EndpointPath);
  sub_1D1741A30(v16, &qword_1EC644870, &unk_1D1EABA00);
  return v60 == v61;
}

uint64_t sub_1D1C8AAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = a3;
  v26 = a4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v7 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v23 - v8;
  v27 = a1;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(a2 + 48);
    v20 = sub_1D1E66A7C();
    (*(*(v20 - 8) + 16))(v9, v19 + *(*(v20 - 8) + 72) * v18, v20);
    v21 = *(a2 + 56);
    v22 = type metadata accessor for StaticLightProfile();
    sub_1D1C8D2B4(v21 + *(*(v22 - 8) + 72) * v18, &v9[*(v24 + 48)], type metadata accessor for StaticLightProfile);
    sub_1D1C88250(&v27, v9, v25, v26);
    result = sub_1D1741A30(v9, &qword_1EC645578, &qword_1D1E79B20);
    if (v4)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v27;
    }

    v12 = *(a2 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C8ACE8(uint64_t a1, uint64_t a2)
{
  v161 = sub_1D1E669FC();
  v160 = *(v161 - 8);
  v4 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v156 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D1E66A7C();
  v157 = *(v158 - 8);
  v6 = *(v157 + 64);
  v7 = MEMORY[0x1EEE9AC00](v158);
  v155 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v146 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v152 = &v146 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v151 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v148 = &v146 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v153 = &v146 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v146 - v23;
  v25 = type metadata accessor for StaticService(0);
  v177 = *(v25 - 1);
  v26 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v176 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v159 = &v146 - v33;
  v174 = type metadata accessor for StaticCharacteristic();
  v172 = *(v174 - 1);
  v34 = v172[8];
  MEMORY[0x1EEE9AC00](v174);
  v165 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v150 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v166 = &v146 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v163 = &v146 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v164 = &v146 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v173 = &v146 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v146 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v146 - v51;
  v53 = sub_1D18DB9B4(MEMORY[0x1E69E7CC0]);
  v179 = a1;
  v54 = sub_1D18FC598(v53, sub_1D1C8D37C, v178, a2);
  v181 = v54;
  v55 = a1;
  v180 = *(a1 + v25[26]);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB34F0 == v56)
  {
  }

  else
  {
    v57 = sub_1D1E6904C();

    if ((v57 & 1) == 0)
    {
      return v181;
    }
  }

  if (*(v54 + 16))
  {
    v58 = sub_1D171D140(4);
    if (v59)
    {
      v60 = v172;
      sub_1D1C8D2B4(*(v54 + 56) + v172[9] * v58, v52, type metadata accessor for StaticCharacteristic);
      (v60[7])(v52, 0, 1, v174);
      v61 = &qword_1EC643630;
      v62 = &qword_1D1E71D10;
      v63 = v52;
LABEL_15:
      sub_1D1741A30(v63, v61, v62);
      return v181;
    }
  }

  v147 = v24;
  v65 = v172 + 7;
  v64 = v172[7];
  v66 = v174;
  v64(v52, 1, 1, v174);
  sub_1D1741A30(v52, &qword_1EC643630, &qword_1D1E71D10);
  v67 = *(v55 + v25[32]);
  if (!*(v67 + 16))
  {
    v64(v50, 1, 1, v66);
LABEL_14:
    v61 = &qword_1EC643630;
    v62 = &qword_1D1E71D10;
    v63 = v50;
    goto LABEL_15;
  }

  v170 = v64;

  v68 = sub_1D171D140(4);
  if (v69)
  {
    v70 = v172;
    sub_1D1C8D2B4(*(v67 + 56) + v172[9] * v68, v50, type metadata accessor for StaticCharacteristic);
    v71 = v174;
    v170(v50, 0, 1, v174);
  }

  else
  {
    v71 = v174;
    v70 = v172;
    v170(v50, 1, 1, v174);
  }

  v168 = v70[6];
  v169 = (v70 + 6);
  if (v168(v50, 1, v71) == 1)
  {
    goto LABEL_14;
  }

  result = sub_1D1C8D398(v50, v165, type metadata accessor for StaticCharacteristic);
  v73 = *(v55 + v25[31]);
  v74 = *(v73 + 16);
  if (v74)
  {
    v167 = v65;
    v75 = 0;
    v171 = v28 + 8;
    v175 = 0x80000001D1EB3100;
    v76 = v164;
    v162 = v74;
    while (1)
    {
      if (v75 >= *(v73 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      sub_1D1C8D2B4(v73 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v75, v28, type metadata accessor for StaticService);
      v180 = v28[v25[26]];
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v175 == v78)
      {
      }

      else
      {
        v79 = sub_1D1E6904C();

        if ((v79 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v171[v25[12]])
      {
        goto LABEL_20;
      }

      v80 = *&v28[v25[32]];
      if (*(v80 + 16))
      {
        v81 = sub_1D171D140(47);
        v82 = v174;
        if (v83)
        {
          sub_1D1C8D2B4(*(v80 + 56) + v172[9] * v81, v173, type metadata accessor for StaticCharacteristic);
          v84 = 0;
        }

        else
        {
          v84 = 1;
        }
      }

      else
      {
        v84 = 1;
        v82 = v174;
      }

      v85 = v173;
      v170(v173, v84, 1, v82);
      sub_1D1741A90(v85, v76, &qword_1EC643630, &qword_1D1E71D10);
      result = (v168)(v76, 1, v82);
      if (result == 1)
      {
        sub_1D1741A30(v76, &qword_1EC643630, &qword_1D1E71D10);
        v74 = v162;
        goto LABEL_20;
      }

      v86 = v76 + v82[6];
      v87 = *v86;
      v88 = *(v86 + 16);
      v74 = v162;
      if (v88 > 3)
      {
        if (v88 == 4)
        {
          if (v87 < 0)
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v88 != 6 && v88 != 5)
          {
LABEL_45:
            sub_1D1C8D31C(v76, type metadata accessor for StaticCharacteristic);
            goto LABEL_20;
          }

          v87 = v87;
        }
      }

      else
      {
        switch(v88)
        {
          case 1:
            v87 = v87;
            break;
          case 2:
            v87 = v87;
            break;
          case 3:
            v87 = v87;
            break;
          default:
            goto LABEL_45;
        }
      }

      sub_1D1C8D31C(v76, type metadata accessor for StaticCharacteristic);
      if (v87 == 1)
      {
        goto LABEL_20;
      }

      if (*(v80 + 16))
      {
        v89 = sub_1D171D140(70);
        v90 = v174;
        if (v91)
        {
          sub_1D1C8D2B4(*(v80 + 56) + v172[9] * v89, v163, type metadata accessor for StaticCharacteristic);
          v92 = 0;
        }

        else
        {
          v92 = 1;
        }
      }

      else
      {
        v92 = 1;
        v90 = v174;
      }

      v93 = v163;
      v170(v163, v92, 1, v90);
      v94 = v93;
      v95 = v166;
      sub_1D1741A90(v94, v166, &qword_1EC643630, &qword_1D1E71D10);
      result = (v168)(v95, 1, v90);
      if (result == 1)
      {
        sub_1D1741A30(v95, &qword_1EC643630, &qword_1D1E71D10);
        v76 = v164;
        goto LABEL_20;
      }

      v96 = v95 + v90[6];
      v97 = *v96;
      v98 = *(v96 + 16);
      if (v98 <= 2)
      {
        v76 = v164;
        if (!v98)
        {
          sub_1D1C8D31C(v166, type metadata accessor for StaticCharacteristic);
          if (v97)
          {
            goto LABEL_96;
          }

          goto LABEL_20;
        }

        if (v98 == 1)
        {
          v97 = v97;
        }

        else
        {
          v97 = v97;
        }
      }

      else
      {
        v76 = v164;
        if (v98 > 4)
        {
          if (v98 != 6 && v98 != 5)
          {
LABEL_73:
            sub_1D1C8D31C(v166, type metadata accessor for StaticCharacteristic);
            goto LABEL_20;
          }

          v97 = v97;
        }

        else if (v98 == 3)
        {
          v97 = v97;
        }

        else if ((v97 & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }
      }

      if (v97 > 1)
      {
        goto LABEL_73;
      }

      sub_1D1C8D31C(v166, type metadata accessor for StaticCharacteristic);
      if (v97 == 1)
      {
LABEL_96:
        v100 = v159;
        sub_1D1C8D398(v28, v159, type metadata accessor for StaticService);
        v99 = 0;
        v65 = v167;
        goto LABEL_76;
      }

LABEL_20:
      ++v75;
      result = sub_1D1C8D31C(v28, type metadata accessor for StaticService);
      v77 = v176;
      if (v74 == v75)
      {
        v99 = 1;
        v100 = v159;
        v65 = v167;
        goto LABEL_77;
      }
    }
  }

  v99 = 1;
  v100 = v159;
LABEL_76:
  v77 = v176;
LABEL_77:
  v101 = v177;
  (*(v177 + 56))(v100, v99, 1, v25);
  sub_1D1741C08(v100, v77, &qword_1EC6436F0, &qword_1D1E99BC0);
  v102 = (*(v101 + 48))(v77, 1, v25);
  v103 = v161;
  v104 = v160;
  v105 = v158;
  v106 = v165;
  if (v102 == 1)
  {
    sub_1D1741A30(v100, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C8D31C(v106, type metadata accessor for StaticCharacteristic);
    v63 = v77;
    v61 = &qword_1EC6436F0;
    v62 = &qword_1D1E99BC0;
    goto LABEL_15;
  }

  v107 = v77 + v25[12];
  v108 = *v107;
  v109 = *(v107 + 8);
  sub_1D1C8D31C(v77, type metadata accessor for StaticService);
  if (v109 == 1)
  {
    sub_1D1741A30(v100, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C8D31C(v106, type metadata accessor for StaticCharacteristic);
    return v181;
  }

  v110 = *(v157 + 56);
  result = v110(v147, 1, 1, v105);
  if (v108 < 0xFFFFFFFF80000000)
  {
    goto LABEL_99;
  }

  if (v108 <= 0x7FFFFFFF)
  {
    (*(v104 + 56))(v152, 1, 1, v103);
    v110(v153, 1, 1, v105);
    v111 = v148;
    sub_1D1741A90(v147, v148, &qword_1EC642590, qword_1D1E71260);
    v112 = v157;
    v113 = *(v157 + 48);
    v114 = v113(v111, 1, v105);
    v167 = v65;
    v173 = v108;
    if (v114 == 1)
    {
      (*(v112 + 16))(v154, v106, v105);
      if (v113(v111, 1, v105) != 1)
      {
        sub_1D1741A30(v111, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v112 + 32))(v154, v111, v105);
    }

    v115 = v174;
    LODWORD(v172) = *(v106 + v174[5]);
    v116 = v149;
    sub_1D1741A90(v152, v149, &qword_1EC642570, &qword_1D1E6C6A0);
    v117 = *(v104 + 48);
    if (v117(v116, 1, v103) == 1)
    {
      (*(v104 + 16))(v156, v106 + v115[7], v103);
      v118 = v117(v116, 1, v103);
      v119 = v155;
      if (v118 != 1)
      {
        sub_1D1741A30(v116, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      (*(v104 + 32))(v156, v116, v103);
      v119 = v155;
    }

    v120 = v174;
    v121 = v174[9];
    v122 = v106 + v174[8];
    v124 = *v122;
    v123 = *(v122 + 8);
    v176 = *(v122 + 16);
    v177 = v123;
    LODWORD(v175) = *(v122 + 24);
    v171 = *(v106 + v121);
    v125 = v151;
    sub_1D1741A90(v153, v151, &qword_1EC642590, qword_1D1E71260);
    v126 = v113(v125, 1, v105);
    v127 = v157;
    v128 = v173;
    v169 = v124;
    if (v126 == 1)
    {
      (*(v157 + 16))(v119, v106 + v120[10], v105);
      v129 = v113(v125, 1, v105);
      sub_1D17418FC(v124, v177, v176, v175);
      v130 = v105;
      if (v129 != 1)
      {
        sub_1D1741A30(v125, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v157 + 32))(v119, v125, v105);
      sub_1D17418FC(v124, v177, v176, v175);
      v130 = v105;
    }

    v131 = v128;
    v132 = v174;
    v133 = (v106 + v174[11]);
    v134 = v133[1];
    v173 = *v133;
    v135 = v133[2];
    v136 = v133[3];
    v137 = v133[4];
    v138 = *(v127 + 32);
    v139 = v150;
    v138(v150, v154, v130);
    *(v139 + v132[5]) = v172;
    v140 = v139 + v132[6];
    *v140 = v131;
    *(v140 + 8) = 0;
    *(v140 + 16) = 5;
    (*(v160 + 32))(v139 + v132[7], v156, v161);
    v141 = v139 + v132[8];
    v142 = v176;
    v143 = v177;
    *v141 = v169;
    *(v141 + 8) = v143;
    *(v141 + 16) = v142;
    *(v141 + 24) = v175;
    *(v139 + v132[9]) = v171;
    v138((v139 + v132[10]), v155, v130);
    v144 = (v139 + v132[11]);
    v145 = v173;
    *v144 = v173;
    v144[1] = v134;
    v144[2] = v135;
    v144[3] = v136;
    v144[4] = v137;
    v170(v139, 0, 1, v132);
    sub_1D18F323C(v145, v134, v135, v136);
    sub_1D1B0F194(v139, 4);
    sub_1D1741A30(v159, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C8D31C(v165, type metadata accessor for StaticCharacteristic);
    return v181;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_1D1C8C038(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticCharacteristic();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436A8, &unk_1D1E71DE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v41 - v17;
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v41[1] = a1;
  v41[2] = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v41[3] = v20;
  v41[4] = 0;
  v41[5] = v23 & v21;
  v41[6] = a2;
  v41[7] = a3;

  v41[0] = a3;

  while (1)
  {
    sub_1D1AC0C2C(v18);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
    if ((*(*(v24 - 8) + 48))(v18, 1, v24) == 1)
    {
      sub_1D1716918();
    }

    v25 = *v18;
    sub_1D1C8D398(&v18[*(v24 + 48)], v14, type metadata accessor for StaticCharacteristic);
    v26 = *a5;
    v28 = sub_1D171D140(v25);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173DAEC();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_1D1C8D250(v14, v36[7] + *(v11 + 72) * v28);
      a4 = 1;
    }

    else
    {
      sub_1D1730FB4(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_1D171D140(v25);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + v28) = v25;
      sub_1D1C8D398(v14, v36[7] + *(v11 + 72) * v28, type metadata accessor for StaticCharacteristic);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1C8C368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v113 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v126 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v127 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v124 = &v113 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v128 = &v113 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v123 = &v113 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v131 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v129 = &v113 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v132 = (&v113 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v113 - v39);
  MEMORY[0x1EEE9AC00](v38);
  v133 = &v113 - v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v134 = a2;
  sub_1D1C8C038(a1, sub_1D1C8A39C, 0, isUniquelyReferenced_nonNull_native, &v134);

  if (*(a2 + 16) && (v43 = sub_1D171D140(26), (v44 & 1) != 0))
  {
    v45 = v43;
    v121 = v8;
    v46 = v10;
    v47 = v9;
    v48 = v5;
    v49 = v4;
    v50 = *(a2 + 56);
    v51 = type metadata accessor for StaticCharacteristic();
    v52 = *(v51 - 8);
    v122 = v14;
    v53 = v52;
    v54 = v50 + *(v52 + 72) * v45;
    v4 = v49;
    v5 = v48;
    v9 = v47;
    v10 = v46;
    v8 = v121;
    v55 = v133;
    sub_1D1C8D2B4(v54, v133, type metadata accessor for StaticCharacteristic);
    (*(v53 + 56))(v55, 0, 1, v51);
    v14 = v122;
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v56 = type metadata accessor for StaticCharacteristic();
    (*(*(v56 - 8) + 56))(v133, 1, 1, v56);
    if (!*(a1 + 16))
    {
LABEL_12:
      v75 = type metadata accessor for StaticCharacteristic();
      (*(*(v75 - 8) + 56))(v40, 1, 1, v75);
LABEL_14:
      sub_1D1741A30(v40, &qword_1EC643630, &qword_1D1E71D10);
      goto LABEL_15;
    }
  }

  v57 = sub_1D171D140(57);
  if ((v58 & 1) == 0)
  {
    goto LABEL_12;
  }

  v59 = v57;
  v122 = v14;
  v118 = v4;
  v60 = *(a1 + 56);
  v61 = type metadata accessor for StaticCharacteristic();
  v62 = *(v61 - 8);
  v63 = v62[9];
  v64 = v60 + v63 * v59;
  v65 = v61;
  sub_1D1C8D2B4(v64, v40, type metadata accessor for StaticCharacteristic);
  v120 = v62[7];
  v120(v40, 0, 1, v65);
  sub_1D1741A30(v40, &qword_1EC643630, &qword_1D1E71D10);
  if (!*(a1 + 16) || (v119 = v62 + 7, v66 = sub_1D171D140(116), (v67 & 1) == 0))
  {
    v40 = v132;
    v120(v132, 1, 1, v65);
    goto LABEL_14;
  }

  v68 = v132;
  sub_1D1C8D2B4(*(a1 + 56) + v66 * v63, v132, type metadata accessor for StaticCharacteristic);
  v120(v68, 0, 1, v65);
  sub_1D1741A30(v68, &qword_1EC643630, &qword_1D1E71D10);
  v69 = v62[6];
  if (v69(v133, 1, v65) != 1)
  {
    v70 = v65;
    v71 = v131;
    sub_1D1741C08(v133, v131, &qword_1EC643630, &qword_1D1E71D10);
    v132 = v70;
    if (v69(v71, 1, v70) == 1)
    {
      sub_1D1741A30(v71, &qword_1EC643630, &qword_1D1E71D10);
      v72 = 1;
      v73 = v129;
      v74 = v132;
    }

    else
    {
      v78 = *(v10 + 56);
      v79 = v123;
      v78(v123, 1, 1, v9);
      v80 = v125;
      v81 = v118;
      (*(v5 + 56))(v125, 1, 1, v118);
      v78(v128, 1, 1, v9);
      v82 = v124;
      sub_1D1741A90(v79, v124, &qword_1EC642590, qword_1D1E71260);
      v83 = *(v10 + 48);
      v84 = v83(v82, 1, v9);
      v123 = (v10 + 48);
      v115 = v83;
      if (v84 == 1)
      {
        (*(v10 + 16))(v130, v71, v9);
        if (v83(v82, 1, v9) != 1)
        {
          sub_1D1741A30(v82, &qword_1EC642590, qword_1D1E71260);
        }
      }

      else
      {
        (*(v10 + 32))(v130, v82, v9);
      }

      v85 = v132;
      v116 = *(v71 + v132[5]);
      v86 = v126;
      sub_1D1741A90(v80, v126, &qword_1EC642570, &qword_1D1E6C6A0);
      v87 = *(v5 + 48);
      v88 = v87(v86, 1, v81);
      v117 = v5;
      if (v88 == 1)
      {
        v89 = v71;
        v90 = v9;
        (*(v5 + 16))(v8, v89 + v85[7], v81);
        if (v87(v86, 1, v81) != 1)
        {
          sub_1D1741A30(v86, &qword_1EC642570, &qword_1D1E6C6A0);
        }
      }

      else
      {
        v90 = v9;
        (*(v5 + 32))(v8, v86, v81);
      }

      v91 = v131;
      v74 = v132;
      v92 = v132[9];
      v93 = v131 + v132[8];
      v95 = *v93;
      v94 = *(v93 + 8);
      v125 = *(v93 + 16);
      v126 = v94;
      LODWORD(v124) = *(v93 + 24);
      v114 = *(v131 + v92);
      v96 = v127;
      sub_1D1741A90(v128, v127, &qword_1EC642590, qword_1D1E71260);
      v97 = v90;
      v98 = v115;
      v99 = v115(v96, 1, v90);
      v121 = v8;
      v113 = v95;
      if (v99 == 1)
      {
        (*(v10 + 16))(v122, v91 + v74[10], v90);
        v100 = v98(v96, 1, v90);
        sub_1D17418FC(v95, v126, v125, v124);
        if (v100 != 1)
        {
          sub_1D1741A30(v96, &qword_1EC642590, qword_1D1E71260);
        }
      }

      else
      {
        (*(v10 + 32))(v122, v96, v90);
        sub_1D17418FC(v95, v126, v125, v124);
      }

      v101 = (v91 + v74[11]);
      v102 = *v101;
      v103 = v101[1];
      v104 = v101[2];
      v105 = v101[3];
      v106 = v101[4];
      v107 = *(v10 + 32);
      v73 = v129;
      v107(v129, v130, v97);
      *(v73 + v74[5]) = v116;
      v108 = v73 + v74[6];
      *v108 = 0;
      *(v108 + 8) = 0;
      *(v108 + 16) = 5;
      (*(v117 + 32))(v73 + v74[7], v121, v118);
      v109 = v73 + v74[8];
      v110 = v125;
      v111 = v126;
      *v109 = v113;
      *(v109 + 8) = v111;
      *(v109 + 16) = v110;
      *(v109 + 24) = v124;
      *(v73 + v74[9]) = v114;
      v107((v73 + v74[10]), v122, v97);
      v112 = (v73 + v74[11]);
      *v112 = v102;
      v112[1] = v103;
      v112[2] = v104;
      v112[3] = v105;
      v112[4] = v106;
      sub_1D18F323C(v102, v103, v104, v105);
      sub_1D1C8D31C(v131, type metadata accessor for StaticCharacteristic);
      v72 = 0;
    }

    v120(v73, v72, 1, v74);
    sub_1D1B0F194(v73, 26);
  }

LABEL_15:
  v76 = v134;
  sub_1D1741A30(v133, &qword_1EC643630, &qword_1D1E71D10);
  return v76;
}

void sub_1D1C8D038()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07D1D8);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, qword_1EE07D1F8);
      if (v2 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07D8B8);
        if (v3 <= 0x3F)
        {
          sub_1D1C8D1EC(319, &qword_1EC64CC88, type metadata accessor for ActionService, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1D1C8D1EC(319, qword_1EE07DAD8, type metadata accessor for EndpointPath, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D1C8D1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1C8D250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1C8D2B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C8D31C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C8D398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C8D400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ActionService.activeString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v6 = 3;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    if (v1)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v1)
    {
      v4 = "HFSceneDescriptionValueOff";
    }

    else
    {
      v4 = ", \n    underlyingType: ";
    }

    v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

    return v5;
  }

  return result;
}

uint64_t ActionService.airPurifierString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v11 = 3;
  v2 = sub_1D1CE4920(&v11);
  result = 0;
  if (v2 != 2)
  {
    if (v2)
    {
      v11 = -109;
      v12 = StaticCharacteristicsBag.int(for:)(&v11);
      if (v12.is_nil)
      {
        goto LABEL_8;
      }

      if (!v12.value)
      {
        v11 = 115;
        sub_1D1CE53A4(&v11);
        if ((v7 & 1) == 0)
        {
          v8 = v6;
          v10 = static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC70E0);
          MEMORY[0x1D3890F70](32, 0xE100000000000000);
          v9 = sub_1D19CB618(1, 0.0, 100.0, v8);
          MEMORY[0x1D3890F70](v9);

          return v10;
        }

        v4 = 0xD000000000000031;
        v5 = 0x80000001D1EC70E0;
        return static String.hfLocalized(_:)(v4, v5);
      }

      if (v12.value != 1)
      {
LABEL_8:
        v5 = 0x80000001D1EC7A50;
        v4 = 0xD000000000000019;
      }

      else
      {
        v4 = 0xD00000000000002FLL;
        v5 = 0x80000001D1EC70B0;
      }
    }

    else
    {
      v4 = 0xD00000000000001ALL;
      v5 = 0x80000001D1EC7A30;
    }

    return static String.hfLocalized(_:)(v4, v5);
  }

  return result;
}

uint64_t ActionService.doorStateString.getter()
{
  v6 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v5 = -107;
  v7 = StaticCharacteristicsBag.int(for:)(&v5);
  if (v7.is_nil)
  {
    return 0;
  }

  value = v7.value;
  v2 = 0xD00000000000001BLL;
  if (!value)
  {
    v3 = "HFSceneDescriptionValueClosed";
    return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
  }

  if (value != 1)
  {
    return 0;
  }

  v3 = "HFSceneDescriptionValueOn";
  v2 = 0xD00000000000001DLL;
  return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
}

uint64_t ActionService.faucetString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v6 = 3;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    if (v1)
    {
      v3 = 0xD00000000000002FLL;
    }

    else
    {
      v3 = 0xD00000000000002BLL;
    }

    if (v1)
    {
      v4 = "tion.FaucetValve, State:Off";
    }

    else
    {
      v4 = "TitleLeakDetectedSimple";
    }

    v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

    return v5;
  }

  return result;
}

uint64_t ActionService.heaterCoolerString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v31 = v1;
  v30 = 3;
  v2 = sub_1D1CE4920(&v30);
  if (v2 == 2)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    return static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EC7A30);
  }

  v31 = v1;
  v30 = -105;
  v32 = StaticCharacteristicsBag.int(for:)(&v30);
  if (v32.is_nil)
  {
    return 0;
  }

  if (v32.value == 2)
  {
    v31 = v1;
    v30 = 29;
    sub_1D1CE53A4(&v30);
    if (v24)
    {
      return 0;
    }

    v21 = v23;
    v22 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
  }

  else
  {
    if (v32.value != 1)
    {
      if (!v32.value)
      {
        v31 = v1;
        v30 = 55;
        sub_1D1CE53A4(&v30);
        if ((v5 & 1) == 0)
        {
          v6 = v4;
          v31 = v1;
          v30 = 29;
          sub_1D1CE53A4(&v30);
          if ((v8 & 1) == 0)
          {
            v9 = v7;
            static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
            v10 = swift_allocObject();
            *(v10 + 16) = xmmword_1D1E73A90;
            LOBYTE(v31) = 0;
            v11 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v31, v6);
            v13 = v12;
            v14 = MEMORY[0x1E69E6158];
            *(v10 + 56) = MEMORY[0x1E69E6158];
            v15 = sub_1D1757D20();
            *(v10 + 64) = v15;
            *(v10 + 32) = v11;
            *(v10 + 40) = v13;
            LOBYTE(v31) = 0;
            v16 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v31, v9);
            *(v10 + 96) = v14;
            *(v10 + 104) = v15;
            *(v10 + 72) = v16;
            *(v10 + 80) = v17;
            v18 = sub_1D1E6783C();

            return v18;
          }
        }
      }

      return 0;
    }

    v31 = v1;
    v30 = 55;
    sub_1D1CE53A4(&v30);
    if (v20)
    {
      return 0;
    }

    v21 = v19;
    v22 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
  }

  static String.hfLocalized(_:)(0xD00000000000003FLL, (v22 - 32) | 0x8000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D1E739C0;
  LOBYTE(v31) = 0;
  v26 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v31, v21);
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1D1757D20();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = sub_1D1E6783C();

  return v29;
}

uint64_t ActionService.humidifierDehumidifierString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v39 = v1;
  v38 = 3;
  v2 = sub_1D1CE4920(&v38);
  if (v2 == 2)
  {
    return 0;
  }

  v3 = v2;
  v39 = v1;
  v38 = -102;
  v40 = StaticCharacteristicsBag.int(for:)(&v38);
  if (v40.is_nil)
  {
    return 0;
  }

  if ((v3 & 1) == 0)
  {
    return static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EC7A30);
  }

  value = v40.value;
  result = static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EC7A50);
  switch(value)
  {
    case 2:
      v12 = result;
      v39 = v1;
      v38 = 48;
      sub_1D1CE53A4(&v38);
      if ((v20 & 1) == 0)
      {
        v21 = v19;

        v16 = v21;
        v17 = "tionHumidifierAutoWithHumidity";
        v18 = 0xD000000000000034;
        goto LABEL_18;
      }

      return v12;
    case 1:
      v12 = result;
      v39 = v1;
      v38 = 58;
      sub_1D1CE53A4(&v38);
      if ((v14 & 1) == 0)
      {
        v15 = v13;

        v16 = v15;
        v17 = "humidifyWithHumidity";
        v18 = 0xD000000000000032;
LABEL_18:
        static String.hfLocalized(_:)(v18, v17 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D1E739C0;
        v23 = sub_1D19CB618(1, 0.0, 100.0, v16);
        v25 = v24;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = sub_1D1757D20();
        *(v22 + 32) = v23;
        *(v22 + 40) = v25;
        v26 = sub_1D1E6783C();

        return v26;
      }

      return v12;
    case 0:
      v6 = result;
      v39 = v1;
      v38 = 58;
      sub_1D1CE53A4(&v38);
      if (v8)
      {
        return v6;
      }

      v9 = v7;
      v39 = v1;
      v38 = 48;
      sub_1D1CE53A4(&v38);
      if (v11)
      {
        return v6;
      }

      else
      {
        v27 = v10;

        v28 = v9;
        static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EC7160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D1E73A90;
        v30 = sub_1D19CB618(1, 0.0, 100.0, v28);
        v32 = v31;
        v33 = MEMORY[0x1E69E6158];
        *(v29 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1D1757D20();
        *(v29 + 64) = v34;
        *(v29 + 32) = v30;
        *(v29 + 40) = v32;
        v35 = sub_1D19CB618(1, 0.0, 100.0, v27);
        *(v29 + 96) = v33;
        *(v29 + 104) = v34;
        *(v29 + 72) = v35;
        *(v29 + 80) = v36;
        v37 = sub_1D1E6783C();

        return v37;
      }
  }

  return result;
}

uint64_t ActionService.irrigationSystemString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v9 = v1;
  v8 = 65;
  v2 = sub_1D1CE4920(&v8);
  result = 0;
  if (v2 != 2)
  {
    v4 = 0xD000000000000030;
    if (v2)
    {
      v4 = 0xD00000000000003ALL;
      v5 = "HFServiceDescription.IrrigationSystem, State:RunningManual";
    }

    else
    {
      v9 = v1;
      v8 = 3;
      v6 = sub_1D1CE4920(&v8);
      if (v6 != 2 && (v6 & 1) != 0)
      {
        v9 = v1;
        v8 = 106;
        v10 = StaticCharacteristicsBag.int(for:)(&v8);
        if (!v10.is_nil)
        {
          if (v10.value)
          {
            v7 = "ystem, State:Off";
            v4 = 0xD000000000000036;
            return static String.hfLocalized(_:)(v4, v7 | 0x8000000000000000);
          }
        }
      }

      v5 = "HFServiceDescription.IrrigationSystem, State:Off";
    }

    v7 = (v5 - 32);
    return static String.hfLocalized(_:)(v4, v7 | 0x8000000000000000);
  }

  return result;
}

uint64_t ActionService.lightBulbString.getter()
{
  v1 = type metadata accessor for ActionService();
  v2 = *(v0 + *(v1 + 60));
  v17 = 105;
  v3 = sub_1D1CE4920(&v17);
  result = 0;
  if (v3 != 2)
  {
    if (v3)
    {
      v17 = 12;
      v18 = StaticCharacteristicsBag.int(for:)(&v17);
      if (!v18.is_nil)
      {
        value = v18.value;
        if (v18.value >= 1)
        {
          v6 = (v0 + *(v1 + 64));
          v7 = *v6;
          v8 = v6[1];
          if (StaticProfileBag.isNaturalLightSupported.getter() & 1) != 0 && (StaticProfileBag.isNaturalLightEnabled.getter())
          {
            v16 = sub_1D19CB618(1, 0.0, 100.0, value);

            MEMORY[0x1D3890F70](0x20A280E220, 0xA500000000000000);

            v9 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC6F40);
            v11 = v10;

            MEMORY[0x1D3890F70](v9, v11);

            return v16;
          }
        }
      }

      v17 = 12;
      v19 = StaticCharacteristicsBag.int(for:)(&v17);
      v15 = v19.value;
      v12 = "HFSceneDescriptionValueOff";
      v13 = 0xD000000000000019;
      if (!v19.is_nil && v15 >= 1)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v15);
      }
    }

    else
    {
      v12 = ", \n    underlyingType: ";
      v13 = 0xD00000000000001ALL;
    }

    v14 = static String.hfLocalized(_:)(v13, v12 | 0x8000000000000000);

    return v14;
  }

  return result;
}

uint64_t ActionService.lockStateString.getter()
{
  v6 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v5 = -100;
  v7 = StaticCharacteristicsBag.int(for:)(&v5);
  if (v7.is_nil)
  {
    return 0;
  }

  value = v7.value;
  v2 = 0xD00000000000001DLL;
  if (value == 1)
  {
    v3 = "HFSceneDescriptionValueUnlocked";
    return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
  }

  if (value)
  {
    return 0;
  }

  v3 = "HFSceneDescriptionValueOpen";
  v2 = 0xD00000000000001FLL;
  return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
}

uint64_t ActionService.motorizedDoorOrWindowString.getter()
{
  v9 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v8 = -98;
  v10 = StaticCharacteristicsBag.int(for:)(&v8);
  value = v10.value;
  result = 0;
  if (!v10.is_nil)
  {
    if (value == 100)
    {
      return static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC7A90);
    }

    else if (value)
    {
      v3 = sub_1D19CB618(1, 0.0, 100.0, value);
      v5 = v4;
      static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D1E739C0;
      *(v6 + 56) = MEMORY[0x1E69E6158];
      *(v6 + 64) = sub_1D1757D20();
      *(v6 + 32) = v3;
      *(v6 + 40) = v5;
      v7 = sub_1D1E6784C();

      return v7;
    }

    else
    {
      return static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EC7A70);
    }
  }

  return result;
}

uint64_t ActionService.securitySystemString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v6 = -96;
  v8 = StaticCharacteristicsBag.int(for:)(&v6);
  v1 = 0;
  if (!v8.is_nil)
  {
    value = v8.value;
    v1 = 0;
    v3 = 0xD000000000000035;
    if (value > 1)
    {
      if (value == 2)
      {
        v4 = "itySystemStateDisarm";
        v3 = 0xD000000000000036;
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }

      if (value == 3)
      {
        v4 = "HFSceneDescriptionValueLocked";
        v3 = 0xD000000000000034;
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }
    }

    else
    {
      if (!value)
      {
        v4 = "itySystemStateAwayArm";
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }

      if (value == 1)
      {
        v4 = "itySystemStateNightArm";
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }
    }
  }

  return v1;
}

uint64_t ActionService.switchString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v6 = 105;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    v3 = (v1 & 1) == 0;
    if (v1)
    {
      v4 = "HFSceneDescriptionValueOff";
    }

    else
    {
      v4 = ", \n    underlyingType: ";
    }

    if (v3)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    return static String.hfLocalized(_:)(v5, v4 | 0x8000000000000000);
  }

  return result;
}

uint64_t ActionService.televisionString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ActionService();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v30[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30[-v12];
  v14 = *(v0 + *(v11 + 60));
  v32 = v14;
  v31 = 3;
  v15 = sub_1D1CE4920(&v31);
  result = 0;
  if (v15 == 2)
  {
    return result;
  }

  if ((v15 & 1) == 0)
  {
    v26 = 0xD00000000000001ALL;
    v27 = 0x80000001D1EC7A30;
    return static String.hfLocalized(_:)(v26, v27);
  }

  v32 = v14;
  v31 = 4;

  v33 = StaticCharacteristicsBag.int(for:)(&v31);
  value = v33.value;
  is_nil = v33.is_nil;

  if (is_nil || (v19 = *(v1 + v2[14]), (v20 = *(v19 + 16)) == 0))
  {
LABEL_13:
    v27 = 0x80000001D1EC7A50;
    v26 = 0xD000000000000019;
    return static String.hfLocalized(_:)(v26, v27);
  }

  v21 = 0;
  v22 = v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D1C8ED40(v22 + *(v3 + 72) * v21, v7);
    v23 = &v7[v2[9]];
    if ((v23[8] & 1) == 0 && *v23 == value)
    {
      break;
    }

    ++v21;
    result = sub_1D1C8EDA4(v7);
    if (v20 == v21)
    {
      goto LABEL_13;
    }
  }

  sub_1D1C8EE00(v7, v10);
  sub_1D1C8EE00(v10, v13);
  v32 = *&v13[v2[15]];
  v31 = 27;
  v24 = StaticCharacteristicsBag.string(for:)(&v31);
  if (v24.value._object)
  {
    countAndFlagsBits = v24.value._countAndFlagsBits;
  }

  else
  {
    v28 = &v13[v2[5]];
    countAndFlagsBits = *v28;
    v29 = v28[1];
  }

  sub_1D1C8EDA4(v13);
  return countAndFlagsBits;
}

uint64_t ActionService.thermostatString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v30 = v1;
  v29 = -104;
  v31 = StaticCharacteristicsBag.int(for:)(&v29);
  if (v31.is_nil)
  {
    return 0;
  }

  value = v31.value;
  v30 = v1;
  v29 = -94;
  sub_1D1CE53A4(&v29);
  if (v4)
  {
    return 0;
  }

  v6 = v3;
  result = 0;
  v7 = v6;
  if (value > 1)
  {
    if (value == 2)
    {
      v8 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
      goto LABEL_16;
    }

    if (value == 3)
    {
      v30 = v1;
      v29 = 55;
      sub_1D1CE53A4(&v29);
      if ((v10 & 1) == 0)
      {
        v11 = v9;
        v30 = v1;
        v29 = 29;
        sub_1D1CE53A4(&v29);
        if ((v13 & 1) == 0)
        {
          v14 = v12;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1D1E73A90;
          LOBYTE(v30) = 0;
          v16 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v30, v11);
          v18 = v17;
          v19 = MEMORY[0x1E69E6158];
          *(v15 + 56) = MEMORY[0x1E69E6158];
          v20 = sub_1D1757D20();
          *(v15 + 64) = v20;
          *(v15 + 32) = v16;
          *(v15 + 40) = v18;
          LOBYTE(v30) = 0;
          v21 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v30, v14);
          *(v15 + 96) = v19;
          *(v15 + 104) = v20;
          *(v15 + 72) = v21;
          *(v15 + 80) = v22;
          v23 = sub_1D1E6783C();

          return v23;
        }
      }

      return 0;
    }
  }

  else
  {
    if (!value)
    {
      return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
    }

    if (value == 1)
    {
      v8 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
LABEL_16:
      static String.hfLocalized(_:)(0xD00000000000003FLL, (v8 - 32) | 0x8000000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D1E739C0;
      LOBYTE(v30) = 0;
      v25 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v30, v7);
      v27 = v26;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1D1757D20();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      v28 = sub_1D1E6783C();

      return v28;
    }
  }

  return result;
}

uint64_t ActionService.valveString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService() + 60));
  v6 = 3;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    if (v1)
    {
      v3 = 0xD000000000000023;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v1)
    {
      v4 = "ionValve_OneStarting";
    }

    else
    {
      v4 = "rolHeaderCurrentTemp";
    }

    v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

    return v5;
  }

  return result;
}

uint64_t sub_1D1C8EB34(unsigned __int8 a1)
{
  v3 = *(v1 + *(type metadata accessor for ActionService() + 60));
  v12 = v3;
  v11 = a1;
  v4 = sub_1D1CE4920(&v11);
  result = 0;
  if (v4 != 2)
  {
    v6 = 0xD000000000000019;
    if (v4)
    {
      v12 = v3;
      v11 = 115;
      sub_1D1CE53A4(&v11);
      v8 = "HFSceneDescriptionValueOff";
      if ((v9 & 1) == 0 && v7 > 0.0)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v7);
      }
    }

    else
    {
      v8 = ", \n    underlyingType: ";
      v6 = 0xD00000000000001ALL;
    }

    v10 = static String.hfLocalized(_:)(v6, v8 | 0x8000000000000000);

    return v10;
  }

  return result;
}

uint64_t ActionService.actionCharaceristicDescription.getter()
{
  v1 = type metadata accessor for ActionService();
  result = 0;
  switch(*(v0 + *(v1 + 44)))
  {
    case 3:
      result = ActionService.airPurifierString.getter();
      break;
    case 0xE:
    case 0x33:
    case 0x34:
      result = ActionService.motorizedDoorOrWindowString.getter();
      break;
    case 0x10:
      result = ActionService.fanString.getter();
      break;
    case 0x11:
      result = ActionService.faucetString.getter();
      break;
    case 0x13:
      result = ActionService.doorStateString.getter();
      break;
    case 0x14:
      result = ActionService.heaterCoolerString.getter();
      break;
    case 0x15:
      result = ActionService.humidifierDehumidifierString.getter();
      break;
    case 0x18:
      result = ActionService.irrigationSystemString.getter();
      break;
    case 0x1C:
      result = ActionService.lightBulbString.getter();
      break;
    case 0x1E:
      result = ActionService.lockStateString.getter();
      break;
    case 0x22:
    case 0x29:
      result = ActionService.switchString.getter();
      break;
    case 0x23:
      result = ActionService.securitySystemString.getter();
      break;
    case 0x2C:
      result = ActionService.televisionString.getter();
      break;
    case 0x2E:
      result = ActionService.thermostatString.getter();
      break;
    case 0x2F:
      result = ActionService.valveString.getter();
      break;
    case 0x30:
      result = ActionService.ventilationFan.getter();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1C8ED40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1C8EDA4(uint64_t a1)
{
  v2 = type metadata accessor for ActionService();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1C8EE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ActionServiceGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActionServiceGroup.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionServiceGroup() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ActionServiceGroup()
{
  result = qword_1EC64CC98;
  if (!qword_1EC64CC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionServiceGroup.actionServicesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionServiceGroup() + 24));
}

uint64_t ActionServiceGroup.init(staticServiceGroup:overrideCharacteristicValues:overrideProfileValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v85 = a3;
  v6 = type metadata accessor for ActionService();
  v78 = *(v6 - 8);
  v7 = *(v78 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v92 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v91 = v20;
  v87 = v22;
  v88 = v21 + 16;
  (v22)(a4, a1);
  v23 = type metadata accessor for StaticServiceGroup();
  v24 = (a1 + *(v23 + 20));
  v25 = *v24;
  v26 = v24[1];
  v71 = type metadata accessor for ActionServiceGroup();
  v27 = *(v71 + 20);
  v73 = a4;
  v28 = (a4 + v27);
  *v28 = v25;
  v28[1] = v26;
  v29 = *(v23 + 56);
  v72 = a1;
  v30 = *(a1 + v29);

  v31 = sub_1D18DBB98(MEMORY[0x1E69E7CC0]);
  v32 = v30 + 64;
  v33 = 1 << *(v30 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v30 + 64);
  v36 = (v33 + 63) >> 6;
  v80 = v21;
  v90 = v21 + 8;
  v83 = v30;

  v37 = 0;
  v74 = v36;
  v75 = v30 + 64;
  v76 = v12;
  v77 = v19;
  v79 = v10;
  while (v35)
  {
    v89 = v31;
LABEL_12:
    v41 = __clz(__rbit64(v35)) | (v37 << 6);
    v42 = v83;
    v43 = *(v83 + 48);
    v44 = v80;
    v86 = *(v80 + 72);
    v45 = v91;
    v87(v19, v43 + v86 * v41, v91);
    v46 = *(v42 + 56);
    v47 = type metadata accessor for StaticService(0);
    sub_1D1C916E4(v46 + *(*(v47 - 8) + 72) * v41, &v19[*(v12 + 48)], type metadata accessor for StaticService);
    v48 = v92;
    sub_1D182C148(v19, v92);
    v49 = v19;
    v50 = v81;
    sub_1D182C148(v49, v81);
    v51 = *(v12 + 48);
    v52 = v84;

    v53 = v85;

    v54 = v82;
    ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)(v50 + v51, v52, v53, v82);
    v55 = *(v44 + 8);
    v55(v50, v45);
    v56 = v79;
    sub_1D1C8EE00(v54, v79);
    v57 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v57;
    v60 = sub_1D1742188(v48);
    v61 = v57[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_25;
    }

    v64 = v59;
    if (v57[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v93;
        if (v59)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D173DFA4();
        v31 = v93;
        if (v64)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D1731AC4(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_1D1742188(v92);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_27;
      }

      v60 = v65;
      v31 = v93;
      if (v64)
      {
LABEL_4:
        sub_1D1C91680(v56, v31[7] + *(v78 + 72) * v60);
        v19 = v77;
        sub_1D1C91618(v77);
        goto LABEL_5;
      }
    }

    v31[(v60 >> 6) + 8] |= 1 << v60;
    v87((v31[6] + v60 * v86), v92, v91);
    sub_1D1C8EE00(v56, v31[7] + *(v78 + 72) * v60);
    v19 = v77;
    sub_1D1C91618(v77);
    v67 = v31[2];
    v68 = __OFADD__(v67, 1);
    v69 = v67 + 1;
    if (v68)
    {
      goto LABEL_26;
    }

    v31[2] = v69;
LABEL_5:
    v35 &= v35 - 1;
    v12 = v76;
    v38 = *(v76 + 48);
    v39 = v92;
    v55(v92, v91);
    sub_1D1C9174C(v39 + v38, type metadata accessor for StaticService);
    v36 = v74;
    v32 = v75;
  }

  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v40 >= v36)
    {
      sub_1D1C9174C(v72, type metadata accessor for StaticServiceGroup);

      *(v73 + *(v71 + 24)) = v31;
      return result;
    }

    v35 = *(v32 + 8 * v40);
    ++v37;
    if (v35)
    {
      v89 = v31;
      v37 = v40;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t static ActionServiceGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionServiceGroup();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1D184B5C4(v11, v12);
}

uint64_t ActionServiceGroup.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for ActionServiceGroup();
  v4 = (v1 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1D1E678EC();
  v7 = *(v1 + *(v3 + 24));

  return sub_1D1857700(a1, v7);
}

uint64_t ActionServiceGroup.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for ActionServiceGroup();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_1D1E678EC();
  sub_1D1857700(v6, *(v0 + *(v1 + 24)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1C8F750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D184B5C4(v12, v13);
}

uint64_t sub_1D1C8F7E4(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D1E678EC();
  sub_1D1857700(v7, *(v1 + *(a1 + 24)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1C8F89C(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v5 = (v2 + *(a2 + 20));
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  v8 = *(v2 + *(a2 + 24));

  return sub_1D1857700(a1, v8);
}

uint64_t sub_1D1C8F948(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1D1E678EC();
  sub_1D1857700(v8, *(v2 + *(a2 + 24)));
  return sub_1D1E6926C();
}

uint64_t ActionServiceGroup.actionServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionServiceGroup() + 24));

  return sub_1D1782AC0(v2);
}

void *ActionServiceGroup.sortedActionServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionServiceGroup() + 24));

  v3 = sub_1D1782AC0(v2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1D1804514(*(v3 + 16), 0);
  v7 = *(type metadata accessor for ActionService() - 8);
  v8 = sub_1D18061F8(&v10, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v4);

  sub_1D1716918();
  if (v8 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = v6;
  sub_1D1C9041C(&v10);

  return v10;
}

uint64_t ActionServiceGroup.statusIcon.getter@<X0>(unint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for ActionService();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for ActionServiceGroup() + 24));

  v9 = sub_1D1782AC0(v8);
  v10 = v9[2];
  if (v10)
  {
    v19 = v2;
    v11 = sub_1D1804514(v10, 0);
    v18 = v3;
    v12 = sub_1D18061F8(&v21, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v10, v9);

    sub_1D1716918();
    if (v12 != v10)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v3 = v18;
    v2 = v19;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v21 = v11;
  sub_1D1C9041C(&v21);

  if (v21[2])
  {
    sub_1D1C916E4(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6, type metadata accessor for ActionService);

    v13 = v6[*(v2 + 44)] | (v6[*(v2 + 52)] << 8);
    result = sub_1D1C9174C(v6, type metadata accessor for ActionService);
    v15 = 0;
  }

  else
  {

    v13 = 0;
    v15 = 0x80;
  }

  v16 = v20;
  *v20 = v13;
  *(v16 + 8) = v15;
  *(v16 + 9) = 92;
  v16[2] = 0;
  v16[3] = 0;
  return result;
}

uint64_t ActionServiceGroup.temperatureStringIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ActionService();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(v1 + *(type metadata accessor for ActionServiceGroup() + 24));

  v13 = sub_1D1782AC0(v12);
  v14 = v13[2];
  if (v14)
  {
    v20 = v8;
    v21 = a1;
    v15 = sub_1D1804514(v14, 0);
    v19 = v4;
    v16 = sub_1D18061F8(&v22, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v14, v13);

    sub_1D1716918();
    if (v16 != v14)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v8 = v20;
    a1 = v21;
    v4 = v19;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v22 = v15;
  sub_1D1C9041C(&v22);

  if (v22[2])
  {
    sub_1D1C916E4(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v10, type metadata accessor for ActionService);

    sub_1D1C916E4(v10, v8, type metadata accessor for ActionService);
    sub_1D18F21EC(v8, a1);
    return sub_1D1C9174C(v10, type metadata accessor for ActionService);
  }

  else
  {

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t ActionServiceGroup.actionCharaceristicDescription.getter()
{
  v1 = type metadata accessor for ActionService();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for ActionServiceGroup() + 24));

  v8 = sub_1D1782AC0(v7);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = sub_1D1804514(*(v8 + 16), 0);
    v16 = v2;
    v12 = sub_1D18061F8(&v17, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v10, v9);

    sub_1D1716918();
    if (v12 != v10)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v16;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v17 = v11;
  sub_1D1C9041C(&v17);

  if (v17[2])
  {
    sub_1D1C916E4(v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for ActionService);

    v13 = ActionService.actionCharaceristicDescription.getter();
    sub_1D1C9174C(v5, type metadata accessor for ActionService);
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t ActionServiceGroup.isActivated.getter()
{
  v1 = type metadata accessor for ActionService();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for ActionServiceGroup() + 24));

  v8 = sub_1D1782AC0(v7);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = sub_1D1804514(*(v8 + 16), 0);
    v20 = v2;
    v12 = sub_1D18061F8(&v21, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v10, v9);

    sub_1D1716918();
    if (v12 != v10)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v20;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v21 = v11;
  sub_1D1C9041C(&v21);

  v13 = v21[2];
  if (v13)
  {
    v14 = 0;
    v15 = v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v16 = *(v2 + 72);
    do
    {
      sub_1D1C916E4(v15, v5, type metadata accessor for ActionService);
      v17 = ActionService.isActivated.getter();
      sub_1D1C9174C(v5, type metadata accessor for ActionService);
      v14 |= v17;
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D1C9041C(void **a1)
{
  v2 = *(type metadata accessor for ActionService() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C120(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C904C4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C904C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ActionService();
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActionService() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C90824(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D1C905F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C905F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for ActionService();
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_1D1C916E4(v24, v18, type metadata accessor for ActionService);
      sub_1D1C916E4(v21, v14, type metadata accessor for ActionService);
      v25 = MEMORY[0x1D3890070](v18, v14);
      sub_1D1C9174C(v14, type metadata accessor for ActionService);
      result = sub_1D1C9174C(v18, type metadata accessor for ActionService);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_1D1C8EE00(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C8EE00(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C90824(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v97 = a1;
  v109 = type metadata accessor for ActionService();
  v105 = *(v109 - 8);
  v9 = *(v105 + 64);
  v10 = MEMORY[0x1EEE9AC00](v109);
  v99 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v94 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v94 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v94 - v18;
  v107 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v97;
    if (!*v97)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1D1E0BE44(a4);
    }

    v110 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v107)
      {
        v90 = *(result + 16 * a4);
        v91 = result;
        v92 = *(result + 16 * (a4 - 1) + 40);
        sub_1D1C91104(*v107 + *(v105 + 72) * v90, *v107 + *(v105 + 72) * *(result + 16 * (a4 - 1) + 32), *v107 + *(v105 + 72) * v92, v5);
        if (v6)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1D1E0BE44(v91);
        }

        if (a4 - 2 >= *(v91 + 2))
        {
          goto LABEL_123;
        }

        v93 = &v91[16 * a4];
        *v93 = v90;
        *(v93 + 1) = v92;
        v110 = v91;
        sub_1D1E0BDB8(a4 - 1);
        result = v110;
        a4 = *(v110 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v100 = v22;
    if (v24 >= v20)
    {
      v30 = v24;
    }

    else
    {
      v25 = *(v105 + 72);
      v5 = *v107 + v25 * v24;
      v103 = *v107;
      v26 = v103;
      sub_1D1C916E4(v103 + v25 * v24, v19, type metadata accessor for ActionService);
      sub_1D1C916E4(v26 + v25 * v23, v16, type metadata accessor for ActionService);
      LODWORD(v104) = MEMORY[0x1D3890070](v19, v16);
      sub_1D1C9174C(v16, type metadata accessor for ActionService);
      result = sub_1D1C9174C(v19, type metadata accessor for ActionService);
      v95 = v23;
      v27 = v23 + 2;
      v106 = v25;
      v28 = v103 + v25 * (v23 + 2);
      while (v20 != v27)
      {
        sub_1D1C916E4(v28, v19, type metadata accessor for ActionService);
        sub_1D1C916E4(v5, v16, type metadata accessor for ActionService);
        v29 = MEMORY[0x1D3890070](v19, v16) & 1;
        sub_1D1C9174C(v16, type metadata accessor for ActionService);
        result = sub_1D1C9174C(v19, type metadata accessor for ActionService);
        ++v27;
        v28 += v106;
        v5 += v106;
        if ((v104 & 1) != v29)
        {
          v30 = v27 - 1;
          goto LABEL_11;
        }
      }

      v30 = v20;
LABEL_11:
      v23 = v95;
      a4 = v96;
      if (v104)
      {
        if (v30 < v95)
        {
          goto LABEL_126;
        }

        if (v95 < v30)
        {
          v94 = v6;
          v31 = v106 * (v30 - 1);
          v32 = v30 * v106;
          v104 = v30;
          v33 = v30;
          v34 = v95 * v106;
          do
          {
            if (v23 != --v33)
            {
              v35 = *v107;
              if (!*v107)
              {
                goto LABEL_132;
              }

              v5 = v35 + v34;
              sub_1D1C8EE00(v35 + v34, v99);
              if (v34 < v31 || v5 >= v35 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D1C8EE00(v99, v35 + v31);
            }

            ++v23;
            v31 -= v106;
            v32 -= v106;
            v34 += v106;
          }

          while (v23 < v33);
          v6 = v94;
          v23 = v95;
          a4 = v96;
          v30 = v104;
        }
      }
    }

    v36 = v107[1];
    if (v30 < v36)
    {
      if (__OFSUB__(v30, v23))
      {
        goto LABEL_125;
      }

      if (v30 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v36)
        {
          v37 = v107[1];
        }

        else
        {
          v37 = v23 + a4;
        }

        if (v37 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v30 != v37)
        {
          break;
        }
      }
    }

    v38 = v30;
    if (v30 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v100;
    }

    else
    {
      result = sub_1D177D070(0, *(v100 + 2) + 1, 1, v100);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v39 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = sub_1D177D070((v39 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v40 = &v22[16 * a4];
    *(v40 + 4) = v23;
    *(v40 + 5) = v38;
    v41 = *v97;
    if (!*v97)
    {
      goto LABEL_134;
    }

    v101 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v22 + 4);
          v44 = *(v22 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_54:
          if (v46)
          {
            goto LABEL_113;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_116;
          }

          v65 = &v22[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_120;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v69 = &v22[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_68:
        if (v64)
        {
          goto LABEL_115;
        }

        v72 = &v22[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v107)
        {
          goto LABEL_131;
        }

        v80 = v22;
        v81 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v42 + 40];
        sub_1D1C91104(*v107 + *(v105 + 72) * v81, *v107 + *(v105 + 72) * *&v22[16 * v42 + 32], *v107 + *(v105 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1D1E0BE44(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_110;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v110 = v80;
        result = sub_1D1E0BDB8(v42);
        v22 = v110;
        v5 = *(v110 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v22[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_111;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_112;
      }

      v54 = &v22[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_114;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_117;
      }

      if (v58 >= v50)
      {
        v76 = &v22[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_121;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v107[1];
    v21 = v101;
    a4 = v96;
    if (v101 >= v20)
    {
      goto LABEL_96;
    }
  }

  v94 = v6;
  v95 = v23;
  v83 = *v107;
  v84 = *(v105 + 72);
  v85 = *v107 + v84 * (v30 - 1);
  v86 = -v84;
  v87 = v23 - v30;
  v98 = v84;
  v5 = v83 + v30 * v84;
  v101 = v37;
LABEL_86:
  v103 = v87;
  v104 = v30;
  v102 = v5;
  v88 = v87;
  v106 = v85;
  while (1)
  {
    sub_1D1C916E4(v5, v19, type metadata accessor for ActionService);
    sub_1D1C916E4(v85, v16, type metadata accessor for ActionService);
    a4 = MEMORY[0x1D3890070](v19, v16);
    sub_1D1C9174C(v16, type metadata accessor for ActionService);
    result = sub_1D1C9174C(v19, type metadata accessor for ActionService);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v30 = v104 + 1;
      v85 = v106 + v98;
      v87 = v103 - 1;
      v38 = v101;
      v5 = v102 + v98;
      if (v104 + 1 != v101)
      {
        goto LABEL_86;
      }

      v6 = v94;
      v23 = v95;
      if (v101 < v95)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v83)
    {
      break;
    }

    a4 = v108;
    sub_1D1C8EE00(v5, v108);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C8EE00(a4, v85);
    v85 += v86;
    v5 += v86;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1D1C91104(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = type metadata accessor for ActionService();
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v44 = &v37 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v23 = -v14;
      v24 = a4 + v18;
      v25 = v43;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = v23;
      do
      {
        v37 = v26;
        v27 = a2 + v23;
        v42 = a2;
        v43 = a2 + v23;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v46 = v37;
            goto LABEL_59;
          }

          v38 = v26;
          v29 = v25;
          v30 = a3 + v23;
          v31 = v24 + v23;
          v32 = v44;
          sub_1D1C916E4(v31, v44, type metadata accessor for ActionService);
          v33 = v27;
          v34 = v45;
          sub_1D1C916E4(v33, v45, type metadata accessor for ActionService);
          v35 = MEMORY[0x1D3890070](v32, v34);
          sub_1D1C9174C(v34, type metadata accessor for ActionService);
          sub_1D1C9174C(v32, type metadata accessor for ActionService);
          if (v35)
          {
            break;
          }

          v26 = v31;
          if (a3 < v24 || v30 >= v24)
          {
            a3 = v30;
            v25 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v40;
          }

          else
          {
            v36 = a3 == v24;
            a3 = v30;
            v25 = v29;
            a1 = v40;
            if (!v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v31;
          a2 = v42;
          v28 = v31 > v41;
          v27 = v43;
          v23 = v39;
          if (!v28)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v42 || v30 >= v42)
        {
          a3 = v30;
          v25 = v29;
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v39;
          a1 = v40;
          v26 = v38;
        }

        else
        {
          v36 = a3 == v42;
          a3 = v30;
          v25 = v29;
          a2 = v43;
          v23 = v39;
          a1 = v40;
          v26 = v38;
          if (!v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v41);
    }

LABEL_57:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v44;
        sub_1D1C916E4(a2, v44, type metadata accessor for ActionService);
        v21 = v45;
        sub_1D1C916E4(a4, v45, type metadata accessor for ActionService);
        v22 = MEMORY[0x1D3890070](v20, v21);
        sub_1D1C9174C(v21, type metadata accessor for ActionService);
        sub_1D1C9174C(v20, type metadata accessor for ActionService);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D1DC7204(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1D1C91618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1C91680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1C916E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C9174C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C917F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1C918AC()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1C91938();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1C91938()
{
  if (!qword_1EC64CCA8)
  {
    sub_1D1E66A7C();
    type metadata accessor for ActionService();
    sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64CCA8);
    }
  }
}

uint64_t sub_1D1C919E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = &v59 - v4;
  v72 = type metadata accessor for StaticMatterDevice();
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v72);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v59 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v10 = *(*(v74 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v74);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v59 - v15;
  v17 = a1 + 64;
  v16 = *(a1 + 64);
  v65 = MEMORY[0x1E69E7CC8];
  v76 = MEMORY[0x1E69E7CC8];
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v61 = v5;
  v69 = (v5 + 48);
  v75 = a1;

  v23 = 0;
  v67 = v21;
  for (i = a1 + 64; ; v17 = i)
  {
    v24 = v23;
    if (!v20)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v23 = v24;
LABEL_10:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v23 << 6);
      v27 = v75;
      v28 = *(v75 + 48);
      v29 = sub_1D1E66A7C();
      v66 = *(v29 - 8);
      v30 = *(v66 + 72);
      v31 = v70;
      (*(v66 + 16))(v70, v28 + v30 * v26, v29);
      v32 = *(v27 + 56);
      v33 = (type metadata accessor for StaticAccessory(0) - 8);
      v34 = v32 + *(*v33 + 72) * v26;
      v35 = v74;
      sub_1D1CB2110(v34, &v31[*(v74 + 48)], type metadata accessor for StaticAccessory);
      v36 = v31;
      v37 = v71;
      sub_1D1741A90(v36, v71, &qword_1EC644B30, &qword_1D1E77280);
      v38 = v37 + *(v35 + 48) + v33[40];
      v39 = v73;
      sub_1D1741C08(v38, v73, &qword_1EC643650, &qword_1D1E71D40);
      if ((*v69)(v39, 1, v72) != 1)
      {
        break;
      }

      sub_1D1741A30(v37, &qword_1EC644B30, &qword_1D1E77280);
      result = sub_1D1741A30(v39, &qword_1EC643650, &qword_1D1E71D40);
      v24 = v23;
      v21 = v67;
      v17 = i;
      if (!v20)
      {
LABEL_7:
        while (1)
        {
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v23 >= v21)
          {

            return v65;
          }

          v20 = *(v17 + 8 * v23);
          ++v24;
          if (v20)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v60 = v30;
    v40 = v39;
    v41 = v62;
    sub_1D1CB2178(v40, v62, type metadata accessor for StaticMatterDevice);
    sub_1D1741A90(v37, v64, &qword_1EC644B30, &qword_1D1E77280);
    sub_1D1CB2178(v41, v63, type metadata accessor for StaticMatterDevice);
    v42 = v65[2];
    if (v65[3] <= v42)
    {
      sub_1D1725208(v42 + 1, 1);
    }

    v43 = v76;
    v44 = *(v76 + 40);
    sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    result = sub_1D1E676DC();
    v45 = v43 + 64;
    v65 = v43;
    v46 = -1 << *(v43 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6))) == 0)
    {
      break;
    }

    v49 = __clz(__rbit64((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
    v50 = v66;
    v51 = v60;
LABEL_25:
    v56 = *(v74 + 48);
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v57 = v65;
    v58 = v64;
    (*(v50 + 32))(v65[6] + v49 * v51, v64, v29);
    sub_1D1CB2178(v63, v57[7] + *(v61 + 72) * v49, type metadata accessor for StaticMatterDevice);
    ++v57[2];
    result = sub_1D1CB2248(v58 + v56, type metadata accessor for StaticAccessory);
    v21 = v67;
  }

  v52 = 0;
  v53 = (63 - v46) >> 6;
  v50 = v66;
  v51 = v60;
  while (++v48 != v53 || (v52 & 1) == 0)
  {
    v54 = v48 == v53;
    if (v48 == v53)
    {
      v48 = 0;
    }

    v52 |= v54;
    v55 = *(v45 + 8 * v48);
    if (v55 != -1)
    {
      v49 = __clz(__rbit64(~v55)) + (v48 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D1C92010(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1D1C920FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v41 - v6;
  v7 = sub_1D1E66A7C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v47 = v9 + 16;
  v49 = v9;
  v17 = (v9 + 8);

  v19 = v7;
  v20 = 0;
  v45 = a1 + 64;
  v46 = v7;
  v42 = a2;
  v43 = a1;
  v48 = v11;
  while (v15)
  {
LABEL_11:
    v26 = *(v49 + 72);
    (*(v49 + 16))(v11, *(a1 + 48) + v26 * (__clz(__rbit64(v15)) | (v20 << 6)), v19);
    v27 = *a2;
    v28 = sub_1D1742188(v11);
    if (v29)
    {
      v30 = v28;
      v31 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *a2;
      v51 = *a2;
      *a2 = 0x8000000000000000;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1735934();
        v33 = v51;
      }

      v24 = v46;
      (*v17)(*(v33 + 48) + v30 * v26, v46);
      v34 = *(v33 + 56);
      v44 = type metadata accessor for StaticService(0);
      v35 = v30;
      v36 = *(v44 - 8);
      v37 = v34 + *(v36 + 72) * v35;
      v38 = v50;
      sub_1D1CB2178(v37, v50, type metadata accessor for StaticService);
      sub_1D174F594(v35, v33);
      v39 = v42;
      v40 = *v42;
      *v42 = v33;

      (*(v36 + 56))(v38, 0, 1, v44);
      v23 = v38;
      v21 = v43;
      a2 = v39;
    }

    else
    {
      v21 = a1;
      v22 = type metadata accessor for StaticService(0);
      v23 = v50;
      (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
      v24 = v46;
    }

    v12 = v45;
    v15 &= v15 - 1;
    sub_1D1741A30(v23, &qword_1EC6436F0, &qword_1D1E99BC0);
    v11 = v48;
    result = (*v17)(v48, v24);
    v19 = v24;
    a1 = v21;
  }

  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v16)
    {
    }

    v15 = *(v12 + 8 * v25);
    ++v20;
    if (v15)
    {
      v20 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t StateSnapshot.staticResidents.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 76));

  return sub_1D1782540(v2);
}

uint64_t sub_1D1C924D0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, id *), uint64_t a3, unint64_t a4)
{
  v16 = a1;
  v6 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3891EF0](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a2(&v14, &v16, &v15);

      if (!v4)
      {
        v6 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return v6;
}

uint64_t sub_1D1C92604(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *, uint64_t), uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v6 = v5;
  v9 = a1;
  v16 = a1;
  v10 = *(a5 + 16);

  if (v10)
  {
    v11 = *(type metadata accessor for StaticService(0) - 8);
    v12 = a5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v9 = v6;
      a3(v15, &v16, v12);
      if (v6)
      {
        break;
      }

      v9 = v15[0];
      v16 = v15[0];
      v17 = v15[1];
      v12 += v13;
      if (!--v10)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_1D1C92714(char a1, void (*a2)(char *__return_ptr, char *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v17 = a1;
  v7 = *(a4 + 16);
  if (v7)
  {
    for (i = (a4 + 64); ; i += 5)
    {
      v11 = *(i - 1);
      v10 = *i;
      v12 = *(i - 3);
      v13 = *(i - 2);
      v16[0] = *(i - 4);
      v16[1] = v12;
      v16[2] = v13;
      v16[3] = v11;
      v16[4] = v10;

      a2(&v15, &v17, v16);
      if (v5)
      {
        break;
      }

      v6 = v15;
      v17 = v15;
      if (!--v7)
      {
        return v6 & 1;
      }
    }
  }

  return v6 & 1;
}

void sub_1D1C9282C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v24 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1E681BC();
    v6 = v23[1];
    v7 = v23[2];
    v8 = v23[3];
    v9 = v23[4];
    v10 = v23[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v21 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v23[0] = v18;
        a2(&v22, &v24, v23);
        if (v5)
        {
          break;
        }

        v24 = v22;
        v9 = v16;
        v10 = v17;
        v6 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v19 = sub_1D1E6877C();
        if (v19)
        {
          v22 = v19;
          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
          swift_dynamicCast();
          v18 = v23[0];
          v16 = v9;
          v17 = v10;
          if (v23[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_1D1716918();
    }

    else
    {
LABEL_19:
      sub_1D1716918();
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double StateSnapshot.tileInfo(for:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v104 = a2;
  v105 = a1;
  v86 = type metadata accessor for StaticMediaProfile();
  v83 = *(v86 - 8);
  v3 = *(v83 + 64);
  v4 = MEMORY[0x1EEE9AC00](v86);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v83 - v6;
  v90 = type metadata accessor for StaticMediaSystem();
  v87 = *(v90 - 8);
  v7 = *(v87 + 64);
  v8 = MEMORY[0x1EEE9AC00](v90);
  v88 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v83 - v10;
  v94 = type metadata accessor for StaticCameraProfile();
  v91 = *(v94 - 8);
  v11 = *(v91 + 64);
  v12 = MEMORY[0x1EEE9AC00](v94);
  v92 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v83 - v14;
  v98 = type metadata accessor for StaticService(0);
  v95 = *(v98 - 8);
  v15 = *(v95 + 64);
  v16 = MEMORY[0x1EEE9AC00](v98);
  v96 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v83 - v18;
  v102 = type metadata accessor for StaticServiceGroup();
  v99 = *(v102 - 8);
  v19 = *(v99 + 64);
  v20 = MEMORY[0x1EEE9AC00](v102);
  v100 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v83 - v22;
  v23 = type metadata accessor for StaticActionSet();
  v103 = *(v23 - 8);
  v24 = *(v103 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v83 - v28;
  v30 = type metadata accessor for StaticAccessory(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v83 - v36;
  v38 = type metadata accessor for StateSnapshot(0);
  v39 = v2;
  v40 = *(v2 + v38[8]);
  if (*(v40 + 16) && (v41 = sub_1D1742188(v105), (v42 & 1) != 0))
  {
    sub_1D1CB2110(*(v40 + 56) + *(v31 + 72) * v41, v35, type metadata accessor for StaticAccessory);
    v43 = type metadata accessor for StaticAccessory;
    sub_1D1CB2178(v35, v37, type metadata accessor for StaticAccessory);
    v44 = v104;
    v104[3] = v30;
    v44[4] = sub_1D1CB21E0(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    v46 = v37;
  }

  else
  {
    v47 = *(v39 + v38[9]);
    v48 = v105;
    if (*(v47 + 16) && (v49 = sub_1D1742188(v105), (v50 & 1) != 0))
    {
      sub_1D1CB2110(*(v47 + 56) + *(v103 + 72) * v49, v27, type metadata accessor for StaticActionSet);
      v43 = type metadata accessor for StaticActionSet;
      sub_1D1CB2178(v27, v29, type metadata accessor for StaticActionSet);
      v51 = v104;
      v104[3] = v23;
      v51[4] = sub_1D1CB21E0(&qword_1EC64C000, type metadata accessor for StaticActionSet);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
      v46 = v29;
    }

    else
    {
      v52 = *(v39 + v38[14]);
      if (*(v52 + 16) && (v53 = sub_1D1742188(v48), (v54 & 1) != 0))
      {
        v55 = *(v52 + 56);
        v56 = v100;
        sub_1D1CB2110(v55 + *(v99 + 72) * v53, v100, type metadata accessor for StaticServiceGroup);
        v43 = type metadata accessor for StaticServiceGroup;
        v57 = v101;
        sub_1D1CB2178(v56, v101, type metadata accessor for StaticServiceGroup);
        v58 = v104;
        v104[3] = v102;
        v59 = &unk_1EC64BA10;
        v60 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v61 = *(v39 + v38[15]);
        if (*(v61 + 16) && (v62 = sub_1D1742188(v48), (v63 & 1) != 0))
        {
          v64 = *(v61 + 56);
          v65 = v96;
          sub_1D1CB2110(v64 + *(v95 + 72) * v62, v96, type metadata accessor for StaticService);
          v43 = type metadata accessor for StaticService;
          v57 = v97;
          sub_1D1CB2178(v65, v97, type metadata accessor for StaticService);
          v58 = v104;
          v104[3] = v98;
          v59 = &unk_1EC646AF0;
          v60 = type metadata accessor for StaticService;
        }

        else
        {
          v66 = *(v39 + v38[10]);
          if (*(v66 + 16) && (v67 = sub_1D1742188(v48), (v68 & 1) != 0))
          {
            v69 = *(v66 + 56);
            v70 = v92;
            sub_1D1CB2110(v69 + *(v91 + 72) * v67, v92, type metadata accessor for StaticCameraProfile);
            v43 = type metadata accessor for StaticCameraProfile;
            v57 = v93;
            sub_1D1CB2178(v70, v93, type metadata accessor for StaticCameraProfile);
            v58 = v104;
            v104[3] = v94;
            v59 = &unk_1EC64C010;
            v60 = type metadata accessor for StaticCameraProfile;
          }

          else
          {
            v71 = *(v39 + v38[11]);
            if (*(v71 + 16) && (v72 = sub_1D1742188(v48), (v73 & 1) != 0))
            {
              v74 = *(v71 + 56);
              v75 = v88;
              sub_1D1CB2110(v74 + *(v87 + 72) * v72, v88, type metadata accessor for StaticMediaSystem);
              v43 = type metadata accessor for StaticMediaSystem;
              v57 = v89;
              sub_1D1CB2178(v75, v89, type metadata accessor for StaticMediaSystem);
              v58 = v104;
              v104[3] = v90;
              v59 = &unk_1EC64BFE8;
              v60 = type metadata accessor for StaticMediaSystem;
            }

            else
            {
              v76 = *(v39 + v38[12]);
              if (!*(v76 + 16) || (v77 = sub_1D1742188(v48), (v78 & 1) == 0))
              {
                v82 = v104;
                v104[4] = 0;
                result = 0.0;
                *v82 = 0u;
                *(v82 + 1) = 0u;
                return result;
              }

              v79 = *(v76 + 56) + *(v83 + 72) * v77;
              v80 = v84;
              sub_1D1CB2110(v79, v84, type metadata accessor for StaticMediaProfile);
              v43 = type metadata accessor for StaticMediaProfile;
              v57 = v85;
              sub_1D1CB2178(v80, v85, type metadata accessor for StaticMediaProfile);
              v58 = v104;
              v104[3] = v86;
              v59 = &unk_1EC64BFD0;
              v60 = type metadata accessor for StaticMediaProfile;
            }
          }
        }
      }

      v58[4] = sub_1D1CB21E0(v59, v60);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      v46 = v57;
    }
  }

  sub_1D1CB2178(v46, boxed_opaque_existential_1, v43);
  return result;
}

HMHome_optional __swiftcall StateSnapshot.UpdateType.relevantHome(in:)(Swift::OpaquePointer in)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v43 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v43 - v13;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v16 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1CB2110(v2, v18, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v32 = *v18;
      v33 = v18[1];
      v34 = *(v18 + 16);
      v43[1] = v32;
      v43[2] = v33;
      v44 = v34;
      v35 = sub_1D1C9EE9C();
      sub_1D1AC373C(v32, v33, v34);
      v21 = v35;
      goto LABEL_23;
    case 2:
      v29 = sub_1D1778968(*v18);

      v30 = [v29 home];

      v21 = v30;
      goto LABEL_23;
    case 3:
    case 10:
    case 11:
      sub_1D1CB2248(v18, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_22;
    case 4:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      goto LABEL_9;
    case 5:
LABEL_9:
      (*(v5 + 8))(v18, v4);
      goto LABEL_22;
    case 6:
      v40 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48));

      (*(v5 + 32))(v14, v18, v4);
      if (*(in._rawValue + 2))
      {
        v41 = sub_1D1742188(v14);
        if (v42)
        {
          v25 = *(v5 + 8);
          v26 = *(*(in._rawValue + 7) + 8 * v41);
          v27 = v14;
          goto LABEL_18;
        }
      }

      (*(v5 + 8))(v14, v4);
      goto LABEL_22;
    case 7:
      v22 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48));

      (*(v5 + 32))(v12, v18, v4);
      if (*(in._rawValue + 2))
      {
        v23 = sub_1D1742188(v12);
        if (v24)
        {
          v25 = *(v5 + 8);
          v26 = *(*(in._rawValue + 7) + 8 * v23);
          v27 = v12;
          goto LABEL_18;
        }
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_22;
    case 8:
    case 13:
      goto LABEL_23;
    case 9:

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2248(v18 + *(v28 + 48), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      goto LABEL_22;
    case 12:
      v36 = *v18;

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v5 + 32))(v9, v18 + *(v37 + 48), v4);
      if (*(in._rawValue + 2) && (v38 = sub_1D1742188(v9), (v39 & 1) != 0))
      {
        v25 = *(v5 + 8);
        v26 = *(*(in._rawValue + 7) + 8 * v38);
        v27 = v9;
LABEL_18:
        v25(v27, v4);
        v21 = v26;
      }

      else
      {
        (*(v5 + 8))(v9, v4);
LABEL_22:
        v21 = 0;
      }

LABEL_23:
      result.value.super.isa = v21;
      result.is_nil = v19;
      return result;
    default:
      v21 = *v18;
      goto LABEL_23;
  }
}

uint64_t StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v420 = a5;
  v422 = a4;
  v430 = a3;
  v404 = a2;
  v425 = a1;
  v398 = a6;
  v426 = 0;
  v440 = type metadata accessor for StaticZone();
  v432 = *(v440 - 8);
  v6 = *(v432 + 64);
  v7 = MEMORY[0x1EEE9AC00](v440);
  v439 = &v378 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v431 = &v378 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v438 = &v378 - v11;
  v407 = type metadata accessor for StaticRoom(0);
  v413 = *(v407 - 8);
  v12 = *(v413 + 64);
  MEMORY[0x1EEE9AC00](v407);
  v408 = &v378 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643740, &qword_1D1E71E98);
  v427 = *(v428 - 8);
  v14 = *(v427 + 64);
  MEMORY[0x1EEE9AC00](v428);
  v393 = &v378 - v15;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v437 = *(v441 - 8);
  v16 = v437[8];
  MEMORY[0x1EEE9AC00](v441);
  v406 = &v378 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643750, &unk_1D1E7E6B0);
  v444 = *(v18 - 8);
  v445 = v18;
  v19 = *(v444 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v409 = &v378 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643768, &qword_1D1E71EC0);
  v442 = *(v21 - 8);
  v443 = v21;
  v22 = *(v442 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v410 = &v378 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v417 = &v378 - v26;
  v434 = type metadata accessor for StaticHome();
  v435 = *(v434 - 8);
  v27 = *(v435 + 64);
  v28 = MEMORY[0x1EEE9AC00](v434);
  v399 = &v378 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v436 = (&v378 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v424 = &v378 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v378 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v403 = &v378 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v419 = (&v378 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x1EEE9AC00](v40);
  v390 = (&v378 - v43);
  MEMORY[0x1EEE9AC00](v42);
  v388 = &v378 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v380 = &v378 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v379 = &v378 - v50;
  v383 = type metadata accessor for StaticAccessory(0);
  v381 = *(v383 - 8);
  v51 = *(v381 + 64);
  MEMORY[0x1EEE9AC00](v383);
  v382 = &v378 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v387 = &v378 - v55;
  v386 = type metadata accessor for StaticSoftwareUpdate(0);
  v385 = *(v386 - 8);
  v56 = *(v385 + 64);
  v57 = MEMORY[0x1EEE9AC00](v386);
  v378 = &v378 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v384 = &v378 - v59;
  v60 = sub_1D1E66A7C();
  v446 = *(v60 - 8);
  v447 = v60;
  v61 = *(v446 + 64);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v448 = &v378 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v433 = &v378 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v412 = (&v378 - v67);
  MEMORY[0x1EEE9AC00](v66);
  v391 = &v378 - v68;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v416 = *(updated - 8);
  v70 = *(v416 + 64);
  v71 = MEMORY[0x1EEE9AC00](updated);
  v396 = &v378 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v397 = &v378 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v402 = &v378 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v400 = &v378 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v378 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v82 = *(*(v81 - 8) + 64);
  v83 = MEMORY[0x1EEE9AC00](v81 - 8);
  v395 = &v378 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v394 = &v378 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v421 = &v378 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v411 = &v378 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v389 = (&v378 - v92);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v401 = &v378 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v392 = (&v378 - v96);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v99 = &v378 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v102 = (&v378 - v101);
  v103 = MEMORY[0x1EEE9AC00](v100);
  v105 = (&v378 - v104);
  MEMORY[0x1EEE9AC00](v103);
  v107 = &v378 - v106;
  v108 = type metadata accessor for StateSnapshot(0);
  v109 = *(v108 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v112 = (&v378 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741C08(v422, v107, &unk_1EC649E30, &unk_1D1E91250);
  v405 = v109;
  v113 = *(v109 + 48);
  v418 = v108;
  v415 = v109 + 48;
  v414 = v113;
  v114 = v113(v107, 1, v108);
  v423 = updated;
  if (v114 == 1)
  {
    sub_1D1741A30(v107, &unk_1EC649E30, &unk_1D1E91250);
    v115 = v430;
    v116 = v447;
    v117 = v436;
    goto LABEL_40;
  }

  v118 = v112;
  sub_1D1CB2178(v107, v112, type metadata accessor for StateSnapshot);
  sub_1D1CB2110(v425, v80, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v116 = v447;
  v429 = v80;
  if (EnumCaseMultiPayload <= 3)
  {
    v117 = v436;
    if (EnumCaseMultiPayload == 1)
    {
      v145 = v425;
      v146 = v430;
      sub_1D1CA2C9C(v425, v430, v112, v105);
      sub_1D1CB2248(v112, type metadata accessor for StateSnapshot);
      if (v414(v105, 1, v418) != 1)
      {

        sub_1D1741A30(v422, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1CB2248(v145, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1CB2178(v105, v398, type metadata accessor for StateSnapshot);
        return sub_1D1CB2248(v429, type metadata accessor for StateSnapshot.UpdateType);
      }

      sub_1D1741A30(v105, &unk_1EC649E30, &unk_1D1E91250);
      v115 = v146;
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v120 = v425;
        sub_1D1CA519C(v425, v112, v99);
        sub_1D1CB2248(v112, type metadata accessor for StateSnapshot);
        if (v414(v99, 1, v418) == 1)
        {
          sub_1D1741A30(v99, &unk_1EC649E30, &unk_1D1E91250);
LABEL_21:
          v115 = v430;
          goto LABEL_39;
        }

        sub_1D1741A30(v422, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1CB2248(v120, type metadata accessor for StateSnapshot.UpdateType);
        v165 = v99;
        goto LABEL_159;
      }

LABEL_20:
      sub_1D1CB2248(v112, type metadata accessor for StateSnapshot);
      goto LABEL_21;
    }

    v151 = v425;
    v152 = v430;
    sub_1D1CA49F8(v425, v430, v112, v102);
    sub_1D1CB2248(v112, type metadata accessor for StateSnapshot);
    if (v414(v102, 1, v418) == 1)
    {
      sub_1D1741A30(v102, &unk_1EC649E30, &unk_1D1E91250);
      v115 = v152;
      goto LABEL_39;
    }

    sub_1D1741A30(v422, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1CB2248(v151, type metadata accessor for StateSnapshot.UpdateType);
    v165 = v102;
LABEL_159:
    sub_1D1CB2178(v165, v398, type metadata accessor for StateSnapshot);
    return sub_1D1CB2248(v429, type metadata accessor for StateSnapshot.UpdateType);
  }

  v117 = v436;
  if (EnumCaseMultiPayload != 4)
  {
    v121 = v425;
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload != 12)
      {
        goto LABEL_20;
      }

      v122 = v396;
      sub_1D1CB2110(v429, v396, type metadata accessor for StateSnapshot.UpdateType);
      v123 = *v122;
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      v125 = v446;
      v126 = v412;
      (*(v446 + 32))(v412, &v122[*(v124 + 48)], v116);
      v115 = v430;
      v127 = [v430 uniqueIdentifier];
      v128 = v433;
      sub_1D1E66A5C();

      LOBYTE(v127) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v130 = *(v125 + 8);
      v129 = v125 + 8;
      v131 = v128;
      v132 = v130;
      (v130)(v131, v116);
      if ((v127 & 1) == 0)
      {

        (v132)(v126, v116);
        sub_1D1CB2248(v118, type metadata accessor for StateSnapshot);
        goto LABEL_39;
      }

      v391 = v132;
      v133 = v418;
      v134 = *(v118 + v418[8]);

      v135 = v426;
      v136 = sub_1D1CBCAE4(v134, v123);

      v137 = *(v118 + *(v133 + 13));

      v387 = sub_1D1CBD344(v137, v123, v136);
      v426 = v135;
      v392 = v123;

      v386 = v136;

      v138 = v435;
      v139 = v388;
      v140 = v434;
      (*(v435 + 56))(v388, 1, 1, v434);
      v402 = *v118;
      v141 = v390;
      sub_1D1741A90(v139, v390, &qword_1EC64CCB0, &qword_1D1EA2640);
      v142 = *(v138 + 48);
      v143 = v142(v141, 1, v140);
      v385 = v129;
      if (v143 == 1)
      {
        sub_1D1CB2110(v118 + *(v133 + 5), v403, type metadata accessor for StaticHome);
        v144 = v142(v141, 1, v140);

        if (v144 != 1)
        {
          sub_1D1741A30(v141, &qword_1EC64CCB0, &qword_1D1EA2640);
        }
      }

      else
      {
LABEL_155:
        sub_1D1CB2178(v141, v403, type metadata accessor for StaticHome);
      }

      v340 = *(v133 + 5);
      v390 = *(v118 + *(v133 + 6));
      v341 = v390;
      v342 = *(v118 + *(v133 + 7));
      v343 = *(v118 + v418[9]);
      v344 = v118;
      v400 = *(v118 + v418[10]);
      v345 = *(v118 + v418[11]);
      v346 = *(v118 + v418[12]);
      v347 = v418[15];
      v396 = *(v118 + v418[14]);
      v401 = *(v118 + v347);
      v348 = *(v118 + v418[16]);
      v397 = *(v118 + v418[17]);
      v349 = v389;
      *v389 = v402;
      v350 = v418[19];
      v388 = *(v344 + v418[18]);
      v402 = *(v344 + v350);
      sub_1D1CB2178(v403, v349 + v340, type metadata accessor for StaticHome);
      *(v349 + v418[6]) = v341;
      *(v349 + v418[7]) = v342;
      *(v349 + v418[8]) = v386;
      *(v349 + v418[9]) = v343;
      *(v349 + v418[10]) = v400;
      *(v349 + v418[11]) = v345;
      *(v349 + v418[12]) = v346;
      *(v349 + v418[13]) = v387;
      *(v349 + v418[14]) = v396;
      *(v349 + v418[15]) = v401;
      *(v349 + v418[16]) = v348;
      *(v349 + v418[17]) = v397;
      *(v349 + v418[18]) = v388;
      *(v349 + v418[19]) = v402;
      (*(v405 + 56))(v349, 0, 1, v418);

      (v391)(v412, v116);
      sub_1D1CB2248(v344, type metadata accessor for StateSnapshot);
      if (v414(v349, 1, v418) == 1)
      {
        sub_1D1741A30(v349, &unk_1EC649E30, &unk_1D1E91250);
        v115 = v430;
        v117 = v436;
        goto LABEL_39;
      }

      sub_1D1741A30(v422, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1CB2248(v425, type metadata accessor for StateSnapshot.UpdateType);
      v165 = v349;
      goto LABEL_159;
    }

    v153 = v402;
    sub_1D1CB2110(v429, v402, type metadata accessor for StateSnapshot.UpdateType);
    v154 = v397;
    sub_1D1CB2110(v121, v397, type metadata accessor for StateSnapshot.UpdateType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v155 = *(v154 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48));
      v156 = v391;
      (*(v446 + 32))(v391, v154, v116);
      v157 = *(v112 + v418[8]);
      v115 = v430;
      if (*(v157 + 16) && (v158 = sub_1D1742188(v156), (v159 & 1) != 0))
      {
        v160 = *(v157 + 56) + *(v381 + 72) * v158;
        v161 = v382;
        sub_1D1CB2110(v160, v382, type metadata accessor for StaticAccessory);
        v162 = v387;
        sub_1D1741C08(v161 + *(v383 + 120), v387, &qword_1EC644760, &unk_1D1E9E530);
        sub_1D1CB2248(v161, type metadata accessor for StaticAccessory);
        v163 = v386;
        if ((*(v385 + 48))(v162, 1, v386) != 1)
        {
          sub_1D1CB2178(v162, v384, type metadata accessor for StaticSoftwareUpdate);
          v351 = v379;
          (*(v446 + 56))(v379, 1, 1, v116);
          v352 = *(v163 + 20);
          LOBYTE(v450) = v155;
          v353 = v380;
          sub_1D1D26B94(&v450, v380);
          v354 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
          (*(*(v354 - 8) + 56))(v353, 0, 1, v354);
          v355 = v378;
          sub_1D1D26F90(v351, v353, v378);
          sub_1D1741A30(v353, &qword_1EC644768, &qword_1D1E75AE0);
          sub_1D1741A30(v351, &qword_1EC642590, qword_1D1E71260);
          v166 = v401;
          sub_1D1CAC7EC(v355, v118, v401);
          sub_1D1CB2248(v355, type metadata accessor for StaticSoftwareUpdate);
          sub_1D1CB2248(v384, type metadata accessor for StaticSoftwareUpdate);
          (*(v446 + 8))(v391, v116);
          v121 = v425;
          v167 = v418;
          goto LABEL_37;
        }

        (*(v446 + 8))(v391, v116);
      }

      else
      {
        (*(v446 + 8))(v156, v116);
        v162 = v387;
        (*(v385 + 56))(v387, 1, 1, v386);
      }

      v121 = v425;
      sub_1D1741A30(v162, &qword_1EC644760, &unk_1D1E9E530);
      v166 = v401;
      v167 = v418;
      (*(v405 + 56))(v401, 1, 1, v418);
    }

    else
    {
      sub_1D1CB2248(v154, type metadata accessor for StateSnapshot.UpdateType);
      v166 = v401;
      v167 = v418;
      (*(v405 + 56))(v401, 1, 1, v418);
      v115 = v430;
    }

LABEL_37:
    sub_1D1CB2248(v118, type metadata accessor for StateSnapshot);
    if (v414(v166, 1, v167) == 1)
    {
      sub_1D1741A30(v166, &unk_1EC649E30, &unk_1D1E91250);
      (*(v446 + 8))(v153, v116);
      goto LABEL_39;
    }

    sub_1D1741A30(v422, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1CB2248(v121, type metadata accessor for StateSnapshot.UpdateType);
    sub_1D1CB2178(v166, v398, type metadata accessor for StateSnapshot);
    (*(v446 + 8))(v153, v116);
    return sub_1D1CB2248(v429, type metadata accessor for StateSnapshot.UpdateType);
  }

  v147 = v400;
  sub_1D1CB2110(v429, v400, type metadata accessor for StateSnapshot.UpdateType);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

  v149 = v392;
  v150 = v425;
  v115 = v430;
  sub_1D1CA5A08(v425, v118, v430, v392);
  sub_1D1CB2248(v118, type metadata accessor for StateSnapshot);
  if (v414(v149, 1, v418) != 1)
  {

    sub_1D1741A30(v422, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1CB2248(v150, type metadata accessor for StateSnapshot.UpdateType);
    sub_1D1CB2178(v149, v398, type metadata accessor for StateSnapshot);
    (*(v446 + 8))(v147, v116);
    return sub_1D1CB2248(v429, type metadata accessor for StateSnapshot.UpdateType);
  }

  sub_1D1741A30(v149, &unk_1EC649E30, &unk_1D1E91250);
  (*(v446 + 8))(v147, v116);
LABEL_39:
  sub_1D1CB2248(v429, type metadata accessor for StateSnapshot.UpdateType);
LABEL_40:
  v168 = sub_1D1D3798C(v115);
  v169 = v404;
  v170 = sub_1D16F8F48(0xD000000000000026, 0x80000001D1EBBB50);
  v171 = sub_1D1CEB928(v169, v170);

  if (qword_1EE07B5D0 != -1)
  {
    goto LABEL_165;
  }

  while (1)
  {
    v172 = sub_1D1E6709C();
    __swift_project_value_buffer(v172, qword_1EE07B5D8);

    v173 = sub_1D1E6707C();
    v174 = sub_1D1E6831C();

    v175 = os_log_type_enabled(v173, v174);
    v176 = v171;
    v429 = v171;
    v392 = v168;
    if (v175)
    {
      v177 = swift_slowAlloc();
      v412 = swift_slowAlloc();
      v450 = v412;
      *v177 = 136315138;
      v178 = *(v171 + 16);
      v179 = MEMORY[0x1E69E7CC0];
      if (v178)
      {
        v402 = v177;
        LODWORD(v403) = v174;
        v405 = v173;
        v449 = MEMORY[0x1E69E7CC0];
        sub_1D178CD24(0, v178, 0);
        v179 = v449;
        v180 = v171 + ((*(v435 + 80) + 32) & ~*(v435 + 80));
        v181 = *(v435 + 72);
        v182 = v434;
        do
        {
          sub_1D1CB2110(v180, v36, type metadata accessor for StaticHome);
          v183 = (v36 + *(v182 + 20));
          v184 = *v183;
          v185 = v183[1];

          sub_1D1CB2248(v36, type metadata accessor for StaticHome);
          v449 = v179;
          v187 = *(v179 + 2);
          v186 = *(v179 + 3);
          if (v187 >= v186 >> 1)
          {
            sub_1D178CD24((v186 > 1), v187 + 1, 1);
            v182 = v434;
            v179 = v449;
          }

          *(v179 + 2) = v187 + 1;
          v188 = &v179[16 * v187];
          *(v188 + 4) = v184;
          *(v188 + 5) = v185;
          v180 += v181;
          --v178;
        }

        while (v178);
        v116 = v447;
        v117 = v436;
        v173 = v405;
        LOBYTE(v174) = v403;
        v177 = v402;
      }

      v449 = v179;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
      sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640);
      v189 = sub_1D1E6770C();
      v191 = v190;

      v192 = sub_1D1B1312C(v189, v191, &v450);

      *(v177 + 4) = v192;
      _os_log_impl(&dword_1D16EC000, v173, v174, "Homes found: [%s]", v177, 0xCu);
      v193 = v412;
      __swift_destroy_boxed_opaque_existential_1(v412);
      MEMORY[0x1D3893640](v193, -1, -1);
      MEMORY[0x1D3893640](v177, -1, -1);

      v176 = v429;
    }

    else
    {
    }

    v194 = v435;
    v36 = v433;
    v195 = *(v176 + 16);
    if (v195)
    {
      v168 = 0;
      v171 = v446 + 8;
      while (v168 < *(v176 + 16))
      {
        sub_1D1CB2110(v176 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v168, v117, type metadata accessor for StaticHome);
        v196 = [v430 uniqueIdentifier];
        sub_1D1E66A5C();

        LOBYTE(v196) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        (*v171)(v36, v116);
        if (v196)
        {
          v202 = v419;
          sub_1D1CB2178(v117, v419, type metadata accessor for StaticHome);
          v198 = v434;
          (*(v194 + 56))(v202, 0, 1, v434);
          sub_1D1CB2178(v202, v424, type metadata accessor for StaticHome);
          v199 = v430;
          goto LABEL_58;
        }

        ++v168;
        sub_1D1CB2248(v117, type metadata accessor for StaticHome);
        v176 = v429;
        if (v195 == v168)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
      goto LABEL_163;
    }

LABEL_55:
    v197 = v419;
    v198 = v434;
    (*(v194 + 56))(v419, 1, 1, v434);
    v199 = v430;
    v200 = v430;
    v201 = v404;
    sub_1D1CEBBBC(v200, v201, v424);
    if ((*(v194 + 48))(v197, 1, v198) != 1)
    {
      sub_1D1741A30(v197, &qword_1EC64CCB0, &qword_1D1EA2640);
    }

LABEL_58:
    v391 = sub_1D1D41A94(v199);
    v117 = *(v198 + 44);
    v203 = v424;
    v204 = *(v424 + v117);
    v205 = [v199 accessories];
    v435 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v206 = sub_1D1E67C1C();

    v207 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
    v208 = MEMORY[0x1EEE9AC00](v207);
    v209 = v422;
    v210 = v425;
    *(&v378 - 6) = v422;
    *(&v378 - 5) = v210;
    *(&v378 - 4) = v199;
    *(&v378 - 24) = v204;
    *(&v378 - 2) = v420;
    v168 = v426;
    v211 = sub_1D1C924D0(v208, sub_1D1CBD74C, (&v378 - 8), v206);

    LOBYTE(v450) = *(v203 + v117);
    v419 = v211;
    v412 = sub_1D1C4CFD8(v199, &v450, v211);
    v212 = [v199 uniqueIdentifier];
    sub_1D1E66A5C();

    v213 = v417;
    (*(v416 + 56))(v417, 1, 1, v423);
    v214 = sub_1D1CBDB94(v209, v36, v213);
    sub_1D1741A30(v213, &qword_1EC6437E0, &unk_1D1E96B80);
    v215 = v447;
    (*(v446 + 8))(v36, v447);
    v436 = v117;
    LOBYTE(v450) = *(v203 + v117);
    v216 = v411;
    sub_1D1741C08(v209, v411, &unk_1EC649E30, &unk_1D1E91250);
    v217 = v418;
    if (v414(v216, 1, v418) == 1)
    {
      sub_1D1741A30(v216, &unk_1EC649E30, &unk_1D1E91250);
      v218 = sub_1D18D61C8(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v218 = *(v216 + v217[18]);

      sub_1D1CB2248(v216, type metadata accessor for StateSnapshot);
    }

    v219 = v430;
    v220 = sub_1D1BC6D18(v430, &v450, v419, v218, v214);

    v221 = v424;
    v222 = v436;
    LOBYTE(v450) = *(v436 + v424);
    v411 = sub_1D1B7DCCC(v219, &v450, v220);
    v223 = *(v222 + v221);
    v224 = [v219 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v225 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v226);
    *(&v378 - 6) = v425;
    *(&v378 - 5) = v219;
    *(&v378 - 32) = v223;
    v417 = v220;
    v227 = v420;
    *(&v378 - 3) = v220;
    *(&v378 - 2) = v227;
    v228 = sub_1D1787364(sub_1D1CBDF48, (&v378 - 8), v225);

    v36 = *(v228 + 2);
    if (v36)
    {
      v434 = v168;
      v450 = MEMORY[0x1E69E7CC0];
      sub_1D178D318(0, v36, 0);
      v229 = v450;
      v230 = *(type metadata accessor for StaticMediaSystem() - 8);
      v231 = (*(v230 + 80) + 32) & ~*(v230 + 80);
      v433 = v228;
      v232 = &v228[v231];
      v233 = *(v230 + 72);
      v234 = (v446 + 16);
      v117 = &qword_1D1E71EC0;
      v235 = v410;
      do
      {
        v236 = *(v443 + 48);
        sub_1D1CB2110(v232, v235 + v236, type metadata accessor for StaticMediaSystem);
        (*v234)(v235, v235 + v236, v215);
        v450 = v229;
        v238 = *(v229 + 16);
        v237 = *(v229 + 24);
        if (v238 >= v237 >> 1)
        {
          sub_1D178D318(v237 > 1, v238 + 1, 1);
          v229 = v450;
        }

        *(v229 + 16) = v238 + 1;
        sub_1D1741A90(v235, v229 + ((*(v442 + 80) + 32) & ~*(v442 + 80)) + *(v442 + 72) * v238, &qword_1EC643768, &qword_1D1E71EC0);
        v232 += v233;
        --v36;
        v215 = v447;
      }

      while (v36);

      v168 = v434;
      if (!*(v229 + 16))
      {
LABEL_69:
        v239 = MEMORY[0x1E69E7CC8];
        goto LABEL_70;
      }
    }

    else
    {

      v229 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_69;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B00, &unk_1D1E7BBF0);
    v239 = sub_1D1E68BCC();
LABEL_70:
    v450 = v239;
    sub_1D1CBDF6C(v229, 1, &v450);
    if (v168)
    {
      goto LABEL_185;
    }

    v410 = v450;
    v240 = *(v436 + v424);
    v133 = v430;
    v241 = [v430 accessories];
    v242 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v243);
    v244 = v417;
    *(&v378 - 6) = v425;
    *(&v378 - 5) = v244;
    *(&v378 - 4) = v133;
    *(&v378 - 24) = v240;
    *(&v378 - 2) = v420;
    v245 = sub_1D17876AC(sub_1D1CBE370, (&v378 - 8), v242);

    v246 = v245[2];
    if (v246)
    {
      v443 = 0;
      v450 = MEMORY[0x1E69E7CC0];
      sub_1D178D358(0, v246, 0);
      v247 = v450;
      v248 = *(type metadata accessor for StaticMediaProfile() - 8);
      v249 = *(v248 + 80);
      v442 = v245;
      v250 = v245 + ((v249 + 32) & ~v249);
      v251 = *(v248 + 72);
      v133 = (v446 + 16);
      v117 = &unk_1D1E7E6B0;
      v252 = v409;
      do
      {
        v253 = v445[12];
        sub_1D1CB2110(v250, v252 + v253, type metadata accessor for StaticMediaProfile);
        (*v133)(v252, v252 + v253, v447);
        v450 = v247;
        v36 = *(v247 + 16);
        v254 = *(v247 + 24);
        if (v36 >= v254 >> 1)
        {
          sub_1D178D358(v254 > 1, v36 + 1, 1);
          v247 = v450;
        }

        *(v247 + 16) = v36 + 1;
        sub_1D1741A90(v252, v247 + ((*(v444 + 80) + 32) & ~*(v444 + 80)) + *(v444 + 72) * v36, &qword_1EC643750, &unk_1D1E7E6B0);
        v250 += v251;
        --v246;
      }

      while (v246);

      v168 = v443;
    }

    else
    {

      v247 = MEMORY[0x1E69E7CC0];
    }

    v255 = v421;
    if (*(v247 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF8, &unk_1D1E6E840);
      v256 = sub_1D1E68BCC();
    }

    else
    {
      v256 = MEMORY[0x1E69E7CC8];
    }

    v257 = v420;
    v450 = v256;
    sub_1D1CBE398(v247, 1, &v450);
    if (v168)
    {
      goto LABEL_185;
    }

    v416 = v450;
    sub_1D1741C08(v422, v255, &unk_1EC649E30, &unk_1D1E91250);
    v258 = v418;
    if (v414(v255, 1, v418) == 1)
    {
      sub_1D1741A30(v255, &unk_1EC649E30, &unk_1D1E91250);
      v116 = 0;
    }

    else
    {
      v116 = *(v255 + v258[9]);

      sub_1D1CB2248(v255, type metadata accessor for StateSnapshot);
    }

    if ((sub_1D1CC8FBC(v257) & 1) == 0)
    {

      v409 = sub_1D18D50D4(MEMORY[0x1E69E7CC0]);
      goto LABEL_99;
    }

    v259 = v257;
    v260 = v430;
    v261 = [v430 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v262 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v263);
    v264 = v425;
    *(&v378 - 6) = v259;
    *(&v378 - 5) = v264;
    v265 = v419;
    *(&v378 - 4) = v116;
    *(&v378 - 3) = v265;
    *(&v378 - 2) = v416;
    *(&v378 - 1) = v260;
    v266 = sub_1D178701C(sub_1D1CBE7B8, (&v378 - 8), v262);

    v267 = v266[2];
    if (v267)
    {
      v444 = 0;
      v445 = v116;
      v450 = MEMORY[0x1E69E7CC0];
      sub_1D178D0D4(0, v267, 0);
      v133 = v450;
      v268 = *(type metadata accessor for StaticActionSet() - 8);
      v269 = *(v268 + 80);
      v443 = v266;
      v36 = v266 + ((v269 + 32) & ~v269);
      v270 = *(v268 + 72);
      v271 = (v446 + 16);
      v272 = v406;
      do
      {
        v273 = *(v441 + 48);
        sub_1D1CB2110(v36, v272 + v273, type metadata accessor for StaticActionSet);
        (*v271)(v272, v272 + v273, v447);
        v450 = v133;
        v117 = v133[2];
        v274 = v133[3];
        if (v117 >= v274 >> 1)
        {
          sub_1D178D0D4(v274 > 1, v117 + 1, 1);
          v133 = v450;
        }

        v133[2] = (v117 + 1);
        sub_1D1741A90(v272, v133 + ((*(v437 + 80) + 32) & ~*(v437 + 80)) + v437[9] * v117, &qword_1EC643710, &unk_1D1EA2630);
        v36 += v270;
        --v267;
      }

      while (v267);

      v168 = v444;
      v116 = v445;
      if (!v133[2])
      {
LABEL_96:
        v275 = MEMORY[0x1E69E7CC8];
        goto LABEL_97;
      }
    }

    else
    {

      v133 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_96;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
    v275 = sub_1D1E68BCC();
LABEL_97:
    v450 = v275;
    sub_1D1CB961C(v133, 1, &v450);
    if (v168)
    {
      goto LABEL_185;
    }

    v409 = v450;
LABEL_99:
    v118 = &selRef_addZoneWithName_completionHandler_;
    v171 = v430;
    v276 = [v430 rooms];
    v277 = sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    v278 = sub_1D1E67C1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = [v171 roomForEntireHome];
    v450 = v278;
    sub_1D17A3D24(inited);
    v405 = v450;
    if (v450 >> 62)
    {
      break;
    }

    v280 = *((v450 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v280)
    {
      goto LABEL_167;
    }

LABEL_101:
    v450 = MEMORY[0x1E69E7CC0];
    sub_1D178D1D4(0, v280 & ~(v280 >> 63), 0);
    if (v280 < 0)
    {
      __break(1u);
LABEL_185:

      __break(1u);
      return result;
    }

    v426 = v450;
    v402 = sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v281 = 0;
    v401 = "showPredictedScenesOnDashboard";
    v400 = "erStrings_roomActionSets";
    v406 = (v405 & 0xC000000000000001);
    v397 = v405 & 0xFFFFFFFFFFFFFF8;
    v396 = (v405 + 32);
    v445 = (v446 + 32);
    v435 = v277;
    v403 = v280;
    while (!__OFADD__(v281, 1))
    {
      v421 = v281 + 1;
      if (v406)
      {
        v282 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        if (v281 >= *(v397 + 16))
        {
          goto LABEL_164;
        }

        v282 = *&v396[8 * v281];
      }

      v116 = v282;
      v283 = [v430 zones];
      sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
      v284 = sub_1D1E67C1C();

      if (v284 >> 62)
      {
        v36 = sub_1D1E6873C();
      }

      else
      {
        v36 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v423 = v284;
      if (v36)
      {
        v285 = 0;
        v442 = v284 & 0xFFFFFFFFFFFFFF8;
        v443 = v284 & 0xC000000000000001;
        v441 = v284 + 32;
        v141 = MEMORY[0x1E69E7CC0];
        v434 = v36;
        v433 = v116;
        while (1)
        {
          if (v443)
          {
            v286 = MEMORY[0x1D3891EF0](v285, v423);
            v287 = __OFADD__(v285, 1);
            v288 = v285 + 1;
            if (v287)
            {
              goto LABEL_153;
            }
          }

          else
          {
            if (v285 >= *(v442 + 16))
            {
              goto LABEL_154;
            }

            v286 = *(v441 + 8 * v285);
            v287 = __OFADD__(v285, 1);
            v288 = v285 + 1;
            if (v287)
            {
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
              goto LABEL_155;
            }
          }

          v444 = v288;
          v133 = v286;
          v289 = [v286 v118[6]];
          v290 = sub_1D1E67C1C();

          v449 = v116;
          MEMORY[0x1EEE9AC00](v291);
          *(&v378 - 2) = &v449;
          LOBYTE(v289) = sub_1D18B8754(sub_1D1CBE79C, (&v378 - 4), v290);

          if (v289)
          {
            v436 = v141;
            v437 = v168;
            v292 = [v133 uniqueIdentifier];
            v293 = v439;
            sub_1D1E66A5C();

            v294 = [v133 name];
            v295 = sub_1D1E6781C();
            v297 = v296;

            v298 = &v293[*(v440 + 20)];
            *v298 = v295;
            v298[1] = v297;
            v168 = v133;
            v299 = [v133 v118[6]];
            v300 = sub_1D1E67C1C();

            if (v300 >> 62)
            {
              v301 = sub_1D1E6873C();
              if (v301)
              {
LABEL_120:
                v302 = 0;
                v133 = (v300 & 0xC000000000000001);
                v303 = MEMORY[0x1E69E7CC0];
                while (1)
                {
                  if (v133)
                  {
                    v304 = MEMORY[0x1D3891EF0](v302, v300);
                  }

                  else
                  {
                    if (v302 >= *((v300 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_149;
                    }

                    v304 = *(v300 + 8 * v302 + 32);
                  }

                  v305 = v304;
                  v306 = v302 + 1;
                  if (__OFADD__(v302, 1))
                  {
                    break;
                  }

                  v307 = [v304 uniqueIdentifier];
                  sub_1D1E66A5C();

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v303 = sub_1D177D0AC(0, v303[2] + 1, 1, v303);
                  }

                  v309 = v303[2];
                  v308 = v303[3];
                  if (v309 >= v308 >> 1)
                  {
                    v303 = sub_1D177D0AC(v308 > 1, v309 + 1, 1, v303);
                  }

                  v303[2] = v309 + 1;
                  (*(v446 + 32))(v303 + ((*(v446 + 80) + 32) & ~*(v446 + 80)) + *(v446 + 72) * v309, v448, v447);
                  ++v302;
                  if (v306 == v301)
                  {
                    goto LABEL_137;
                  }
                }

                __break(1u);
LABEL_149:
                __break(1u);
                goto LABEL_150;
              }
            }

            else
            {
              v301 = *((v300 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v301)
              {
                goto LABEL_120;
              }
            }

            v303 = MEMORY[0x1E69E7CC0];
LABEL_137:

            v310 = v439;
            *&v439[*(v440 + 24)] = v303;
            v311 = v431;
            sub_1D1CB2178(v310, v431, type metadata accessor for StaticZone);
            sub_1D1CB2178(v311, v438, type metadata accessor for StaticZone);
            v141 = v436;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v141 = sub_1D177D7A4(0, *(v141 + 2) + 1, 1, v141);
            }

            v118 = &selRef_addZoneWithName_completionHandler_;
            v116 = v433;
            v36 = v434;
            v313 = *(v141 + 2);
            v312 = *(v141 + 3);
            v168 = v437;
            if (v313 >= v312 >> 1)
            {
              v141 = sub_1D177D7A4(v312 > 1, v313 + 1, 1, v141);
            }

            *(v141 + 2) = v313 + 1;
            sub_1D1CB2178(v438, v141 + ((*(v432 + 80) + 32) & ~*(v432 + 80)) + *(v432 + 72) * v313, type metadata accessor for StaticZone);
          }

          else
          {
          }

          v285 = v444;
          if (v444 == v36)
          {
            goto LABEL_143;
          }
        }
      }

      v141 = MEMORY[0x1E69E7CC0];
LABEL_143:

      v444 = sub_1D17843EC(v141);

      v314 = v116;
      v443 = sub_1D1CBAA28(v417, v314, sub_1D1CB9E24, sub_1D1CB9E24);

      v315 = v314;
      v442 = sub_1D1CBAA28(v409, v315, sub_1D1CBA338, sub_1D1CBA338);

      v316 = v315;
      v441 = sub_1D1CBAA28(v411, v316, sub_1D1CBABEC, sub_1D1CBABEC);

      v317 = v316;
      v437 = sub_1D1CBAA28(v410, v317, sub_1D1CBB2DC, sub_1D1CBB2DC);

      v318 = v317;
      v436 = sub_1D1CBAA28(v416, v318, sub_1D1CBB7F0, sub_1D1CBB7F0);

      v319 = v318;
      v434 = sub_1D1CBAA28(v412, v319, sub_1D1CBBD04, sub_1D1CBBD04);

      v116 = v319;
      v433 = sub_1D1CBAA28(v419, v116, sub_1D1CBC3F4, sub_1D1CBC3F4);

      v320 = [v116 uniqueIdentifier];
      v321 = v408;
      sub_1D1E66A5C();

      v322 = [v116 name];
      v423 = sub_1D1E6781C();
      v36 = v323;

      v117 = v407;
      sub_1D18B1B7C(v321 + *(v407 + 24));
      v133 = v430;
      v324 = [v430 roomForEntireHome];
      LOBYTE(v317) = sub_1D1E684FC();

      v325 = [v133 uniqueIdentifier];
      v326 = v321 + *(v117 + 36);
      sub_1D1E66A5C();

      v327 = sub_1D18AF4CC(0xD000000000000028, v401 | 0x8000000000000000);
      v328 = sub_1D18AF4CC(0xD000000000000026, v400 | 0x8000000000000000);
      v329 = sub_1D18B13F4();

      v330 = (v321 + *(v117 + 20));
      *v330 = v423;
      v330[1] = v36;
      *(v321 + *(v117 + 28)) = v317 & 1;
      v331 = v443;
      *(v321 + *(v117 + 32)) = v444;
      *(v321 + *(v117 + 40)) = v331;
      v332 = v441;
      *(v321 + *(v117 + 44)) = v442;
      *(v321 + *(v117 + 48)) = v332;
      v333 = v436;
      *(v321 + *(v117 + 52)) = v437;
      *(v321 + *(v117 + 56)) = v333;
      *(v321 + *(v117 + 60)) = v434;
      *(v321 + *(v117 + 64)) = v433;
      *(v321 + *(v117 + 68)) = v327;
      *(v321 + *(v117 + 72)) = v328;
      *(v321 + *(v117 + 76)) = v329;
      v334 = v426;
      v450 = v426;
      v171 = *(v426 + 16);
      v335 = *(v426 + 24);
      if (v171 >= v335 >> 1)
      {
        sub_1D178D1D4(v335 > 1, v171 + 1, 1);
        v321 = v408;
        v334 = v450;
      }

      *(v334 + 16) = v171 + 1;
      v336 = (*(v413 + 80) + 32) & ~*(v413 + 80);
      v426 = v334;
      sub_1D1CB2178(v321, v334 + v336 + *(v413 + 72) * v171, type metadata accessor for StaticRoom);
      v281 = v421;
      v118 = &selRef_addZoneWithName_completionHandler_;
      if (v421 == v403)
      {
LABEL_150:

        v337 = v426;
        v338 = *(v426 + 16);
        if (v338)
        {
          goto LABEL_168;
        }

        goto LABEL_151;
      }
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    swift_once();
  }

  v280 = sub_1D1E6873C();
  if (v280)
  {
    goto LABEL_101;
  }

LABEL_167:

  v337 = MEMORY[0x1E69E7CC0];
  v338 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v338)
  {
LABEL_168:
    v450 = MEMORY[0x1E69E7CC0];
    v356 = v337;
    sub_1D178D194(0, v338, 0);
    v339 = v450;
    v357 = (*(v413 + 80) + 32) & ~*(v413 + 80);
    v426 = v356;
    v358 = v356 + v357;
    v359 = *(v413 + 72);
    v360 = (v446 + 16);
    v361 = v393;
    do
    {
      v362 = *(v428 + 48);
      sub_1D1CB2110(v358, v361 + v362, type metadata accessor for StaticRoom);
      (*v360)(v361, v361 + v362, v447);
      v450 = v339;
      v364 = *(v339 + 16);
      v363 = *(v339 + 24);
      if (v364 >= v363 >> 1)
      {
        sub_1D178D194(v363 > 1, v364 + 1, 1);
        v361 = v393;
        v339 = v450;
      }

      *(v339 + 16) = v364 + 1;
      sub_1D1741A90(v361, v339 + ((*(v427 + 80) + 32) & ~*(v427 + 80)) + *(v427 + 72) * v364, &qword_1EC643740, &qword_1D1E71E98);
      v358 += v359;
      --v338;
    }

    while (v338);
  }

  else
  {
LABEL_151:

    v339 = MEMORY[0x1E69E7CC0];
  }

  v365 = v395;
  if (*(v339 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
    v366 = sub_1D1E68BCC();
  }

  else
  {
    v366 = MEMORY[0x1E69E7CC8];
  }

  v367 = v394;
  v450 = v366;
  sub_1D1CB9A20(v339, 1, &v450);
  if (v168)
  {
    goto LABEL_185;
  }

  v368 = v450;
  v369 = sub_1D1CFD39C(v430);
  sub_1D1CB2110(v424, v399, type metadata accessor for StaticHome);
  sub_1D1741C08(v422, v367, &unk_1EC649E30, &unk_1D1E91250);
  v370 = v418;
  if (v414(v367, 1, v418) == 1)
  {
    sub_1D1741A30(v367, &unk_1EC649E30, &unk_1D1E91250);
    v371 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v371 = *(v367 + v370[17]);

    sub_1D1CB2248(v367, type metadata accessor for StateSnapshot);
  }

  sub_1D1741C08(v422, v365, &unk_1EC649E30, &unk_1D1E91250);
  if (v414(v365, 1, v370) == 1)
  {
    sub_1D1741A30(v365, &unk_1EC649E30, &unk_1D1E91250);
    v372 = v370;
    v373 = sub_1D18D61C8(MEMORY[0x1E69E7CC0]);
    v374 = v430;
    v375 = &v436;
  }

  else
  {
    v372 = v370;
    v373 = *(v365 + v370[18]);

    sub_1D1CB2248(v365, type metadata accessor for StateSnapshot);
    v374 = v404;
    v375 = &v451;
  }

  v376 = *(v375 - 32);

  sub_1D1CB2248(v424, type metadata accessor for StaticHome);
  sub_1D1741A30(v422, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1CB2248(v425, type metadata accessor for StateSnapshot.UpdateType);
  v377 = v398;
  *v398 = v420;
  result = sub_1D1CB2178(v399, v377 + v372[5], type metadata accessor for StaticHome);
  *(v377 + v372[6]) = v429;
  *(v377 + v372[7]) = v391;
  *(v377 + v372[8]) = v417;
  *(v377 + v372[9]) = v409;
  *(v377 + v372[10]) = v411;
  *(v377 + v372[11]) = v410;
  *(v377 + v372[12]) = v416;
  *(v377 + v372[13]) = v368;
  *(v377 + v372[14]) = v412;
  *(v377 + v372[15]) = v419;
  *(v377 + v372[16]) = v392;
  *(v377 + v372[17]) = v371;
  *(v377 + v372[18]) = v373;
  *(v377 + v372[19]) = v369;
  return result;
}