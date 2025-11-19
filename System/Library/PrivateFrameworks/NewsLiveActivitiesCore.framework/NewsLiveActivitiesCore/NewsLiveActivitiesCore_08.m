uint64_t sub_219FF01A4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - v13;
  v15 = type metadata accessor for NationalElectionUpdate.Hero(0);
  sub_219FF05F8(v1 + *(v15 + 28), v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v17 = *(*(v16 - 8) + 56);
  v17(v6, 1, 1, v16);
  v18 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v19 = *(v18 + 24);
  v17(&v14[v19], 1, 1, v16);
  v14[*(v18 + 20)] = 2;
  sub_219FF0668(v6, &v14[v19], &qword_27CCD98D8);
  v20 = *(*(v18 - 8) + 56);
  v20(v14, 0, 1, v18);
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[3];
  v44 = v1[2];
  v25 = v1[4];
  v24 = v1[5];
  v42 = v21;
  v43 = v25;
  v40 = v23;
  v41 = v24;
  v20(v11, 1, 1, v18);
  v20(a1, 1, 1, v18);
  v26 = type metadata accessor for ActivityFlexibleUpdate(0);
  v27 = a1;
  v28 = (a1 + v26[5]);
  v39 = (a1 + v26[6]);
  v29 = (a1 + v26[7]);
  v30 = (a1 + v26[8]);
  v31 = v26[9];
  v38 = v26[10];
  v32 = (a1 + v31);
  v20((v27 + v38), 1, 1, v18);

  v33 = v40;

  v34 = v41;

  sub_219FF0668(v14, v27, &qword_27CCDB1B0);
  *v28 = v42;
  v28[1] = v22;
  v35 = v39;
  *v39 = 0;
  v35[1] = 0;
  v36 = v43;
  *v29 = v44;
  v29[1] = v33;
  *v30 = v36;
  v30[1] = v34;
  *v32 = 0;
  v32[1] = 0;
  return sub_219FF0668(v45, v27 + v38, &qword_27CCDB1B0);
}

void *sub_219FF04BC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  sub_219FEF618(v2, v5);
  nullsub_1(v10, v6);
  updated = type metadata accessor for ActivityFlexibleWatchUpdateView();
  sub_219FF01A4(v4 + *(updated + 24));
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0;
  sub_219FF05B0(__src);
  memcpy((v4 + 48), __src, 0x968uLL);
  v8 = *(updated + 28);
  memcpy(v12, __src, sizeof(v12));
  sub_219F6409C(v12, &qword_27CCDB1A8);
  result = memcpy((v4 + 48), v10, 0x968uLL);
  *(v4 + v8) = 0;
  return result;
}

void sub_219FF05B0(void *a1)
{
  bzero(a1, 0x378uLL);
  a1[111] = 1;

  bzero(a1 + 112, 0x5E8uLL);
}

uint64_t sub_219FF05F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219FF0668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_219FF06D0(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 3;
  bzero((a1 + 80), 0x270uLL);
}

unint64_t sub_219FF06F0()
{
  result = qword_27CCDB1C0;
  if (!qword_27CCDB1C0)
  {
    type metadata accessor for ActivityFlexibleWatchUpdateView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB1C0);
  }

  return result;
}

uint64_t sub_219FF0748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = &v36 - v6;
  v7 = type metadata accessor for NationalElectionContentState(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NationalElectionTheme();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1D0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for NationalElectionViewData();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NationalElectionDynamicIsland();
  v39 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 24);
  v30 = type metadata accessor for NationalElectionUpdate(0);
  v31 = *(*(v30 - 8) + 56);
  v38 = v29;
  v31(&v28[v29], 1, 1, v30);
  v40 = a1;
  sub_219FF3B48(a1, v28, type metadata accessor for NationalElectionTheme);
  v32 = v37;
  sub_219FF3B48(v28, v14, type metadata accessor for NationalElectionTheme);
  sub_219FF3B48(v32, v10, type metadata accessor for NationalElectionContentState);
  sub_21A0D61F0(v14, v10, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_219FF3A90(v32, type metadata accessor for NationalElectionContentState);
    sub_219FF3A90(v40, type metadata accessor for NationalElectionStaticAttributes);
    sub_219F6409C(v18, &qword_27CCDB1D0);
    sub_219FF3A90(v28, type metadata accessor for NationalElectionTheme);
    sub_219F6409C(&v28[v38], &qword_27CCDB1C8);
    return (*(v39 + 56))(v41, 1, 1, v24);
  }

  else
  {
    sub_219FF3BB0(v18, v23, type metadata accessor for NationalElectionViewData);
    sub_219FF3B48(v23, &v28[*(v24 + 20)], type metadata accessor for NationalElectionViewData);
    sub_219FF3B48(v28, v14, type metadata accessor for NationalElectionTheme);
    sub_219FF3B48(v32, v10, type metadata accessor for NationalElectionContentState);
    v34 = v36;
    sub_21A0D68E4(v14, v10, v36);
    sub_219FF3A90(v32, type metadata accessor for NationalElectionContentState);
    sub_219FF3A90(v40, type metadata accessor for NationalElectionStaticAttributes);
    sub_219FF3A90(v23, type metadata accessor for NationalElectionViewData);
    sub_219FF0CE0(v34, &v28[v38]);
    v35 = v41;
    sub_219FF3B48(v28, v41, type metadata accessor for NationalElectionDynamicIsland);
    (*(v39 + 56))(v35, 0, 1, v24);
    return sub_219FF3A90(v28, type metadata accessor for NationalElectionDynamicIsland);
  }
}

uint64_t type metadata accessor for NationalElectionDynamicIsland()
{
  result = qword_27CCDB1D8;
  if (!qword_27CCDB1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219FF0CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_219FF0D78()
{
  type metadata accessor for NationalElectionTheme();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NationalElectionViewData();
    if (v1 <= 0x3F)
    {
      sub_219FF0E14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_219FF0E14()
{
  if (!qword_27CCDB1E8)
  {
    type metadata accessor for NationalElectionUpdate(255);
    v0 = sub_21A0E674C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCDB1E8);
    }
  }
}

uint64_t sub_219FF0F14@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for PresidentialCandidateResultStackView();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NationalElectionDynamicIsland();
  sub_219F45500(v1 + *(v12 + 24), v6, &qword_27CCDB1C8);
  v13 = type metadata accessor for NationalElectionUpdate(0);
  v14 = (*(*(v13 - 8) + 48))(v6, 1, v13) != 1;
  sub_219F6409C(v6, &qword_27CCDB1C8);
  v15 = v1 + *(v12 + 20);
  v16 = type metadata accessor for PresidentialElectionData(0);
  sub_219FF3B48(v15 + *(v16 + 20), &v11[*(v8 + 32)], type metadata accessor for PresidentialElectionData.Entity);
  *v11 = 0;
  v11[1] = v14;
  v17 = &v11[*(v8 + 36)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2F0) + 36);
  sub_219FF3B48(v1, v18, type metadata accessor for NationalElectionTheme);
  v19 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v20 = v18 + *(v19 + 20);
  *v20 = swift_getKeyPath();
  *(v20 + 96) = 0;
  v21 = v18 + *(v19 + 24);
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0;
  return sub_219FF3BB0(v11, a1, type metadata accessor for PresidentialCandidateResultStackView);
}

uint64_t sub_219FF1174@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for PresidentialCandidateResultStackView();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NationalElectionDynamicIsland();
  sub_219F45500(v1 + *(v12 + 24), v6, &qword_27CCDB1C8);
  v13 = type metadata accessor for NationalElectionUpdate(0);
  v14 = (*(*(v13 - 8) + 48))(v6, 1, v13) != 1;
  sub_219F6409C(v6, &qword_27CCDB1C8);
  v15 = v1 + *(v12 + 20);
  v16 = type metadata accessor for PresidentialElectionData(0);
  sub_219FF3B48(v15 + *(v16 + 24), &v11[*(v8 + 32)], type metadata accessor for PresidentialElectionData.Entity);
  *v11 = 1;
  v11[1] = v14;
  v17 = &v11[*(v8 + 36)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2F0) + 36);
  sub_219FF3B48(v1, v18, type metadata accessor for NationalElectionTheme);
  v19 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v20 = v18 + *(v19 + 20);
  *v20 = swift_getKeyPath();
  *(v20 + 96) = 0;
  v21 = v18 + *(v19 + 24);
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0;
  return sub_219FF3BB0(v11, a1, type metadata accessor for PresidentialCandidateResultStackView);
}

uint64_t sub_219FF13D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v164 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB228);
  MEMORY[0x28223BE20](v147, v3);
  v130 = (&v128 - v4);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB230);
  v6 = MEMORY[0x28223BE20](v128, v5);
  v129 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v143 = &v128 - v9;
  v10 = type metadata accessor for NationalElectionUpdate.Hero(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v142 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB238);
  MEMORY[0x28223BE20](v144, v13);
  v146 = (&v128 - v14);
  v140 = sub_21A0E558C();
  v135 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v15);
  v133 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_21A0E536C();
  v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v17);
  v132 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB240);
  v139 = *(v141 - 8);
  v20 = MEMORY[0x28223BE20](v141, v19);
  v136 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v138 = &v128 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB248);
  v160 = *(v24 - 8);
  v161 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v145 = &v128 - v26;
  v166 = type metadata accessor for NationalElectionUpdate(0);
  v27 = *(v166 - 8);
  v29 = MEMORY[0x28223BE20](v166, v28);
  v131 = (&v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29, v31);
  v165 = &v128 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB250);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v163 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v162 = &v128 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB258);
  v155 = *(v39 - 8);
  v156 = v39;
  MEMORY[0x28223BE20](v39, v40);
  v151 = (&v128 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB260);
  v44 = MEMORY[0x28223BE20](v42 - 8, v43);
  v150 = &v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v148 = (&v128 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB268);
  v50 = MEMORY[0x28223BE20](v48 - 8, v49);
  v159 = &v128 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v52);
  v167 = &v128 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v154 = &v128 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v61 = &v128 - v60;
  MEMORY[0x28223BE20](v59, v62);
  v64 = &v128 - v63;
  v65 = *(type metadata accessor for NationalElectionDynamicIsland() + 24);
  sub_219F45500(a1 + v65, v64, &qword_27CCDB1C8);
  v66 = *(v27 + 48);
  if (v66(v64, 1, v166) == 1)
  {
    v67 = 2;
  }

  else
  {
    v67 = 3;
  }

  sub_219F6409C(v64, &qword_27CCDB1C8);
  v158 = sub_21A0E566C();
  LOBYTE(v175) = 0;
  v149 = v67;
  sub_219FF2660(a1, v171);
  memcpy(v173, v171, sizeof(v173));
  memcpy(v174, v171, sizeof(v174));
  sub_219F45500(v173, v170, &qword_27CCDB270);
  v68 = a1;
  sub_219F6409C(v174, &qword_27CCDB270);
  memcpy(&v172[7], v173, 0x260uLL);
  v157 = v175;
  v152 = v65;
  v69 = v166;
  sub_219F45500(a1 + v65, v61, &qword_27CCDB1C8);
  v153 = v66;
  if (v66(v61, 1, v69) == 1)
  {
    sub_219F6409C(v61, &qword_27CCDB1C8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_219FF3A90(v61, type metadata accessor for NationalElectionUpdate);
    if (EnumCaseMultiPayload == 1)
    {
      v71 = 1;
      v72 = v167;
      goto LABEL_9;
    }
  }

  v73 = sub_21A0E55BC();
  v74 = v148;
  *v148 = v73;
  *(v74 + 8) = 0;
  *(v74 + 16) = 1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB278);
  sub_219FF31C8(a1, v149, v74 + *(v75 + 44));
  v76 = v150;
  sub_219F45500(v74, v150, &qword_27CCDB260);
  v77 = v151;
  *v151 = 0x4000000000000000;
  *(v77 + 8) = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB280);
  sub_219F45500(v76, v77 + *(v78 + 48), &qword_27CCDB260);
  sub_219F6409C(v74, &qword_27CCDB260);
  sub_219F6409C(v76, &qword_27CCDB260);
  v72 = v167;
  sub_219F4D494(v77, v167, &qword_27CCDB258);
  v71 = 0;
LABEL_9:
  v79 = v165;
  (*(v155 + 56))(v72, v71, 1, v156);
  v80 = v154;
  sub_219F45500(v68 + v152, v154, &qword_27CCDB1C8);
  if (v153(v80, 1, v69) == 1)
  {
    sub_219F6409C(v80, &qword_27CCDB1C8);
    v81 = 1;
    v82 = v162;
  }

  else
  {
    sub_219FF3BB0(v80, v79, type metadata accessor for NationalElectionUpdate);
    v83 = v131;
    sub_219FF3B48(v79, v131, type metadata accessor for NationalElectionUpdate);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = v83;
      v85 = v142;
      sub_219FF3BB0(v84, v142, type metadata accessor for NationalElectionUpdate.Hero);
      sub_21A0E5E3C();
      sub_21A0E52AC();
      v166 = v175;
      v155 = v179;
      v156 = v177;
      v154 = v180;
      LOBYTE(v170[0]) = 1;
      v169 = v176;
      v168 = v178;
      v86 = v143;
      sub_219FF3B48(v85, v143, type metadata accessor for NationalElectionUpdate.Hero);
      v87 = v132;
      sub_21A0E535C();
      v88 = v133;
      sub_21A0E557C();
      v89 = sub_219FF3D04(&qword_27CCDB298, MEMORY[0x277CDF870]);
      v90 = sub_219FF3D04(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
      v92 = v137;
      v91 = v138;
      v93 = v140;
      sub_21A0E522C();
      (*(v135 + 8))(v88, v93);
      (*(v134 + 8))(v87, v92);
      v94 = v139;
      v95 = v141;
      (*(v139 + 16))(v136, v91, v141);
      v171[0] = v92;
      v171[1] = v93;
      v171[2] = v89;
      v171[3] = v90;
      swift_getOpaqueTypeConformance2();
      v96 = sub_21A0E52CC();
      (*(v94 + 8))(v91, v95);
      v97 = v129;
      *(v86 + *(v128 + 36)) = v96;
      LOBYTE(v90) = v170[0];
      LOBYTE(v93) = v169;
      LOBYTE(v95) = v168;
      sub_219F45500(v86, v97, &qword_27CCDB230);
      v98 = v130;
      *v130 = 0;
      *(v98 + 8) = v90;
      *(v98 + 16) = v166;
      *(v98 + 24) = v93;
      v99 = v155;
      *(v98 + 32) = v156;
      *(v98 + 40) = v95;
      v100 = v154;
      *(v98 + 48) = v99;
      *(v98 + 56) = v100;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2A8);
      sub_219F45500(v97, v98 + *(v101 + 48), &qword_27CCDB230);
      sub_219F6409C(v97, &qword_27CCDB230);
      sub_219F45500(v98, v146, &qword_27CCDB228);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2B8, &qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2C0, &qword_27CCDB228);
      v72 = v167;
      v102 = v145;
      sub_21A0E56BC();
      sub_219F6409C(v98, &qword_27CCDB228);
      sub_219F6409C(v143, &qword_27CCDB230);
      sub_219FF3A90(v142, type metadata accessor for NationalElectionUpdate.Hero);
    }

    else
    {
      v103 = v83[1];
      v166 = *v83;
      v105 = v83[2];
      v104 = v83[3];
      v155 = v103;
      v156 = v105;
      v154 = v104;
      v106 = v132;
      sub_21A0E535C();
      v107 = v133;
      sub_21A0E557C();
      v108 = sub_219FF3D04(&qword_27CCDB298, MEMORY[0x277CDF870]);
      v109 = sub_219FF3D04(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
      v111 = v137;
      v110 = v138;
      v112 = v140;
      sub_21A0E522C();
      (*(v135 + 8))(v107, v112);
      (*(v134 + 8))(v106, v111);
      v113 = v139;
      v114 = v141;
      (*(v139 + 16))(v136, v110, v141);
      v171[0] = v111;
      v171[1] = v112;
      v171[2] = v108;
      v171[3] = v109;
      swift_getOpaqueTypeConformance2();
      v115 = sub_21A0E52CC();
      (*(v113 + 8))(v110, v114);
      v116 = v146;
      *v146 = 0x4000000000000000;
      *(v116 + 8) = 0;
      v118 = v154;
      v117 = v155;
      v116[2] = v166;
      v116[3] = v117;
      v116[4] = v156;
      v116[5] = v118;
      v116[6] = v115;

      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2B8, &qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2C0, &qword_27CCDB228);
      v102 = v145;
      sub_21A0E56BC();
    }

    sub_219FF3A90(v165, type metadata accessor for NationalElectionUpdate);
    v82 = v162;
    sub_219F4D494(v102, v162, &qword_27CCDB248);
    v81 = 0;
  }

  (*(v160 + 56))(v82, v81, 1, v161);
  v119 = v72;
  v120 = v159;
  sub_219F45500(v119, v159, &qword_27CCDB268);
  v121 = v163;
  sub_219F45500(v82, v163, &qword_27CCDB250);
  v122 = v158;
  v170[0] = v158;
  v170[1] = 0;
  v123 = v157;
  LOBYTE(v170[2]) = v157;
  memcpy(&v170[2] + 1, v172, 0x267uLL);
  v124 = v164;
  memcpy(v164, v170, 0x278uLL);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB288);
  sub_219F45500(v120, &v124[v125[12]], &qword_27CCDB268);
  sub_219F45500(v121, &v124[v125[16]], &qword_27CCDB250);
  v126 = &v124[v125[20]];
  *v126 = 0;
  v126[8] = 0;
  sub_219F45500(v170, v171, &qword_27CCDB290);
  sub_219F6409C(v82, &qword_27CCDB250);
  sub_219F6409C(v167, &qword_27CCDB268);
  sub_219F6409C(v121, &qword_27CCDB250);
  sub_219F6409C(v120, &qword_27CCDB268);
  v171[0] = v122;
  v171[1] = 0;
  LOBYTE(v171[2]) = v123;
  memcpy(&v171[2] + 1, v172, 0x267uLL);
  return sub_219F6409C(v171, &qword_27CCDB290);
}

uint64_t sub_219FF2660@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for NationalElectionDynamicIsland() + 20);
  v4 = type metadata accessor for PresidentialElectionData(0);
  v5 = (v3 + v4[5]);
  v6 = *v5;
  v7 = type metadata accessor for PresidentialElectionData.Entity(0);
  v8 = *(v7 + 28);
  v9 = type metadata accessor for ElectionEntityTheme();
  v10 = v5 + v8 + *(v9 + 32);
  *(v51 + 13) = *(v10 + 61);
  v11 = *(v10 + 1);
  v12 = *(v10 + 3);
  v50 = *(v10 + 2);
  v51[0] = v12;
  v13 = *(v10 + 1);
  v49[0] = *v10;
  v49[1] = v13;
  v14 = (v3 + v4[6]);
  v15 = v14 + *(v7 + 28) + *(v9 + 32);
  *(v54 + 13) = *(v15 + 61);
  v16 = *(v15 + 1);
  v17 = *(v15 + 3);
  v53 = *(v15 + 2);
  v54[0] = v17;
  v18 = *(v15 + 1);
  v52[0] = *v15;
  v52[1] = v18;
  v19 = v4[7];
  v20 = *(v10 + 3);
  *(v58 + 13) = *(v10 + 61);
  v57 = v50;
  v58[0] = v20;
  *&v20 = *v14;
  v55 = v49[0];
  v56 = v11;
  *&v11 = *(v3 + v19);
  *&v47[3] = v52[0];
  v21 = *(v15 + 3);
  *&v47[64] = *(v15 + 61);
  *&v47[51] = v21;
  *&v47[35] = v53;
  *&v47[19] = v16;
  v22 = v11;
  v23 = v20;
  v24 = v6;
  sub_219F72F28(v49, __src);
  sub_219F72F28(v52, __src);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  *(v48 + 3) = *&v48[7];
  *(&v48[2] + 3) = *&v48[9];
  *(&v48[4] + 3) = *&v48[11];
  v25 = sub_21A0E55BC();
  LOBYTE(v30[0]) = 1;
  sub_219FF2B28(a1, __src);
  memcpy(__dst, __src, 0x15DuLL);
  memcpy(v42, __src, 0x15DuLL);
  sub_219F45500(__dst, v45, &qword_27CCDB2D0);
  sub_219F6409C(v42, &qword_27CCDB2D0);
  memcpy(&v40[7], __dst, 0x15DuLL);
  sub_21A0E592C();
  sub_21A0E588C();
  v26 = sub_21A0E58CC();

  KeyPath = swift_getKeyPath();
  *&v43 = v24;
  *(&v43 + 1) = v23;
  *v44 = v22;
  *&v44[24] = v56;
  *&v44[40] = v57;
  *&v44[56] = v58[0];
  *&v44[69] = *(v58 + 13);
  *&v44[8] = v55;
  *&v44[77] = *v47;
  *&v44[141] = *&v47[64];
  *&v44[125] = *&v47[48];
  *&v44[109] = *&v47[32];
  *&v44[93] = *&v47[16];
  *&v44[149] = *v48;
  *&v44[196] = *(&v48[5] + 7);
  *&v44[181] = *&v48[4];
  *&v44[165] = *&v48[2];
  v39[0] = v43;
  v39[1] = *v44;
  v39[4] = *&v44[48];
  v39[5] = *&v44[64];
  v39[2] = *&v44[16];
  v39[3] = *&v44[32];
  v39[8] = *&v44[112];
  v39[9] = *&v44[128];
  v39[6] = *&v44[80];
  v39[7] = *&v44[96];
  *&v39[13] = *&v44[192];
  v39[11] = *&v44[160];
  v39[12] = *&v44[176];
  v39[10] = *&v44[144];
  v45[0] = v25;
  v45[1] = 0;
  LOBYTE(v45[2]) = 1;
  memcpy(&v45[2] + 1, v40, 0x164uLL);
  v45[47] = KeyPath;
  v45[48] = v26;
  memcpy(&v39[13] + 8, v45, 0x188uLL);
  memcpy(a2, v39, 0x260uLL);
  __src[0] = v25;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v40, 0x164uLL);
  __src[47] = KeyPath;
  __src[48] = v26;
  sub_219F45500(&v43, v30, &qword_27CCDB2D8);
  sub_219F45500(v45, v30, &qword_27CCDB2E0);
  sub_219F6409C(__src, &qword_27CCDB2E0);
  *v30 = v24;
  *&v30[1] = v23;
  *&v30[2] = v22;
  v32 = v56;
  v33 = v57;
  *v34 = v58[0];
  *&v34[13] = *(v58 + 13);
  v31 = v55;
  v35 = *&v47[64];
  *&v34[69] = *&v47[48];
  *&v34[53] = *&v47[32];
  *&v34[37] = *&v47[16];
  *&v34[21] = *v47;
  v36 = *v48;
  v37 = *&v48[2];
  *v38 = *&v48[4];
  *&v38[15] = *(&v48[5] + 7);
  return sub_219F6409C(v30, &qword_27CCDB2D8);
}

uint64_t sub_219FF2B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for NationalElectionDynamicIsland() + 20);
  v4 = type metadata accessor for PresidentialElectionData(0);
  v53 = v3;
  v5 = v3 + *(v4 + 20);
  v6 = type metadata accessor for PresidentialElectionData.Entity(0);
  v7 = v5 + *(v6 + 28);
  v63 = *(v7 + 32);
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *(v5 + 40) | (*(v5 + 42) << 16);

  v66 = v9;
  v64 = v11;
  v65 = v10;
  v56 = v12;
  sub_219F79BC0(v8, v9);
  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v5 + 43) > 1u)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 92) = 62;
    v55 = 0x2000000000;
    v62 = v16;
    *(v16 + 88) = 0;
  }

  else
  {
    v13 = (v7 + *(type metadata accessor for ElectionEntityTheme() + 32));
    v14 = v13[3];
    v87 = v13[2];
    *v88 = v14;
    *&v88[13] = *(v13 + 61);
    v15 = *v13;
    v86 = v13[1];
    v85 = v15;
    sub_219F72F28(&v85, v109);
    v61 = v86;
    v62 = v85;
    v50 = *(&v86 + 1);
    v51 = *(&v85 + 1);
    v59 = *v88;
    v57 = *(&v87 + 1);
    v60 = v87;
    v58 = *&v88[8];
    v55 = *&v88[16] | (v88[20] << 32);
  }

  v17 = v53 + *(v4 + 24);
  v18 = v17 + *(v6 + 28);
  v52 = *(v18 + 40);
  v54 = *(v18 + 32);
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v17 + 32);
  v23 = *(v17 + 40) | (*(v17 + 42) << 16);

  sub_219F79BC0(v19, v20);
  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v17 + 43) >= 2u)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = 1;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 0u;
    *(v27 + 56) = 0u;
    *(v27 + 72) = 0u;
    v28 = 62;
    *(v27 + 92) = 62;
    v35 = 0x2000000000;
    *(v27 + 88) = 0;
  }

  else
  {
    v24 = (v18 + *(type metadata accessor for ElectionEntityTheme() + 32));
    v25 = v24[3];
    v87 = v24[2];
    *v88 = v25;
    *&v88[13] = *(v24 + 61);
    v26 = *v24;
    v86 = v24[1];
    v85 = v26;
    sub_219F72F28(&v85, v109);
    v28 = *(&v85 + 1);
    v27 = v85;
    v30 = *(&v86 + 1);
    v29 = v86;
    v32 = *(&v87 + 1);
    v31 = v87;
    v33 = *v88;
    v34 = *&v88[8];
    v35 = *&v88[16] | (v88[20] << 32);
  }

  v68 = v63;
  v69 = 0u;
  memset(v70, 0, 19);
  *&v70[24] = v8;
  *&v71 = v66;
  *(&v71 + 1) = v65;
  *&v72 = v64;
  *&v77 = v54;
  *(&v77 + 1) = v52;
  *&v78 = v19;
  *(&v78 + 1) = v20;
  *&v79 = v21;
  *(&v79 + 1) = v22;
  v80[2] = BYTE2(v23);
  *v80 = v23;
  memset(&v80[8], 0, 35);
  *&v81 = v27;
  *(&v81 + 1) = v28;
  *&v82 = v29;
  *(&v82 + 1) = v30;
  *&v83 = v31;
  *(&v83 + 1) = v32;
  *v84 = v33;
  *&v84[8] = v34;
  v84[20] = BYTE4(v35);
  *&v84[16] = v35;
  *&v67[151] = *v84;
  *&v67[164] = *&v84[13];
  BYTE10(v72) = BYTE2(v56);
  WORD4(v72) = v56;
  *&v73 = v62;
  *(&v73 + 1) = v51;
  *&v74 = v61;
  *(&v74 + 1) = v50;
  *&v75 = v60;
  *(&v75 + 1) = v57;
  *v76 = v59;
  *&v76[8] = v58;
  *&v67[23] = v78;
  *&v67[7] = v77;
  *&v67[103] = v81;
  *&v67[87] = *&v80[32];
  *&v67[71] = *&v80[16];
  *&v67[55] = *v80;
  *&v67[135] = v83;
  *&v67[119] = v82;
  *&v67[39] = v79;
  *(a2 + 289) = *&v67[112];
  *(a2 + 305) = *&v67[128];
  *(a2 + 321) = *&v67[144];
  *(a2 + 333) = *&v67[156];
  *(a2 + 257) = *&v67[80];
  *(a2 + 273) = *&v67[96];
  v76[20] = BYTE4(v55);
  *&v76[16] = v55;
  v92 = v75;
  *v93 = *v76;
  v36 = v68;
  v37 = v69;
  v38 = *v70;
  v39 = *&v70[16];
  v40 = v71;
  v41 = v72;
  v43 = v73;
  v42 = v74;
  *&v93[13] = *&v76[13];
  *(a2 + 160) = *&v93[16];
  *(a2 + 176) = 1;
  v85 = v36;
  v86 = v37;
  v90 = v43;
  v91 = v42;
  *&v88[16] = v40;
  v89 = v41;
  v87 = v38;
  *v88 = v39;
  v44 = *v93;
  *(a2 + 128) = v92;
  *(a2 + 144) = v44;
  v45 = v89;
  *(a2 + 64) = *&v88[16];
  *(a2 + 80) = v45;
  v46 = v91;
  *(a2 + 96) = v90;
  *(a2 + 112) = v46;
  v47 = v86;
  *a2 = v85;
  *(a2 + 16) = v47;
  v48 = *v88;
  *(a2 + 32) = v87;
  *(a2 + 48) = v48;
  *(a2 + 168) = 0;
  *(a2 + 225) = *&v67[48];
  *(a2 + 241) = *&v67[64];
  *(a2 + 177) = *v67;
  *(a2 + 193) = *&v67[16];
  *(a2 + 209) = *&v67[32];
  v94[0] = v54;
  v94[1] = v52;
  v94[2] = v19;
  v94[3] = v20;
  v94[4] = v21;
  v94[5] = v22;
  v96 = BYTE2(v23);
  v95 = v23;
  v97 = 0u;
  memset(v98, 0, sizeof(v98));
  v99 = v27;
  v100 = v28;
  v101 = v29;
  v102 = v30;
  v103 = v31;
  v104 = v32;
  v105 = v33;
  v106 = v34;
  v108 = BYTE4(v35);
  v107 = v35;
  sub_219F45500(&v68, v109, &qword_27CCDB2E8);
  sub_219F45500(&v77, v109, &qword_27CCDB2E8);
  sub_219F6409C(v94, &qword_27CCDB2E8);
  *v109 = v63;
  memset(&v109[2], 0, 35);
  v109[7] = v8;
  v109[8] = v66;
  v109[9] = v65;
  v109[10] = v64;
  v111 = BYTE2(v56);
  v110 = v56;
  v112 = v62;
  v113 = v51;
  v114 = v61;
  v115 = v50;
  v116 = v60;
  v117 = v57;
  v118 = v59;
  v119 = v58;
  v121 = BYTE4(v55);
  v120 = v55;
  return sub_219F6409C(v109, &qword_27CCDB2E8);
}

