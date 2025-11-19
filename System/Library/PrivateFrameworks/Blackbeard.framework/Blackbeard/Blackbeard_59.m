uint64_t sub_1E6508CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a2;
  v114 = a1;
  v108 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726E8, &qword_1E65EBB70);
  v7 = *(v6 - 8);
  v106 = v6;
  v107 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v80 - v9;
  v10 = type metadata accessor for BrowsePage();
  v93 = *(v10 - 8);
  v92 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B10, &qword_1E65F97F8);
  v98 = *(v97 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v80 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A490, &unk_1E65FA7B0);
  v14 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v95 = &v80 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A480, &qword_1E65F97F0);
  v16 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v80 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077820, &qword_1E65F96A8);
  v18 = *(*(v105 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v105);
  v100 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v80 - v21;
  v22 = type metadata accessor for AppComposer();
  v23 = *(v22 - 8);
  v96 = v22 - 8;
  v111 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8);
  v90 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v89 = &v80 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - v28;
  v30 = sub_1E65DFB08();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6143704(v34);
  v113 = sub_1E65DFAF8();
  v80 = v35;
  (*(v31 + 8))(v34, v30);
  v115 = type metadata accessor for AppComposer;
  sub_1E5E1DE44(v4, v29, type metadata accessor for AppComposer);
  v83 = *a3;
  v84 = *(a3 + 24);
  v85 = *(a3 + 40);
  v86 = *(a3 + 56);
  v87 = *(a3 + 72);
  v36 = *(v111 + 80);
  v109 = (v36 + 16) & ~v36;
  v110 = v109 + v24;
  v37 = v109;
  v111 = v36 | 7;
  v38 = (v109 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = v38;
  v39 = swift_allocObject();
  sub_1E5E1EB40(v29, v39 + v37, type metadata accessor for AppComposer);
  v40 = (v39 + v38);
  v41 = *(a3 + 48);
  v40[2] = *(a3 + 32);
  v40[3] = v41;
  v40[4] = *(a3 + 64);
  v42 = *(a3 + 16);
  *v40 = *a3;
  v40[1] = v42;
  swift_unknownObjectRetain();

  v43 = v112;
  v113 = sub_1E6509E58(v114, v113, v80, sub_1E6509DAC, v39);

  v88 = v29;
  sub_1E5E1DE44(v43, v29, v115);
  v44 = v91;
  sub_1E5E1DE44(v81, v91, type metadata accessor for BrowsePage);
  v45 = (v110 + *(v93 + 80)) & ~*(v93 + 80);
  v46 = (v92 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v109;
  sub_1E5E1EB40(v29, v47 + v109, type metadata accessor for AppComposer);
  sub_1E5E1EB40(v44, v47 + v45, type metadata accessor for BrowsePage);
  v93 = v47;
  v49 = (v47 + v46);
  v50 = *(a3 + 48);
  v49[2] = *(a3 + 32);
  v49[3] = v50;
  v49[4] = *(a3 + 64);
  v51 = *(a3 + 16);
  *v49 = *a3;
  v49[1] = v51;
  v52 = v112;
  *(v47 + ((v46 + 87) & 0xFFFFFFFFFFFFFFF8)) = v113;
  v53 = v89;
  v54 = v115;
  sub_1E5E1DE44(v52, v89, v115);
  v55 = swift_allocObject();
  sub_1E5E1EB40(v53, v55 + v48, type metadata accessor for AppComposer);
  v56 = v90;
  sub_1E5E1DE44(v52, v90, v54);
  sub_1E5DF650C(v114, &v116);
  v57 = v82;
  v58 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  sub_1E5E1EB40(v56, v59 + v48, type metadata accessor for AppComposer);
  *(v59 + v57) = v113;
  sub_1E5DF599C(&v116, v59 + v58);
  v60 = (v59 + ((v58 + 47) & 0xFFFFFFFFFFFFFFF8));
  v61 = *(a3 + 48);
  v60[2] = *(a3 + 32);
  v60[3] = v61;
  v60[4] = *(a3 + 64);
  v62 = *(a3 + 16);
  *v60 = *a3;
  v60[1] = v62;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
  sub_1E5FEB2FC();
  sub_1E5FEAB1C();
  v63 = v94;
  sub_1E65DF988();
  v64 = sub_1E5FED46C(&unk_1ED07A4A0, &unk_1ED077B10, &qword_1E65F97F8);
  v65 = v95;
  v66 = v97;
  sub_1E630FCD8(a3, v97, v64, v95);
  (*(v98 + 8))(v63, v66);
  v67 = v112;
  v68 = v88;
  sub_1E5E1DE44(v112, v88, v115);
  sub_1E5DF650C(v114, &v116);
  v69 = swift_allocObject();
  v70 = v109;
  sub_1E5E1EB40(v68, v69 + v109, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v116, v69 + v57);
  sub_1E5FEAE50();
  v71 = v103;
  sub_1E65DE7F8();
  v72 = *(v67 + *(v96 + 28) + 8);
  v73 = sub_1E6272E30();
  sub_1E5FED46C(&qword_1EE2D6878, &qword_1ED0726E8, &qword_1E65EBB70);
  v74 = v99;
  v75 = v106;
  View.platformPresentAlert<A>(_:applicablePlatforms:currentPlatform:)(v71, &unk_1F5FA7F08, v72, v101, v106, v73);
  (*(v107 + 8))(v71, v75);
  sub_1E5DFE50C(v65, &unk_1ED07A490, &unk_1E65FA7B0);
  sub_1E5E1DE44(v67, v68, v115);
  v76 = swift_allocObject();
  sub_1E5E1EB40(v68, v76 + v70, type metadata accessor for AppComposer);
  sub_1E6272D78();
  v77 = v100;
  sub_1E6259D5C(sub_1E5FF0278, v76, v104);

  sub_1E5DFE50C(v74, &unk_1ED07A480, &qword_1E65F97F0);
  sub_1E6272CEC();
  v78 = v102;
  sub_1E5FEE4C8(v77);
  sub_1E5DFE50C(v77, &unk_1ED077820, &qword_1E65F96A8);
  sub_1E5FEE4C8(v78);
  return sub_1E5DFE50C(v78, &unk_1ED077820, &qword_1E65F96A8);
}

uint64_t sub_1E650988C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65DE3E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E03C8();
  v10 = v9;
  if (v8 == sub_1E65E03C8() && v10 == v11)
  {
  }

  else
  {
    v12 = sub_1E65E6C18();

    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = a2 + *(type metadata accessor for AppComposer() + 20);
  v15 = *(v14 + 8);
  v16 = sub_1E65DAE18();
  (*(v4 + 104))(v7, *MEMORY[0x1E69CAD28], v3);
  v17 = sub_1E637C87C(v7, v16);

  result = (*(v4 + 8))(v7, v3);
  if (v17)
  {
    v18 = v14 + *(type metadata accessor for AppEnvironment() + 80);
    v19 = MetricService.publishTrainerTipQuarantineRegionEntered.getter();
    v19();
  }

  return result;
}

uint64_t sub_1E6509A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - v17;
  v33 = v30 - v17;
  v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v34, v6);
  v20 = *(a4 + 24);
  v30[0] = *a4;
  v30[1] = v20;
  v21 = *(a4 + 56);
  v30[2] = *(a4 + 40);
  v30[3] = v21;
  v34 = *(a4 + 72);
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v12 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5FAB460(v14, v25 + v22, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v25 + v23, v10, v6);
  *(v25 + v24) = v32;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 64);
  v26[3] = *(a4 + 48);
  v26[4] = v27;
  v28 = *(a4 + 32);
  v26[1] = *(a4 + 16);
  v26[2] = v28;
  *v26 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v33, &unk_1E65EC0C8, v25);
}

uint64_t sub_1E6509DAC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E6509A54(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E6509E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v72 = a5;
  v71 = a4;
  v88 = a2;
  v89 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v74 = *(v75 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v70 = v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = v57 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v73 = *(v69 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = v57 - v14;
  v15 = type metadata accessor for AppComposer();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v87 = v57 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v57 - v23;
  v26 = v25;
  v65 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v28 = v57 - v27;
  sub_1E5E1DE44(v5, v57 - v27, type metadata accessor for AppComposer);
  sub_1E5DF650C(a1, &v93);
  v29 = *(v16 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = (v30 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v83 = v32;
  sub_1E5E1EB40(v28, v32 + v30, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v93, v32 + v31);
  v62 = type metadata accessor for AppComposer;
  sub_1E5E1DE44(v6, v24, type metadata accessor for AppComposer);
  v60 = v29;
  v33 = swift_allocObject();
  v85 = v33;
  v63 = type metadata accessor for AppComposer;
  sub_1E5E1EB40(v24, v33 + v30, type metadata accessor for AppComposer);
  v34 = (v33 + v31);
  v35 = v88;
  v36 = v89;
  *v34 = v88;
  v34[1] = v36;
  v59 = v6;
  v37 = v87;
  sub_1E5E1DE44(v6, v87, type metadata accessor for AppComposer);
  v58 = swift_allocObject();
  sub_1E5E1EB40(v37, v58 + v30, type metadata accessor for AppComposer);
  v38 = swift_allocObject();
  v61 = v38;
  *(v38 + 16) = v35;
  *(v38 + 24) = v36;
  v68 = *v6;
  v87 = type metadata accessor for ActionButtonDescriptor(0);
  v86 = type metadata accessor for ArtworkDescriptor();
  v84 = type metadata accessor for ContextMenu(0);
  v82 = type metadata accessor for ItemContext();
  v81 = type metadata accessor for ItemMetrics();
  v80 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v79 = type metadata accessor for SectionMetrics();
  v57[6] = type metadata accessor for ViewDescriptor();
  v78 = sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v77 = sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v76 = sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v57[5] = sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v57[4] = sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v57[3] = sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v57[2] = sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v57[1] = sub_1E651D5E4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E651D5E4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  v57[0] = sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_bridgeObjectRetain_n();

  sub_1E65DC178();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v40 = sub_1E65DC168();
  v91 = v39;
  v92 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v90 = v40;
  v41 = v67;
  sub_1E65DC248();
  v42 = v66;
  sub_1E5E1DE44(v59, v66, v62);
  v43 = (v60 + 32) & ~v60;
  v44 = (v65 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v88;
  v47 = v89;
  *(v45 + 16) = v88;
  *(v45 + 24) = v47;
  sub_1E5E1EB40(v42, v45 + v43, v63);
  v48 = (v45 + v44);
  v49 = v61;
  *v48 = sub_1E651D23C;
  v48[1] = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  *(v50 + 24) = v47;
  type metadata accessor for AppFeature();
  sub_1E651D5E4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);
  swift_bridgeObjectRetain_n();

  v51 = v70;
  v52 = v69;
  sub_1E65E4DE8();
  v53 = swift_allocObject();
  *(v53 + 16) = v71;
  *(v53 + 24) = v72;

  sub_1E65E4CC8();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E5FE9CE8;
  *(v54 + 24) = v53;

  v55 = sub_1E65E4F08();

  (*(v74 + 8))(v51, v75);
  (*(v73 + 8))(v41, v52);
  return v55;
}

uint64_t sub_1E650AA5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v125 = a4;
  v109 = a3;
  v103 = a2;
  v5 = type metadata accessor for BrowsePage();
  v106 = *(v5 - 8);
  v105 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB88, &qword_1E6608A48);
  v113 = *(v7 - 8);
  v114 = v7;
  v8 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v108 = v95 - v9;
  v10 = sub_1E65DFB28();
  v111 = *(v10 - 8);
  v112 = v10;
  v11 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v127 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DFB48();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v102 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E65DFA78();
  v110 = *(v107 - 8);
  v16 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v126 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppComposer();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8);
  v101 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v99 = v95 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v124 = v95 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v122 = v95 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v120 = v95 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v119 = v95 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v118 = v95 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v116 = v95 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v96 = v95 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = v95 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = v95 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = v95 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = v95 - v49;
  v52 = v51;
  v100 = v51;
  MEMORY[0x1EEE9AC00](v48);
  v54 = v95 - v53;
  sub_1E5E1DE44(a1, v95 - v53, type metadata accessor for AppComposer);
  v55 = *(v19 + 80);
  v56 = (v55 + 16) & ~v55;
  v131 = swift_allocObject();
  sub_1E5E1EB40(v54, v131 + v56, type metadata accessor for AppComposer);
  sub_1E5E1DE44(a1, v50, type metadata accessor for AppComposer);
  v130 = swift_allocObject();
  sub_1E5E1EB40(v50, v130 + v56, type metadata accessor for AppComposer);
  sub_1E5E1DE44(a1, v47, type metadata accessor for AppComposer);
  v129 = swift_allocObject();
  sub_1E5E1EB40(v47, v129 + v56, type metadata accessor for AppComposer);
  sub_1E5E1DE44(a1, v44, type metadata accessor for AppComposer);
  v128 = swift_allocObject();
  sub_1E5E1EB40(v44, v128 + v56, type metadata accessor for AppComposer);
  sub_1E5E1DE44(a1, v41, type metadata accessor for AppComposer);
  v115 = swift_allocObject();
  sub_1E5E1EB40(v41, v115 + v56, type metadata accessor for AppComposer);
  v57 = v96;
  sub_1E5E1DE44(a1, v96, type metadata accessor for AppComposer);
  v58 = swift_allocObject();
  sub_1E5E1EB40(v57, v58 + v56, type metadata accessor for AppComposer);
  v59 = v116;
  sub_1E5E1DE44(a1, v116, type metadata accessor for AppComposer);
  v60 = swift_allocObject();
  sub_1E5E1EB40(v59, v60 + v56, type metadata accessor for AppComposer);
  v61 = v118;
  sub_1E5E1DE44(a1, v118, type metadata accessor for AppComposer);
  v116 = swift_allocObject();
  sub_1E5E1EB40(v61, v116 + v56, type metadata accessor for AppComposer);
  v62 = v119;
  sub_1E5E1DE44(a1, v119, type metadata accessor for AppComposer);
  v118 = swift_allocObject();
  sub_1E5E1EB40(v62, v118 + v56, type metadata accessor for AppComposer);
  v63 = v120;
  sub_1E5E1DE44(a1, v120, type metadata accessor for AppComposer);
  v119 = swift_allocObject();
  sub_1E5E1EB40(v63, v119 + v56, type metadata accessor for AppComposer);
  v64 = v122;
  sub_1E5E1DE44(a1, v122, type metadata accessor for AppComposer);
  v120 = swift_allocObject();
  sub_1E5E1EB40(v64, v120 + v56, type metadata accessor for AppComposer);
  v65 = a1;
  v66 = a1;
  v67 = v124;
  v121 = type metadata accessor for AppComposer;
  sub_1E5E1DE44(v65, v124, type metadata accessor for AppComposer);
  v97 = v56 + v52;
  v122 = swift_allocObject();
  v98 = v56;
  v123 = type metadata accessor for AppComposer;
  sub_1E5E1EB40(v67, v122 + v56, type metadata accessor for AppComposer);
  v117 = v66;
  v68 = v99;
  sub_1E5E1DE44(v66, v99, type metadata accessor for AppComposer);
  v124 = swift_allocObject();
  sub_1E5E1EB40(v68, v124 + v56, type metadata accessor for AppComposer);
  v99 = *v66;
  v69 = swift_allocObject();
  v95[1] = v69;
  *(v69 + 16) = &unk_1E6608A88;
  *(v69 + 24) = v125;
  swift_retain_n();

  v95[2] = v58;

  v96 = v60;

  sub_1E65DFB38();
  sub_1E65DFA68();
  sub_1E65DFB18();
  v70 = v103;
  v71 = v104;
  sub_1E5E1DE44(v103, v104, type metadata accessor for BrowsePage);
  v72 = v101;
  sub_1E5E1DE44(v117, v101, v121);
  v73 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v95[0] = v55;
  v74 = (v73 + v105 + v55) & ~v55;
  v75 = swift_allocObject();
  sub_1E5E1EB40(v71, v75 + v73, type metadata accessor for BrowsePage);
  sub_1E5E1EB40(v72, v75 + v74, v123);
  sub_1E5E1DE44(v70, v71, type metadata accessor for BrowsePage);
  v76 = swift_allocObject();
  sub_1E5E1EB40(v71, v76 + v73, type metadata accessor for BrowsePage);
  type metadata accessor for AppFeature();
  sub_1E651D5E4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v106 = sub_1E651D5E4(&qword_1EE2D65F8, MEMORY[0x1E699D498]);
  v77 = v108;
  v78 = v107;
  sub_1E65E4DE8();
  v79 = v72;
  sub_1E5E1DE44(v117, v72, v121);
  v80 = *v109;
  v81 = v109[3];
  v82 = v109[5];
  v83 = v109[7];
  v84 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v121 = v109[9];
  v85 = v109;
  v86 = swift_allocObject();
  sub_1E5E1EB40(v79, v86 + v98, v123);
  v87 = (v86 + v84);
  v88 = v85[3];
  v87[2] = v85[2];
  v87[3] = v88;
  v87[4] = v85[4];
  v89 = v85[1];
  *v87 = *v85;
  v87[1] = v89;
  swift_unknownObjectRetain();

  v91 = v126;
  v90 = v127;
  v92 = v77;
  v93 = sub_1E65E4F08();

  (*(v113 + 8))(v92, v114);
  (*(v111 + 8))(v90, v112);
  (*(v110 + 8))(v91, v78);
  return v93;
}

uint64_t sub_1E650B8F8()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for BrowsePage() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E650AA5C(v0 + v2, v0 + v5, (v0 + v6), v7);
}

