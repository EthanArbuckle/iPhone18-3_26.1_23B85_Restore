uint64_t sub_251620414(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  sub_2515F8380(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = *(sub_25163522C() - 8);
  v13 = (v11 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  return sub_2516201B8(a1, v1[4], v1[5], v1 + v5, v1 + v9, v1 + v11, v1 + v13, *(v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_251620590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v59 = a4;
  v49 = a3;
  v57 = a2;
  v47 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v48 = *(v54 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v38 - v11;
  v55 = sub_25163522C();
  v53 = *(v55 - 8);
  v43 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v13;
  sub_2515F8380(0);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v38 = &v38 - v18;
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a9;
  (*(v41 + 40))(v60, a8, v41);
  v46 = v61;
  v44 = v62;
  v45 = __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(v20 + 16))(v22, v9, a8);
  sub_2516232AC(v57, v19, sub_2515F8380);
  v23 = v53;
  (*(v53 + 16))(v13, v59, v55);
  v24 = v54;
  (*(v54 + 16))(v56, v47, AssociatedTypeWitness);
  sub_2516232AC(v49, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2515F8380);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = *(v42 + 80);
  v27 = (v21 + v26 + v25) & ~v26;
  v28 = (v15 + *(v23 + 80) + v27) & ~*(v23 + 80);
  v29 = (v43 + *(v24 + 80) + v28) & ~*(v24 + 80);
  v30 = (v48 + v26 + v29) & ~v26;
  v31 = swift_allocObject();
  v32 = a8;
  v33 = v41;
  *(v31 + 2) = a8;
  *(v31 + 3) = v33;
  v34 = v51;
  *(v31 + 4) = v50;
  *(v31 + 5) = v34;
  (*(v20 + 32))(&v31[v25], v22, v32);
  sub_251623850(v38, &v31[v27], sub_2515F8380);
  (*(v53 + 32))(&v31[v28], v40, v55);
  (*(v54 + 32))(&v31[v29], v56, AssociatedTypeWitness);
  sub_251623850(v39, &v31[v30], sub_2515F8380);
  *&v31[(v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v52;
  v35 = v44;
  v36 = *(v44 + 8);

  v36(MEMORY[0x277D84FA0], v57, v59, sub_251623940, v31, v46, v35);

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

void sub_251620AA0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a7;
  v33 = a3;
  sub_251623174(0, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v30 - v17);
  v19 = type metadata accessor for ClassificationFactorTimeline(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251623240(a1, v18, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34[0] = *v18;
    v23 = v34[0];
    sub_2516041EC();
    swift_willThrowTypedImpl();
    v24 = v23;
    a2(v23, 256);
  }

  else
  {
    sub_251623850(v18, v22, type metadata accessor for ClassificationFactorTimeline);
    (*(a11 + 48))(v34, a5, a6, a10, a11);
    v25 = v35;
    v26 = v36;
    v27 = __swift_project_boxed_opaque_existential_1(v34, v35);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    ClassificationPolicy.classificationBatches<A>(of:considering:limitingDateRange:batchSize:batchHandler:)(v27, v22, v31, a9, a2, v33, AssociatedTypeWitness, v25, AssociatedConformanceWitness, v26);
    sub_2516238E0(v22, type metadata accessor for ClassificationFactorTimeline);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }
}

uint64_t MeasurementClassifier.mostRecentClassification(calendar:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v9 = sub_25163522C();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v6, a4);
  (*(v10 + 16))(v13, v25, v9);
  v17 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  v20 = v27;
  *(v19 + 4) = v26;
  *(v19 + 5) = v20;
  (*(v14 + 32))(&v19[v17], v16, a4);
  (*(v10 + 32))(&v19[v18], v13, v24);
  v21 = *(a5 + 56);

  v21(sub_2516216CC, v19, a4, a5);
}

uint64_t sub_251620F70(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a5;
  v66 = a4;
  v74 = a1;
  v75 = a3;
  v73 = a2;
  sub_2515F8E44();
  v62 = v9;
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v58 - v13;
  sub_2515F8380(0);
  v58 = v14;
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v58 - v18;
  v67 = a7;
  v19 = *(a7 + 8);
  v65 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25163563C();
  v71 = sub_2516041EC();
  v20 = sub_25163595C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v58 - v23);
  v25 = sub_25163516C();
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v70 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v69 = &v58 - v29;
  sub_251623174(0, qword_27F447390, sub_2516231E8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v58 - v32);
  sub_2516231E8();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v58 - v39;
  sub_251623240(v74, v33, qword_27F447390, sub_2516231E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = *v33;
    v41 = v76;
    swift_willThrowTypedImpl();
    *v24 = v41;
    swift_storeEnumTagMultiPayload();
    v42 = v41;
    v73(v24);

    return (*(v21 + 8))(v24, v20);
  }

  sub_251623850(v33, v40, sub_2516231E8);
  sub_2516232AC(v40, v38, sub_2516231E8);
  v44 = v72;
  if ((*(v72 + 48))(v38, 1, v25) == 1)
  {
    sub_2516238E0(v38, sub_2516231E8);
    (*(*(AssociatedTypeWitness - 8) + 56))(v24, 1, 1);
    swift_storeEnumTagMultiPayload();
    v73(v24);
    (*(v21 + 8))(v24, v20);
    v45 = v40;
  }

  else
  {
    v74 = v40;
    v46 = *(v44 + 32);
    v47 = v69;
    v46(v69, v38, v25);
    v48 = v70;
    sub_25163510C();
    sub_2515FA0F4();
    result = sub_25163530C();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v49 = *(v44 + 16);
    v50 = v59;
    v49(v59, v47, v25);
    v51 = v62;
    v49((v50 + *(v62 + 48)), v48, v25);
    v52 = v61;
    sub_2516232AC(v50, v61, sub_2515F8E44);
    v53 = *(v51 + 48);
    v54 = v44;
    v55 = v60;
    v46(v60, v52, v25);
    v56 = *(v54 + 8);
    v56(v52 + v53, v25);
    sub_251623850(v50, v52, sub_2515F8E44);
    v46((v55 + *(v58 + 36)), (v52 + *(v51 + 48)), v25);
    v56(v52, v25);
    v57 = v63;
    sub_2516232AC(v55, v63, sub_2515F8380);
    sub_2516238E0(v55, sub_2515F8380);
    sub_2516222F8(v57, v64, v73, v75, v65, v67, &unk_28638B988, sub_251623524);
    sub_2516238E0(v57, sub_2515F8380);
    v56(v70, v25);
    v56(v69, v25);
    v45 = v74;
  }

  return sub_2516238E0(v45, sub_2516231E8);
}

uint64_t sub_2516216CC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(sub_25163522C() - 8);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_251620F70(a1, v8, v9, v1 + v5, v10, v3, v4);
}

uint64_t sub_2516217B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v10 = *(a8 + 8);
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v11 = sub_25163595C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v32 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_25163595C();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v28 - v24;
  (*(v26 + 16))(v18, v33, v14);
  sub_25161FCE8(v14, &v36, v23);
  (*(v19 + 32))(v25, v23, AssociatedTypeWitness);
  sub_251621ADC(v25, v29, v30, v34, v35, a7, v32);
  return (*(v19 + 8))(v25, AssociatedTypeWitness);
}

uint64_t sub_251621ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a4;
  v43 = a5;
  v48 = a2;
  v49 = a3;
  v40 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v41 = *(v45 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v32 - v9;
  v44 = sub_25163522C();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v44);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F8380(0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v32 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a7;
  v34 = a7;
  v19 = *(a7 + 40);
  v20 = v36;
  v19(v50, a6, v18);
  v39 = v51;
  v37 = v52;
  v38 = __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v15 + 16))(v17, v20, a6);
  sub_2516232AC(v48, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2515F8380);
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v44);
  v21 = v45;
  (*(v45 + 16))(v46, v40, AssociatedTypeWitness);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = (v16 + *(v35 + 80) + v22) & ~*(v35 + 80);
  v24 = (v13 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v25 = (v11 + *(v21 + 80) + v24) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 2) = a6;
  *(v26 + 3) = v27;
  v28 = v43;
  *(v26 + 4) = v42;
  *(v26 + 5) = v28;
  (*(v15 + 32))(&v26[v22], v17, a6);
  sub_251623850(v32, &v26[v23], sub_2515F8380);
  (*(v10 + 32))(&v26[v24], v33, v44);
  (*(v45 + 32))(&v26[v25], v46, AssociatedTypeWitness);
  v29 = v37;
  v30 = *(v37 + 8);

  v30(MEMORY[0x277D84FA0], v48, v49, sub_251623698, v26, v39, v29);

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_251621F40(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a6;
  v38 = a7;
  v35 = a5;
  v36 = a4;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v10 = *(a9 + 8);
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v11 = sub_25163595C();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v33 - v13);
  sub_251623174(0, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v33 - v17);
  v19 = type metadata accessor for ClassificationFactorTimeline(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251623240(v39, v18, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42[0] = *v18;
    v23 = v42[0];
    swift_willThrowTypedImpl();
    *v14 = v23;
    swift_storeEnumTagMultiPayload();
    v24 = v23;
    v40(v14);

    return (*(v34 + 8))(v14, v11);
  }

  else
  {
    sub_251623850(v18, v22, type metadata accessor for ClassificationFactorTimeline);
    (*(a9 + 48))(v42, v35, v37, a8, a9);
    v27 = v43;
    v26 = v44;
    v28 = __swift_project_boxed_opaque_existential_1(v42, v43);
    v29 = swift_allocObject();
    v29[2] = a8;
    v29[3] = a9;
    v30 = v41;
    v29[4] = v40;
    v29[5] = v30;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

    ClassificationPolicy.mostRecentClassification<A>(from:considering:completion:)(v28, v22, sub_2516238B8, v29, AssociatedTypeWitness, v27, AssociatedConformanceWitness, v26);

    sub_2516238E0(v22, type metadata accessor for ClassificationFactorTimeline);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }
}

uint64_t sub_2516222F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a6;
  v42 = a8;
  v38 = a7;
  v39 = a3;
  v9 = v8;
  v37 = a2;
  v40 = a4;
  v36 = a1;
  v11 = sub_25163522C();
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F8380(0);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a5;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v9);
  sub_2516232AC(v36, v17, sub_2515F8380);
  (*(v12 + 16))(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v11);
  v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v22 = (v19 + *(v35 + 80) + v21) & ~*(v35 + 80);
  v23 = (v15 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v32;
  v26 = v40;
  v27 = v41;
  *(v24 + 2) = v32;
  *(v24 + 3) = v27;
  *(v24 + 4) = v39;
  *(v24 + 5) = v26;
  v28 = &v24[v21];
  v29 = v25;
  (*(v18 + 32))(v28, v20);
  sub_251623850(v17, &v24[v22], sub_2515F8380);
  (*(v12 + 32))(&v24[v23], v34, v33);
  v30 = *(v27 + 32);

  v30(v42, v24, v29, v27);
}