uint64_t sub_219FF31C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BalanceOfPowerView();
  v7 = v6 - 8;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v27 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v27 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v27 - v21;
  v23 = a1 + *(type metadata accessor for NationalElectionDynamicIsland() + 20);
  v24 = type metadata accessor for NationalElectionViewData();
  sub_219FF3B48(v23 + *(v24 + 20), v22, type metadata accessor for BalanceOfPowerData);
  v22[*(v7 + 28)] = a2;
  sub_219FF3B48(v23 + *(v24 + 24), v19, type metadata accessor for BalanceOfPowerData);
  v19[*(v7 + 28)] = a2;
  sub_219FF3B48(v22, v15, type metadata accessor for BalanceOfPowerView);
  sub_219FF3B48(v19, v11, type metadata accessor for BalanceOfPowerView);
  sub_219FF3B48(v15, a3, type metadata accessor for BalanceOfPowerView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2C8);
  sub_219FF3B48(v11, a3 + *(v25 + 48), type metadata accessor for BalanceOfPowerView);
  sub_219FF3A90(v19, type metadata accessor for BalanceOfPowerView);
  sub_219FF3A90(v22, type metadata accessor for BalanceOfPowerView);
  sub_219FF3A90(v11, type metadata accessor for BalanceOfPowerView);
  return sub_219FF3A90(v15, type metadata accessor for BalanceOfPowerView);
}

uint64_t sub_219FF33D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19 - v14;
  v16 = type metadata accessor for NationalElectionTheme();
  sub_219F45500(v1 + *(v16 + 32), v15, &qword_27CCD9628);
  sub_219F45500(v15, v12, &qword_27CCD9628);
  v17 = *(v4 + 48);
  if (v17(v12, 1, v3) == 1)
  {
    static ActivityMinimalAppearanceTheme.defaultValue.getter(v7);
    sub_219F6409C(v15, &qword_27CCD9628);
    if (v17(v12, 1, v3) != 1)
    {
      sub_219F6409C(v12, &qword_27CCD9628);
    }
  }

  else
  {
    sub_219F6409C(v15, &qword_27CCD9628);
    sub_219FF3BB0(v12, v7, type metadata accessor for ActivityMinimalAppearanceTheme);
  }

  return sub_219FF3BB0(v7, a1, type metadata accessor for ActivityMinimalAppearanceTheme);
}

double sub_219FF361C@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E567C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB210);
  sub_219FF13D8(v1, (a1 + *(v3 + 44)));
  v4 = sub_21A0E578C();
  sub_21A0E51EC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB218) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB220) + 36);
  sub_219FF3B48(v1, v14, type metadata accessor for NationalElectionTheme);
  v15 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v16 = v14 + *(v15 + 20);
  *v16 = swift_getKeyPath();
  *(v16 + 96) = 0;
  v17 = v14 + *(v15 + 24);
  *v17 = swift_getKeyPath();
  result = 0.0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0;
  return result;
}

double sub_219FF375C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NationalElectionCompactViews(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FF3B48(v2 + *(a1 + 20), v8, type metadata accessor for PresidentialElectionData);
  *a2 = sub_21A0E55BC();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB200);
  sub_21A0BF63C(v8, a2 + *(v9 + 44));
  sub_219FF3A90(v8, type metadata accessor for NationalElectionCompactViews);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB208) + 36);
  sub_219FF3B48(v2, v10, type metadata accessor for NationalElectionTheme);
  v11 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v12 = v10 + *(v11 + 20);
  *v12 = swift_getKeyPath();
  *(v12 + 96) = 0;
  v13 = v10 + *(v11 + 24);
  *v13 = swift_getKeyPath();
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0;
  return result;
}

double sub_219FF38D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NationalElectionCompactViews(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FF3B48(v2 + *(a1 + 20), v8, type metadata accessor for PresidentialElectionData);
  *a2 = sub_21A0E55BC();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1F0);
  sub_21A0BF8D8(v8, (a2 + *(v9 + 44)));
  sub_219FF3A90(v8, type metadata accessor for NationalElectionCompactViews);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1F8) + 36);
  sub_219FF3B48(v2, v10, type metadata accessor for NationalElectionTheme);
  v11 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v12 = v10 + *(v11 + 20);
  *v12 = swift_getKeyPath();
  *(v12 + 96) = 0;
  v13 = v10 + *(v11 + 24);
  *v13 = swift_getKeyPath();
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0;
  return result;
}

__n128 sub_219FF3A48@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 36);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 61) = *(v3 + 61);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_219FF3A90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219FF3AF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A0E54CC();
  *a1 = result;
  return result;
}

uint64_t sub_219FF3B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FF3BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_219FF3C18()
{
  result = qword_27CCDB2F8;
  if (!qword_27CCDB2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB2F0);
    sub_219FF3D04(&qword_27CCDB300, type metadata accessor for PresidentialCandidateResultStackView);
    sub_219FF3D04(&qword_27CCDB308, type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB2F8);
  }

  return result;
}

uint64_t sub_219FF3D04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219FF3D4C()
{
  result = qword_27CCDB310;
  if (!qword_27CCDB310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB220);
    sub_219FF3E08();
    sub_219FF3D04(&qword_27CCDB308, type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB310);
  }

  return result;
}

unint64_t sub_219FF3E08()
{
  result = qword_27CCDB318;
  if (!qword_27CCDB318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB218);
    sub_219F3E490(&qword_27CCDB320, &qword_27CCDB328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB318);
  }

  return result;
}

unint64_t sub_219FF3EC0()
{
  result = qword_27CCDB330;
  if (!qword_27CCDB330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB1F8);
    sub_219F3E490(&qword_27CCDB338, &qword_27CCDB340);
    sub_219FF3D04(&qword_27CCDB308, type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB330);
  }

  return result;
}

unint64_t sub_219FF3FA8()
{
  result = qword_27CCDB348;
  if (!qword_27CCDB348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB208);
    sub_219F3E490(&qword_27CCDB350, &qword_27CCDB358);
    sub_219FF3D04(&qword_27CCDB308, type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB348);
  }

  return result;
}

unint64_t sub_219FF40A4()
{
  result = qword_27CCDB360;
  if (!qword_27CCDB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB360);
  }

  return result;
}

uint64_t static AppGroup.newsLiveActivities.getter()
{
  if (qword_280C8A0D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_219FF4180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a4;
  v65 = a3;
  v75 = a1;
  v76 = a2;
  v68 = a5;
  v5 = sub_21A0E58DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A0E561C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v67 = sub_21A0E5CDC();
  sub_21A0E560C();
  sub_21A0E55FC();
  sub_21A0E55DC();
  sub_21A0E55FC();
  sub_21A0E563C();
  v12 = sub_21A0E59DC();
  v14 = v13;
  v16 = v15;
  sub_21A0E592C();
  sub_21A0E581C();
  sub_21A0E58CC();

  v71 = *MEMORY[0x277CE0A10];
  v17 = *(v6 + 104);
  v72 = v6 + 104;
  v83 = v17;
  v81 = v5;
  (v17)(v9);
  v69 = v9;
  sub_21A0E590C();

  v18 = *(v6 + 8);
  v70 = v6 + 8;
  v82 = v18;
  v18(v9, v5);
  v19 = sub_21A0E599C();
  v21 = v20;
  v23 = v22;

  sub_219F63A30(v12, v14, v16 & 1);

  v84 = sub_21A0E5BAC();
  v77 = sub_21A0E597C();
  v79 = v24;
  v80 = v25;
  v78 = v26;
  sub_219F63A30(v19, v21, v23 & 1);

  v84 = v75;
  v85 = v76;
  v64 = sub_219F3F130();

  v63 = sub_21A0E59EC();
  v28 = v27;
  LOBYTE(v12) = v29;
  sub_21A0E592C();
  sub_21A0E581C();
  sub_21A0E58CC();

  v30 = v69;
  v31 = v71;
  v32 = v81;
  v83(v69, v71, v81);
  sub_21A0E590C();

  v33 = v30;
  v82(v30, v32);
  v34 = v63;
  v75 = sub_21A0E599C();
  v74 = v35;
  v73 = v36;
  v76 = v37;

  sub_219F63A30(v34, v28, v12 & 1);

  v84 = v65;
  v85 = v66;

  v62 = sub_21A0E59EC();
  v39 = v38;
  LOBYTE(v12) = v40;
  v61 = v41;
  sub_21A0E57CC();
  sub_21A0E586C();
  sub_21A0E58CC();

  v42 = v31;
  v43 = v81;
  v83(v33, v42, v81);
  sub_21A0E590C();

  v82(v33, v43);
  v44 = v62;
  v65 = sub_21A0E599C();
  v64 = v45;
  LODWORD(v63) = v46;
  v66 = v47;

  sub_219F63A30(v44, v39, v12 & 1);

  sub_21A0E560C();
  sub_21A0E55FC();
  sub_21A0E55CC();
  sub_21A0E55FC();
  sub_21A0E55CC();
  sub_21A0E55FC();
  sub_21A0E55CC();
  sub_21A0E55FC();
  sub_21A0E563C();
  v48 = sub_21A0E59DC();
  v50 = v49;
  LOBYTE(v43) = v51;
  sub_21A0E57CC();
  sub_21A0E586C();
  sub_21A0E58CC();

  v52 = v69;
  v53 = v81;
  v83(v69, v71, v81);
  sub_21A0E590C();

  v82(v52, v53);
  v54 = sub_21A0E599C();
  v56 = v55;
  LOBYTE(v44) = v57;
  v59 = v58;

  sub_219F63A30(v48, v50, v43 & 1);

  v84 = v54;
  v85 = v56;
  v86 = v44 & 1;
  v87 = v59;
  sub_21A0E5B0C();
  sub_219F63A30(v65, v64, v63 & 1);

  sub_219F63A30(v75, v74, v73 & 1);

  sub_219F63A30(v77, v79, v78 & 1);

  sub_219F63A30(v54, v56, v44 & 1);
}

uint64_t LiveBlogCompactLeadingTheme.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LiveBlogCompactLeadingTheme.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LiveBlogCompactLeadingTheme.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 192);
  v30 = *(v1 + 176);
  v31 = v3;
  v4 = *(v1 + 96);
  v5 = *(v1 + 128);
  v26 = *(v1 + 112);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 128);
  v8 = *(v1 + 160);
  v28 = *(v1 + 144);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 32);
  v11 = *(v1 + 64);
  v22 = *(v1 + 48);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 64);
  v14 = *(v1 + 96);
  v24 = *(v1 + 80);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 32);
  v21[0] = *(v1 + 16);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 192);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 208);
  *(a1 + 192) = *(v1 + 208);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F9336C(v21, v20);
}

__n128 LiveBlogCompactLeadingTheme.theme.setter(uint64_t a1)
{
  v3 = *(v1 + 192);
  v15[10] = *(v1 + 176);
  v15[11] = v3;
  v16 = *(v1 + 208);
  v4 = *(v1 + 128);
  v15[6] = *(v1 + 112);
  v15[7] = v4;
  v5 = *(v1 + 160);
  v15[8] = *(v1 + 144);
  v15[9] = v5;
  v6 = *(v1 + 64);
  v15[2] = *(v1 + 48);
  v15[3] = v6;
  v7 = *(v1 + 96);
  v15[4] = *(v1 + 80);
  v15[5] = v7;
  v8 = *(v1 + 32);
  v15[0] = *(v1 + 16);
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 176) = *(a1 + 160);
  *(v1 + 192) = v9;
  *(v1 + 208) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v10;
  v11 = *(a1 + 144);
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = v11;
  v12 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v12;
  v13 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v13;
  result = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = result;
  return result;
}

__n128 LiveBlogCompactLeadingTheme.init(text:theme:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_219F639B0(v14);
  *a4 = a1;
  *(a4 + 8) = a2;
  v16[10] = v14[10];
  v16[11] = v14[11];
  v17 = v15;
  v16[6] = v14[6];
  v16[7] = v14[7];
  v16[8] = v14[8];
  v16[9] = v14[9];
  v16[2] = v14[2];
  v16[3] = v14[3];
  v16[4] = v14[4];
  v16[5] = v14[5];
  v16[0] = v14[0];
  v16[1] = v14[1];
  sub_219F6409C(v16, &qword_27CCD95B8);
  v8 = *(a3 + 176);
  *(a4 + 176) = *(a3 + 160);
  *(a4 + 192) = v8;
  *(a4 + 208) = *(a3 + 192);
  v9 = *(a3 + 112);
  *(a4 + 112) = *(a3 + 96);
  *(a4 + 128) = v9;
  v10 = *(a3 + 144);
  *(a4 + 144) = *(a3 + 128);
  *(a4 + 160) = v10;
  v11 = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = v11;
  v12 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v12;
  result = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = result;
  return result;
}

uint64_t sub_219FF4C4C()
{
  if (*v0)
  {
    return 0x656D656874;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_219FF4C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_219FF4D54(uint64_t a1)
{
  v2 = sub_219FF5F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FF4D90(uint64_t a1)
{
  v2 = sub_219FF5F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveBlogCompactLeadingTheme.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB368);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v16 - v5;
  v7 = *(v1 + 192);
  v43 = *(v1 + 176);
  v44 = v7;
  v45 = *(v1 + 208);
  v8 = *(v1 + 128);
  v39 = *(v1 + 112);
  v40 = v8;
  v9 = *(v1 + 160);
  v41 = *(v1 + 144);
  v42 = v9;
  v10 = *(v1 + 64);
  v35 = *(v1 + 48);
  v36 = v10;
  v11 = *(v1 + 96);
  v37 = *(v1 + 80);
  v38 = v11;
  v12 = *(v1 + 32);
  v33 = *(v1 + 16);
  v34 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FF5F44();
  sub_21A0E6EAC();
  LOBYTE(v20) = 0;
  v13 = v16;
  sub_21A0E6B7C();
  if (v13)
  {
    return (*(v17 + 8))(v6, v3);
  }

  v30 = v43;
  v31 = v44;
  v32 = v45;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v20 = v33;
  v21 = v34;
  v46 = 1;
  sub_219F9336C(&v33, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA2B8);
  sub_219F984C0(&qword_27CCDA2C0);
  sub_21A0E6B6C();
  v15 = (v17 + 8);
  v18[10] = v30;
  v18[11] = v31;
  v19 = v32;
  v18[6] = v26;
  v18[7] = v27;
  v18[8] = v28;
  v18[9] = v29;
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[5] = v25;
  v18[0] = v20;
  v18[1] = v21;
  sub_219F6409C(v18, &qword_27CCD95B8);
  return (*v15)(v6, v3);
}

uint64_t LiveBlogCompactLeadingTheme.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 200);
  v3 = *(v1 + 208);
  sub_21A0E626C();
  v5 = *(v1 + 160);
  v12[8] = *(v1 + 144);
  v12[9] = v5;
  v12[10] = *(v1 + 176);
  v6 = *(v1 + 192);
  v7 = *(v1 + 96);
  v12[4] = *(v1 + 80);
  v12[5] = v7;
  v8 = *(v1 + 128);
  v12[6] = *(v1 + 112);
  v12[7] = v8;
  v9 = *(v1 + 32);
  v12[0] = *(v1 + 16);
  v12[1] = v9;
  v10 = *(v1 + 64);
  v12[2] = *(v1 + 48);
  v12[3] = v10;
  v13 = v6;
  v14 = v4;
  v15 = v3;
  if (sub_219F63C20(v12) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  ActivityTextTheme.hash(into:)(a1);
  sub_219F91544(a1, v4);
  return sub_219F6AF9C(a1, v3);
}

uint64_t LiveBlogCompactLeadingTheme.hashValue.getter()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  sub_21A0E6DAC();
  sub_21A0E626C();
  v3 = *(v0 + 160);
  v11[8] = *(v0 + 144);
  v11[9] = v3;
  v11[10] = *(v0 + 176);
  v4 = *(v0 + 192);
  v5 = *(v0 + 96);
  v11[4] = *(v0 + 80);
  v11[5] = v5;
  v6 = *(v0 + 128);
  v11[6] = *(v0 + 112);
  v11[7] = v6;
  v7 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v7;
  v8 = *(v0 + 64);
  v11[2] = *(v0 + 48);
  v11[3] = v8;
  v12 = v4;
  v13 = v2;
  v14 = v1;
  if (sub_219F63C20(v11) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    ActivityTextTheme.hash(into:)(v10);
    sub_219F91544(v10, v2);
    sub_219F6AF9C(v10, v1);
  }

  return sub_21A0E6DFC();
}

uint64_t LiveBlogCompactLeadingTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB378);
  v95 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - v6;
  sub_219F639B0(v93);
  v90 = v93[10];
  v91 = v93[11];
  v92 = v94;
  v86 = v93[6];
  v87 = v93[7];
  v89 = v93[9];
  v88 = v93[8];
  v82 = v93[2];
  v83 = v93[3];
  v85 = v93[5];
  v84 = v93[4];
  v81 = v93[1];
  v80 = v93[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FF5F44();
  sub_21A0E6E7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v62 = v90;
    v63 = v91;
    *&v64 = v92;
    v58 = v86;
    v59 = v87;
    v60 = v88;
    v61 = v89;
    v54 = v82;
    v55 = v83;
    v56 = v84;
    v57 = v85;
    v52 = v80;
    v53 = v81;
    return sub_219F6409C(&v52, &qword_27CCD95B8);
  }

  else
  {
    v8 = v95;
    LOBYTE(v52) = 0;
    v9 = sub_21A0E6A9C();
    v11 = v10;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA2B8);
    v66 = 1;
    sub_219F984C0(&qword_27CCDA2D0);
    sub_21A0E6A8C();
    (*(v8 + 8))(v7, v4);
    v33 = v77;
    v34 = v78;
    v35 = v79;
    v29 = v73;
    v30 = v74;
    v31 = v75;
    v32 = v76;
    v25 = v69;
    v26 = v70;
    v27 = v71;
    v28 = v72;
    v23 = v67;
    v24 = v68;
    v36[10] = v90;
    v36[11] = v91;
    v37 = v92;
    v36[6] = v86;
    v36[7] = v87;
    v36[8] = v88;
    v36[9] = v89;
    v36[2] = v82;
    v36[3] = v83;
    v36[4] = v84;
    v36[5] = v85;
    v36[0] = v80;
    v36[1] = v81;
    sub_219F6409C(v36, &qword_27CCD95B8);
    v12 = v21;
    *&v38 = v21;
    *(&v38 + 1) = v11;
    v49 = v33;
    v50 = v34;
    v51 = v35;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    v48 = v32;
    v41 = v25;
    v42 = v26;
    v43 = v27;
    v44 = v28;
    v39 = v23;
    v40 = v24;
    v13 = v33;
    v14 = v22;
    *(v22 + 160) = v32;
    *(v14 + 176) = v13;
    *(v14 + 192) = v50;
    *(v14 + 208) = v51;
    v15 = v45;
    *(v14 + 96) = v44;
    *(v14 + 112) = v15;
    v16 = v47;
    *(v14 + 128) = v46;
    *(v14 + 144) = v16;
    v17 = v41;
    *(v14 + 32) = v40;
    *(v14 + 48) = v17;
    v18 = v43;
    *(v14 + 64) = v42;
    *(v14 + 80) = v18;
    v19 = v39;
    *v14 = v38;
    *(v14 + 16) = v19;
    sub_219FF5F98(&v38, &v52);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v52 = v12;
    *(&v52 + 1) = v11;
    v63 = v33;
    v64 = v34;
    v65 = v35;
    v59 = v29;
    v60 = v30;
    v61 = v31;
    v62 = v32;
    v55 = v25;
    v56 = v26;
    v57 = v27;
    v58 = v28;
    v53 = v23;
    v54 = v24;
    return sub_219FF5FD0(&v52);
  }
}

uint64_t sub_219FF570C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  sub_21A0E6DAC();
  sub_21A0E626C();
  v3 = *(v0 + 160);
  v11[8] = *(v0 + 144);
  v11[9] = v3;
  v11[10] = *(v0 + 176);
  v4 = *(v0 + 192);
  v5 = *(v0 + 96);
  v11[4] = *(v0 + 80);
  v11[5] = v5;
  v6 = *(v0 + 128);
  v11[6] = *(v0 + 112);
  v11[7] = v6;
  v7 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v7;
  v8 = *(v0 + 64);
  v11[2] = *(v0 + 48);
  v11[3] = v8;
  v12 = v4;
  v13 = v2;
  v14 = v1;
  if (sub_219F63C20(v11) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    ActivityTextTheme.hash(into:)(v10);
    sub_219F91544(v10, v2);
    sub_219F6AF9C(v10, v1);
  }

  return sub_21A0E6DFC();
}