uint64_t sub_1E650B9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = *(*(sub_1E65D74E8() - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v8 = *(*(sub_1E65DFC18() - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABB8, &qword_1E6608D10) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v11 = sub_1E65DA128();
  v6[15] = v11;
  v12 = *(v11 - 8);
  v6[16] = v12;
  v13 = *(v12 + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v6[19] = v15;
  v16 = *(v15 - 8);
  v6[20] = v16;
  v17 = *(v16 + 64) + 15;
  v6[21] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v19 = sub_1E65D9AC8();
  v6[23] = v19;
  v20 = *(v19 - 8);
  v6[24] = v20;
  v21 = *(v20 + 64) + 15;
  v6[25] = swift_task_alloc();
  v22 = sub_1E65D7848();
  v6[26] = v22;
  v23 = *(v22 - 8);
  v6[27] = v23;
  v24 = *(v23 + 64) + 15;
  v6[28] = swift_task_alloc();
  v25 = type metadata accessor for AppEnvironment();
  v6[29] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v27 = sub_1E65DA8C8();
  v6[31] = v27;
  v28 = *(v27 - 8);
  v6[32] = v28;
  v29 = *(v28 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650BDA8, 0, 0);
}

uint64_t sub_1E650BDA8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 80);
  v3 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 36) = v3;
  v4 = v2 + v3 + *(v1 + 48);
  v5 = CatalogService.fetchRemoteCatalogEditorialCollectionDetail.getter();
  *(v0 + 272) = v6;
  v13 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = sub_1E650BECC;
  v9 = *(v0 + 264);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);

  return v13(v9, v10, v11);
}

uint64_t sub_1E650BECC()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1E650C5BC;
  }

  else
  {
    v3 = sub_1E650BFE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E650BFE0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 36);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v63 = *(v0 + 176);
  v65 = *(v0 + 184);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 80);

  sub_1E5E1DE44(v10 + v2, v3, type metadata accessor for AppEnvironment);
  v11 = *v10;
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEE88(v63);
  sub_1E5DFE50C(v9, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v7 + 8))(v6, v8);
  v12 = *(v5 + 48);
  if (v12(v63, 1, v65) == 1)
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 200);
    MEMORY[0x1E6941490]();
    if (v12(v13, 1, v14) != 1)
    {
      sub_1E5DFE50C(*(v0 + 176), &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  }

  v16 = *(v0 + 264);
  v17 = *(v0 + 136);
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  sub_1E65DA888();
  sub_1E65DA898();
  sub_1E60955F0(v19, v18);
  v20 = sub_1E65DA108();
  v21 = v20;
  v22 = v20 + 56;
  v23 = -1;
  v24 = -1 << *(v20 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(v20 + 56);
  v26 = (63 - v24) >> 6;

  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_8:
    while (1)
    {
      v30 = *(v21 + 48) + 24 * (__clz(__rbit64(v25)) | (v28 << 6));
      v31 = *(v30 + 16);
      v25 &= v25 - 1;
      *(v0 + 16) = *v30;
      *(v0 + 32) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABC0, &qword_1E6608D18);
      result = sub_1E65D7FB8();
      v32 = *(v0 + 33);
      if (v32 != 2)
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_10;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E64F6BF0(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v66 = v35 + 1;
      v37 = v29;
      v38 = *(v29 + 16);
      result = sub_1E64F6BF0((v34 > 1), v35 + 1, 1, v37);
      v36 = v66;
      v35 = v38;
      v29 = result;
    }

    *(v29 + 16) = v36;
    *(v29 + v35 + 32) = v32 & 1;
  }

  while (v25);
  while (1)
  {
LABEL_10:
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v33 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v33);
    ++v28;
    if (v25)
    {
      v28 = v33;
      goto LABEL_8;
    }
  }

  v52 = *(v0 + 288);
  v46 = *(v0 + 264);
  v56 = *(v0 + 256);
  v58 = *(v0 + 248);
  v48 = *(v0 + 224);
  v49 = *(v0 + 240);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v47 = *(v0 + 200);
  v55 = *(v0 + 192);
  v57 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v39 = *(v0 + 136);
  v64 = *(v0 + 144);
  v53 = *(v0 + 128);
  v54 = *(v0 + 120);
  v51 = *(v0 + 112);
  v67 = *(v0 + 104);
  v40 = *(v0 + 88);
  v44 = *(v0 + 96);
  v50 = *(v0 + 40);
  v45 = *(v0 + 64);

  sub_1E600CB28(v29);

  sub_1E65DA118();
  sub_1E65DA0C8();
  sub_1E65DA0F8();
  sub_1E65DA0D8();
  sub_1E65DA0E8();
  sub_1E65DFBF8();
  v41 = sub_1E65DA8A8();
  v42 = swift_task_alloc();
  *(v42 + 16) = v45;
  *(v42 + 32) = v48;
  *(v42 + 40) = v47;
  *(v42 + 48) = v49;
  sub_1E6405BC4(sub_1E651CF7C, v42, v41);

  sub_1E65E0208();
  (*(v53 + 8))(v39, v54);
  (*(v56 + 8))(v46, v58);
  (*(v55 + 8))(v47, v57);
  (*(v59 + 8))(v48, v60);
  sub_1E651D43C(v49, type metadata accessor for AppEnvironment);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1E650C5BC()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[11];

  v11 = v0[1];
  v12 = v0[36];

  return v11();
}

uint64_t sub_1E650C6C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 128) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  *(v4 + 64) = v7;
  v8 = *(v7 - 8);
  *(v4 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650C7E0, 0, 0);
}

uint64_t sub_1E650C7E0()
{
  v1 = *(v0 + 128);
  v2 = sub_1E65DFB58();
  v3 = MEMORY[0x1E6940840](v2);
  v4 = *(v0 + 80);
  if (v3 == 49)
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 80);

    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }

  v11 = v3;
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = **(v0 + 32);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v13 + 8))(v4, v12);
  sub_1E5FAB460(v14, v15, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = **(v0 + 48);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(*(v0 + 48), &qword_1ED072910, &qword_1E65EC030);
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v19 = *(v0 + 48);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
  v21 = *v19;
  v22 = sub_1E65D76A8();
  (*(*(v22 - 8) + 8))(&v19[v20], v22);
LABEL_12:
  *(v0 + 88) = v21;
  v23 = *(v0 + 32);
  v24 = v23 + *(type metadata accessor for AppComposer() + 20);
  v25 = v24 + *(type metadata accessor for AppEnvironment() + 48);
  v26 = CatalogService.fetchRemoteGalleryLockups.getter();
  *(v0 + 96) = v27;
  v32 = (v26 + *v26);
  v28 = v26[1];
  v29 = swift_task_alloc();
  *(v0 + 104) = v29;
  *v29 = v0;
  v29[1] = sub_1E650CAC0;
  v30 = *(v0 + 16);
  v31 = *(v0 + 24);

  return v32(v11, v30, v31);
}

uint64_t sub_1E650CAC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_1E650CCE8;
  }

  else
  {
    v8 = *(v4 + 96);

    *(v4 + 120) = a1;
    v7 = sub_1E650CBF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E650CBF0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  v5 = *(v0 + 128);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  v7 = sub_1E6405450(sub_1E651CF58, v6, v1);

  v8 = *(v0 + 80);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11(v7);
}

uint64_t sub_1E650CCE8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  v5 = *(v0 + 128);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  v7 = sub_1E6405450(sub_1E651CF58, v6, MEMORY[0x1E69E7CC0]);

  v8 = *(v0 + 80);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11(v7);
}

uint64_t sub_1E650CDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a4;
  v93 = a3;
  v88 = a2;
  v97 = a5;
  v92 = sub_1E65D9CC8();
  v6 = *(v92 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v87 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7848();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D8258();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v85 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v83 - v18;
  v20 = sub_1E65D88D8();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v83 - v25;
  v91 = a1;
  sub_1E5E1DE44(a1, &v83 - v25, MEMORY[0x1E69CB668]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v96 = v12;
  v89 = v13;
  v86 = v14;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v14 + 32))(v19, v26, v13);
    v28 = sub_1E65D80B8();
    v84 = v6;
    v29 = v28;
    v31 = v30;
    v100 = v28;
    v101 = v30;
    v33 = v32 & 1;
    v102 = v32 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    (*(v14 + 8))(v19, v13);
    v34 = v29;
    v35 = v84;
    v36 = v33;
    v12 = v96;
    sub_1E5F87058(v34, v31, v36);
    if (v88 && v98 != 3 && (sub_1E637CE70(v98, v88) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1E651D43C(v26, MEMORY[0x1E69CB668]);
    v35 = v6;
  }

  v37 = *v90;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5E1DE44(v91, v24, MEMORY[0x1E69CB668]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v85;
    v39 = v86;
    v40 = v89;
    (*(v86 + 32))(v85, v24, v89);
    v41 = sub_1E65D80C8();
    v43 = v42;
    v100 = v41;
    v101 = v42;
    v45 = v44 & 1;
    v102 = v44 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
    sub_1E65D7F98();
    sub_1E5F87058(v41, v43, v45);
    if (MEMORY[0x1E69479A0](v98, v99) == 9)
    {
      (*(v39 + 8))(v38, v40);
      (*(v94 + 8))(v12, v95);
LABEL_12:
      v53 = sub_1E65DFAA8();
      return (*(*(v53 - 8) + 56))(v97, 1, 1, v53);
    }

    v55 = sub_1E65D81B8();
    v91 = v56;
    v92 = v55;
    v90 = sub_1E65DFB58();
    v58 = v57;
    v59 = v38;
    v60 = sub_1E65D8078();
    v62 = v61;
    v63 = sub_1E65D81B8();
    if (v64)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0xE000000000000000;
    }

    v100 = v60;
    v101 = v62;

    MEMORY[0x1E694D7C0](v65, v66);

    MEMORY[0x1E694D7C0](v90, v58);
    swift_bridgeObjectRelease_n();

    sub_1E65D8078();
    v67 = v97;
    sub_1E65DFD48();
    (*(v39 + 8))(v59, v89);
    (*(v94 + 8))(v12, v95);
  }

  else
  {
    v46 = v87;
    (*(v35 + 32))(v87, v24, v92);
    v47 = sub_1E65D9CA8();
    v49 = v48;
    v100 = v47;
    v101 = v48;
    v50 = v35;
    v52 = v51 & 1;
    v102 = v51 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
    sub_1E65D7F98();
    sub_1E5F87058(v47, v49, v52);
    if (MEMORY[0x1E69479A0](v98, v99) == 9)
    {
      (*(v50 + 8))(v46, v92);
      (*(v94 + 8))(v96, v95);
      goto LABEL_12;
    }

    v68 = sub_1E65D9CB8();
    v90 = v69;
    v91 = v68;
    v70 = sub_1E65DFB58();
    v71 = v50;
    v73 = v72;
    v74 = v46;
    v75 = sub_1E65D9C98();
    v77 = v76;
    v78 = sub_1E65D9CB8();
    if (v79)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0;
    }

    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0xE000000000000000;
    }

    v100 = v75;
    v101 = v77;

    MEMORY[0x1E694D7C0](v80, v81);

    MEMORY[0x1E694D7C0](v70, v73);
    swift_bridgeObjectRelease_n();

    sub_1E65D9C98();
    v67 = v97;
    sub_1E65DFD48();
    (*(v71 + 8))(v74, v92);
    (*(v94 + 8))(v96, v95);
  }

  v82 = sub_1E65DFAA8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v82 - 8) + 56))(v67, 0, 1, v82);
}

uint64_t sub_1E650D5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E650D618, 0, 0);
}

uint64_t sub_1E650D618()
{
  v1 = v0[10];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = sub_1E65DE258();
  v4 = MEMORY[0x1E69CACD8];
  v0[5] = v3;
  v0[6] = v4;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E65DE248();
  v5 = *(MEMORY[0x1E69CABC0] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABA8, &qword_1E660F0A0);
  *v6 = v0;
  v6[1] = sub_1E650D73C;

  return MEMORY[0x1EEE34540](v0 + 7, &unk_1E6608C98, v2, 3, v0 + 2, 0, 0, v7);
}

uint64_t sub_1E650D73C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1E650DB34;
  }

  else
  {
    v5 = *(v2 + 88);
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));

    v4 = sub_1E650D86C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E650D86C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 64);
  *(v4 + 32) = v2;
  v5 = sub_1E6405BC4(sub_1E651CF38, v4, v3);

  if (v5[2])
  {
    v6 = *(v0 + 80);

    v7 = *(v6 + *(type metadata accessor for AppComposer() + 20) + 8);
    v8 = sub_1E650E9BC(v5);

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v11 = sub_1E65E3B68();
    __swift_project_value_buffer(v11, qword_1EE2EA2A0);

    v12 = sub_1E65E3B48();
    v13 = sub_1E65E6328();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = *(v3 + 16);

      *(v14 + 4) = v15;

      _os_log_impl(&dword_1E5DE9000, v12, v13, "[BrowseComposer] Transforming %ld failed", v14, 0xCu);
      MEMORY[0x1E694F1C0](v14, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v16 = sub_1E65DF9B8();
    sub_1E651D5E4(&qword_1EE2D6608, MEMORY[0x1E699D440]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E699D438], v16);
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1E650DB34()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E650DB98(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DDE68();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650DC58, 0, 0);
}

uint64_t sub_1E650DC58()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAB50], v3);
  *(v0 + 121) = 0;
  sub_1E65DDC58();
  (*(v2 + 8))(v1, v3);
  LODWORD(v3) = *(v0 + 120);
  v5 = v4 + *(type metadata accessor for AppComposer() + 20);
  v6 = v5 + *(type metadata accessor for AppEnvironment() + 48);
  if (v3 == 1)
  {
    v7 = CatalogService.fetchRemoteLegacyShelfLockupDescriptors.getter();
    *(v0 + 56) = v8;
    v16 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v11 = sub_1E650DE98;
  }

  else
  {
    v12 = CatalogService.fetchRemoteExploreShelfLockupDescriptors.getter();
    *(v0 + 88) = v13;
    v16 = (v12 + *v12);
    v14 = v12[1];
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v11 = sub_1E650E038;
  }

  v10[1] = v11;

  return v16();
}

uint64_t sub_1E650DE98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1E650E3C0;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_1E650DFC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E650DFC8()
{
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E650E038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_1E650E42C;
  }

  else
  {
    v5 = sub_1E650E14C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E650E14C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (*(v1 + 16))
  {
    v3 = *(v0 + 48);
    **(v0 + 16) = *(v0 + 104);

    v4 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 104);

    v6 = sub_1E65DF9B8();
    sub_1E651D5E4(&qword_1EE2D6608, MEMORY[0x1E699D440]);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E699D438], v6);
    swift_willThrow();
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v9 = sub_1E65E3B68();
    __swift_project_value_buffer(v9, qword_1EE2EA2A0);
    v10 = v7;
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6328();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "[BrowseComposer] Failed to fetch lockup descriptors with error %@", v13, 0xCu);
      sub_1E5DFE50C(v14, &unk_1ED072130, &qword_1E65EA840);
      MEMORY[0x1E694F1C0](v14, -1, -1);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    swift_willThrow();
    v17 = *(v0 + 48);

    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_1E650E3C0()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E650E42C()
{
  v1 = v0[11];

  v2 = v0[14];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[BrowseComposer] Failed to fetch lockup descriptors with error %@", v7, 0xCu);
    sub_1E5DFE50C(v8, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E650E5D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a2;
  v42 = a3;
  v43 = a1;
  v40 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34 - v17;
  v19 = sub_1E65D9AC8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65D7848();
  v37 = *(v24 - 8);
  v38 = v24;
  v25 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a4;
  v28 = *a4;
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v29 = v35;
  sub_1E65E4C98();
  sub_1E60EEE88(v18);
  sub_1E5DFE50C(v9, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v36 + 8))(v14, v29);
  v30 = *(v20 + 48);
  if (v30(v18, 1, v19) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v30(v18, 1, v19) != 1)
    {
      sub_1E5DFE50C(v18, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
  }

  v31 = v39 + *(type metadata accessor for AppComposer() + 20);
  v32 = type metadata accessor for AppEnvironment();
  sub_1E61DCD04(v41, v42, v27, v23, &v31[*(v32 + 136)], v40);
  (*(v20 + 8))(v23, v19);
  return (*(v37 + 8))(v27, v38);
}

uint64_t sub_1E650E9BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABB0, &qword_1E6608CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v41 = sub_1E65E00B8();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E65DFFB8();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v42);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = sub_1E65DAE38();
  if (v20 == sub_1E65DAE38())
  {
    goto LABEL_12;
  }

  v36 = v5;
  v37 = v14;
  v38 = a1;
  v40 = a1[2];
  if (!v40)
  {
LABEL_11:
    a1 = v38;
LABEL_12:

    return a1;
  }

  v21 = 0;
  v22 = v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v23 = *(v10 + 72);
  v24 = (v6 + 32);
  v39 = 0x80000001E6618C50;
  v25 = (v6 + 8);
  while (1)
  {
    v27 = MEMORY[0x1E699D618];
    sub_1E5E1DE44(v22, v19, MEMORY[0x1E699D618]);
    sub_1E5E1DE44(v19, v17, v27);
    if (swift_getEnumCaseMultiPayload() < 5)
    {
      v26 = MEMORY[0x1E699D618];
      sub_1E651D43C(v19, MEMORY[0x1E699D618]);
      sub_1E651D43C(v17, v26);
      goto LABEL_5;
    }

    (*v24)(v9, v17, v41);
    if (sub_1E65E0078() == 0xD000000000000016 && v39 == v28)
    {
      break;
    }

    v29 = sub_1E65E6C18();

    (*v25)(v9, v41);
    sub_1E651D43C(v19, MEMORY[0x1E699D618]);
    if (v29)
    {
      goto LABEL_15;
    }

LABEL_5:
    ++v21;
    v22 += v23;
    if (v40 == v21)
    {
      goto LABEL_11;
    }
  }

  (*v25)(v9, v41);
  sub_1E651D43C(v19, MEMORY[0x1E699D618]);
LABEL_15:
  v31 = v37;
  sub_1E65E01C8();
  result = swift_storeEnumTagMultiPayload();
  v32 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  a1 = v38;
  v33 = v36;
  if (v40 < v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_1E5E1DE44(v31, v36, MEMORY[0x1E699D618]);
  v34 = a1[2];
  if (v34 < v32)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = a1;
  if (!isUniquelyReferenced_nonNull_native || v34 >= a1[3] >> 1)
  {
    a1 = sub_1E64F6BC8(isUniquelyReferenced_nonNull_native, v34 + 1, 1, a1);
    v43 = a1;
  }

  sub_1E651B3B0(v21 + 1, v21 + 1, 1, v33, MEMORY[0x1E699D618], MEMORY[0x1E699D618], &qword_1ED07ABB0, &qword_1E6608CA0);
  sub_1E651D43C(v31, MEMORY[0x1E699D618]);
  return a1;
}