uint64_t sub_251622604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a5;
  v44 = a6;
  v40 = a4;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v10 = *(a8 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline();
  sub_2516041EC();
  v11 = sub_25163595C();
  v45 = *(v11 - 8);
  v12 = v45[8];
  MEMORY[0x28223BE20](v11);
  v41 = a7;
  v42 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_25163595C();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v22 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v39 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v39 - v26;
  (*(v28 + 16))(v18, v46, v14);
  sub_25161FCE8(v14, v49, v25);
  v39 = *(v19 + 32);
  v39(v27, v25, AssociatedTypeWitness);
  v29 = v41;
  v30 = v42;
  (*(v42 + 40))(v49, v41, v42);
  v46 = v50;
  v40 = v51;
  v45 = __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v19 + 16))(v22, v27, AssociatedTypeWitness);
  v31 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v32 = (v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  *(v33 + 24) = v30;
  v39((v33 + v31), v22, AssociatedTypeWitness);
  v34 = (v33 + v32);
  v35 = v48;
  *v34 = v47;
  v34[1] = v35;
  v36 = v40;
  v37 = *(v40 + 8);

  v37(MEMORY[0x277D84FA0], v43, v44, sub_251622DC8, v33, v46, v36);

  (*(v19 + 8))(v27, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_251622B78(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline();
  sub_2516041EC();
  v11 = sub_25163595C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18[-v14];
  v19 = a5;
  v20 = a6;
  v21 = a2;
  sub_251623174(0, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  sub_251622F60(sub_251622F54, v16, v15);
  a3(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_251622DC8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_251622B78(a1, v1 + v6, v8, v9, v3, v4);
}

uint64_t sub_251622E94(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 64);
  v4 = swift_checkMetadataState();
  return v3(a1, v4, AssociatedConformanceWitness);
}

uint64_t sub_251622F54(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_251622E94(a1);
}

uint64_t sub_251622F60@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_25163595C();
  return swift_storeEnumTagMultiPayload();
}

void sub_251623174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2516041EC();
    v4 = sub_25163595C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2516231E8()
{
  if (!qword_27F446C80)
  {
    sub_25163516C();
    v0 = sub_25163563C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446C80);
    }
  }
}

uint64_t sub_251623240(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251623174(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2516232AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  sub_2515F8380(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(*(v6 - 8) + 64);
  v20 = sub_25163522C();
  v11 = *(v20 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v19 = *(v11 + 64);
  v14 = v3 | v8 | v12;
  v15 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v16 = sub_25163516C();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v9, v16);
  v17(v0 + v9 + *(v7 + 44), v16);
  (*(v11 + 8))(v0 + v13, v20);

  return MEMORY[0x2821FE8E8](v0, v13 + v19, v14 | 7);
}

uint64_t sub_25162353C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, char *, char *, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(*(v4 - 8) + 64);
  v7 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  sub_2515F8380(0);
  v9 = (v7 + v6 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(sub_25163522C() - 8);
  v12 = *(v2 + 4);
  v13 = *(v2 + 5);
  v14 = &v2[(v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)];

  return a2(a1, v12, v13, &v2[v7], &v2[v9], v14, v4, v5);
}

uint64_t sub_251623698(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  sub_2515F8380(0);
  v8 = (v5 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(sub_25163522C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_251621F40(a1, *(v1 + 32), *(v1 + 40), v1 + v5, v1 + v8, v1 + v11, v1 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)), v3, v4);
}

uint64_t sub_251623850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2516238B8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_2516238E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251623940(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  sub_2515F8380(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  v11 = *(sub_25163522C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v8 + v15) & ~v8;
  sub_251620AA0(a1, *(v1 + 32), *(v1 + 40), v1 + v5, v1 + v9, v1 + v12, v1 + v15, v1 + v16, *(v1 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t ClassificationLevel.scale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25163563C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = v3;
  v21 = v14;
  v18 = a1;
  v19 = a2;
  sub_2516354CC();
  swift_getWitnessTable();
  sub_2516353DC();

  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(a3, v12, AssociatedTypeWitness);
  }

  (*(v9 + 8))(v12, v8);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_25163569C();
  MEMORY[0x25307BC70](0xD00000000000002FLL, 0x800000025163C5F0);
  sub_2516358CC();
  result = sub_25163575C();
  __break(1u);
  return result;
}

uint64_t ClassificationLevel.definition.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_2516356BC();

  *a2 = 0xD00000000000001BLL;
  *(a2 + 8) = 0x800000025163B740;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0x4E574F4E4B4E55;
  *(a2 + 72) = 0xE700000000000000;
  return result;
}

uint64_t sub_251623E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 48);
  v7 = swift_checkMetadataState();
  v6(v7, AssociatedConformanceWitness);
  sub_2516354CC();
  swift_getWitnessTable();
  v8 = *(*(a4 + 24) + 8);
  v9 = sub_2516353EC();

  return v9 & 1;
}

uint64_t ClassificationAxis.thresholds.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  v11 = *(AssociatedConformanceWitness + 24);
  sub_2516352AC();
  v8 = sub_25163563C();
  return (*(*(v8 - 8) + 16))(a2, v2 + v4, v8);
}

uint64_t ClassificationAxis.thresholds.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  v11 = *(AssociatedConformanceWitness + 24);
  sub_2516352AC();
  v8 = sub_25163563C();
  return (*(*(v8 - 8) + 40))(v2 + v4, a1, v8);
}

uint64_t (*ClassificationAxis.thresholds.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ClassificationAxis.init(scale:thresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for ClassificationAxis() + 36);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 8);
  v14 = *(AssociatedConformanceWitness + 24);
  v10 = sub_2516352AC();
  (*(*(v10 - 8) + 56))(a4 + v8, 1, 1, v10);
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  v11 = sub_25163563C();
  return (*(*(v11 - 8) + 40))(a4 + v8, a2, v11);
}

BOOL static ClassificationAxis.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 24);
  v10 = *(AssociatedConformanceWitness + 8);
  v45 = AssociatedTypeWitness;
  v46 = v10;
  v47 = v9;
  v11 = sub_2516352AC();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v42 = v15;
  v16 = sub_25163563C();
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v20 = *(v40 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v22 = &v37 - v21;
  v23 = *(*(a4 + 24) + 8);
  v24 = a1;
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v38 = v14;
  v25 = *(type metadata accessor for ClassificationAxis() + 36);
  v39 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v43 + 16);
  v27(v22, v24 + v25, v16);
  v27(&v22[v26], a2 + v25, v16);
  v28 = *(v44 + 48);
  v29 = v42;
  if (v28(v22, 1, v42) == 1)
  {
    if (v28(&v22[v26], 1, v29) == 1)
    {
      (*(v43 + 8))(v22, v16);
      return 1;
    }

    goto LABEL_7;
  }

  v30 = v41;
  v27(v41, v22, v16);
  if (v28(&v22[v26], 1, v29) == 1)
  {
    (*(v44 + 8))(v30, v29);
LABEL_7:
    (*(v40 + 8))(v22, v39);
    return 0;
  }

  v32 = v30;
  v33 = v44;
  v34 = v38;
  (*(v44 + 32))(v38, &v22[v26], v29);
  swift_getWitnessTable();
  v35 = sub_25163532C();
  v36 = *(v33 + 8);
  v36(v34, v29);
  v36(v32, v29);
  (*(v43 + 8))(v22, v16);
  return (v35 & 1) != 0;
}

uint64_t sub_25162483C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 1;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_251624944(char a1)
{
  sub_25163590C();
  MEMORY[0x25307C1E0](a1 & 1);
  return sub_25163594C();
}

uint64_t sub_25162498C(char a1)
{
  if (a1)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x656C616373;
  }
}

BOOL sub_2516249C4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_25162490C(*a1, *a2);
}

uint64_t sub_2516249D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_251624944(*v1);
}

uint64_t sub_2516249E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_25162491C(a1, *v2);
}

uint64_t sub_2516249F8(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_25162491C(v7, *v2);
  return sub_25163594C();
}

uint64_t sub_251624A40(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25162498C(*v1);
}

uint64_t sub_251624A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_25162483C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_251624A80@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_25162565C();
  *a2 = result;
  return result;
}

uint64_t sub_251624AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_251624B00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationAxis.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v17 = a2;
  type metadata accessor for ClassificationAxis.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_25163589C();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163597C();
  LOBYTE(v20) = 0;
  v10 = *(v3 + 16);
  v11 = v18;
  sub_25163588C();
  if (!v11)
  {
    v18 = *(v17 + 36);
    v23 = 1;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = *(AssociatedConformanceWitness + 24);
    v16 = *(AssociatedConformanceWitness + 8);
    v20 = AssociatedTypeWitness;
    v21 = v16;
    v22 = v15;
    sub_2516352AC();
    swift_getWitnessTable();
    sub_25163583C();
  }

  return (*(v19 + 8))(v8, v5);
}

uint64_t ClassificationAxis.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 24);
  sub_2516352CC();
  v5 = *(a2 + 36);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  v9 = *(AssociatedConformanceWitness + 24);
  sub_2516352AC();
  sub_25163563C();
  swift_getWitnessTable();
  return sub_25163564C();
}

uint64_t ClassificationAxis.hashValue.getter(uint64_t a1)
{
  sub_25163590C();
  ClassificationAxis.hash(into:)(v3, a1);
  return sub_25163594C();
}

uint64_t ClassificationAxis.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 24);
  v10 = *(AssociatedConformanceWitness + 8);
  v54 = AssociatedTypeWitness;
  v55 = v10;
  v56 = v9;
  v11 = sub_2516352AC();
  v12 = sub_25163563C();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v45 = &v40 - v15;
  v44 = *(a2 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v46 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassificationAxis.CodingKeys();
  swift_getWitnessTable();
  v48 = sub_25163581C();
  v43 = *(v48 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v20 = &v40 - v19;
  v47 = a2;
  v21 = type metadata accessor for ClassificationAxis();
  v41 = *(v21 - 8);
  v22 = *(v41 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = *(v23 + 36);
  v27 = *(*(v11 - 8) + 56);
  v51 = v25;
  v49 = v26;
  v27(&v25[v26], 1, 1, v11);
  v28 = a1[3];
  v29 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = v20;
  v31 = v50;
  sub_25163596C();
  if (v31)
  {
    v36 = v51;
    __swift_destroy_boxed_opaque_existential_1(v57);
    return (*(v52 + 8))(&v36[v49], v53);
  }

  else
  {
    v32 = v43;
    v33 = v44;
    v34 = v45;
    LOBYTE(v54) = 0;
    v35 = *(a3 + 8);
    sub_2516357FC();
    v37 = v51;
    (*(v33 + 32))(v51, v46, v47);
    LOBYTE(v54) = 1;
    swift_getWitnessTable();
    sub_2516357AC();
    (*(v32 + 8))(v30, v48);
    (*(v52 + 40))(&v37[v49], v34, v53);
    v38 = v41;
    (*(v41 + 16))(v42, v37, v21);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return (*(v38 + 8))(v37, v21);
  }
}

uint64_t sub_25162542C(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  ClassificationAxis.hash(into:)(v4, a2);
  return sub_25163594C();
}

uint64_t sub_2516254D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(AssociatedConformanceWitness + 8);
    v9 = *(AssociatedConformanceWitness + 24);
    sub_2516352AC();
    result = sub_25163563C();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DomainIdentifier.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DomainIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthDomains::DomainIdentifier_optional __swiftcall DomainIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.identifier = rawValue;
  return result;
}

uint64_t Domain.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Domain.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Domain.symbol.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t Domain.__allocating_init(identifier:affect:name:symbol:subdomains:measures:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  v17 = a1[1];
  v18 = *a2;
  *(result + 16) = *a1;
  *(result + 24) = v17;
  *(result + 32) = v18;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = a5;
  *(result + 64) = a6;
  *(result + 72) = a7;
  *(result + 80) = a8;
  return result;
}

uint64_t Domain.init(identifier:affect:name:symbol:subdomains:measures:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v10 = *a2;
  *(v8 + 16) = *a1;
  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  return v8;
}

uint64_t sub_2516258E0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C6F626D7973;
  v4 = 0x69616D6F64627573;
  if (v1 != 4)
  {
    v4 = 0x736572757361656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746365666661;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

uint64_t sub_251625990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2516268F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2516259B8(uint64_t a1)
{
  v2 = sub_251625DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516259F4(uint64_t a1)
{
  v2 = sub_251625DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *Domain.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  return v0;
}

uint64_t Domain.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t Domain.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2516263C8(0, &qword_27F447418, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251625DEC();
  sub_25163597C();
  v12 = *(v3 + 24);
  v20 = *(v3 + 16);
  v21 = v12;
  v19 = 0;
  sub_251625E40();

  sub_25163588C();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v20) = *(v3 + 32);
    v19 = 1;
    sub_251625E94();
    sub_25163588C();
    v13 = *(v3 + 40);
    v14 = *(v3 + 48);
    LOBYTE(v20) = 2;
    sub_25163584C();
    v15 = *(v3 + 56);
    v16 = *(v3 + 64);
    LOBYTE(v20) = 3;
    sub_25163584C();
    v20 = *(v3 + 72);
    v19 = 4;
    sub_251625EE8(0, &qword_27F447438);
    sub_2516264D4(&qword_27F447440, sub_251625E40);
    sub_25163588C();
    v20 = *(v3 + 80);
    v19 = 5;
    sub_251625EE8(0, &qword_27F447448);
    sub_251626550(&qword_27F447450, sub_251609D98);
    sub_25163588C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_251625DEC()
{
  result = qword_27F447420;
  if (!qword_27F447420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447420);
  }

  return result;
}

unint64_t sub_251625E40()
{
  result = qword_27F447428;
  if (!qword_27F447428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447428);
  }

  return result;
}

unint64_t sub_251625E94()
{
  result = qword_27F447430;
  if (!qword_27F447430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447430);
  }

  return result;
}

