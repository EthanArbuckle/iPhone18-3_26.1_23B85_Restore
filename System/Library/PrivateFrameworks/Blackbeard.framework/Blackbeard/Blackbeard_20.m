uint64_t sub_1E607DCA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v28 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731C0, &qword_1E65ED018);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - v14;
  v16 = *a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v17 = sub_1E6403608(sub_1E607EB00, v35, v16);
  v18 = *(v17 + 2);
  if (v18)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1E601C264(0, v18, 0);
    v19 = v40;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
    v20 = *(v34 - 8);
    v21 = *(v20 + 16);
    v32 = v20 + 16;
    v33 = v21;
    v22 = *(v20 + 80);
    v27[1] = v17;
    v23 = &v17[(v22 + 32) & ~v22];
    v31 = *(v20 + 72);
    v30 = *MEMORY[0x1E699D9D0];
    v29 = v12 + 32;
    do
    {
      v33(v15, v23, v34);
      (*(v12 + 104))(v15, v30, v11);
      v40 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1E601C264(v24 > 1, v25 + 1, 1);
        v19 = v40;
      }

      *(v19 + 16) = v25 + 1;
      (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v15, v11);
      v23 += v31;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  *v28 = v19;
  return result;
}

unint64_t sub_1E607DF5C()
{
  result = qword_1ED073FA8;
  if (!qword_1ED073FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FA0, &qword_1E65EF140);
    sub_1E5FED46C(&qword_1ED073FB0, &qword_1ED0731C0, &qword_1E65ED018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073FA8);
  }

  return result;
}

uint64_t sub_1E607E00C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a4;
  v25 = a3;
  v24 = a2;
  v23 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_1E65D7848();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v12);
  sub_1E5DFE50C(v8, &qword_1ED071F78, &unk_1E65EA3F0);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1E65D77C8();
    if (v19(v12, 1, v13) != 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v20 = sub_1E6427C0C(MEMORY[0x1E69E7CC0]);
  sub_1E6014C00(v17, v24, v25, v20, v27, v23);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1E607E2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FF8, &qword_1E65EF198);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074000, &qword_1E65EF1A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074008, &qword_1E65EF1A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  v17 = sub_1E65DAEB8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v30 = *a1;
  v31 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  sub_1E65E4D78();
  sub_1E65E4C98();
  sub_1E60EF554(v16);
  sub_1E5DFE50C(v7, &qword_1ED073FF8, &qword_1E65EF198);
  (*(v9 + 8))(v12, v8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1E5DFE50C(v16, &qword_1ED074008, &qword_1E65EF1A8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    return (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    v26 = *(v25 + 48);
    sub_1E65DAE48();
    v27 = v29;
    sub_1E65D9C88();
    sub_1E65DAE58();
    (*(v18 + 8))(v21, v17);
    return (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
  }
}

uint64_t sub_1E607E644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074010, &qword_1E65EF1B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074018, &qword_1E65EF1B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074020, &qword_1E65EF1C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  v17 = sub_1E65DADD8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v30 = *a1;
  v31 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  sub_1E65E4D78();
  sub_1E65E4C98();
  sub_1E60EF798(v16);
  sub_1E5DFE50C(v7, &qword_1ED074010, &qword_1E65EF1B0);
  (*(v9 + 8))(v12, v8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1E5DFE50C(v16, &qword_1ED074020, &qword_1E65EF1C0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    return (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    v26 = *(v25 + 48);
    sub_1E65DADA8();
    sub_1E65DAD78();
    v27 = v29;
    sub_1E65D9C88();
    sub_1E65DAD88();
    (*(v18 + 8))(v21, v17);
    return (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
  }
}

unint64_t sub_1E607EA38()
{
  result = qword_1ED073FD8;
  if (!qword_1ED073FD8)
  {
    sub_1E65D76A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073FD8);
  }

  return result;
}

uint64_t sub_1E607EA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E607EB54(void *a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, void *a7)
{
  v87 = a7;
  LODWORD(v82) = a6;
  v96 = a5;
  v74 = a4;
  v10 = type metadata accessor for SectionMetrics();
  v11 = *(v10 - 8);
  v80 = v10 - 8;
  v86 = v11;
  v85 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074030, &qword_1E65EF1C8);
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v69 - v15;
  v16 = sub_1E65E0308();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E00D8();
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AppComposer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074038, &qword_1E65EF1D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074040, &qword_1E65EF1D8);
  v83 = *(v93 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v78 = &v69 - v28;
  v76 = a1;
  v81 = *a1;
  sub_1E5DF650C(a3, v97);
  v29 = swift_allocObject();
  sub_1E5DF599C(v97, v29 + 16);
  v75 = type metadata accessor for AppComposer;
  v30 = a1;
  v31 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v31;
  sub_1E5E1D3B4(v30, v31, type metadata accessor for AppComposer);
  v32 = *(v23 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = v33;
  v92 = v33;
  v73 = v32 | 7;
  v77 = v33 + v24 + 1;
  v35 = v33 + v24;
  v70 = v35;
  v36 = swift_allocObject();
  v71 = type metadata accessor for AppComposer;
  sub_1E5E1DFE0(v31, v36 + v34, type metadata accessor for AppComposer);
  v72 = a2 & 1;
  *(v36 + v35) = a2 & 1;
  sub_1E65D9CC8();
  v37 = MEMORY[0x1E69CC888];
  sub_1E6082714(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
  sub_1E6082714(&qword_1EE2D7030, v37);
  sub_1E6082714(&qword_1EE2D7028, v37);
  sub_1E65E0228();
  type metadata accessor for ArtworkDescriptor();
  sub_1E6082714(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor);
  sub_1E65DFDE8();
  v38 = v74;
  v39 = *v74;
  v40 = v74[1];
  v41 = v74[2];
  v42 = v74[3];
  v43 = v80;
  v44 = *(v80 + 32);

  sub_1E65D8F18();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v45 = *(v38 + *(v43 + 40));

  sub_1E65E02F8();
  sub_1E65E00C8();
  v46 = v76;
  v47 = v69;
  v48 = v75;
  sub_1E5E1D3B4(v76, v69, v75);
  v49 = v70;
  v50 = swift_allocObject();
  v51 = v71;
  sub_1E5E1DFE0(v47, v50 + v92, v71);
  *(v50 + v49) = v82;
  *(v50 + v77) = v72;
  type metadata accessor for AppFeature();
  sub_1E6082714(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v82 = sub_1E5FED46C(&qword_1EE2D65E0, &qword_1ED074040, &qword_1E65EF1D8);
  sub_1E65E4DF8();
  sub_1E5E1D3B4(v46, v47, v48);
  v52 = v87;
  v77 = *v87;
  v79 = v87[3];
  v80 = v87[5];
  v53 = v87[7];
  v54 = v87[9];
  v55 = v84;
  sub_1E5E1D3B4(v38, v84, type metadata accessor for SectionMetrics);
  v56 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + *(v86 + 80) + 80) & ~*(v86 + 80);
  v58 = (v85 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  sub_1E5E1DFE0(v47, v59 + v92, v51);
  v60 = (v59 + v56);
  v61 = v52[3];
  v60[2] = v52[2];
  v60[3] = v61;
  v60[4] = v52[4];
  v62 = v52[1];
  *v60 = *v52;
  v60[1] = v62;
  sub_1E5E1DFE0(v55, v59 + v57, type metadata accessor for SectionMetrics);
  *(v59 + v58) = v96;
  swift_unknownObjectRetain();

  v63 = v78;
  v64 = v94;
  v65 = v95;
  v66 = v93;
  v67 = sub_1E65E4F08();

  (*(v90 + 8))(v64, v91);
  (*(v88 + 8))(v65, v89);
  (*(v83 + 8))(v63, v66);
  return v67;
}

uint64_t sub_1E607F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = type metadata accessor for SectionMetrics();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - v17;
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5DFD1CC(a1, v14, &qword_1ED074048, &qword_1E65EF200);
  sub_1E5E1D3B4(a6, v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SectionMetrics);
  v20 = *a5;
  v21 = a5[3];
  v22 = a5[7];
  v30[1] = a5[5];
  v30[2] = v22;
  v32 = a5[9];
  v23 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v24 = (v12 + *(v33 + 80) + v23) & ~*(v33 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5FAB460(v14, v25 + v23, &qword_1ED074048, &qword_1E65EF200);
  sub_1E5E1DFE0(v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for SectionMetrics);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a5 + 3);
  v26[2] = *(a5 + 2);
  v26[3] = v27;
  v26[4] = *(a5 + 4);
  v28 = *(a5 + 1);
  *v26 = *a5;
  v26[1] = v28;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v18, &unk_1E65EF210, v25);
}

uint64_t sub_1E607F810@<X0>(void (*a1)(unint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E64D2DD0(a1, a2, a3);
  v6 = sub_1E65E4B98();
  v8 = v7;
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(a1, a2, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v11 = (v9 + *(result + 36));
  *v11 = v6;
  v11[1] = v8;
  return result;
}

uint64_t sub_1E607F8A4(uint64_t a1, uint64_t a2, char *a3, __int128 *a4)
{
  v6 = type metadata accessor for ContextMenu(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  sub_1E607FA94(v9);
  sub_1E61E66C8(v9, a3, a4, v14);
  sub_1E608275C(v9, type metadata accessor for ContextMenu);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v16 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v19[0] = v15;
  v19[1] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v14, v10, OpaqueTypeConformance2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1E607FA94@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  sub_1E65DFE98();
  v2 = (a1 + *(type metadata accessor for ContextMenu(0) + 20));
  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
  *v2 = sub_1E65DFE78();
  v2[1] = v4;
  sub_1E6081F6C();
  State = type metadata accessor for WorkoutContextMenuLoadState();
  v6 = State[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  swift_storeEnumTagMultiPayload();
  sub_1E60820A8(&v3[State[6]]);
  v7 = State[7];
  v3[v7] = sub_1E65DFE58() & 1;
  v8 = &v3[v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48)];
  sub_1E65D7688();
  swift_storeEnumTagMultiPayload();
  v9 = State[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E607FC10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for RouteSource(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E607FCF8, 0, 0);
}

uint64_t sub_1E607FCF8()
{
  v1 = *(v0 + 16);
  v2 = sub_1E65D9CA8();
  if (v4)
  {
    if (v2 <= 3u)
    {
      if (v2 > 1u)
      {
        if (v2 != 2)
        {
          v36 = *(v0 + 72);
          v37 = *(v0 + 40);
          v38 = *(v0 + 48);
          v39 = *(v0 + 24);
          v40 = *(v0 + 32);
          v41 = *(v0 + 16);
          v11 = v39[3];
          v12 = v39[4];
          __swift_project_boxed_opaque_existential_1(v39, v11);
          v42 = sub_1E65D9C98();
          v44 = v43;
          swift_storeEnumTagMultiPayload();
          *v36 = v42;
          v36[1] = v44;
          type metadata accessor for PlaylistType();
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource();
          swift_storeEnumTagMultiPayload();
          sub_1E5E1DFE0(v37, v36 + *(v38 + 20), type metadata accessor for RouteSource);
          *(v36 + *(v38 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 154));
          v45 = swift_task_alloc();
          *(v0 + 104) = v45;
          *v45 = v0;
          v45[1] = sub_1E6080394;
          v17 = *(v0 + 72);
          v18 = (v0 + 154);
          goto LABEL_16;
        }
      }

      else if (v2)
      {
        v26 = *(v0 + 80);
        v27 = *(v0 + 40);
        v28 = *(v0 + 48);
        v29 = *(v0 + 24);
        v30 = *(v0 + 32);
        v31 = *(v0 + 16);
        v11 = v29[3];
        v12 = v29[4];
        __swift_project_boxed_opaque_existential_1(v29, v11);
        v32 = sub_1E65D9C98();
        v34 = v33;
        swift_storeEnumTagMultiPayload();
        *v26 = v32;
        v26[1] = v34;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E5E1DFE0(v27, v26 + *(v28 + 20), type metadata accessor for RouteSource);
        *(v26 + *(v28 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 155));
        v35 = swift_task_alloc();
        *(v0 + 88) = v35;
        *v35 = v0;
        v35[1] = sub_1E60801F0;
        v17 = *(v0 + 80);
        v18 = (v0 + 155);
        goto LABEL_16;
      }
    }

    else if (v2 - 5 >= 3)
    {
      if (v2 == 4)
      {
        v5 = *(v0 + 64);
        v6 = *(v0 + 40);
        v7 = *(v0 + 48);
        v8 = *(v0 + 24);
        v9 = *(v0 + 32);
        v10 = *(v0 + 16);
        v11 = v8[3];
        v12 = v8[4];
        __swift_project_boxed_opaque_existential_1(v8, v11);
        v13 = sub_1E65D9C98();
        v15 = v14;
        swift_storeEnumTagMultiPayload();
        *v5 = v13;
        v5[1] = v15;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E5E1DFE0(v6, v5 + *(v7 + 20), type metadata accessor for RouteSource);
        *(v5 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 153));
        v16 = swift_task_alloc();
        *(v0 + 120) = v16;
        *v16 = v0;
        v16[1] = sub_1E6080538;
        v17 = *(v0 + 64);
        v18 = (v0 + 153);
      }

      else
      {
        v47 = *(v0 + 48);
        v46 = *(v0 + 56);
        v49 = *(v0 + 32);
        v48 = *(v0 + 40);
        v51 = *(v0 + 16);
        v50 = *(v0 + 24);
        v11 = v50[3];
        v12 = v50[4];
        __swift_project_boxed_opaque_existential_1(v50, v11);
        v52 = sub_1E65D9C98();
        v54 = v53;
        swift_storeEnumTagMultiPayload();
        *v46 = v52;
        v46[1] = v54;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E5E1DFE0(v48, v46 + *(v47 + 20), type metadata accessor for RouteSource);
        *(v46 + *(v47 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 152));
        v55 = swift_task_alloc();
        *(v0 + 136) = v55;
        *v55 = v0;
        v55[1] = sub_1E60806DC;
        v17 = *(v0 + 56);
        v18 = (v0 + 152);
      }

LABEL_16:

      return RoutingContext.appendDestination(_:priority:)(v17, v18, v11, v12);
    }
  }

  else
  {
    sub_1E5FEE4CC(v2, v3, 0);
  }

  v20 = *(v0 + 72);
  v19 = *(v0 + 80);
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 40);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1E60801F0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  sub_1E608275C(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6080880, 0, 0);
  }

  else
  {
    v6 = v4[9];
    v5 = v4[10];
    v8 = v4[7];
    v7 = v4[8];
    v9 = v4[5];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_1E6080394()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[14] = v0;

  sub_1E608275C(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E608091C, 0, 0);
  }

  else
  {
    v6 = v4[9];
    v5 = v4[10];
    v8 = v4[7];
    v7 = v4[8];
    v9 = v4[5];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_1E6080538()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[16] = v0;

  sub_1E608275C(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60809B8, 0, 0);
  }

  else
  {
    v6 = v4[9];
    v5 = v4[10];
    v8 = v4[7];
    v7 = v4[8];
    v9 = v4[5];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_1E60806DC()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[18] = v0;

  sub_1E608275C(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6080A54, 0, 0);
  }

  else
  {
    v6 = v4[9];
    v5 = v4[10];
    v8 = v4[7];
    v7 = v4[8];
    v9 = v4[5];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_1E6080880()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E608091C()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E60809B8()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6080A54()
{
  v1 = v0[18];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6080AF0(uint64_t a1, char a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA880;

  return sub_1E6080B90(a2 & 1);
}

uint64_t sub_1E6080B90(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 200) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6080BB4, 0, 0);
}

uint64_t sub_1E6080BB4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 200);
  *(v0 + 64) = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v3 = sub_1E65E6058();
  if (v2)
  {
    *(v0 + 136) = v3;
    *(v0 + 144) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E6080EBC;
  }

  else
  {
    *(v0 + 72) = v3;
    *(v0 + 80) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v8;
    v7 = sub_1E6080CAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E6080CAC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(16, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E6080D24()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[14] = *(v3 + 8);
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[16] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6080DD0, v5, v4);
}

uint64_t sub_1E6080DD0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  v4(v6, v5);

  return MEMORY[0x1EEE6DFA0](sub_1E6080E5C, 0, 0);
}

uint64_t sub_1E6080E5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6080EBC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 64);

  sub_1E5E20198(17, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080F34, 0, 0);
}

uint64_t sub_1E6080F34()
{
  v1 = v0[17];
  v2 = v0[5];
  v3 = v0[6];
  v0[19] = v2;
  v0[20] = v3;
  v0[21] = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[22] = *(v3 + 8);
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[24] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6080FE0, v5, v4);
}