uint64_t sub_1E650EE94(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E650EF68, v5, v4);
}

uint64_t sub_1E650EF68()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E650F00C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C0, &qword_1E65EBA50);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650F0AC, 0, 0);
}

uint64_t sub_1E650F0AC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 56);
  v4 = ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E650F1C8;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E650F1C8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E650F2E0, 0, 0);
}

uint64_t sub_1E650F2E0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A0, &qword_1E65EBF20);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4470, &qword_1ED0728A0, &qword_1E65EBF20);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4748, &qword_1ED0726C0, &qword_1E65EBA50);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E650F41C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E650F43C, 0, 0);
}

uint64_t sub_1E650F43C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 28);
  v5 = AppStateService.makeAppDidEnterBackgroundStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE47FC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E650F5C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E650F5E4, 0, 0);
}

uint64_t sub_1E650F5E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 32);
  v5 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4740, &qword_1ED075D10, &qword_1E65F37A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE36AC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E650F76C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650F80C, 0, 0);
}

uint64_t sub_1E650F80C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 112);
  v4 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E650F928;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E650F928()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E650FA58;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E650FA58()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072898, &qword_1E65EBF10);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44B8, &qword_1ED072898, &qword_1E65EBF10);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47A0, &qword_1ED0721A0, &qword_1E65EA978);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E650FB94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650FC34, 0, 0);
}

uint64_t sub_1E650FC34()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 100);
  v4 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E650FD50;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E650FD50()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E650FE68, 0, 0);
}

uint64_t sub_1E650FE68()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABA0, &qword_1E6608C78);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44C0, &qword_1ED07ABA0, &qword_1E6608C78);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47A8, &qword_1ED0721B8, &qword_1E65EA990);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E650FFA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E650FFC4, 0, 0);
}

uint64_t sub_1E650FFC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE36AC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E651014C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65101EC, 0, 0);
}

uint64_t sub_1E65101EC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 56);
  v4 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E6510308;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E6510308()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6510420, 0, 0);
}

uint64_t sub_1E6510420()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB98, &qword_1E6608C68);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4478, &qword_1ED07AB98, &qword_1E6608C68);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4750, &qword_1ED072B08, &qword_1E65EC510);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E651055C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E651057C, 0, 0);
}

uint64_t sub_1E651057C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.makeTrainerTipJournalsUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4740, &qword_1ED075D10, &qword_1E65F37A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E6138840;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E6510704(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6510724, 0, 0);
}