void sub_251625EE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2516354CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t Domain.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Domain.init(from:)(a1);
  return v2;
}

uint64_t *Domain.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  sub_2516263C8(0, &qword_27F447458, MEMORY[0x277D844C8]);
  v17 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251625DEC();
  v18 = v9;
  sub_25163596C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    v21 = 0;
    sub_25162642C();
    v12 = v17;
    sub_2516357FC();
    v13 = v20;
    v1[2] = v19;
    v1[3] = v13;
    v21 = 1;
    sub_251626480();
    sub_2516357FC();
    *(v1 + 32) = v19;
    LOBYTE(v19) = 2;
    v1[5] = sub_2516357BC();
    v1[6] = v15;
    LOBYTE(v19) = 3;
    v1[7] = sub_2516357BC();
    v1[8] = v16;
    sub_251625EE8(0, &qword_27F447438);
    v21 = 4;
    sub_2516264D4(&qword_27F447470, sub_25162642C);
    sub_2516357FC();
    v1[9] = v19;
    sub_251625EE8(0, &qword_27F447448);
    v21 = 5;
    sub_251626550(&qword_27F447478, sub_251609F8C);
    sub_2516357FC();
    (*(v11 + 8))(v18, v12);
    v1[10] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_2516263C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251625DEC();
    v7 = a3(a1, &type metadata for Domain.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25162642C()
{
  result = qword_27F447460;
  if (!qword_27F447460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447460);
  }

  return result;
}

unint64_t sub_251626480()
{
  result = qword_27F447468;
  if (!qword_27F447468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447468);
  }

  return result;
}

uint64_t sub_2516264D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_251625EE8(255, &qword_27F447438);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251626550(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_251625EE8(255, &qword_27F447448);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2516265D0()
{
  result = qword_280DD7310;
  if (!qword_280DD7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD7310);
  }

  return result;
}

unint64_t sub_251626628()
{
  result = qword_27F447480;
  if (!qword_27F447480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447480);
  }

  return result;
}

unint64_t sub_251626680()
{
  result = qword_27F447488;
  if (!qword_27F447488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447488);
  }

  return result;
}

uint64_t *sub_2516266D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Domain.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2516267EC()
{
  result = qword_27F447490;
  if (!qword_27F447490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447490);
  }

  return result;
}

unint64_t sub_251626844()
{
  result = qword_27F447498;
  if (!qword_27F447498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447498);
  }

  return result;
}

unint64_t sub_25162689C()
{
  result = qword_27F4474A0;
  if (!qword_27F4474A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474A0);
  }

  return result;
}

uint64_t sub_2516268F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746365666661 && a2 == 0xE600000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69616D6F64627573 && a2 == 0xEA0000000000736ELL || (sub_2516358DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736572757361656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_251626AF0()
{
  result = qword_27F4474A8;
  if (!qword_27F4474A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474A8);
  }

  return result;
}

uint64_t StandardIndicator.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t StandardIndicator.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StandardIndicator.symbol.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall StandardIndicator.init(identifier:name:symbol:)(HealthDomains::StandardIndicator *__return_ptr retstr, HealthDomains::MeasureIdentifier identifier, Swift::String name, Swift::String symbol)
{
  v4 = *(identifier.identifier._countAndFlagsBits + 8);
  retstr->identifier.identifier._countAndFlagsBits = *identifier.identifier._countAndFlagsBits;
  retstr->identifier.identifier._object = v4;
  retstr->name._countAndFlagsBits = identifier.identifier._object;
  *&retstr->name._object = name;
  retstr->symbol._object = symbol._countAndFlagsBits;
}

uint64_t static StandardIndicator.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2516358DC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2516358DC();
}

uint64_t sub_251626CF4()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_251626D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25162783C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251626D70(uint64_t a1)
{
  v2 = sub_251626FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251626DAC(uint64_t a1)
{
  v2 = sub_251626FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StandardIndicator.encode(to:)(void *a1)
{
  sub_251627658(0, &qword_27F4474B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251626FD8();

  sub_25163597C();
  v17 = v9;
  v18 = v10;
  v19 = 0;
  sub_251609D98();
  v14 = v16[5];
  sub_25163588C();
  if (v14)
  {
  }

  else
  {

    LOBYTE(v17) = 1;
    sub_25163584C();
    LOBYTE(v17) = 2;
    sub_25163584C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_251626FD8()
{
  result = qword_27F4474B8;
  if (!qword_27F4474B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474B8);
  }

  return result;
}

uint64_t StandardIndicator.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25163539C();
  sub_25163539C();

  return sub_25163539C();
}

uint64_t StandardIndicator.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t StandardIndicator.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_251627658(0, &qword_27F4474C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251626FD8();
  sub_25163596C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  sub_251609F8C();
  sub_2516357FC();
  v25 = a2;
  v12 = v26;
  v13 = v27;
  LOBYTE(v26) = 1;
  v22 = sub_2516357BC();
  v23 = v12;
  v24 = v14;
  LOBYTE(v26) = 2;
  v15 = sub_2516357BC();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  v19 = v24;
  v18 = v25;
  v20 = v22;
  *v25 = v23;
  v18[1] = v13;
  v18[2] = v20;
  v18[3] = v19;
  v18[4] = v15;
  v18[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2516273C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_251627444()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25163539C();
  sub_25163539C();

  return sub_25163539C();
}

uint64_t sub_2516274B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_251627560(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2516358DC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2516358DC();
}

void sub_251627658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251626FD8();
    v7 = a3(a1, &type metadata for StandardIndicator.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2516276C0()
{
  result = qword_27F4474C8;
  if (!qword_27F4474C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474C8);
  }

  return result;
}

unint64_t sub_251627738()
{
  result = qword_27F4474D0;
  if (!qword_27F4474D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474D0);
  }

  return result;
}

unint64_t sub_251627790()
{
  result = qword_27F4474D8;
  if (!qword_27F4474D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474D8);
  }

  return result;
}

unint64_t sub_2516277E8()
{
  result = qword_27F4474E0;
  if (!qword_27F4474E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4474E0);
  }

  return result;
}

uint64_t sub_25162783C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2516358DC();

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

uint64_t MeasurementEnumerator<>.values.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X8>)
{
  v35 = a1;
  v34 = a3;
  v31 = a2;
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v4 = sub_25163554C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = sub_25163557C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  swift_checkMetadataState();
  sub_251618068(v8);
  v36 = v17;
  sub_25163552C();
  (*(v5 + 8))(v8, v4);
  v34 = *(v10 + 16);
  v18 = v9;
  v34(v15, v17, v9);
  v19 = *(v10 + 80);
  v32 = v10;
  v20 = (v19 + 32) & ~v19;
  v21 = swift_allocObject();
  v22 = v35;
  *(v21 + 16) = v35;
  *(v21 + 24) = a2;
  v23 = *(v10 + 32);
  v24 = v15;
  v25 = v18;
  v23(v21 + v20, v24, v18);
  v26 = v33;
  v34(v33, v36, v25);
  v27 = swift_allocObject();
  v28 = v31;
  *(v27 + 16) = v22;
  *(v27 + 24) = v28;
  v23(v27 + v20, v26, v25);
  (*(v28 + 24))(sub_251627E84, v21, sub_2516280BC, v27, v22, v28);

  return (*(v32 + 8))(v36, v25);
}

uint64_t sub_251627CC4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v13 - v5;
  sub_2516041EC();
  v7 = sub_25163553C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_25163557C();
  sub_25163555C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_251627E84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v5 = *(*(sub_25163557C() - 8) + 80);

  return sub_251627CC4(a1);
}

uint64_t sub_251627F48(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = v1;
  }

  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  sub_25163557C();
  return sub_25163556C();
}

uint64_t objectdestroyTm_0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v3 = sub_25163557C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2516280BC(void **a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v5 = *(*(sub_25163557C() - 8) + 80);

  return sub_251627F48(a1);
}

uint64_t sub_25162818C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2516281DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_251628230(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_251628248(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t RawQuantitySample.dateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawQuantitySample() + 20);

  return sub_251601094(v3, a1);
}

uint64_t type metadata accessor for RawQuantitySample()
{
  result = qword_27F4474F0;
  if (!qword_27F4474F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawQuantitySample.dateRange.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawQuantitySample() + 20);

  return sub_251601178(a1, v3);
}

uint64_t RawQuantitySample.init(valueInCanonicalUnit:dateRange:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v4 = a2 + *(type metadata accessor for RawQuantitySample() + 20);

  return sub_251601234(a1, v4);
}

BOOL static RawQuantitySample.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for RawQuantitySample() + 20);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BE8, MEMORY[0x277CC9578]);
  result = 0;
  if (sub_25163532C())
  {
    sub_2515F8380(0);
    v4 = *(v3 + 36);
    if (sub_25163532C())
    {
      return 1;
    }
  }

  return result;
}

uint64_t RawQuantitySample.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25307C200](*&v1);
  v2 = v0 + *(type metadata accessor for RawQuantitySample() + 20);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v4 = &v2[*(v3 + 36)];
  return sub_2516352CC();
}

uint64_t RawQuantitySample.hashValue.getter()
{
  sub_25163590C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25307C200](*&v1);
  v2 = v0 + *(type metadata accessor for RawQuantitySample() + 20);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v4 = &v2[*(v3 + 36)];
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2516286C0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x25307C200](*&v4);
  v5 = v2 + *(a2 + 20);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v7 = &v5[*(v6 + 36)];
  return sub_2516352CC();
}

uint64_t sub_251628788(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x25307C200](*&v4);
  v5 = v2 + *(a2 + 20);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v7 = &v5[*(v6 + 36)];
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2516288AC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_251628904(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_25163516C();
  sub_2516288AC(&qword_27F446BE8, MEMORY[0x277CC9578]);
  result = 0;
  if (sub_25163532C())
  {
    sub_2515F8380(0);
    v5 = *(v4 + 36);
    if (sub_25163532C())
    {
      return 1;
    }
  }

  return result;
}