uint64_t sub_1E6080FE0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];

  v4(v6, v5);

  return MEMORY[0x1EEE6DFA0](sub_1E60827D4, 0, 0);
}

uint64_t sub_1E608106C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v68) = a4;
  v63 = a2;
  v72 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v61 - v12;
  v13 = sub_1E65D7848();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E05C8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E07B8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v76 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074058, &qword_1E65EF218);
  v22 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074060, &qword_1E65EF220);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v74 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v75 = &v61 - v29;
  v30 = sub_1E65DFA98();
  v70 = *(v30 - 8);
  v71 = v30;
  v31 = *(v70 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v69 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v61 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v61 - v38;
  v40 = sub_1E634BE4C(a3);
  v61 = type metadata accessor for AppState();
  v41 = *(v61 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v42 = v78;
  v43 = sub_1E65E0678();
  v44 = *(v63 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E60930E0(v42, v43, 0, 0, 0, 0, v40, v39);
  v45 = v35;
  sub_1E60818B0(v39, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  v46 = 208;
  if ((v68 & 1) == 0)
  {
    v46 = 204;
  }

  v47 = v61;
  v48 = a1 + *(v61 + v46);
  sub_1E65E4C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074070, &qword_1E65EF230);
  sub_1E6082664();
  v49 = v75;
  sub_1E65E4DA8();
  v50 = v24;
  v51 = v64;
  sub_1E5DFE50C(v50, &qword_1ED074058, &qword_1E65EF218);
  sub_1E65E0668();
  type metadata accessor for ViewDescriptor();
  sub_1E6082714(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v68 = v39;
  v53 = v65;
  v52 = v66;
  sub_1E65E0648();
  sub_1E5DFD1CC(v49, v74, &qword_1ED074060, &qword_1E65EF220);
  v54 = *(v47 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v55 = v67;
  sub_1E65E4C98();
  sub_1E5E1F544(v52);
  sub_1E5DFE50C(v55, &qword_1ED071F78, &unk_1E65EA3F0);
  v56 = *(v51 + 48);
  if (v56(v52, 1, v53) == 1)
  {
    sub_1E65D77C8();
    if (v56(v52, 1, v53) != 1)
    {
      sub_1E5DFE50C(v52, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v51 + 32))(v73, v52, v53);
  }

  v57 = v70;
  v58 = v71;
  (*(v70 + 16))(v69, v45, v71);
  v67 = type metadata accessor for ArtworkDescriptor();
  v66 = sub_1E65D9CC8();
  sub_1E6082714(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor);
  v59 = MEMORY[0x1E69CC888];
  sub_1E6082714(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
  sub_1E6082714(&qword_1EE2D7030, v59);
  sub_1E6082714(&qword_1EE2D7028, v59);
  sub_1E65DFC28();
  sub_1E5DFE50C(v75, &qword_1ED074060, &qword_1E65EF220);
  (*(v57 + 8))(v45, v58);
  return sub_1E5DFE50C(v68, &qword_1ED072650, &qword_1E65EB968);
}

uint64_t sub_1E60818B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C8, &qword_1E65EDD58);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  sub_1E5DFD1CC(v39, &v35 - v19, &qword_1ED072650, &qword_1E65EB968);
  v21 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    goto LABEL_6;
  }

  v23 = v16;
  v39 = v5;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  if (EnumCaseMultiPayload != 3)
  {
    sub_1E608275C(v20, type metadata accessor for ViewDescriptor);
    v21 = v40;
LABEL_6:
    v30 = MEMORY[0x1E699D4A8];
    goto LABEL_9;
  }

  v27 = v20;
  v28 = v23;
  sub_1E5FAB460(v27, v23, &qword_1ED072680, &qword_1E65EB990);
  sub_1E5DFD1CC(v28, v14, &qword_1ED072680, &qword_1E65EB990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v24 + 32))(v9, v14, v6);
    v29 = sub_1E65E0578();
    (*(v24 + 8))(v9, v6);
  }

  else
  {
    v31 = v39;
    (*(v25 + 32))(v39, v14, v26);
    v29 = sub_1E65E0558();
    (*(v25 + 8))(v31, v26);
  }

  sub_1E5DFE50C(v28, &qword_1ED072680, &qword_1E65EB990);
  v21 = v40;
  *v40 = v29;
  v30 = MEMORY[0x1E699D4B0];
LABEL_9:
  v32 = *v30;
  v33 = sub_1E65DFA98();
  return (*(*(v33 - 8) + 104))(v21, v32, v33);
}

uint64_t sub_1E6081C84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074078, &qword_1E65EF238);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v34 = sub_1E65D9CC8();
  v8 = *(*(v34 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v34);
  v33 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*a1 + 16);
  if (v12)
  {
    v14 = *(v10 + 16);
    v13 = v10 + 16;
    v15 = *a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v29 = *(v13 + 56);
    v30 = v14;
    v28 = (v13 + 16);
    v27 = *MEMORY[0x1E699D9C8];
    v25 = v4 + 32;
    v26 = (v4 + 104);
    v16 = MEMORY[0x1E69E7CC0];
    v31 = v13;
    v32 = v3;
    do
    {
      v17 = v33;
      v18 = v34;
      v30(v33, v15, v34);
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
      (*v28)(v7, v17, v18);
      *&v7[v19] = MEMORY[0x1E69E7CD0];
      (*v26)(v7, v27, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1E64F64AC(0, v16[2] + 1, 1, v16);
      }

      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v16 = sub_1E64F64AC(v20 > 1, v21 + 1, 1, v16);
      }

      v16[2] = v21 + 1;
      v22 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21;
      v3 = v32;
      result = (*(v4 + 32))(v22, v7, v32);
      v15 += v29;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  *v24 = v16;
  return result;
}

uint64_t sub_1E6081F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  if (sub_1E65DFEC8() < 4u)
  {
    v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
    sub_1E65DFE78();
    sub_1E65DFEA8();
    sub_1E65DFE88();
    sub_1E65DE758();
    sub_1E65D7688();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E60820A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v2 = 1 << sub_1E65DFE68();
  if ((v2 & 0x19F) != 0)
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = (v2 & 0x240) == 0;
  }

  v4 = (v2 & 0x19F) == 0;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
  *(a1 + 4) = BYTE4(v3);
  *a1 = v3;
  *(a1 + 5) = v4;
  sub_1E65D7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E608217C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E607FC10(a1, v1 + 16);
}

uint64_t sub_1E6082214()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6080AF0(v3, v4);
}

uint64_t sub_1E6082304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = v6 + *(v5 + 64);
  v8 = *(v7 + 1);
  v9 = *v7;

  return sub_1E608106C(a1, v6, v9, v8, a2);
}

uint64_t sub_1E60823AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for SectionMetrics() - 8);
  v11 = (v9 + *(v10 + 80) + 80) & ~*(v10 + 80);
  v12 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E607F4F4(a1, a2, a3, v3 + v8, (v3 + v9), v3 + v11);
}

uint64_t sub_1E60824D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SectionMetrics() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E61BD7BC(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

unint64_t sub_1E6082664()
{
  result = qword_1EE2D4858;
  if (!qword_1EE2D4858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074070, &qword_1E65EF230);
    sub_1E5FED46C(&qword_1EE2D6560, &qword_1ED074078, &qword_1E65EF238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4858);
  }

  return result;
}

uint64_t sub_1E6082714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E608275C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6082800()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E60828B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E60835AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E60828E8(uint64_t a1)
{
  v2 = sub_1E60837AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082924(uint64_t a1)
{
  v2 = sub_1E60837AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082960(uint64_t a1)
{
  v2 = sub_1E6083800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E608299C(uint64_t a1)
{
  v2 = sub_1E6083800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E60829D8(uint64_t a1)
{
  v2 = sub_1E60839A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082A14(uint64_t a1)
{
  v2 = sub_1E60839A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082A50(uint64_t a1)
{
  v2 = sub_1E6083854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082A8C(uint64_t a1)
{
  v2 = sub_1E6083854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082AC8(uint64_t a1)
{
  v2 = sub_1E60838A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082B04(uint64_t a1)
{
  v2 = sub_1E60838A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082B40(uint64_t a1)
{
  v2 = sub_1E60838FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082B7C(uint64_t a1)
{
  v2 = sub_1E60838FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082BB8(uint64_t a1)
{
  v2 = sub_1E6083950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082BF4(uint64_t a1)
{
  v2 = sub_1E6083950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082C68@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10Blackbeard12AppSizeClassO8rawValueACSg12CoreGraphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_1E6082C94@<D0>(double *a1@<X8>)
{
  result = dbl_1E65EF9D8[*v1];
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall AppSizeClass.shouldOffsetForCarousel(containerSize:)(CGSize containerSize)
{
  v2 = v1 >= 2u && containerSize.width > containerSize.height;
  if (v1 - 3 >= 3)
  {
    return v2;
  }

  else
  {
    return containerSize.width > containerSize.height;
  }
}

uint64_t sub_1E6082D00@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  result = _s10Blackbeard12AppSizeClassO11canvasWidthAC12CoreGraphics7CGFloatV_tcfC_0(a2);
  *a1 = result;
  return result;
}

BOOL sub_1E6082D28(double a1, double a2)
{
  v3 = *v2;
  v4 = v3 - 3;
  v5 = v3 >= 2 && a1 > a2;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t AppSizeClass.encode(to:)(void *a1, int a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074080, &qword_1E65EF250);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074088, &qword_1E65EF258);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074090, &qword_1E65EF260);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074098, &qword_1E65EF268);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740A0, &qword_1E65EF270);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740A8, &qword_1E65EF278);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740B0, &qword_1E65EF280);
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v27 = &v36 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60837AC();
  sub_1E65E6DA8();
  v29 = (v24 + 8);
  if (v52 > 2u)
  {
    if (v52 == 3)
    {
      v56 = 3;
      sub_1E60838A8();
      v32 = v42;
      v33 = v51;
      sub_1E65E6B18();
      v35 = v43;
      v34 = v44;
    }

    else if (v52 == 4)
    {
      v57 = 4;
      sub_1E6083854();
      v32 = v45;
      v33 = v51;
      sub_1E65E6B18();
      v35 = v46;
      v34 = v47;
    }

    else
    {
      v58 = 5;
      sub_1E6083800();
      v32 = v48;
      v33 = v51;
      sub_1E65E6B18();
      v35 = v49;
      v34 = v50;
    }

    (*(v35 + 8))(v32, v34);
  }

  else if (v52)
  {
    if (v52 == 1)
    {
      v54 = 1;
      sub_1E6083950();
      v30 = v51;
      sub_1E65E6B18();
      (*(v38 + 8))(v19, v39);
      return (*v29)(v27, v30);
    }

    v55 = 2;
    sub_1E60838FC();
    v33 = v51;
    sub_1E65E6B18();
    (*(v40 + 8))(v15, v41);
  }

  else
  {
    v53 = 0;
    sub_1E60839A4();
    v33 = v51;
    sub_1E65E6B18();
    (*(v37 + 8))(v23, v20);
  }

  return (*v29)(v27, v33);
}

uint64_t sub_1E60833EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E60839F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E6083434()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E770](qword_1E65EFA08[v1]);
  return sub_1E65E6D78();
}

uint64_t sub_1E60834BC()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E770](qword_1E65EFA08[v1]);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard12AppSizeClassO8rawValueACSg12CoreGraphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 460.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 1366.0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if (a1 == 1194.0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E60835AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1E60837AC()
{
  result = qword_1EE2DB3A8[0];
  if (!qword_1EE2DB3A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DB3A8);
  }

  return result;
}

unint64_t sub_1E6083800()
{
  result = qword_1ED0740B8;
  if (!qword_1ED0740B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740B8);
  }

  return result;
}

unint64_t sub_1E6083854()
{
  result = qword_1ED0740C0;
  if (!qword_1ED0740C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740C0);
  }

  return result;
}

unint64_t sub_1E60838A8()
{
  result = qword_1ED0740C8;
  if (!qword_1ED0740C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740C8);
  }

  return result;
}

unint64_t sub_1E60838FC()
{
  result = qword_1ED0740D0;
  if (!qword_1ED0740D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740D0);
  }

  return result;
}

unint64_t sub_1E6083950()
{
  result = qword_1EE2DB380;
  if (!qword_1EE2DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB380);
  }

  return result;
}