uint64_t sub_1E6510724()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 64);
  v5 = HealthDataService.makeWheelchairStatusUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE36AC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E65108AC(void *a1, uint64_t a2)
{
  v195 = a1;
  v164 = sub_1E65E0128();
  v184 = *(v164 - 8);
  v3 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1E65DFC88();
  v185 = *(v162 - 8);
  v5 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1E65DFDA8();
  v186 = *(v160 - 8);
  v7 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v169 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1E65DF978();
  v158 = *(v168 - 8);
  v9 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1E65DFF38();
  v157 = *(v166 - 8);
  v11 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for BrowseItemContext();
  v13 = *(*(v172 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v172);
  v182 = (&v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v157 - v16;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v17 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188);
  v189 = (&v157 - v18);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v175 = *(v198 - 8);
  v19 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v21 = &v157 - v20;
  v191 = type metadata accessor for ItemContext();
  v199 = *(v191 - 8);
  v22 = *(v199 + 64);
  v23 = MEMORY[0x1EEE9AC00](v191);
  v25 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v157 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v157 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v157 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = (&v157 - v37);
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v200;
  if (v201)
  {
    return sub_1E5FED3F8(v200, v201);
  }

  v190 = v38;
  v181 = v35;
  v174 = v34;
  v173 = v33;
  v193 = v31;
  v171 = v28;
  v159 = v25;
  v170 = a2;
  v40 = MEMORY[0x1E69E7CC0];
  v180 = *(v200 + 16);
  if (!v180)
  {
    v65 = v189;
    v46 = v184;
    v66 = v185;
    v63 = v186;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v194 = v40;
    v198 = v40[2];
    if (!v198)
    {
      v197 = MEMORY[0x1E69E7CC0];
LABEL_116:

      v156 = sub_1E600A878(v197);

      *v65 = v156;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v65, &qword_1ED072828, &qword_1E65EBE20);
    }

    v72 = 0;
    v196 = (v46 + 32);
    v73 = v195 + 7;
    v192 = (v46 + 8);
    v190 = (v66 + 32);
    v187 = (v66 + 8);
    v186 = v63 + 32;
    v185 = v63 + 8;
    v184 = v158 + 32;
    v181 = (v158 + 8);
    v180 = (v157 + 32);
    v179 = (v157 + 8);
    v197 = MEMORY[0x1E69E7CC0];
    v74 = v171;
    while (1)
    {
      if (v72 >= v194[2])
      {
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v75 = (*(v199 + 80) + 32) & ~*(v199 + 80);
      v76 = *(v199 + 72);
      v77 = v193;
      sub_1E5E1DE44(v194 + v75 + v76 * v72, v193, type metadata accessor for ItemContext);
      sub_1E5E1DE44(v77, v74, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_1E651D43C(v74, type metadata accessor for ItemContext);
LABEL_31:
      result = sub_1E651D43C(v193, type metadata accessor for ItemContext);
LABEL_32:
      if (++v72 == v198)
      {
        goto LABEL_116;
      }
    }

    v78 = v183;
    sub_1E5E1EB40(v74, v183, type metadata accessor for BrowseItemContext);
    sub_1E5E1DE44(v78, v182, type metadata accessor for BrowseItemContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        v80 = v195;
        if (EnumCaseMultiPayload == 1)
        {
          v81 = v182[1];
          if (v195[2])
          {
            v82 = *v182;
            v83 = v195;
            v84 = v195[5];
            sub_1E65E6D28();
            sub_1E65E5D78();
            v85 = sub_1E65E6D78();
            v86 = -1 << *(v83 + 32);
            v87 = v85 & ~v86;
            if ((*(v73 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
            {
              v88 = ~v86;
              while (1)
              {
                v89 = (v195[6] + 16 * v87);
                v90 = *v89 == v82 && v89[1] == v81;
                if (v90 || (sub_1E65E6C18() & 1) != 0)
                {
                  break;
                }

                v87 = (v87 + 1) & v88;
                if (((*(v73 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_110;
            }
          }

LABEL_50:
        }

        else
        {
          (*v184)(v167, v182, v168);
          v115 = sub_1E65DF8C8();
          v117 = v116;
          if (v80[2])
          {
            v118 = v115;
            v119 = v195;
            v120 = v195[5];
            sub_1E65E6D28();
            sub_1E65E5D78();
            v121 = sub_1E65E6D78();
            v122 = -1 << *(v119 + 32);
            v123 = v121 & ~v122;
            if ((*(v73 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123))
            {
              v124 = ~v122;
              while (1)
              {
                v125 = (v195[6] + 16 * v123);
                v126 = *v125 == v118 && v125[1] == v117;
                if (v126 || (sub_1E65E6C18() & 1) != 0)
                {
                  break;
                }

                v123 = (v123 + 1) & v124;
                if (((*(v73 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) == 0)
                {
                  goto LABEL_81;
                }
              }

              (*v181)(v167, v168);
              goto LABEL_110;
            }
          }

LABEL_81:

          (*v181)(v167, v168);
        }
      }

      else
      {
        (*v180)(v165, v182, v166);
        v103 = sub_1E65DFEF8();
        v105 = v104;
        if (v195[2])
        {
          v106 = v103;
          v107 = v195;
          v108 = v195[5];
          sub_1E65E6D28();
          sub_1E65E5D78();
          v109 = sub_1E65E6D78();
          v110 = -1 << *(v107 + 32);
          v111 = v109 & ~v110;
          if ((*(v73 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
          {
            v112 = ~v110;
            while (1)
            {
              v113 = (v195[6] + 16 * v111);
              v114 = *v113 == v106 && v113[1] == v105;
              if (v114 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v111 = (v111 + 1) & v112;
              if (((*(v73 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            (*v179)(v165, v166);
            goto LABEL_110;
          }
        }

LABEL_71:

        (*v179)(v165, v166);
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*v190)(v161, v182, v162);
        v91 = sub_1E65DFC48();
        v93 = v92;
        if (v195[2])
        {
          v94 = v91;
          v95 = v195;
          v96 = v195[5];
          sub_1E65E6D28();
          sub_1E65E5D78();
          v97 = sub_1E65E6D78();
          v98 = -1 << *(v95 + 32);
          v99 = v97 & ~v98;
          if ((*(v73 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
          {
            v100 = ~v98;
            while (1)
            {
              v101 = (v195[6] + 16 * v99);
              v102 = *v101 == v94 && v101[1] == v93;
              if (v102 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v99 = (v99 + 1) & v100;
              if (((*(v73 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
              {
                goto LABEL_61;
              }
            }

            (*v187)(v161, v162);
            goto LABEL_110;
          }
        }

LABEL_61:

        (*v187)(v161, v162);
      }

      else
      {
        (*v196)(v163, v182, v164);
        v139 = sub_1E65E00E8();
        v141 = v140;
        if (v195[2])
        {
          v142 = v139;
          v143 = v195;
          v144 = v195[5];
          sub_1E65E6D28();
          sub_1E65E5D78();
          v145 = sub_1E65E6D78();
          v146 = -1 << *(v143 + 32);
          v147 = v145 & ~v146;
          if ((*(v73 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147))
          {
            v148 = ~v146;
            while (1)
            {
              v149 = (v195[6] + 16 * v147);
              v150 = *v149 == v142 && v149[1] == v141;
              if (v150 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v147 = (v147 + 1) & v148;
              if (((*(v73 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
              {
                goto LABEL_101;
              }
            }

            (*v192)(v163, v164);
            goto LABEL_110;
          }
        }

LABEL_101:

        (*v192)(v163, v164);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1E651D43C(v183, type metadata accessor for BrowseItemContext);
LABEL_103:
        v74 = v171;
        goto LABEL_31;
      }

      (*v186)(v169, v182, v160);
      v127 = sub_1E65DFD78();
      v129 = v128;
      if (v195[2])
      {
        v130 = v127;
        v131 = v195;
        v132 = v195[5];
        sub_1E65E6D28();
        sub_1E65E5D78();
        v133 = sub_1E65E6D78();
        v134 = -1 << *(v131 + 32);
        v135 = v133 & ~v134;
        if ((*(v73 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135))
        {
          v136 = ~v134;
          while (1)
          {
            v137 = (v195[6] + 16 * v135);
            v138 = *v137 == v130 && v137[1] == v129;
            if (v138 || (sub_1E65E6C18() & 1) != 0)
            {
              break;
            }

            v135 = (v135 + 1) & v136;
            if (((*(v73 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          (*v185)(v169, v160);
LABEL_110:
          sub_1E651D43C(v183, type metadata accessor for BrowseItemContext);
          sub_1E5E1EB40(v193, v159, type metadata accessor for ItemContext);
          v151 = v197;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v153 = v151;
          v202 = v151;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E601BFA8(0, *(v151 + 16) + 1, 1);
            v153 = v202;
          }

          v155 = *(v153 + 16);
          v154 = *(v153 + 24);
          if (v155 >= v154 >> 1)
          {
            sub_1E601BFA8(v154 > 1, v155 + 1, 1);
            v153 = v202;
          }

          *(v153 + 16) = v155 + 1;
          v197 = v153;
          result = sub_1E5E1EB40(v159, v153 + v75 + v155 * v76, type metadata accessor for ItemContext);
          v65 = v189;
          v74 = v171;
          goto LABEL_32;
        }
      }

LABEL_91:

      (*v185)(v169, v160);
    }

    sub_1E651D43C(v183, type metadata accessor for BrowseItemContext);
    v65 = v189;
    goto LABEL_103;
  }

  v41 = 0;
  v42 = v181;
  v179 = (v200 + ((*(v42 + 80) + 32) & ~*(v42 + 80)));
  v178 = (v181 + 2);
  v196 = (v175 + 8);
  v197 = v175 + 16;
  v177 = (v181 + 1);
  v43 = v199;
  v44 = v174;
  v176 = v200;
  while (1)
  {
    if (v41 >= *(result + 16))
    {
      goto LABEL_118;
    }

    v47 = v42[9];
    v192 = v41;
    v48 = v190;
    (v42[2])(v190, v179 + v47 * v41, v44);
    v49 = sub_1E65E0518();
    swift_getKeyPath();
    v50 = *(v49 + 16);
    if (v50)
    {
      v194 = v40;
      v200 = MEMORY[0x1E69E7CC0];
      sub_1E601BFA8(0, v50, 0);
      v51 = v200;
      v52 = (*(v175 + 80) + 32) & ~*(v175 + 80);
      v187 = v49;
      v53 = v49 + v52;
      v54 = *(v175 + 72);
      v55 = *(v175 + 16);
      v56 = v173;
      do
      {
        v57 = v198;
        v55(v21, v53, v198);
        swift_getAtKeyPath();
        (*v196)(v21, v57);
        v200 = v51;
        v59 = *(v51 + 16);
        v58 = *(v51 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1E601BFA8(v58 > 1, v59 + 1, 1);
          v51 = v200;
        }

        *(v51 + 16) = v59 + 1;
        sub_1E5E1EB40(v56, v51 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v59, type metadata accessor for ItemContext);
        v53 += v54;
        --v50;
      }

      while (v50);
      v44 = v174;
      (*v177)(v190, v174);

      v43 = v199;
      v40 = v194;
    }

    else
    {

      result = (*v177)(v48, v44);
      v51 = MEMORY[0x1E69E7CC0];
    }

    v60 = *(v51 + 16);
    v61 = v40[2];
    v62 = v61 + v60;
    v63 = v186;
    if (__OFADD__(v61, v60))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v62 > v40[3] >> 1)
    {
      if (v61 <= v62)
      {
        v64 = v61 + v60;
      }

      else
      {
        v64 = v61;
      }

      result = sub_1E64F6184(result, v64, 1, v40);
      v40 = result;
    }

    v65 = v189;
    v66 = v185;
    if (*(v51 + 16))
    {
      if ((v40[3] >> 1) - v40[2] < v60)
      {
        goto LABEL_121;
      }

      v67 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v68 = *(v43 + 72);
      swift_arrayInitWithCopy();

      v42 = v181;
      result = v176;
      v45 = v192;
      if (v60)
      {
        v69 = v40[2];
        v70 = __OFADD__(v69, v60);
        v71 = v69 + v60;
        if (v70)
        {
          goto LABEL_122;
        }

        v40[2] = v71;
      }
    }

    else
    {

      v42 = v181;
      result = v176;
      v45 = v192;
      if (v60)
      {
        goto LABEL_120;
      }
    }

    v41 = (v45 + 1);
    v46 = v184;
    if (v41 == v180)
    {
      goto LABEL_28;
    }
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  return result;
}

uint64_t sub_1E6511D4C(uint64_t a1)
{
  v1[12] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[13] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  sub_1E65E6058();
  v1[15] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E6511E20, v5, v4);
}

uint64_t sub_1E6511E20()
{
  sub_1E65E0638();
  sub_1E65E0628();
  sub_1E65E0618();

  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  type metadata accessor for ActionButtonDescriptor(0);
  type metadata accessor for ArtworkDescriptor();
  type metadata accessor for ContextMenu(0);
  type metadata accessor for ItemContext();
  type metadata accessor for ItemMetrics();
  type metadata accessor for ViewDescriptor();
  sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  sub_1E65E0608();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x1E699D8B8] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1E651214C;

  return MEMORY[0x1EEE05DC0](v1, v2);
}

uint64_t sub_1E651214C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1E651226C, v4, v3);
}

uint64_t sub_1E651226C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6512318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v46 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ArtworkContent();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArtworkDescriptor();
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v13, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a2, v9, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  v24 = *MEMORY[0x1E699DC58];
  v25 = sub_1E65DC488();
  (*(*(v25 - 8) + 104))(&v17[v23], v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for AppComposer();
  v27 = v45;
  v28 = *(v45 + *(v26 + 20) + 8);
  v29 = sub_1E65DAE38();
  v30 = sub_1E65DAE38();
  v31 = sub_1E65E4B48();
  v32 = 4.0;
  if (v31)
  {
    v32 = 8.0;
  }

  v33 = 16.0;
  if (v31)
  {
    v33 = 18.0;
  }

  if (v29 == v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  if (v29 == v30)
  {
    v35 = 12.0;
  }

  else
  {
    v35 = 8.0;
  }

  sub_1E5E1EB40(v17, v22, type metadata accessor for ArtworkContent);
  *(v22 + v19[7]) = MEMORY[0x1E69E7CD0];
  v36 = (v22 + v19[8]);
  *v36 = 0.0;
  v36[1] = v34;
  v36[2] = v34;
  v36[3] = v35;
  *(v22 + v19[9]) = 1;
  v37 = (v22 + v19[10]);
  *v37 = 0;
  v37[1] = 0;
  v38 = v46;
  sub_1E64D2DD0(v22, v27, v46);
  v39 = sub_1E65E4B98();
  v41 = v40;
  v42 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v22, v27, v42);
  sub_1E651D43C(v22, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v44 = (v42 + *(result + 36));
  *v44 = v39;
  v44[1] = v41;
  return result;
}

uint64_t sub_1E65126B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1E6512318(a1, a2, v8, a3);
}

uint64_t sub_1E6512740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a2;
  v92 = a5;
  v8 = sub_1E65E3C48();
  v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v76[1] = v10;
  v89 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AppComposer();
  v11 = *(v82 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v82);
  v93 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v76 - v14;
  v98 = sub_1E65D76F8();
  *&v99 = *(v98 - 8);
  v16 = *(v99 + 64);
  v17 = MEMORY[0x1EEE9AC00](v98);
  v96 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v97 = v76 - v19;
  sub_1E65D76E8();
  if (qword_1EE2D4F08 != -1)
  {
    swift_once();
  }

  v76[0] = __swift_project_value_buffer(v8, qword_1EE2D4F10);
  sub_1E5E1DE44(a1, v15, type metadata accessor for AppComposer);
  sub_1E5DF650C(a3, &v109);
  v91 = v15;
  v20 = *a4;
  v79 = a3;
  v21 = a4[3];
  v84 = a1;
  v22 = a4[5];
  v94 = a4[7];
  v95 = a4[9];
  v23 = *(v11 + 80);
  v80 = ~v23;
  v83 = v8;
  v24 = (v23 + 16) & ~v23;
  v25 = v12 + 7;
  v26 = (v25 + v24) & 0xFFFFFFFFFFFFFFF8;
  v81 = v23 | 7;
  v27 = swift_allocObject();
  sub_1E5E1EB40(v91, v27 + v24, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v109, v27 + v26);
  v91 = v27;
  v28 = (v27 + ((v26 + 47) & 0xFFFFFFFFFFFFFFF8));
  v29 = *(a4 + 3);
  v28[2] = *(a4 + 2);
  v28[3] = v29;
  v28[4] = *(a4 + 4);
  v30 = *(a4 + 1);
  *v28 = *a4;
  v28[1] = v30;
  v86 = v20;
  swift_unknownObjectRetain();
  v87 = v21;

  v88 = v22;
  v31 = v84;

  v78 = sub_1E65E4418();
  v32 = v99;
  if (*(v31 + *(v82 + 20) + 8) >= 3u)
  {
    v51 = v93;
    sub_1E5E1DE44(v31, v93, type metadata accessor for AppComposer);
    sub_1E5DF650C(v79, &v107);
    (*(v32 + 16))(v96, v97, v98);
    v52 = (v23 + 17) & v80;
    v53 = v32;
    v54 = (v25 + v52) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 47) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 87) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + *(v53 + 80) + 16) & ~*(v53 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v78;
    sub_1E5E1EB40(v51, v59 + v52, type metadata accessor for AppComposer);
    *(v59 + v54) = v90;
    sub_1E5DF599C(&v107, v59 + v55);
    v60 = (v59 + v56);
    v61 = *(a4 + 3);
    v60[2] = *(a4 + 2);
    v60[3] = v61;
    v60[4] = *(a4 + 4);
    v62 = *(a4 + 1);
    *v60 = *a4;
    v60[1] = v62;
    v63 = (v59 + v57);
    v64 = v91;
    *v63 = sub_1E651365C;
    v63[1] = v64;
    v65 = v98;
    (*(v53 + 32))(v59 + v58, v96, v98);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B0, &qword_1E65EBC30);
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727B8, &qword_1E65EBC38);
    v67 = sub_1E65E0AA8();
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727C0, &qword_1E65EBC40);
    v69 = sub_1E5FED46C(&qword_1ED0727C8, &qword_1ED0727C0, &qword_1E65EBC40);
    *&v104 = v68;
    *(&v104 + 1) = v69;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v71 = sub_1E651D5E4(&qword_1EE2D6550, MEMORY[0x1E699DB08]);
    *&v104 = v66;
    *(&v104 + 1) = v67;
    v105 = OpaqueTypeConformance2;
    v106 = v71;
    swift_getOpaqueTypeConformance2();
    *&v107 = sub_1E65E3E28();
    *(&v107 + 1) = v72;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0);
    sub_1E5FEE4C8(&v107);

    v107 = v104;
    sub_1E5FEE4C8(&v107);
    v100 = v102;
    v101 = v103;

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8);
    sub_1E62DFB74(&v100, v74, v73);

    (*(v99 + 8))(v97, v65);
  }

  else
  {
    sub_1E5E1DE44(v31, v93, type metadata accessor for AppComposer);
    sub_1E5DF650C(v79, &v107);
    (*(v32 + 16))(v96, v97, v98);
    v33 = v77;
    (*(v77 + 16))(v89, v76[0], v83);
    v34 = v32;
    v35 = (v23 + 18) & v80;
    v36 = (v25 + v35) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 87) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + *(v34 + 80) + 16) & ~*(v34 + 80);
    v41 = (v85 + *(v33 + 80) + v40) & ~*(v33 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v78;
    *(v42 + 17) = 1;
    sub_1E5E1EB40(v93, v42 + v35, type metadata accessor for AppComposer);
    *(v42 + v36) = v90;
    sub_1E5DF599C(&v107, v42 + v37);
    v43 = (v42 + v38);
    v44 = *(a4 + 3);
    v43[2] = *(a4 + 2);
    v43[3] = v44;
    v43[4] = *(a4 + 4);
    v45 = *(a4 + 1);
    *v43 = *a4;
    v43[1] = v45;
    v46 = (v42 + v39);
    v47 = v91;
    *v46 = sub_1E651365C;
    v46[1] = v47;
    v48 = v98;
    (*(v99 + 32))(v42 + v40, v96, v98);
    (*(v33 + 32))(v42 + v41, v89, v83);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727D0, &qword_1E65EBC48);
    sub_1E5FED46C(&qword_1ED0727D8, &qword_1ED0727D0, &qword_1E65EBC48);
    *&v107 = sub_1E65E3D68();
    *(&v107 + 1) = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8);
    sub_1E5FEE4C8(&v107);

    v107 = v104;
    sub_1E5FEE4C8(&v107);
    v100 = v102;
    v101 = v103;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0);
    sub_1E62DFC6C(&v100, v50);

    (*(v99 + 8))(v97, v48);
  }

  v99 = v107;
  v104 = v107;
  LOBYTE(v105) = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
  sub_1E5FEAB1C();
  sub_1E5FEE4C8(&v104);
  sub_1E5FEBB58();
  sub_1E5FEE4C8(&v107);
  sub_1E5FEBB58();
  v107 = v109;
  v108 = v110;
  sub_1E5FEE4C8(&v107);
  return sub_1E5FEBB58();
}

uint64_t sub_1E6513428@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E6512740(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), (v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E65134DC(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E651365C(char *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E65134DC(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E6513714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v58 = a2;
  v6 = sub_1E65DFDA8();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v53 = (&v50 - v13);
  v14 = type metadata accessor for RouteDestination();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  v21 = sub_1E65DF978();
  v51 = *(v21 - 8);
  v52 = v21;
  v22 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ItemContext();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for BrowseItemContext();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v50 - v34;
  sub_1E5E1DE44(a1, v28, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5E1EB40(v28, v35, type metadata accessor for BrowseItemContext);
    sub_1E5E1DE44(v35, v33, type metadata accessor for BrowseItemContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload >= 2)
      {
        v42 = v51;
        v41 = v52;
        (*(v51 + 32))(v24, v33, v52);
        v43 = type metadata accessor for AppComposer();
        v44 = v53;
        sub_1E64472A8(*(v58 + *(v43 + 36)), *(v58 + *(v43 + 36) + 8), v53);
        (*(v59 + 56))(v44, 0, 1, v60);
        sub_1E5E1EB40(v44, v20, type metadata accessor for RouteDestination);
        sub_1E6513E20(v20, v50, a4);
        sub_1E651D43C(v20, type metadata accessor for RouteDestination);
        (*(v42 + 8))(v24, v41);
        return sub_1E651D43C(v35, type metadata accessor for BrowseItemContext);
      }
    }

    else if ((EnumCaseMultiPayload - 5) >= 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v33 = v35;
LABEL_9:
        v37 = type metadata accessor for BrowseItemContext;
        v38 = v33;
        goto LABEL_10;
      }

      v45 = v55;
      v46 = v56;
      v47 = v57;
      (*(v56 + 32))(v55, v33, v57);
      v48 = type metadata accessor for AppComposer();
      v49 = v54;
      sub_1E6447980(*(v58 + *(v48 + 36)), *(v58 + *(v48 + 36) + 8), v54);
      (*(v59 + 56))(v49, 0, 1, v60);
      sub_1E5E1EB40(v49, v18, type metadata accessor for RouteDestination);
      sub_1E6513E20(v18, v50, a4);
      sub_1E651D43C(v18, type metadata accessor for RouteDestination);
      (*(v46 + 8))(v45, v47);
      return sub_1E651D43C(v35, type metadata accessor for BrowseItemContext);
    }

    sub_1E651D43C(v35, type metadata accessor for BrowseItemContext);
    goto LABEL_9;
  }

  v37 = type metadata accessor for ItemContext;
  v38 = v28;
LABEL_10:
  sub_1E651D43C(v38, v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  return (*(*(v39 - 8) + 56))(a4, 1, 1, v39);
}

uint64_t sub_1E6513E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = type metadata accessor for RouteDestination();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = type metadata accessor for CanvasTaskIdentifier();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
  v15 = v14[12];
  v16 = v14[16];
  v29 = v14[20];
  v30 = v15;
  v17 = (a3 + v14[24]);
  sub_1E5E1DE44(a1, v13, type metadata accessor for RouteDestination);
  sub_1E5E1DE44(v13, v11, type metadata accessor for CanvasTaskIdentifier);
  sub_1E651D5E4(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier);
  sub_1E65E6848();
  sub_1E651D43C(v13, type metadata accessor for CanvasTaskIdentifier);
  v18 = *MEMORY[0x1E6999B50];
  v19 = sub_1E65E4EB8();
  (*(*(v19 - 8) + 104))(a3 + v16, v18, v19);
  v20 = *MEMORY[0x1E6999B48];
  v21 = sub_1E65E4EA8();
  (*(*(v21 - 8) + 104))(a3 + v29, v20, v21);
  sub_1E5E1DE44(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RouteDestination);
  sub_1E5DF650C(v32, v33);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_1E5E1EB40(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for RouteDestination);
  sub_1E5DF599C(v33, v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = &unk_1E6608DB0;
  v17[1] = v23;
  sub_1E65E6068();
  v24 = *MEMORY[0x1E6999AD8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  v26 = *(v25 - 8);
  (*(v26 + 104))(a3, v24, v25);
  return (*(v26 + 56))(a3, 0, 1, v25);
}

uint64_t sub_1E65141DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1E65E3B68();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_1E65D7848();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for AppComposer();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v4[15] = *(v12 + 64);
  v4[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABD8, &qword_1E6608D78);
  v4[17] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();
  v18 = sub_1E65DFAE8();
  v4[23] = v18;
  v19 = *(v18 - 8);
  v4[24] = v19;
  v20 = *(v19 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v21 = sub_1E65DFA08();
  v4[27] = v21;
  v22 = *(v21 - 8);
  v4[28] = v22;
  v23 = *(v22 + 64) + 15;
  v4[29] = swift_task_alloc();
  v24 = sub_1E65DFAC8();
  v4[30] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v26 = *(*(sub_1E65DFA58() - 8) + 64) + 15;
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6514530, 0, 0);
}

uint64_t sub_1E6514530()
{
  v1 = *v0[4];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = v0[2];
  if (!*(v2 + 16) || (v3 = sub_1E6215038(v0[5], v0[6]), (v4 & 1) == 0))
  {

LABEL_14:
    v46 = v0[9];
    sub_1E65DE348();
    v47 = sub_1E65E3B48();
    v48 = sub_1E65E6338();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1E5DE9000, v47, v48, "Fetch Lazy Canvas Section Descriptors failed as state is not fetched", v49, 2u);
      MEMORY[0x1E694F1C0](v49, -1, -1);
    }

    v50 = v0[31];
    v51 = v0[32];
    v52 = v0[29];
    v53 = v0[25];
    v54 = v0[26];
    v89 = v0[22];
    v91 = v0[19];
    v93 = v0[18];
    v96 = v0[16];
    v99 = v0[12];
    v56 = v0[8];
    v55 = v0[9];
    v57 = v0[7];

    (*(v56 + 8))(v55, v57);
    v58 = sub_1E65DF9B8();
    sub_1E651D5E4(&qword_1EE2D6608, MEMORY[0x1E699D440]);
    swift_allocError();
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x1E699D438], v58);
    swift_willThrow();

    v60 = v0[1];

    return v60();
  }

  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  (*(v8 + 16))(v7, *(v2 + 56) + *(v8 + 72) * v3, v9);

  sub_1E65DF9C8();
  (*(v8 + 8))(v7, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E651D43C(v0[31], MEMORY[0x1E699D4C0]);
    goto LABEL_14;
  }

  v10 = v0[31];
  v11 = v0[32];
  v12 = v0[13];
  v13 = v0[4];
  v14 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218) + 64));

  sub_1E5E1EB40(v10, v11, MEMORY[0x1E699D488]);
  v15 = sub_1E65DFA48();
  v16 = *(v13 + *(v12 + 20) + 8);
  v17 = sub_1E65DAE38();
  v18 = sub_1E65DAE38();
  v19 = v0[26];
  if (v17 == v18)
  {
    (*(v0[24] + 104))(v0[26], *MEMORY[0x1E699D4C8], v0[23]);
    v20 = *(v15 + 16);
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_23:
    v67 = v0[32];

    sub_1E651D43C(v67, MEMORY[0x1E699D488]);
    v100 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v68 = v0[31];
    v69 = v0[32];
    v70 = v0[29];
    v71 = v0[25];
    v72 = v0[22];
    v74 = v0[18];
    v73 = v0[19];
    v75 = v0[16];
    v94 = v0[12];
    v97 = v0[9];
    (*(v0[24] + 8))(v0[26], v0[23]);

    v76 = v0[1];

    return v76(v100);
  }

  v63 = v0[24];
  v62 = v0[25];
  v64 = v0[23];
  v65 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v66 = MEMORY[0x1E699D4D0];
  if (*(v0 + 264) >= 2u)
  {
    v66 = MEMORY[0x1E699D4D8];
  }

  (*(v63 + 104))(v62, *v66, v64);
  (*(v63 + 32))(v19, v62, v64);
  v20 = *(v15 + 16);
  if (!v20)
  {
    goto LABEL_23;
  }

LABEL_6:
  v21 = v0[21];
  v81 = v0[14];
  v82 = v0[17];
  v22 = v0[11];
  v101 = MEMORY[0x1E69E7CC0];
  sub_1E601C670(0, v20, 0);
  v23 = v101;
  v86 = *(v15 + 16);
  v24 = sub_1E65DFFB8();
  v25 = 0;
  v27 = *(v24 - 8);
  result = v24 - 8;
  v79 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v80 = v27;
  v83 = v21;
  v84 = v20;
  v78 = (v22 + 8);
  v85 = v15;
  v77 = v0;
  while (v86 != v25)
  {
    if (v25 >= *(v15 + 16))
    {
      goto LABEL_28;
    }

    v28 = *(v82 + 48);
    v88 = v0[26];
    v90 = v0[22];
    v30 = v0[18];
    v29 = v0[19];
    v32 = v0[15];
    v31 = v0[16];
    v87 = v0[12];
    v92 = v0[10];
    v98 = v23;
    v34 = v0[3];
    v33 = v0[4];
    sub_1E5E1DE44(v79 + *(v80 + 72) * v25, v29 + v28, MEMORY[0x1E699D618]);
    v95 = v30;
    *v30 = v25;
    v35 = (v30 + *(v82 + 48));
    sub_1E5E1EB40(v29 + v28, v35, MEMORY[0x1E699D618]);
    v36 = swift_task_alloc();
    *(v36 + 16) = v33;
    v37 = swift_task_alloc();
    *(v37 + 16) = v33;
    sub_1E5E1DE44(v33, v31, type metadata accessor for AppComposer);
    v38 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v39 = swift_allocObject();
    sub_1E5E1EB40(v31, v39 + v38, type metadata accessor for AppComposer);
    v40 = swift_task_alloc();
    *(v40 + 16) = v34;
    *(v40 + 24) = v33;
    v41 = swift_task_alloc();
    *(v41 + 16) = v34;
    *(v41 + 24) = v33;
    swift_getKeyPath();
    sub_1E65E4EC8();
    v23 = v98;

    sub_1E64634BC(sub_1E651D280, v36, sub_1E651D288, v37, sub_1E651D290, v39, sub_1E651D328, v40, v90, sub_1E651D330, v41, v88, v87, v25, v35);
    (*v78)(v87, v92);

    sub_1E5DFE50C(v95, &qword_1ED07ABD8, &qword_1E6608D78);
    v43 = *(v98 + 16);
    v42 = *(v98 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1E601C670(v42 > 1, v43 + 1, 1);
      v23 = v98;
    }

    v0 = v77;
    v44 = v77[22];
    v45 = v77[20];
    ++v25;
    *(v23 + 16) = v43 + 1;
    result = (*(v83 + 32))(v23 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v43, v44, v45);
    v15 = v85;
    if (v84 == v25)
    {
      v100 = v23;
      v61 = v77[32];

      sub_1E651D43C(v61, MEMORY[0x1E699D488]);
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E6514E34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AppComposer() + 20) + 8) > 1u || (v3 = sub_1E65E0158(), v3 == 2) || (v4 = v3, v5 = sub_1E65E0168(), v5 == 36))
  {
    v6 = type metadata accessor for ActionButtonDescriptor(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    v12 = v5;
    v13 = type metadata accessor for ActionButtonDescriptor(0);
    v14 = a2 + *(v13 + 20);
    v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
    sub_1E65E0178();
    v16 = sub_1E65E0138();
    v18 = v17;
    v19 = v15 + *(type metadata accessor for GalleryDescriptor() + 28);
    sub_1E65E0178();
    *v15 = v16;
    *(v15 + 8) = v18;
    *(v15 + 16) = v4 & 1;
    *(v15 + 17) = v12;
    type metadata accessor for ActionButtonDescriptor.Kind(0);
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v7 = *(*(v13 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v13;
  }

  return v7(v9, v10, 1, v8);
}

int *sub_1E6514FC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64FC0F0(v7);
  v8 = *(a1 + *(type metadata accessor for AppComposer() + 20) + 8);
  v9 = sub_1E65DAE38();
  v10 = sub_1E65DAE38();
  v11 = sub_1E65E4B48();
  v12 = 4.0;
  if (v11)
  {
    v12 = 8.0;
  }

  v13 = 16.0;
  if (v11)
  {
    v13 = 18.0;
  }

  if (v9 == v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v10)
  {
    v15 = 12.0;
  }

  else
  {
    v15 = 8.0;
  }

  sub_1E5E1EB40(v7, a2, type metadata accessor for ArtworkContent);
  result = type metadata accessor for ArtworkDescriptor();
  *(a2 + result[5]) = MEMORY[0x1E69E7CD0];
  v17 = a2 + result[6];
  *v17 = 0;
  *(v17 + 8) = v14;
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(a2 + result[7]) = 1;
  v18 = (a2 + result[8]);
  *v18 = 0;
  v18[1] = 0;
  return result;
}

uint64_t sub_1E6515108@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *a3;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v14 = type metadata accessor for AppComposer();
  sub_1E6501834(v12, a1, a2, *(a3 + *(v14 + 20) + 8), a4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E6515244@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  sub_1E65E0708();
  v6 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  return sub_1E6093784(v8, a1, a3);
}

uint64_t sub_1E65152E0@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v6 = sub_1E65E0678();
  v7 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  return sub_1E60930E0(v9, v6, 0, 0, 0, 0, a1, a3);
}

uint64_t sub_1E651538C(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2[10] = a1;
  v2[11] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = sub_1E65E1458();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[22] = v12;
  v13 = *(v12 - 8);
  v2[23] = v13;
  v14 = *(v13 + 64) + 15;
  v2[24] = swift_task_alloc();
  v15 = sub_1E65D9CC8();
  v2[25] = v15;
  v16 = *(v15 - 8);
  v2[26] = v16;
  v17 = *(v16 + 64) + 15;
  v2[27] = swift_task_alloc();
  v18 = sub_1E65DFDA8();
  v2[28] = v18;
  v19 = *(v18 - 8);
  v2[29] = v19;
  v20 = *(v19 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v21 = type metadata accessor for ItemContext();
  v2[32] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v23 = type metadata accessor for BrowseItemContext();
  v2[35] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[40] = v25;
  v26 = *(v25 - 8);
  v2[41] = v26;
  v27 = *(v26 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v28 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6515790, 0, 0);
}

uint64_t sub_1E6515790()
{
  v178 = v0;
  v177 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = (8 * v4);

  v7 = v1;
  if (v3 > 0xD)
  {
    goto LABEL_86;
  }

  do
  {
    v161 = &v160;
    v162 = v4;
    v8 = *(v0 + 328);
    v9 = *(v0 + 232);
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v164 = &v160 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v164, v5);
    v171 = 0;
    v10 = 0;
    v12 = v7 + 56;
    v11 = *(v7 + 56);
    v163 = v1;
    v13 = 1 << *(v1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v4 = v14 & v11;
    v15 = (v13 + 63) >> 6;
    v173 = v8 + 16;
    v174 = v8;
    v175 = (v8 + 8);
    v165 = (v9 + 8);
    v166 = (v9 + 32);
    v167 = v7;
    while (v4)
    {
      v18 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v5 = *(v0 + 344);
      v22 = *(v0 + 320);
      v1 = *(v0 + 272);
      v23 = *(v0 + 256);
      v24 = *(v7 + 48);
      v25 = *(v174 + 72);
      v172 = v21;
      (*(v174 + 16))(v5, v24 + v25 * v21, v22);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v16 = *(v0 + 272);
        v17 = type metadata accessor for ItemContext;
        goto LABEL_6;
      }

      v26 = *(v0 + 304);
      v27 = *(v0 + 312);
      v1 = *(v0 + 280);
      sub_1E5E1EB40(*(v0 + 272), v27, type metadata accessor for BrowseItemContext);
      sub_1E5E1DE44(v27, v26, type metadata accessor for BrowseItemContext);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        (*v166)(*(v0 + 248), *(v0 + 304), *(v0 + 224));
        sub_1E65DFD68();
        v1 = sub_1E65DFFA8();
        v29 = v28;
        v30 = sub_1E65DFFA8();
        v32 = *(v0 + 344);
        v33 = *(v0 + 312);
        v169 = *(v0 + 320);
        v170 = v32;
        v168 = v33;
        v5 = *(v0 + 248);
        v34 = *(v0 + 224);
        if (v1 == v30 && v29 == v31)
        {

          (*v165)(v5, v34);
          sub_1E651D43C(v168, type metadata accessor for BrowseItemContext);
          (*v175)(v170, v169);
          v7 = v167;
LABEL_22:
          *&v164[(v172 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v172;
          v35 = __OFADD__(v171++, 1);
          if (v35)
          {
            __break(1u);
LABEL_25:
            v36 = sub_1E608A040(v164, v162, v171, *(v0 + 80));
            v1 = v163;
            goto LABEL_26;
          }
        }

        else
        {
          v1 = sub_1E65E6C18();

          (*v165)(v5, v34);
          sub_1E651D43C(v168, type metadata accessor for BrowseItemContext);
          (*v175)(v170, v169);
          v7 = v167;
          if (v1)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v5 = *(v0 + 304);
        sub_1E651D43C(*(v0 + 312), type metadata accessor for BrowseItemContext);
        v16 = v5;
        v17 = type metadata accessor for BrowseItemContext;
LABEL_6:
        sub_1E651D43C(v16, v17);
        (*v175)(*(v0 + 344), *(v0 + 320));
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_25;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v4 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v7 = *(v0 + 80);
  }

  while ((isStackAllocationSafe & 1) != 0);
  v158 = swift_slowAlloc();
  v5 = sub_1E651B53C(v158, v4, v7, sub_1E6517A28);
  MEMORY[0x1E694F1C0](v158, -1, -1);
  v161 = 0;
  v36 = v5;
LABEL_26:
  v169 = v0 + 48;
  *(v0 + 352) = v36;
  v37 = *(v0 + 328);
  v38 = *(v0 + 80);
  v39 = v38 + 56;
  v40 = *(v0 + 232);
  v41 = -1;
  v42 = -1 << *(v1 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v4 = v41 & *(v38 + 7);
  v43 = (63 - v42) >> 6;
  v173 = *(v0 + 328);
  v174 = v37 + 16;
  v44 = *(v0 + 208);
  v171 = (v40 + 32);
  v172 = v37 + 8;
  v170 = (v40 + 8);
  v168 = v44;
  v167 = v44 + 32;
  v175 = v38;

  v45 = 0;
  v46 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          *(v0 + 360) = v46;
          if (v4)
          {
            goto LABEL_35;
          }

          do
          {
            v47 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_85;
            }

            if (v47 >= v43)
            {
              v90 = *(v0 + 80);

              v91 = MEMORY[0x1E69E7CC0];
              v92 = sub_1E6428C6C(MEMORY[0x1E69E7CC0]);
              *(v0 + 48) = v92;
              v93 = v46[32];
              *(v0 + 456) = v93;
              v94 = -1;
              v95 = -1 << v93;
              v96 = *(v46 + 8);
              if (-v95 < 64)
              {
                v94 = ~(-1 << -v95);
              }

              *(v0 + 368) = v92;
              v97 = v94 & v96;
              if (v97)
              {
                v98 = 0;
                v99 = *(v0 + 360);
LABEL_67:
                *(v0 + 376) = v97;
                *(v0 + 384) = v98;
                v102 = __clz(__rbit64(v97)) | (v98 << 6);
                v103 = *(*(v99 + 48) + v102);
                v104 = *(v0 + 88);
                *(v0 + 457) = v103;
                v105 = *(*(v99 + 56) + 8 * v102);
                *(v0 + 392) = v105;
                v106 = v104 + *(type metadata accessor for AppComposer() + 20);
                v107 = *(type metadata accessor for AppEnvironment() + 48);

                v108 = CatalogService.fetchRemoteCatalogLockups.getter();
                *(v0 + 400) = v109;
                v110 = sub_1E634BE4C(v103);
                v175 = (v108 + *v108);
                v111 = v108[1];
                v112 = swift_task_alloc();
                *(v0 + 408) = v112;
                *v112 = v0;
                v112[1] = sub_1E65167C8;
                v113 = *MEMORY[0x1E69E9840];
                v114 = v175;

                return v114(v110, v105);
              }

              else
              {
                v100 = 0;
                v101 = ((63 - v95) >> 6) - 1;
                v99 = *(v0 + 360);
                while (v101 != v100)
                {
                  v98 = v100 + 1;
                  v97 = *(v99 + 8 * v100++ + 72);
                  if (v97)
                  {
                    goto LABEL_67;
                  }
                }

                v117 = *(v0 + 184);
                v116 = *(v0 + 192);
                v119 = *(v0 + 168);
                v118 = *(v0 + 176);
                v121 = *(v0 + 152);
                v120 = *(v0 + 160);
                v122 = *(v0 + 88);

                v123 = *v122;
                swift_getKeyPath();
                sub_1E65E4EC8();

                sub_1E65E4C98();
                (*(v117 + 8))(v116, v118);
                sub_1E5FAB460(v119, v120, &qword_1ED072910, &qword_1E65EC030);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload > 2)
                {
                  v128 = 0;
                  v125 = v169;
                }

                else
                {
                  v125 = v169;
                  if (EnumCaseMultiPayload)
                  {
                    if (EnumCaseMultiPayload == 1)
                    {
                      v126 = *(v0 + 160);
                      v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
                      v128 = *v126;
                      v129 = sub_1E65D76A8();
                      (*(*(v129 - 8) + 8))(&v126[v127], v129);
                    }

                    else
                    {
                      sub_1E5DFE50C(*(v0 + 160), &qword_1ED072910, &qword_1E65EC030);
                      v128 = 0;
                    }
                  }

                  else
                  {
                    v128 = **(v0 + 160);
                  }
                }

                v130 = *(v0 + 352);
                v131 = *(v0 + 80);
                v132 = *(v0 + 88);
                v133 = swift_task_alloc();
                v133[2] = v125;
                v133[3] = v128;
                v133[4] = v132;
                *(v0 + 432) = sub_1E6402E7C(sub_1E651D244, v133, v131);

                if (*(v130 + 16))
                {
                  v134 = swift_task_alloc();
                  *(v0 + 440) = v134;
                  *v134 = v0;
                  v134[1] = sub_1E65172DC;
                  v136 = *(v0 + 88);
                  v135 = *(v0 + 96);
                  v137 = *MEMORY[0x1E69E9840];

                  return sub_1E6518F28(v135);
                }

                else
                {
                  v138 = *(v0 + 352);

                  v139 = *(v0 + 432);
                  v141 = *(v0 + 336);
                  v140 = *(v0 + 344);
                  v142 = *(v0 + 304);
                  v143 = *(v0 + 312);
                  v145 = *(v0 + 288);
                  v144 = *(v0 + 296);
                  v146 = *(v0 + 272);
                  v148 = *(v0 + 240);
                  v147 = *(v0 + 248);
                  v166 = *(v0 + 264);
                  v167 = v147;
                  v149 = *(v0 + 216);
                  v168 = v148;
                  v169 = v149;
                  v151 = *(v0 + 160);
                  v150 = *(v0 + 168);
                  v170 = *(v0 + 192);
                  v171 = v150;
                  v152 = *(v0 + 144);
                  v172 = v151;
                  v173 = v152;
                  v153 = *(v0 + 96);
                  v174 = *(v0 + 120);
                  v175 = v153;
                  v176 = v91;
                  sub_1E5FAA3C8(v139);
                  v154 = sub_1E600A848(v176);

                  v155 = *(v0 + 48);

                  v156 = *(v0 + 8);
                  v157 = *MEMORY[0x1E69E9840];

                  return v156(v154);
                }
              }
            }

            v4 = *&v39[8 * v47];
            ++v45;
          }

          while (!v4);
          v45 = v47;
LABEL_35:
          v1 = *(v0 + 320);
          v49 = *(v0 + 256);
          v48 = *(v0 + 264);
          v50 = __clz(__rbit64(v4));
          v4 &= v4 - 1;
          (*(v173 + 16))(*(v0 + 336), *(v175 + 6) + *(v173 + 72) * (v50 | (v45 << 6)), v1);
          sub_1E65E04E8();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v5 = *(v0 + 264);
            (*v172)(*(v0 + 336), *(v0 + 320));
            sub_1E651D43C(v5, type metadata accessor for ItemContext);
            continue;
          }

          break;
        }

        v52 = *(v0 + 288);
        v51 = *(v0 + 296);
        v53 = *(v0 + 280);
        sub_1E5E1EB40(*(v0 + 264), v51, type metadata accessor for BrowseItemContext);
        sub_1E5E1DE44(v51, v52, type metadata accessor for BrowseItemContext);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          v5 = *(v0 + 336);
          v1 = *(v0 + 320);
          v58 = *(v0 + 288);
          sub_1E651D43C(*(v0 + 296), type metadata accessor for BrowseItemContext);
          (*v172)(v5, v1);
          sub_1E651D43C(v58, type metadata accessor for BrowseItemContext);
          continue;
        }

        break;
      }

      (*v171)(*(v0 + 240), *(v0 + 288), *(v0 + 224));
      sub_1E65DFD68();
      v54 = sub_1E65DFFA8();
      v56 = v55;
      if (v54 == sub_1E65DFFA8() && v56 == v57)
      {

        goto LABEL_42;
      }

      v59 = sub_1E65E6C18();

      if (v59)
      {
LABEL_42:
        v5 = *(v0 + 336);
        v1 = *(v0 + 320);
        v60 = *(v0 + 296);
        (*v170)(*(v0 + 240), *(v0 + 224));
        sub_1E651D43C(v60, type metadata accessor for BrowseItemContext);
        (*v172)(v5, v1);
        continue;
      }

      break;
    }

    v61 = *(v0 + 240);
    LODWORD(v166) = sub_1E65DFD58();
    v165 = sub_1E65DFD78();
    v62 = qword_1E6608DD0[sub_1E65DFD68()];
    v63 = *(v0 + 240);
    v64 = *(v0 + 216);
    sub_1E65DFD88();
    sub_1E65D9C88();
    v65 = v46;
    v66 = v166;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176 = v65;
    v1 = sub_1E6417674(v66);
    v69 = v65[2];
    v70 = (v68 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      __break(1u);
LABEL_92:
      __break(1u);
    }

    v72 = v68;
    if (v65[3] >= v71)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v68)
        {
LABEL_52:
          v78 = v65[7];
          v79 = *(v78 + 8 * v1);
          v80 = swift_isUniquelyReferenced_nonNull_native();
          *(v78 + 8 * v1) = v79;
          if (v80)
          {
            v81 = v78;
          }

          else
          {
            v79 = sub_1E64F610C(0, v79[2] + 1, 1, v79);
            v81 = v78;
            *(v78 + 8 * v1) = v79;
          }

          v83 = v79[2];
          v82 = v79[3];
          v165 = v65;
          v166 = (v83 + 1);
          if (v83 >= v82 >> 1)
          {
            *(v81 + 8 * v1) = sub_1E64F610C(v82 > 1, v166, 1, v79);
          }

          v84 = *(v0 + 336);
          v85 = *(v0 + 320);
          v5 = *(v0 + 296);
          v86 = *(v0 + 240);
          v87 = *(v0 + 224);
          v164 = *(v0 + 216);
          v88 = *(v0 + 200);
          v162 = v85;
          v163 = v88;
          (*v170)(v86, v87);
          sub_1E651D43C(v5, type metadata accessor for BrowseItemContext);
          (*v172)(v84, v162);
          v89 = *(v81 + 8 * v1);
          *(v89 + 16) = v166;
          (*(v168 + 32))(v89 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v83, v164, v163);
          v46 = v165;
          continue;
        }
      }

      else
      {
        sub_1E64263F0();
        v65 = v176;
        if (v72)
        {
          goto LABEL_52;
        }
      }

LABEL_50:
      v65[(v1 >> 6) + 8] |= 1 << v1;
      *(v65[6] + v1) = v66;
      *(v65[7] + 8 * v1) = MEMORY[0x1E69E7CC0];
      v76 = v65[2];
      v35 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v35)
      {
        goto LABEL_92;
      }

      v65[2] = v77;
      goto LABEL_52;
    }

    break;
  }

  sub_1E641E744(v71, isUniquelyReferenced_nonNull_native);
  v73 = v176;
  v74 = sub_1E6417674(v66);
  if ((v72 & 1) == (v75 & 1))
  {
    v1 = v74;
    v65 = v73;
    if (v72)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v159 = *MEMORY[0x1E69E9840];

  return sub_1E65E6C68();
}

uint64_t sub_1E65167C8(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v7 = v3[50];
  v8 = v3[49];
  if (v1)
  {
    v9 = v4[44];

    v10 = sub_1E65176C4;
  }

  else
  {

    v10 = sub_1E651696C;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1E651696C()
{
  v120 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 56) = MEMORY[0x1E69E7CC0];
    sub_1E601BF24(0, v2, 0);
    v3 = *(v0 + 56);
    v112 = sub_1E65D8258();
    v4 = *(v112 - 8);
    v110 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v107 = *(v4 + 72);
    do
    {
      v116 = v2;
      v6 = *(v0 + 144);
      v7 = *(v0 + 457);
      v110(&v6[*(*(v0 + 128) + 48)], v5, v112);
      v114 = sub_1E65DFB58();
      v9 = v8;
      v10 = sub_1E65D8078();
      v12 = v11;
      v13 = sub_1E65D81B8();
      v15 = v3;
      if (v14)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      *(v0 + 16) = v10;
      *(v0 + 24) = v12;

      v18 = v16;
      v3 = v15;
      MEMORY[0x1E694D7C0](v18, v17);

      v19 = *(v0 + 24);
      *(v0 + 32) = *(v0 + 16);
      *(v0 + 40) = v19;

      MEMORY[0x1E694D7C0](v114, v9);

      v20 = *(v0 + 40);
      *v6 = *(v0 + 32);
      *(v6 + 1) = v20;
      *(v0 + 56) = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E601BF24(v21 > 1, v22 + 1, 1);
        v3 = *(v0 + 56);
      }

      v24 = *(v0 + 136);
      v23 = *(v0 + 144);
      *(v3 + 16) = v22 + 1;
      sub_1E5FAB460(v23, v3 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, &qword_1ED072088, &qword_1E65EA770);
      v5 += v107;
      v2 = v116 - 1;
    }

    while (v116 != 1);
    v25 = *(v0 + 416);

    if (*(v3 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v27 = *(v0 + 416);

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
      v26 = sub_1E65E6A28();
      goto LABEL_16;
    }
  }

  v26 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v28 = *(v0 + 424);
  *(v0 + 64) = v26;

  sub_1E64346A8(v29, 1, (v0 + 64));
  if (v28)
  {
    v30 = *MEMORY[0x1E69E9840];

    return swift_unexpectedError();
  }

  v32 = *(v0 + 457);

  v33 = *(v0 + 64);
  v34 = *(v0 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v34;
  v36 = sub_1E6417674(v32);
  v38 = *(v34 + 16);
  v39 = (v37 & 1) == 0;
  v40 = __OFADD__(v38, v39);
  v41 = v38 + v39;
  if (v40)
  {
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v32) = v37;
  if (*(v34 + 24) >= v41)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

LABEL_30:
    v49 = v36;
    sub_1E64263DC();
    v36 = v49;
    v46 = *(v0 + 72);
    if (v32)
    {
      goto LABEL_28;
    }

LABEL_31:
    v50 = *(v0 + 457);
    v46[(v36 >> 6) + 8] |= 1 << v36;
    *(v46[6] + v36) = v50;
    *(v46[7] + 8 * v36) = v33;
    v51 = v46[2];
    v40 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v40)
    {
      goto LABEL_57;
    }

    v46[2] = v52;
    goto LABEL_33;
  }

  v42 = *(v0 + 457);
  sub_1E641E71C(v41, isUniquelyReferenced_nonNull_native);
  v43 = *(v0 + 72);
  v36 = sub_1E6417674(v42);
  if ((v32 & 1) != (v44 & 1))
  {
    v45 = *MEMORY[0x1E69E9840];

    return sub_1E65E6C68();
  }

LABEL_27:
  v46 = *(v0 + 72);
  if ((v32 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v47 = v46[7];
  v48 = *(v47 + 8 * v36);
  *(v47 + 8 * v36) = v33;

LABEL_33:
  *(v0 + 48) = v46;
  v54 = *(v0 + 376);
  v53 = *(v0 + 384);
  *(v0 + 368) = v46;
  v55 = (v54 - 1) & v54;
  if (v55)
  {
    v56 = *(v0 + 360);
    goto LABEL_39;
  }

  do
  {
    v57 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
    }

    v56 = *(v0 + 360);
    if (v57 >= (((1 << *(v0 + 456)) + 63) >> 6))
    {
      v71 = *(v0 + 184);
      v70 = *(v0 + 192);
      v73 = *(v0 + 168);
      v72 = *(v0 + 176);
      v75 = *(v0 + 152);
      v74 = *(v0 + 160);
      v76 = *(v0 + 88);

      v77 = *v76;
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E4C98();
      (*(v71 + 8))(v70, v72);
      sub_1E5FAB460(v73, v74, &qword_1ED072910, &qword_1E65EC030);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v81 = **(v0 + 160);
          goto LABEL_49;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v79 = *(v0 + 160);
          v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
          v81 = *v79;
          v82 = sub_1E65D76A8();
          (*(*(v82 - 8) + 8))(&v79[v80], v82);
          goto LABEL_49;
        }

        sub_1E5DFE50C(*(v0 + 160), &qword_1ED072910, &qword_1E65EC030);
      }

      v81 = 0;
LABEL_49:
      v83 = *(v0 + 352);
      v84 = *(v0 + 80);
      v85 = *(v0 + 88);
      v86 = swift_task_alloc();
      v86[2] = v0 + 48;
      v86[3] = v81;
      v86[4] = v85;
      *(v0 + 432) = sub_1E6402E7C(sub_1E651D244, v86, v84);

      if (*(v83 + 16))
      {
        v87 = swift_task_alloc();
        *(v0 + 440) = v87;
        *v87 = v0;
        v87[1] = sub_1E65172DC;
        v89 = *(v0 + 88);
        v88 = *(v0 + 96);
        v90 = *MEMORY[0x1E69E9840];

        return sub_1E6518F28(v88);
      }

      else
      {
        v91 = *(v0 + 352);

        v93 = *(v0 + 336);
        v92 = *(v0 + 344);
        v95 = *(v0 + 304);
        v94 = *(v0 + 312);
        v97 = *(v0 + 288);
        v96 = *(v0 + 296);
        v98 = *(v0 + 264);
        v99 = *(v0 + 272);
        v104 = *(v0 + 248);
        v105 = *(v0 + 240);
        v106 = *(v0 + 216);
        v108 = *(v0 + 192);
        v109 = *(v0 + 168);
        v111 = *(v0 + 160);
        v113 = *(v0 + 144);
        v115 = *(v0 + 120);
        v118 = *(v0 + 96);
        v119 = MEMORY[0x1E69E7CC0];
        sub_1E5FAA3C8(*(v0 + 432));
        v103 = sub_1E600A848(v119);

        v100 = *(v0 + 48);

        v101 = *(v0 + 8);
        v102 = *MEMORY[0x1E69E9840];

        return v101(v103);
      }
    }

    v55 = *(v56 + 8 * v57 + 64);
    ++v53;
  }

  while (!v55);
  v53 = v57;
LABEL_39:
  *(v0 + 376) = v55;
  *(v0 + 384) = v53;
  v58 = __clz(__rbit64(v55)) | (v53 << 6);
  v59 = *(*(v56 + 48) + v58);
  v60 = *(v0 + 88);
  *(v0 + 457) = v59;
  v61 = *(*(v56 + 56) + 8 * v58);
  *(v0 + 392) = v61;
  v62 = v60 + *(type metadata accessor for AppComposer() + 20);
  v63 = *(type metadata accessor for AppEnvironment() + 48);

  v64 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 400) = v65;
  v66 = sub_1E634BE4C(v59);
  v117 = (v64 + *v64);
  v67 = v64[1];
  v68 = swift_task_alloc();
  *(v0 + 408) = v68;
  *v68 = v0;
  v68[1] = sub_1E65167C8;
  v69 = *MEMORY[0x1E69E9840];

  return v117(v66, v61);
}

uint64_t sub_1E65172DC()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 440);
  v9 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 352);

    v5 = sub_1E6517844;
  }

  else
  {
    v5 = sub_1E6517438;
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6517438()
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[44];

    sub_1E5DFE50C(v0[12], &qword_1ED075868, &qword_1E65F1E60);
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = v0[56];
    v7 = v0[44];
    v8 = v0[15];
    v9 = v0[11];
    (*(v2 + 32))(v8, v3, v1);
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v5 = sub_1E6402E7C(sub_1E651D264, v10, v7);

    (*(v2 + 8))(v8, v1);
  }

  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[34];
  v23 = v0[33];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[27];
  v27 = v0[24];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[18];
  v31 = v0[15];
  v32 = v0[12];
  sub_1E5FAA3C8(v0[54]);
  v18 = sub_1E600A848(v5);

  v19 = v0[6];

  v20 = v0[1];
  v21 = *MEMORY[0x1E69E9840];

  return v20(v18);
}

uint64_t sub_1E65176C4()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[38];
  v6 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v10 = v0[33];
  v9 = v0[34];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[12];

  v11 = v0[1];
  v12 = v0[53];
  v13 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1E6517844()
{
  v24 = *MEMORY[0x1E69E9840];
  (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
  sub_1E5DFE50C(v0[12], &qword_1ED075868, &qword_1E65F1E60);
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[33];
  v8 = v0[34];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[20];
  v20 = v0[18];
  v21 = v0[15];
  v22 = v0[12];
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E5FAA3C8(v0[54]);
  v13 = sub_1E600A848(v23);

  v9 = v0[6];

  v10 = v0[1];
  v11 = *MEMORY[0x1E69E9840];

  return v10(v13);
}

uint64_t sub_1E6517A28()
{
  v0 = sub_1E65DFDA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ItemContext();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseItemContext();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04E8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for ItemContext;
    v23 = v8;
LABEL_10:
    sub_1E651D43C(v23, v22);
    v21 = 0;
    return v21 & 1;
  }

  sub_1E5E1EB40(v8, v15, type metadata accessor for BrowseItemContext);
  sub_1E5E1DE44(v15, v13, type metadata accessor for BrowseItemContext);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1E651D43C(v15, type metadata accessor for BrowseItemContext);
    v23 = v13;
    v22 = type metadata accessor for BrowseItemContext;
    goto LABEL_10;
  }

  (*(v1 + 32))(v4, v13, v0);
  sub_1E65DFD68();
  v16 = sub_1E65DFFA8();
  v18 = v17;
  if (v16 == sub_1E65DFFA8() && v18 == v19)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1E65E6C18();
  }

  (*(v1 + 8))(v4, v0);
  sub_1E651D43C(v15, type metadata accessor for BrowseItemContext);
  return v21 & 1;
}

uint64_t sub_1E6517D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v149 = a4;
  v153 = a3;
  v157 = a2;
  v161 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v140 = &v124[-v8];
  v142 = sub_1E65D72D8();
  v141 = *(v142 - 8);
  v9 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v139 = &v124[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v143 = &v124[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v152 = &v124[-v16];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v134 = *(v135 - 8);
  v17 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v124[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v151 = &v124[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v128 = &v124[-v24];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v126 = *(v127 - 8);
  v25 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v27 = &v124[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v129 = &v124[-v30];
  v31 = sub_1E65D9AC8();
  v146 = *(v31 - 8);
  v147 = v31;
  v32 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v131 = &v124[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_1E65D7848();
  v130 = *(v132 - 8);
  v34 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v145 = &v124[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D0, &qword_1E65F1FD8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v144 = &v124[-v38];
  v138 = sub_1E65DF978();
  v136 = *(v138 - 8);
  v39 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v150 = &v124[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_1E65D8258();
  v154 = *(v41 - 8);
  v155 = v41;
  v42 = *(v154 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v124[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v156 = &v124[-v46];
  v47 = sub_1E65DFDA8();
  v48 = *(v47 - 8);
  v158 = v47;
  v159 = v48;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v160 = &v124[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = type metadata accessor for ItemContext();
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v148 = &v124[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v124[-v55];
  v57 = type metadata accessor for BrowseItemContext();
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v124[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v124[-v62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v137 = a1;
  sub_1E65E04E8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v87 = type metadata accessor for ItemContext;
    v88 = v56;
LABEL_17:
    sub_1E651D43C(v88, v87);
    v89 = 1;
    v90 = v161;
    goto LABEL_18;
  }

  sub_1E5E1EB40(v56, v63, type metadata accessor for BrowseItemContext);
  sub_1E5E1DE44(v63, v61, type metadata accessor for BrowseItemContext);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1E651D43C(v63, type metadata accessor for BrowseItemContext);
    v88 = v61;
    v87 = type metadata accessor for BrowseItemContext;
    goto LABEL_17;
  }

  v64 = v159;
  v65 = v160;
  v66 = v61;
  v67 = v158;
  (*(v159 + 32))(v160, v66, v158);
  v68 = sub_1E65DFD58();
  v69 = *v157;
  if (!*(*v157 + 16))
  {
    goto LABEL_15;
  }

  v70 = sub_1E6417674(v68);
  if ((v71 & 1) == 0)
  {
    goto LABEL_15;
  }

  v72 = *(*(v69 + 56) + 8 * v70);

  v73 = sub_1E65DFD38();
  if (!*(v72 + 16))
  {

LABEL_14:
    v64 = v159;
    v65 = v160;
LABEL_15:
    (*(v64 + 8))(v65, v67);
LABEL_16:
    v87 = type metadata accessor for BrowseItemContext;
    v88 = v63;
    goto LABEL_17;
  }

  v75 = sub_1E6215038(v73, v74);
  v77 = v76;

  if ((v77 & 1) == 0)
  {

    v67 = v158;
    goto LABEL_14;
  }

  v78 = v154;
  v79 = *(v72 + 56) + *(v154 + 72) * v75;
  v80 = v155;
  (*(v154 + 16))(v45, v79, v155);

  v81 = v156;
  (*(v78 + 32))(v156, v45, v80);
  if (v153)
  {
    v82 = sub_1E65D80B8();
    v84 = v83;
    v164 = v82;
    v165 = v83;
    v86 = v85 & 1;
    v166 = v85 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v82, v84, v86);
    if (v162 == 3)
    {
      v81 = v156;
    }

    else
    {
      v93 = sub_1E637CE70(v162, v153);
      v81 = v156;
      if ((v93 & 1) == 0)
      {
LABEL_21:
        (*(v154 + 8))(v81, v155);
        (*(v159 + 8))(v160, v158);
        goto LABEL_16;
      }
    }
  }

  v94 = sub_1E65D80C8();
  v96 = v95;
  v164 = v94;
  v165 = v95;
  v98 = v97 & 1;
  v166 = v97 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7F98();
  sub_1E5F87058(v94, v96, v98);
  v99 = MEMORY[0x1E69479A0](v162, v163);
  if (v99 == 9)
  {
    goto LABEL_21;
  }

  LODWORD(v157) = v99;
  v100 = v159;
  v101 = v144;
  v102 = v158;
  (*(v159 + 16))(v144, v160, v158);
  (*(v100 + 56))(v101, 0, 1, v102);
  v125 = sub_1E65DFD58();
  v103 = *v149;
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  v153 = v103;
  sub_1E65E4EC8();

  v104 = v128;
  v105 = v127;
  sub_1E65E4C98();
  v106 = v129;
  sub_1E60EEE88(v129);
  sub_1E5DFE50C(v104, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v126 + 8))(v27, v105);
  v108 = v146;
  v107 = v147;
  v109 = *(v146 + 48);
  if (v109(v106, 1, v147) == 1)
  {
    v110 = v131;
    MEMORY[0x1E6941490]();
    if (v109(v106, 1, v107) != 1)
    {
      sub_1E5DFE50C(v106, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    v110 = v131;
    (*(v108 + 32))(v131, v106, v107);
  }

  v111 = v149 + *(type metadata accessor for AppComposer() + 20);
  v112 = type metadata accessor for AppEnvironment();
  v113 = v144;
  v114 = v145;
  sub_1E6126760(v144, v125, v157, v145, &v111[*(v112 + 136)], v150);
  (*(v146 + 8))(v110, v147);
  (*(v130 + 8))(v114, v132);
  sub_1E5DFE50C(v113, &qword_1ED0758D0, &qword_1E65F1FD8);
  sub_1E65E04E8();
  swift_getKeyPath();
  v115 = v133;
  sub_1E65E4EC8();

  v116 = sub_1E65DFD28();
  sub_1E6501834(v115, v116, v117, v111[8], v151);

  (*(v134 + 8))(v115, v135);
  sub_1E62E2980(v152);
  v118 = v140;
  sub_1E65DF938();
  v119 = v141;
  v120 = *(v141 + 48);
  v121 = v142;
  if (v120(v118, 1, v142) == 1)
  {
    v122 = v139;
    sub_1E65D7228();
    v123 = v122;
    if (v120(v118, 1, v121) != 1)
    {
      sub_1E5DFE50C(v118, &qword_1ED072D90, &qword_1E66040F0);
    }
  }

  else
  {
    v123 = v139;
    (*(v119 + 32))(v139, v118, v121);
  }

  sub_1E622BB88(v123, v143);
  (*(v119 + 8))(v123, v121);
  v157 = type metadata accessor for ActionButtonDescriptor(0);
  v153 = type metadata accessor for ArtworkDescriptor();
  v149 = type metadata accessor for ContextMenu(0);
  v147 = type metadata accessor for ItemMetrics();
  v146 = type metadata accessor for ViewDescriptor();
  v145 = sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v90 = v161;
  sub_1E65E0488();
  (*(v136 + 8))(v150, v138);
  (*(v154 + 8))(v156, v155);
  (*(v159 + 8))(v160, v158);
  sub_1E651D43C(v63, type metadata accessor for BrowseItemContext);
  v89 = 0;
LABEL_18:
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v91 - 8) + 56))(v90, v89, 1, v91);
}

uint64_t sub_1E6518F28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65E13D8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65E1248();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_1E65E1518();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65190A0, 0, 0);
}

uint64_t sub_1E65190A0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  sub_1E65E14F8();
  v3 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 144) = v3;
  v4 = v2 + v3 + *(type metadata accessor for AppEnvironment() + 76);
  v5 = MarketingService.fetchMarketingItem.getter();
  *(v0 + 104) = v6;
  sub_1E65E1508();
  v7 = sub_1E65E1268();
  v9 = v8;
  *(v0 + 112) = v8;
  v13 = (v5 + *v5);
  v10 = v5[1];
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1E651920C;

  return (v13)(v7, v9, 0, 0);
}

uint64_t sub_1E651920C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = v1;

  v7 = v4[14];
  v8 = v4[13];
  if (v1)
  {

    v9 = sub_1E651950C;
  }

  else
  {

    v4[17] = a1;
    v9 = sub_1E6519380;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E6519380()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 96);
  v3 = *(v0 + 64);
  v11 = *(v0 + 56);
  v12 = *(v0 + 88);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v10 = *(v0 + 16);
  v7 = *(*(v0 + 24) + *(v0 + 144) + 8);
  sub_1E65E1238();
  (*(v5 + 104))(v4, *MEMORY[0x1E699E7F8], v6);
  sub_1E65E13C8();
  (*(v5 + 8))(v4, v6);
  swift_getObjectType();
  sub_1E65E1348();

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v11);
  (*(v12 + 8))(v14, v13);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E651950C()
{
  v1 = v0[9];
  v2 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1E65195A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v40 = a1;
  v50 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = v39 - v10;
  v41 = type metadata accessor for ItemContext();
  v11 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v47 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v45 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = v39 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABC8, &qword_1E6608D48);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v39 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v43 = *(v26 - 8);
  v44 = v26;
  v27 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (v39 - v28);
  v30 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v31 = type metadata accessor for AppComposer();
  sub_1E6257A90(v29, *(a2 + *(v31 + 20) + 8), v25);
  sub_1E5DFD1CC(v25, v23, &qword_1ED07ABC8, &qword_1E6608D48);
  if ((*(v14 + 48))(v23, 1, v13) == 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED07ABC8, &qword_1E6608D48);
    (*(v43 + 8))(v29, v44);
    sub_1E5DFE50C(v23, &qword_1ED07ABC8, &qword_1E6608D48);
    v32 = 1;
    v33 = v50;
  }

  else
  {
    v34 = v46;
    sub_1E5FAB460(v23, v46, &qword_1ED072610, &qword_1E65EB930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
    sub_1E65E04E8();
    sub_1E5DFD1CC(v34, v45, &qword_1ED072610, &qword_1E65EB930);
    v35 = type metadata accessor for ContextMenu(0);
    (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
    v36 = type metadata accessor for ItemMetrics();
    (*(*(v36 - 8) + 56))(v49, 1, 1, v36);
    v42 = type metadata accessor for ActionButtonDescriptor(0);
    v40 = type metadata accessor for ArtworkDescriptor();
    v39[2] = type metadata accessor for ViewDescriptor();
    v39[1] = sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    v39[0] = sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
    sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext);
    sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v33 = v50;
    sub_1E65E0488();
    sub_1E5DFE50C(v46, &qword_1ED072610, &qword_1E65EB930);
    sub_1E5DFE50C(v25, &qword_1ED07ABC8, &qword_1E6608D48);
    (*(v43 + 8))(v29, v44);
    v32 = 0;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v37 - 8) + 56))(v33, v32, 1, v37);
}

uint64_t sub_1E6519D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65DFAC8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65DFA08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(type metadata accessor for AppState() + 96) + 8);
  if (*(v15 + 16) && (v16 = sub_1E6215038(a2, a3), (v17 & 1) != 0))
  {
    (*(v11 + 16))(v14, *(v15 + 56) + *(v11 + 72) * v16, v10);
    sub_1E65DF9C8();
    (*(v11 + 8))(v14, v10);
    v18 = sub_1E65DFAB8();
    sub_1E651D43C(v9, MEMORY[0x1E699D4C0]);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1E6519EB0(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA880;

  return v5();
}

uint64_t sub_1E6519F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a3;
  v82 = a2;
  v84 = a4;
  v76 = sub_1E65DFAC8();
  v5 = *(*(v76 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v76);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v71 - v8;
  v9 = sub_1E65DFA08();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB90, &qword_1E6608B68);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v71 - v16;
  v86 = sub_1E65DFB08();
  v17 = *(v86 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v86);
  v80 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v71 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v71 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v71 - v31;
  v33 = sub_1E65D7848();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AppState();
  v38 = v85[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v88 = a1;
  sub_1E65E4C98();
  sub_1E5E1F544(v32);
  sub_1E5DFE50C(v28, &qword_1ED071F78, &unk_1E65EA3F0);
  v39 = *(v34 + 48);
  if (v39(v32, 1, v33) == 1)
  {
    sub_1E65D77C8();
    if (v39(v32, 1, v33) != 1)
    {
      sub_1E5DFE50C(v32, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v34 + 32))(v37, v32, v33);
  }

  v79 = v37;
  v40 = *(v88 + v85[24] + 8);
  sub_1E6143704(v23);
  v41 = sub_1E65DFAF8();
  v43 = v42;
  v78 = *(v17 + 8);
  v78(v23, v86);
  if (*(v40 + 16))
  {
    v44 = sub_1E6215038(v41, v43);
    v46 = v45;

    v47 = v87;
    if (v46)
    {
      v49 = v74;
      v48 = v75;
      v50 = *(v40 + 56) + *(v74 + 72) * v44;
      v51 = v71;
      (*(v74 + 16))(v71, v50, v75);
      v52 = v77;
      sub_1E65DF9D8();
      (*(v49 + 8))(v51, v48);
      v53 = v86;
      (*(v17 + 56))(v52, 0, 1, v86);
      (*(v17 + 32))(v47, v52, v53);
      goto LABEL_11;
    }
  }

  else
  {

    v47 = v87;
  }

  v54 = v77;
  v53 = v86;
  (*(v17 + 56))(v77, 1, 1, v86);
  sub_1E6143704(v47);
  if ((*(v17 + 48))(v54, 1, v53) != 1)
  {
    sub_1E5DFE50C(v54, &qword_1ED07AB90, &qword_1E6608B68);
  }

LABEL_11:
  v55 = *(v81 + *(type metadata accessor for AppComposer() + 20) + 8);
  LODWORD(v86) = sub_1E65DAE08();
  v56 = v88 + v85[27];
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  sub_1E65E2358();
  sub_1E63969B4();
  v58 = v80;
  sub_1E6143704(v80);
  v59 = sub_1E65DFAF8();
  v61 = v60;
  v78(v58, v53);
  if (!*(v40 + 16))
  {

    goto LABEL_15;
  }

  v62 = sub_1E6215038(v59, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return sub_1E65DF9E8();
  }

  v65 = *(v40 + 56);
  v67 = v74;
  v66 = v75;
  v68 = v72;
  (*(v74 + 16))(v72, v65 + *(v74 + 72) * v62, v75);
  v69 = v73;
  sub_1E65DF9C8();
  (*(v67 + 8))(v68, v66);
  sub_1E5E1EB40(v69, v83, MEMORY[0x1E699D4C0]);
  return sub_1E65DF9E8();
}

uint64_t sub_1E651A730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v57 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079378, &qword_1E66014E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v48 - v6;
  v54 = sub_1E65DFB08();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DFC18();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65DFAC8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E0218();
  v52 = *(v20 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  sub_1E65DF9C8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = MEMORY[0x1E699D4C0];
    goto LABEL_5;
  }

  v24 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218) + 64)];

  sub_1E65DFA58();
  if (swift_getEnumCaseMultiPayload())
  {
    v25 = MEMORY[0x1E699D488];
LABEL_5:
    sub_1E651D43C(v19, v25);
    goto LABEL_6;
  }

  v37 = *(v52 + 32);
  v49 = v20;
  v37(v23, v19, v20);
  sub_1E65E01F8();
  v51 = sub_1E65DFBC8();
  v48 = v38;
  v39 = v53 + 8;
  v40 = *(v53 + 8);
  v40(v15, v12);
  sub_1E65E01F8();
  v41 = sub_1E65DFC08();
  v53 = v39;
  v50 = v40;
  v40(v15, v12);
  v42 = v48;
  v43 = sub_1E637D220(0, v41);

  if (v43)
  {
    v44 = v57 + *(type metadata accessor for AppState() + 268);

    sub_1E60F225C(&v58, v51, v42);
  }

  sub_1E65E01F8();
  v45 = sub_1E65DFC08();
  v50(v15, v12);
  v46 = sub_1E637D220(1, v45);

  if (v46)
  {
    v47 = v57 + *(type metadata accessor for AppState() + 272) + 8;
    sub_1E60F225C(&v58, v51, v42);

    (*(v52 + 8))(v23, v49);
  }

  else
  {
    (*(v52 + 8))(v23, v49);
  }