uint64_t sub_219FF5834(uint64_t a1)
{
  v4 = *(v1 + 200);
  v3 = *(v1 + 208);
  sub_21A0E626C();
  v5 = *(v1 + 160);
  v12[8] = *(v1 + 144);
  v12[9] = v5;
  v12[10] = *(v1 + 176);
  v6 = *(v1 + 192);
  v7 = *(v1 + 96);
  v12[4] = *(v1 + 80);
  v12[5] = v7;
  v8 = *(v1 + 128);
  v12[6] = *(v1 + 112);
  v12[7] = v8;
  v9 = *(v1 + 32);
  v12[0] = *(v1 + 16);
  v12[1] = v9;
  v10 = *(v1 + 64);
  v12[2] = *(v1 + 48);
  v12[3] = v10;
  v13 = v6;
  v14 = v4;
  v15 = v3;
  if (sub_219F63C20(v12) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  ActivityTextTheme.hash(into:)(a1);
  sub_219F91544(a1, v4);
  return sub_219F6AF9C(a1, v3);
}

uint64_t sub_219FF5940()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  sub_21A0E6DAC();
  sub_21A0E626C();
  v3 = *(v0 + 160);
  v11[8] = *(v0 + 144);
  v11[9] = v3;
  v11[10] = *(v0 + 176);
  v4 = *(v0 + 192);
  v5 = *(v0 + 96);
  v11[4] = *(v0 + 80);
  v11[5] = v5;
  v6 = *(v0 + 128);
  v11[6] = *(v0 + 112);
  v11[7] = v6;
  v7 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v7;
  v8 = *(v0 + 64);
  v11[2] = *(v0 + 48);
  v11[3] = v8;
  v12 = v4;
  v13 = v2;
  v14 = v1;
  if (sub_219F63C20(v11) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    ActivityTextTheme.hash(into:)(v10);
    sub_219F91544(v10, v2);
    sub_219F6AF9C(v10, v1);
  }

  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore0B23BlogCompactLeadingThemeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 12);
  v120[10] = *(a1 + 11);
  v120[11] = v6;
  v121 = a1[26];
  v7 = *(a1 + 8);
  v120[6] = *(a1 + 7);
  v120[7] = v7;
  v8 = *(a1 + 9);
  v120[9] = *(a1 + 10);
  v120[8] = v8;
  v9 = *(a1 + 4);
  v120[2] = *(a1 + 3);
  v120[3] = v9;
  v10 = *(a1 + 5);
  v120[5] = *(a1 + 6);
  v120[4] = v10;
  v11 = *(a1 + 1);
  v120[1] = *(a1 + 2);
  v120[0] = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 12);
  v122[10] = *(a2 + 11);
  v122[11] = v14;
  v123 = a2[26];
  v15 = *(a2 + 8);
  v122[6] = *(a2 + 7);
  v122[7] = v15;
  v16 = *(a2 + 10);
  v122[8] = *(a2 + 9);
  v122[9] = v16;
  v17 = *(a2 + 4);
  v122[2] = *(a2 + 3);
  v122[3] = v17;
  v18 = *(a2 + 6);
  v122[4] = *(a2 + 5);
  v122[5] = v18;
  v19 = *(a2 + 2);
  v122[0] = *(a2 + 1);
  v122[1] = v19;
  if (v4 == v12 && v5 == v13 || (v20 = sub_21A0E6C5C(), result = 0, (v20 & 1) != 0))
  {
    v22 = *(a1 + 10);
    v23 = *(a1 + 12);
    __src[10] = *(a1 + 11);
    __src[11] = v23;
    v24 = *(a1 + 6);
    v25 = *(a1 + 8);
    __src[6] = *(a1 + 7);
    __src[7] = v25;
    v27 = *(a1 + 8);
    v26 = *(a1 + 9);
    v28 = v26;
    __src[9] = *(a1 + 10);
    __src[8] = v26;
    v29 = *(a1 + 2);
    v30 = *(a1 + 4);
    __src[2] = *(a1 + 3);
    __src[3] = v30;
    v32 = *(a1 + 4);
    v31 = *(a1 + 5);
    v33 = v31;
    __src[5] = *(a1 + 6);
    __src[4] = v31;
    v34 = *(a1 + 1);
    v35 = v34;
    __src[1] = *(a1 + 2);
    __src[0] = v34;
    v36 = *(a2 + 12);
    *(&__src[22] + 8) = *(a2 + 11);
    *(&__src[23] + 8) = v36;
    v37 = *(a2 + 8);
    *(&__src[18] + 8) = *(a2 + 7);
    *(&__src[19] + 8) = v37;
    v38 = *(a2 + 10);
    *(&__src[20] + 8) = *(a2 + 9);
    *(&__src[21] + 8) = v38;
    v39 = *(a2 + 6);
    *(&__src[16] + 8) = *(a2 + 5);
    *(&__src[17] + 8) = v39;
    v40 = *(a2 + 1);
    *(&__src[13] + 8) = *(a2 + 2);
    v41 = *(a2 + 4);
    *(&__src[14] + 8) = *(a2 + 3);
    *(&__src[15] + 8) = v41;
    *(&__src[12] + 8) = v40;
    v42 = *(a1 + 12);
    v105[10] = __src[10];
    v105[11] = v42;
    v105[6] = __src[6];
    v105[7] = v27;
    v105[9] = v22;
    v105[8] = v28;
    v105[2] = __src[2];
    v105[3] = v32;
    v105[5] = v24;
    v105[4] = v33;
    v43 = a2[26];
    *&__src[12] = a1[26];
    *(&__src[24] + 1) = v43;
    v106 = a1[26];
    v105[1] = v29;
    v105[0] = v35;
    if (sub_219F63C20(v105) == 1)
    {
      v44 = *(a2 + 12);
      __dst[10] = *(a2 + 11);
      __dst[11] = v44;
      *&__dst[12] = a2[26];
      v45 = *(a2 + 8);
      __dst[6] = *(a2 + 7);
      __dst[7] = v45;
      v46 = *(a2 + 10);
      __dst[8] = *(a2 + 9);
      __dst[9] = v46;
      v47 = *(a2 + 4);
      __dst[2] = *(a2 + 3);
      __dst[3] = v47;
      v48 = *(a2 + 6);
      __dst[4] = *(a2 + 5);
      __dst[5] = v48;
      v49 = *(a2 + 2);
      __dst[0] = *(a2 + 1);
      __dst[1] = v49;
      if (sub_219F63C20(__dst) == 1)
      {
        v50 = *(a1 + 12);
        v117 = *(a1 + 11);
        v118 = v50;
        v119 = a1[26];
        v51 = *(a1 + 8);
        v113 = *(a1 + 7);
        v114 = v51;
        v52 = *(a1 + 9);
        v116 = *(a1 + 10);
        v115 = v52;
        v53 = *(a1 + 4);
        v109 = *(a1 + 3);
        v110 = v53;
        v54 = *(a1 + 5);
        v112 = *(a1 + 6);
        v111 = v54;
        v55 = *(a1 + 1);
        v108 = *(a1 + 2);
        v107 = v55;
        sub_219F9336C(v120, v101);
        sub_219F9336C(v122, v101);
        sub_219F6409C(&v107, &qword_27CCD95B8);
        return 1;
      }
    }

    else
    {
      v56 = *(a2 + 12);
      v101[10] = *(a2 + 11);
      v101[11] = v56;
      v102 = a2[26];
      v57 = *(a2 + 8);
      v101[6] = *(a2 + 7);
      v101[7] = v57;
      v58 = *(a2 + 10);
      v101[8] = *(a2 + 9);
      v101[9] = v58;
      v59 = *(a2 + 4);
      v101[2] = *(a2 + 3);
      v101[3] = v59;
      v60 = *(a2 + 6);
      v101[4] = *(a2 + 5);
      v101[5] = v60;
      v61 = *(a2 + 2);
      v101[0] = *(a2 + 1);
      v101[1] = v61;
      if (sub_219F63C20(v101) != 1)
      {
        v62 = *(a2 + 10);
        v63 = *(a2 + 12);
        v98 = *(a2 + 11);
        v99 = v63;
        v64 = *(a2 + 6);
        v65 = *(a2 + 8);
        v94 = *(a2 + 7);
        v95 = v65;
        v66 = *(a2 + 8);
        v67 = *(a2 + 10);
        v96 = *(a2 + 9);
        v97 = v67;
        v68 = *(a2 + 2);
        v69 = *(a2 + 4);
        v90 = *(a2 + 3);
        v91 = v69;
        v70 = *(a2 + 4);
        v71 = *(a2 + 6);
        v92 = *(a2 + 5);
        v93 = v71;
        v72 = *(a2 + 2);
        v89[0] = *(a2 + 1);
        v89[1] = v72;
        v73 = *(a2 + 12);
        __dst[10] = v98;
        __dst[11] = v73;
        __dst[6] = v94;
        __dst[7] = v66;
        __dst[8] = v96;
        __dst[9] = v62;
        __dst[2] = v90;
        __dst[3] = v70;
        __dst[4] = v92;
        __dst[5] = v64;
        v100 = a2[26];
        *&__dst[12] = a2[26];
        __dst[0] = v89[0];
        __dst[1] = v68;
        v74 = *(a1 + 12);
        v117 = *(a1 + 11);
        v118 = v74;
        v119 = a1[26];
        v75 = *(a1 + 8);
        v113 = *(a1 + 7);
        v114 = v75;
        v76 = *(a1 + 9);
        v116 = *(a1 + 10);
        v115 = v76;
        v77 = *(a1 + 4);
        v109 = *(a1 + 3);
        v110 = v77;
        v78 = *(a1 + 5);
        v112 = *(a1 + 6);
        v111 = v78;
        v79 = *(a1 + 1);
        v108 = *(a1 + 2);
        v107 = v79;
        sub_219F9336C(v120, v87);
        sub_219F9336C(v122, v87);
        v80 = sub_21A0D9624(&v107, __dst);
        sub_219F6409C(v89, &qword_27CCD95B8);
        v81 = *(a1 + 12);
        v87[10] = *(a1 + 11);
        v87[11] = v81;
        v88 = a1[26];
        v82 = *(a1 + 8);
        v87[6] = *(a1 + 7);
        v87[7] = v82;
        v83 = *(a1 + 10);
        v87[8] = *(a1 + 9);
        v87[9] = v83;
        v84 = *(a1 + 4);
        v87[2] = *(a1 + 3);
        v87[3] = v84;
        v85 = *(a1 + 6);
        v87[4] = *(a1 + 5);
        v87[5] = v85;
        v86 = *(a1 + 2);
        v87[0] = *(a1 + 1);
        v87[1] = v86;
        sub_219F6409C(v87, &qword_27CCD95B8);
        return (v80 & 1) != 0;
      }
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_219F9336C(v120, &v107);
    sub_219F9336C(v122, &v107);
    sub_219F6409C(__dst, &qword_27CCDA2F8);
    return 0;
  }

  return result;
}

unint64_t sub_219FF5F44()
{
  result = qword_27CCDB370;
  if (!qword_27CCDB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB370);
  }

  return result;
}

unint64_t sub_219FF6004()
{
  result = qword_27CCDB380;
  if (!qword_27CCDB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB380);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_219FF609C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_219FF60E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_219FF617C()
{
  result = qword_27CCDB388;
  if (!qword_27CCDB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB388);
  }

  return result;
}

unint64_t sub_219FF61D4()
{
  result = qword_27CCDB390;
  if (!qword_27CCDB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB390);
  }

  return result;
}

unint64_t sub_219FF622C()
{
  result = qword_27CCDB398;
  if (!qword_27CCDB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB398);
  }

  return result;
}

uint64_t dispatch thunk of ActivityFileSystemType.activitySubdirectories.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4E2F8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ActivityFileSystemType.removeContents(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F4996C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ActivityCacheFileHandleType.replaceContents(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_219F49B18;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_219FF6654(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_219FBE5E4(0, v3, 0);
    v6 = __exp10(a2);
    v7 = 0;
    result = v14;
    do
    {
      v8 = *(a1 + 32 + 8 * v7);
      v15 = result;
      v10 = *(result + 16);
      v9 = *(result + 24);
      if (v10 >= v9 >> 1)
      {
        v13 = v6;
        sub_219FBE5E4((v9 > 1), v10 + 1, 1);
        v6 = v13;
        result = v15;
      }

      v11 = floor(v6 * v8);
      *(result + 16) = v10 + 1;
      v12 = result + 56 * v10;
      *(v12 + 32) = v7;
      *(v12 + 40) = a2;
      *(v12 + 48) = v8;
      *(v12 + 56) = v11 / v6;
      *(v12 + 64) = (v6 * v8 - v11) / v6;
      *(v12 + 72) = 0;
      *(v12 + 80) = 1;
      ++v7;
    }

    while (v3 != v7);
  }

  return result;
}

uint64_t sub_219FF6774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB3A0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v51 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  v51 = v10;
  if (v8)
  {
    v53 = MEMORY[0x277D84F90];
    sub_219FBE604(0, v8, 0);
    v11 = v53;
    v12 = (a1 + 32);
    v13 = *(v53 + 16);
    do
    {
      if (*v12 > 0.0)
      {
        v14 = *v12;
      }

      else
      {
        v14 = 0.0;
      }

      v53 = v11;
      v15 = *(v11 + 24);
      v16 = v13 + 1;
      if (v13 >= v15 >> 1)
      {
        sub_219FBE604((v15 > 1), v13 + 1, 1);
        v11 = v53;
      }

      *(v11 + 16) = v16;
      *(v11 + 8 * v13 + 32) = v14;
      ++v12;
      ++v13;
      --v8;
    }

    while (v8);
  }

  else
  {
    v16 = *(MEMORY[0x277D84F90] + 16);
    if (!v16)
    {
      v24 = __exp10(a2);
      v18 = 0.0;
      v11 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    v11 = MEMORY[0x277D84F90];
  }

  if (v16 <= 3)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_17:
    v21 = v16 - v17;
    v22 = (v11 + 8 * v17 + 32);
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_19;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v11 + 48);
  v18 = 0.0;
  v20 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_17;
  }

LABEL_19:
  v24 = __exp10(a2);
  if (v18 > 1.0)
  {
    v52 = v9;
    sub_219FBE604(0, v16, 0);
    v8 = v52;
    v25 = *(v52 + 16);
    v26 = 32;
    do
    {
      v27 = *(v11 + v26);
      v52 = v8;
      v28 = *(v8 + 24);
      if (v25 >= v28 >> 1)
      {
        sub_219FBE604((v28 > 1), v25 + 1, 1);
        v8 = v52;
      }

      *(v8 + 16) = v25 + 1;
      *(v8 + 8 * v25 + 32) = v27 / v18;
      v26 += 8;
      ++v25;
      --v16;
    }

    while (v16);

    v29 = sub_219FF6654(v8, a2);

    goto LABEL_32;
  }

LABEL_26:
  v29 = sub_219FF6654(v11, a2);

  if (v18 < 1.0 / v24 * -0.5 + 1.0)
  {
    v30 = 1.0 - v18;
    v31 = floor(v24 * v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_219FA16B8(0, *(v29 + 16) + 1, 1, v29);
    }

    v32 = v31 / v24;
    v8 = *(v29 + 16);
    v33 = *(v29 + 24);
    if (v8 >= v33 >> 1)
    {
      v50 = sub_219FA16B8((v33 > 1), v8 + 1, 1, v29);
      v32 = v31 / v24;
      v29 = v50;
    }

    *(v29 + 16) = v8 + 1;
    v34 = v29 + 56 * v8;
    *(v34 + 32) = -1;
    *(v34 + 40) = a2;
    *(v34 + 48) = v30;
    *(v34 + 56) = v32;
    *(v34 + 64) = (v24 * v30 - v31) / v24;
    *(v34 + 72) = 0;
    *(v34 + 80) = 1;
    *(v34 + 81) = 1;
  }

LABEL_32:
  v53 = v29;
  v35 = *(v29 + 16);
  if (!v35)
  {
    v37 = 0.0;
    goto LABEL_41;
  }

  if (v35 == 1)
  {
    v36 = 0;
    v37 = 0.0;
LABEL_39:
    v42 = v35 - v36;
    v43 = (v29 + 56 * v36 + 56);
    do
    {
      v44 = *v43;
      v43 += 7;
      v37 = v37 + v44;
      --v42;
    }

    while (v42);
    goto LABEL_41;
  }

  v36 = v35 & 0x7FFFFFFFFFFFFFFELL;
  v38 = (v29 + 112);
  v37 = 0.0;
  v39 = v35 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v40 = *(v38 - 7);
    v41 = *v38;
    v38 += 14;
    v37 = v37 + v40 + v41;
    v39 -= 2;
  }

  while (v39);
  if (v35 != v36)
  {
    goto LABEL_39;
  }

LABEL_41:
  v45 = round(v24 * (1.0 - v37));
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v8 = v45;
  swift_getKeyPath();
  sub_21A0E462C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB3A8);
  sub_219F3E490(&qword_27CCDB3B0, &qword_27CCDB3A8);
  sub_219F3E490(&qword_27CCDB3B8, &qword_27CCDB3A8);
  sub_219F3E490(&qword_27CCDB3C0, &qword_27CCDB3A0);
  sub_21A0E61AC();
  (*(v51 + 8))(v7, v4);
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v4 = v53;
  if (!v8)
  {
    return v4;
  }

  if (*(v53 + 16) >= v8)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  v4 = sub_219FE4D8C(v4);
LABEL_48:
  v46 = (v4 + 80);
  do
  {
    v47 = *(v46 - 4);
    v48 = __exp10(*(v46 - 5));
    *(v46 - 1) = ceil(v47 * v48) / v48;
    *v46 = 0;
    v46 += 7;
    --v8;
  }

  while (v8);
  return v4;
}

uint64_t sub_219FF6D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB3A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v46 - v7;
  if (*(a1 + 16) < 2uLL)
  {

    return a1;
  }

  if (__OFADD__(a2, 2))
  {
    goto LABEL_45;
  }

  v9 = sub_219FF6774(a1, a2 + 2);
  v10 = v9;
  v11 = *(v9 + 16);
  if (!v11)
  {
LABEL_8:
    v12 = *(v9 + 16);
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 81;
  while ((*(v9 + v13) & 1) == 0)
  {
    ++v12;
    v13 += 56;
    if (v11 == v12)
    {
      goto LABEL_8;
    }
  }

  v14 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_50;
  }

  if (v14 != v11)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

LABEL_11:
  if (v11 < v12)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v12 < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v10 = sub_219FE4D8C(v10);
LABEL_35:
    v37 = &v10[v13 + 7];
    while (1)
    {
      v11 = *(v10 + 2);
      if (v14 >= v11)
      {
        break;
      }

      if ((*(v37 + 49) & 1) == 0)
      {
        if (v14 != v12)
        {
          if (v12 >= v11)
          {
            goto LABEL_44;
          }

          v38 = &v10[56 * v12 + 32];
          v39 = *(v38 + 16);
          v46 = *v38;
          v47 = v39;
          v48 = *(v38 + 32);
          v49 = *(v38 + 48);
          v41 = *(v37 + 16);
          v40 = *(v37 + 32);
          v42 = *v37;
          *(v38 + 48) = *(v37 + 48);
          *(v38 + 16) = v41;
          *(v38 + 32) = v40;
          *v38 = v42;
          v43 = v46;
          v44 = v47;
          v45 = v48;
          *(v37 + 48) = v49;
          *(v37 + 16) = v44;
          *(v37 + 32) = v45;
          *v37 = v43;
          v11 = *(v10 + 2);
        }

        ++v12;
      }

      ++v14;
      v37 += 56;
      if (v14 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_13:
  if (!__OFADD__(v11, v12 - v11))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    if (!isUniquelyReferenced_nonNull_native || v12 > *(v10 + 3) >> 1)
    {
      if (v11 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v11;
      }

      v10 = sub_219FA16B8(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      v50 = v10;
    }

    sub_219FE872C(v12, v11, 0);
    v50 = v10;
    swift_getKeyPath();
    sub_21A0E462C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB3A8);
    sub_219F3E490(&qword_27CCDB3B0, &qword_27CCDB3A8);
    sub_219F3E490(&qword_27CCDB3B8, &qword_27CCDB3A8);
    sub_219F3E490(&qword_27CCDB3C0, &qword_27CCDB3A0);
    sub_21A0E61AC();
    (*(v5 + 8))(v8, v4);
    v17 = v50;
    v18 = *(v50 + 2);
    if (v18)
    {
      *&v46 = MEMORY[0x277D84F90];
      sub_219FBE604(0, v18, 0);
      v4 = v46;
      v19 = *(v46 + 16);
      v20 = v17 + 80;
      do
      {
        v21 = (v20 - 24);
        if (!*v20)
        {
          v21 = (v20 - 8);
        }

        v22 = *v21;
        *&v46 = v4;
        v23 = *(v4 + 24);
        if (v19 >= v23 >> 1)
        {
          sub_219FBE604((v23 > 1), v19 + 1, 1);
          v4 = v46;
        }

        *(v4 + 16) = v19 + 1;
        *(v4 + 8 * v19 + 32) = v22;
        v20 += 56;
        ++v19;
        --v18;
      }

      while (v18);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    if (qword_27CCD90D0 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_30:
  v24 = sub_21A0E516C();
  __swift_project_value_buffer(v24, qword_27CCD97D8);

  v25 = sub_21A0E514C();
  v26 = sub_21A0E66BC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v46 = v28;
    *v27 = 136446466;
    v29 = MEMORY[0x277D839F8];
    v30 = MEMORY[0x21CED1A80](a1, MEMORY[0x277D839F8]);
    v32 = sub_219F50144(v30, v31, &v46);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    v33 = MEMORY[0x21CED1A80](v4, v29);
    v35 = sub_219F50144(v33, v34, &v46);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_219F39000, v25, v26, "Did process percentages for display. Input: %{public}s Output: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v28, -1, -1);
    MEMORY[0x21CED2D30](v27, -1, -1);
  }

  return v4;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_219FF734C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_219FF73A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

uint64_t CloudChannelID.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudChannelID.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *v0;
  v11 = v0[1];
  v14[2] = v10;
  v14[3] = v11;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t CloudChannelID.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_219FF7724()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *v0;
  v11 = v0[1];
  v14[2] = v10;
  v14[3] = v11;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

unint64_t sub_219FF78F0()
{
  result = qword_27CCDB3C8;
  if (!qword_27CCDB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB3C8);
  }

  return result;
}

unint64_t sub_219FF7954()
{
  result = qword_27CCDB3D0;
  if (!qword_27CCDB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB3D0);
  }

  return result;
}

uint64_t LiveActivityDismissalBehavior.hash(into:)()
{
  v1 = sub_21A0E495C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LiveActivityDismissalBehavior(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FFDFE4(v0, v9, type metadata accessor for LiveActivityDismissalBehavior);
  v10 = (*(v2 + 48))(v9, 2, v1);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    return MEMORY[0x21CED2490](v11);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x21CED2490](1);
    sub_219F44810(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t LiveActivityDismissalBehavior.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21A0E495C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LiveActivityDismissalBehavior(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E6DAC();
  sub_219FFDFE4(v1, v10, type metadata accessor for LiveActivityDismissalBehavior);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x21CED2490](v12);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x21CED2490](1);
    sub_219F44810(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v3 + 8))(v6, v2);
  }

  return sub_21A0E6DFC();
}

uint64_t sub_219FF7D8C()
{
  v1 = sub_21A0E495C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FFDFE4(v0, v9, type metadata accessor for LiveActivityDismissalBehavior);
  v10 = (*(v2 + 48))(v9, 2, v1);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    return MEMORY[0x21CED2490](v11);
  }

  else
  {
    (*(v2 + 32))(v6, v9, v1);
    MEMORY[0x21CED2490](1);
    sub_219F44810(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    return (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_219FF7F64()
{
  v1 = v0;
  v2 = sub_21A0E495C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E6DAC();
  sub_219FFDFE4(v1, v10, type metadata accessor for LiveActivityDismissalBehavior);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x21CED2490](v12);
  }

  else
  {
    (*(v3 + 32))(v7, v10, v2);
    MEMORY[0x21CED2490](1);
    sub_219F44810(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v3 + 8))(v7, v2);
  }

  return sub_21A0E6DFC();
}

uint64_t sub_219FF8180(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = type metadata accessor for NewsLiveActivityAttributes(0);
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB060);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4B0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = (&v49 - v20);
  v51 = a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4B8);
    v23 = sub_21A0E69CC();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v58 = v23;
  v54 = (v56 + 56);
  v24 = (v56 + 48);
  swift_bridgeObjectRetain_n();

  v25 = 0;
  for (i = v22; ; v22 = i)
  {
    if (v25 == v22)
    {
      v26 = 1;
      v25 = v22;
    }

    else
    {
      if (v25 >= v22)
      {
        goto LABEL_25;
      }

      sub_219FFDFE4(v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v25, v17, type metadata accessor for NewsLiveActivityAttributes);
      v27 = __OFADD__(v25++, 1);
      if (v27)
      {
        goto LABEL_26;
      }

      v26 = 0;
    }

    v28 = v55;
    (*v54)(v17, v26, 1, v55);
    sub_219F4D494(v17, v14, &qword_27CCDB060);
    if ((*v24)(v14, 1, v28) == 1)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4C0);
      (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    }

    else
    {
      v30 = v50;
      sub_219FFF6D0(v14, v50, type metadata accessor for NewsLiveActivityAttributes);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4C0);
      v32 = *(v31 + 48);
      swift_getAtKeyPath();
      sub_219FFF6D0(v30, v21 + v32, type metadata accessor for NewsLiveActivityAttributes);
      (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4C0);
    if ((*(*(v33 - 8) + 48))(v21, 1, v33) == 1)
    {

      swift_bridgeObjectRelease_n();
      return v23;
    }

    v34 = *(v33 + 48);
    v36 = *v21;
    v35 = v21[1];
    sub_219FFF6D0(v21 + v34, v57, type metadata accessor for NewsLiveActivityAttributes);
    v38 = sub_219F477B4(v36, v35);
    v39 = v23[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v23[3] < v41)
    {
      sub_21A0D1608(v41, 1);
      v43 = sub_219F477B4(v36, v35);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_28;
      }

      v38 = v43;
    }

    v23 = v58;
    if (v42)
    {

      sub_219FFF738(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for NewsLiveActivityAttributes);
    }

    else
    {
      v58[(v38 >> 6) + 8] |= 1 << v38;
      v45 = (v23[6] + 16 * v38);
      *v45 = v36;
      v45[1] = v35;
      sub_219FFF6D0(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for NewsLiveActivityAttributes);
      v46 = v23[2];
      v27 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v27)
      {
        goto LABEL_27;
      }

      v23[2] = v47;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = sub_21A0E6D0C();
  __break(1u);
  return result;
}

uint64_t sub_219FF870C(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = type metadata accessor for NewsLiveActivityContent(0);
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB040);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB498);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = (&v49 - v20);
  v51 = a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4A0);
    v23 = sub_21A0E69CC();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v58 = v23;
  v54 = (v56 + 56);
  v24 = (v56 + 48);
  swift_bridgeObjectRetain_n();

  v25 = 0;
  for (i = v22; ; v22 = i)
  {
    if (v25 == v22)
    {
      v26 = 1;
      v25 = v22;
    }

    else
    {
      if (v25 >= v22)
      {
        goto LABEL_25;
      }

      sub_219FFDFE4(v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v25, v17, type metadata accessor for NewsLiveActivityContent);
      v27 = __OFADD__(v25++, 1);
      if (v27)
      {
        goto LABEL_26;
      }

      v26 = 0;
    }

    v28 = v55;
    (*v54)(v17, v26, 1, v55);
    sub_219F4D494(v17, v14, &qword_27CCDB040);
    if ((*v24)(v14, 1, v28) == 1)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4A8);
      (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    }

    else
    {
      v30 = v50;
      sub_219FFF6D0(v14, v50, type metadata accessor for NewsLiveActivityContent);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4A8);
      v32 = *(v31 + 48);
      swift_getAtKeyPath();
      sub_219FFF6D0(v30, v21 + v32, type metadata accessor for NewsLiveActivityContent);
      (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4A8);
    if ((*(*(v33 - 8) + 48))(v21, 1, v33) == 1)
    {

      swift_bridgeObjectRelease_n();
      return v23;
    }

    v34 = *(v33 + 48);
    v36 = *v21;
    v35 = v21[1];
    sub_219FFF6D0(v21 + v34, v57, type metadata accessor for NewsLiveActivityContent);
    v38 = sub_219F477B4(v36, v35);
    v39 = v23[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v23[3] < v41)
    {
      sub_21A0D24FC(v41, 1);
      v43 = sub_219F477B4(v36, v35);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_28;
      }

      v38 = v43;
    }

    v23 = v58;
    if (v42)
    {

      sub_219FFF738(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for NewsLiveActivityContent);
    }

    else
    {
      v58[(v38 >> 6) + 8] |= 1 << v38;
      v45 = (v23[6] + 16 * v38);
      *v45 = v36;
      v45[1] = v35;
      sub_219FFF6D0(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for NewsLiveActivityContent);
      v46 = v23[2];
      v27 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v27)
      {
        goto LABEL_27;
      }

      v23[2] = v47;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = sub_21A0E6D0C();
  __break(1u);
  return result;
}