void sub_251628A04()
{
  sub_2515F8380(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t ClassificationAxisTimeline.ChangeMoment.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.date.setter(uint64_t a1)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t (*ClassificationAxisTimeline.ChangeMoment.axis.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ClassificationAxisTimeline.ChangeMoment.init(date:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25163516C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for ClassificationAxisTimeline.ChangeMoment() + 36);
  v8 = type metadata accessor for ClassificationAxis();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

BOOL static ClassificationAxisTimeline.ChangeMoment.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_25163514C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for ClassificationAxisTimeline.ChangeMoment() + 36);

  return static ClassificationAxis.== infix(_:_:)(a1 + v8, a2 + v8, a3, a4);
}

uint64_t sub_251628D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2516358DC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_251628E04(char a1)
{
  if (a1)
  {
    return 1936291937;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_251628E24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_251628E04(*v1);
}

uint64_t sub_251628E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_251628D38(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_251628E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_251628EB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v14[0] = *(a2 + 24);
  v14[1] = v4;
  type metadata accessor for ClassificationAxisTimeline.ChangeMoment.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_25163589C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163597C();
  v16 = 0;
  sub_25163516C();
  sub_251629DC4(&qword_27F446E78);
  v11 = v14[3];
  sub_25163588C();
  if (!v11)
  {
    v12 = *(a2 + 36);
    v15 = 1;
    type metadata accessor for ClassificationAxis();
    swift_getWitnessTable();
    sub_25163588C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251629DC4(&qword_27F446BA8);
  sub_2516352CC();
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for ClassificationAxis();
  return ClassificationAxis.hash(into:)(a1, v7);
}

uint64_t ClassificationAxisTimeline.ChangeMoment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = type metadata accessor for ClassificationAxis();
  v28 = *(v33 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v26 - v4;
  v35 = sub_25163516C();
  v31 = *(v35 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassificationAxisTimeline.ChangeMoment.CodingKeys();
  swift_getWitnessTable();
  v36 = sub_25163581C();
  v30 = *(v36 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v37;
  sub_25163596C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v13;
  v37 = v10;
  v18 = v30;
  v17 = v31;
  v19 = v32;
  v20 = v33;
  v39 = 0;
  sub_251629DC4(&qword_27F446EB0);
  sub_2516357FC();
  v21 = *(v17 + 32);
  v26 = v16;
  v21(v16, v34, v35);
  v38 = 1;
  swift_getWitnessTable();
  sub_2516357FC();
  (*(v18 + 8))(v9, v36);
  v22 = v37;
  v23 = v26;
  (*(v28 + 32))(&v26[*(v37 + 36)], v19, v20);
  v24 = v27;
  (*(v27 + 16))(v29, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v24 + 8))(v23, v22);
}

uint64_t sub_25162965C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return ClassificationAxisTimeline.ChangeMoment.init(from:)(a1, a3);
}

uint64_t sub_2516296D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for ClassificationAxis();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_251629754(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for ClassificationAxis();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*ClassificationAxisTimeline.initialAxis.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ClassificationAxisTimeline.changeMoments.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*ClassificationAxisTimeline.changeMoments.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t ClassificationAxisTimeline.init(dateRange:initialAxis:changeMoments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_251601234(a1, a4);
  v7 = type metadata accessor for ClassificationAxisTimeline();
  v8 = *(v7 + 36);
  v9 = type metadata accessor for ClassificationAxis();
  result = (*(*(v9 - 8) + 32))(a4 + v8, a2, v9);
  *(a4 + *(v7 + 40)) = a3;
  return result;
}

uint64_t ClassificationAxisTimeline.axis(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
  v9 = sub_25163563C();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v24 - v16;
  v18 = *(a2 + 40);
  v26 = v3;
  v31 = *(v3 + v18);
  v28 = v6;
  v29 = v7;
  v30 = a1;
  sub_2516354CC();

  swift_getWitnessTable();
  sub_2516352DC();

  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v24 + 8))(v13, v25);
    v19 = *(a2 + 36);
    v20 = type metadata accessor for ClassificationAxis();
    return (*(*(v20 - 8) + 16))(v27, v26 + v19, v20);
  }

  else
  {
    (*(v14 + 32))(v17, v13, v8);
    v22 = *(v8 + 36);
    v23 = type metadata accessor for ClassificationAxis();
    (*(*(v23 - 8) + 16))(v27, &v17[v22], v23);
    return (*(v14 + 8))(v17, v8);
  }
}

uint64_t sub_251629BFC()
{
  v1 = *(v0 + 32);
  sub_25163516C();
  sub_251629DC4(&qword_280DD7318);
  return sub_25163530C() & 1;
}

uint64_t static ClassificationAxisTimeline.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25163516C();
  sub_251629DC4(&qword_27F446BE8);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_2515F8380(0);
  v9 = *(v8 + 36);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for ClassificationAxisTimeline();
  if (!static ClassificationAxis.== infix(_:_:)(a1 + *(v10 + 36), a2 + *(v10 + 36), a3, a4))
  {
    return 0;
  }

  v11 = *(v10 + 40);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  v14 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC390](v12, v13, v14, WitnessTable);
}

uint64_t sub_251629DC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25163516C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251629E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416C616974696E69 && a2 == 0xEB00000000736978 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D65676E616863 && a2 == 0xED000073746E656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2516358DC();

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

uint64_t sub_251629F6C(unsigned __int8 a1)
{
  sub_25163590C();
  MEMORY[0x25307C1E0](a1);
  return sub_25163594C();
}

uint64_t sub_251629FB4(char a1)
{
  if (!a1)
  {
    return 0x676E615265746164;
  }

  if (a1 == 1)
  {
    return 0x416C616974696E69;
  }

  return 0x6F4D65676E616863;
}

BOOL sub_25162A024(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_251629F34(*a1, *a2);
}

uint64_t sub_25162A038(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_251629F6C(*v1);
}

uint64_t sub_25162A044(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_251629F44(a1, *v2);
}

uint64_t sub_25162A050(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_251629F44(v7, *v2);
  return sub_25163594C();
}

uint64_t sub_25162A098(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_251629FB4(*v1);
}

uint64_t sub_25162A0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_251629E08(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_25162A0D4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_25162AF2C();
  *a2 = result;
  return result;
}

uint64_t sub_25162A100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25162A154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationAxisTimeline.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v17 = a2;
  v16[0] = *(a2 + 24);
  v16[1] = v6;
  type metadata accessor for ClassificationAxisTimeline.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_25163589C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163597C();
  LOBYTE(v21) = 0;
  sub_2515F8380(0);
  sub_25162AC2C(&qword_27F446E70, &qword_27F446E78);
  v13 = v18;
  sub_25163588C();
  if (!v13)
  {
    v14 = *(v17 + 36);
    LOBYTE(v21) = 1;
    type metadata accessor for ClassificationAxis();
    swift_getWitnessTable();
    sub_25163588C();
    v21 = *(v3 + *(v17 + 40));
    v20 = 2;
    type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
    sub_2516354CC();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_25163588C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t ClassificationAxisTimeline.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_25163516C();
  sub_251629DC4(&qword_27F446BA8);
  sub_2516352CC();
  sub_2515F8380(0);
  v7 = v2 + *(v6 + 36);
  sub_2516352CC();
  v8 = *(a2 + 36);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = type metadata accessor for ClassificationAxis();
  ClassificationAxis.hash(into:)(a1, v11);
  v12 = *(v3 + *(a2 + 40));
  v13 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC380](a1, v12, v13, WitnessTable);
}

uint64_t sub_25162A5F0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_25163590C();
  a2(v5, a1);
  return sub_25163594C();
}

uint64_t ClassificationAxisTimeline.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v38 = type metadata accessor for ClassificationAxis();
  v35 = *(v38 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - v8;
  sub_2515F8380(0);
  v39 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassificationAxisTimeline.CodingKeys();
  swift_getWitnessTable();
  v42 = sub_25163581C();
  v36 = *(v42 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v42);
  v14 = &v30 - v13;
  v34 = a3;
  v15 = type metadata accessor for ClassificationAxisTimeline();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = v14;
  v20 = v43;
  sub_25163596C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v36;
  v22 = v37;
  v30 = a2;
  v31 = v18;
  v23 = v15;
  v24 = v38;
  v43 = a1;
  LOBYTE(v46) = 0;
  sub_25162AC2C(&qword_27F446EA8, &qword_27F446EB0);
  v25 = v40;
  sub_2516357FC();
  sub_251601234(v25, v31);
  LOBYTE(v46) = 1;
  swift_getWitnessTable();
  sub_2516357FC();
  v26 = v22;
  v27 = v31;
  (*(v35 + 32))(&v31[*(v23 + 36)], v26, v24);
  type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
  sub_2516354CC();
  v45 = 2;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2516357FC();
  (*(v21 + 8))(v41, v42);
  *(v27 + *(v23 + 40)) = v46;
  v28 = v32;
  (*(v32 + 16))(v33, v27, v23);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return (*(v28 + 8))(v27, v23);
}

uint64_t sub_25162AB94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_25163590C();
  a4(v7, a2);
  return sub_25163594C();
}

uint64_t sub_25162AC2C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2515F8380(255);
    sub_251629DC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25162ACE8(uint64_t a1)
{
  sub_2515F8380(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    type metadata accessor for ClassificationAxis();
    if (v5 <= 0x3F)
    {
      type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
      sub_2516354CC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25162ADD4(uint64_t a1)
{
  result = sub_25163516C();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for ClassificationAxis();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall ClassificationStoreCancellationToken.cancel()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v1();
}

uint64_t ClassificationStoreCancellationToken.init(cancel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25162AF70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25162AFB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ClassificationRule.classifications<A>(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v62 = a5;
  v63 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = sub_25163563C();
  v49 = *(v56 - 8);
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v56);
  v12 = &v47 - v11;
  v58 = *(AssociatedTypeWitness - 8);
  v13 = v58[8];
  v14 = MEMORY[0x28223BE20](v10);
  v55 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = &v47 - v16;
  v64 = a4;
  v17 = swift_getAssociatedTypeWitness();
  v61 = *(v17 - 8);
  v18 = v61[8];
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v21 = sub_25163563C();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v47 - v24;
  v26 = *(a3 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = swift_getAssociatedTypeWitness();
  v48 = *(v57 - 8);
  v30 = *(v48 + 64);
  v31 = MEMORY[0x28223BE20](v57);
  v33 = &v47 - v32;
  v34 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v47 = v36;
  v37 = *(v36 + 16);
  v65 = &v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  v37();
  v67 = sub_25163546C();
  (*(v26 + 16))(v29, v63, a3);
  v38 = v61;
  sub_2516353BC();
  v39 = v33;
  v40 = v57;
  swift_getAssociatedConformanceWitness();
  sub_25163565C();
  v62 = v38[6];
  v63 = v38 + 6;
  if (v62(v25, 1, v17) != 1)
  {
    v42 = v38[4];
    v60 = v64 + 40;
    v61 = v42;
    v43 = v58;
    v51 = (v58 + 2);
    v52 = (v58 + 4);
    v44 = (v58 + 1);
    v58 = v38 + 1;
    v59 = (v43 + 6);
    v49 += 8;
    v50 = v44;
    v53 = v33;
    (v42)(v20, v25, v17);
    while (1)
    {
      (*(v64 + 40))(v20, v66);
      if ((*v59)(v12, 1, AssociatedTypeWitness) == 1)
      {
        (*v58)(v20, v17);
        (*v49)(v12, v56);
      }

      else
      {
        v45 = v54;
        (*v52)(v54, v12, AssociatedTypeWitness);
        (*v51)(v55, v45, AssociatedTypeWitness);
        sub_2516354CC();
        sub_2516354AC();
        v46 = v45;
        v40 = v57;
        v39 = v53;
        (*v50)(v46, AssociatedTypeWitness);
        (*v58)(v20, v17);
      }

      sub_25163565C();
      if (v62(v25, 1, v17) == 1)
      {
        break;
      }

      (v61)(v20, v25, v17);
    }
  }

  (*(v48 + 8))(v39, v40);
  (*(v47 + 8))(v65, v66);
  return v67;
}

uint64_t MeasurementEnumerator.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v19 = (a7 + *(type metadata accessor for MapMeasurementEnumerator() + 52));
  *v19 = a1;
  v19[1] = a2;
}

unint64_t sub_25162B824(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25162BBA0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25162B8AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25162B9E8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_25162BBA0()
{
  result = qword_27F447780;
  if (!qword_27F447780)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F447780);
  }

  return result;
}

uint64_t sub_25162BBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (v5 + *(a5 + 52));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  v18 = *(a5 + 32);
  v19 = *(a5 + 16);
  *(v14 + 16) = v19;
  *(v14 + 32) = v18;
  *(v14 + 48) = v13;
  *(v14 + 56) = v12;
  *(v14 + 64) = a1;
  *(v14 + 72) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(v18 + 24);

  v16(sub_25162BE14, v14, sub_25162BE48, v15, v19, v18);
}

uint64_t sub_25162BD30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20]();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  a4(v13);
  return (*(v9 + 8))(v13, a7);
}