LABEL_6:
  sub_1E6143704(v11);
  v26 = sub_1E65DFAF8();
  v28 = v27;
  (*(v8 + 8))(v11, v54);
  v29 = sub_1E65DFA08();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v7, v56, v29);
  (*(v30 + 56))(v7, 0, 1, v29);
  v31 = type metadata accessor for AppState();
  v32 = v57;
  v33 = v57 + *(v31 + 96) + 8;
  sub_1E64097CC(v7, v26, v28);
  sub_1E65DF9F8();
  v34 = v32 + *(v31 + 108);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  return sub_1E65E2368();
}

uint64_t sub_1E651ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E65DFA08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DFA18();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - v17;
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5E1DE44(a1, v14, MEMORY[0x1E699D470]);
  (*(v9 + 16))(v11, a3, v8);
  v20 = *(a5 + 24);
  v30[0] = *a5;
  v30[1] = v20;
  v21 = *(a5 + 56);
  v30[2] = *(a5 + 40);
  v30[3] = v21;
  v30[4] = *(a5 + 72);
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v13 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5E1EB40(v14, v25 + v22, MEMORY[0x1E699D470]);
  (*(v9 + 32))(v25 + v23, v11, v8);
  v26 = (v25 + v24);
  v27 = *(a5 + 48);
  v26[2] = *(a5 + 32);
  v26[3] = v27;
  v26[4] = *(a5 + 64);
  v28 = *(a5 + 16);
  *v26 = *a5;
  v26[1] = v28;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v18, &unk_1E6608B60, v25);
}