uint64_t sub_219FF8C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  (*(v5 + 16))(&v16 - v7, a1, v4);
  sub_21A0E4CDC();
  v9 = type metadata accessor for NewsLiveActivityContent(0);
  v10 = v9[5];
  v11 = sub_21A0E495C();
  v12 = *(*(v11 - 8) + 56);
  v12(a2 + v10, 1, 1, v11);
  sub_21A0E4CEC();
  sub_21A0E4CBC();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  result = (v12)(a2 + v9[9], 1, 1, v11);
  *(a2 + v9[7]) = v14;
  *(a2 + v9[8]) = 2;
  return result;
}

uint64_t sub_219FF8E50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219FF8F60()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_219FF9AC4;
  }

  else
  {
    v2 = sub_219FF9074;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FF9098()
{
  v80 = v0;
  v1 = *(v0 + 376);
  if (v1)
  {

    v2 = sub_21A0E514C();
    v3 = sub_21A0E66BC();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 288);
      v4 = *(v0 + 296);
      v6 = *(v0 + 272);
      v75 = *(v0 + 280);
      v7 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79 = v77;
      *v7 = 136315394;
      v8 = v1;
      v9 = sub_21A0E4B9C();
      v11 = sub_219F50144(v9, v10, &v79);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = v8;
      sub_21A0E4BAC();
      sub_21A0E4CDC();
      (*(v5 + 8))(v4, v75);
      v14 = *v6;
      v13 = v6[1];

      sub_219FFE04C(v6, type metadata accessor for NewsLiveActivityContentState);
      v15 = sub_219F50144(v14, v13, &v79);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_219F39000, v2, v3, "Beginning observation of Activity updates. ActivityKit ID=%s, News ID=%{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v77, -1, -1);
      MEMORY[0x21CED2D30](v7, -1, -1);
    }

    else
    {

      v12 = v1;
    }

    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    v24 = *(v0 + 272);
    v23 = *(v0 + 280);
    v69 = *(v0 + 264);
    v70 = *(v0 + 256);
    v25 = *(v0 + 240);
    v72 = *(v0 + 248);
    v61 = *(v0 + 224);
    v63 = *(v0 + 216);
    v64 = *(v0 + 192);
    v78 = *(v0 + 168);
    v74 = *(v0 + 160);
    v67 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0C8);
    v76 = v12;
    sub_21A0E4BAC();
    sub_21A0E4CDC();
    v26 = *(v21 + 8);
    v26(v22, v23);
    v28 = *v24;
    v27 = v24[1];

    sub_219FFE04C(v24, type metadata accessor for NewsLiveActivityContentState);
    *v25 = v28;
    v25[1] = v27;
    sub_21A0E4BAC();
    sub_21A0E4CDC();
    v26(v22, v23);
    swift_storeEnumTagMultiPayload();
    sub_21A0E654C();
    (*(v70 + 8))(v69, v72);
    v29 = sub_21A0E652C();
    v30 = *(v29 - 8);
    v68 = *(v30 + 56);
    v68(v61, 1, 1, v29);
    v31 = v64;
    v66 = *(v78 + 16);
    v66(v64, v67, v74);
    v32 = (*(v78 + 80) + 40) & ~*(v78 + 80);
    v33 = swift_allocObject();
    v34 = *(v78 + 32);
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v76;
    v71 = v32;
    v65 = v34;
    v34(&v33[v32], v31, v74);
    sub_219F45500(v61, v63, &qword_27CCDA0D0);
    v62 = *(v30 + 48);
    LODWORD(v23) = v62(v63, 1, v29);

    v35 = *(v0 + 216);
    v73 = v29;
    if (v23 == 1)
    {
      sub_219F6409C(v35, &qword_27CCDA0D0);
    }

    else
    {
      sub_21A0E651C();
      (*(v30 + 8))(v35, v29);
    }

    v60 = v30;
    if (*(v33 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v36 = sub_21A0E647C();
      v38 = v37;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = **(v0 + 144);
    v40 = swift_allocObject();
    *(v40 + 16) = &unk_21A0F30C8;
    *(v40 + 24) = v33;

    if (v38 | v36)
    {
      v41 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v36;
      *(v0 + 40) = v38;
    }

    else
    {
      v41 = 0;
    }

    v42 = *(v0 + 224);
    v43 = *(v0 + 200);
    v44 = *(v0 + 208);
    v45 = *(v0 + 184);
    v46 = *(v0 + 152);
    v47 = *(v0 + 160);
    *(v0 + 80) = 1;
    *(v0 + 88) = v41;
    *(v0 + 96) = v39;
    swift_task_create();

    sub_219F6409C(v42, &qword_27CCDA0D0);
    v68(v44, 1, 1, v73);
    v66(v45, v46, v47);
    v48 = swift_allocObject();
    v48[2] = 0;
    v49 = v48 + 2;
    v48[3] = 0;
    v48[4] = v76;
    v65(v48 + v71, v45, v47);
    sub_219F45500(v44, v43, &qword_27CCDA0D0);
    LODWORD(v45) = v62(v43, 1, v73);

    v50 = *(v0 + 200);
    if (v45 == 1)
    {
      sub_219F6409C(*(v0 + 200), &qword_27CCDA0D0);
      if (*v49)
      {
LABEL_21:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v51 = sub_21A0E647C();
        v53 = v52;
        swift_unknownObjectRelease();
LABEL_24:
        v54 = swift_allocObject();
        *(v54 + 16) = &unk_21A0F30E0;
        *(v54 + 24) = v48;

        if (v53 | v51)
        {
          v55 = v0 + 48;
          *(v0 + 48) = 0;
          *(v0 + 56) = 0;
          *(v0 + 64) = v51;
          *(v0 + 72) = v53;
        }

        else
        {
          v55 = 0;
        }

        v56 = *(v0 + 208);
        *(v0 + 104) = 1;
        *(v0 + 112) = v55;
        *(v0 + 120) = v39;
        swift_task_create();

        sub_219F6409C(v56, &qword_27CCDA0D0);
        v57 = sub_219F3E490(&qword_280C89478, &qword_27CCDB458);
        v58 = swift_task_alloc();
        *(v0 + 360) = v58;
        *v58 = v0;
        v58[1] = sub_219FF8F60;
        v59 = *(v0 + 328);

        return MEMORY[0x282200308](v0 + 128, v59, v57);
      }
    }

    else
    {
      sub_21A0E651C();
      (*(v60 + 8))(v50, v73);
      if (*v49)
      {
        goto LABEL_21;
      }
    }

    v51 = 0;
    v53 = 0;
    goto LABEL_24;
  }

  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  v16 = sub_21A0E514C();
  v17 = sub_21A0E66BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_219F39000, v16, v17, "Ending observation of ActivityKit updates", v18, 2u);
    MEMORY[0x21CED2D30](v18, -1, -1);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_219FF9AC4()
{
  *(v0 + 136) = *(v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_219FF9B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[5] = type metadata accessor for LiveActivityUpdate(0);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB448);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for NewsLiveActivityContentState(0);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB400);
  v4[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB480);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB488);
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FF9DF4, 0, 0);
}

uint64_t sub_219FF9DF4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_21A0E4B6C();
  sub_21A0E4B5C();
  (*(v2 + 8))(v1, v3);
  v4 = sub_219F3E490(&qword_27CCDB490, &qword_27CCDB488);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_219FF9F1C;
  v6 = v0[19];
  v7 = v0[15];

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_219FF9F1C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_219FFA488;
  }

  else
  {
    v2 = sub_219FFA030;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FFA04C()
{
  v32 = v0;
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[14], v1, v2);
    if (qword_280C87978 != -1)
    {
      swift_once();
    }

    v6 = sub_21A0E516C();
    __swift_project_value_buffer(v6, qword_280C8C0A8);

    v7 = sub_21A0E514C();
    v8 = sub_21A0E66BC();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[12];
      v9 = v0[13];
      v11 = v0[10];
      v28 = v0[11];
      v12 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v12 = 136315394;
      v13 = sub_21A0E4B9C();
      v15 = sub_219F50144(v13, v14, &v31);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      sub_21A0E4BAC();
      sub_21A0E4CDC();
      (*(v10 + 8))(v9, v28);
      v16 = *v11;
      v17 = v11[1];

      sub_219FFE04C(v11, type metadata accessor for NewsLiveActivityContentState);
      v18 = sub_219F50144(v16, v17, &v31);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_219F39000, v7, v8, "ActivityKit posted content update. ActivityKit ID=%s, News ID=%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v29, -1, -1);
      MEMORY[0x21CED2D30](v12, -1, -1);
    }

    v19 = v0[14];
    v20 = v0[11];
    v21 = v0[12];
    v23 = v0[8];
    v22 = v0[9];
    v30 = v0[7];
    sub_21A0E4CDC();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB440);
    sub_21A0E654C();
    (*(v23 + 8))(v22, v30);
    (*(v21 + 8))(v19, v20);
    v24 = sub_219F3E490(&qword_27CCDB490, &qword_27CCDB488);
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_219FF9F1C;
    v26 = v0[19];
    v27 = v0[15];

    return MEMORY[0x282200308](v27, v26, v24);
  }
}

uint64_t sub_219FFA488()
{
  *(v0 + 16) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_219FFA514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = type metadata accessor for LiveActivityUpdate(0);
  v4[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB448);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for NewsLiveActivityContentState(0);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[13] = v7;
  *v7 = v4;
  v7[1] = sub_219FFA6E8;

  return sub_219FFAB04();
}

uint64_t sub_219FFA6E8()
{

  return MEMORY[0x2822009F8](sub_219FFA7E4, 0, 0);
}

uint64_t sub_219FFA7E4()
{
  v29 = v0;
  if (qword_280C87978 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  __swift_project_value_buffer(v1, qword_280C8C0A8);

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[9];
    v25 = v0[10];
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v7 = 136315394;
    v8 = sub_21A0E4B9C();
    v10 = sub_219F50144(v8, v9, &v28);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    sub_21A0E4BAC();
    sub_21A0E4CDC();
    (*(v5 + 8))(v4, v25);
    v11 = *v6;
    v12 = v6[1];

    sub_219FFE04C(v6, type metadata accessor for NewsLiveActivityContentState);
    v13 = sub_219F50144(v11, v12, &v28);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_219F39000, v2, v3, "ActivityKit posted dismissal update. ActivityKit ID=%s, News ID=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v26, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[9];
  v17 = v0[10];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[5];
  v27 = v0[6];
  sub_21A0E4BAC();
  sub_21A0E4CDC();
  (*(v15 + 8))(v14, v17);
  v22 = *v16;
  v21 = v16[1];

  sub_219FFE04C(v16, type metadata accessor for NewsLiveActivityContentState);
  *v20 = v22;
  v20[1] = v21;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB440);
  sub_21A0E654C();
  (*(v19 + 8))(v18, v27);

  v23 = v0[1];

  return v23();
}

uint64_t sub_219FFAB04()
{
  v1[3] = v0;
  v2 = sub_21A0E4C8C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB460);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB468);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB470);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FFACD8, 0, 0);
}

uint64_t sub_219FFACD8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_21A0E4B8C();
  sub_21A0E4B0C();
  (*(v2 + 8))(v1, v3);
  *(v0 + 136) = *MEMORY[0x277CB9610];
  v4 = sub_219F3E490(&qword_27CCDB478, &qword_27CCDB470);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_219FFAE10;
  v6 = *(v0 + 96);
  v7 = *(v0 + 64);

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_219FFAE10()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_219FFB164;
  }

  else
  {
    v2 = sub_219FFAF24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FFAF40()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (*(v3 + 48))(v1, 1, v2) == 1 || (v4 = *(v0 + 136), v6 = *(v0 + 48), v5 = *(v0 + 56), (*(v3 + 32))(v5, v1, v2), (*(v3 + 104))(v6, v4, v2), v7 = sub_21A0E4C7C(), v8 = *(v3 + 8), v8(v6, v2), v8(v5, v2), (v7))
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = sub_219F3E490(&qword_27CCDB478, &qword_27CCDB470);
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_219FFAE10;
    v13 = *(v0 + 96);
    v14 = *(v0 + 64);

    return MEMORY[0x282200308](v14, v13, v11);
  }
}

uint64_t sub_219FFB164()
{
  *(v0 + 16) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_219FFB1F0()
{
  if (qword_280C87978 != -1)
  {
    swift_once();
  }

  v0 = sub_21A0E516C();
  __swift_project_value_buffer(v0, qword_280C8C0A8);
  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_219F39000, v1, v2, "Cancelling observation of ActivityKit updates", v3, 2u);
    MEMORY[0x21CED2D30](v3, -1, -1);
  }

  return sub_21A0E659C();
}

uint64_t sub_219FFB32C()
{
  sub_21A0E4BFC();
  swift_allocObject();
  sub_21A0E4BEC();
  v0 = sub_21A0E4BDC();

  return v0 & 1;
}

uint64_t sub_219FFB384(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4996C;

  return (sub_219FFC268)(a1, a2);
}

uint64_t sub_219FFB438(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F49B18;

  return sub_219FFE0AC(a1);
}

uint64_t sub_219FFB4E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F4996C;

  return sub_219FFD104(a1, a2, a3);
}

uint64_t sub_219FFB5C0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LiveActivityUpdate(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_219FFB674()
{
  v0 = type metadata accessor for LiveActivityUpdate(0);

  return MEMORY[0x282200400](&unk_21A0F3008, 0, 0, 0, v0);
}

uint64_t sub_219FFB6F0()
{
  sub_219FFBFA8();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s22NewsLiveActivitiesCore0B25ActivityDismissalBehaviorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LiveActivityDismissalBehavior(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB3F0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_219FFDFE4(a1, &v24 - v16, type metadata accessor for LiveActivityDismissalBehavior);
  sub_219FFDFE4(a2, &v17[v18], type metadata accessor for LiveActivityDismissalBehavior);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_219FFDFE4(v17, v12, type metadata accessor for LiveActivityDismissalBehavior);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_21A0E492C();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_219FFE04C(v17, type metadata accessor for LiveActivityDismissalBehavior);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_219F6409C(v17, &qword_27CCDB3F0);
    v21 = 0;
    return v21 & 1;
  }

  sub_219FFE04C(v17, type metadata accessor for LiveActivityDismissalBehavior);
  v21 = 1;
  return v21 & 1;
}

uint64_t dispatch thunk of LiveActivityController.startLiveActivity(attributes:initialContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_219F4996C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LiveActivityController.updateLiveActivity(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F49B18;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LiveActivityController.endLiveActivity(identifier:content:dismissalBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F4996C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_219FFBF30()
{
  v0 = sub_21A0E495C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_219FFBFA8()
{
  result = qword_27CCDB3F8;
  if (!qword_27CCDB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB3F8);
  }

  return result;
}

size_t sub_219FFBFFC()
{
  v0 = type metadata accessor for NewsLiveActivityAttributes(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB410);
  v5 = sub_21A0E4B2C();
  swift_getKeyPath();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    v9 = MEMORY[0x277D84F90];
LABEL_14:
    KeyPath = swift_getKeyPath();
    v14 = sub_219FF8180(KeyPath, v9);

    return v14;
  }

  v6 = sub_21A0E699C();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_219FBE664(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v16;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CED1F60](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v15 = v10;

      swift_getAtKeyPath();

      v16 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_219FBE664(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      ++v8;
      *(v9 + 16) = v12 + 1;
      sub_219FFF6D0(v4, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, type metadata accessor for NewsLiveActivityAttributes);
    }

    while (v6 != v8);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_219FFC268(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21A0E4C6C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for NewsLiveActivityContentState(0);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FFC3F8, 0, 0);
}

uint64_t sub_219FFC3F8()
{
  v46 = v0;
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  if (qword_280C87978 != -1)
  {
    swift_once();
  }

  v4 = sub_21A0E516C();
  __swift_project_value_buffer(v4, qword_280C8C0A8);

  v5 = sub_21A0E514C();
  v6 = sub_21A0E66BC();

  v43 = v3;
  v44 = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_219F50144(v3, v2, v45);
    _os_log_impl(&dword_219F39000, v5, v6, "Requesting live activity for newsID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  v9 = v0[9];
  v10 = v0[7];
  v12 = v0[2];
  v11 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB410);
  sub_219FFDFE4(v11, v9, type metadata accessor for NewsLiveActivityContentState);
  v13 = type metadata accessor for NewsLiveActivityContent(0);
  sub_219F45500(v11 + *(v13 + 24), v10, &qword_27CCD97F0);
  sub_219F44810(&qword_280C88E60, type metadata accessor for NewsLiveActivityContentState);
  sub_219F44810(qword_280C88E78, type metadata accessor for NewsLiveActivityContentState);
  sub_219F44810(&qword_280C88E70, type metadata accessor for NewsLiveActivityContentState);
  sub_21A0E4CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB428);
  v14 = sub_21A0E4BCC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21A0F2E40;
  v19 = (v18 + v17);
  *v19 = xmmword_21A0F2E50;
  v20 = *MEMORY[0x277CB9338];
  v21 = *(v15 + 104);
  v21(v19, v20, v14);
  *(v19 + v16) = xmmword_21A0F2E60;
  v21((v19 + v16), v20, v14);
  v22 = (v19 + 2 * v16);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB430) + 48);
  v24 = *(v12 + 24);
  *v22 = *(v12 + 16);
  v22[1] = v24;
  v25 = *MEMORY[0x277CB9228];
  v26 = sub_21A0E4AFC();
  (*(*(v26 - 8) + 104))(v22, v25, v26);
  *(v22 + v23) = xmmword_21A0F2E60;
  v21(v22, *MEMORY[0x277CB9330], v14);

  sub_21A0E4C4C();
  sub_21A0E4C5C();
  sub_21A0E4BBC();
  v28 = v0[11];
  v27 = v0[12];
  v29 = v0[10];
  v31 = v0[5];
  v30 = v0[6];
  v32 = v0[4];

  (*(v31 + 8))(v30, v32);
  (*(v28 + 8))(v27, v29);

  v33 = sub_21A0E514C();
  v34 = sub_21A0E66BC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v35 = 136446466;
    v37 = sub_219F50144(v43, v44, v45);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2082;
    v38 = sub_21A0E4B9C();
    v40 = sub_219F50144(v38, v39, v45);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_219F39000, v33, v34, "Got live activity for newsID: %{public}s, activity id: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v36, -1, -1);
    MEMORY[0x21CED2D30](v35, -1, -1);
  }

  else
  {
  }

  v41 = v0[1];

  return v41();
}

size_t sub_219FFCBF0()
{
  v0 = type metadata accessor for NewsLiveActivityContent(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB410);
  v5 = sub_21A0E4B2C();
  swift_getKeyPath();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    v9 = MEMORY[0x277D84F90];
LABEL_14:
    KeyPath = swift_getKeyPath();
    v14 = sub_219FF870C(KeyPath, v9);

    return v14;
  }

  v6 = sub_21A0E699C();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_219FBE800(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v16;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CED1F60](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v15 = v10;

      swift_getAtKeyPath();

      v16 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_219FBE800(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      ++v8;
      *(v9 + 16) = v12 + 1;
      sub_219FFF6D0(v4, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, type metadata accessor for NewsLiveActivityContent);
    }

    while (v6 != v8);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_219FFCE5C(uint64_t *a1)
{
  v2 = type metadata accessor for NewsLiveActivityContentState(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v7);
  v9 = &v22 - v8;
  v10 = *a1;
  v26 = a1[1];
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB410);
  v11 = sub_21A0E4B2C();
  v12 = v11;
  if (v11 >> 62)
  {
LABEL_18:
    v13 = sub_21A0E699C();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_3:
      v14 = 0;
      v23 = v12 & 0xFFFFFFFFFFFFFF8;
      v24 = v12 & 0xC000000000000001;
      v15 = (v6 + 8);
      do
      {
        if (v24)
        {
          v6 = MEMORY[0x21CED1F60](v14, v12);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v6;
          }
        }

        else
        {
          if (v14 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v6 = *(v12 + 8 * v14 + 32);

          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_14;
          }
        }

        sub_21A0E4BAC();
        v17 = v25;
        sub_21A0E4CDC();
        (*v15)(v9, v17);
        v19 = *v5;
        v18 = v5[1];

        sub_219FFE04C(v5, type metadata accessor for NewsLiveActivityContentState);
        if (v19 == v27 && v18 == v26)
        {
          goto LABEL_15;
        }

        v20 = sub_21A0E6C5C();

        if (v20)
        {

          return v6;
        }

        ++v14;
      }

      while (v16 != v13);
    }
  }

  return 0;
}

uint64_t sub_219FFD104(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = type metadata accessor for NewsLiveActivityContentState(0);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB400);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB040);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_21A0E495C();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  type metadata accessor for LiveActivityDismissalBehavior(0);
  v3[16] = swift_task_alloc();
  v6 = sub_21A0E4C3C();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  v9 = a1[1];
  v3[21] = v7;
  v3[22] = v8;
  v3[23] = v9;

  return MEMORY[0x2822009F8](sub_219FFD378, 0, 0);
}