uint64_t sub_25162BE14(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_25162BD30(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_25162BE48(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t EscalationIdentifier.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EscalationIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthDomains::EscalationIdentifier_optional __swiftcall EscalationIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.identifier = rawValue;
  return result;
}

unint64_t sub_25162BFD0()
{
  result = qword_27F447788;
  if (!qword_27F447788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447788);
  }

  return result;
}

unint64_t sub_25162C028()
{
  result = qword_27F447790;
  if (!qword_27F447790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447790);
  }

  return result;
}

unint64_t sub_25162C080()
{
  result = qword_27F447798;
  if (!qword_27F447798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447798);
  }

  return result;
}

uint64_t sub_25162C0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25162C1B4();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_25162C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25162C1B4();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_25162C1B4()
{
  result = qword_27F4477A0;
  if (!qword_27F4477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4477A0);
  }

  return result;
}

uint64_t sub_25162C224@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  sub_2515F8E44();
  v37 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = sub_25163516C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  sub_25162DA20(&qword_280DD7318, MEMORY[0x277CC9578]);
  v19 = sub_2516352EC();
  v20 = v12;
  v21 = v12[2];
  if (v19)
  {
    v22 = a1;
  }

  else
  {
    v22 = v3;
  }

  v21(v18, v22, v11);
  sub_2515F8380(0);
  v35 = v23;
  v24 = *(v23 + 36);
  v25 = v3 + v24;
  v26 = a1 + v24;
  if (sub_2516352FC())
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  v21(v16, v27, v11);
  result = sub_25163530C();
  if (result)
  {
    v29 = v12[4];
    v29(v10, v18, v11);
    v30 = v37;
    v29(&v10[*(v37 + 48)], v16, v11);
    v31 = v36;
    sub_25162E41C(v10, v36, sub_2515F8E44);
    v32 = *(v30 + 48);
    v33 = v38;
    v29(v38, v31, v11);
    v34 = v20[1];
    v34(v31 + v32, v11);
    sub_25162E484(v10, v31, sub_2515F8E44);
    v29(&v33[*(v35 + 36)], (v31 + *(v30 + 48)), v11);
    return (v34)(v31, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClassificationRuleset.axisTimeline(considering:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  sub_2515F8380(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ClassificationAxis();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for ClassificationFactorTimeline(0);
  v18 = a1 + *(v17 + 20);
  v19 = *(v18 + 8);
  v20 = *(v18 + 32);
  v34 = *v18;
  v35 = v19;
  v36 = *(v18 + 16);
  v37 = v20;
  sub_25162C868(&v34, a2, a3);
  v34 = *(a1 + *(v17 + 24));
  v31 = a2;
  v32 = a3;
  v33 = v4;
  sub_25162D9EC(0);
  v22 = v21;
  v23 = type metadata accessor for ClassificationAxisTimeline.ChangeMoment();
  v24 = sub_25162DA20(qword_27F4477A8, sub_25162D9EC);

  v26 = sub_25160605C(sub_25162D9C8, v30, v22, v23, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);

  sub_25162E41C(a1, v11, sub_2515F8380);
  return ClassificationAxisTimeline.init(dateRange:initialAxis:changeMoments:)(v11, v16, v26, v29);
}

uint64_t sub_25162C868(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v11 = *(a1 + 8);
  v12 = *(a1 + 32);
  v16 = *a1;
  v17 = v11;
  v18 = *(a1 + 1);
  v19 = v12;
  (*(a3 + 32))(&v16, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_25162C9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ClassificationAxis();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_25163516C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1);
  v18 = a1 + *(type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0) + 20);
  v19 = *(v18 + 8);
  v20 = *(v18 + 32);
  v23 = *v18;
  v24 = v19;
  v25 = *(v18 + 16);
  v26 = v20;
  sub_25162C868(&v23, a2, a3);
  return ClassificationAxisTimeline.ChangeMoment.init(date:axis:)(v16, v12, a4);
}

uint64_t sub_25162CC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  v3 = type metadata accessor for ClassificationRulesetAccumulatedState();
  v4 = a2 + *(v3 + 36);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 3;
  v5 = *(v3 + 40);
  sub_2515F8380(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t ClassificationRuleset<>.initialState.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_25162CC58(AssociatedTypeWitness, a1);
}

uint64_t ClassificationRuleset<>.reduce(_:into:considering:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a3;
  v96 = a2;
  v90 = a1;
  v81 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v73 = &v72 - v9;
  v79 = sub_25163563C();
  v89 = *(v79 - 8);
  v10 = *(v89 + 64);
  v11 = MEMORY[0x28223BE20](v79);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v72 - v14;
  MEMORY[0x28223BE20](v13);
  v92 = &v72 - v15;
  sub_25162DA68(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v88 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v87 = *(v86 - 1);
  v19 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v75 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25163516C();
  v84 = *(v83 - 8);
  v21 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F8380(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  v76 = v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = *(AssociatedConformanceWitness + 8);
  v33 = swift_checkMetadataState();
  v32(v33, AssociatedConformanceWitness);
  v80 = a5;
  v94 = a4;
  v74 = swift_getAssociatedConformanceWitness();
  v85 = type metadata accessor for ClassificationRulesetAccumulatedState();
  v34 = v96 + *(v85 + 40);
  sub_25162D7A0(v29);
  v35 = v29;
  v36 = v83;
  sub_25162DAD4(v35, sub_2515F8380);
  v32(v33, AssociatedConformanceWitness);
  v37 = v84;
  v38 = v91;
  v39 = v82;
  (*(v84 + 16))(v82, v27, v36);
  v40 = v86;
  sub_25162DAD4(v27, sub_2515F8380);
  v41 = type metadata accessor for ClassificationFactorTimeline(0);
  v42 = *(v38 + *(v41 + 24));
  v97 = v39;
  v43 = v88;
  sub_2515FA9F8(sub_25162DAB4, v42, v88);
  if ((*(v87 + 48))(v43, 1, v40) == 1)
  {
    sub_25162DAD4(v43, sub_25162DA68);
    v44 = (v38 + *(v41 + 20));
    v91 = *v44;
    v45 = *(v44 + 8);
    v46 = v44[3];
    v88 = v44[2];
    v47 = *(v44 + 32);
  }

  else
  {
    v48 = v75;
    sub_25162E484(v43, v75, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v49 = v48 + *(v40 + 5);
    v91 = *v49;
    v45 = *(v49 + 8);
    v46 = *(v49 + 24);
    v88 = *(v49 + 16);
    v47 = *(v49 + 32);
    sub_25162DAD4(v48, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
  }

  (*(v37 + 8))(v39, v36);
  v50 = v96;
  v51 = (v96 + *(v85 + 36));
  v52 = *(v51 + 32);
  v53 = v94;
  if (v52 == 3)
  {
    v54 = v89;
    if (v47 == 3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v55 = v51[1];
    v103 = *v51;
    v104 = v55;
    v105 = v52;
    v54 = v89;
    if (v47 != 3)
    {
      v98 = v91;
      v99 = v45;
      v100 = v88;
      v101 = v46;
      v102 = v47;
      if (_s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v103, &v98))
      {
        goto LABEL_13;
      }
    }
  }

  v87 = v45;
  v86 = *(v54 + 16);
  v56 = v47;
  LODWORD(v75) = v47;
  v57 = v88;
  v58 = v79;
  (v86)(v92, v50, v79);
  *&v103 = v91;
  BYTE8(v103) = v45;
  *&v104 = v57;
  *(&v104 + 1) = v46;
  v105 = v56;
  v59 = v77;
  (*(v80 + 32))(&v103, v53);
  v60 = v93;
  v61 = AssociatedTypeWitness;
  (*(v93 + 56))(v59, 0, 1, AssociatedTypeWitness);
  (*(v54 + 40))(v50, v59, v58);
  v62 = v87;
  *v51 = v91;
  *(v51 + 1) = v62;
  *(v51 + 2) = v57;
  *(v51 + 3) = v46;
  v63 = v61;
  *(v51 + 32) = v75;
  v64 = v92;
  v65 = v78;
  (v86)(v78, v92, v58);
  v66 = *(v60 + 48);
  if (v66(v65, 1, v63) == 1)
  {
    v67 = *(v54 + 8);
    v67(v64, v58);
    v67(v65, v58);
    v50 = v96;
  }

  else
  {
    v68 = v73;
    (*(v60 + 32))(v73, v65, v63);
    v50 = v96;
    result = v66(v96, 1, v63);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v80 + 40))(v68, v50, v94);
    (*(v60 + 8))(v68, v63);
    (*(v89 + 8))(v92, v58);
  }

LABEL_13:
  v70 = AssociatedTypeWitness;
  if (!(*(v93 + 48))(v50, 1, AssociatedTypeWitness))
  {
    return (*(v74 + 40))(v90, v70);
  }

  v71 = swift_getAssociatedTypeWitness();
  return (*(*(v71 - 8) + 56))(v81, 1, 1, v71);
}

uint64_t sub_25162D7A0(uint64_t a1)
{
  v2 = v1;
  sub_2515F8380(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  sub_25162E3B8(0, &qword_280DD70B8, sub_2515F8380, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v18 - v15;
  if ((*(v6 + 48))(v2, 1, v5))
  {
    sub_25162E41C(a1, v16, sub_2515F8380);
  }

  else
  {
    sub_25162E41C(v2, v10, sub_2515F8380);
    sub_25162C224(a1, v12);
    sub_25162DAD4(v10, sub_2515F8380);
    sub_25162E484(v12, v16, sub_2515F8380);
  }

  (*(v6 + 56))(v16, 0, 1, v5);
  return sub_251609670(v16, v2);
}

uint64_t sub_25162DA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25162DAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25162DB5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_25163563C();
  if (v2 <= 0x3F)
  {
    sub_25162E2CC();
    if (v3 <= 0x3F)
    {
      sub_25162E31C(319, qword_27F447838, type metadata accessor for ClosedRangeBuilder);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25162DC18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_25163516C();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v8 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0xFC)
  {
    v15 = 252;
  }

  else
  {
    v15 = v14;
  }

  if (v7)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v12)
  {
    v19 = *(v10 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_39;
  }

  v20 = v19 + ((v18 + v17) & ~v17) + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v17);
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_21;
  }

  v23 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v23))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_39;
      }

LABEL_21:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

LABEL_28:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v20)
      {
        if (v20 > 3)
        {
          LODWORD(v20) = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v20) = *a1;
          }
        }

        else if (v20 == 1)
        {
          LODWORD(v20) = *a1;
        }

        else
        {
          LODWORD(v20) = *a1;
        }
      }

      return v15 + (v20 | v24) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_28;
    }
  }