unint64_t sub_1E60839A4()
{
  result = qword_1ED0740D8;
  if (!qword_1ED0740D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740D8);
  }

  return result;
}

uint64_t sub_1E60839F8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740E8, &qword_1E65EF9A0);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740F0, &qword_1E65EF9A8);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v48 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740F8, &qword_1E65EF9B0);
  v56 = *(v53 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074100, &qword_1E65EF9B8);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074108, &qword_1E65EF9C0);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074110, &qword_1E65EF9C8);
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074118, &qword_1E65EF9D0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1E60837AC();
  v29 = v65;
  sub_1E65E6D98();
  if (!v29)
  {
    v30 = v21;
    v48 = v18;
    v49 = v17;
    v31 = v62;
    v32 = v63;
    v33 = v64;
    v65 = v23;
    v34 = sub_1E65E6AF8();
    v35 = (2 * *(v34 + 16)) | 1;
    v67 = v34;
    v68 = v34 + 32;
    v69 = 0;
    v70 = v35;
    v36 = sub_1E5FBE3E8();
    v37 = v26;
    if (v36 != 6 && v69 == v70 >> 1)
    {
      v23 = v36;
      if (v36 > 2u)
      {
        if (v36 != 3)
        {
          v46 = v65;
          if (v36 == 4)
          {
            v71 = 4;
            sub_1E6083854();
            sub_1E65E6A68();
            (*(v58 + 8))(v33, v57);
          }

          else
          {
            v71 = 5;
            sub_1E6083800();
            v47 = v61;
            sub_1E65E6A68();
            (*(v59 + 8))(v47, v60);
          }

          (*(v46 + 8))(v37, v22);
          goto LABEL_21;
        }

        v71 = 3;
        sub_1E60838A8();
        sub_1E65E6A68();
        v38 = v65;
        (*(v56 + 8))(v32, v53);
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v71 = 1;
          sub_1E6083950();
          v31 = v49;
          sub_1E65E6A68();
          v38 = v65;
          v40 = v51;
          v39 = v52;
        }

        else
        {
          v71 = 2;
          sub_1E60838FC();
          sub_1E65E6A68();
          v38 = v65;
          v40 = v54;
          v39 = v55;
        }

        (*(v40 + 8))(v31, v39);
      }

      else
      {
        v71 = 0;
        sub_1E60839A4();
        sub_1E65E6A68();
        (*(v50 + 8))(v30, v48);
        v38 = v65;
      }

      (*(v38 + 8))(v26, v22);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return v23;
    }

    v41 = sub_1E65E68F8();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v43 = &type metadata for AppSizeClass;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v65 + 8))(v26, v22);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  return v23;
}

uint64_t getEnumTagSinglePayload for ArtworkContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E6084394()
{
  result = qword_1ED0740E0;
  if (!qword_1ED0740E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740E0);
  }

  return result;
}

unint64_t sub_1E60843EC()
{
  result = qword_1EE2DB330;
  if (!qword_1EE2DB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB330);
  }

  return result;
}

unint64_t sub_1E6084444()
{
  result = qword_1EE2DB338;
  if (!qword_1EE2DB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB338);
  }

  return result;
}

unint64_t sub_1E608449C()
{
  result = qword_1EE2DB370;
  if (!qword_1EE2DB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB370);
  }

  return result;
}

unint64_t sub_1E60844F4()
{
  result = qword_1EE2DB378;
  if (!qword_1EE2DB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB378);
  }

  return result;
}

unint64_t sub_1E608454C()
{
  result = qword_1EE2DB350;
  if (!qword_1EE2DB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB350);
  }

  return result;
}

unint64_t sub_1E60845A4()
{
  result = qword_1EE2DB358;
  if (!qword_1EE2DB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB358);
  }

  return result;
}

unint64_t sub_1E60845FC()
{
  result = qword_1EE2DB360;
  if (!qword_1EE2DB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB360);
  }

  return result;
}

unint64_t sub_1E6084654()
{
  result = qword_1EE2DB368;
  if (!qword_1EE2DB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB368);
  }

  return result;
}

unint64_t sub_1E60846AC()
{
  result = qword_1EE2DB388;
  if (!qword_1EE2DB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB388);
  }

  return result;
}

unint64_t sub_1E6084704()
{
  result = qword_1EE2DB390;
  if (!qword_1EE2DB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB390);
  }

  return result;
}

unint64_t sub_1E608475C()
{
  result = qword_1EE2DB340;
  if (!qword_1EE2DB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB340);
  }

  return result;
}

unint64_t sub_1E60847B4()
{
  result = qword_1EE2DB348;
  if (!qword_1EE2DB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB348);
  }

  return result;
}

unint64_t sub_1E608480C()
{
  result = qword_1EE2DB398;
  if (!qword_1EE2DB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB398);
  }

  return result;
}

unint64_t sub_1E6084864()
{
  result = qword_1EE2DB3A0;
  if (!qword_1EE2DB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB3A0);
  }

  return result;
}

uint64_t sub_1E60848C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E60848E4, 0, 0);
}

uint64_t sub_1E60848E4()
{
  v16 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[5] = v5;
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[2];
    v8 = sub_1E64F7254(v6, 0);
    v9 = *(sub_1E65D9CC8() - 8);
    v13 = sub_1E6259470(&v15, (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), v6, v7);

    result = sub_1E5E24EE4();
    if (v13 != v6)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v0[6] = v8;
  v14 = (v4 + *v4);
  v11 = v4[1];
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1E6084AD4;

  return v14(33, v8);
}

uint64_t sub_1E6084AD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1E6084CD8;
  }

  else
  {
    v8 = v4[5];
    v9 = v4[6];

    v4[9] = a1;
    v7 = sub_1E6084C0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6084C0C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v4 = sub_1E64040DC(sub_1E6084DD0, v3, v1);

  v5 = sub_1E600AD24(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1E6084CD8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1E6084D44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1E6259E84(a1, a2, a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_1E6084DEC(uint64_t a1)
{
  v51 = sub_1E65DADD8();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return result;
  }

  v39[1] = v1;
  v57 = MEMORY[0x1E69E7CC0];
  sub_1E601C2A4(0, v7, 0);
  v52 = v57;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v11 = result;
  v12 = 0;
  v44 = (v3 + 8);
  v45 = v3 + 16;
  v40 = a1 + 64;
  v41 = v7;
  v46 = a1;
  v42 = v3;
  v43 = a1 + 56;
  v50 = v6;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_31;
    }

    v47 = v12;
    v48 = *(a1 + 36);
    v49 = 1 << v11;
    (*(v3 + 16))(v6, *(a1 + 48) + *(v3 + 72) * v11, v51);
    v16 = sub_1E65DAD78();
    v18 = v17;
    v20 = v19;
    v56 = 1;
    v53 = v16;
    v54 = v17;
    v21 = v19 & 1;
    v55 = v19 & 1;
    sub_1E6018A94();
    sub_1E6018AE8();
    if (sub_1E65D7FF8())
    {
      v22 = 2;
      goto LABEL_12;
    }

    v56 = 8;
    v53 = v16;
    v54 = v18;
    v55 = v21;
    if (sub_1E65D7FF8())
    {
      v22 = 0;
LABEL_12:
      v23 = v50;
      sub_1E5FEE4CC(v16, v18, v21);
LABEL_13:
      v24 = sub_1E65DADA8();
      v26 = v25;
      goto LABEL_14;
    }

    v56 = 4;
    v53 = v16;
    v54 = v18;
    v55 = v20 & 1;
    v38 = sub_1E65D7FF8();
    sub_1E5FEE4CC(v16, v18, v20 & 1);
    if (v38)
    {
      v22 = 1;
      v23 = v50;
      goto LABEL_13;
    }

    v24 = 0;
    v26 = 0;
    v22 = -1;
    v23 = v50;
LABEL_14:
    result = (*v44)(v23, v51);
    v27 = v52;
    v57 = v52;
    v29 = *(v52 + 16);
    v28 = *(v52 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_1E601C2A4((v28 > 1), v29 + 1, 1);
      v27 = v57;
    }

    *(v27 + 16) = v29 + 1;
    v30 = v27 + 24 * v29;
    *(v30 + 32) = v24;
    *(v30 + 40) = v26;
    *(v30 + 48) = v22;
    a1 = v46;
    v13 = 1 << *(v46 + 32);
    if (v11 >= v13)
    {
      goto LABEL_32;
    }

    v9 = v43;
    v31 = *(v43 + 8 * v15);
    if ((v31 & v49) == 0)
    {
      goto LABEL_33;
    }

    v52 = v27;
    if (v48 != *(v46 + 36))
    {
      goto LABEL_34;
    }

    v32 = v31 & (-2 << (v11 & 0x3F));
    if (v32)
    {
      v13 = __clz(__rbit64(v32)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v6 = v50;
      v14 = v41;
    }

    else
    {
      v33 = v15 << 6;
      v34 = v15 + 1;
      v14 = v41;
      v35 = (v40 + 8 * v15);
      v6 = v50;
      while (v34 < (v13 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_1E5F87098(v11, v48, 0);
          v13 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v11, v48, 0);
    }

LABEL_4:
    v12 = v47 + 1;
    v11 = v13;
    v3 = v42;
    if (v47 + 1 == v14)
    {
      return v52;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E608521C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-1] - v9;
  sub_1E5E20198(7, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074120, &qword_1E65EFA78);
  result = swift_dynamicCast();
  if (result)
  {
    v13[0] = a1;
    v13[1] = a2;
    v14 = a3;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1E608537C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v63 = type metadata accessor for RemoteBrowsingService();
  Description = v63[-1].Description;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v63);
  v62 = v4;
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v48 - v7;
  v8 = type metadata accessor for BookmarkService();
  v9 = v8[-1].Description;
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = v11;
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v15 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v16 = type metadata accessor for AppEnvironment();
  v17 = *(v16 + 44);
  v59 = v17;
  v53 = *(v16 + 100);
  v18 = *(v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v19 = v9[2];
  v57 = (v9 + 2);
  v58 = v19;
  v20 = v15 + v17;
  v21 = v15;
  v48 = v15;
  v19(v13, v20, v8);
  v54 = v8;
  v22 = *(v9 + 80);
  v56 = v12;
  v23 = swift_allocObject();
  v24 = v9[4];
  v55 = (v9 + 4);
  v60 = v24;
  v24(v23 + ((v22 + 16) & ~v22), v13, v8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074120, &qword_1E65EFA78);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = sub_1E65E4E68();
  v52 = v28;
  v29 = v66;
  v66[3] = v25;
  v29[4] = &off_1F5FAA810;
  *v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E65EB9E0;
  v31 = sub_1E65E60A8();
  v32 = *(v31 - 8);
  v49 = *(v32 + 56);
  v50 = v32 + 56;
  v51 = v13;
  v33 = v61;
  v49(v61, 1, 1, v31);
  v35 = v64;
  v34 = Description;
  v36 = v63;
  (Description[2])(v64, v21 + v53, v63);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = (v62 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (v34[4])(v39 + v37, v35, v36);
  v40 = v52;
  *(v39 + v38) = v52;
  v41 = v40;
  swift_retain_n();
  *(v30 + 32) = sub_1E6059EAC(0, 0, v33, &unk_1E65EFA88, v39);
  v49(v33, 1, 1, v31);
  v42 = v51;
  v43 = v54;
  v58(v51, v48 + v59, v54);
  v44 = (v22 + 32) & ~v22;
  v45 = (v56 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v60(v46 + v44, v42, v43);
  *(v46 + v45) = v41;
  result = sub_1E6059EAC(0, 0, v33, &unk_1E65EFA98, v46);
  *(v30 + 40) = result;
  v66[5] = v30;
  return result;
}

uint64_t sub_1E60858D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 49) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6085908, 0, 0);
}

uint64_t sub_1E6085908()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 64);
  v3 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074150, &qword_1E65EFAF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 0x207010408uLL >> (8 * v1);
  v6 = sub_1E5F9B84C(inited);
  *(v0 + 96) = v6;
  swift_setDeallocating();
  v10 = (v3 + *v3);
  v7 = v3[1];
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_1E6085A6C;

  return v10(v6);
}

uint64_t sub_1E6085A6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_1E6085C78;
  }

  else
  {
    v8 = v4[11];
    v9 = v4[12];

    v4[15] = a1;
    v7 = sub_1E6085BA4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6085BA4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 49);
  sub_1E600B01C(v4, v3, *(v0 + 49));
  v7 = sub_1E608B580(v1, v4, v3, v6);
  sub_1E6001C2C(v4, v3, v6);
  v8 = *(v7 + 16);

  *v5 = v8 != 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E6085C78()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1E6085CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6085E50, 0, 0);
}

uint64_t sub_1E6085E50()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6085F4C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6085F4C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6086064, 0, 0);
}

uint64_t sub_1E6086064()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6086140;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6086140()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E608623C, 0, 0);
}

uint64_t sub_1E608623C()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E608638C, v7, v6);
  }
}

uint64_t sub_1E608638C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E60863FC, 0, 0);
}

uint64_t sub_1E60863FC()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6086140;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E60864BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65D8C08();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074128, &qword_1E65EFAA0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074138, &qword_1E65EFAB0);
  v5[11] = v13;
  v14 = *(v13 - 8);
  v5[12] = v14;
  v15 = *(v14 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6086684, 0, 0);
}

uint64_t sub_1E6086684()
{
  v1 = v0[2];
  v2 = BookmarkService.makeBookmarkUpdatedStream.getter();
  v0[14] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1E6086780;
  v6 = v0[10];

  return v8(v6);
}

uint64_t sub_1E6086780()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6086898, 0, 0);
}

uint64_t sub_1E6086898()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v0[16] = 0;
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1E6086978;
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[7];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6086978()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6086A74, 0, 0);
}

uint64_t sub_1E6086A74()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[10];
    v5 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    (*(v3 + 32))(v0[6], v1, v2);
    v9 = sub_1E65D8BF8();
    v10 = sub_1E6084DEC(v9);
    v0[18] = v10;

    v11 = sub_1E65D8BE8();
    v0[19] = sub_1E6084DEC(v11);
    v0[20] = v8;

    sub_1E5FA9E80(v12);
    v0[21] = sub_1E600AEC8(v10);

    sub_1E65E6058();
    v0[22] = sub_1E65E6048();
    v14 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6086C54, v14, v13);
  }
}