uint64_t sub_219FFD378()
{
  v49 = v0;
  if (qword_280C87978 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  v0[24] = __swift_project_value_buffer(v1, qword_280C8C0A8);

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[22];
    v4 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_219F50144(v5, v4, v48);
    _os_log_impl(&dword_219F39000, v2, v3, "Ending live activity newsID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  v8 = v0[23];
  v48[0] = v0[22];
  v48[1] = v8;
  v9 = sub_219FFCE5C(v48);
  v0[25] = v9;
  if (v9)
  {
    v10 = v0[16];
    v11 = v0[11];
    v12 = v0[12];
    sub_219FFDFE4(v0[3], v10, type metadata accessor for LiveActivityDismissalBehavior);
    v13 = *(v12 + 48);
    v14 = v13(v10, 2, v11);
    if (v14)
    {
      if (v14 == 1)
      {
        sub_21A0E4C1C();
      }

      else
      {
        sub_21A0E4C2C();
      }
    }

    else
    {
      v23 = v0[15];
      v24 = v0[11];
      v25 = v0[12];
      (*(v25 + 32))(v23, v0[16], v24);
      sub_21A0E4C0C();
      (*(v25 + 8))(v23, v24);
    }

    v26 = v0[8];
    sub_219F45500(v0[2], v26, &qword_27CCDB040);
    v27 = type metadata accessor for NewsLiveActivityContent(0);
    v28 = *(*(v27 - 8) + 48);
    if (v28(v26, 1, v27) == 1)
    {
      v29 = v0[11];
      v30 = v0[12];
      v31 = v0[10];
      sub_219F6409C(v0[8], &qword_27CCDB040);
      (*(v30 + 56))(v31, 1, 1, v29);
    }

    else
    {
      v33 = v0[10];
      v32 = v0[11];
      v34 = v0[8];
      sub_219F45500(v34 + *(v27 + 20), v33, &qword_27CCD97F0);
      sub_219FFE04C(v34, type metadata accessor for NewsLiveActivityContent);
      if (v13(v33, 1, v32) != 1)
      {
        (*(v0[12] + 32))(v0[14], v0[10], v0[11]);
LABEL_22:
        v37 = v0[7];
        sub_219F45500(v0[2], v37, &qword_27CCDB040);
        if (v28(v37, 1, v27) == 1)
        {
          sub_219F6409C(v0[7], &qword_27CCDB040);
          v38 = 1;
        }

        else
        {
          v39 = v0[9];
          v40 = v0[7];
          sub_219FFDFE4(v40, v0[5], type metadata accessor for NewsLiveActivityContentState);
          sub_219F45500(v40 + *(v27 + 24), v39, &qword_27CCD97F0);
          sub_219F44810(&qword_280C88E60, type metadata accessor for NewsLiveActivityContentState);
          sub_219F44810(qword_280C88E78, type metadata accessor for NewsLiveActivityContentState);
          sub_219F44810(&qword_280C88E70, type metadata accessor for NewsLiveActivityContentState);
          sub_21A0E4CCC();
          sub_219FFE04C(v40, type metadata accessor for NewsLiveActivityContent);
          v38 = 0;
        }

        v41 = v0[6];
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
        (*(*(v42 - 8) + 56))(v41, v38, 1, v42);
        v47 = (*MEMORY[0x277CB9288] + MEMORY[0x277CB9288]);
        v43 = swift_task_alloc();
        v0[26] = v43;
        *v43 = v0;
        v43[1] = sub_219FFDB14;
        v44 = v0[21];
        v45 = v0[14];
        v46 = v0[6];

        return v47(v46, v44, v45);
      }
    }

    v36 = v0[10];
    v35 = v0[11];
    sub_21A0E493C();
    if (v13(v36, 1, v35) != 1)
    {
      sub_219F6409C(v0[10], &qword_27CCD97F0);
    }

    goto LABEL_22;
  }

  v15 = sub_21A0E514C();
  v16 = sub_21A0E669C();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_219F50144(v18, v17, v48);
    _os_log_impl(&dword_219F39000, v15, v16, "Asked to end an activity that ActivityKit does not know about. ID=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x21CED2D30](v20, -1, -1);
    MEMORY[0x21CED2D30](v19, -1, -1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_219FFDB14()
{
  v1 = *(*v0 + 48);

  sub_219F6409C(v1, &qword_27CCDB400);

  return MEMORY[0x2822009F8](sub_219FFDC3C, 0, 0);
}

uint64_t sub_219FFDC3C()
{
  v42 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = *(v0[18] + 16);
  v5(v0[20], v0[21], v0[17]);
  (*(v4 + 16))(v2, v1, v3);

  v6 = sub_21A0E514C();
  v7 = sub_21A0E66BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v9 = v0[20];
    v10 = v0[19];
    v39 = v0[21];
    v40 = v0[17];
    v11 = v0[13];
    v38 = v0[14];
    v32 = v0[23];
    v33 = v0[12];
    v34 = v0[11];
    v35 = v0[18];
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v12 = 136446722;
    *(v12 + 4) = sub_219F50144(v8, v32, &v41);
    *(v12 + 12) = 2082;
    v5(v10, v9, v40);
    v13 = sub_21A0E622C();
    v15 = v14;
    v36 = *(v35 + 8);
    v36(v9, v40);
    v16 = sub_219F50144(v13, v15, &v41);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2050;
    sub_21A0E489C();
    v18 = v17;
    v19 = *(v33 + 8);
    v19(v11, v34);
    *(v12 + 24) = v18;
    _os_log_impl(&dword_219F39000, v6, v7, "Ended live activity for newsID: %{public}s, dismissalPolicy: %{public}s, lastUpdatedDate:%{public}f", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v37, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);

    v19(v38, v34);
    v36(v39, v40);
  }

  else
  {
    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[17];
    v23 = v0[18];
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[11];
    v27 = v0[12];

    v28 = *(v27 + 8);
    v28(v25, v26);
    v29 = *(v23 + 8);
    v29(v21, v22);
    v28(v24, v26);
    v29(v20, v22);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_219FFDFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FFE04C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219FFE0AC(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB418);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_21A0E4C3C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for NewsLiveActivityContentState(0);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB400);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = sub_21A0E495C();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for NewsLiveActivityContent(0);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FFE368, 0, 0);
}

uint64_t sub_219FFE368()
{
  v63 = v0;
  v1 = v0[2];
  v2 = *v1;
  v0[23] = *v1;
  v3 = v1[1];
  v0[24] = v3;
  v4 = qword_280C87978;

  if (v4 != -1)
  {
    swift_once();
    v1 = v0[2];
  }

  v5 = v0[22];
  v6 = sub_21A0E516C();
  v0[25] = __swift_project_value_buffer(v6, qword_280C8C0A8);
  sub_219FFDFE4(v1, v5, type metadata accessor for NewsLiveActivityContent);

  v7 = sub_21A0E514C();
  v8 = sub_21A0E66BC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  if (v9)
  {
    v11 = v0[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62[0] = v13;
    *v12 = 136446466;

    v14 = v2;
    v15 = sub_219F50144(v2, v3, v62);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = *(v10 + *(v11 + 32));
    v17 = 6581861;
    if ((v16 & 1) == 0)
    {
      v17 = 0x657461647075;
    }

    v18 = 0xE600000000000000;
    if (v16)
    {
      v18 = 0xE300000000000000;
    }

    if (v16 == 2)
    {
      v19 = 0x3E6C696E3CLL;
    }

    else
    {
      v19 = v17;
    }

    if (v16 == 2)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = v18;
    }

    sub_219FFE04C(v10, type metadata accessor for NewsLiveActivityContent);
    v21 = v19;
    v2 = v14;
    v22 = sub_219F50144(v21, v20, v62);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_219F39000, v7, v8, "Updating live activity newsID: %{public}s, event: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v13, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);
  }

  else
  {

    sub_219FFE04C(v10, type metadata accessor for NewsLiveActivityContent);
  }

  v62[0] = v2;
  v62[1] = v3;
  v23 = sub_219FFCE5C(v62);
  v0[26] = v23;
  if (v23)
  {
    v24 = v0[16];
    v25 = v0[17];
    v26 = v0[15];
    sub_219F45500(v0[2] + *(v0[21] + 20), v26, &qword_27CCD97F0);
    v27 = *(v25 + 48);
    if (v27(v26, 1, v24) == 1)
    {
      v28 = v0[15];
      v29 = v0[16];
      sub_21A0E493C();
      if (v27(v28, 1, v29) != 1)
      {
        sub_219F6409C(v0[15], &qword_27CCD97F0);
      }
    }

    else
    {
      (*(v0[17] + 32))(v0[20], v0[15], v0[16]);
    }

    v38 = v0[21];
    v39 = v0[2];
    v40 = *(v39 + *(v38 + 32));
    if (v40 == 2)
    {
      goto LABEL_27;
    }

    if (v40)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v48 = sub_21A0E6C5C();

      if ((v48 & 1) == 0)
      {
        v38 = v0[21];
        v39 = v0[2];
LABEL_27:
        v41 = v0[14];
        v42 = v0[3];
        sub_219FFDFE4(v39, v0[11], type metadata accessor for NewsLiveActivityContentState);
        sub_219F45500(v39 + *(v38 + 24), v41, &qword_27CCD97F0);
        sub_219F44810(&qword_280C88E60, type metadata accessor for NewsLiveActivityContentState);
        sub_219F44810(qword_280C88E78, type metadata accessor for NewsLiveActivityContentState);
        sub_219F44810(&qword_280C88E70, type metadata accessor for NewsLiveActivityContentState);
        sub_21A0E4CCC();
        v43 = sub_21A0E4D0C();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v60 = (*MEMORY[0x277CB9298] + MEMORY[0x277CB9298]);
        v44 = swift_task_alloc();
        v0[28] = v44;
        *v44 = v0;
        v44[1] = sub_219FFF17C;
        v45 = v0[20];
        v46 = v0[6];
        v47 = v0[3];
LABEL_35:

        return v60(v46, v47, v45);
      }
    }

    v49 = v0[21];
    v50 = v0[14];
    v59 = v0[13];
    v61 = v0[16];
    v57 = v0[12];
    v51 = v0[5];
    v58 = v0[4];
    v52 = v0[2];
    sub_219FFDFE4(v52, v0[11], type metadata accessor for NewsLiveActivityContentState);
    sub_219F45500(v52 + *(v49 + 24), v50, &qword_27CCD97F0);
    sub_219F44810(&qword_280C88E60, type metadata accessor for NewsLiveActivityContentState);
    sub_219F44810(qword_280C88E78, type metadata accessor for NewsLiveActivityContentState);
    sub_219F44810(&qword_280C88E70, type metadata accessor for NewsLiveActivityContentState);
    sub_21A0E4CCC();
    (*(v51 + 56))(v57, 0, 1, v58);
    sub_219F45500(v52 + *(v49 + 36), v59, &qword_27CCD97F0);
    if (v27(v59, 1, v61) == 1)
    {
      sub_219F6409C(v0[13], &qword_27CCD97F0);
      sub_21A0E4C1C();
    }

    else
    {
      v53 = v0[19];
      v54 = v0[16];
      v55 = v0[17];
      (*(v55 + 32))(v53, v0[13], v54);
      sub_21A0E4C0C();
      (*(v55 + 8))(v53, v54);
    }

    v60 = (*MEMORY[0x277CB9288] + MEMORY[0x277CB9288]);
    v56 = swift_task_alloc();
    v0[27] = v56;
    *v56 = v0;
    v56[1] = sub_219FFED44;
    v45 = v0[20];
    v46 = v0[12];
    v47 = v0[9];
    goto LABEL_35;
  }

  v30 = sub_21A0E514C();
  v31 = sub_21A0E66BC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v62[0] = v33;
    *v32 = 136446210;

    v34 = sub_219F50144(v2, v3, v62);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_219F39000, v30, v31, "Couldn't find activity for newsID: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x21CED2D30](v33, -1, -1);
    MEMORY[0x21CED2D30](v32, -1, -1);
  }

  sub_219FFF300();
  swift_allocError();
  *v35 = v2;
  v35[1] = v3;
  swift_willThrow();

  v36 = v0[1];

  return v36();
}

uint64_t sub_219FFED44()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  (*(v3 + 8))(v2, v4);
  sub_219F6409C(v1, &qword_27CCDB400);

  return MEMORY[0x2822009F8](sub_219FFEEC8, 0, 0);
}

uint64_t sub_219FFEEC8()
{
  v24 = v0;
  (*(v0[17] + 16))(v0[18], v0[20], v0[16]);

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  if (v3)
  {
    v5 = v0[23];
    v6 = v0[17];
    v7 = v0[18];
    v21 = v0[16];
    v22 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    v10 = sub_219F50144(v5, v4, &v23);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2050;
    sub_21A0E489C();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v7, v21);
    *(v8 + 14) = v12;
    _os_log_impl(&dword_219F39000, v1, v2, "Updated live activity for newsID: %{public}s, lastUpdatedDate:%{public}f", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);

    v13(v22, v21);
  }

  else
  {
    v14 = v0[20];
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];

    v18 = *(v16 + 8);
    v18(v15, v17);
    v18(v14, v17);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_219FFF17C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  sub_219F6409C(v4, &qword_27CCDB418);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_219FFF7CC, 0, 0);
}

unint64_t sub_219FFF300()
{
  result = qword_27CCDB420;
  if (!qword_27CCDB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB420);
  }

  return result;
}

uint64_t sub_219FFF35C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB440) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_219F49B18;

  return sub_219FF9B50(v4, v5, v6, v0 + v3);
}

uint64_t sub_219FFF454()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F49B18;

  return sub_21A070668(v2);
}

uint64_t objectdestroy_28Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_219FFF5D8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB440) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_219F49B18;

  return sub_219FFA514(v4, v5, v6, v0 + v3);
}

uint64_t sub_219FFF6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FFF738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NationalElectionHeroUpdateView()
{
  result = qword_27CCDB4C8;
  if (!qword_27CCDB4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_219FFF860(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = (v2 + *(type metadata accessor for NationalElectionUpdate.Hero(0) + 32));
  v6 = v5[3];
  v141 = v5[2];
  *v142 = v6;
  *&v142[13] = *(v5 + 61);
  v7 = *v5;
  v140 = v5[1];
  v139 = v7;
  sub_219F72F28(&v139, v207);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v8 = qword_27CCDBDB0;
  v9 = *&v142[16] | (v142[20] << 32);
  *&v146[13] = *(v5 + 61);
  v10 = v5[3];
  v145 = v5[2];
  *v146 = v10;
  v11 = *v5;
  v144 = v5[1];
  v143 = v11;
  v12 = *&v146[16] | (v146[20] << 32);
  memset(v147, 0, sizeof(v147));
  v148 = 0;

  v127 = v141;
  v128 = v139;
  v125 = *v142;
  v126 = v140;
  v133 = v145;
  v135 = v143;
  v129 = *v146;
  v131 = v144;
  sub_219F72F28(&v143, v207);

  sub_219F6409C(v147, &qword_27CCD9F78);
  memset(v149, 0, sizeof(v149));
  v150 = 0;
  sub_219F6409C(v149, &qword_27CCD9F78);
  v152 = v126;
  v151 = v128;
  v154 = v125;
  v153 = v127;
  *&v155 = v9;
  *(&v155 + 1) = v8;
  v13 = MEMORY[0x277D84F90];
  *&v156[24] = v131;
  *&v156[8] = v135;
  *&v156[56] = v129;
  *&v156[40] = v133;
  *v156 = MEMORY[0x277D84F90];
  *&v156[72] = v12;
  *&v157 = v8;
  *(&v157 + 1) = MEMORY[0x277D84F90];
  nullsub_1(&v151, v14);
  *&v161[13] = *(v5 + 61);
  v15 = v5[3];
  v160 = v5[2];
  *v161 = v15;
  v16 = *v5;
  v159 = v5[1];
  v158 = v16;
  v17 = qword_27CCDBDB0;
  v18 = *&v161[16] | (v161[20] << 32);
  memset(v162, 0, sizeof(v162));
  v163 = 0;
  v134 = v160;
  v136 = v16;
  v130 = *v161;
  v132 = v159;
  sub_219F72F28(&v158, v207);

  sub_219F6409C(v162, &qword_27CCD9F78);
  memset(v164, 0, sizeof(v164));
  v165 = 0;
  sub_219F6409C(v164, &qword_27CCD9F78);
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  *&v171[24] = v132;
  *&v171[8] = v136;
  *&v171[56] = v130;
  *&v171[40] = v134;
  *v171 = 0;
  *&v171[72] = v18;
  *&v172 = v17;
  *(&v172 + 1) = v13;
  nullsub_1(&v166, v19);
  sub_219F5EC1C(v173);
  __src[8] = v173[8];
  __src[9] = v173[9];
  __src[10] = v173[10];
  __src[4] = v173[4];
  __src[5] = v173[5];
  __src[6] = v173[6];
  __src[7] = v173[7];
  __src[0] = v173[0];
  __src[1] = v173[1];
  __src[2] = v173[2];
  __src[3] = v173[3];
  sub_219F5EC1C(v174);
  __src[19] = v174[8];
  __src[20] = v174[9];
  __src[21] = v174[10];
  __src[15] = v174[4];
  __src[16] = v174[5];
  __src[17] = v174[6];
  __src[18] = v174[7];
  __src[11] = v174[0];
  __src[12] = v174[1];
  __src[13] = v174[2];
  __src[14] = v174[3];
  v175[8] = __src[8];
  v175[9] = __src[9];
  v175[10] = __src[10];
  v175[4] = __src[4];
  v175[5] = __src[5];
  v175[7] = __src[7];
  v175[6] = __src[6];
  v175[0] = __src[0];
  v175[1] = __src[1];
  v175[3] = __src[3];
  v175[2] = __src[2];
  sub_219F6409C(v175, &qword_27CCDA4A8);
  __src[8] = *&v156[48];
  __src[9] = *&v156[64];
  __src[10] = v157;
  __src[4] = v155;
  __src[5] = *v156;
  __src[6] = *&v156[16];
  __src[7] = *&v156[32];
  __src[0] = v151;
  __src[1] = v152;
  __src[2] = v153;
  __src[3] = v154;
  v176[8] = __src[19];
  v176[9] = __src[20];
  v176[10] = __src[21];
  v176[4] = __src[15];
  v176[5] = __src[16];
  v176[7] = __src[18];
  v176[6] = __src[17];
  v176[0] = __src[11];
  v176[1] = __src[12];
  v176[3] = __src[14];
  v176[2] = __src[13];
  sub_219F6409C(v176, &qword_27CCD9B40);
  __src[19] = *&v171[48];
  __src[20] = *&v171[64];
  __src[21] = v172;
  __src[15] = v170;
  __src[16] = *v171;
  __src[17] = *&v171[16];
  __src[18] = *&v171[32];
  __src[11] = v166;
  __src[12] = v167;
  __src[13] = v168;
  __src[14] = v169;
  memcpy(__dst, __src, sizeof(__dst));
  nullsub_1(__dst, v20);
  sub_219FB2474(v178);
  memcpy(&v138[352], v178, 0x160uLL);
  memcpy(v179, v178, sizeof(v179));
  sub_219F6409C(v179, &qword_27CCDA9B0);
  memcpy(v138, __dst, 0x160uLL);
  memcpy(v180, &v138[352], sizeof(v180));
  sub_219F6409C(v180, &qword_27CCDA9B0);
  memcpy(&v138[352], v178, 0x160uLL);
  memcpy(v181, v138, sizeof(v181));
  nullsub_1(v181, v21);
  sub_219F639B0(&v182);
  sub_219FF06D0(v195);
  v22 = v191;
  v23 = v192;
  v24 = v193;
  *(v4 + 864) = v192;
  *(v4 + 880) = v24;
  v25 = v187;
  v26 = v188;
  v27 = v189;
  *(v4 + 800) = v188;
  *(v4 + 816) = v27;
  v28 = v189;
  v29 = v190;
  v30 = v191;
  *(v4 + 832) = v190;
  *(v4 + 848) = v30;
  v31 = v183;
  v32 = v184;
  v33 = v185;
  *(v4 + 736) = v184;
  *(v4 + 752) = v33;
  v34 = v185;
  v35 = v186;
  v36 = v187;
  *(v4 + 768) = v186;
  *(v4 + 784) = v36;
  v37 = v183;
  *(v4 + 704) = v182;
  *(v4 + 720) = v37;
  v38 = v191;
  v39 = v193;
  *(v4 + 1064) = v192;
  *(v4 + 1080) = v39;
  v40 = v187;
  v41 = v189;
  *(v4 + 1000) = v188;
  *(v4 + 1016) = v41;
  *(v4 + 1032) = v190;
  *(v4 + 1048) = v38;
  v42 = v182;
  v43 = v183;
  v44 = v185;
  *(v4 + 936) = v184;
  *(v4 + 952) = v44;
  *(v4 + 968) = v186;
  *(v4 + 984) = v40;
  *(v4 + 904) = v182;
  *(v4 + 920) = v43;
  v45 = v192;
  *(v4 + 1248) = v191;
  *(v4 + 1264) = v45;
  *(v4 + 1280) = v193;
  v46 = v188;
  *(v4 + 1184) = v187;
  *(v4 + 1200) = v46;
  v47 = v190;
  *(v4 + 1216) = v189;
  *(v4 + 1232) = v47;
  v48 = v184;
  *(v4 + 1120) = v183;
  *(v4 + 1136) = v48;
  v49 = v186;
  *(v4 + 1152) = v185;
  *(v4 + 1168) = v49;
  *(v4 + 1104) = v182;
  v50 = v191;
  v51 = v193;
  *(v4 + 1464) = v192;
  *(v4 + 1480) = v51;
  v52 = v187;
  v53 = v189;
  *(v4 + 1400) = v188;
  *(v4 + 1416) = v53;
  *(v4 + 1432) = v190;
  *(v4 + 1448) = v50;
  v54 = v183;
  v55 = v185;
  *(v4 + 1336) = v184;
  *(v4 + 1352) = v55;
  *(v4 + 1368) = v186;
  *(v4 + 1384) = v52;
  *(v4 + 1304) = v182;
  *(v4 + 1320) = v54;
  *(v4 + 1648) = v22;
  *(v4 + 1664) = v23;
  *(v4 + 1680) = v193;
  *(v4 + 1584) = v25;
  *(v4 + 1600) = v26;
  *(v4 + 1616) = v28;
  *(v4 + 1632) = v29;
  *(v4 + 1520) = v31;
  *(v4 + 1536) = v32;
  *(v4 + 1552) = v34;
  *(v4 + 1568) = v35;
  v56 = v194;
  *(v4 + 896) = v194;
  *(v4 + 1096) = v56;
  v57 = v194;
  *(v4 + 1296) = v194;
  *(v4 + 1496) = v57;
  *(v4 + 1696) = v194;
  *(v4 + 1504) = v42;
  memcpy((v4 + 1704), v195, 0x2C0uLL);
  memcpy(v196, v195, sizeof(v196));
  sub_219F6409C(v196, &qword_27CCDB1B8);
  memcpy(v4, v181, 0x2C0uLL);
  v58 = *(v4 + 880);
  v197[10] = *(v4 + 864);
  v197[11] = v58;
  v198 = *(v4 + 896);
  v59 = *(v4 + 816);
  v197[6] = *(v4 + 800);
  v197[7] = v59;
  v60 = *(v4 + 832);
  v197[9] = *(v4 + 848);
  v197[8] = v60;
  v61 = *(v4 + 752);
  v197[2] = *(v4 + 736);
  v197[3] = v61;
  v62 = *(v4 + 768);
  v197[5] = *(v4 + 784);
  v197[4] = v62;
  v63 = *(v4 + 704);
  v197[1] = *(v4 + 720);
  v197[0] = v63;
  sub_219F6409C(v197, &qword_27CCD95B8);
  v64 = v193;
  *(v4 + 864) = v192;
  *(v4 + 880) = v64;
  *(v4 + 896) = v194;
  v65 = v189;
  *(v4 + 800) = v188;
  *(v4 + 816) = v65;
  v66 = v191;
  *(v4 + 832) = v190;
  *(v4 + 848) = v66;
  v67 = v185;
  *(v4 + 736) = v184;
  *(v4 + 752) = v67;
  v68 = v187;
  *(v4 + 768) = v186;
  *(v4 + 784) = v68;
  v69 = v183;
  *(v4 + 704) = v182;
  *(v4 + 720) = v69;
  v70 = *(v4 + 1080);
  v199[10] = *(v4 + 1064);
  v199[11] = v70;
  v200 = *(v4 + 1096);
  v71 = *(v4 + 1016);
  v199[6] = *(v4 + 1000);
  v199[7] = v71;
  v72 = *(v4 + 1032);
  v199[9] = *(v4 + 1048);
  v199[8] = v72;
  v73 = *(v4 + 952);
  v199[2] = *(v4 + 936);
  v199[3] = v73;
  v74 = *(v4 + 968);
  v199[5] = *(v4 + 984);
  v199[4] = v74;
  v75 = *(v4 + 904);
  v199[1] = *(v4 + 920);
  v199[0] = v75;
  sub_219F6409C(v199, &qword_27CCD95B8);
  v76 = v193;
  *(v4 + 1064) = v192;
  *(v4 + 1080) = v76;
  *(v4 + 1096) = v194;
  v77 = v189;
  *(v4 + 1000) = v188;
  *(v4 + 1016) = v77;
  v78 = v191;
  *(v4 + 1032) = v190;
  *(v4 + 1048) = v78;
  v79 = v185;
  *(v4 + 936) = v184;
  *(v4 + 952) = v79;
  v80 = v187;
  *(v4 + 968) = v186;
  *(v4 + 984) = v80;
  v81 = v183;
  *(v4 + 904) = v182;
  *(v4 + 920) = v81;
  v82 = *(v4 + 1248);
  v83 = *(v4 + 1280);
  v201[10] = *(v4 + 1264);
  v201[11] = v83;
  v202 = *(v4 + 1296);
  v84 = *(v4 + 1184);
  v85 = *(v4 + 1216);
  v201[6] = *(v4 + 1200);
  v201[7] = v85;
  v86 = *(v4 + 1232);
  v201[9] = v82;
  v201[8] = v86;
  v87 = *(v4 + 1120);
  v88 = *(v4 + 1152);
  v201[2] = *(v4 + 1136);
  v201[3] = v88;
  v89 = *(v4 + 1168);
  v201[5] = v84;
  v201[4] = v89;
  v90 = *(v4 + 1104);
  v201[1] = v87;
  v201[0] = v90;
  sub_219F6409C(v201, &qword_27CCD95B8);
  v91 = v190;
  *(v4 + 1248) = v191;
  v92 = v193;
  *(v4 + 1264) = v192;
  *(v4 + 1280) = v92;
  v93 = v186;
  *(v4 + 1184) = v187;
  v94 = v189;
  *(v4 + 1200) = v188;
  *(v4 + 1216) = v94;
  *(v4 + 1232) = v91;
  v95 = v182;
  *(v4 + 1120) = v183;
  v96 = v185;
  *(v4 + 1136) = v184;
  *(v4 + 1152) = v96;
  *(v4 + 1296) = v194;
  *(v4 + 1168) = v93;
  *(v4 + 1104) = v95;
  v97 = *(v4 + 1480);
  v203[10] = *(v4 + 1464);
  v203[11] = v97;
  v204 = *(v4 + 1496);
  v98 = *(v4 + 1416);
  v203[6] = *(v4 + 1400);
  v203[7] = v98;
  v99 = *(v4 + 1432);
  v203[9] = *(v4 + 1448);
  v203[8] = v99;
  v100 = *(v4 + 1352);
  v203[2] = *(v4 + 1336);
  v203[3] = v100;
  v101 = *(v4 + 1368);
  v203[5] = *(v4 + 1384);
  v203[4] = v101;
  v102 = *(v4 + 1304);
  v203[1] = *(v4 + 1320);
  v203[0] = v102;
  sub_219F6409C(v203, &qword_27CCD95B8);
  v103 = v193;
  *(v4 + 1464) = v192;
  *(v4 + 1480) = v103;
  *(v4 + 1496) = v194;
  v104 = v189;
  *(v4 + 1400) = v188;
  *(v4 + 1416) = v104;
  v105 = v191;
  *(v4 + 1432) = v190;
  *(v4 + 1448) = v105;
  v106 = v185;
  *(v4 + 1336) = v184;
  *(v4 + 1352) = v106;
  v107 = v187;
  *(v4 + 1368) = v186;
  *(v4 + 1384) = v107;
  v108 = v183;
  *(v4 + 1304) = v182;
  *(v4 + 1320) = v108;
  v109 = *(v4 + 1648);
  v110 = *(v4 + 1680);
  v205[10] = *(v4 + 1664);
  v205[11] = v110;
  v206 = *(v4 + 1696);
  v111 = *(v4 + 1584);
  v112 = *(v4 + 1616);
  v205[6] = *(v4 + 1600);
  v205[7] = v112;
  v113 = *(v4 + 1632);
  v205[9] = v109;
  v205[8] = v113;
  v114 = *(v4 + 1520);
  v115 = *(v4 + 1552);
  v205[2] = *(v4 + 1536);
  v205[3] = v115;
  v116 = *(v4 + 1568);
  v205[5] = v111;
  v205[4] = v116;
  v117 = *(v4 + 1504);
  v205[1] = v114;
  v205[0] = v117;
  sub_219F6409C(v205, &qword_27CCD95B8);
  v118 = v190;
  *(v4 + 1648) = v191;
  v119 = v193;
  *(v4 + 1664) = v192;
  *(v4 + 1680) = v119;
  v120 = v186;
  *(v4 + 1584) = v187;
  v121 = v189;
  *(v4 + 1600) = v188;
  *(v4 + 1616) = v121;
  *(v4 + 1632) = v118;
  v122 = v182;
  *(v4 + 1520) = v183;
  v123 = v185;
  *(v4 + 1536) = v184;
  *(v4 + 1552) = v123;
  *(v4 + 1568) = v120;
  *(v4 + 1696) = v194;
  *(v4 + 1504) = v122;
  memcpy(v207, (v4 + 1704), 0x2C0uLL);
  sub_219F6409C(v207, &qword_27CCDB1B8);
  return memcpy((v4 + 1704), v195, 0x2C0uLL);
}

uint64_t sub_21A0003EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - v13;
  v15 = type metadata accessor for NationalElectionUpdate.Hero(0);
  sub_219FF05F8(v1 + *(v15 + 28), v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v17 = *(*(v16 - 8) + 56);
  v17(v6, 1, 1, v16);
  v18 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v19 = *(v18 + 24);
  v17(&v14[v19], 1, 1, v16);
  v14[*(v18 + 20)] = 2;
  sub_219FF0668(v6, &v14[v19], &qword_27CCD98D8);
  v20 = *(*(v18 - 8) + 56);
  v20(v14, 0, 1, v18);
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[3];
  v44 = v1[2];
  v25 = v1[4];
  v24 = v1[5];
  v42 = v21;
  v43 = v25;
  v40 = v23;
  v41 = v24;
  v20(v11, 1, 1, v18);
  v20(a1, 1, 1, v18);
  v26 = type metadata accessor for ActivityFlexibleUpdate(0);
  v27 = a1;
  v28 = (a1 + v26[5]);
  v39 = (a1 + v26[6]);
  v29 = (a1 + v26[7]);
  v30 = (a1 + v26[8]);
  v31 = v26[9];
  v38 = v26[10];
  v32 = (a1 + v31);
  v20((v27 + v38), 1, 1, v18);

  v33 = v40;

  v34 = v41;

  sub_219FF0668(v14, v27, &qword_27CCDB1B0);
  *v28 = v42;
  v28[1] = v22;
  v35 = v39;
  *v39 = 0;
  v35[1] = 0;
  v36 = v43;
  *v29 = v44;
  v29[1] = v33;
  *v30 = v36;
  v30[1] = v34;
  *v32 = 0;
  v32[1] = 0;
  return sub_219FF0668(v45, v27 + v38, &qword_27CCDB1B0);
}

void *sub_21A000704(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  sub_219FFF860(v2, v5);
  nullsub_1(v10, v6);
  updated = type metadata accessor for ActivityFlexibleUpdateView();
  sub_21A0003EC(v4 + *(updated + 24));
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0;
  sub_219FF05B0(__src);
  memcpy((v4 + 48), __src, 0x968uLL);
  v8 = *(updated + 28);
  memcpy(v12, __src, sizeof(v12));
  sub_219F6409C(v12, &qword_27CCDB1A8);
  result = memcpy((v4 + 48), v10, 0x968uLL);
  *(v4 + v8) = 0;
  return result;
}

unint64_t sub_21A0007F8()
{
  result = qword_27CCDB4D8;
  if (!qword_27CCDB4D8)
  {
    type metadata accessor for ActivityFlexibleUpdateView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB4D8);
  }

  return result;
}

uint64_t sub_21A000850@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_21A0E46CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A0E481C();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v19 = v1[2];
  v23 = v11;
  v24 = v12;
  v14 = *MEMORY[0x277CC91C0];
  v18 = *(v3 + 104);
  v18(v6, v14, v2);
  sub_219F3F130();

  sub_21A0E480C();
  v15 = *(v3 + 8);
  v15(v6, v2);

  v23 = v19;
  v24 = v13;
  v18(v6, *MEMORY[0x277CC91D0], v2);
  sub_21A0E480C();
  v15(v6, v2);

  return (*(v20 + 8))(v10, v21);
}