LABEL_39:
  if (v8 == v15)
  {
    if (v7 >= 2)
    {
      v25 = (*(v6 + 48))(a1, v7, v5);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = (a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v14 > 0xFC)
  {
    if (!v12)
    {
      return 0;
    }

    v31 = (*(v11 + 48))((v27 + v17 + 33) & ~v17, v12, v9);
    v29 = v31 != 0;
    result = (v31 - 1);
    if (result == 0 || !v29)
    {
      return 0;
    }
  }

  else
  {
    v28 = *(v27 + 32);
    v29 = v28 >= 3;
    v30 = v28 - 3;
    if (!v29)
    {
      v30 = -1;
    }

    if (v30 + 1 >= 2)
    {
      return v30;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_25162DEC0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_25163516C() - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  v15 = *(v12 + 80);
  if (v14 <= 0xFC)
  {
    v17 = 252;
  }

  else
  {
    v17 = v14;
  }

  if (v9)
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v16 = *(v12 + 64);
  v19 = ((v16 + v15) & ~v15) + v16;
  if (v13)
  {
    v20 = ((v16 + v15) & ~v15) + v16;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v20 + ((v15 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v15);
  if (a3 <= v17)
  {
    goto LABEL_28;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v11 = 4;
      if (v17 >= a2)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

LABEL_28:
    if (v17 >= a2)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v11 = 1;
  if (v17 >= a2)
  {
LABEL_38:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_45;
      }

      *&a1[v21] = 0;
    }

    else if (v11)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return;
    }

LABEL_45:
    if (v10 == v17)
    {
      v27 = *(v34 + 56);

      v27(a1, a2 + 1, v9, v7);
    }

    else
    {
      v28 = &a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8;
      if (v14 > 0xFC)
      {
        v29 = ((v28 + v15 + 33) & ~v15);
        if (a2 >= v13)
        {
          if (v19 <= 3)
          {
            v31 = ~(-1 << (8 * v19));
          }

          else
          {
            v31 = -1;
          }

          if (v19)
          {
            v32 = v31 & (a2 - v13);
            if (v19 <= 3)
            {
              v33 = v19;
            }

            else
            {
              v33 = 4;
            }

            bzero(v29, v19);
            if (v33 > 2)
            {
              if (v33 == 3)
              {
                *v29 = v32;
                v29[2] = BYTE2(v32);
              }

              else
              {
                *v29 = v32;
              }
            }

            else if (v33 == 1)
            {
              *v29 = v32;
            }

            else
            {
              *v29 = v32;
            }
          }
        }

        else
        {
          v30 = *(v12 + 56);

          v30((v28 + v15 + 33) & ~v15, a2 + 1);
        }
      }

      else if (a2 > 0xFC)
      {
        *(v28 + 32) = 0;
        *v28 = 0u;
        *(v28 + 16) = 0u;
        *v28 = a2 - 253;
      }

      else
      {
        *(v28 + 32) = a2 + 3;
      }
    }

    return;
  }

LABEL_29:
  v24 = ~v17 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_59:
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_59;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v11 > 1)
    {
LABEL_63:
      if (v11 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v11 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v11)
  {
    a1[v21] = v25;
  }
}

void sub_25162E2CC()
{
  if (!qword_27F447830)
  {
    v0 = sub_25163563C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F447830);
    }
  }
}

void sub_25162E31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25163516C();
    v7 = sub_25162DA20(&qword_280DD7318, MEMORY[0x277CC9578]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25162E3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25162E41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25162E484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25162E4EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_25163531C();
  result = sub_25163563C();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25162E568(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 64);
  if (v5)
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + *(v4 + 80)) & ~*(v4 + 80));
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_27;
        }

LABEL_9:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_27;
        }

LABEL_16:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_16;
      }
    }
  }

LABEL_27:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25162E6F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + *(v7 + 80)) & ~*(v7 + 80)) + v9;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v10 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_19:
    v17 = ~v10 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_57:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v6)
  {
    goto LABEL_34;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (a2 - v8);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(a1, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *a1 = v22;
            a1[2] = BYTE2(v22);
          }

          else
          {
            *a1 = v22;
          }
        }

        else if (v23 == 1)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      v20 = *(v7 + 56);

      v20();
    }
  }
}

uint64_t static Aggregator.rollingMeanQuantity<>(maximumMeasurementCount:maximumDurationBetweenMeasurements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t RollingMeanQuantity.reduce(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25163516C();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v44 - v8;
  v9 = type metadata accessor for RawQuantitySample();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v20 = *(v2 + 2);
  v21 = v20[2];
  if (v21)
  {
    sub_25162F6B4(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v21 - 1), &v44 - v18, type metadata accessor for RawQuantitySample);
    v22 = *(v9 + 20);
    if (sub_25163513C())
    {
LABEL_20:
      result = sub_25163575C();
      __break(1u);
      return result;
    }

    sub_25162F634(v19, type metadata accessor for RawQuantitySample);
  }

  sub_25162F6B4(a1, v17, type metadata accessor for RawQuantitySample);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_2515F8B5C(0, v20[2] + 1, 1, v20);
  }

  v24 = v20[2];
  v23 = v20[3];
  v25 = v24 + 1;
  v46 = v4;
  if (v24 >= v23 >> 1)
  {
    v20 = sub_2515F8B5C(v23 > 1, v24 + 1, 1, v20);
  }

  v20[2] = v25;
  v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  sub_25162F71C(v17, v20 + v26 + *(v10 + 72) * v24, type metadata accessor for RawQuantitySample);
  *(v2 + 2) = v20;
  v27 = *v2;
  v28 = *v2 <= v24;
  v29 = a1;
  v31 = v47;
  v30 = v48;
  if (v28)
  {
    if (__OFSUB__(v25, *&v27))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_25162EE64(v25 - *&v27);
  }

  v32 = -v2[1];
  v33 = a1 + *(v9 + 20);
  sub_25163510C();
  v34 = *(v2 + 2);
  if (!*(v34 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_25162F6B4(v34 + v26, v14, type metadata accessor for RawQuantitySample);
  v35 = *(v9 + 20);
  v36 = v45;
  v37 = v46;
  (*(v30 + 16))(v45, &v14[v35], v46);
  sub_25162F634(&v14[v35], sub_2515F8380);
  LOBYTE(v35) = sub_25163513C();
  v38 = *(v30 + 8);
  v39 = v38(v36, v37);
  if (v35)
  {
    MEMORY[0x28223BE20](v39);
    v43 = v31;
    v40 = sub_25162F080(sub_25162F694, (&v44 - 4), v34);
    if ((v41 & 1) == 0 && v40 >= 1)
    {
      sub_25162EE64(v40);
    }
  }

  v2[3] = *v29 + v2[3];
  return v38(v31, v37);
}

unint64_t sub_25162EE64(unint64_t a1)
{
  v3 = type metadata accessor for RawQuantitySample();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  result = sub_25162F16C(a1, v8);
  v13 = (v12 >> 1) - v11;
  if (v12 >> 1 == v11)
  {

    result = swift_unknownObjectRelease();
    if (!a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if ((v12 >> 1) <= v11)
  {
    goto LABEL_14;
  }

  v14 = v10;
  v15 = v11;
  v20[1] = result;
  v16 = *(v1 + 24);
  v17 = *(v4 + 72);

  v18 = v14 + v15 * v17;
  do
  {
    sub_25162F6B4(v18, v7, type metadata accessor for RawQuantitySample);
    v19 = *v7;
    sub_25162F634(v7, type metadata accessor for RawQuantitySample);
    v16 = v16 - v19;
    v18 += v17;
    --v13;
  }

  while (v13);
  result = swift_unknownObjectRelease();
  *(v1 + 24) = v16;
  if (a1)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v8 + 16) >= a1)
    {
      return sub_25162F970(0, a1);
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_25162F00C()
{
  sub_25163516C();
  v0 = *(type metadata accessor for RawQuantitySample() + 20);
  sub_2515FA0F4();
  return sub_2516352FC() & 1;
}

uint64_t sub_25162F080(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for RawQuantitySample() - 8);
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

uint64_t sub_25162F16C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for RawQuantitySample() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t RollingMeanQuantity.currentValue()@<X0>(double *a1@<X8>)
{
  sub_2515F8E44();
  v48 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v43 - v8;
  v9 = sub_25163516C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  sub_2515F8380(0);
  v50 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = *(v21 + 16);
  v24 = type metadata accessor for RawQuantitySample();
  v25 = *(v24 - 8);
  if (v23)
  {
    v43 = v21;
    v44 = v20;
    v46 = a1;
    v26 = v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = v10;
    v28 = *(v10 + 16);
    v29 = v26 + *(v24 + 20);
    v30 = v24;
    v49 = v25;
    v28(v16, v29, v9);
    v31 = v26 + *(v49 + 72) * (v23 - 1);
    v45 = v30;
    v28(v14, v31 + *(v30 + 20) + *(v50 + 36), v9);
    sub_2515FA0F4();
    result = sub_25163530C();
    if (result)
    {
      v33 = *(v27 + 32);
      v34 = v47;
      v33(v47, v16, v9);
      v35 = v48;
      v33((v34 + *(v48 + 48)), v14, v9);
      sub_25162F6B4(v34, v7, sub_2515F8E44);
      v36 = *(v35 + 48);
      v37 = v44;
      v33(v44, v7, v9);
      v38 = *(v27 + 8);
      v38(&v7[v36], v9);
      sub_25162F71C(v34, v7, sub_2515F8E44);
      v33((v37 + *(v50 + 36)), &v7[*(v35 + 48)], v9);
      v38(v7, v9);
      v40 = v45;
      v39 = v46;
      v41 = v22 / *(v43 + 16);
      sub_25162F71C(v37, v46 + *(v45 + 20), sub_2515F8380);
      *v39 = v41;
      return (*(v49 + 56))(v39, 0, 1, v40);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v42 = *(v25 + 56);

    return v42(a1, 1, 1, v24);
  }

  return result;
}

uint64_t sub_25162F634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25162F6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25162F71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25162F790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25162F7D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25162F828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RawQuantitySample();
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

unint64_t sub_25162F970(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2515F8B5C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_25162F828(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t PerMeasurementRule.reduce(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  (*(a1 + 16))();
  v4 = *(a1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 56);

  return v6(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_25162FAF0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t AggregationRule.reduce(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v28 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v31 = v13;
  v29 = sub_25163563C();
  v32 = *(v29 - 8);
  v14 = *(v32 + 64);
  v15 = MEMORY[0x28223BE20](v29);
  v17 = &v28 - v16;
  v28 = *(v13 - 8);
  v18 = *(v28 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  (*(a3 + 40))(a1, a2, a3);
  v21 = (*(a3 + 64))(v38, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  v21(v38, 0);
  (*(a3 + 48))(a2, a3);
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v30 + 8))(v12, AssociatedTypeWitness);
  v35 = a2;
  v36 = a3;
  v37 = v5;
  v23 = *(a3 + 8);
  v24 = swift_getAssociatedTypeWitness();
  v25 = v29;
  sub_25162FAF0(sub_25163023C, v34, MEMORY[0x277D84A98], v24, v26, v33);
  (*(v32 + 8))(v17, v25);
  return (*(v28 + 8))(v20, v31);
}

uint64_t sub_251630128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  (*(a4 + 72))(a1, a3, a4);
  return (*(v7 + 8))(v10, a3);
}

uint64_t Classification.axis.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 24);
  v7 = *(AssociatedConformanceWitness + 8);
  v25 = AssociatedTypeWitness;
  v26 = v7;
  v27 = v6;
  v8 = sub_2516352AC();
  v9 = sub_25163563C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v23 - v20;
  (*(a2 + 56))(v23, a2);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v18 + 8))(v21, AssociatedTypeWitness);
  (*(*(v8 - 8) + 56))(v12, 1, 1, v8);
  swift_getAssociatedConformanceWitness();
  return ClassificationAxis.init(scale:thresholds:)(v17, v12, v13, v24);
}

uint64_t sub_251630780@<X0>(char *a1@<X8>)
{
  sub_25163087C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2516308D4();
  v7 = v6;
  v8 = *(*(v6 - 8) + 56);
  v8(v5, 1, 1, v6);
  *a1 = &unk_286389EE0;
  sub_251630A54();
  v10 = *(v9 + 36);
  v8(&a1[v10], 1, 1, v7);
  return sub_251630C30(v5, &a1[v10]);
}

void sub_25163087C()
{
  if (!qword_27F4478C0)
  {
    sub_2516308D4();
    v0 = sub_25163563C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4478C0);
    }
  }
}

void sub_2516308D4()
{
  if (!qword_27F4478C8)
  {
    sub_251630958();
    sub_2516309AC();
    sub_251630A00();
    v0 = sub_2516352AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4478C8);
    }
  }
}