uint64_t sub_1E6086C54()
{
  v1 = v0[22];
  v2 = v0[3];

  v0[23] = sub_1E65E4E48();

  return MEMORY[0x1EEE6DFA0](sub_1E6086CC8, 0, 0);
}

uint64_t sub_1E6086CC8()
{
  v1 = v0[21];
  v2 = sub_1E60872AC(v0[23]);

  v3 = sub_1E608A3B0(v2, v1, sub_1E608A58C, sub_1E608A58C);

  v4 = -1;
  v5 = -1 << v3[32];
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 7);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v0[24] = v9;
  while (v6)
  {
LABEL_5:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(v3 + 6) + 24 * (v10 | (v8 << 6));
    v12 = *(v11 + 16);
    if (v12 != 255)
    {
      v38 = *v11;
      v36 = *(v11 + 8);
      sub_1E600B01C(*v11, v36, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E64F64F4(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_1E64F64F4((v14 > 1), v15 + 1, 1, v9);
        v16 = v15 + 1;
        v9 = v18;
      }

      *(v9 + 2) = v16;
      v17 = &v9[24 * v15];
      *(v17 + 4) = v38;
      *(v17 + 5) = v36;
      v17[48] = v12;
      goto LABEL_4;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v13 + 56];
    ++v8;
    if (v6)
    {
      v8 = v13;
      goto LABEL_5;
    }
  }

  if (qword_1EE2D7790 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
LABEL_17:
  v20 = v0[18];
  v19 = v0[19];
  v21 = sub_1E65E3B68();
  __swift_project_value_buffer(v21, qword_1EE2EA2A0);

  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  v24 = os_log_type_enabled(v22, v23);
  v26 = v0[18];
  v25 = v0[19];
  if (v24)
  {
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    v28 = *(v26 + 16);

    *(v27 + 4) = v28;

    *(v27 + 12) = 2048;
    v29 = *(v25 + 16);

    *(v27 + 14) = v29;

    *(v27 + 22) = 2048;
    *(v27 + 24) = *(v9 + 2);

    _os_log_impl(&dword_1E5DE9000, v22, v23, "Bookmarks Changed, inserted %ld, deleted: %ld, total affected: %ld", v27, 0x20u);
    MEMORY[0x1E694F1C0](v27, -1, -1);
  }

  else
  {
    v30 = v0[19];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v31 = v0[3];
  v32 = swift_task_alloc();
  v0[25] = v32;
  *(v32 + 16) = v9;
  *(v32 + 24) = v31;
  v33 = *(MEMORY[0x1E69E87D8] + 4);
  v34 = swift_task_alloc();
  v0[26] = v34;
  *v34 = v0;
  v34[1] = sub_1E60870B0;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1E60870B0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E60871E4, 0, 0);
}

uint64_t sub_1E60871E4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v0[16] = v0[20];
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1E6086978;
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E60872AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074148, &qword_1E65EFAF0);
    v1 = sub_1E65E6888();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 56;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = *(a1 + 48) + 24 * (__clz(__rbit64(v4)) | (v8 << 6));
    sub_1E600B01C(*v12, *(v12 + 8), *(v12 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072080, &qword_1E65EA768);
    swift_dynamicCast();
    v13 = *(v1 + 40);
    sub_1E65E6D28();
    if (v25 == 255)
    {
      sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if (v25 <= 1u)
      {
        v14 = v25 != 0;
      }

      else if (v25 == 2)
      {
        v14 = 2;
      }

      else if (v25 == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      MEMORY[0x1E694E740](v14);
      sub_1E65E5D78();
    }

    result = sub_1E65E6D78();
    v15 = -1 << *(v1 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_36;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v1 + 48) + 24 * v9;
    *v10 = v23;
    *(v10 + 8) = v24;
    *(v10 + 16) = v25;
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 56 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1E6087584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6087630, 0, 0);
}

uint64_t sub_1E6087630()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1E65E60A8();
    v4 = *(v3 - 8);
    v32 = *(v4 + 56);
    v31 = (v4 + 48);
    v30 = (v4 + 8);
    v5 = (v1 + 48);
    v33 = v3;
    do
    {
      v36 = v2;
      v9 = *(v0 + 96);
      v8 = *(v0 + 104);
      v10 = *(v0 + 88);
      v11 = *(v5 - 2);
      v12 = *(v5 - 1);
      v34 = v5;
      v13 = *v5;
      v32(v8, 1, 1, v3);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v12;
      *(v14 + 56) = v13;
      sub_1E5DF4C84(v8, v9);
      LODWORD(v9) = (*v31)(v9, 1, v3);
      sub_1E600B01C(v11, v12, v13);
      v35 = v12;
      v16 = v12;
      v17 = v13;
      sub_1E600B01C(v11, v16, v13);

      v18 = *(v0 + 96);
      if (v9 == 1)
      {
        sub_1E5DFE50C(*(v0 + 96), &unk_1ED0735B0, &qword_1E65EA000);
      }

      else
      {
        sub_1E65E6098();
        (*v30)(v18, v3);
      }

      if (*v15)
      {
        v19 = *(v14 + 24);
        v20 = *v15;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_1E65E5FC8();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = **(v0 + 72);
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_1E65EFAD0;
      *(v25 + 24) = v14;

      if (v23 | v21)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      else
      {
        v6 = 0;
      }

      v5 = v34 + 24;
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_1E6001C2C(v11, v35, v17);
      sub_1E5DFE50C(v7, &unk_1ED0735B0, &qword_1E65EA000);
      v2 = v36 - 1;
      v3 = v33;
    }

    while (v36 != 1);
  }

  v27 = *(v0 + 96);
  v26 = *(v0 + 104);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1E608795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6087A30, 0, 0);
}

uint64_t sub_1E6087A30()
{
  v1 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  *(v0 + 88) = sub_1E65E6058();
  *(v0 + 96) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6087AD8, v3, v2);
}

uint64_t sub_1E6087AD8()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[5];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6087B54, 0, 0);
}

uint64_t sub_1E6087B54()
{
  v1 = *(v0 + 88);
  *(v0 + 104) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6087BE0, v3, v2);
}

uint64_t sub_1E6087BE0()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  sub_1E65E4E18();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6087C78(uint64_t a1, uint64_t a2)
{
  Description = type metadata accessor for BookmarkService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E60858D8(a1, a2, v2 + v7);
}

uint64_t sub_1E6087D5C(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6085CE4(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_3Tm_4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  v7 = *(v1 + v5);

  return swift_deallocObject();
}

uint64_t sub_1E6087F5C(uint64_t a1)
{
  Description = type metadata accessor for BookmarkService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60864BC(a1, v6, v7, v1 + v5, v8);
}

unint64_t *sub_1E608807C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1E600B01C(a4, a5, a6);
    v12 = sub_1E608B308(v11, a2, a3, a4, a5);

    sub_1E6001C2C(a4, a5, a6);
    sub_1E6001C2C(a4, a5, a6);
    return v12;
  }

  return result;
}

void *sub_1E608814C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1E60881E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65D9CC8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741B8, &qword_1E65EFB28);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B9C8(&qword_1EE2D7028, MEMORY[0x1E69CC888]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1E608850C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65D7B58();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B9C8(&qword_1ED074160, MEMORY[0x1E69CB020]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1E6088834(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65DADD8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B9C8(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1E6088B5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074148, &qword_1E65EFAF0);
  result = sub_1E65E6888();
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
  v12 = result + 56;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *(v16 + 8);
    v34 = *v16;
    v18 = *(v16 + 16);
    v19 = *(v9 + 40);
    sub_1E65E6D28();
    if (v18 == 255)
    {
      sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if (v18 <= 1)
      {
        if (v18)
        {
          MEMORY[0x1E694E740](1);
          v20 = v34;
          v21 = v17;
          v22 = 1;
        }

        else
        {
          MEMORY[0x1E694E740](0);
          v20 = v34;
          v21 = v17;
          v22 = 0;
        }
      }

      else if (v18 == 2)
      {
        MEMORY[0x1E694E740](2);
        v20 = v34;
        v21 = v17;
        v22 = 2;
      }

      else if (v18 == 3)
      {
        MEMORY[0x1E694E740](3);
        v20 = v34;
        v21 = v17;
        v22 = 3;
      }

      else
      {
        MEMORY[0x1E694E740](4);
        v20 = v34;
        v21 = v17;
        v22 = 4;
      }

      sub_1E600B01C(v20, v21, v22);
      sub_1E65E5D78();
    }

    result = sub_1E65E6D78();
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
          goto LABEL_39;
        }
      }

      goto LABEL_43;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_39:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 24 * v26;
    *v31 = v34;
    *(v31 + 8) = v17;
    *(v31 + 16) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_44;
    }

    v4 = v33;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1E6088E5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B760, &qword_1E65EA440);
  result = sub_1E65E6888();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1E65E6D28();

    sub_1E65E5D78();
    result = sub_1E65E6D78();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6089080(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072028, &qword_1E65EA490);
  result = sub_1E65E6888();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = v16[1];
    v29 = *v16;
    v18 = *(v9 + 40);
    sub_1E65E6D28();
    if (v17 > 2)
    {
      if (v17 != 3 && v17 != 4 && v17 != 5)
      {
LABEL_25:
        sub_1E5E05374(v29, v17);
        MEMORY[0x1E694D7C0](v29, v17);
      }
    }

    else if (v17 > 2)
    {
      goto LABEL_25;
    }

    sub_1E65E5D78();

    result = sub_1E65E6D78();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_40;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v29;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_41;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1E60893A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65D8838();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741A8, &qword_1E65EFB20);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B9C8(&qword_1ED0741B0, MEMORY[0x1E69CB5B8]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1E60896C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65D96F8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074188, &qword_1E65EFB10);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B9C8(&qword_1ED074190, MEMORY[0x1E69CC278]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1E60899F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65D9D28();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074198, &qword_1E65EFB18);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B9C8(&qword_1ED0741A0, MEMORY[0x1E69CC8D0]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1E6089D18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65DA488();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074168, &qword_1E65EFB00);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B9C8(&qword_1ED074170, MEMORY[0x1E69CCDC8]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1E608A040(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074178, &qword_1E65EFB08);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E608B964();
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

void *sub_1E608A340(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1E608A3B0(a1, a2, sub_1E608AC24, sub_1E608AC24);
}

void *sub_1E608A3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_1E608814C(v16, v10, a2, a1, a4);

    MEMORY[0x1E694F1C0](v16, -1, -1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_1E608A58C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v59 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_54;
  }

  v62 = 0;
  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v4 = a3 + 56;
  v56 = v11;
  v57 = a4 + 56;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v12 = __clz(__rbit64(v10));
      v60 = (v10 - 1) & v10;
    }

    else
    {
      v13 = v6;
      do
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_108;
        }

        if (v6 >= v11)
        {
LABEL_106:

          return sub_1E6088B5C(v59, a2, v62, v5);
        }

        v14 = *(v7 + 8 * v6);
        ++v13;
      }

      while (!v14);
      v12 = __clz(__rbit64(v14));
      v60 = (v14 - 1) & v14;
    }

    v15 = *(a4 + 48) + 24 * (v12 | (v6 << 6));
    v67 = *v15;
    v65 = *(v15 + 8);
    v16 = *(v15 + 16);
    v17 = *(v5 + 40);
    sub_1E65E6D28();
    if (v16 == 255)
    {
      sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if (v16 <= 1)
      {
        if (v16)
        {
          MEMORY[0x1E694E740](1);
          v18 = v67;
          v19 = v65;
          v20 = 1;
        }

        else
        {
          MEMORY[0x1E694E740](0);
          v18 = v67;
          v19 = v65;
          v20 = 0;
        }
      }

      else if (v16 == 2)
      {
        MEMORY[0x1E694E740](2);
        v18 = v67;
        v19 = v65;
        v20 = 2;
      }

      else if (v16 == 3)
      {
        MEMORY[0x1E694E740](3);
        v18 = v67;
        v19 = v65;
        v20 = 3;
      }

      else
      {
        MEMORY[0x1E694E740](4);
        v18 = v67;
        v19 = v65;
        v20 = 4;
      }

      sub_1E600B01C(v18, v19, v20);
      sub_1E65E5D78();
    }

    result = sub_1E65E6D78();
    v21 = -1 << *(v5 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v4 + 8 * (v22 >> 6))) != 0)
    {
      break;
    }