uint64_t sub_1E651AFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v4 = type metadata accessor for RouteResource();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651B078, 0, 0);
}

uint64_t sub_1E651B078()
{
  v1 = *(v0 + 48);
  sub_1E5E1DE44(*(v0 + 32), *(v0 + 56), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 23)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
    v5 = *(v4 + 48);
    sub_1E61B73EC(*(v2 + *(v4 + 64)), *(v2 + *(v4 + 64) + 8));
    v6 = sub_1E65E5528();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
    v7 = sub_1E65E57D8();
    (*(*(v7 - 8) + 8))(v2, v7);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v8);
    *(v0 + 16) = 2;
    *(v0 + 24) = -64;
    *(v0 + 26) = 0;
    v10 = *(v9 + 72);
    v20 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_1E6253728;
    v13 = *(v0 + 32);

    return v20(v13, v0 + 16, 1, v0 + 26, v8, v9);
  }

  else
  {
    v15 = *(v0 + 40);
    sub_1E651D43C(*(v0 + 56), type metadata accessor for RouteResource);
    v16 = v15[3];
    v17 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1E600F5B0((v0 + 25));
    v18 = swift_task_alloc();
    *(v0 + 64) = v18;
    *v18 = v0;
    v18[1] = sub_1E62535EC;
    v19 = *(v0 + 32);

    return RoutingContext.appendDestination(_:priority:)(v19, (v0 + 25), v16, v17);
  }
}