unint64_t sub_251630958()
{
  result = qword_27F4478D0;
  if (!qword_27F4478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478D0);
  }

  return result;
}

unint64_t sub_2516309AC()
{
  result = qword_27F4478D8;
  if (!qword_27F4478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478D8);
  }

  return result;
}

unint64_t sub_251630A00()
{
  result = qword_27F4478E0;
  if (!qword_27F4478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478E0);
  }

  return result;
}

void sub_251630A54()
{
  if (!qword_27F4478E8)
  {
    sub_251630AB8();
    sub_251630B08();
    v0 = type metadata accessor for ClassificationAxis();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4478E8);
    }
  }
}

void sub_251630AB8()
{
  if (!qword_27F4478F0)
  {
    v0 = sub_2516354CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4478F0);
    }
  }
}

unint64_t sub_251630B08()
{
  result = qword_27F4478F8;
  if (!qword_27F4478F8)
  {
    sub_251630AB8();
    sub_251630B88();
    sub_251630BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4478F8);
  }

  return result;
}

unint64_t sub_251630B88()
{
  result = qword_27F447900;
  if (!qword_27F447900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447900);
  }

  return result;
}

unint64_t sub_251630BDC()
{
  result = qword_27F447908;
  if (!qword_27F447908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447908);
  }

  return result;
}

uint64_t sub_251630C30(uint64_t a1, uint64_t a2)
{
  sub_25163087C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HKSample.dateRange.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_2515F8E44();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = sub_25163516C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = [v2 startDate];
  sub_25163515C();

  v21 = [v2 endDate];
  sub_25163515C();

  sub_2515FA0F4();
  result = sub_25163530C();
  if (result)
  {
    v23 = v13[4];
    v23(v11, v19, v12);
    v23(&v11[*(v5 + 48)], v17, v12);
    sub_25161A3CC(v11, v9);
    v24 = *(v5 + 48);
    v23(a1, v9, v12);
    v25 = v13[1];
    v25(&v9[v24], v12);
    sub_25161A430(v11, v9);
    v26 = *(v5 + 48);
    sub_2515F8380(0);
    v23(&a1[*(v27 + 36)], &v9[v26], v12);
    return (v25)(v9, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClassificationType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ClassificationType.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_2516358DC();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_251630FCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2516358DC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_251631048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_251630FCC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_25163107C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_251608AF4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2516310AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_251631100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassificationType.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for ClassificationType.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_25163589C();
  v14 = *(v6 - 8);
  v7 = *(v14 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = v2[1];
  v13 = *v2;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_25163597C();
  v15 = v13;
  v16 = v10;
  sub_251631300();
  sub_25163588C();

  return (*(v14 + 8))(v9, v6);
}

unint64_t sub_251631300()
{
  result = qword_27F447910;
  if (!qword_27F447910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447910);
  }

  return result;
}

uint64_t ClassificationType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25163539C();
}

uint64_t ClassificationType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25163590C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t ClassificationType.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for ClassificationType.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_25163581C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25163596C();
  if (!v2)
  {
    v10 = v14;
    sub_2516315A0();
    sub_2516357FC();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
    *v10 = v13[0];
    v10[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251631564()
{
  sub_25163590C();
  ClassificationType.hash(into:)();
  return sub_25163594C();
}

unint64_t sub_2516315A0()
{
  result = qword_27F447918[0];
  if (!qword_27F447918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F447918);
  }

  return result;
}

uint64_t sub_2516315F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return ClassificationType.init(from:)(a1, a3);
}

uint64_t ClassificationType._type.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_25163165C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ClassificationChangeDescriptorSet.descriptors.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_251631784(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v38 = a2 + 56;
  v34 = result + 56;
  v35 = result;
  v33 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v36 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v2 + 40);
    sub_25163590C();
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        MEMORY[0x25307C1E0](3);
        goto LABEL_28;
      }

      if (v14 == 3)
      {
        MEMORY[0x25307C1E0](4);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v14)
      {
        MEMORY[0x25307C1E0](1);
        goto LABEL_28;
      }

      if (v14 == 1)
      {
        MEMORY[0x25307C1E0](2);
        goto LABEL_28;
      }
    }

    MEMORY[0x25307C1E0](0);
    v17 = v14;
    sub_25163562C();
    if (v15)
    {
      sub_25163592C();
    }

    else
    {
      sub_25163592C();
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0.0;
      }

      MEMORY[0x25307C200](*&v18);
    }

LABEL_28:
    v19 = sub_25163594C();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_59:
      sub_251601D74(v14);
      return 0;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = *(v2 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (*v23 > 1)
      {
        break;
      }

      if (!v24)
      {
        if (!v14)
        {
          goto LABEL_55;
        }

        sub_251601D64(v14);
        v27 = 0;
        goto LABEL_45;
      }

      if (v24 == 1)
      {
        if (v14 == 1)
        {
          goto LABEL_55;
        }

        sub_251601D64(v14);
        v27 = 1;
        goto LABEL_45;
      }

LABEL_39:
      v28 = *v23;
      if (v14 < 4)
      {
        sub_251601D64(v14);
        sub_251601D64(v24);
        v27 = v24;
        v2 = a2;
LABEL_45:
        sub_251601D74(v27);
        sub_251601D74(v14);
        goto LABEL_46;
      }

      sub_251601D84();
      sub_251601D64(v14);
      sub_251601D64(v28);
      sub_251601D64(v14);
      sub_251601D64(v28);
      v29 = sub_25163561C();
      sub_251601D74(v28);
      sub_251601D74(v14);
      sub_251601D74(v14);
      sub_251601D74(v28);
      v2 = a2;
      if (v29)
      {
        if (v26)
        {
          if (v15)
          {
            goto LABEL_54;
          }
        }

        else if ((v15 & 1) == 0 && v25 == v13)
        {
LABEL_54:
          v30 = v14;
          goto LABEL_56;
        }
      }

LABEL_46:
      v21 = (v21 + 1) & v22;
      if (((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (v24 != 2)
    {
      if (v24 == 3)
      {
        if (v14 == 3)
        {
          goto LABEL_55;
        }

        sub_251601D64(v14);
        v27 = 3;
        goto LABEL_45;
      }

      goto LABEL_39;
    }

    if (v14 != 2)
    {
      sub_251601D64(v14);
      v27 = 2;
      goto LABEL_45;
    }

LABEL_55:
    v31 = *(v23 + 8);
    v32 = *(v23 + 16);
    sub_251601D74(*v23);
    v30 = v24;
LABEL_56:
    sub_251601D74(v30);
    v4 = v34;
    result = v35;
    v8 = v33;
    v7 = v36;
  }

  while (v36);
LABEL_8:
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ClassificationChangeDescriptorSet.hashValue.getter()
{
  v1 = *v0;
  sub_25163590C();
  sub_251631D3C(v3, v1);
  return sub_25163594C();
}

uint64_t sub_251631C1C()
{
  v1 = *v0;
  sub_25163590C();
  sub_251631D3C(v3, v1);
  return sub_25163594C();
}

uint64_t sub_251631C6C()
{
  v1 = *v0;
  sub_25163590C();
  sub_251631D3C(v3, v1);
  return sub_25163594C();
}

uint64_t ClassificationChangeDescriptorSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_251601C68(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_251631CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_251601C68(a1);

  *a2 = v3;
  return result;
}

void sub_251631D3C(__int128 *a1, uint64_t a2)
{
  v20 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 8);
  v18 = *a1;
  v19 = a1[1];
  sub_25163594C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v16)
  {
LABEL_8:
    v10 = *(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (i << 6));
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    sub_25163590C();
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v14 = 3;
      }

      else
      {
        if (v11 != 3)
        {
LABEL_15:
          MEMORY[0x25307C1E0](0);
          v15 = v11;
          sub_25163562C();
          if (v13)
          {
            sub_25163592C();
          }

          else
          {
            sub_25163592C();
            if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = 0;
            }

            MEMORY[0x25307C200](v17);
          }

          goto LABEL_20;
        }

        v14 = 4;
      }
    }

    else if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_15;
      }

      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    MEMORY[0x25307C1E0](v14);
LABEL_20:
    v5 &= v5 - 1;
    v16 = sub_25163594C();
    sub_251601D74(v11);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x25307C1E0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_251631F28()
{
  result = qword_27F4479A0;
  if (!qword_27F4479A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479A0);
  }

  return result;
}

uint64_t sub_251631F7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_251631FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MeasureIdentifier.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeasureIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthDomains::MeasureIdentifier_optional __swiftcall MeasureIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.identifier = rawValue;
  return result;
}

unint64_t sub_25163215C()
{
  result = qword_280DD7320;
  if (!qword_280DD7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD7320);
  }

  return result;
}

unint64_t sub_2516321B4()
{
  result = qword_27F4479A8;
  if (!qword_27F4479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479A8);
  }

  return result;
}

unint64_t sub_25163220C()
{
  result = qword_27F4479B0;
  if (!qword_27F4479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479B0);
  }

  return result;
}

uint64_t sub_251632260(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163237C();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_2516322B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25163237C();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_25163237C()
{
  result = qword_27F4479B8;
  if (!qword_27F4479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479B8);
  }

  return result;
}

uint64_t sub_2516323D8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 8 == a2 << 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2516358DC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

HealthDomains::Escalation::Tier_optional __swiftcall Escalation.Tier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25163577C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void __swiftcall Escalation.init(identifier:name:description:tier:)(HealthDomains::Escalation *__return_ptr retstr, HealthDomains::EscalationIdentifier identifier, Swift::String name, Swift::String description, HealthDomains::Escalation::Tier tier)
{
  v5 = *(identifier.identifier._countAndFlagsBits + 8);
  v6 = *description._object;
  retstr->identifier.identifier._countAndFlagsBits = *identifier.identifier._countAndFlagsBits;
  retstr->identifier.identifier._object = v5;
  retstr->name._countAndFlagsBits = identifier.identifier._object;
  *&retstr->name._object = name;
  retstr->description._object = description._countAndFlagsBits;
  retstr->tier = v6;
}