LABEL_6:
    result = sub_1E600B034(v67, v65, v16);
    v5 = a3;
    v11 = v56;
    v7 = v57;
    v10 = v60;
  }

  v25 = ~v21;
  v26 = *(a3 + 48);
  while (1)
  {
    v27 = v26 + 24 * v22;
    v28 = *(v27 + 16);
    if (v28 == 255)
    {
      if (v16 == 255)
      {
        goto LABEL_51;
      }

      goto LABEL_29;
    }

    if (v16 == 255)
    {
      goto LABEL_29;
    }

    result = *v27;
    if (*(v27 + 16) <= 1u)
    {
      break;
    }

    if (v28 == 2)
    {
      if (v16 == 2)
      {
        goto LABEL_45;
      }
    }

    else if (v28 == 3)
    {
      if (v16 == 3)
      {
        goto LABEL_45;
      }
    }

    else if (v16 == 4)
    {
      goto LABEL_45;
    }

LABEL_29:
    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if ((*(v4 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!*(v27 + 16))
  {
    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  if (v16 != 1)
  {
    goto LABEL_29;
  }

LABEL_45:
  if (result != v67 || *(v27 + 8) != v65)
  {
    result = sub_1E65E6C18();
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  result = sub_1E600B034(v67, v65, v28);
LABEL_51:
  v7 = v57;
  v59[v23] |= v24;
  v10 = v60;
  v30 = __OFADD__(v62++, 1);
  v5 = a3;
  v11 = v56;
  if (!v30)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_54:
  v31 = 0;
  v58 = v5 + 56;
  v32 = 1 << *(v5 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v5 + 56);
  v35 = (v32 + 63) >> 6;
  v36 = v4 + 56;
  v61 = v35;
  v62 = 0;
  while (2)
  {
    if (v34)
    {
      v37 = __clz(__rbit64(v34));
      v68 = (v34 - 1) & v34;
LABEL_66:
      v66 = v37 | (v31 << 6);
      v40 = *(v5 + 48) + 24 * v66;
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      v44 = *(v4 + 40);
      sub_1E65E6D28();
      if (v43 == 255)
      {
        sub_1E65E6D48();
      }

      else
      {
        sub_1E65E6D48();
        if (v43 <= 1)
        {
          if (v43)
          {
            MEMORY[0x1E694E740](1);
            v45 = v41;
            v46 = v42;
            v47 = 1;
          }

          else
          {
            MEMORY[0x1E694E740](0);
            v45 = v41;
            v46 = v42;
            v47 = 0;
          }
        }

        else if (v43 == 2)
        {
          MEMORY[0x1E694E740](2);
          v45 = v41;
          v46 = v42;
          v47 = 2;
        }

        else if (v43 == 3)
        {
          MEMORY[0x1E694E740](3);
          v45 = v41;
          v46 = v42;
          v47 = 3;
        }

        else
        {
          MEMORY[0x1E694E740](4);
          v45 = v41;
          v46 = v42;
          v47 = 4;
        }

        sub_1E600B01C(v45, v46, v47);
        sub_1E65E5D78();
      }

      result = sub_1E65E6D78();
      v48 = -1 << *(v4 + 32);
      v49 = result & ~v48;
      if (((*(v36 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
LABEL_58:
        result = sub_1E600B034(v41, v42, v43);
        v4 = a4;
        v5 = a3;
        v35 = v61;
        v34 = v68;
        continue;
      }

      v50 = ~v48;
      v51 = *(a4 + 48);
LABEL_82:
      v52 = v51 + 24 * v49;
      v53 = *(v52 + 16);
      if (v53 == 255)
      {
        if (v43 == 255)
        {
          goto LABEL_103;
        }
      }

      else if (v43 != 255)
      {
        result = *v52;
        if (*(v52 + 16) <= 1u)
        {
          if (*(v52 + 16))
          {
            if (v43 == 1)
            {
LABEL_97:
              v54 = result == v41 && *(v52 + 8) == v42;
              if (v54 || (result = sub_1E65E6C18(), (result & 1) != 0))
              {
                result = sub_1E600B034(v41, v42, v53);
LABEL_103:
                v5 = a3;
                *(v59 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
                v4 = a4;
                v30 = __OFADD__(v62++, 1);
                v35 = v61;
                v34 = v68;
                if (v30)
                {
                  __break(1u);
                  goto LABEL_106;
                }

                continue;
              }
            }
          }

          else if (!v43)
          {
            goto LABEL_97;
          }
        }

        else if (v53 == 2)
        {
          if (v43 == 2)
          {
            goto LABEL_97;
          }
        }

        else if (v53 == 3)
        {
          if (v43 == 3)
          {
            goto LABEL_97;
          }
        }

        else if (v43 == 4)
        {
          goto LABEL_97;
        }
      }

      v49 = (v49 + 1) & v50;
      if (((*(v36 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_82;
    }

    break;
  }

  v38 = v31;
  while (1)
  {
    v31 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v31 >= v35)
    {
      goto LABEL_106;
    }

    v39 = *(v58 + 8 * v31);
    ++v38;
    if (v39)
    {
      v37 = __clz(__rbit64(v39));
      v68 = (v39 - 1) & v39;
      goto LABEL_66;
    }
  }

LABEL_108:
  __break(1u);
  return result;
}

uint64_t sub_1E608AC24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_1E65E6D28();

      sub_1E65E5D78();
      v27 = sub_1E65E6D78();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_1E65E6C18() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1E6088E5C(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_1E65E6D28();

      sub_1E65E5D78();
      v41 = sub_1E65E6D78();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_1E65E6C18() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E608B000(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 0xFF)
  {
    return sub_1E65E6D48();
  }

  sub_1E65E6D48();
  if (a4 <= 1u)
  {
    v5 = a4 != 0;
  }

  else if (a4 == 2)
  {
    v5 = 2;
  }

  else if (a4 == 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  MEMORY[0x1E694E740](v5);

  return sub_1E65E5D78();
}

uint64_t sub_1E608B0C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6087584(a1, a2, v7, v6);
}

uint64_t sub_1E608B178(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E608795C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E608B250(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5DF7474(a1, v5);
}

uint64_t sub_1E608B308(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v36 = a5;
  v37 = a4;
  v30 = a1;
  v6 = sub_1E65DADD8();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v34 = v9;
  v35 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v33 = v9 + 16;
  v31 = 0;
  v32 = (v9 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v24 = v21 | (v12 << 6);
    (*(v34 + 16))(v11, *(v35 + 48) + *(v34 + 72) * v24, v6);
    if (sub_1E65DADA8() == v37 && v25 == v36)
    {

      result = (*v32)(v11, v6);
      goto LABEL_15;
    }

    v20 = sub_1E65E6C18();

    result = (*v32)(v11, v6);
    if (v20)
    {
LABEL_15:
      *(v30 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_18:
        v27 = v35;

        return sub_1E6088834(v30, v29, v31, v27);
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_18;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E608B580(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v44 = *MEMORY[0x1E69E9840];
  v42 = sub_1E65DADD8();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v14 = v12 & 0x3F;
  v35 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v35;
  v43 = a2;
  v41 = a3;
  v16 = sub_1E600B01C(a2, a3, a4);
  if (v14 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v33 = a4;
    v34 = v5;
    v32[1] = v32;
    MEMORY[0x1EEE9AC00](v16);
    v36 = v32 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v15);
    v17 = 0;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v5 = (v18 + 63) >> 6;
    v39 = v10 + 16;
    v40 = v10;
    v37 = 0;
    v38 = (v10 + 8);
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_13:
      v10 = v21 | (v17 << 6);
      a4 = a1;
      (*(v40 + 16))(v13, *(a1 + 48) + *(v40 + 72) * v10, v42);
      if (sub_1E65DADA8() == v43 && v24 == v41)
      {

        (*v38)(v13, v42);
        goto LABEL_16;
      }

      v15 = sub_1E65E6C18();

      (*v38)(v13, v42);
      if (v15)
      {
LABEL_16:
        *&v36[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_19:
          v26 = sub_1E6088834(v36, v35, v37, a1);
          sub_1E6001C2C(v43, v41, v33);
          goto LABEL_20;
        }
      }
    }

    v22 = v17;
    while (1)
    {
      v17 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v17 >= v5)
      {
        goto LABEL_19;
      }

      v23 = *(a1 + 56 + 8 * v17);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = swift_slowAlloc();
  v30 = v43;
  v31 = v41;
  sub_1E600B01C(v43, v41, a4);
  v26 = sub_1E608807C(v29, v35, a1, v30, v31, a4);

  MEMORY[0x1E694F1C0](v29, -1, -1);
  sub_1E6001C2C(v30, v31, a4);
LABEL_20:
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

unint64_t sub_1E608B964()
{
  result = qword_1ED074180;
  if (!qword_1ED074180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072920, &qword_1E65EC040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074180);
  }

  return result;
}

uint64_t sub_1E608B9C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E608BA10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C0, &qword_1E65EFB30);
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1E65DB928();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1E65DC108();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  sub_1E5E1DEAC(v1, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_1E5E1FA80(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_1E65DB918();
  sub_1E65DC0F8();
  type metadata accessor for AppFeature();
  sub_1E608C470(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E608C470(&qword_1EE2D6BB0, MEMORY[0x1E699D3C0]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v19 = sub_1E65E4F08();
  (*(v21 + 8))(v5, v22);
  (*(v12 + 8))(v15, v11);
  return v19;
}

uint64_t sub_1E608BD88(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E608BE28, 0, 0);
}

uint64_t sub_1E608BE28()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 40);
  v4 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E608BF44;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E608BF44()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E608C05C, 0, 0);
}

uint64_t sub_1E608C05C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D0, &qword_1E65EFB58);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4498, &qword_1ED0741D0, &qword_1E65EFB58);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E65DC008();
  sub_1E5FED46C(&qword_1EE2D4780, &qword_1ED0728B0, &qword_1E65EBF38);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E608C19C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E608BD88(a1, v1 + v5);
}

uint64_t sub_1E608C298()
{
  v1 = *(v0 + 16);
  sub_1E65DBFF8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E608C2F8(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DC068();
  v8 = type metadata accessor for AppState();
  v9 = a1 + v8[14];
  v10 = *(v9 + 8);

  *(v9 + 8) = v7;
  v11 = sub_1E65DC048();
  v12 = a1 + v8[15];
  v13 = *(v12 + 8);

  *(v12 + 8) = v11;
  v14 = sub_1E65DC078();
  v15 = a1 + v8[16];
  v16 = *(v15 + 8);

  *(v15 + 8) = v14;
  v17 = sub_1E65DC088();
  v18 = a1 + v8[17];
  v19 = *(v18 + 8);

  *(v18 + 8) = v17;
  sub_1E65DC038();
  v20 = a1 + v8[19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  return (*(v3 + 40))(v20 + *(v21 + 28), v6, v2);
}

uint64_t sub_1E608C470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E608C4C4()
{
  sub_1E65E0DC8();
  v1 = sub_1E65E6BC8();
  MEMORY[0x1E694D7C0](1313426720, 0xE400000000000000);
  return v1;
}

uint64_t sub_1E608C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E608C5F4, v6, v5);
}

uint64_t sub_1E608C5F4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = (v2 + *(type metadata accessor for AppComposer() + 32));
  v5 = *v3;
  v4 = v3[1];
  swift_getObjectType();
  sub_1E65DB6B8();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1E608C678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a2;
  v141 = a1;
  v138 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v136 = *(v4 - 8);
  v137 = v4;
  v5 = *(v136 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v112 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v124 = &v111 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v111 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v111 - v12;
  v13 = sub_1E65D76F8();
  v132 = *(v13 - 8);
  v133 = v13;
  v14 = *(v132 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v123 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v128 = &v111 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v140 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v139 = &v111 - v25;
  v26 = sub_1E65D7848();
  v129 = *(v26 - 8);
  v130 = v26;
  v27 = *(v129 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v121 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v111 - v30;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v31 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v33 = &v111 - v32;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v127 = *(v126 - 8);
  v34 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v36 = &v111 - v35;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v37 = *(*(v115 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v115);
  v116 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v119 = &v111 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v118 = &v111 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v131 = &v111 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v114 = &v111 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v113 = &v111 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v111 - v50;
  v52 = type metadata accessor for AppState();
  v53 = v52[22];
  sub_1E65DE488();
  v54 = v145;
  v55 = v146;
  v56 = v147;
  v142 = v145;
  v143 = v146;
  v144 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E6001C2C(v54, v55, v56);
  v135 = v51;
  v57 = v126;
  sub_1E65E4C98();
  (*(v127 + 8))(v36, v57);
  v127 = v3;
  sub_1E5DFD1CC(v3, v33, &qword_1ED073950, &unk_1E65F4360);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v60 = *v33;
  v59 = *(v33 + 1);
  v61 = v33[16];
  if (EnumCaseMultiPayload == 1)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0);
    sub_1E6053A2C(&v33[*(v62 + 48)], v131);
    v145 = v60;
    v146 = v59;
    v147 = v61;
    v63 = v52[7];
    sub_1E600B01C(v60, v59, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v64 = v141;
    v65 = v128;
    sub_1E65E4C98();
    v66 = v140;
    sub_1E5E1F544(v140);
    sub_1E5DFE50C(v65, &qword_1ED071F78, &unk_1E65EA3F0);
    v67 = v129;
    v68 = *(v129 + 48);
    v69 = v66;
    v70 = v130;
    if (v68(v69, 1, v130) == 1)
    {
      sub_1E65D77C8();
      v71 = v68(v140, 1, v70);
      v72 = v123;
      if (v71 != 1)
      {
        sub_1E5DFE50C(v140, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v67 + 32))(v121, v140, v70);
      v72 = v123;
    }

    (*(v132 + 16))(v72, v134, v133);
    v83 = *(v64 + v52[48] + 64);
    if (*(v83 + 16))
    {
      v84 = sub_1E6416FB4(v60, v59, v61);
      v86 = v85;
      sub_1E6001C2C(v60, v59, v61);
      if (v86)
      {
        v87 = *(v83 + 56);
        v88 = v136;
        v89 = v87 + *(v136 + 72) * v84;
        v90 = v112;
        v91 = v137;
        (*(v136 + 16))(v112, v89, v137);
        (*(v88 + 32))(v124, v90, v91);
        goto LABEL_18;
      }
    }

    else
    {
      sub_1E6001C2C(v60, v59, v61);
    }

    (*(v136 + 104))(v124, *MEMORY[0x1E699CB70], v137);
LABEL_18:
    sub_1E608D314(v64, v118);
    v101 = v135;
    v102 = v116;
    sub_1E5DFD1CC(v135, v116, &unk_1ED077CC0, &unk_1E65F2610);
    v103 = swift_getEnumCaseMultiPayload();
    v104 = v131;
    v105 = v131;
    if (v103 <= 2)
    {
      if (v103)
      {
        if (v103 != 1)
        {
          sub_1E5DFE50C(v102, &unk_1ED077CC0, &unk_1E65F2610);
          v105 = v104;
          goto LABEL_27;
        }

        v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
        v107 = sub_1E65D76A8();
        (*(*(v107 - 8) + 8))(v102 + v106, v107);
      }

      v105 = v101;
    }

LABEL_27:
    sub_1E5DFD1CC(v105, v119, &unk_1ED077CC0, &unk_1E65F2610);
    sub_1E604BABC();
    sub_1E65DE7C8();
    sub_1E5DFE50C(v104, &unk_1ED077CC0, &unk_1E65F2610);
    v109 = v101;
    return sub_1E5DFE50C(v109, &unk_1ED077CC0, &unk_1E65F2610);
  }

  v145 = *v33;
  v146 = v59;
  v147 = v61;
  v73 = v52[7];
  sub_1E600B01C(v60, v59, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v74 = v141;
  v75 = v128;
  sub_1E65E4C98();
  v76 = v139;
  sub_1E5E1F544(v139);
  sub_1E5DFE50C(v75, &qword_1ED071F78, &unk_1E65EA3F0);
  v77 = v129;
  v78 = *(v129 + 48);
  v79 = v76;
  v80 = v130;
  if (v78(v79, 1, v130) == 1)
  {
    sub_1E65D77C8();
    v81 = v78(v139, 1, v80);
    v82 = v120;
    if (v81 != 1)
    {
      sub_1E5DFE50C(v139, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v77 + 32))(v117, v139, v80);
    v82 = v120;
  }

  (*(v132 + 16))(v82, v134, v133);
  v92 = *(v74 + v52[48] + 64);
  if (!*(v92 + 16))
  {
    sub_1E6001C2C(v60, v59, v61);
    goto LABEL_24;
  }

  v93 = sub_1E6416FB4(v60, v59, v61);
  v95 = v94;
  sub_1E6001C2C(v60, v59, v61);
  if ((v95 & 1) == 0)
  {
LABEL_24:
    (*(v136 + 104))(v122, *MEMORY[0x1E699CB70], v137);
    goto LABEL_25;
  }

  v96 = *(v92 + 56);
  v97 = v136;
  v98 = v96 + *(v136 + 72) * v93;
  v99 = v111;
  v100 = v137;
  (*(v136 + 16))(v111, v98, v137);
  (*(v97 + 32))(v122, v99, v100);
LABEL_25:
  sub_1E608D314(v74, v113);
  v108 = v135;
  sub_1E5DFD1CC(v135, v114, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E604BABC();
  sub_1E65DE7C8();
  v109 = v108;
  return sub_1E5DFE50C(v109, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E608D314@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v2 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v29 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  v5 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  sub_1E65DE488();
  v21 = v36;
  v20 = v37;
  if (v38 == 2)
  {
    v29 = type metadata accessor for AppState();
    v22 = *(v29 + 124);
    v34 = v21;
    v35 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
    sub_1E65E4D78();
    sub_1E6001C2C(v21, v20, 2u);
    sub_1E65E4C98();
    (*(v9 + 8))(v12, v8);
    sub_1E65E4DA8();
    sub_1E5DFE50C(v7, &qword_1ED0741E0, &qword_1E65EFC00);
    v23 = *(v29 + 292);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v4, &qword_1ED0741D8, &unk_1E6606270);
    sub_1E608D85C(v17, v19, v32);
    sub_1E5DFE50C(v17, &unk_1ED077CC0, &unk_1E65F2610);
    v24 = v19;
    v25 = &unk_1ED077CC0;
    v26 = &unk_1E65F2610;
  }

  else
  {
    sub_1E6001C2C(v36, v37, v38);
    v27 = *(type metadata accessor for AppState() + 292);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    sub_1E65E4C98();
    sub_1E65E4DA8();
    v25 = &qword_1ED0741D8;
    v26 = &unk_1E6606270;
    v24 = v4;
  }

  return sub_1E5DFE50C(v24, v25, v26);
}

uint64_t sub_1E608D72C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E65DA128();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E65DA888();
  sub_1E65DA108();
  (*(v3 + 8))(v6, v2);
  v8[15] = 0;
  sub_1E608DB34();
  sub_1E608DB88();
  LOBYTE(v2) = sub_1E65E6228();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1E608D85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E65D76A8();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  sub_1E5DFD1CC(a1, &v27 - v15, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return sub_1E5DFD1CC(a1, a3, &unk_1ED077CC0, &unk_1E65F2610);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v25 = v16;
LABEL_14:
      sub_1E5DFE50C(v25, &unk_1ED077CC0, &unk_1E65F2610);
      return sub_1E5DFD1CC(a1, a3, &unk_1ED077CC0, &unk_1E65F2610);
    }

    v18 = *v16;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
    (*(v28 + 8))(&v16[*(v19 + 48)], v6);
  }

  else
  {
    v18 = *v16;
  }

  sub_1E5DFD1CC(a2, v14, &unk_1ED077CC0, &unk_1E65F2610);
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 2)
  {
    if (!v20)
    {
      *a3 = v18 & *v14;
      return swift_storeEnumTagMultiPayload();
    }

    if (v20 == 1)
    {
      v21 = *v14;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
      v23 = *(v28 + 32);
      v23(v9, &v14[*(v22 + 48)], v6);
      v24 = *(v22 + 48);
      *a3 = v18 & v21;
      v23(&a3[v24], v9, v6);
      return swift_storeEnumTagMultiPayload();
    }

    v25 = v14;
    goto LABEL_14;
  }

  return sub_1E5DFD1CC(a1, a3, &unk_1ED077CC0, &unk_1E65F2610);
}

unint64_t sub_1E608DB34()
{
  result = qword_1ED0741F8;
  if (!qword_1ED0741F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0741F8);
  }

  return result;
}

unint64_t sub_1E608DB88()
{
  result = qword_1ED074200;
  if (!qword_1ED074200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074200);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E608DBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E608DC44(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E608DCB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E608DCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1E608DD40(uint64_t result, unsigned int a2)
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

uint64_t sub_1E608DD78()
{
  sub_1E608E000(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    return sub_1E6009FC0(v3);
  }

  else
  {
    v2 = *&v5[0];
    MEMORY[0x1E694E740](0);
    return MEMORY[0x1E694E740](v2);
  }
}

uint64_t sub_1E608DE08()
{
  sub_1E65E6D28();
  sub_1E608E000(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    sub_1E6009FC0(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x1E694E740](0);
    MEMORY[0x1E694E740](v1);
  }

  return sub_1E65E6D78();
}

uint64_t sub_1E608DEB0()
{
  sub_1E65E6D28();
  sub_1E608E000(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    sub_1E6009FC0(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x1E694E740](0);
    MEMORY[0x1E694E740](v1);
  }

  return sub_1E65E6D78();
}

unint64_t sub_1E608DF54()
{
  result = qword_1EE2D85B8;
  if (!qword_1EE2D85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D85B8);
  }

  return result;
}

unint64_t sub_1E608DFAC()
{
  result = qword_1ED074208;
  if (!qword_1ED074208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074208);
  }

  return result;
}

uint64_t sub_1E608E038(uint64_t a1, uint64_t a2)
{
  sub_1E608E000(a1, v8);
  sub_1E608E000(a2, v9);
  if ((v8[40] & 1) == 0)
  {
    sub_1E608E000(v8, v7);
    if ((v11 & 1) == 0)
    {
      v3 = v7[0] == *&v9[0];
      goto LABEL_6;
    }

LABEL_8:
    sub_1E608E114(v8);
    v3 = 0;
    return v3 & 1;
  }

  sub_1E608E000(v8, v7);
  if (v11 != 1)
  {
    sub_1E6009FC0(v7);
    goto LABEL_8;
  }

  v5[0] = v9[0];
  v5[1] = v9[1];
  v6 = v10;
  v3 = MEMORY[0x1E694E230](v7, v5);
  sub_1E6009FC0(v5);
  sub_1E6009FC0(v7);
LABEL_6:
  sub_1E608E17C(v8);
  return v3 & 1;
}

uint64_t sub_1E608E114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074210, &qword_1E65EFDF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AppDataItemResolver()
{
  result = qword_1EE2D9998;
  if (!qword_1EE2D9998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E608E220()
{
  sub_1E608E2BC();
  if (v0 <= 0x3F)
  {
    sub_1E5DEC91C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppEnvironment();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E608E2BC()
{
  if (!qword_1EE2D5150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074218, &qword_1E65EFE18);
    v0 = sub_1E65E3B08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D5150);
    }
  }
}

uint64_t sub_1E608E33C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v8 = sub_1E6417254(a2), (v9 & 1) != 0))
  {
    sub_1E608E474(*(v5 + 56) + 48 * v8, v16);
    if (v17)
    {
      return sub_1E5DF599C(v16, a4);
    }

    else
    {
      v11 = *&v16[0];
      v12 = *(a3 + 8);
      v13 = type metadata accessor for AppDataItemResolver();
      v11(v12, a3 + *(v13 + 24));
      sub_1E608E000(a2, v15);
      sub_1E5DF650C(a4, v14);
      v14[40] = 1;
      sub_1E64078D0(v14, v15);
    }
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

void sub_1E608E4AC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  sub_1E608EBB8(a1 + 32, &v51);
  v49 = v51;
  v50[0] = v52[0];
  *(v50 + 9) = *(v52 + 9);
  v47 = v53;
  v48[0] = v54[0];
  *(v48 + 9) = *(v54 + 9);
  v7 = *a3;
  v8 = sub_1E6417254(&v49);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (v7[3] < v13)
  {
    sub_1E641B10C(v13, a2 & 1);
    v15 = *a3;
    v8 = sub_1E6417254(&v49);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = sub_1E65E6C68();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v8;
  sub_1E6424340();
  v8 = v19;
  if (v14)
  {
LABEL_8:
    v17 = swift_allocError();
    swift_willThrow();

    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E608EC28(&v47);
      sub_1E608E17C(&v49);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v21 = (v20[6] + 48 * v8);
  v22 = v49;
  v23 = v50[0];
  *(v21 + 25) = *(v50 + 9);
  *v21 = v22;
  v21[1] = v23;
  v24 = (v20[7] + 48 * v8);
  v25 = v47;
  v26 = v48[0];
  *(v24 + 25) = *(v48 + 9);
  *v24 = v25;
  v24[1] = v26;
  v27 = v20[2];
  v12 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v12)
  {
    v20[2] = v28;
    if (v4 != 1)
    {
      v14 = a1 + 128;
      v29 = 1;
      while (v29 < *(a1 + 16))
      {
        sub_1E608EBB8(v14, &v51);
        v49 = v51;
        v50[0] = v52[0];
        *(v50 + 9) = *(v52 + 9);
        v47 = v53;
        v48[0] = v54[0];
        *(v48 + 9) = *(v54 + 9);
        v30 = *a3;
        v31 = sub_1E6417254(&v49);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v12 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v12)
        {
          goto LABEL_22;
        }

        a2 = v32;
        if (v30[3] < v35)
        {
          sub_1E641B10C(v35, 1);
          v36 = *a3;
          v31 = sub_1E6417254(&v49);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v38 = *a3;
        *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v39 = (v38[6] + 48 * v31);
        v40 = v49;
        v41 = v50[0];
        *(v39 + 25) = *(v50 + 9);
        *v39 = v40;
        v39[1] = v41;
        v42 = (v38[7] + 48 * v31);
        v43 = v47;
        v44 = v48[0];
        *(v42 + 25) = *(v48 + 9);
        *v42 = v43;
        v42[1] = v44;
        v45 = v38[2];
        v12 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v29;
        v38[2] = v46;
        v14 += 96;
        if (v4 == v29)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E608E898(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *v2;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_1E64F6354(result, v9, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E608E9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1E601C1B4(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      sub_1E608EB5C(v4, &v15);
      v19 = v15;
      *v20 = v16[0];
      *&v20[9] = *(v16 + 9);
      v5 = v17;
      v18 = 0;
      v21 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v14 = v17;
        sub_1E601C1B4((v6 > 1), v7 + 1, 1);
        v5 = v14;
        v2 = v21;
      }

      *(v2 + 16) = v7 + 1;
      v8 = v2 + 96 * v7;
      v10 = *v20;
      v9 = *&v20[16];
      *(v8 + 32) = v19;
      *(v8 + 48) = v10;
      *(v8 + 64) = v9;
      *(v8 + 80) = v5;
      v11 = *&v16[0];
      *(v8 + 96) = v15;
      *(v8 + 112) = v11;
      *(v8 + 120) = v18;
      v4 += 64;
      --v1;
    }

    while (v1);
  }

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074220, &qword_1E65EFEA0);
    v12 = sub_1E65E6A28();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  *&v15 = v12;
  sub_1E608E4AC(v2, 1, &v15);
  return v15;
}

uint64_t sub_1E608EBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731D0, &qword_1E65ED028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E608EC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65D7348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7338();
  sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
  v7 = sub_1E65D83C8();
  v90 = sub_1E63E9F24(v7, v8);
  sub_1E608F990();
  sub_1E65D7358();
  sub_1E65D83B8();
  v9 = v110;
  if (v110 >> 1 == 0xFFFFFFFF)
  {
    return (*(v3 + 32))(a1, v6, v2);
  }

  v84 = v3;
  v85 = v2;
  v10 = v106 | ((v107 | (v108 << 16)) << 32);
  v86 = a1;
  v81 = v100;
  v80 = v96;
  v83 = v91;
  v82 = v92;
  if (!(v110 >> 62))
  {
    v76 = v97 | ((v98 | (v99 << 16)) << 32);
    v77 = v101;
    v24 = v105 | (v10 << 8);
    v25 = 1 << *(v24 + 0x20);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *((v105 | (v10 << 8)) + 0x38);
    v79 = v90;
    sub_1E5F8710C(v90, v91, v92 & 1);
    v28 = (v25 + 63) >> 6;

    LODWORD(v78) = 0;
    v29 = 0;
    if (!v27)
    {
      goto LABEL_28;
    }

    do
    {
LABEL_26:
      while (1)
      {
        v30 = *(v24 + 48) + 24 * (__clz(__rbit64(v27)) | (v29 << 6));
        v31 = *(v30 + 16);
        v27 &= v27 - 1;
        v88 = *v30;
        v89 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
        result = sub_1E65D7FB8();
        if (v87 != 3)
        {
          break;
        }

        if (!v27)
        {
          goto LABEL_28;
        }
      }

      if (v87 == 1)
      {
        v33 = 0x10000;
      }

      else
      {
        v33 = 0x8000;
      }

      if (v87)
      {
        v34 = v33;
      }

      else
      {
        v34 = 2;
      }

      if ((v34 & v78) != 0)
      {
        v34 = 0;
      }

      LODWORD(v78) = v34 | v78;
    }

    while (v27);
    while (1)
    {
LABEL_28:
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (v32 >= v28)
      {
        break;
      }

      v27 = *(v24 + 56 + 8 * v32);
      ++v29;
      if (v27)
      {
        v29 = v32;
        goto LABEL_26;
      }
    }

    v50 = v79;
    v51 = v83;
    *&v88 = v79;
    *(&v88 + 1) = v83;
    v46 = v82 & 1;
    v89 = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
    sub_1E65D7FB8();
    v52 = v87;
    if (v87 == 14)
    {
      sub_1E608F928(&v90);
      v48 = v50;
      v49 = v51;
LABEL_67:
      sub_1E5F87058(v48, v49, v46);
      v2 = v85;
      a1 = v86;
      v3 = v84;
    }

    else
    {
      sub_1E5F87058(v50, v51, v46);
      v59 = sub_1E60E5CE0(v52);
      LOBYTE(v88) = v80;
      BYTE7(v88) = BYTE6(v76);
      *(&v88 + 5) = WORD2(v76);
      *(&v88 + 1) = v76;
      *(&v88 + 1) = v81;
      v89 = v77 & 1;
      v60 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
      sub_1E65D7FB8();
      v2 = v85;
      a1 = v86;
      v3 = v84;
      if (v87 == 2)
      {
        v61 = 0;
      }

      else
      {
        if (v87)
        {
          v66 = MEMORY[0x1E69DB8D8];
        }

        else
        {
          v66 = MEMORY[0x1E69DB8C8];
        }

        v61 = *v66;
      }

      sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
      LOBYTE(v88) = 0;
      v67 = sub_1E65E64B8();

      v68 = v67;
      *&v88 = sub_1E65E45A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      sub_1E608F928(&v90);
    }

    return (*(v3 + 32))(a1, v6, v2);
  }

  v11 = v109;
  v78 = v105;
  if (v110 >> 62 == 1)
  {
    v76 = v97 | ((v98 | (v99 << 16)) << 32);
    v77 = v101;
    v12 = v111;
    v13 = v111 + 56;
    v14 = 1 << *(v111 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v111 + 56);
    v79 = v90;
    sub_1E5F8710C(v90, v91, v92 & 1);

    v75 = 0;
    v18 = 0;
    if (!v16)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v19 = *(v12 + 48) + 24 * (__clz(__rbit64(v16)) | (v18 << 6));
        v20 = *(v19 + 16);
        v16 &= v16 - 1;
        v88 = *v19;
        v89 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
        result = sub_1E65D7FB8();
        if (v87 != 3)
        {
          break;
        }

        if (!v16)
        {
          goto LABEL_9;
        }
      }

      if (v87 == 1)
      {
        v22 = 0x10000;
      }

      else
      {
        v22 = 0x8000;
      }

      if (v87)
      {
        v23 = v22;
      }

      else
      {
        v23 = 2;
      }

      if ((v23 & v75) != 0)
      {
        v23 = 0;
      }

      v75 |= v23;
    }

    while (v16);
    while (1)
    {
LABEL_9:
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_92;
      }

      if (v21 >= ((v14 + 63) >> 6))
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v18;
      if (v16)
      {
        v18 = v21;
        goto LABEL_7;
      }
    }

    v44 = v79;
    v45 = v83;
    *&v88 = v79;
    *(&v88 + 1) = v83;
    v46 = v82 & 1;
    v89 = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
    sub_1E65D7FB8();
    v47 = v87;
    if (v87 == 14)
    {
      sub_1E608F928(&v90);
      v48 = v44;
      v49 = v45;
      goto LABEL_67;
    }

    sub_1E5F87058(v44, v45, v46);
    v56 = sub_1E60E5CE0(v47);
    LOBYTE(v88) = v78;
    BYTE7(v88) = BYTE6(v10);
    *(&v88 + 5) = WORD2(v10);
    *(&v88 + 1) = v10;
    *(&v88 + 1) = v11;
    v89 = v9 & 1;
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
    sub_1E65D7FB8();
    a1 = v86;
    if (v87 == 2)
    {
      v58 = 0;
    }

    else
    {
      if (v87)
      {
        v62 = MEMORY[0x1E69DB8D8];
      }

      else
      {
        v62 = MEMORY[0x1E69DB8C8];
      }

      v58 = *v62;
    }

    LOBYTE(v88) = v80;
    BYTE7(v88) = BYTE6(v76);
    *(&v88 + 5) = WORD2(v76);
    *(&v88 + 1) = v76;
    *(&v88 + 1) = v81;
    v89 = v77 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
    sub_1E65D7FB8();
    v3 = v84;
    if (v87 != 9)
    {
      v63 = **(&unk_1E87973C0 + v87);
    }

    sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
    LOBYTE(v88) = 0;
    v64 = sub_1E65E64B8();

    v65 = v64;
    *&v88 = sub_1E65E45A8();
    sub_1E608F9E4();
    sub_1E65D7358();
    sub_1E608F928(&v90);

    v2 = v85;
    return (*(v3 + 32))(a1, v6, v2);
  }

  v76 = v93 | ((v94 | (v95 << 16)) << 32);
  v35 = 1 << *(v109 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v109 + 56);
  v77 = v101 | ((v102 | ((v103 | (v104 << 16)) << 32)) << 8);
  sub_1E5F8710C(v100, v77, v105 & 1);

  LODWORD(v79) = 0;
  v38 = 0;
  if (!v37)
  {
    goto LABEL_47;
  }

  do
  {
LABEL_45:
    while (1)
    {
      v39 = *(v11 + 48) + 24 * (__clz(__rbit64(v37)) | (v38 << 6));
      v40 = *(v39 + 16);
      v37 &= v37 - 1;
      v88 = *v39;
      v89 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
      result = sub_1E65D7FB8();
      if (v87 != 3)
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_47;
      }
    }

    if (v87 == 1)
    {
      v42 = 0x10000;
    }

    else
    {
      v42 = 0x8000;
    }

    if (v87)
    {
      v43 = v42;
    }

    else
    {
      v43 = 2;
    }

    if ((v43 & v79) != 0)
    {
      v43 = 0;
    }

    LODWORD(v79) = v43 | v79;
  }

  while (v37);
LABEL_47:
  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= ((v35 + 63) >> 6))
    {

      v53 = v81;
      v54 = v77;
      *&v88 = v81;
      *(&v88 + 1) = v77;
      v46 = v78 & 1;
      v89 = v78 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
      sub_1E65D7FB8();
      v55 = v87;
      if (v87 == 2)
      {
        sub_1E608F928(&v90);
        v48 = v53;
        v49 = v54;
        goto LABEL_67;
      }

      sub_1E5F87058(v53, v54, v46);
      *&v88 = v83;
      BYTE8(v88) = v82;
      HIBYTE(v88) = BYTE6(v76);
      *(&v88 + 13) = WORD2(v76);
      *(&v88 + 9) = v76;
      v89 = v80 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
      sub_1E65D7FB8();
      v3 = v84;
      v2 = v85;
      if (v87 != 9)
      {
        v69 = **(&unk_1E87973C0 + v87);
      }

      v70 = MEMORY[0x1E69DB8D8];
      if ((v55 & 1) == 0)
      {
        v70 = MEMORY[0x1E69DB8C8];
      }

      v71 = *v70;
      sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
      v72 = sub_1E65E64A8();

      v73 = v72;
      *&v88 = sub_1E65E45A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      sub_1E608F928(&v90);

      a1 = v86;
      return (*(v3 + 32))(a1, v6, v2);
    }

    v37 = *(v11 + 56 + 8 * v41);
    ++v38;
    if (v37)
    {
      v38 = v41;
      goto LABEL_45;
    }
  }

LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_1E608F7E4()
{
  sub_1E65D83B8();
  if (v7 >> 1 != 0xFFFFFFFF)
  {
    v9 = v6[0];
    v10 = v6[1];
    v11 = v6[2];
    v12 = v6[3];
    v13 = v7;
    v14 = v8;
    sub_1E6394B4C();
    sub_1E608F928(v6);
  }

  sub_1E65D83C8();
  v0 = sub_1E65D83A8();
  v2 = v1;
  v4 = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074228, &qword_1E65EFEA8);
  sub_1E65D7FB8();
  sub_1E5F87058(v0, v2, v4);
  return sub_1E65DFCD8();
}

uint64_t sub_1E608F928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074230, &qword_1E65EFEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E608F990()
{
  result = qword_1ED074238;
  if (!qword_1ED074238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074238);
  }

  return result;
}

unint64_t sub_1E608F9E4()
{
  result = qword_1EE2D72B8;
  if (!qword_1EE2D72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D72B8);
  }

  return result;
}

uint64_t sub_1E608FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 96) = a5;
  v9 = type metadata accessor for PageMetricsClick();
  *(v8 + 40) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 48) = swift_task_alloc();
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E608FAE0, 0, 0);
}