unint64_t sub_1E651B3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1E5DFE50C(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_1E5DFE50C(a4, v31, v32);
  }

  result = sub_1E5E1DE44(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_1E5DFE50C(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1E651B53C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E6065840(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E651B5CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  result = sub_1E64FF820(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
  *a9 = result;
  a9[1] = v14;
  return result;
}

uint64_t sub_1E651B60C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 18) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 87) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1E65D76F8() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1E65E3C48() - 8);
  result = sub_1E64FF820(a1, *(v2 + 16), *(v2 + 17), v2 + v6, *(v2 + v7), v2 + v8, (v2 + v9), *(v2 + v10), *(v2 + v10 + 8), v2 + v12, v2 + ((v13 + *(v14 + 80) + v12) & ~*(v14 + 80)));
  *a2 = result;
  a2[1] = v16;
  return result;
}

uint64_t sub_1E651B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 18) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 87) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = (*(v10 + 80) + v9 + 16) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1E65E3D38() - 8);
  v14 = (v12 + *(v13 + 80) + v11) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(sub_1E65E3C48() - 8);
  return sub_1E64FFE4C(a1, *(v2 + 16), *(v2 + 17), v2 + v5, *(v2 + v6), v2 + v7, v2 + v8, *(v2 + v9), a2, *(v2 + v9 + 8), v2 + v11, v2 + v14, v2 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)));
}

unint64_t sub_1E651B990()
{
  result = qword_1ED07AB50;
  if (!qword_1ED07AB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AB48, &qword_1E6608998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AB58, &qword_1E66089A0);
    sub_1E5FED46C(&qword_1ED07AB60, &qword_1ED07AB58, &qword_1E66089A0);
    swift_getOpaqueTypeConformance2();
    sub_1E651D5E4(&qword_1EE2D4C38, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB50);
  }

  return result;
}

unint64_t sub_1E651BAF4()
{
  result = qword_1ED07AB78;
  if (!qword_1ED07AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AB70, &qword_1E66089B0);
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB78);
  }

  return result;
}

uint64_t sub_1E651BBAC(uint64_t a1)
{
  v3 = *(sub_1E65E3E08() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E6125488(a1, v4);
}

uint64_t sub_1E651BC90(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E651BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(type metadata accessor for AppComposer() - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E650B9FC(a1, a2, a3, a4, a5, v5 + v13);
}

uint64_t sub_1E651BE30(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5FEE4D4;

  return sub_1E650C6C4(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E651BF20(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5FE99E8;

  return sub_1E650D5F4(a1, a2, v2 + v7);
}

uint64_t sub_1E651C000()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E650EE94(v0);
}

uint64_t sub_1E651C090(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F00C(a1, v1 + v5);
}

uint64_t sub_1E651C16C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F41C(a1, v1 + v5);
}

uint64_t sub_1E651C248(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F5C4(a1, v1 + v5);
}

uint64_t sub_1E651C324(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F76C(a1, v1 + v5);
}

uint64_t sub_1E651C400(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650FB94(a1, v1 + v5);
}

uint64_t sub_1E651C4DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650FFA4(a1, v1 + v5);
}

uint64_t sub_1E651C5B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615DCA4(a1, v1 + v5);
}

uint64_t sub_1E651C694(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651014C(a1, v1 + v5);
}

uint64_t sub_1E651C770(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651055C(a1, v1 + v5);
}

uint64_t sub_1E651C84C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6510704(a1, v1 + v5);
}

uint64_t sub_1E651C928()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63E6790(v0);
}

uint64_t sub_1E651C9C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA78C;

  return sub_1E6511D4C(v0);
}

uint64_t sub_1E651CA50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6519EB0(v2);
}

uint64_t sub_1E651CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BrowsePage() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E6519F98(a1, v2 + v6, v9, a2);
}

uint64_t sub_1E651CBE0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BrowsePage() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E651A730(a1, a2, v6);
}

uint64_t sub_1E651CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E651ACC8(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1E651CD14(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65DFA18() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65DFA08() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E617F570(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E651CE98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E650DB98(a1, v4);
}

uint64_t sub_1E651CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E6513714(a1, v2 + v6, v7, a2);
}

uint64_t sub_1E651D04C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FEE4D4;

  return sub_1E65141DC(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E651D164(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E651538C(a1, v1 + v5);
}

uint64_t sub_1E651D290@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_1E6515108(a1, a2, v8, a3);
}

uint64_t sub_1E651D338(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E651AFE4(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1E651D43C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E651D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TaskScheduler.ScheduledTask(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E651D5E4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E651D668()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v27 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  v15 = [v27 calendar];
  if (v15)
  {
    v16 = v15;
    sub_1E65D78A8();

    v17 = sub_1E65D7908();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  }

  else
  {
    v17 = sub_1E65D7908();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  sub_1E651DED4(v12, v14);
  sub_1E65D7908();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v14, 1, v17))
  {
    sub_1E651DF44(v14, v9);
    if (v19(v9, 1, v17) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_1E65D7888();
      (*(v18 + 8))(v9, v17);
    }

    v25 = v27;
    [v27 setCalendar_];

    sub_1E651DFB4(v14);
  }

  else
  {
    v21 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
    swift_beginAccess();
    v22 = sub_1E65D7848();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v4, v0 + v21, v22);
    (*(v23 + 56))(v4, 0, 1, v22);
    sub_1E65D78D8();
    v24 = 0;
    if (v19(v14, 1, v17) != 1)
    {
      v24 = sub_1E65D7888();
      (*(v18 + 8))(v14, v17);
    }

    v25 = v27;
    [v27 setCalendar_];
  }

  return v25;
}

uint64_t sub_1E651DA28()
{
  v1 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
  v2 = sub_1E65D7848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t static LocalizationService.simulator()@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D77A8();
  v7 = type metadata accessor for SimulatorLocalizationService();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_1E65D77A8();
  (*(v3 + 8))(v6, v2);
  *a1 = sub_1E651DCE0;
  a1[1] = v10;
  a1[2] = sub_1E651DCE8;
  a1[3] = v10;
  a1[4] = sub_1E651DE34;
  a1[5] = v10;
  return swift_retain_n();
}

uint64_t type metadata accessor for SimulatorLocalizationService()
{
  result = qword_1ED07ABF8;
  if (!qword_1ED07ABF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E651DC4C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
  swift_beginAccess();
  v5 = sub_1E65D7848();
  (*(*(v5 - 8) + 24))(a2 + v4, a1, v5);
  return swift_endAccess();
}

id sub_1E651DCEC(uint64_t a1)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v8 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1 + v8, v2);
  v9 = sub_1E65D7798();
  (*(v3 + 8))(v6, v2);
  [v7 setLocale_];

  return v7;
}

uint64_t sub_1E651DE44()
{
  result = sub_1E65D7848();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E651DED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E651DF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E651DFB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E651E01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D7828();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
  swift_beginAccess();
  v10 = sub_1E65D7848();
  (*(*(v10 - 8) + 24))(a2 + v9, a1, v10);
  swift_endAccess();
  sub_1E65D7838();
  sub_1E65D7808();
  (*(v5 + 8))(v8, v4);
  v11 = *(a2 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer), *(a2 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer + 24));
  sub_1E65DB568();
}

id sub_1E651E1A4()
{
  v0 = sub_1E651E33C();

  return v0;
}

id sub_1E651E1D0(uint64_t a1)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_numberFormatter);
  [v11 setNumberStyle_];
  v7 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1 + v7, v2);
  v8 = sub_1E65D7798();
  (*(v3 + 8))(v6, v2);
  [v11 setLocale_];

  v9 = v11;

  return v9;
}

id sub_1E651E33C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v27 = *(v0 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_dateComponentsFormatter);
  v15 = [v27 calendar];
  if (v15)
  {
    v16 = v15;
    sub_1E65D78A8();

    v17 = sub_1E65D7908();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  }

  else
  {
    v17 = sub_1E65D7908();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  sub_1E651DED4(v12, v14);
  sub_1E65D7908();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v14, 1, v17))
  {
    sub_1E651DF44(v14, v9);
    if (v19(v9, 1, v17) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_1E65D7888();
      (*(v18 + 8))(v9, v17);
    }

    v25 = v27;
    [v27 setCalendar_];

    sub_1E651DFB4(v14);
  }

  else
  {
    v21 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
    swift_beginAccess();
    v22 = sub_1E65D7848();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v4, v0 + v21, v22);
    (*(v23 + 56))(v4, 0, 1, v22);
    sub_1E65D78D8();
    v24 = 0;
    if (v19(v14, 1, v17) != 1)
    {
      v24 = sub_1E65D7888();
      (*(v18 + 8))(v14, v17);
    }

    v25 = v27;
    [v27 setCalendar_];
  }

  return v25;
}