uint64_t ActivityAssetFileKey.init(activityIdentifier:url:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  v6 = sub_21A0E473C();
  v8 = v7;
  v9 = sub_21A0E481C();
  result = (*(*(v9 - 8) + 8))(a2, v9);
  a3[2] = v6;
  a3[3] = v8;
  return result;
}

uint64_t ActivityAssetFileKey.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v16 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v13;
  v16[1] = MEMORY[0x277D84F90];
  v14 = sub_21A0E6E1C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A000CF0()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v16 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v13;
  v16[1] = MEMORY[0x277D84F90];
  v14 = sub_21A0E6E1C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t ActivityAssetFileKey.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x21CED1980](47, 0xE100000000000000);
  MEMORY[0x21CED1980](v1, v2);
  return v4;
}

uint64_t sub_21A000F28()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x21CED1980](47, 0xE100000000000000);
  MEMORY[0x21CED1980](v1, v2);
  return v4;
}

uint64_t ActivityAssetFileKey.hash(into:)()
{
  sub_21A0E626C();

  return sub_21A0E626C();
}

uint64_t ActivityAssetFileKey.hashValue.getter()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A001048()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0010B0()
{
  sub_21A0E626C();

  return sub_21A0E626C();
}

uint64_t sub_21A001100()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore20ActivityAssetFileKeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21A0E6C5C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21A0E6C5C();
    }
  }

  return result;
}

unint64_t sub_21A00120C()
{
  result = qword_27CCDB4E0;
  if (!qword_27CCDB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB4E0);
  }

  return result;
}

uint64_t sub_21A001270()
{
  sub_21A004A50();

  return sub_21A0E555C();
}

uint64_t sub_21A0012B8(uint64_t a1)
{
  v2 = sub_21A0E5CEC();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21A0E540C();
}

uint64_t sub_21A001380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F88);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for ActivityAsset();
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  sub_21A0029D4(v2, v14, type metadata accessor for ActivityAsset);
  *&v9[*(v6 + 40)] = MEMORY[0x277D84F90];
  *(v9 + 4) = *(a1 + 32);
  v18 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v18;
  v19 = &v9[*(v6 + 36)];
  sub_21A0029D4(v14, v19, type metadata accessor for ActivityAsset);
  sub_219F63900(a1, v23);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v20 = qword_27CCDBDB0;

  sub_21A0041B0(v14, type metadata accessor for ActivityAsset);
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F90) + 28)) = v20;
  sub_219F8B4D8(v9);
  sub_21A0029D4(v19, v17, type metadata accessor for ActivityAsset);
  sub_219F6409C(v9, &qword_27CCD9F88);
  v21 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v21;
  v24 = *(a1 + 32);
  ActivityAsset.value(matching:)(v23, a2);
  return sub_21A0041B0(v17, type metadata accessor for ActivityAsset);
}

uint64_t sub_21A0015D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A0E481C();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v99 = &v97 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v100 = &v97 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v97 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v97 - v29;
  v31 = *(v2 + 72);
  v108 = *(v2 + 56);
  v109 = v31;
  v110 = *(v2 + 88);
  sub_21A0029D4(a1, v11, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v13 + 32))(v30, v11, v12);
    v32 = *(v2 + 8);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (qword_27CCD90D0 != -1)
    {
      swift_once();
    }

    v45 = sub_21A0E516C();
    __swift_project_value_buffer(v45, qword_27CCD97D8);
    (*(v13 + 16))(v17, v30, v12);
    v46 = sub_21A0E514C();
    v47 = sub_21A0E669C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103 = v30;
      v50 = v49;
      *&v105 = v49;
      *v48 = 136315138;
      sub_21A004168(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v51 = sub_21A0E6BFC();
      v52 = v12;
      v54 = v53;
      v55 = *(v13 + 8);
      v55(v17, v52);
      v56 = sub_219F50144(v51, v54, &v105);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_219F39000, v46, v47, "Failed to create image due to missing activityID for asset: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x21CED2D30](v50, -1, -1);
      MEMORY[0x21CED2D30](v48, -1, -1);

      v55(v103, v52);
    }

    else
    {

      v79 = *(v13 + 8);
      v79(v17, v12);
      v79(v30, v12);
    }

    return 0;
  }

  sub_21A004B9C(v11, v7, type metadata accessor for URLAssetConfiguration.Recipe);
  v105 = v108;
  v106 = v109;
  v107 = v110;
  URLAssetConfiguration.Recipe.value(matching:)(&v105, v30);
  sub_21A0041B0(v7, type metadata accessor for URLAssetConfiguration.Recipe);
  v32 = *(v2 + 8);
  if (!v32)
  {
    goto LABEL_5;
  }

LABEL_3:
  v101 = *v2;
  v33 = *(v2 + 40);
  v34 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), v33);
  v35 = *(v13 + 16);
  v103 = v30;
  v98 = v35;
  v35(v27, v30, v12);

  v36 = sub_21A0E473C();
  v38 = v37;
  v39 = v27;
  v40 = v12;
  v41 = v12;
  v42 = *(v13 + 8);
  v102 = v13 + 8;
  v42(v39, v41);
  v104[0] = v101;
  v104[1] = v32;
  v104[2] = v36;
  v104[3] = v38;
  (*(v34 + 24))(&v105, v104, v33, v34);

  v43 = *(&v106 + 1);
  v44 = v107;
  __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
  v57 = (*(v44 + 24))(v43, v44);
  v59 = v58;
  v60 = v98;
  v61 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_219F48FB4(v57, v59);
  v62 = sub_21A0E485C();
  v63 = [v61 initWithData:v62 scale:3.0];

  sub_219F49008(v57, v59);
  v97 = v42;
  if (!v63)
  {
    v81 = v40;
    v82 = v103;
    if (qword_280C88468 != -1)
    {
      swift_once();
    }

    v83 = sub_21A0E516C();
    __swift_project_value_buffer(v83, qword_280C88470);
    v84 = v99;
    v60(v99, v82, v81);
    v85 = sub_21A0E514C();
    v86 = sub_21A0E669C();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v104[0] = v101;
      *v87 = 136315138;
      sub_21A004168(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v88 = sub_21A0E6BFC();
      v89 = v84;
      v91 = v90;
      v92 = v97;
      v97(v89, v81);
      v93 = sub_219F50144(v88, v91, v104);

      *(v87 + 4) = v93;
      _os_log_impl(&dword_219F39000, v85, v86, "Failed to create UIImage with contents of asset: %s", v87, 0xCu);
      v94 = v101;
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x21CED2D30](v94, -1, -1);
      MEMORY[0x21CED2D30](v87, -1, -1);

      sub_219F49008(v57, v59);
      v92(v103, v81);
    }

    else
    {

      sub_219F49008(v57, v59);
      v96 = v97;
      v97(v84, v81);
      v96(v82, v81);
    }

    __swift_destroy_boxed_opaque_existential_1(&v105);
    return 0;
  }

  v101 = v63;
  v64 = v40;
  v65 = v103;
  if (qword_280C88468 != -1)
  {
    swift_once();
  }

  v66 = sub_21A0E516C();
  __swift_project_value_buffer(v66, qword_280C88470);
  v67 = v100;
  v60(v100, v65, v64);
  v68 = sub_21A0E514C();
  v69 = sub_21A0E66BC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v99 = v64;
    v71 = v70;
    v72 = swift_slowAlloc();
    v104[0] = v72;
    *v71 = 136315138;
    sub_21A004168(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v73 = sub_21A0E6BFC();
    v75 = v74;
    v76 = v97;
    v97(v67, v99);
    v77 = sub_219F50144(v73, v75, v104);

    *(v71 + 4) = v77;
    _os_log_impl(&dword_219F39000, v68, v69, "Read Image with contents of asset: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x21CED2D30](v72, -1, -1);
    v78 = v71;
    v64 = v99;
    MEMORY[0x21CED2D30](v78, -1, -1);
  }

  else
  {

    v76 = v97;
    v97(v67, v64);
  }

  v95 = sub_21A0E5CAC();
  sub_219F49008(v57, v59);
  v76(v103, v64);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  return v95;
}

uint64_t ActivityAssetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = type metadata accessor for ActivityDownloadedImageView(0);
  MEMORY[0x28223BE20](v2, v3);
  v88 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4E8);
  MEMORY[0x28223BE20](v92, v8);
  v95 = &v83 - v9;
  v94 = type metadata accessor for ActivitySymbolView();
  MEMORY[0x28223BE20](v94, v10);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A0E554C();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ActivityAsset();
  v18 = MEMORY[0x28223BE20](v89, v17);
  v90 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v93 = &v83 - v21;
  v23 = *v1;
  v22 = *(v1 + 8);
  v25 = *(v1 + 16);
  v24 = *(v1 + 24);
  v26 = *(v1 + 32);
  v91 = v1;
  if (*(v1 + 40) == 1)
  {
    *&v109 = v23;
    *(&v109 + 1) = v22;
    *&v110 = v25;
    *(&v110 + 1) = v24;
    *&v111 = v26;
    *&v120 = v23;
    *(&v120 + 1) = v22;
    *&v121 = v25;
    *(&v121 + 1) = v24;
    *&v122 = v26;
    BYTE8(v122) = 1;
    sub_219F63900(&v120, &v98);
  }

  else
  {

    sub_21A0E66AC();
    v84 = v2;
    v27 = v12;
    v28 = sub_21A0E575C();
    v2 = v84;
    sub_21A0E512C();

    v12 = v27;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v23, v22, v25, v24, v26, 0);
    (*(v85 + 8))(v16, v86);
  }

  v29 = type metadata accessor for ActivityAssetView(0);
  v132 = v111;
  v131[0] = v109;
  v131[1] = v110;
  v30 = v91;
  v31 = v93;
  sub_21A001380(v131, v93);
  sub_219F5ED9C(v131);
  v32 = v90;
  sub_21A0029D4(v31, v90, type metadata accessor for ActivityAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v87;
    sub_21A004B9C(v32, v87, type metadata accessor for URLAssetConfiguration);
    v33 = v88;
    sub_21A0029D4(v12, &v88[v2[6]], type metadata accessor for URLAssetConfiguration);
    v34 = (v30 + v29[6]);
    v35 = v34[5];
    v102 = v34[4];
    v103 = v35;
    v36 = v34[3];
    v100 = v34[2];
    v101 = v36;
    v37 = v34[10];
    v107 = v34[9];
    v108 = v37;
    v38 = v34[8];
    v105 = v34[7];
    v106 = v38;
    v104 = v34[6];
    v39 = v34[1];
    v98 = *v34;
    v99 = v39;
    v40 = *(v30 + v29[8]);
    *v33 = swift_getKeyPath();
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0;
    *(v33 + 48) = swift_getKeyPath();
    *(v33 + 144) = 0;
    v41 = (v33 + v2[7]);
    sub_219F9DDE0(&v109);
    v42 = v118;
    v43 = v117;
    v44 = v118;
    v41[8] = v117;
    v41[9] = v42;
    v45 = v119;
    v41[10] = v119;
    v46 = v114;
    v47 = v113;
    v48 = v114;
    v41[4] = v113;
    v41[5] = v46;
    v49 = v116;
    v51 = v115;
    v50 = v116;
    v41[6] = v115;
    v41[7] = v49;
    v52 = v110;
    v53 = v109;
    v54 = v110;
    *v41 = v109;
    v41[1] = v52;
    v55 = v112;
    v57 = v111;
    v56 = v112;
    v41[2] = v111;
    v41[3] = v55;
    v128 = v43;
    v129 = v44;
    v130 = v45;
    v124 = v47;
    v125 = v48;
    v126 = v51;
    v127 = v50;
    v120 = v53;
    v121 = v54;
    v122 = v57;
    v123 = v56;
    sub_219F45500(&v98, &v97, &qword_27CCDA4A8);
    sub_219F6409C(&v120, &qword_27CCDA4A8);
    v58 = v107;
    v41[8] = v106;
    v41[9] = v58;
    v41[10] = v108;
    v59 = v103;
    v41[4] = v102;
    v41[5] = v59;
    v60 = v105;
    v41[6] = v104;
    v41[7] = v60;
    v61 = v99;
    *v41 = v98;
    v41[1] = v61;
    v62 = v101;
    v41[2] = v100;
    v41[3] = v62;
    *(v33 + v2[8]) = v40;
    sub_21A0029D4(v33, v95, type metadata accessor for ActivityDownloadedImageView);
    swift_storeEnumTagMultiPayload();
    sub_21A004168(&qword_27CCDB4F0, type metadata accessor for ActivitySymbolView);
    sub_21A004168(&qword_27CCDB4F8, type metadata accessor for ActivityDownloadedImageView);
    sub_21A0E56BC();
    sub_21A0041B0(v33, type metadata accessor for ActivityDownloadedImageView);
    v63 = type metadata accessor for URLAssetConfiguration;
  }

  else
  {
    v64 = (v30 + v29[7]);
    v65 = v64[7];
    v66 = v64[9];
    v128 = v64[8];
    v67 = v128;
    v129 = v66;
    v68 = v64[9];
    v130 = v64[10];
    v69 = v64[3];
    v70 = v64[5];
    v124 = v64[4];
    v71 = v124;
    v125 = v70;
    v72 = v64[5];
    v73 = v64[7];
    v126 = v64[6];
    v74 = v126;
    v127 = v73;
    v75 = v64[1];
    v120 = *v64;
    v121 = v75;
    v76 = v64[3];
    v78 = *v64;
    v77 = v64[1];
    v122 = v64[2];
    v79 = v122;
    v123 = v76;
    *v12 = *v32;
    *(v12 + 136) = v65;
    *(v12 + 152) = v67;
    *(v12 + 168) = v68;
    *(v12 + 184) = v64[10];
    *(v12 + 72) = v69;
    *(v12 + 88) = v71;
    *(v12 + 104) = v72;
    *(v12 + 120) = v74;
    *(v12 + 24) = v78;
    *(v12 + 40) = v77;
    v80 = *(v32 + 17);
    v12[16] = *(v32 + 16);
    *(v12 + 17) = v80;
    *(v12 + 56) = v79;
    v81 = *(v94 + 24);
    *&v12[v81] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38);
    swift_storeEnumTagMultiPayload();
    sub_21A0029D4(v12, v95, type metadata accessor for ActivitySymbolView);
    swift_storeEnumTagMultiPayload();
    sub_219F45500(&v120, &v109, &qword_27CCD9B40);
    sub_21A004168(&qword_27CCDB4F0, type metadata accessor for ActivitySymbolView);
    sub_21A004168(&qword_27CCDB4F8, type metadata accessor for ActivityDownloadedImageView);
    sub_21A0E56BC();
    v63 = type metadata accessor for ActivitySymbolView;
  }

  sub_21A0041B0(v12, v63);
  return sub_21A0041B0(v31, type metadata accessor for ActivityAsset);
}

uint64_t sub_21A0029D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A002A3C@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219F45500(v1 + 48, v14, &qword_27CCDB5C0);
  if (v15 == 1)
  {
    v9 = v14[3];
    a1[2] = v14[2];
    a1[3] = v9;
    v10 = v14[5];
    a1[4] = v14[4];
    a1[5] = v10;
    v11 = v14[1];
    *a1 = v14[0];
    a1[1] = v11;
  }

  else
  {
    sub_21A0E66AC();
    v12 = sub_21A0E575C();
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

__n128 ActivityDownloadedImageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21A0E554C();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A0E5CCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A002A3C(v100);
  v13 = type metadata accessor for ActivityDownloadedImageView(0);
  v14 = sub_21A0015D0(v1 + v13[6]);
  sub_21A004210(v100);
  if (*(v1 + v13[8]) == 1 && v14 != 0)
  {
    (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);

    v16 = sub_21A0E5CFC();

    (*(v9 + 8))(v12, v8);
    v14 = v16;
  }

  v17 = (v2 + v13[7]);
  v18 = v17[9];
  *&v101[48] = v17[8];
  *&v101[64] = v18;
  *&v101[80] = v17[10];
  v19 = v17[5];
  v100[4] = v17[4];
  *v101 = v19;
  v20 = v17[7];
  *&v101[16] = v17[6];
  *&v101[32] = v20;
  v21 = v17[1];
  v100[0] = *v17;
  v100[1] = v21;
  v22 = v17[3];
  v100[2] = v17[2];
  v100[3] = v22;
  if (sub_219F5EBE4(v100) == 1)
  {
    v29 = 0;
LABEL_11:
    v38 = 0x8000000000;
    v39 = 5;
    goto LABEL_16;
  }

  v65[0] = *&v101[56];
  v65[1] = *&v101[72];
  v66 = *&v101[88];
  v62 = *&v101[8];
  v63 = *&v101[24];
  v64 = *&v101[40];
  v29 = *&v101[80];
  if (!*&v101[80])
  {
    goto LABEL_11;
  }

  v59 = v14;
  v31 = *v2;
  v30 = *(v2 + 8);
  v33 = *(v2 + 16);
  v32 = *(v2 + 24);
  v34 = *(v2 + 32);
  v35 = *(v2 + 40);
  v58 = v32;
  if (v35 == 1)
  {
    *&v75 = v31;
    *(&v75 + 1) = v30;
    *&v76 = v33;
    *(&v76 + 1) = v32;
    *&v77 = v34;
    v36 = v30;
    v37 = v34;
    sub_219F45500(&v101[8], &v89, &qword_27CCD9F78);
    sub_219F7F800(v31, v36, v33, v58, v37, 1);
  }

  else
  {
    v40 = v33;
    v56 = v7;
    v57 = v33;
    v41 = v30;
    v42 = v34;
    sub_219F45500(&v101[8], &v89, &qword_27CCD9F78);
    sub_219F7F800(v31, v41, v40, v32, v42, 0);
    sub_21A0E66AC();
    v43 = sub_21A0E575C();
    sub_21A0E512C();

    v44 = v56;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v31, v41, v57, v58, v42, 0);
    (*(v60 + 8))(v44, v61);
  }

  v83 = v75;
  v84 = v76;
  v105 = v66;
  v104[12] = v64;
  v104[13] = v65[0];
  v104[14] = v65[1];
  v104[10] = v62;
  v104[11] = v63;
  *&v85[0] = v77;
  *(&v86 + 1) = MEMORY[0x277D84F90];
  sub_219F72F28(&v62, &v89);
  v14 = v59;
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  *(&v85[2] + 8) = v64;
  *(&v85[3] + 8) = v65[0];
  *(&v85[4] + 5) = *(v65 + 13);
  *(v85 + 8) = v62;
  *(&v85[1] + 8) = v63;
  *&v86 = qword_27CCDBDB0;

  sub_219F8AC18(&v83);
  sub_219F6409C(&v101[8], &qword_27CCD9F78);
  v69 = *(&v85[2] + 8);
  v70[0] = *(&v85[3] + 8);
  *(v70 + 13) = *(&v85[4] + 5);
  v67 = *(v85 + 8);
  v68 = *(&v85[1] + 8);
  v93 = v85[2];
  v94 = v85[3];
  v95 = v85[4];
  v96 = v86;
  v89 = v83;
  v90 = v84;
  v91 = v85[0];
  v92 = v85[1];
  sub_219F72F28(&v67, v79);
  sub_219F6409C(&v89, &qword_27CCD9F80);
  v23 = *(&v67 + 1);
  v39 = v67;
  v25 = *(&v68 + 1);
  v24 = v68;
  v27 = *(&v69 + 1);
  v26 = v69;
  v28 = *(&v70[0] + 1);
  v29 = *&v70[0];
  v38 = LODWORD(v70[1]) | (BYTE4(v70[1]) << 32);
LABEL_16:
  *&v75 = v39;
  *(&v75 + 1) = v23;
  *&v76 = v24;
  *(&v76 + 1) = v25;
  *&v77 = v26;
  *(&v77 + 1) = v27;
  *v78 = v29;
  *&v78[8] = v28;
  v78[20] = BYTE4(v38);
  *&v78[16] = v38;
  *&v78[21] = 256;
  v103 = 0;
  *&v102[67] = *&v78[15];
  *&v102[36] = v77;
  *&v102[52] = *v78;
  *&v102[4] = v75;
  *&v102[20] = v76;
  v79[0] = v39;
  v79[1] = v23;
  v79[2] = v24;
  v79[3] = v25;
  v79[4] = v26;
  v79[5] = v27;
  v79[6] = v29;
  v79[7] = v28;
  v81 = BYTE4(v38);
  v80 = v38;
  v82 = 256;
  sub_219F45500(&v75, &v89, &qword_27CCDB500);
  sub_219F6409C(v79, &qword_27CCDB500);
  v45 = v103;
  v46 = sub_21A0E5E3C();
  v48 = v47;
  sub_21A0032CC(v2, &v67);
  v85[4] = v72;
  v86 = v73;
  v85[0] = v69;
  v85[1] = v70[0];
  *(&v104[6] + 1) = v72;
  *(&v104[7] + 1) = v73;
  v85[2] = v70[1];
  v85[3] = v71;
  *(&v104[2] + 1) = v69;
  *(&v104[3] + 1) = v70[0];
  *(&v104[4] + 1) = v70[1];
  *(&v104[5] + 1) = v71;
  v83 = v67;
  v84 = v68;
  *(v104 + 1) = v67;
  *&v87 = v74;
  *(&v87 + 1) = v46;
  *(&v104[1] + 1) = v68;
  *(&v104[8] + 1) = v87;
  v88 = v48;
  *(&v104[9] + 1) = v48;
  v91 = v69;
  v92 = v70[0];
  v89 = v67;
  v90 = v68;
  v95 = v72;
  v96 = v73;
  v93 = v70[1];
  v94 = v71;
  v97 = v74;
  v98 = v46;
  v99 = v48;
  sub_219F5763C(&v83, &v62);
  sub_219F576AC(&v89);
  *a1 = v14;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = v45;
  *(a1 + 17) = 0;
  *(a1 + 19) = 1;
  *(a1 + 36) = *&v102[16];
  *(a1 + 52) = *&v102[32];
  *(a1 + 68) = *&v102[48];
  *(a1 + 79) = *&v102[59];
  *(a1 + 20) = *v102;
  v49 = v104[1];
  *(a1 + 95) = v104[0];
  *(a1 + 111) = v49;
  v50 = v104[2];
  v51 = v104[3];
  v52 = v104[4];
  *(a1 + 175) = v104[5];
  *(a1 + 159) = v52;
  *(a1 + 143) = v51;
  *(a1 + 127) = v50;
  result = v104[6];
  v54 = v104[7];
  v55 = v104[8];
  *(a1 + 232) = *(&v104[8] + 9);
  *(a1 + 223) = v55;
  *(a1 + 207) = v54;
  *(a1 + 191) = result;
  return result;
}

double sub_21A0032CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E554C();
  *&v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for ActivityDownloadedImageView(0) + 28));
  v9 = v8[9];
  v84 = v8[8];
  v85 = v9;
  v86 = v8[10];
  v10 = v8[5];
  v80 = v8[4];
  v81 = v10;
  v11 = v8[7];
  v82 = v8[6];
  v83 = v11;
  v12 = v8[3];
  v78 = v8[2];
  v79 = v12;
  v13 = v8[1];
  v76 = *v8;
  v77 = v13;
  if (sub_219F5EBE4(&v76) == 1 || (v68[0] = v79, v68[1] = v80, v66 = v77, v67 = v78, v69 = v81, *(&v14 + 1) = *(&v76 + 1), v65 = v76, !*(&v80 + 1)))
  {
    *&v14 = 5;
    v43 = v14;
    v44 = 0u;
    v25 = 0x8000000000;
  }

  else
  {
    v16 = *a1;
    v15 = *(a1 + 8);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = MEMORY[0x277D84F90];
    if (v20 == 1)
    {
      *&v62 = v16;
      *(&v62 + 1) = v15;
      *&v63 = v18;
      *(&v63 + 1) = v17;
      v64 = v19;
      v22 = v18;
      v23 = v17;
      v24 = v15;
      sub_219F45500(&v76, &v54, &qword_27CCD9F78);
      sub_219F7F800(v16, v24, v22, v23, v19, 1);
    }

    else
    {
      *&v41 = v18;
      v26 = v17;
      *&v42 = v17;
      *&v43 = v4;
      v27 = v15;
      sub_219F45500(&v76, &v54, &qword_27CCD9F78);
      sub_219F7F800(v16, v27, v18, v26, v19, 0);
      sub_21A0E66AC();
      v28 = sub_21A0E575C();
      v40 = v19;
      v29 = v44;
      v30 = v28;
      v21 = MEMORY[0x277D84F90];
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v16, v27, v41, v42, v40, 0);
      (*(v29 + 8))(v7, v43);
    }

    v46 = v62;
    v47 = v63;
    v75 = v69;
    v72 = v67;
    v73 = v68[0];
    v74 = v68[1];
    v70 = v65;
    v71 = v66;
    *&v48[0] = v64;
    *(&v49 + 1) = v21;
    sub_219F72F28(&v65, &v54);
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    *(&v48[1] + 8) = v66;
    *(&v48[2] + 8) = v67;
    *(&v48[3] + 8) = v68[0];
    *(&v48[4] + 5) = *(v68 + 13);
    *(v48 + 8) = v65;
    *&v49 = qword_27CCDBDB0;

    sub_219F8AC18(&v46);
    sub_219F6409C(&v76, &qword_27CCD9F78);
    v52 = *(&v48[2] + 8);
    v53[0] = *(&v48[3] + 8);
    *(v53 + 13) = *(&v48[4] + 5);
    v50 = *(v48 + 8);
    v51 = *(&v48[1] + 8);
    v58 = v48[2];
    v59 = v48[3];
    v60 = v48[4];
    v61 = v49;
    v54 = v46;
    v55 = v47;
    v56 = v48[0];
    v57 = v48[1];
    sub_219F72F28(&v50, &v45);
    sub_219F6409C(&v54, &qword_27CCD9F80);
    v42 = v51;
    v43 = v50;
    v44 = v53[0];
    v41 = v52;
    v25 = LODWORD(v53[1]) | (BYTE4(v53[1]) << 32);
  }

  sub_21A0E526C();
  *&v31 = v54;
  v32 = v55;
  v33 = v56;
  v34 = sub_21A0E5E3C();
  *a2 = v31 * 0.5;
  *(a2 + 8) = __PAIR128__(*(&v54 + 1), *&v31);
  *(a2 + 24) = v32;
  *(a2 + 40) = v33;
  v35 = v42;
  *(a2 + 48) = v43;
  *(a2 + 64) = v35;
  v36 = v44;
  result = *&v41;
  *(a2 + 80) = v41;
  *(a2 + 96) = v36;
  *(a2 + 116) = BYTE4(v25);
  *(a2 + 112) = v25;
  *(a2 + 117) = 256;
  *(a2 + 120) = v34;
  *(a2 + 128) = v38;
  return result;
}