uint64_t sub_1E608FAE0()
{
  v1 = *(v0 + 96) >> 6;
  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      v38 = *(v0 + 40);
      v37 = *(v0 + 48);
      v40 = *(v0 + 24);
      v39 = *(v0 + 32);
      v41 = *(v0 + 16);
      v42 = sub_1E65D9D78();
      (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
      v43 = v38[5];
      v44 = *MEMORY[0x1E69CB9F0];
      v45 = sub_1E65D8C68();
      (*(*(v45 - 8) + 104))(v37 + v43, v44, v45);
      v46 = v38[6];
      v47 = sub_1E65D74E8();
      (*(*(v47 - 8) + 56))(v37 + v46, 1, 1, v47);
      v48 = v38[8];
      v49 = sub_1E65DA208();
      (*(*(v49 - 8) + 56))(v37 + v48, 1, 1, v49);
      v50 = v38[14];
      v51 = *MEMORY[0x1E69CBCC8];
      v52 = sub_1E65D8F28();
      (*(*(v52 - 8) + 104))(v37 + v50, v51, v52);
      v53 = v38[15];
      v54 = *MEMORY[0x1E69CC498];
      v55 = sub_1E65D9908();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v37 + v53, v54, v55);
      (*(v56 + 56))(v37 + v53, 0, 1, v55);
      v57 = MEMORY[0x1E69E7CC0];
      v58 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v37 + v38[7]) = v57;
      v59 = (v37 + v38[9]);
      *v59 = 0;
      v59[1] = 0;
      v60 = (v37 + v38[10]);
      *v60 = 0;
      v60[1] = 0;
      *(v37 + v38[11]) = v58;
      v61 = (v37 + v38[12]);
      *v61 = 0;
      v61[1] = 0;
      v62 = (v37 + v38[13]);
      *v62 = v41;
      v62[1] = v40;
      v63 = *(v39 + 48);
      v64 = *(v39 + 56);

      v67 = (v63 + *v63);
      v65 = v63[1];
      v66 = swift_task_alloc();
      *(v0 + 80) = v66;
      *v66 = v0;
      v66[1] = sub_1E6090310;
      v36 = *(v0 + 48);
    }

    else
    {
      v6 = *(v0 + 56);
      v7 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      v11 = sub_1E65D9D78();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = v8[5];
      v13 = *MEMORY[0x1E69CB9C8];
      v14 = sub_1E65D8C68();
      (*(*(v14 - 8) + 104))(v6 + v12, v13, v14);
      v15 = v8[6];
      v16 = sub_1E65D74E8();
      (*(*(v16 - 8) + 56))(v6 + v15, 1, 1, v16);
      v17 = v8[8];
      v18 = sub_1E65DA208();
      (*(*(v18 - 8) + 56))(v6 + v17, 1, 1, v18);
      v19 = v8[14];
      v20 = *MEMORY[0x1E69CBCC8];
      v21 = sub_1E65D8F28();
      (*(*(v21 - 8) + 104))(v6 + v19, v20, v21);
      v22 = v8[15];
      v23 = *MEMORY[0x1E69CC498];
      v24 = sub_1E65D9908();
      v25 = *(v24 - 8);
      (*(v25 + 104))(v6 + v22, v23, v24);
      (*(v25 + 56))(v6 + v22, 0, 1, v24);
      v26 = MEMORY[0x1E69E7CC0];
      v27 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v6 + v8[7]) = v26;
      v28 = (v6 + v8[9]);
      *v28 = 0;
      v28[1] = 0;
      v29 = (v6 + v8[10]);
      *v29 = 0;
      v29[1] = 0;
      *(v6 + v8[11]) = v27;
      v30 = (v6 + v8[12]);
      *v30 = 0;
      v30[1] = 0;
      v31 = (v6 + v8[13]);
      *v31 = v10;
      v31[1] = v9;
      v32 = *(v7 + 48);
      v33 = *(v7 + 56);

      v67 = (v32 + *v32);
      v34 = v32[1];
      v35 = swift_task_alloc();
      *(v0 + 64) = v35;
      *v35 = v0;
      v35[1] = sub_1E6090188;
      v36 = *(v0 + 56);
    }

    return v67(v36);
  }

  else
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E6090188()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E6090498;
  }

  else
  {
    v3 = sub_1E609029C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E609029C()
{
  sub_1E5FC0990(v0[7]);
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6090310()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1E6090518;
  }

  else
  {
    v3 = sub_1E6090424;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6090424()
{
  sub_1E5FC0990(v0[6]);
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6090498()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_1E5FC0990(v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6090518()
{
  v1 = v0[11];
  v2 = v0[7];
  sub_1E5FC0990(v0[6]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6090598(uint64_t a1)
{
  v49 = sub_1E65DAEF8();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E2D18();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601C47C(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65DAED8();
      sub_1E65DAEE8();
      v24 = v44;
      sub_1E65E2D08();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601C47C(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E609097C(uint64_t a1)
{
  v44 = sub_1E65D8368();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E65E2C78();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v33 = v1;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1E601C438(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_1E65E6748();
    v13 = result;
    v14 = 0;
    v40 = v6;
    v41 = v3;
    v38 = v3 + 8;
    v39 = v3 + 16;
    v36 = a1;
    v37 = v6 + 32;
    v34 = a1 + 64;
    v35 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 36);
      v45 = v14;
      v46 = v18;
      v19 = v41;
      v20 = v43;
      v21 = v44;
      (*(v41 + 16))(v43, *(a1 + 48) + *(v41 + 72) * v13, v44);
      sub_1E65D8358();
      sub_1E65D8328();
      sub_1E65D8338();
      sub_1E65D8348();
      sub_1E65E2C58();
      (*(v19 + 8))(v20, v21);
      v22 = v48;
      v49 = v48;
      v24 = *(v48 + 16);
      v23 = *(v48 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601C438(v23 > 1, v24 + 1, 1);
        v22 = v49;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v48 = v22;
      result = (*(v40 + 32))(v22 + v25 + *(v40 + 72) * v24, v9, v42);
      a1 = v36;
      v15 = 1 << *(v36 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v26 = *(v47 + 8 * v17);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v46 != *(v36 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v35;
      }

      else
      {
        v28 = v17 << 6;
        v29 = v17 + 1;
        v16 = v35;
        v30 = (v34 + 8 * v17);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v13, v46, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v13, v46, 0);
      }

LABEL_4:
      v14 = v45 + 1;
      v13 = v15;
      if (v45 + 1 == v16)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6090D6C(uint64_t a1)
{
  v49 = sub_1E65DAF28();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E2D38();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601C3F4(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65DAF08();
      sub_1E65DAF18();
      v24 = v44;
      sub_1E65E2D28();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601C3F4(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6091150(uint64_t a1)
{
  v45 = sub_1E65D91F8();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v38 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65E2A88();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v28 = v1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1E601C3B0(0, v10, 0);
  v11 = v46;
  v12 = -1 << *(a1 + 32);
  v44 = a1 + 56;
  result = sub_1E65E6748();
  v14 = result;
  v15 = 0;
  v34 = v3 + 8;
  v35 = v3 + 16;
  v32 = v9;
  v33 = v6 + 32;
  v29 = a1 + 64;
  v30 = v10;
  v36 = v6;
  v31 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v44 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v41 = 1 << v14;
    v42 = v14 >> 6;
    v17 = *(a1 + 36);
    v39 = v15;
    v40 = v17;
    v18 = v38;
    (*(v3 + 16))(v38, *(a1 + 48) + *(v3 + 72) * v14, v45);
    v43 = sub_1E65D91A8();
    sub_1E65D91C8();
    sub_1E65D91B8();
    sub_1E65D91D8();
    sub_1E65D91E8();
    sub_1E65E2A78();
    (*(v3 + 8))(v18, v45);
    v46 = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E601C3B0(v19 > 1, v20 + 1, 1);
      v11 = v46;
    }

    *(v11 + 16) = v20 + 1;
    result = (*(v36 + 32))(v11 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v20, v32, v37);
    a1 = v31;
    v16 = 1 << *(v31 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v21 = *(v44 + 8 * v42);
    if ((v21 & v41) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v14 & 0x3F));
    if (v22)
    {
      v16 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v42 << 6;
      v24 = v42 + 1;
      v25 = (v29 + 8 * v42);
      while (v24 < (v16 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1E5F87098(v14, v40, 0);
          v16 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v14, v40, 0);
    }

LABEL_4:
    v15 = v39 + 1;
    v14 = v16;
    if (v39 + 1 == v30)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6091554(uint64_t a1)
{
  v49 = sub_1E65D7A68();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E2698();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601C36C(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65D7A48();
      sub_1E65D7A58();
      v24 = v44;
      sub_1E65E2678();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601C36C(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E6091938(uint64_t a1)
{
  v41 = sub_1E65D7B18();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65E26B8();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v30 = v1;
  v48 = MEMORY[0x1E69E7CC0];
  sub_1E601C328(0, v10, 0);
  v11 = v48;
  v12 = -1 << *(a1 + 32);
  v47 = a1 + 56;
  result = sub_1E65E6748();
  v14 = 0;
  v36 = v3 + 8;
  v37 = v3 + 16;
  v34 = a1;
  v35 = v6 + 32;
  v31 = a1 + 64;
  v32 = v10;
  v38 = v6;
  v33 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v47 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v44 = 1 << result;
    v45 = result >> 6;
    v16 = *(a1 + 36);
    v42 = v14;
    v43 = v16;
    v17 = *(a1 + 48) + *(v3 + 72) * result;
    v18 = *(v3 + 16);
    v19 = v40;
    v20 = v41;
    v46 = result;
    v18(v40, v17, v41);
    sub_1E65D7AE8();
    sub_1E65D7AF8();
    sub_1E65D7B08();
    sub_1E65E26A8();
    (*(v3 + 8))(v19, v20);
    v48 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1E601C328(v21 > 1, v22 + 1, 1);
      v11 = v48;
    }

    *(v11 + 16) = v22 + 1;
    (*(v38 + 32))(v11 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, v33, v39);
    a1 = v34;
    v15 = 1 << *(v34 + 32);
    result = v46;
    if (v46 >= v15)
    {
      goto LABEL_22;
    }

    v23 = *(v47 + 8 * v45);
    if ((v23 & v44) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v46 & 0x3F));
    if (v24)
    {
      v15 = __clz(__rbit64(v24)) | v46 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v45 << 6;
      v26 = v45 + 1;
      v27 = (v31 + 8 * v45);
      while (v26 < (v15 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          sub_1E5F87098(v46, v43, 0);
          v15 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v46, v43, 0);
    }

LABEL_4:
    v14 = v42 + 1;
    result = v15;
    if (v42 + 1 == v32)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1E6091D24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65E2BC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  v74 = sub_1E65D8B68();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E65E2BF8();
  v15 = *(v64 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v53 = v11;
    v61 = v18;
    v78 = MEMORY[0x1E69E7CC0];
    v56 = v19;
    sub_1E601C2E4(0, v19, 0);
    v75 = v78;
    v21 = -1 << *(a1 + 32);
    v72 = a1 + 56;
    result = sub_1E65E6748();
    v22 = 0;
    v60 = v12 + 16;
    v55 = v5;
    v23 = v15;
    v24 = (v5 + 8);
    v62 = v23;
    v58 = v23 + 32;
    v59 = (v12 + 8);
    v52 = a1 + 64;
    v63 = a1;
    v57 = v12;
    v54 = v5 + 16;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v72 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      v69 = 1 << result;
      v70 = result >> 6;
      v66 = v22;
      v68 = *(a1 + 36);
      v26 = *(a1 + 48);
      v27 = *(v12 + 72);
      v71 = result;
      (*(v12 + 16))(v73, v26 + v27 * result, v74);
      v28 = sub_1E65D8B58();
      v29 = sub_1E60926CC(v28);
      v67 = v2;

      v30 = *(v29 + 16);
      v31 = sub_1E6093088();
      v77 = MEMORY[0x1E694DC60](v30, v4, v31);
      if (v30)
      {
        v32 = *(v55 + 80);
        v65 = v29;
        v33 = v29 + ((v32 + 32) & ~v32);
        v76 = *(v55 + 72);
        v34 = *(v55 + 16);
        v35 = v24;
        v36 = v53;
        do
        {
          v34(v9, v33, v4);
          sub_1E60F4478(v36, v9);
          (*v35)(v36, v4);
          v33 += v76;
          --v30;
        }

        while (v30);

        v24 = v35;
      }

      else
      {
      }

      v37 = v73;
      sub_1E65D8B28();
      v76 = v38;
      sub_1E65D8B38();
      sub_1E65D8B48();
      v39 = v61;
      sub_1E65E2BE8();
      (*v59)(v37, v74);
      v40 = v75;
      v78 = v75;
      v42 = *(v75 + 16);
      v41 = *(v75 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1E601C2E4(v41 > 1, v42 + 1, 1);
        v40 = v78;
      }

      *(v40 + 16) = v42 + 1;
      v43 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v75 = v40;
      (*(v62 + 32))(v40 + v43 + *(v62 + 72) * v42, v39, v64);
      a1 = v63;
      v25 = 1 << *(v63 + 32);
      result = v71;
      if (v71 >= v25)
      {
        goto LABEL_28;
      }

      v44 = *(v72 + 8 * v70);
      if ((v44 & v69) == 0)
      {
        goto LABEL_29;
      }

      if (v68 != *(v63 + 36))
      {
        goto LABEL_30;
      }

      v45 = v44 & (-2 << (v71 & 0x3F));
      if (v45)
      {
        v25 = __clz(__rbit64(v45)) | v71 & 0x7FFFFFFFFFFFFFC0;
        v2 = v67;
      }

      else
      {
        v46 = v70 << 6;
        v47 = v70 + 1;
        v48 = (v52 + 8 * v70);
        v2 = v67;
        while (v47 < (v25 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_1E5F87098(v71, v68, 0);
            v25 = __clz(__rbit64(v49)) + v46;
            goto LABEL_4;
          }
        }

        sub_1E5F87098(v71, v68, 0);
      }

LABEL_4:
      v22 = v66 + 1;
      result = v25;
      v12 = v57;
      if (v66 + 1 == v56)
      {
        return v75;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E60922E4(uint64_t a1)
{
  v41 = sub_1E65D7F08();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65E2B48();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v30 = v1;
  v48 = MEMORY[0x1E69E7CC0];
  sub_1E601C4C0(0, v10, 0);
  v11 = v48;
  v12 = -1 << *(a1 + 32);
  v47 = a1 + 56;
  result = sub_1E65E6748();
  v14 = 0;
  v36 = v3 + 8;
  v37 = v3 + 16;
  v34 = a1;
  v35 = v6 + 32;
  v31 = a1 + 64;
  v32 = v10;
  v38 = v6;
  v33 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v47 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v44 = 1 << result;
    v45 = result >> 6;
    v16 = *(a1 + 36);
    v42 = v14;
    v43 = v16;
    v17 = *(a1 + 48) + *(v3 + 72) * result;
    v18 = *(v3 + 16);
    v19 = v40;
    v20 = v41;
    v46 = result;
    v18(v40, v17, v41);
    sub_1E65D7ED8();
    sub_1E65D7EE8();
    sub_1E65D7EF8();
    sub_1E65E2B38();
    (*(v3 + 8))(v19, v20);
    v48 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1E601C4C0(v21 > 1, v22 + 1, 1);
      v11 = v48;
    }

    *(v11 + 16) = v22 + 1;
    (*(v38 + 32))(v11 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, v33, v39);
    a1 = v34;
    v15 = 1 << *(v34 + 32);
    result = v46;
    if (v46 >= v15)
    {
      goto LABEL_22;
    }

    v23 = *(v47 + 8 * v45);
    if ((v23 & v44) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v46 & 0x3F));
    if (v24)
    {
      v15 = __clz(__rbit64(v24)) | v46 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v45 << 6;
      v26 = v45 + 1;
      v27 = (v31 + 8 * v45);
      while (v26 < (v15 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          sub_1E5F87098(v46, v43, 0);
          v15 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v46, v43, 0);
    }

LABEL_4:
    v14 = v42 + 1;
    result = v15;
    if (v42 + 1 == v32)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60926CC(uint64_t a1)
{
  v61 = sub_1E65D9A78();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = v48 - v12;
  v13 = sub_1E65DAC98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v65 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E65E2BC8();
  v17 = *(v59 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v63 = v13;
    v56 = v20;
    v48[1] = v1;
    v68 = MEMORY[0x1E69E7CC0];
    sub_1E601C504(0, v21, 0);
    v67 = v68;
    v23 = -1 << *(a1 + 32);
    v64 = a1 + 56;
    result = sub_1E65E6748();
    v24 = result;
    v25 = 0;
    v54 = (v3 + 8);
    v55 = v14 + 16;
    v57 = v17;
    v58 = a1;
    v52 = v17 + 32;
    v53 = (v14 + 8);
    v49 = a1 + 64;
    v50 = v21;
    v51 = v14;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(a1 + 32))
    {
      v28 = v24 >> 6;
      if ((*(v64 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_24;
      }

      v62 = *(a1 + 36);
      (*(v14 + 16))(v65, *(a1 + 48) + *(v14 + 72) * v24, v63);
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      v29 = v9;
      sub_1E65D74C8();

      v30 = v60;
      sub_1E65DAC48();
      v31 = sub_1E65D9A68();
      v33 = v32;
      v35 = v34;
      (*v54)(v30, v61);
      if ((v35 & 1) == 0)
      {
        sub_1E5F87058(v31, v33, 0);
      }

      v36 = v56;
      sub_1E65E2BB8();
      (*v53)(v65, v63);
      v37 = v67;
      v68 = v67;
      v39 = *(v67 + 16);
      v38 = *(v67 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1E601C504(v38 > 1, v39 + 1, 1);
        v37 = v68;
      }

      *(v37 + 16) = v39 + 1;
      v40 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v67 = v37;
      result = (*(v57 + 32))(v37 + v40 + *(v57 + 72) * v39, v36, v59);
      a1 = v58;
      v26 = 1 << *(v58 + 32);
      if (v24 >= v26)
      {
        goto LABEL_25;
      }

      v41 = *(v64 + 8 * v28);
      if ((v41 & (1 << v24)) == 0)
      {
        goto LABEL_26;
      }

      if (v62 != *(v58 + 36))
      {
        goto LABEL_27;
      }

      v42 = v41 & (-2 << (v24 & 0x3F));
      if (v42)
      {
        v26 = __clz(__rbit64(v42)) | v24 & 0x7FFFFFFFFFFFFFC0;
        v9 = v29;
        v27 = v50;
      }

      else
      {
        v43 = v28 << 6;
        v44 = v28 + 1;
        v45 = (v49 + 8 * v28);
        v9 = v29;
        v27 = v50;
        while (v44 < (v26 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_1E5F87098(v24, v62, 0);
            v26 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v24, v62, 0);
      }

LABEL_4:
      ++v25;
      v24 = v26;
      v14 = v51;
      if (v25 == v27)
      {
        return v67;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6092C40@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v53 = sub_1E65D9538();
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D93D8();
  v6 = sub_1E6090598(v5);

  v46[5] = sub_1E600B07C(v6);

  v7 = sub_1E65D9438();
  v8 = sub_1E609097C(v7);

  v46[4] = sub_1E600B218(v8);

  v9 = sub_1E65D9448();
  v10 = sub_1E6090D6C(v9);

  v46[3] = sub_1E600B3B4(v10);

  v11 = sub_1E65D9408();
  v12 = sub_1E6091150(v11);

  v46[2] = sub_1E600B550(v12);

  v13 = sub_1E65D93E8();
  v14 = sub_1E6091554(v13);

  v46[1] = sub_1E600B6EC(v14);

  v15 = sub_1E65D93F8();
  v16 = sub_1E6091938(v15);

  v46[0] = sub_1E600B888(v16);

  v47 = v1;
  v17 = sub_1E65D93A8();
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v52 = v2;
  v49 = v2 + 8;
  v50 = v2 + 16;
  v54 = v17;

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (v21)
  {
    v55 = v25;
LABEL_11:
    v27 = v53;
    v28 = v51;
    v29 = v52;
    (*(v52 + 16))(v51, *(v54 + 48) + *(v52 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v53);
    v30 = sub_1E65D9518();
    v31 = sub_1E60922E4(v30);

    result = (*(v29 + 8))(v28, v27);
    v32 = *(v31 + 16);
    v25 = v55;
    v33 = v55[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v34 > v25[3] >> 1)
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v25 = sub_1E64F6668(isUniquelyReferenced_nonNull_native, v36, 1, v25);
    }

    v21 &= v21 - 1;
    if (*(v31 + 16))
    {
      v37 = (v25[3] >> 1) - v25[2];
      result = sub_1E65E2B48();
      v38 = *(result - 8);
      if (v37 < v32)
      {
        goto LABEL_27;
      }

      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = *(v38 + 72);
      swift_arrayInitWithCopy();

      if (v32)
      {
        v41 = v25[2];
        v42 = __OFADD__(v41, v32);
        v43 = v41 + v32;
        if (v42)
        {
          goto LABEL_28;
        }

        v25[2] = v43;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {

      sub_1E600BA24(v25);

      v44 = sub_1E65D9418();
      v45 = sub_1E6091D24(v44);

      sub_1E600BBC0(v45);

      return sub_1E65E2768();
    }

    v21 = *(v18 + 8 * v26);
    ++v24;
    if (v21)
    {
      v55 = v25;
      v24 = v26;
      goto LABEL_11;
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
  __break(1u);
  return result;
}