uint64_t LocalizationService.updateLocale.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LocalizationService.localizedDateComponentsFormatter.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LocalizationService.localizedNumberFormatter.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t static HealthDataService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorHealthDataService();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = &unk_1E6608F28;
  a1[1] = v2;
  return result;
}

uint64_t sub_1E651E7F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651E8C0, a2, 0);
}

uint64_t sub_1E651E8C0()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E651E980(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E651E7F0(a1, v1);
}

uint64_t sub_1E651EA1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E651EA38, a2, 0);
}

uint64_t sub_1E651EA38()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DB658();
  sub_1E651EBA8();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E651EB0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E651EA1C(a1, v1);
}

unint64_t sub_1E651EBA8()
{
  result = qword_1EE2D6D50;
  if (!qword_1EE2D6D50)
  {
    sub_1E65DB658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6D50);
  }

  return result;
}

uint64_t HealthDataService.makeWheelchairStatusUpdatedStream.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchService.clearSearchHistory.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchService.fetchSearchLandingShelfTileDescriptors.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchService.fetchSearchResults.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SearchService.fetchSearchSuggestions.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SearchService.insertSearchHistory.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SearchService.makeIntentStream.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SearchService.publishSearchIntent.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t SearchService.querySearchHistory.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1E651EDD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1E651EE1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LiveSearchService.init(dependencies:)@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  *a1 = sub_1E65E1838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC18, &qword_1E66090E8);
  sub_1E65D7F18();
  sub_1E65D7F18();

  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_1E651EF44()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 8), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC20, &qword_1E66091B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = *(v1 + 48);
  v5 = sub_1E6520688(inited);
  v0[8] = v5;
  swift_setDeallocating();
  v6 = *(MEMORY[0x1E69CAAA0] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1E651F050;

  return MEMORY[0x1EEE34210](v5, v2, v3);
}

uint64_t sub_1E651F050()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E651F18C, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E651F18C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E651F1F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E651EF24(v0 + 16);
}

uint64_t sub_1E651F2A4()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = *(MEMORY[0x1E69CAAB0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E651F35C;

  return MEMORY[0x1EEE34220](v2, v3);
}

uint64_t sub_1E651F35C(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E651F45C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FE99E8;

  return sub_1E651F284(v0 + 16);
}

uint64_t sub_1E651F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E651F514, 0, 0);
}

uint64_t sub_1E651F514()
{
  v1 = v0[4];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = *(MEMORY[0x1E69CAAB8] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6126414;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE34228](v6, v7, v2, v3);
}

uint64_t sub_1E651F5D4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651F4F0(a1, a2, v2 + 16);
}

uint64_t sub_1E651F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E651F6A4, 0, 0);
}

uint64_t sub_1E651F6A4()
{
  v1 = v0[5];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = *(MEMORY[0x1E69CAAA8] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1E651F768;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x1EEE34218](v8, v6, v7, v2, v3);
}

uint64_t sub_1E651F768()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E651F85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFA78C;

  return sub_1E651F680(a1, a2, a3, v3 + 16);
}

uint64_t sub_1E651F910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1E65D8AB8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651FA00, 0, 0);
}

uint64_t sub_1E651FA00()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  sub_1E65D7688();
  v6 = *(v3 + 48);
  sub_1E65D8A98();
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  __swift_project_boxed_opaque_existential_1((v3 + 8), v7);
  v9 = *(MEMORY[0x1E69CAA98] + 4);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1E651FAF8;
  v11 = v0[8];

  return MEMORY[0x1EEE34208](v11, v7, v8);
}

uint64_t sub_1E651FAF8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E6211EC8;
  }

  else
  {
    v3 = sub_1E651FC0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E651FC0C()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E651FC94(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651F910(a1, a2, v2 + 16);
}

uint64_t sub_1E651FD3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC38, &qword_1E66091D0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651FE08, 0, 0);
}

uint64_t sub_1E651FE08()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 56) = **(v0 + 24);
  *v1 = 1;
  v5 = *MEMORY[0x1E69E8640];
  (*(v2 + 104))();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC40, &qword_1E66091D8);
  v4[4] = sub_1E5FED46C(&qword_1ED07AC48, &qword_1ED07AC40, &qword_1E66091D8);
  *(v0 + 64) = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0);
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E651FF5C, v7, v6);
}

uint64_t sub_1E651FF5C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_1E65E17F8();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E651FFF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E651FD3C(a1, v1 + 16);
}

uint64_t sub_1E652008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E65200B0, 0, 0);
}

uint64_t sub_1E65200B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 48);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0);
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E652018C, v4, v3);
}

uint64_t sub_1E652018C()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1E6237A2C();
  sub_1E65E1828();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6520204(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652008C(a1, a2, v2 + 16);
}

uint64_t sub_1E65202CC()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 8), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC20, &qword_1E66091B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = *(v1 + 48);
  v5 = sub_1E6520688(inited);
  v0[8] = v5;
  swift_setDeallocating();
  v6 = *(MEMORY[0x1E69CAA90] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1E65203D8;

  return MEMORY[0x1EEE34200](v5, v2, v3);
}

uint64_t sub_1E65203D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E651F18C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1E6520530()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65202AC(v0 + 16);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E65205E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1E6520628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6520688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC28, &unk_1E66091C0);
    v3 = sub_1E65E6888();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1E65E6D28();
      v12 = sub_1E65DAE38();
      MEMORY[0x1E694E740](v12);
      result = sub_1E65E6D78();
      v14 = ~(-1 << *(v3 + 32));
      for (i = result & v14; ; i = (i + 1) & v14)
      {
        v16 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v16) == 0)
        {
          break;
        }

        v17 = *(*(v3 + 48) + i);
        v18 = sub_1E65DAE38();
        result = sub_1E65DAE38();
        if (v18 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v16;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E65207C8()
{
  v0 = sub_1E65D76A8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E65D8AB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;

  sub_1E65D7688();
  sub_1E65DAE28();
  sub_1E65D8A98();
  (*(v3 + 16))(v7, v12, v2);
  sub_1E6521998(v10, v7);
  v13 = *(v3 + 8);
  v13(v10, v2);
  return (v13)(v12, v2);
}

uint64_t static SearchService.simulator()@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC50, &unk_1E66091E0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  v3 = sub_1E65E1838();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v3;
  *a1 = &unk_1E66091F8;
  a1[1] = v4;
  a1[2] = &unk_1E6609208;
  a1[3] = v5;
  a1[4] = &unk_1E6609218;
  a1[5] = v6;
  a1[6] = &unk_1E6609228;
  a1[7] = v7;
  a1[8] = &unk_1E6609238;
  a1[9] = v8;
  a1[10] = &unk_1E6609248;
  a1[11] = v9;
  a1[12] = &unk_1E6609258;
  a1[13] = v10;
  a1[14] = &unk_1E6609268;
  a1[15] = v11;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1E6520BE4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6520C68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6520BC4(v2);
}

uint64_t sub_1E6520D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC70, &qword_1E66092C8);
  v1 = *(sub_1E65D9338() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E65EA670;
  sub_1E65D9318();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1E6520E10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E6520D00();
}

uint64_t sub_1E6520EC8()
{
  v1 = *(v0 + 16);
  sub_1E65D8708();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6520F2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6520EA8(a1);
}

uint64_t sub_1E6521000()
{
  v1 = *(v0 + 16);
  sub_1E65DA028();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6521064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6520FE0(a1);
}

uint64_t sub_1E6521128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652114C, 0, 0);
}

uint64_t sub_1E652114C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v1 + 6);
  sub_1E652197C();
  os_unfair_lock_unlock(v1 + 6);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6521210(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6521128(a1, a2, v7);
}

uint64_t sub_1E65212C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC38, &qword_1E66091D0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652138C, 0, 0);
}

uint64_t sub_1E652138C()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  **(v0 + 48) = 1;
  v5 = *MEMORY[0x1E69E8640];
  (*(v1 + 104))();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC40, &qword_1E66091D8);
  v4[4] = sub_1E5FED46C(&qword_1ED07AC48, &qword_1ED07AC40, &qword_1E66091D8);
  *(v0 + 56) = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0);
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65214D8, v7, v6);
}

uint64_t sub_1E65214D8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_1E65E17F8();
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E652156C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E65212C0(a1, v5, v4);
}

uint64_t sub_1E6521618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a2;
  v4[6] = a4;
  v4[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652163C, 0, 0);
}

uint64_t sub_1E652163C()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[2] = v0[4];
  v0[3] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0);
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6521710, v4, v3);
}

uint64_t sub_1E6521710()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1E6237A2C();
  sub_1E65E1828();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6521784(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6521618(a1, a2, v7, v6);
}

uint64_t sub_1E6521854()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E65218D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E6521834(v2);
}

uint64_t sub_1E652197C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E65207C8();
}

uint64_t sub_1E6521998(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65D8AB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E6521C50(&qword_1ED07AC58);
  v36 = a2;
  v13 = sub_1E65E5B38();
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
      sub_1E6521C50(&qword_1ED07AC60);
      v23 = sub_1E65E5B98();
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
    sub_1E6521FDC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E6521C50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E65D8AB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E6521C94(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E65D8AB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC68, &qword_1E66092C0);
  result = sub_1E65E6868();
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
      sub_1E6521C50(&qword_1ED07AC58);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6521FDC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E65D8AB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1E6521C94(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E6522258();
      goto LABEL_12;
    }

    sub_1E6522490(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E6521C50(&qword_1ED07AC58);
  v15 = sub_1E65E5B38();
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
      sub_1E6521C50(&qword_1ED07AC60);
      v23 = sub_1E65E5B98();
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
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E6522258()
{
  v1 = v0;
  v2 = sub_1E65D8AB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC68, &qword_1E66092C0);
  v7 = *v0;
  v8 = sub_1E65E6858();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1E6522490(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65D8AB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC68, &qword_1E66092C0);
  v10 = sub_1E65E6868();
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
      sub_1E6521C50(&qword_1ED07AC58);
      result = sub_1E65E5B38();
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

uint64_t ArchivedSessionService.queryAllArchivedSessions.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArchivedSessionService.queryAllCompletedWorkoutIdentifiers.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ArchivedSessionService.queryResumableSessions.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ArchivedSessionService.makeSampleContentArchivedSessionsUpdatedStream.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ArchivedSessionService.requireArchivedSessions.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ArchivedSessionService.requireNoArchivedSessions.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ArchivedSessionService.requireSampleContentSessionsAllowed.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_1E6522918()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACD0, &qword_1E66094F0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65229E4, v0, 0);
}

uint64_t sub_1E65229E4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD5D8();

  return MEMORY[0x1EEE6DFA0](sub_1E6522A78, 0, 0);
}

uint64_t sub_1E6522A78()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 25;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACD8, &qword_1E66094F8);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65277B0, v2, v5);
}

uint64_t sub_1E6522B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  v2[9] = v0;

  v5 = v2[7];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6522D30, 0, 0);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v9 = v2[2];

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E6522D30()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E628BB80, v1, 0);
}

uint64_t sub_1E6522DA8()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC98, &unk_1E66094A0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6522E74, v0, 0);
}

uint64_t sub_1E6522E74()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD5F8();

  return MEMORY[0x1EEE6DFA0](sub_1E6522F08, 0, 0);
}

uint64_t sub_1E6522F08()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 29;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65277E4, v2, v5);
}

uint64_t sub_1E652302C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  v2[9] = v0;

  v5 = v2[7];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65231C0, 0, 0);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v9 = v2[2];

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E65231C0()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E65277DC, v1, 0);
}

uint64_t sub_1E6523238(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACB8, &qword_1E66094D8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6523304, v1, 0);
}

uint64_t sub_1E6523304()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD5E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65233A0, 0, 0);
}

uint64_t sub_1E65233A0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 33;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACC0, &qword_1E66094E0);
  *v4 = v0;
  v4[1] = sub_1E65234C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6527784, v2, v5);
}

uint64_t sub_1E65234C4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6523658, 0, 0);
  }

  else
  {
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[5];
    v9 = v2[2];

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E6523658()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1E6233458, v1, 0);
}

uint64_t sub_1E65236D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65236F0, 0, 0);
}

uint64_t sub_1E65236F0()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_1E65DDFA8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6523758(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6523778, 0, 0);
}

uint64_t sub_1E6523778()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_1E65DE268();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E65237E0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65238AC, v0, 0);
}

uint64_t sub_1E65238AC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD5C8();

  return MEMORY[0x1EEE6DFA0](sub_1E6523940, 0, 0);
}

uint64_t sub_1E6523940()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 45;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6523A50;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65276A8, v2, v5);
}

uint64_t sub_1E6523A50()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v5 = sub_1E6523C0C;
    v6 = 0;
  }

  else
  {
    v7 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1E6523BA8;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6523BA8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6523C0C()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E5FE45F0, v1, 0);
}

uint64_t sub_1E6523C84()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_1E65DA328() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_1E65D9728();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC98, &unk_1E66094A0);
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6523E4C, v0, 0);
}

uint64_t sub_1E6523E4C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD5A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6523EE0, 0, 0);
}

uint64_t sub_1E6523EE0()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 49;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  *v4 = v0;
  v4[1] = sub_1E6524004;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65272D0, v2, v5);
}

uint64_t sub_1E6524004()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {

    v6 = sub_1E65245F4;
    v7 = 0;
  }

  else
  {
    v9 = v2[14];
    v8 = v2[15];
    v10 = v2[13];
    v11 = v2[4];
    v2[19] = v2[2];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E652417C;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E652417C()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[8];
  v13 = v0[9];
  v14 = v0[7];
  v6 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACA0, &qword_1E66094B0);
  v7 = *(sub_1E65DA5E8() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E65EA670;
  *(v10 + v9) = v1;
  swift_storeEnumTagMultiPayload();
  sub_1E6527300(v10);
  swift_setDeallocating();
  sub_1E6527538(v10 + v9, MEMORY[0x1E69CCEF0]);
  swift_deallocClassInstance();
  sub_1E65D9718();
  (*(v4 + 16))(v2, v3, v13);
  sub_1E65DA318();
  v11 = v6[18];
  __swift_project_boxed_opaque_existential_1(v6 + 14, v6[17]);
  sub_1E65DD5B8();

  return MEMORY[0x1EEE6DFA0](sub_1E6524374, 0, 0);
}

uint64_t sub_1E6524374()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1E6524480;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65277E0, v2, v5);
}

uint64_t sub_1E6524480()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  if (v0)
  {

    v6 = sub_1E6524910;
    v7 = 0;
  }

  else
  {
    v9 = v2[6];
    v8 = v2[7];
    v11 = v2[4];
    v10 = v2[5];
    v2[23] = v2[3];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E652470C;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E65245F4()
{
  v1 = v0[4];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return MEMORY[0x1EEE6DFA0](sub_1E6524670, v1, 0);
}

uint64_t sub_1E6524670()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E652470C()
{
  if (v0[23] < 1)
  {
    v13 = v0[15];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[7];
    sub_1E6527538(v0[8], MEMORY[0x1E69CCCA8]);
    (*(v17 + 8))(v14, v16);
  }

  else
  {
    v1 = v0[12];
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[8];
    v5 = sub_1E65D9398();
    sub_1E6527598(&qword_1ED077F00, MEMORY[0x1E69CC0A0]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69CC098], v5);
    swift_willThrow();
    sub_1E6527538(v4, MEMORY[0x1E69CCCA8]);
    (*(v3 + 8))(v1, v2);
    v7 = v0[15];
    v9 = v0[11];
    v8 = v0[12];
    v11 = v0[7];
    v10 = v0[8];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6524910()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1E6524988, v1, 0);
}

uint64_t sub_1E6524988()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  sub_1E6527538(v0[8], MEMORY[0x1E69CCCA8]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[22];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[7];
  v8 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6524A60(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6524B30, v2, 0);
}

uint64_t sub_1E6524B30()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD598();

  return MEMORY[0x1EEE6DFA0](sub_1E6524BDC, 0, 0);
}

uint64_t sub_1E6524BDC()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1E6524CF0;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6526DE8, v2, v5);
}

uint64_t sub_1E6524CF0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v2[11] = v0;

  v5 = v2[9];
  if (v0)
  {

    v6 = sub_1E6524F90;
    v7 = 0;
  }

  else
  {
    v9 = v2[7];
    v8 = v2[8];
    v11 = v2[5];
    v10 = v2[6];
    v2[12] = v2[2];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E6524E64;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E6524E64()
{
  if (v0[12] >= 1)
  {
    v1 = sub_1E65DAAB8();
    sub_1E6527598(&qword_1ED07AC88, MEMORY[0x1E69CD110]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CD108], v1);
    swift_willThrow();
  }

  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6524F90()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1E6525008, v1, 0);
}

uint64_t sub_1E6525008()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E652506C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6522918();
}

uint64_t sub_1E65250FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E652506C();
}

uint64_t sub_1E652518C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6522DA8();
}

uint64_t sub_1E652521C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E652518C();
}

uint64_t sub_1E65252AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E6523238(a1);
}

uint64_t sub_1E6525344(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FE99E8;

  return sub_1E65252AC(a1);
}

uint64_t sub_1E65253DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65253F8, a2, 0);
}

uint64_t sub_1E65253F8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DDFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65254D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65253DC(a1, v1);
}

uint64_t sub_1E6525574(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6525590, a2, 0);
}

uint64_t sub_1E6525590()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DE278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6525670(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6525574(a1, v1);
}

uint64_t sub_1E652570C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65237E0();
}

uint64_t sub_1E652579C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652570C();
}

uint64_t sub_1E652582C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6523C84();
}

uint64_t sub_1E65258BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652582C();
}

uint64_t sub_1E652594C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6524A60(a1, a2);
}

uint64_t sub_1E65259F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652594C(a1, a2);
}

uint64_t sub_1E6525A9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACE0, &qword_1E6609500);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACD0, &qword_1E66094F0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65277C8;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B18, v35);
}

uint64_t sub_1E6525E78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACB0, &unk_1E66094C0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC98, &unk_1E66094A0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E5E20BB4;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E6526254(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACC8, &qword_1E66094E8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACB8, &qword_1E66094D8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E652779C;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E6526630(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65276C0;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}