double sub_21A003774@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A004A50();
  sub_21A0E555C();
  v8 = v12[1];
  v9 = v12[2];
  sub_21A004AA4();
  sub_21A0E555C();
  (*(v4 + 16))(v7, v1, v3);
  sub_21A0B0F0C(v7, v13);
  *a1 = v8;
  *(a1 + 8) = v9;
  result = *v13;
  v11 = v13[1];
  *(a1 + 56) = v13[0];
  *(a1 + 72) = v11;
  *(a1 + 88) = v14;
  return result;
}

uint64_t sub_21A0038B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21A004B18();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21A003918()
{
  v0 = sub_21A0E46CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280C8A0D8 != -1)
  {
    swift_once();
  }

  qword_27CCFE6F0 = type metadata accessor for AppGroupActivityFileSystem(0);
  unk_27CCFE6F8 = &protocol witness table for AppGroupActivityFileSystem;
  __swift_allocate_boxed_opaque_existential_1(qword_27CCFE6D8);

  sub_21A0E4D9C();
  strcpy(v11, "LiveActivities");
  v11[15] = -18;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91C0], v0);
  sub_219F3F130();
  sub_21A0E480C();

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21A003B68@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27CCD9180 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_219F3FDF4(qword_27CCFE6D8, v2);
}

double sub_21A003BDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E554C();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  sub_21A0B0F0C(v7, v12);
  result = *v12;
  v10 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_21A003CC0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21A0E554C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219F45500(v2, v15, &qword_27CCDB5C0);
  if (v16 == 1)
  {
    v10 = v15[3];
    a1[2] = v15[2];
    a1[3] = v10;
    v11 = v15[5];
    a1[4] = v15[4];
    a1[5] = v11;
    v12 = v15[1];
    *a1 = v15[0];
    a1[1] = v12;
  }

  else
  {
    sub_21A0E66AC();
    v13 = sub_21A0E575C();
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_21A003E48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21A0E554C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  sub_219F45500(v2, &v15 - v11, &qword_27CCDAAF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21A004B9C(v12, a1, type metadata accessor for ActivityColorEnvironment);
  }

  sub_21A0E66AC();
  v14 = sub_21A0E575C();
  sub_21A0E512C();

  sub_21A0E553C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

double sub_21A00402C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E554C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A004A50();
  sub_21A0E555C();
  v9 = v13[1];
  v10 = v13[2];
  sub_21A004AA4();
  sub_21A0E555C();
  (*(v5 + 16))(v8, a1, v4);
  sub_21A0B0F0C(v8, v14);
  *a2 = v9;
  *(a2 + 8) = v10;
  result = *v14;
  v12 = v14[1];
  *(a2 + 56) = v14[0];
  *(a2 + 72) = v12;
  *(a2 + 88) = v15;
  return result;
}

uint64_t sub_21A004168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A0041B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A0042A0()
{
  sub_21A004518(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_219F43FBC();
    if (v1 <= 0x3F)
    {
      sub_21A004518(319, qword_280C88980, &type metadata for ActivityPhotoTheme, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21A004518(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A0043F0()
{
  sub_21A004518(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21A004518(319, &qword_27CCDB530, &type metadata for ActivityPhotoEnvironment, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URLAssetConfiguration(319);
      if (v2 <= 0x3F)
      {
        sub_21A004518(319, qword_280C88980, &type metadata for ActivityPhotoTheme, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A004518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21A004568()
{
  result = qword_27CCDB538;
  if (!qword_27CCDB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB540);
    sub_21A004168(&qword_27CCDB4F0, type metadata accessor for ActivitySymbolView);
    sub_21A004168(&qword_27CCDB4F8, type metadata accessor for ActivityDownloadedImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB538);
  }

  return result;
}

unint64_t sub_21A004654()
{
  result = qword_27CCDB548;
  if (!qword_27CCDB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB550);
    sub_21A00470C();
    sub_219F3E490(&qword_27CCDB5B0, &qword_27CCDB508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB548);
  }

  return result;
}

unint64_t sub_21A00470C()
{
  result = qword_27CCDB558;
  if (!qword_27CCDB558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB560);
    sub_21A0047C4();
    sub_219F3E490(&qword_27CCDB5A8, &qword_27CCDB500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB558);
  }

  return result;
}

unint64_t sub_21A0047C4()
{
  result = qword_27CCDB568;
  if (!qword_27CCDB568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB570);
    sub_21A00487C();
    sub_219F3E490(&qword_27CCDB598, &qword_27CCDB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB568);
  }

  return result;
}

unint64_t sub_21A00487C()
{
  result = qword_27CCDB578;
  if (!qword_27CCDB578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB580);
    sub_21A004908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB578);
  }

  return result;
}

unint64_t sub_21A004908()
{
  result = qword_27CCDB588;
  if (!qword_27CCDB588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB588);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21A0049A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21A0049E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A004A50()
{
  result = qword_27CCDB5C8;
  if (!qword_27CCDB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB5C8);
  }

  return result;
}

unint64_t sub_21A004AA4()
{
  result = qword_27CCDB5D0;
  if (!qword_27CCDB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB5D0);
  }

  return result;
}

unint64_t sub_21A004B18()
{
  result = qword_27CCDB5D8;
  if (!qword_27CCDB5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB5E0);
    sub_219F41390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB5D8);
  }

  return result;
}

uint64_t sub_21A004B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 ActivityColor.UserInterface.init(light:dark:contrastLight:contrastDark:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  v8 = a4[1].n128_u8[0];
  v6 = *a2;
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v5;
  result = *a4;
  *(a5 + 52) = *a4;
  *(a5 + 68) = v8;
  return result;
}

__n128 ActivityColor.UserInterface.light.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 ActivityColor.UserInterface.light.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 ActivityColor.UserInterface.dark.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 ActivityColor.UserInterface.dark.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

__n128 ActivityColor.UserInterface.contrastLight.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ActivityColor.UserInterface.contrastLight.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u8[0] = v2;
  return result;
}

__n128 ActivityColor.UserInterface.contrastDark.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 68);
  result = *(v1 + 52);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ActivityColor.UserInterface.contrastDark.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 52) = *a1;
  *(v1 + 68) = v2;
  return result;
}

uint64_t sub_21A004D44()
{
  v1 = 0x746867696CLL;
  if (*v0)
  {
    v1 = 1802658148;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x74736172746E6F63;
  }
}

uint64_t sub_21A004DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A0060C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A004DF0(uint64_t a1)
{
  v2 = sub_21A005864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A004E2C(uint64_t a1)
{
  v2 = sub_21A005864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityColor.UserInterface.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = v0[3];
  v17 = v0[2];
  v18[0] = v10;
  *(v18 + 13) = *(v0 + 61);
  v11 = v0[1];
  v15 = *v0;
  v16 = v11;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A005030()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = v0[3];
  v17 = v0[2];
  v18[0] = v10;
  *(v18 + 13) = *(v0 + 61);
  v11 = v0[1];
  v15 = *v0;
  v16 = v11;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t ActivityColor.UserInterface.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v10 = *(v0 + 4);
  v9 = *(v0 + 5);
  v11 = *(v0 + 13);
  v12 = *(v0 + 15);
  v13 = *(v0 + 68);
  v14 = &unk_21A0E9000;
  v15 = MEMORY[0x277D83A90];
  v16 = MEMORY[0x277D83B08];
  if ((v0[12] & 1) == 0)
  {
    sub_21A0E686C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9928);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21A0E9CE0;
    *(v17 + 56) = v15;
    *(v17 + 64) = v16;
    *(v17 + 32) = v10;
    *(v17 + 96) = v15;
    *(v17 + 104) = v16;
    *(v17 + 72) = HIDWORD(v10);
    v14 = &unk_21A0E9000;
    *(v17 + 136) = v15;
    *(v17 + 144) = v16;
    *(v17 + 112) = v9;
    *(v17 + 176) = v15;
    *(v17 + 184) = v16;
    *(v17 + 152) = HIDWORD(v9);
    v18 = sub_21A0E621C();
    MEMORY[0x21CED1980](v18);

    MEMORY[0x21CED1980](0xD000000000000011, 0x800000021A10A6E0);
  }

  if (!v13)
  {
    sub_21A0E686C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9928);
    v19 = swift_allocObject();
    *(v19 + 16) = v14[206];
    *(v19 + 56) = v15;
    *(v19 + 64) = v16;
    *(v19 + 32) = v11;
    *(v19 + 96) = v15;
    *(v19 + 104) = v16;
    *(v19 + 72) = HIDWORD(v11);
    *(v19 + 136) = v15;
    *(v19 + 144) = v16;
    *(v19 + 112) = v12;
    *(v19 + 176) = v15;
    *(v19 + 184) = v16;
    *(v19 + 152) = HIDWORD(v12);
    v20 = sub_21A0E621C();
    MEMORY[0x21CED1980](v20);

    MEMORY[0x21CED1980](0xD000000000000010, 0x800000021A10A6C0);
  }

  sub_21A0E686C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9928);
  v21 = swift_allocObject();
  v26 = v14[206];
  *(v21 + 16) = v26;
  *(v21 + 56) = v15;
  *(v21 + 64) = v16;
  *(v21 + 32) = v2;
  *(v21 + 96) = v15;
  *(v21 + 104) = v16;
  *(v21 + 72) = v1;
  *(v21 + 136) = v15;
  *(v21 + 144) = v16;
  *(v21 + 112) = v4;
  *(v21 + 176) = v15;
  *(v21 + 184) = v16;
  *(v21 + 152) = v3;
  v22 = sub_21A0E621C();
  MEMORY[0x21CED1980](v22);

  MEMORY[0x21CED1980](0x203A6B726164202CLL, 0xE800000000000000);
  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  *(v23 + 56) = v15;
  *(v23 + 64) = v16;
  *(v23 + 32) = v6;
  *(v23 + 96) = v15;
  *(v23 + 104) = v16;
  *(v23 + 72) = v5;
  *(v23 + 136) = v15;
  *(v23 + 144) = v16;
  *(v23 + 112) = v8;
  *(v23 + 176) = v15;
  *(v23 + 184) = v16;
  *(v23 + 152) = v7;
  v24 = sub_21A0E621C();
  MEMORY[0x21CED1980](v24);

  MEMORY[0x21CED1980](0, 0xE000000000000000);

  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return 0x746867696C284955;
}

uint64_t ActivityColor.UserInterface.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB5E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  v23 = 1;
  v22 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A005864();
  sub_21A0E6E7C();
  if (!v2)
  {
    v24 = 0;
    sub_21A0058B8();
    sub_21A0E6ADC();
    v19 = v20;
    v24 = 1;
    sub_21A0E6ADC();
    v18 = v20;
    v24 = 2;
    sub_21A0E6A8C();
    v17 = *(&v20 + 1);
    v11 = v20;
    v23 = v21;
    v24 = 3;
    sub_21A0E6A8C();
    (*(v6 + 8))(v9, v5);
    v12 = v21;
    v22 = v21;
    v13 = v23;
    v14 = v18;
    *a2 = v19;
    *(a2 + 16) = v14;
    v15 = v17;
    *(a2 + 32) = v11;
    *(a2 + 40) = v15;
    *(a2 + 48) = v13;
    *(a2 + 52) = v20;
    *(a2 + 68) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21A005864()
{
  result = qword_27CCDB5F0;
  if (!qword_27CCDB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB5F0);
  }

  return result;
}

unint64_t sub_21A0058B8()
{
  result = qword_27CCDB5F8;
  if (!qword_27CCDB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB5F8);
  }

  return result;
}

uint64_t ActivityColor.UserInterface.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB600);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v24 = v3[5];
  v25 = v12;
  v29 = *(v3 + 48);
  v13 = *(v3 + 52);
  v22 = *(v3 + 60);
  v23 = v13;
  v14 = *(v3 + 68);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A005864();
  sub_21A0E6EAC();
  v15 = v3[1];
  v26 = *v3;
  v27 = v15;
  v30 = 0;
  sub_21A005B84();
  sub_21A0E6BBC();
  if (!v2)
  {
    v16 = v29;
    v17 = v24;
    v18 = v25;
    HIDWORD(v21) = v14;
    v19 = v23;
    v26 = v10;
    v27 = v11;
    v30 = 1;
    sub_21A0E6BBC();
    v26 = v18;
    v27 = v17;
    v28 = v16;
    v30 = 2;
    sub_21A0E6B6C();
    v26 = v19;
    v27 = v22;
    v28 = BYTE4(v21);
    v30 = 3;
    sub_21A0E6B6C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_21A005B84()
{
  result = qword_27CCDB608;
  if (!qword_27CCDB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB608);
  }

  return result;
}

uint64_t ActivityColor.UserInterface.hash(into:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 68);
  RGBA.hash(into:)();
  RGBA.hash(into:)();
  if (v1 == 1)
  {
    sub_21A0E6DCC();
    if (!v2)
    {
LABEL_3:
      sub_21A0E6DCC();
      return RGBA.hash(into:)();
    }
  }

  else
  {
    sub_21A0E6DCC();
    RGBA.hash(into:)();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_21A0E6DCC();
}

uint64_t ActivityColor.UserInterface.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityColor.UserInterface.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A005D38()
{
  sub_21A0E6DAC();
  ActivityColor.UserInterface.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A005D7C()
{
  sub_21A0E6DAC();
  ActivityColor.UserInterface.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(uint64_t a1, float32x4_t *a2)
{
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*a1, *a2), vceqq_f32(*(a1 + 16), a2[1])))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 52);
  v4 = *(a1 + 60);
  v5 = *(a1 + 68);
  if (*(a1 + 48))
  {
    if ((a2[3].i8[0] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (a2[3].i8[0])
  {
    return 0;
  }

  result = 0;
  v7 = a1;
  v8 = *(a1 + 32);
  if (a2[2].f32[0] == *&v8 && a2[2].f32[1] == *(&v8 + 1))
  {
    v9 = *(v7 + 40);
    if (a2[2].f32[2] == *&v9)
    {
      if (a2[2].f32[3] != *(&v9 + 1))
      {
        return 0;
      }

LABEL_11:
      if (v5)
      {
        if (a2[4].i8[4])
        {
          return 1;
        }
      }

      else if ((a2[4].i8[4] & 1) == 0 && a2[3].f32[1] == *&v3 && a2[3].f32[2] == *(&v3 + 1) && a2[3].f32[3] == *&v4 && a2[4].f32[0] == *(&v4 + 1))
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_21A005EC4()
{
  result = qword_27CCDB610;
  if (!qword_27CCDB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB610);
  }

  return result;
}

__n128 __swift_memcpy69_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A005F3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 69))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A005F5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = (a2 - 1);
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

  *(result + 69) = v3;
  return result;
}

unint64_t sub_21A005FC4()
{
  result = qword_27CCDB618;
  if (!qword_27CCDB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB618);
  }

  return result;
}

unint64_t sub_21A00601C()
{
  result = qword_27CCDB620;
  if (!qword_27CCDB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB620);
  }

  return result;
}

unint64_t sub_21A006074()
{
  result = qword_27CCDB628;
  if (!qword_27CCDB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB628);
  }

  return result;
}

uint64_t sub_21A0060C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736172746E6F63 && a2 == 0xED0000746867694CLL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736172746E6F63 && a2 == 0xEC0000006B726144)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t sub_21A006234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v48 = &v42 - v11;
  v12 = type metadata accessor for ActivityHeaderViewModel();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v42 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ActivityHeaderData();
  v15 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PrimaryElectionStaticAttributes();
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PrimaryElectionContentView();
  v44 = *(v28 - 8);
  v45 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A006E7C(a1, v31, type metadata accessor for PrimaryElectionTheme);
  v32 = *(a1 + *(v24 + 28));
  if (*(a2 + 25))
  {
    v33 = 0;
    v34 = 1;
  }

  else
  {
    v33 = *a2;
    if (*(a2 + 8))
    {
      v33 = 0;
    }

    if ((*(a2 + 24) & 1) == 0)
    {
      v32 = *(a2 + 16);
    }

    v34 = *(a2 + 8) & 1;
  }

  v50[0] = v33;
  v50[1] = v34;
  v50[2] = v32;
  v51 = 0;
  PrimaryElectionTheme.apply(properties:data:)(v50, a2 + *(v19 + 20));
  sub_21A006E7C(a1, v27, type metadata accessor for PrimaryElectionStaticAttributes);
  sub_21A006E7C(a2, v22, type metadata accessor for PrimaryElectionContentState);
  sub_21A011428(v27, v22, v50);
  v35 = v45;
  *&v31[*(v45 + 20)] = v50[0];
  v36 = type metadata accessor for PrimaryElectionTheme();
  sub_21A006E7C(&v31[*(v36 + 28)], v18, type metadata accessor for ActivityHeaderData);

  *(v18 + 10) = 0;
  *(v18 + 11) = 0;
  sub_21A006E7C(v18, v8, type metadata accessor for ActivityHeaderData);
  (*(v15 + 56))(v8, 0, 1, v43);
  v37 = v48;
  ActivityHeaderViewModel.init(from:)(v8, v48);
  sub_21A006F6C(a2, type metadata accessor for PrimaryElectionContentState);
  sub_21A006F6C(a1, type metadata accessor for PrimaryElectionStaticAttributes);
  if ((*(v46 + 48))(v37, 1, v47) == 1)
  {
    sub_219FB4AD8(v37);
    sub_21A006F6C(v18, type metadata accessor for ActivityHeaderData);
    sub_21A006F6C(v31, type metadata accessor for PrimaryElectionTheme);

    return (*(v44 + 56))(v49, 1, 1, v35);
  }

  else
  {
    v39 = v37;
    v40 = v42;
    sub_219FB4B40(v39, v42);
    sub_219FB4B40(v40, &v31[*(v35 + 24)]);
    sub_21A006F6C(v18, type metadata accessor for ActivityHeaderData);
    v41 = v49;
    sub_21A006E7C(v31, v49, type metadata accessor for PrimaryElectionContentView);
    (*(v44 + 56))(v41, 0, 1, v35);
    return sub_21A006F6C(v31, type metadata accessor for PrimaryElectionContentView);
  }
}

uint64_t sub_21A0067E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E567C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB640);
  sub_21A0069B4(v1, a1 + *(v3 + 44));
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v20[3] = *(v1 + 120);
  v20[4] = v5;
  v21 = *(v1 + 152);
  v6 = *(v1 + 88);
  v20[0] = *(v1 + 72);
  v20[1] = v6;
  v20[2] = v4;
  v7 = *(v1 + 208);
  v22[2] = *(v1 + 192);
  v22[3] = v7;
  v22[4] = *(v1 + 224);
  v23 = *(v1 + 240);
  v8 = *(v1 + 176);
  v22[0] = *(v1 + 160);
  v22[1] = v8;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB648) + 36);
  v10 = *(v1 + 120);
  *(v9 + 32) = *(v1 + 104);
  *(v9 + 48) = v10;
  *(v9 + 64) = *(v1 + 136);
  v11 = *(v1 + 88);
  *v9 = *(v1 + 72);
  *(v9 + 16) = v11;
  v12 = *(v1 + 176);
  *(v9 + 88) = *(v1 + 160);
  v13 = *(v1 + 208);
  *(v9 + 120) = *(v1 + 192);
  *(v9 + 136) = v13;
  *(v9 + 152) = *(v1 + 224);
  *(v9 + 80) = *(v1 + 152);
  *(v9 + 168) = *(v1 + 240);
  *(v9 + 104) = v12;
  *(v9 + 256) = 0;
  *(v9 + 224) = 0u;
  *(v9 + 240) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 264) = 2;
  v14 = type metadata accessor for NewsContentViewModifier();
  v15 = v14[8];
  *(v9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF0);
  swift_storeEnumTagMultiPayload();
  v16 = v9 + v14[9];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0;
  v17 = v9 + v14[10];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  sub_219FB4BE8(v20, v19);
  return sub_219FB4BE8(v22, v19);
}

uint64_t sub_21A0069B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for ActivityHeaderView(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v66 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v57[-v9];
  v11 = type metadata accessor for PrimaryElectionContentView();
  sub_21A006E7C(a1 + *(v11 + 24), &v10[v4[7]], type metadata accessor for ActivityHeaderViewModel);
  sub_219F65C20(v76);
  sub_219F5EC1C(v77);
  *v10 = swift_getKeyPath();
  *(v10 + 24) = 0u;
  v10[40] = 0;
  *(v10 + 8) = 0u;
  memcpy(&v10[v4[8]], v76, 0x320uLL);
  v12 = &v10[v4[9]];
  v13 = v77[9];
  v12[8] = v77[8];
  v12[9] = v13;
  v12[10] = v77[10];
  v14 = v77[5];
  v12[4] = v77[4];
  v12[5] = v14;
  v15 = v77[7];
  v12[6] = v77[6];
  v12[7] = v15;
  v16 = v77[1];
  *v12 = v77[0];
  v12[1] = v16;
  v17 = v77[3];
  v12[2] = v77[2];
  v12[3] = v17;
  v18 = a1 + *(type metadata accessor for PrimaryElectionTheme() + 28);
  v19 = *(v18 + 88);
  if (v19)
  {
    v70 = *(v18 + 80);
    v71 = v19;
    sub_219F3F130();

    v20 = sub_21A0E59EC();
    v22 = v21;
    v24 = v23;
    sub_21A0E591C();
    v25 = sub_21A0E599C();
    v62 = v11;
    v63 = a1;
    v26 = v25;
    v64 = v27;
    v29 = v28;

    sub_219F63A30(v20, v22, v24 & 1);

    LODWORD(v70) = sub_21A0E570C();
    v30 = v64;
    v31 = sub_21A0E597C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v29 & 1;
    v39 = v26;
    v11 = v62;
    a1 = v63;
    sub_219F63A30(v39, v30, v38);

    v40 = v31;
    v64 = v33;
    v41 = v33;
    v42 = v35 & 1;
    sub_219F63A40(v31, v41, v35 & 1);
    v19 = v37;
  }

  else
  {
    v40 = 0;
    v64 = 0;
    v42 = 0;
  }

  sub_21A0E5E3C();
  sub_21A0E52AC();
  v61 = v72;
  v62 = v70;
  v59 = v75;
  v60 = v74;
  v69 = 1;
  v68 = v71;
  v67 = v73;
  v43 = *(a1 + *(v11 + 20));
  v44 = v66;
  sub_21A006E7C(v10, v66, type metadata accessor for ActivityHeaderView);
  v45 = v69;
  v46 = v68;
  v58 = v67;
  v47 = v44;
  v63 = v10;
  v48 = v65;
  sub_21A006E7C(v47, v65, type metadata accessor for ActivityHeaderView);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB650);
  v50 = (v48 + v49[12]);
  v51 = v64;
  *v50 = v40;
  v50[1] = v51;
  v50[2] = v42;
  v50[3] = v19;
  v52 = v48 + v49[16];
  *v52 = 0;
  *(v52 + 8) = v45;
  v53 = v61;
  *(v52 + 16) = v62;
  *(v52 + 24) = v46;
  *(v52 + 32) = v53;
  *(v52 + 40) = v58;
  v54 = v59;
  *(v52 + 48) = v60;
  *(v52 + 56) = v54;
  v55 = v49[20];

  sub_21A006EE4(v40, v51, v42, v19);

  sub_21A006F28(v40, v51, v42, v19);
  *(v48 + v55) = v43;
  sub_21A006F6C(v63, type metadata accessor for ActivityHeaderView);

  sub_21A006F28(v40, v51, v42, v19);
  return sub_21A006F6C(v66, type metadata accessor for ActivityHeaderView);
}

uint64_t type metadata accessor for PrimaryElectionContentView()
{
  result = qword_27CCDB630;
  if (!qword_27CCDB630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A006E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A006EE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_219F63A40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21A006F28(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_219F63A30(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21A006F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A006FCC()
{
  result = qword_27CCDB658;
  if (!qword_27CCDB658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB648);
    sub_21A007058();
    sub_21A0070BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB658);
  }

  return result;
}

unint64_t sub_21A007058()
{
  result = qword_27CCDB660;
  if (!qword_27CCDB660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB660);
  }

  return result;
}

unint64_t sub_21A0070BC()
{
  result = qword_27CCDB670;
  if (!qword_27CCDB670)
  {
    type metadata accessor for NewsContentViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB670);
  }

  return result;
}

uint64_t NewsLiveActivitySubscriptionState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ScheduledLiveActivity();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00BDE4(v1, v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else if (v11)
  {
    return 0xD000000000000012;
  }

  else
  {
    sub_21A00BA54(v10, v6, type metadata accessor for ScheduledLiveActivity);
    v15[0] = 0x656C756465686373;
    v15[1] = 0xEA00000000002864;
    v12 = ScheduledLiveActivity.description.getter();
    MEMORY[0x21CED1980](v12);

    MEMORY[0x21CED1980](41, 0xE100000000000000);
    v13 = v15[0];
    sub_21A00B9F4(v6, type metadata accessor for ScheduledLiveActivity);
    return v13;
  }
}

BOOL NewsLiveActivity.isScheduled.getter()
{
  v1 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsLiveActivity(0);
  sub_21A00BDE4(v0 + *(v5 + 20), v4, type metadata accessor for NewsLiveActivitySubscriptionState);
  v6 = type metadata accessor for ScheduledLiveActivity();
  v7 = (*(*(v6 - 8) + 48))(v4, 3, v6);
  if (!v7)
  {
    sub_21A00B9F4(v4, type metadata accessor for NewsLiveActivitySubscriptionState);
  }

  return v7 == 0;
}