uint64_t Escalation.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Escalation.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Escalation.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_251632628()
{
  v1 = *v0;
  sub_25163590C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t sub_251632680()
{
  v1 = *v0;
  sub_25163539C();
}

uint64_t sub_2516326BC()
{
  v1 = *v0;
  sub_25163590C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t sub_251632714()
{
  v1 = 0x696669746E656469;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 1919248756;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_251632788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251633664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2516327B0(uint64_t a1)
{
  v2 = sub_2516331DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516327EC(uint64_t a1)
{
  v2 = sub_2516331DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Escalation.encode(to:)(void *a1)
{
  sub_2516332D8(0, &qword_27F4479C0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v17[3] = v1[3];
  v17[4] = v11;
  v12 = v1[4];
  v17[1] = v1[5];
  v17[2] = v12;
  v20 = *(v1 + 48);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2516331DC();

  sub_25163597C();
  v18 = v9;
  v19 = v10;
  v21 = 0;
  sub_251633230();
  v14 = v17[5];
  sub_25163588C();
  if (v14)
  {
  }

  else
  {
    v15 = v20;

    LOBYTE(v18) = 1;
    sub_25163584C();
    LOBYTE(v18) = 2;
    sub_25163584C();
    LOBYTE(v18) = v15;
    v21 = 3;
    sub_251633284();
    sub_25163588C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Escalation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
}

uint64_t Escalation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t Escalation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2516332D8(0, &qword_27F4479E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2516331DC();
  sub_25163596C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  sub_25163333C();
  sub_2516357FC();
  v12 = v30;
  v29 = v31;
  LOBYTE(v30) = 1;
  v13 = sub_2516357BC();
  v28 = v14;
  v25 = v13;
  v26 = v12;
  LOBYTE(v30) = 2;
  v15 = sub_2516357BC();
  v27 = v16;
  v32 = 3;
  sub_251633390();
  sub_2516357FC();
  (*(v7 + 8))(v10, v6);
  v18 = v30;
  v19 = v25;
  v20 = v15;
  v21 = v28;
  v22 = v29;
  *a2 = v26;
  *(a2 + 8) = v22;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  v23 = v27;
  *(a2 + 32) = v20;
  *(a2 + 40) = v23;
  *(a2 + 48) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251632EE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t sub_251632F90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
}

uint64_t sub_25163301C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();

  return sub_25163594C();
}

uint64_t _s13HealthDomains10EscalationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2516358DC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_2516358DC() & 1) == 0 || (v3 != v9 || v5 != v10) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  return sub_2516323D8(v6, v11);
}

unint64_t sub_2516331DC()
{
  result = qword_27F4479C8;
  if (!qword_27F4479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479C8);
  }

  return result;
}

unint64_t sub_251633230()
{
  result = qword_27F4479D0;
  if (!qword_27F4479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479D0);
  }

  return result;
}

unint64_t sub_251633284()
{
  result = qword_27F4479D8;
  if (!qword_27F4479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479D8);
  }

  return result;
}

void sub_2516332D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2516331DC();
    v7 = a3(a1, &type metadata for Escalation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25163333C()
{
  result = qword_27F4479E8;
  if (!qword_27F4479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479E8);
  }

  return result;
}

unint64_t sub_251633390()
{
  result = qword_27F4479F0;
  if (!qword_27F4479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479F0);
  }

  return result;
}

unint64_t sub_2516333E8()
{
  result = qword_27F4479F8;
  if (!qword_27F4479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4479F8);
  }

  return result;
}

unint64_t sub_251633440()
{
  result = qword_27F447A00;
  if (!qword_27F447A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A00);
  }

  return result;
}

uint64_t sub_251633494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2516334DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_251633560()
{
  result = qword_27F447A08;
  if (!qword_27F447A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A08);
  }

  return result;
}

unint64_t sub_2516335B8()
{
  result = qword_27F447A10;
  if (!qword_27F447A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A10);
  }

  return result;
}

unint64_t sub_251633610()
{
  result = qword_27F447A18;
  if (!qword_27F447A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A18);
  }

  return result;
}

uint64_t sub_251633664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1919248756 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2516358DC();

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

unint64_t sub_2516337D4()
{
  result = qword_27F447A20;
  if (!qword_27F447A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A20);
  }

  return result;
}

uint64_t EmptyClassification.dateRange.getter@<X0>(char *a1@<X8>)
{
  sub_2515F8E44();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = sub_25163516C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_2516350EC();
  sub_2516350FC();
  sub_251634998(&qword_280DD7318, MEMORY[0x277CC9578]);
  result = sub_25163530C();
  if (result)
  {
    v19 = v11[4];
    v19(v9, v17, v10);
    v19(&v9[*(v3 + 48)], v15, v10);
    sub_25161A3CC(v9, v7);
    v20 = *(v3 + 48);
    v19(a1, v7, v10);
    v21 = v11[1];
    v21(&v7[v20], v10);
    sub_25161A430(v9, v7);
    v22 = *(v3 + 48);
    sub_2515F8380(0);
    v19(&a1[*(v23 + 36)], &v7[v22], v10);
    return (v21)(v7, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251633AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2516358DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251633B70(uint64_t a1)
{
  v2 = sub_251633EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251633BAC(uint64_t a1)
{
  v2 = sub_251633EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251633BE8(uint64_t a1)
{
  v2 = sub_251633E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251633C24(uint64_t a1)
{
  v2 = sub_251633E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmptyClassification.Level.encode(to:)(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_25163472C(0, &qword_27F447A28, sub_251633E94, &type metadata for EmptyClassification.Level.NoneCodingKeys, MEMORY[0x277D84538]);
  v17 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_25163472C(0, &qword_27F447A38, sub_251633EE8, &type metadata for EmptyClassification.Level.CodingKeys, v2);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251633EE8();
  sub_25163597C();
  sub_251633E94();
  sub_25163582C();
  (*(v4 + 8))(v7, v17);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_251633E94()
{
  result = qword_27F447A30;
  if (!qword_27F447A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A30);
  }

  return result;
}

unint64_t sub_251633EE8()
{
  result = qword_27F447A40;
  if (!qword_27F447A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A40);
  }

  return result;
}

uint64_t EmptyClassification.Level.hashValue.getter()
{
  sub_25163590C();
  MEMORY[0x25307C1E0](0);
  return sub_25163594C();
}

uint64_t EmptyClassification.Level.init(from:)(uint64_t *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_25163472C(0, &qword_27F447A48, sub_251633E94, &type metadata for EmptyClassification.Level.NoneCodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v29 = *(v3 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  sub_25163472C(0, &qword_27F447A50, sub_251633EE8, &type metadata for EmptyClassification.Level.CodingKeys, v2);
  v9 = v8;
  v28 = *(v8 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251633EE8();
  v14 = v34;
  v15 = a1;
  sub_25163596C();
  if (!v14)
  {
    v17 = v28;
    v16 = v29;
    v18 = sub_25163580C();
    v19 = (2 * *(v18 + 16)) | 1;
    v30 = v18;
    v31 = v18 + 32;
    v32 = 0;
    v33 = v19;
    if (sub_2516033E0() || v32 != v33 >> 1)
    {
      v20 = sub_2516356FC();
      swift_allocError();
      v22 = v21;
      sub_25160354C();
      v24 = *(v23 + 48);
      *v22 = &type metadata for EmptyClassification.Level;
      sub_25163579C();
      sub_2516356DC();
      v25 = *(*(v20 - 8) + 104);
      v26 = v20;
      v15 = a1;
      v25(v22, *MEMORY[0x277D84160], v26);
      swift_willThrow();
    }

    else
    {
      sub_251633E94();
      sub_25163578C();
      (*(v16 + 8))(v7, v4);
    }

    (*(v17 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_251634324(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_25163472C(0, &qword_27F447A28, sub_251633E94, &type metadata for EmptyClassification.Level.NoneCodingKeys, MEMORY[0x277D84538]);
  v17 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_25163472C(0, &qword_27F447A38, sub_251633EE8, &type metadata for EmptyClassification.Level.CodingKeys, v2);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251633EE8();
  sub_25163597C();
  sub_251633E94();
  sub_25163582C();
  (*(v4 + 8))(v7, v17);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_251634574(uint64_t a1)
{
  v2 = sub_251634794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516345B0(uint64_t a1)
{
  v2 = sub_251634794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmptyClassification.encode(to:)(void *a1)
{
  sub_25163472C(0, &qword_27F447A58, sub_251634794, &type metadata for EmptyClassification.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251634794();
  sub_25163597C();
  return (*(v4 + 8))(v7, v3);
}

void sub_25163472C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_251634794()
{
  result = qword_27F447A60;
  if (!qword_27F447A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A60);
  }

  return result;
}

unint64_t sub_2516348BC(void *a1)
{
  a1[1] = sub_251630958();
  a1[2] = sub_2516309AC();
  a1[3] = sub_251630A00();
  result = sub_2516348FC();
  a1[4] = result;
  return result;
}

unint64_t sub_2516348FC()
{
  result = qword_27F447A68;
  if (!qword_27F447A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A68);
  }

  return result;
}

uint64_t sub_251634998(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2516349E4()
{
  result = qword_27F447A78;
  if (!qword_27F447A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A78);
  }

  return result;
}

unint64_t sub_251634A3C()
{
  result = qword_27F447A80;
  if (!qword_27F447A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A80);
  }

  return result;
}

unint64_t sub_251634A94(void *a1)
{
  a1[2] = sub_251634ACC();
  a1[3] = sub_251634B20();
  result = sub_251634B74();
  a1[4] = result;
  return result;
}

unint64_t sub_251634ACC()
{
  result = qword_27F447A88;
  if (!qword_27F447A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A88);
  }

  return result;
}

unint64_t sub_251634B20()
{
  result = qword_27F447A90;
  if (!qword_27F447A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A90);
  }

  return result;
}

unint64_t sub_251634B74()
{
  result = qword_27F447A98;
  if (!qword_27F447A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447A98);
  }

  return result;
}

unint64_t sub_251634BCC()
{
  result = qword_27F447AA0;
  if (!qword_27F447AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AA0);
  }

  return result;
}

uint64_t sub_251634C48(void *a1)
{
  sub_25163472C(0, &qword_27F447A58, sub_251634794, &type metadata for EmptyClassification.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251634794();
  sub_25163597C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_251634DF4()
{
  result = qword_27F447AA8;
  if (!qword_27F447AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AA8);
  }

  return result;
}

unint64_t sub_251634E4C()
{
  result = qword_27F447AB0;
  if (!qword_27F447AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AB0);
  }

  return result;
}

unint64_t sub_251634EA4()
{
  result = qword_27F447AB8;
  if (!qword_27F447AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AB8);
  }

  return result;
}

unint64_t sub_251634EFC()
{
  result = qword_27F447AC0;
  if (!qword_27F447AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AC0);
  }

  return result;
}

unint64_t sub_251634F54()
{
  result = qword_27F447AC8;
  if (!qword_27F447AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AC8);
  }

  return result;
}

unint64_t sub_251634FAC()
{
  result = qword_27F447AD0;
  if (!qword_27F447AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AD0);
  }

  return result;
}

unint64_t sub_251635004()
{
  result = qword_27F447AD8;
  if (!qword_27F447AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447AD8);
  }

  return result;
}