uint64_t sub_21A007428@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v113 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v114 = &v105 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v112 = &v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB058);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v110 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v105 - v18;
  v20 = type metadata accessor for NewsLiveActivity(0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = (&v105 - v27);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = (&v105 - v31);
  MEMORY[0x28223BE20](v30, v33);
  v35 = (&v105 - v34);
  v36 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v108 = *(v36 - 8);
  v109 = v36;
  v38 = MEMORY[0x28223BE20](v36, v37);
  v115 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v105 - v41;
  v111 = *a1;
  v43 = v20[5];
  v117 = v2;
  v107 = v43;
  sub_21A00BDE4(v2 + v43, &v105 - v41, type metadata accessor for NewsLiveActivitySubscriptionState);
  v44 = type metadata accessor for ScheduledLiveActivity();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v42, 3, v44);
  if (v46 <= 1)
  {
    if (!v46)
    {
      v47 = v117;
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v48 = sub_21A0E516C();
      __swift_project_value_buffer(v48, qword_280C88498);
      sub_21A00BDE4(v47, v35, type metadata accessor for NewsLiveActivity);
      v49 = sub_21A0E514C();
      v50 = sub_21A0E669C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v118 = v52;
        *v51 = 136446210;
        v53 = *v35;
        v54 = v35[1];

        sub_21A00B9F4(v35, type metadata accessor for NewsLiveActivity);
        v55 = sub_219F50144(v53, v54, &v118);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_219F39000, v49, v50, "Requested to subscribe to Live Activity that is already scheduled to being subscribed to. ID=%{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x21CED2D30](v52, -1, -1);
        MEMORY[0x21CED2D30](v51, -1, -1);
      }

      else
      {

        sub_21A00B9F4(v35, type metadata accessor for NewsLiveActivity);
      }

      sub_21A00BDE4(v47, v116, type metadata accessor for NewsLiveActivity);
      return sub_21A00B9F4(v42, type metadata accessor for NewsLiveActivitySubscriptionState);
    }

    v65 = v117;
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v66 = sub_21A0E516C();
    __swift_project_value_buffer(v66, qword_280C88498);
    sub_21A00BDE4(v65, v32, type metadata accessor for NewsLiveActivity);
    v67 = sub_21A0E514C();
    v68 = sub_21A0E669C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v118 = v70;
      *v69 = 136446210;
      v71 = *v32;
      v72 = v32[1];

      sub_21A00B9F4(v32, type metadata accessor for NewsLiveActivity);
      v73 = sub_219F50144(v71, v72, &v118);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_219F39000, v67, v68, "Requested to subscribe to Live Activity that is already being subscribed to. ID=%{public}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x21CED2D30](v70, -1, -1);
      MEMORY[0x21CED2D30](v69, -1, -1);
    }

    else
    {

      sub_21A00B9F4(v32, type metadata accessor for NewsLiveActivity);
    }

    v82 = v65;
    return sub_21A00BDE4(v82, v116, type metadata accessor for NewsLiveActivity);
  }

  if (v46 == 2)
  {
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v56 = sub_21A0E516C();
    __swift_project_value_buffer(v56, qword_280C88498);
    v57 = v117;
    sub_21A00BDE4(v117, v28, type metadata accessor for NewsLiveActivity);
    v58 = sub_21A0E514C();
    v59 = sub_21A0E669C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v118 = v61;
      *v60 = 136446210;
      v62 = *v28;
      v63 = v28[1];

      sub_21A00B9F4(v28, type metadata accessor for NewsLiveActivity);
      v64 = sub_219F50144(v62, v63, &v118);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_219F39000, v58, v59, "Requested to subscribe to Live Activity that is already subscribed. ID=%{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x21CED2D30](v61, -1, -1);
      MEMORY[0x21CED2D30](v60, -1, -1);
    }

    else
    {

      sub_21A00B9F4(v28, type metadata accessor for NewsLiveActivity);
    }

    v82 = v57;
    return sub_21A00BDE4(v82, v116, type metadata accessor for NewsLiveActivity);
  }

  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v74 = sub_21A0E516C();
  __swift_project_value_buffer(v74, qword_280C88498);
  sub_21A00BDE4(v117, v24, type metadata accessor for NewsLiveActivity);
  v75 = sub_21A0E514C();
  v76 = sub_21A0E66BC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v118 = v78;
    *v77 = 136446210;
    v79 = *(v24 + 1);
    v106 = *v24;

    sub_21A00B9F4(v24, type metadata accessor for NewsLiveActivity);
    v80 = sub_219F50144(v106, v79, &v118);

    *(v77 + 4) = v80;
    _os_log_impl(&dword_219F39000, v75, v76, "Requested to subscribe to Live Activity that is being unsubscribed. Will re-subscribe once that task completes. ID=%{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x21CED2D30](v78, -1, -1);
    MEMORY[0x21CED2D30](v77, -1, -1);
  }

  else
  {

    sub_21A00B9F4(v24, type metadata accessor for NewsLiveActivity);
  }

  v83 = v108;
  v84 = v109;
  (*(v45 + 56))(v19, 1, 3, v44);
  (*(v83 + 56))(v19, 0, 1, v84);
  v85 = sub_21A0E495C();
  v86 = *(v85 - 8);
  v87 = v112;
  v106 = *(v86 + 56);
  v106(v112, 1, 1, v85);
  v88 = v117;
  v89 = v117[1];
  v108 = *v117;
  v109 = v89;
  v90 = v19;
  v91 = v110;
  sub_219F4D494(v90, v110, &qword_27CCDB058);
  v92 = *(v83 + 48);
  if (v92(v91, 1, v84) == 1)
  {
    sub_21A00BDE4(v88 + v107, v115, type metadata accessor for NewsLiveActivitySubscriptionState);
    v93 = v92(v91, 1, v84);

    v94 = v91;
    v95 = v88;
    if (v93 != 1)
    {
      sub_219F6409C(v94, &qword_27CCDB058);
    }
  }

  else
  {
    sub_21A00BA54(v91, v115, type metadata accessor for NewsLiveActivitySubscriptionState);

    v95 = v88;
  }

  v96 = v87;
  v97 = v113;
  sub_219F4D494(v96, v113, &qword_27CCD97F0);
  v98 = *(v86 + 48);
  if (v98(v97, 1, v85) == 1)
  {
    v99 = v114;
    sub_219F45500(v95 + v20[6], v114, &qword_27CCD97F0);
    if (v98(v97, 1, v85) != 1)
    {
      sub_219F6409C(v97, &qword_27CCD97F0);
    }
  }

  else
  {
    v100 = v114;
    (*(v86 + 32))(v114, v97, v85);
    v99 = v100;
    v106(v100, 0, 1, v85);
  }

  v101 = *(v95 + v20[8]);
  v102 = v115;
  v103 = v116;
  v104 = v109;
  *v116 = v108;
  v103[1] = v104;
  sub_21A00BA54(v102, v103 + v20[5], type metadata accessor for NewsLiveActivitySubscriptionState);
  result = sub_219F4D494(v99, v103 + v20[6], &qword_27CCD97F0);
  *(v103 + v20[7]) = v111;
  *(v103 + v20[8]) = v101;
  return result;
}

uint64_t NewsLiveActivity.init(id:subscriptionState:lastUpdatedContentDate:subscriptionSource:dismissalSource:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v9 = a1[1];
  v10 = *a4;
  v11 = *a5;
  *a6 = *a1;
  a6[1] = v9;
  v12 = type metadata accessor for NewsLiveActivity(0);
  sub_21A00BA54(a2, a6 + v12[5], type metadata accessor for NewsLiveActivitySubscriptionState);
  result = sub_219F4D494(a3, a6 + v12[6], &qword_27CCD97F0);
  *(a6 + v12[7]) = v10;
  *(a6 + v12[8]) = v11;
  return result;
}

uint64_t NewsLiveActivity.with(subscriptionState:lastUpdatedContentDate:subscriptionSource:dismissalSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v44 = a1;
  v45 = a2;
  v46 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v50 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB058);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v23) = *a4;
  v48 = *a3;
  v49 = v23;
  v25 = v5[1];
  v47 = *v5;
  sub_219F45500(v44, v19, &qword_27CCDB058);
  v26 = *(v21 + 48);
  if (v26(v19, 1, v20) == 1)
  {
    v27 = type metadata accessor for NewsLiveActivity(0);
    v28 = v6;
    sub_21A00BDE4(v6 + *(v27 + 20), v24, type metadata accessor for NewsLiveActivitySubscriptionState);
    v29 = v26(v19, 1, v20);
    v30 = v25;

    v31 = v24;
    if (v29 != 1)
    {
      sub_219F6409C(v19, &qword_27CCDB058);
    }
  }

  else
  {
    v28 = v6;
    sub_21A00BA54(v19, v24, type metadata accessor for NewsLiveActivitySubscriptionState);
    v30 = v25;

    v31 = v24;
  }

  sub_219F45500(v45, v13, &qword_27CCD97F0);
  v32 = sub_21A0E495C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v13, 1, v32);
  v36 = v50;
  if (v35 == 1)
  {
    v37 = type metadata accessor for NewsLiveActivity(0);
    sub_219F45500(v28 + *(v37 + 24), v36, &qword_27CCD97F0);
    v38 = v34(v13, 1, v32);
    v39 = v49;
    if (v38 != 1)
    {
      sub_219F6409C(v13, &qword_27CCD97F0);
    }
  }

  else
  {
    (*(v33 + 32))(v50, v13, v32);
    (*(v33 + 56))(v36, 0, 1, v32);
    v39 = v49;
  }

  v40 = v48;
  if (v48 == 7)
  {
    v40 = *(v28 + *(type metadata accessor for NewsLiveActivity(0) + 28));
  }

  if (v39 == 7)
  {
    LOBYTE(v39) = *(v28 + *(type metadata accessor for NewsLiveActivity(0) + 32));
  }

  v41 = v46;
  *v46 = v47;
  v41[1] = v30;
  v42 = type metadata accessor for NewsLiveActivity(0);
  sub_21A00BA54(v31, v41 + v42[5], type metadata accessor for NewsLiveActivitySubscriptionState);
  result = sub_219F4D494(v36, v41 + v42[6], &qword_27CCD97F0);
  *(v41 + v42[7]) = v40;
  *(v41 + v42[8]) = v39;
  return result;
}

BOOL NewsLiveActivitySubscriptionState.isScheduled.getter()
{
  v1 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00BDE4(v0, v4, type metadata accessor for NewsLiveActivitySubscriptionState);
  v5 = type metadata accessor for ScheduledLiveActivity();
  v6 = (*(*(v5 - 8) + 48))(v4, 3, v5);
  if (!v6)
  {
    sub_21A00B9F4(v4, type metadata accessor for NewsLiveActivitySubscriptionState);
  }

  return v6 == 0;
}

uint64_t sub_21A008684@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v195 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v182 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v184 = &v173 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v178 = &v173 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v180 = &v173 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v183 = &v173 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v189 = (&v173 - v22);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v179 = &v173 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v181 = &v173 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v188 = &v173 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB058);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v177 = &v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v174 = &v173 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v176 = &v173 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v173 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v175 = &v173 - v47;
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v173 - v49;
  v51 = type metadata accessor for NewsLiveActivity(0);
  v53 = MEMORY[0x28223BE20](v51, v52);
  v55 = (&v173 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = MEMORY[0x28223BE20](v53, v56);
  v59 = (&v173 - v58);
  v61 = MEMORY[0x28223BE20](v57, v60);
  v63 = (&v173 - v62);
  MEMORY[0x28223BE20](v61, v64);
  v66 = (&v173 - v65);
  v67 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v191 = *(v67 - 8);
  v192 = v67;
  v69 = MEMORY[0x28223BE20](v67, v68);
  v187 = &v173 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v69, v71);
  v186 = &v173 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v185 = &v173 - v76;
  MEMORY[0x28223BE20](v75, v77);
  v79 = &v173 - v78;
  v193 = *a1;
  v194 = v51;
  v80 = *(v51 + 20);
  v196 = v2;
  sub_21A00BDE4(v2 + v80, &v173 - v78, type metadata accessor for NewsLiveActivitySubscriptionState);
  v81 = type metadata accessor for ScheduledLiveActivity();
  v82 = *(v81 - 8);
  v83 = (*(v82 + 48))(v79, 3, v81);
  if (v83 <= 1)
  {
    v173 = v80;
    v190 = v81;
    if (!v83)
    {
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v84 = sub_21A0E516C();
      __swift_project_value_buffer(v84, qword_280C88498);
      sub_21A00BDE4(v196, v66, type metadata accessor for NewsLiveActivity);
      v85 = sub_21A0E514C();
      v86 = sub_21A0E66BC();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v197[0] = v88;
        *v87 = 136446210;
        v89 = *v66;
        v90 = v66[1];

        sub_21A00B9F4(v66, type metadata accessor for NewsLiveActivity);
        v91 = sub_219F50144(v89, v90, v197);

        *(v87 + 4) = v91;
        _os_log_impl(&dword_219F39000, v85, v86, "Unsubscribing from scheduled Live Activity. ID=%{public}s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x21CED2D30](v88, -1, -1);
        MEMORY[0x21CED2D30](v87, -1, -1);
      }

      else
      {

        sub_21A00B9F4(v66, type metadata accessor for NewsLiveActivity);
      }

      (*(v82 + 56))(v50, 3, 3, v190);
      v120 = v191;
      v119 = v192;
      (*(v191 + 56))(v50, 0, 1, v192);
      v121 = sub_21A0E495C();
      v122 = *(v121 - 8);
      v189 = *(v122 + 56);
      v189(v188, 1, 1, v121);
      v123 = v196;
      v124 = v196[1];
      v190 = *v196;
      v125 = v50;
      v126 = v175;
      sub_219F4D494(v125, v175, &qword_27CCDB058);
      v127 = *(v120 + 48);
      if (v127(v126, 1, v119) == 1)
      {
        sub_21A00BDE4(v123 + v173, v185, type metadata accessor for NewsLiveActivitySubscriptionState);
        v128 = v127(v126, 1, v119);

        v129 = v126;
        v130 = v123;
        v131 = v181;
        if (v128 != 1)
        {
          sub_219F6409C(v129, &qword_27CCDB058);
        }
      }

      else
      {
        sub_21A00BA54(v126, v185, type metadata accessor for NewsLiveActivitySubscriptionState);

        v130 = v123;
        v131 = v181;
      }

      v157 = v179;
      sub_219F4D494(v188, v179, &qword_27CCD97F0);
      v158 = *(v122 + 48);
      if (v158(v157, 1, v121) == 1)
      {
        v159 = v194;
        sub_219F45500(v130 + v194[6], v131, &qword_27CCD97F0);
        if (v158(v157, 1, v121) != 1)
        {
          sub_219F6409C(v157, &qword_27CCD97F0);
        }
      }

      else
      {
        (*(v122 + 32))(v131, v157, v121);
        v189(v131, 0, 1, v121);
        v159 = v194;
      }

      v167 = *(v130 + v159[7]);
      v168 = v195;
      *v195 = v190;
      v168[1] = v124;
      sub_21A00BA54(v185, v168 + v159[5], type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219F4D494(v131, v168 + v159[6], &qword_27CCD97F0);
      *(v168 + v159[7]) = v167;
      *(v168 + v159[8]) = v193;
      return sub_21A00B9F4(v79, type metadata accessor for NewsLiveActivitySubscriptionState);
    }

    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v101 = sub_21A0E516C();
    __swift_project_value_buffer(v101, qword_280C88498);
    v102 = v196;
    sub_21A00BDE4(v196, v63, type metadata accessor for NewsLiveActivity);
    v103 = sub_21A0E514C();
    v104 = sub_21A0E66BC();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v197[0] = v106;
      *v105 = 136446210;
      v107 = *v63;
      v108 = v63[1];

      sub_21A00B9F4(v63, type metadata accessor for NewsLiveActivity);
      v109 = sub_219F50144(v107, v108, v197);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_219F39000, v103, v104, "Unsubscribing from Live Activity we are in the middle of subscribing to. We will unsubscribe once finished subscribing. ID=%{public}s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x21CED2D30](v106, -1, -1);
      MEMORY[0x21CED2D30](v105, -1, -1);
    }

    else
    {

      sub_21A00B9F4(v63, type metadata accessor for NewsLiveActivity);
    }

    v145 = v192;
    (*(v82 + 56))(v44, 3, 3, v190);
    v146 = v191;
    (*(v191 + 56))(v44, 0, 1, v145);
    v147 = sub_21A0E495C();
    v148 = *(v147 - 8);
    v149 = *(v148 + 56);
    v149(v189, 1, 1, v147);
    v150 = v102[1];
    v192 = *v102;
    v151 = v44;
    v152 = v176;
    sub_219F4D494(v151, v176, &qword_27CCDB058);
    v153 = *(v146 + 48);
    if (v153(v152, 1, v145) == 1)
    {
      sub_21A00BDE4(v102 + v173, v186, type metadata accessor for NewsLiveActivitySubscriptionState);
      v154 = v153(v152, 1, v145);

      v155 = v183;
      if (v154 != 1)
      {
        sub_219F6409C(v152, &qword_27CCDB058);
      }
    }

    else
    {
      sub_21A00BA54(v152, v186, type metadata accessor for NewsLiveActivitySubscriptionState);

      v155 = v183;
    }

    v165 = v180;
    sub_219F4D494(v189, v180, &qword_27CCD97F0);
    v166 = *(v148 + 48);
    if (v166(v165, 1, v147) == 1)
    {
      v163 = v194;
      sub_219F45500(v102 + v194[6], v155, &qword_27CCD97F0);
      if (v166(v165, 1, v147) != 1)
      {
        sub_219F6409C(v165, &qword_27CCD97F0);
      }
    }

    else
    {
      (*(v148 + 32))(v155, v165, v147);
      v149(v155, 0, 1, v147);
      v163 = v194;
    }

    v169 = *(v102 + v163[7]);
    v170 = v195;
    *v195 = v192;
    v170[1] = v150;
    sub_21A00BA54(v186, v170 + v163[5], type metadata accessor for NewsLiveActivitySubscriptionState);
    v171 = v170 + v163[6];
    v172 = v155;
LABEL_52:
    result = sub_219F4D494(v172, v171, &qword_27CCD97F0);
    *(v170 + v163[7]) = v169;
    *(v170 + v163[8]) = v193;
    return result;
  }

  if (v83 == 2)
  {
    v190 = v81;
    v92 = v196;
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v173 = v80;
    v93 = sub_21A0E516C();
    __swift_project_value_buffer(v93, qword_280C88498);
    sub_21A00BDE4(v92, v59, type metadata accessor for NewsLiveActivity);
    v94 = sub_21A0E514C();
    v95 = sub_21A0E66BC();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v197[0] = v97;
      *v96 = 136446210;
      v98 = *v59;
      v99 = v59[1];

      sub_21A00B9F4(v59, type metadata accessor for NewsLiveActivity);
      v100 = sub_219F50144(v98, v99, v197);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_219F39000, v94, v95, "Unsubscribing from Live Activity. ID=%{public}s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x21CED2D30](v97, -1, -1);
      MEMORY[0x21CED2D30](v96, -1, -1);
    }

    else
    {

      sub_21A00B9F4(v59, type metadata accessor for NewsLiveActivity);
    }

    v133 = v191;
    v132 = v192;
    v134 = v174;
    (*(v82 + 56))(v174, 3, 3, v190);
    (*(v133 + 56))(v134, 0, 1, v132);
    v135 = sub_21A0E495C();
    v136 = *(v135 - 8);
    v137 = v178;
    v191 = *(v136 + 56);
    (v191)(v178, 1, 1, v135);
    v138 = v196;
    v139 = v196[1];
    v192 = *v196;
    v140 = v134;
    v141 = v177;
    sub_219F4D494(v140, v177, &qword_27CCDB058);
    v142 = *(v133 + 48);
    if (v142(v141, 1, v132) == 1)
    {
      sub_21A00BDE4(v138 + v173, v187, type metadata accessor for NewsLiveActivitySubscriptionState);
      v143 = v142(v141, 1, v132);

      v144 = v184;
      if (v143 != 1)
      {
        sub_219F6409C(v141, &qword_27CCDB058);
      }
    }

    else
    {
      sub_21A00BA54(v141, v187, type metadata accessor for NewsLiveActivitySubscriptionState);

      v144 = v184;
    }

    v160 = v137;
    v161 = v182;
    sub_219F4D494(v160, v182, &qword_27CCD97F0);
    v162 = *(v136 + 48);
    if (v162(v161, 1, v135) == 1)
    {
      v163 = v194;
      v164 = v196;
      sub_219F45500(v196 + v194[6], v144, &qword_27CCD97F0);
      if (v162(v161, 1, v135) != 1)
      {
        sub_219F6409C(v161, &qword_27CCD97F0);
      }
    }

    else
    {
      (*(v136 + 32))(v144, v161, v135);
      (v191)(v144, 0, 1, v135);
      v163 = v194;
      v164 = v196;
    }

    v169 = *(v164 + v163[7]);
    v170 = v195;
    *v195 = v192;
    v170[1] = v139;
    sub_21A00BA54(v187, v170 + v163[5], type metadata accessor for NewsLiveActivitySubscriptionState);
    v171 = v170 + v163[6];
    v172 = v144;
    goto LABEL_52;
  }

  v110 = v196;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v111 = sub_21A0E516C();
  __swift_project_value_buffer(v111, qword_280C88498);
  sub_21A00BDE4(v110, v55, type metadata accessor for NewsLiveActivity);
  v112 = sub_21A0E514C();
  v113 = sub_21A0E669C();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v197[0] = v115;
    *v114 = 136446210;
    v116 = *v55;
    v117 = v55[1];

    sub_21A00B9F4(v55, type metadata accessor for NewsLiveActivity);
    v118 = sub_219F50144(v116, v117, v197);

    *(v114 + 4) = v118;
    _os_log_impl(&dword_219F39000, v112, v113, "Requested to unsubscribe from Live Activity that is already being unsubscribed. ID=%{public}s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x21CED2D30](v115, -1, -1);
    MEMORY[0x21CED2D30](v114, -1, -1);
  }

  else
  {

    sub_21A00B9F4(v55, type metadata accessor for NewsLiveActivity);
  }

  return sub_21A00BDE4(v110, v195, type metadata accessor for NewsLiveActivity);
}

uint64_t sub_21A009A48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NewsLiveActivity(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = (&v62 - v12);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = (&v62 - v16);
  MEMORY[0x28223BE20](v15, v18);
  v20 = (&v62 - v19);
  v21 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00BDE4(v1 + *(v4 + 20), v24, type metadata accessor for NewsLiveActivitySubscriptionState);
  v25 = type metadata accessor for ScheduledLiveActivity();
  v26 = (*(*(v25 - 8) + 48))(v24, 3, v25);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v36 = sub_21A0E516C();
      __swift_project_value_buffer(v36, qword_280C88498);
      sub_21A00BDE4(v1, v13, type metadata accessor for NewsLiveActivity);
      v37 = sub_21A0E514C();
      v38 = sub_21A0E66BC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v63 = v40;
        *v39 = 136446210;
        v41 = *v13;
        v42 = v13[1];

        sub_21A00B9F4(v13, type metadata accessor for NewsLiveActivity);
        v43 = sub_219F50144(v41, v42, &v63);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_219F39000, v37, v38, "Removing Live Activity that was subscribed. It may have concluded outside of News. ID=%{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        v44 = v40;
LABEL_20:
        MEMORY[0x21CED2D30](v44, -1, -1);
        MEMORY[0x21CED2D30](v39, -1, -1);

        return (*(v5 + 56))(a1, 1, 1, v4);
      }

      v61 = v13;
    }

    else
    {
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v54 = sub_21A0E516C();
      __swift_project_value_buffer(v54, qword_280C88498);
      sub_21A00BDE4(v1, v9, type metadata accessor for NewsLiveActivity);
      v37 = sub_21A0E514C();
      v55 = sub_21A0E66BC();
      if (os_log_type_enabled(v37, v55))
      {
        v39 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v63 = v56;
        *v39 = 136446210;
        v57 = *v9;
        v58 = v9[1];

        sub_21A00B9F4(v9, type metadata accessor for NewsLiveActivity);
        v59 = sub_219F50144(v57, v58, &v63);

        *(v39 + 4) = v59;
        _os_log_impl(&dword_219F39000, v37, v55, "Removing unsubscribed Live Activity. ID=%{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        v44 = v56;
        goto LABEL_20;
      }

      v61 = v9;
    }

    sub_21A00B9F4(v61, type metadata accessor for NewsLiveActivity);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  if (v26)
  {
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v45 = sub_21A0E516C();
    __swift_project_value_buffer(v45, qword_280C88498);
    sub_21A00BDE4(v1, v17, type metadata accessor for NewsLiveActivity);
    v46 = sub_21A0E514C();
    v47 = sub_21A0E66BC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 136446210;
      v62 = v5;
      v63 = v49;
      v50 = a1;
      v51 = *v17;
      v52 = v17[1];

      sub_21A00B9F4(v17, type metadata accessor for NewsLiveActivity);
      v53 = sub_219F50144(v51, v52, &v63);
      a1 = v50;
      v5 = v62;

      *(v48 + 4) = v53;
      _os_log_impl(&dword_219F39000, v46, v47, "Re-subscribing to Live Activity that was re-subscribed to during unsubscription. ID=%{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x21CED2D30](v49, -1, -1);
      MEMORY[0x21CED2D30](v48, -1, -1);
    }

    else
    {

      sub_21A00B9F4(v17, type metadata accessor for NewsLiveActivity);
    }

    sub_21A00BDE4(v2, a1, type metadata accessor for NewsLiveActivity);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

  else
  {
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v27 = sub_21A0E516C();
    __swift_project_value_buffer(v27, qword_280C88498);
    sub_21A00BDE4(v1, v20, type metadata accessor for NewsLiveActivity);
    v28 = sub_21A0E514C();
    v29 = sub_21A0E66BC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136446210;
      v62 = v5;
      v63 = v31;
      v32 = a1;
      v33 = *v20;
      v34 = v20[1];

      sub_21A00B9F4(v20, type metadata accessor for NewsLiveActivity);
      v35 = sub_219F50144(v33, v34, &v63);
      a1 = v32;
      v5 = v62;

      *(v30 + 4) = v35;
      _os_log_impl(&dword_219F39000, v28, v29, "Removing scheduled Live Activity. It may have been dispatched by newsd. ID=%{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x21CED2D30](v31, -1, -1);
      MEMORY[0x21CED2D30](v30, -1, -1);
    }

    else
    {

      sub_21A00B9F4(v20, type metadata accessor for NewsLiveActivity);
    }

    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_21A00B9F4(v24, type metadata accessor for NewsLiveActivitySubscriptionState);
  }
}