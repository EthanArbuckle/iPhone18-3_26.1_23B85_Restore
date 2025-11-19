uint64_t sub_1E6355810(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v1 + v6);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E63534B0(a1, v1 + v5, v10, v8, v9);
}

uint64_t sub_1E6355930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6355990(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63559D8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E634E110(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroy_28Tm_2()
{
  v111 = type metadata accessor for AppComposer();
  v115 = *(*(v111 - 1) + 80);
  v114 = *(*(v111 - 1) + 64);
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v116 = (v0 + ((v115 + 96) & ~v115));
  v6 = *v116;

  v7 = v116 + v111[5];
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v113 = type metadata accessor for AccountService();
  v112 = *(v113[-1].Description + 1);
  v112(&v7[v10], v113);
  v11 = v9[7];
  v110 = type metadata accessor for AppStateService();
  v109 = *(v110[-1].Description + 1);
  v109(&v7[v11], v110);
  v12 = v9[8];
  v108 = type metadata accessor for ArchivedSessionService();
  v107 = *(v108[-1].Description + 1);
  v107(&v7[v12], v108);
  v13 = v9[9];
  v106 = type metadata accessor for AssetService();
  v105 = *(v106[-1].Description + 1);
  v105(&v7[v13], v106);
  v14 = v9[10];
  v104 = type metadata accessor for AwardsService();
  v103 = *(v104[-1].Description + 1);
  v103(&v7[v14], v104);
  v15 = v9[11];
  v102 = type metadata accessor for BookmarkService();
  v101 = *(v102[-1].Description + 1);
  v101(&v7[v15], v102);
  v16 = v9[12];
  v100 = type metadata accessor for CatalogService();
  v99 = *(v100[-1].Description + 1);
  v99(&v7[v16], v100);
  v17 = v9[13];
  v98 = type metadata accessor for ConfigurationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v7[v17], v98);
  v18 = v9[14];
  v96 = type metadata accessor for ContentAvailabilityService();
  v95 = *(v96[-1].Description + 1);
  v95(&v7[v18], v96);
  v19 = v9[15];
  v94 = type metadata accessor for EngagementService();
  v93 = *(v94[-1].Description + 1);
  v93(&v7[v19], v94);
  v20 = v9[16];
  v92 = type metadata accessor for HealthDataService();
  v91 = *(v92[-1].Description + 1);
  v91(&v7[v20], v92);
  v21 = v9[17];
  v90 = type metadata accessor for InteropService();
  v89 = *(v90[-1].Description + 1);
  v89(&v7[v21], v90);
  v22 = v9[18];
  v88 = type metadata accessor for LocalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v7[v22], v88);
  v23 = v9[19];
  v86 = type metadata accessor for MarketingService();
  v85 = *(v86[-1].Description + 1);
  v85(&v7[v23], v86);
  v24 = v9[20];
  v84 = type metadata accessor for MetricService();
  v83 = *(v84[-1].Description + 1);
  v83(&v7[v24], v84);
  v25 = v9[21];
  v82 = type metadata accessor for PersonalizationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v7[v25], v82);
  v26 = v9[22];
  v80 = type metadata accessor for PlayerService();
  v79 = *(v80[-1].Description + 1);
  v79(&v7[v26], v80);
  v27 = v9[23];
  v78 = type metadata accessor for PrivacyPreferenceService();
  v77 = *(v78[-1].Description + 1);
  v77(&v7[v27], v78);
  v28 = v9[24];
  v76 = type metadata accessor for RecommendationService();
  v75 = *(v76[-1].Description + 1);
  v75(&v7[v28], v76);
  v29 = v9[25];
  v74 = type metadata accessor for RemoteBrowsingService();
  v73 = *(v74[-1].Description + 1);
  v73(&v7[v29], v74);
  v30 = v9[26];
  v72 = type metadata accessor for SearchService();
  v71 = *(v72[-1].Description + 1);
  v71(&v7[v30], v72);
  v31 = v9[27];
  v70 = type metadata accessor for ServiceSubscriptionService();
  v69 = *(v70[-1].Description + 1);
  v69(&v7[v31], v70);
  v32 = v9[28];
  v63 = type metadata accessor for SessionService();
  v68 = *(v63[-1].Description + 1);
  v68(&v7[v32], v63);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v67 = *(v34[-1].Description + 1);
  v67(&v7[v33], v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v66 = *(v36[-1].Description + 1);
  v66(&v7[v35], v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v65 = *(v38[-1].Description + 1);
  v65(&v7[v37], v38);
  v39 = &v7[v9[32]];
  v40 = *(v39 + 1);

  v41 = *(v39 + 3);

  v42 = *(v39 + 5);

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v64 = *(QueueService[-1].Description + 1);
  v64(&v7[v43], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v7[v9[34]]);
  v45 = *&v7[v9[35]];

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v62 = *(v47[-1].Description + 1);
  v62(&v7[v46], v47);
  v48 = *(v116 + v111[6]);

  v49 = (v116 + v111[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v112(&v52[v9[6]], v113);
  v109(&v52[v9[7]], v110);
  v107(&v52[v9[8]], v108);
  v105(&v52[v9[9]], v106);
  v103(&v52[v9[10]], v104);
  v101(&v52[v9[11]], v102);
  v99(&v52[v9[12]], v100);
  v97(&v52[v9[13]], v98);
  v95(&v52[v9[14]], v96);
  v93(&v52[v9[15]], v94);
  v91(&v52[v9[16]], v92);
  v89(&v52[v9[17]], v90);
  v87(&v52[v9[18]], v88);
  v85(&v52[v9[19]], v86);
  v83(&v52[v9[20]], v84);
  v81(&v52[v9[21]], v82);
  v79(&v52[v9[22]], v80);
  v77(&v52[v9[23]], v78);
  v75(&v52[v9[24]], v76);
  v73(&v52[v9[25]], v74);
  v71(&v52[v9[26]], v72);
  v69(&v52[v9[27]], v70);
  v68(&v52[v9[28]], v63);
  v67(&v52[v9[29]], v34);
  v66(&v52[v9[30]], v36);
  v65(&v52[v9[31]], v38);
  v54 = &v52[v9[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v64(&v52[v9[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v9[34]]);
  v58 = *&v52[v9[35]];

  v62(&v52[v9[36]], v47);
  v59 = *(v116 + v111[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v111[9] + 8) >= 0xC)
  {
  }

  v60 = (v116 + v111[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return swift_deallocObject();
}

uint64_t sub_1E63567A4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E634D5A0(a1, v1 + 16, v1 + v5);
}

uint64_t static FitnessPlusFeatures.SampleContent.evaluate(inputs:)()
{
  v0 = sub_1E65DDF08();
  v3[3] = v0;
  v3[4] = sub_1E5E041A4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF0], v0);
  LOBYTE(v0) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & 1;
}

uint64_t sub_1E6356928()
{
  v0 = sub_1E65DDF08();
  v3[3] = v0;
  v3[4] = sub_1E5E041A4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF0], v0);
  LOBYTE(v0) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & 1;
}

uint64_t sub_1E6356A28@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v98 = a2;
  v106 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v82 - v7;
  v8 = type metadata accessor for AppComposer();
  v93 = *(v8 - 8);
  v9 = v93[8];
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v97 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v95 = &v82 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v94 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v92 = (&v82 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v100 = *(v16 - 8);
  v17 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078868, &qword_1E65FDC60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v102 = &v82 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v82 - v24;
  v26 = type metadata accessor for ContextMenu(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EC0, &qword_1E65FADD8);
  v104 = *(v31 - 8);
  v105 = v31;
  v32 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v103 = &v82 - v33;
  sub_1E63574B8(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED072670, &qword_1E65EB980);
    v34 = v102;
    (*(v5 + 56))(v102, 1, 1, v4);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v36 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
    *&v109 = v35;
    *(&v109 + 1) = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v109 = v16;
    *(&v109 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v38 = v103;
    sub_1E65E0898();
    sub_1E5F122D8(v34);
  }

  else
  {
    v96 = v30;
    sub_1E6359BF0(v25, v30, type metadata accessor for ContextMenu);
    sub_1E65E5148();
    v39 = sub_1E65E5138();
    v91 = v4;
    v40 = v39;
    v41 = a1;
    v42 = v92;
    sub_1E5E1DEAC(a1, v92);
    v89 = v5;
    v43 = *(v93 + 80);
    v44 = (v43 + 32) & ~v43;
    v88 = v44;
    v90 = v16;
    v45 = (v44 + v9) & 0xFFFFFFFFFFFFFFF8;
    v87 = v44 + v9;
    v46 = swift_allocObject();
    v86 = v46;
    v93 = &unk_1E65FDC98;
    *(v46 + 16) = &unk_1E65FDC98;
    *(v46 + 24) = 0;
    v85 = type metadata accessor for AppComposer;
    sub_1E6359BF0(v42, v46 + v44, type metadata accessor for AppComposer);
    *(v46 + v44 + v9) = 0;
    v47 = v46 + v45;
    v92 = sub_1E6172524;
    *(v47 + 8) = sub_1E6172524;
    *(v47 + 16) = 0;
    v48 = (v46 + ((v45 + 31) & 0xFFFFFFFFFFFFFFF8));
    v49 = MEMORY[0x1E69AB380];
    *v48 = v40;
    v48[1] = v49;
    v83 = v40;
    v50 = v49;
    v51 = v94;
    sub_1E5E1DEAC(v41, v94);
    v84 = v41;
    v52 = (v43 + 48) & ~v43;
    v53 = v52 + v9;
    v54 = swift_allocObject();
    v55 = v93;
    v54[2] = v93;
    v54[3] = 0;
    v54[4] = v40;
    v54[5] = v50;
    v56 = v51;
    v57 = v85;
    sub_1E6359BF0(v56, v54 + v52, v85);
    *(v54 + v53) = 0;
    v58 = v54 + (v53 & 0xFFFFFFFFFFFFFFF8);
    v59 = v92;
    *(v58 + 1) = v92;
    *(v58 + 2) = 0;
    v60 = v95;
    sub_1E5E1DEAC(v41, v95);
    v61 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v62[2] = v55;
    v62[3] = 0;
    v63 = v83;
    v62[4] = v83;
    v62[5] = MEMORY[0x1E69AB380];
    v64 = v57;
    sub_1E6359BF0(v60, v62 + v52, v57);
    v65 = v62 + v61;
    *v65 = v59;
    *(v65 + 1) = 0;
    v65[16] = 0;
    v66 = v97;
    sub_1E5E1DEAC(v84, v97);
    v67 = swift_allocObject();
    *(v67 + 16) = v93;
    *(v67 + 24) = 0;
    sub_1E6359BF0(v66, v67 + v88, v64);
    *&v109 = v63;
    *(&v109 + 1) = MEMORY[0x1E69AB380];
    v110 = &unk_1E65FDCA0;
    v111 = v86;
    v112 = &unk_1E65FDCA8;
    v113 = v54;
    v114 = &unk_1E65FDCB0;
    v115 = v62;
    v116 = &unk_1E65FDCB8;
    v117 = v67;
    swift_retain_n();
    v68 = v99;
    sub_1E61E66C8(v96, v98, &v109, v99);
    v16 = v90;

    v4 = v91;

    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v70 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
    v107 = v69;
    v108 = v70;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v101;
    MEMORY[0x1E69482C0](v68, v16, v71);
    v73 = v89;
    v74 = v102;
    (*(v89 + 16))(v102, v72, v4);
    (*(v73 + 56))(v74, 0, 1, v4);
    v107 = v16;
    v108 = v71;
    swift_getOpaqueTypeConformance2();
    v38 = v103;
    sub_1E65E0898();
    sub_1E5F122D8(v74);
    (*(v73 + 8))(v72, v4);
    (*(v100 + 8))(v68, v16);
    sub_1E6359C58(v96, type metadata accessor for ContextMenu);
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v76 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v107 = v75;
  v108 = v76;
  v77 = swift_getOpaqueTypeConformance2();
  v107 = v16;
  v108 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v107 = v4;
  v108 = v78;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v105;
  MEMORY[0x1E69482C0](v38, v105, v79);
  return (*(v104 + 8))(v38, v80);
}

uint64_t sub_1E63574B8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1E65D9CC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  sub_1E65DF6A8();
  v9 = sub_1E65D9CA8();
  v11 = v10;
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v8, v1);
  if (v13)
  {
    v15 = v26;
    if (v9 == 8)
    {
      sub_1E65DF688();
      v16 = type metadata accessor for ContextMenu(0);
      v17 = (v15 + *(v16 + 20));
      sub_1E65DF6A8();
      v18 = sub_1E65D9C98();
      v20 = v19;
      v14(v6, v1);
      *v17 = v18;
      v17[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
      swift_storeEnumTagMultiPayload();
      return (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    }

    v22 = type metadata accessor for ContextMenu(0);
    v23 = *(*(v22 - 8) + 56);
    v24 = v15;
  }

  else
  {
    sub_1E5FEE4CC(v9, v11, 0);
    v22 = type metadata accessor for ContextMenu(0);
    v23 = *(*(v22 - 8) + 56);
    v24 = v26;
  }

  return v23(v24, 1, 1, v22);
}

uint64_t sub_1E6357748()
{
  v1 = *(v0 + 16);
  v2 = sub_1E65D7A38();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6357840(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a5;
  v45 = a6;
  v43 = a3;
  v41 = a2;
  v49 = a10;
  v42 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078870, &qword_1E65FDC70);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v36 - v14;
  v15 = sub_1E65DF748();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078878, &qword_1E65FDC78);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078880, &qword_1E65FDC80);
  v21 = *(v20 - 8);
  v39 = v20;
  v40 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v36 - v23;
  v38 = *a1;
  sub_1E5DF650C(a4, v52);
  v25 = swift_allocObject();
  sub_1E5DF599C(v52, v25 + 16);
  sub_1E65D9CC8();
  v26 = MEMORY[0x1E69CC888];
  sub_1E6359BA8(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
  sub_1E6359BA8(&qword_1EE2D7030, v26);
  sub_1E6359BA8(&qword_1EE2D7028, v26);
  sub_1E65DF758();
  type metadata accessor for ArtworkDescriptor();
  sub_1E6359BA8(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor);
  sub_1E65DF718();
  v27 = v37;
  sub_1E65DF738();
  v28 = swift_allocObject();
  *(v28 + 16) = v43;
  v29 = v45;
  *(v28 + 24) = v44;
  *(v28 + 32) = v29;
  type metadata accessor for AppFeature();
  sub_1E6359BA8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1ED078888, &qword_1ED078880, &qword_1E65FDC80);

  v30 = v46;
  v31 = v39;
  sub_1E65E4DF8();
  v32 = v27;
  v33 = v31;
  v34 = sub_1E65E4F08();
  (*(v50 + 8))(v30, v51);
  (*(v47 + 8))(v32, v48);
  (*(v40 + 8))(v24, v33);
  return v34;
}

uint64_t sub_1E6357D78@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v98 = a2;
  v106 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v82 - v7;
  v8 = type metadata accessor for AppComposer();
  v93 = *(v8 - 8);
  v9 = v93[8];
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v97 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v95 = &v82 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v94 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v92 = (&v82 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v100 = *(v16 - 8);
  v17 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078868, &qword_1E65FDC60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v102 = &v82 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v82 - v24;
  v26 = type metadata accessor for ContextMenu(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EC0, &qword_1E65FADD8);
  v104 = *(v31 - 8);
  v105 = v31;
  v32 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v103 = &v82 - v33;
  sub_1E63574B8(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED072670, &qword_1E65EB980);
    v34 = v102;
    (*(v5 + 56))(v102, 1, 1, v4);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v36 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
    *&v109 = v35;
    *(&v109 + 1) = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v109 = v16;
    *(&v109 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v38 = v103;
    sub_1E65E0898();
    sub_1E5F122D8(v34);
  }

  else
  {
    v96 = v30;
    sub_1E6359BF0(v25, v30, type metadata accessor for ContextMenu);
    sub_1E65E5148();
    v39 = sub_1E65E5138();
    v91 = v4;
    v40 = v39;
    v41 = a1;
    v42 = v92;
    sub_1E5E1DEAC(a1, v92);
    v89 = v5;
    v43 = *(v93 + 80);
    v44 = (v43 + 32) & ~v43;
    v88 = v44;
    v90 = v16;
    v45 = (v44 + v9) & 0xFFFFFFFFFFFFFFF8;
    v87 = v44 + v9;
    v46 = swift_allocObject();
    v86 = v46;
    v93 = &unk_1E65FDC68;
    *(v46 + 16) = &unk_1E65FDC68;
    *(v46 + 24) = 0;
    v85 = type metadata accessor for AppComposer;
    sub_1E6359BF0(v42, v46 + v44, type metadata accessor for AppComposer);
    *(v46 + v44 + v9) = 0;
    v47 = v46 + v45;
    v92 = sub_1E6172524;
    *(v47 + 8) = sub_1E6172524;
    *(v47 + 16) = 0;
    v48 = (v46 + ((v45 + 31) & 0xFFFFFFFFFFFFFFF8));
    v49 = MEMORY[0x1E69AB380];
    *v48 = v40;
    v48[1] = v49;
    v83 = v40;
    v50 = v49;
    v51 = v94;
    sub_1E5E1DEAC(v41, v94);
    v84 = v41;
    v52 = (v43 + 48) & ~v43;
    v53 = v52 + v9;
    v54 = swift_allocObject();
    v55 = v93;
    v54[2] = v93;
    v54[3] = 0;
    v54[4] = v40;
    v54[5] = v50;
    v56 = v51;
    v57 = v85;
    sub_1E6359BF0(v56, v54 + v52, v85);
    *(v54 + v53) = 0;
    v58 = v54 + (v53 & 0xFFFFFFFFFFFFFFF8);
    v59 = v92;
    *(v58 + 1) = v92;
    *(v58 + 2) = 0;
    v60 = v95;
    sub_1E5E1DEAC(v41, v95);
    v61 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v62[2] = v55;
    v62[3] = 0;
    v63 = v83;
    v62[4] = v83;
    v62[5] = MEMORY[0x1E69AB380];
    v64 = v57;
    sub_1E6359BF0(v60, v62 + v52, v57);
    v65 = v62 + v61;
    *v65 = v59;
    *(v65 + 1) = 0;
    v65[16] = 0;
    v66 = v97;
    sub_1E5E1DEAC(v84, v97);
    v67 = swift_allocObject();
    *(v67 + 16) = v93;
    *(v67 + 24) = 0;
    sub_1E6359BF0(v66, v67 + v88, v64);
    *&v109 = v63;
    *(&v109 + 1) = MEMORY[0x1E69AB380];
    v110 = &unk_1E65EB918;
    v111 = v86;
    v112 = &unk_1E65FA770;
    v113 = v54;
    v114 = &unk_1E65EB920;
    v115 = v62;
    v116 = &unk_1E65FA780;
    v117 = v67;
    swift_retain_n();
    v68 = v99;
    sub_1E61E66C8(v96, v98, &v109, v99);
    v16 = v90;

    v4 = v91;

    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v70 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
    v107 = v69;
    v108 = v70;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v101;
    MEMORY[0x1E69482C0](v68, v16, v71);
    v73 = v89;
    v74 = v102;
    (*(v89 + 16))(v102, v72, v4);
    (*(v73 + 56))(v74, 0, 1, v4);
    v107 = v16;
    v108 = v71;
    swift_getOpaqueTypeConformance2();
    v38 = v103;
    sub_1E65E0898();
    sub_1E5F122D8(v74);
    (*(v73 + 8))(v72, v4);
    (*(v100 + 8))(v68, v16);
    sub_1E6359C58(v96, type metadata accessor for ContextMenu);
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v76 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v107 = v75;
  v108 = v76;
  v77 = swift_getOpaqueTypeConformance2();
  v107 = v16;
  v108 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v107 = v4;
  v108 = v78;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v105;
  MEMORY[0x1E69482C0](v38, v105, v79);
  return (*(v104 + 8))(v38, v80);
}

uint64_t sub_1E6358828(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x1EEE6DFA0](sub_1E6358910, 0, 0);
}

uint64_t sub_1E6358910()
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
          sub_1E6359BF0(v37, v36 + *(v38 + 20), type metadata accessor for RouteSource);
          *(v36 + *(v38 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 154));
          v45 = swift_task_alloc();
          *(v0 + 104) = v45;
          *v45 = v0;
          v45[1] = sub_1E6358FAC;
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
        sub_1E6359BF0(v27, v26 + *(v28 + 20), type metadata accessor for RouteSource);
        *(v26 + *(v28 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 155));
        v35 = swift_task_alloc();
        *(v0 + 88) = v35;
        *v35 = v0;
        v35[1] = sub_1E6358E08;
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
        sub_1E6359BF0(v6, v5 + *(v7 + 20), type metadata accessor for RouteSource);
        *(v5 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 153));
        v16 = swift_task_alloc();
        *(v0 + 120) = v16;
        *v16 = v0;
        v16[1] = sub_1E6359150;
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
        sub_1E6359BF0(v48, v46 + *(v47 + 20), type metadata accessor for RouteSource);
        *(v46 + *(v47 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 152));
        v55 = swift_task_alloc();
        *(v0 + 136) = v55;
        *v55 = v0;
        v55[1] = sub_1E63592F4;
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

uint64_t sub_1E6358E08()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  sub_1E6359C58(v3, type metadata accessor for RouteDestination);
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

uint64_t sub_1E6358FAC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[14] = v0;

  sub_1E6359C58(v3, type metadata accessor for RouteDestination);
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

uint64_t sub_1E6359150()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[16] = v0;

  sub_1E6359C58(v3, type metadata accessor for RouteDestination);
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

uint64_t sub_1E63592F4()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[18] = v0;

  sub_1E6359C58(v3, type metadata accessor for RouteDestination);
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

uint64_t sub_1E6359498@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v52 = a3;
  v47 = a2;
  v55 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FF0, &qword_1E65EF190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v46[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v46[-v11];
  v48 = sub_1E65E05C8();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v53 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1E65E07B8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v46[-v24];
  v26 = sub_1E65D7848();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v46[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = type metadata accessor for AppState();
  v32 = *(v31 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v25);
  sub_1E5DFE50C(v21, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v27 + 48);
  v34 = v33(v25, 1, v26);
  v50 = v30;
  if (v34 == 1)
  {
    sub_1E65D77C8();
    if (v33(v25, 1, v26) != 1)
    {
      sub_1E5DFE50C(v25, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
  }

  v35 = *(v31 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  v36 = sub_1E65E06A8();
  v37 = v53;
  if (*(v36 + 16) && (v38 = sub_1E64290E4(v47), (v39 & 1) != 0))
  {
    v41 = v48;
    v40 = v49;
    (*(v12 + 16))(v49, *(v36 + 56) + *(v12 + 72) * v38, v48);

    (*(v12 + 56))(v40, 0, 1, v41);
    (*(v12 + 32))(v37, v40, v41);
  }

  else
  {

    v43 = v48;
    v42 = v49;
    (*(v12 + 56))(v49, 1, 1, v48);
    sub_1E65E0598();
    if ((*(v12 + 48))(v42, 1, v43) != 1)
    {
      sub_1E5DFE50C(v42, &qword_1ED073F78, &qword_1E65EF0F8);
    }
  }

  v52(a1);
  type metadata accessor for ArtworkDescriptor();
  sub_1E65D9CC8();
  sub_1E6359BA8(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor);
  v44 = MEMORY[0x1E69CC888];
  sub_1E6359BA8(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
  sub_1E6359BA8(&qword_1EE2D7030, v44);
  sub_1E6359BA8(&qword_1EE2D7028, v44);
  return sub_1E65DF6E8();
}

uint64_t sub_1E6359B04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6358828(a1, v1 + 16);
}

uint64_t sub_1E6359BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6359BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6359C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6359CB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6358828(a1, v1 + 16);
}

uint64_t sub_1E6359D5C()
{
  sub_1E635A09C(v0 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment);
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);

  v2 = *(v0 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_resolvers);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E6359DE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E6359E30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStateResolver.ResolverKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStateResolver.ResolverKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E6359FE0()
{
  result = qword_1EE2DA5D8;
  if (!qword_1EE2DA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA5D8);
  }

  return result;
}

uint64_t sub_1E635A09C(uint64_t a1)
{
  v2 = type metadata accessor for AppEnvironment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a3;
  v130 = a2;
  v131 = a1;
  v124 = a4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F0, &unk_1E65FA7E0);
  v121 = *(v120 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v108 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B40, &qword_1E65F9808);
  v8 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v108 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v10 = *(*(v123 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v123);
  v118 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v108 - v13;
  v135 = sub_1E65DBE88();
  v134 = *(v135 - 8);
  v115 = *(v134 + 64);
  v14 = MEMORY[0x1EEE9AC00](v135);
  v114 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v133 = &v108 - v16;
  v17 = type metadata accessor for AppComposer();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v113 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v129 = &v108 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v128 = &v108 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v108 - v25;
  v27 = sub_1E65D7048();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v145 = a1;
  *(&v145 + 1) = a2;
  sub_1E65D7038();
  sub_1E5F9AEA8();
  v32 = sub_1E65E6698();
  (*(v28 + 8))(v31, v27);
  *&v145 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150);
  v33 = sub_1E65E5B68();
  v35 = v34;

  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  *(v36 + 24) = v35;
  v109 = v36;
  sub_1E65E5148();
  v37 = sub_1E65E5138();
  v141 = type metadata accessor for AppComposer;
  v142 = v37;
  v38 = v138;
  v127 = v26;
  sub_1E5E1D964(v138, v26, type metadata accessor for AppComposer);
  v137 = *(v18 + 80);
  v39 = (v137 + 32) & ~v137;
  v110 = v39;
  v111 = v19;
  v125 = v137 | 7;
  v40 = (v39 + v19) & 0xFFFFFFFFFFFFFFF8;
  v112 = v39 + v19;
  v41 = swift_allocObject();
  *(v41 + 16) = &unk_1E65FDD98;
  *(v41 + 24) = v36;
  v143 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v26, v41 + v39, type metadata accessor for AppComposer);
  *(v41 + v39 + v19) = 0;
  v42 = v41 + v40;
  v140 = v41;
  v126 = sub_1E6172524;
  *(v42 + 8) = sub_1E6172524;
  *(v42 + 16) = 0;
  v43 = (v41 + ((v40 + 31) & 0xFFFFFFFFFFFFFFF8));
  v44 = MEMORY[0x1E69AB380];
  v45 = v142;
  *v43 = v142;
  v43[1] = v44;
  v46 = v38;
  v47 = v38;
  v48 = v128;
  v49 = v141;
  sub_1E5E1D964(v46, v128, v141);
  v50 = (v137 + 48) & ~v137;
  v51 = swift_allocObject();
  v52 = v109;
  v51[2] = &unk_1E65FDD98;
  v51[3] = v52;
  v51[4] = v45;
  v51[5] = MEMORY[0x1E69AB380];
  v53 = v51;
  sub_1E5E1E798(v48, v51 + v50, v143);
  v139 = v53;
  *(v53 + v50 + v19) = 0;
  v54 = v53 + ((v50 + v19) & 0xFFFFFFFFFFFFFFF8);
  *(v54 + 1) = v126;
  *(v54 + 2) = 0;
  v55 = v129;
  sub_1E5E1D964(v47, v129, v49);
  v56 = (v50 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v57[2] = &unk_1E65FDD98;
  v57[3] = v52;
  v58 = v52;
  v59 = v142;
  v57[4] = v142;
  v57[5] = MEMORY[0x1E69AB380];
  v60 = v57 + v50;
  v61 = v143;
  sub_1E5E1E798(v55, v60, v143);
  v62 = v57 + v56;
  v132 = v57;
  *v62 = v126;
  *(v62 + 1) = 0;
  v62[16] = 0;
  v63 = v113;
  v64 = v141;
  sub_1E5E1D964(v47, v113, v141);
  v65 = swift_allocObject();
  *(v65 + 16) = &unk_1E65FDD98;
  *(v65 + 24) = v58;
  v66 = v65;
  v112 = v65;
  sub_1E5E1E798(v63, v65 + v110, v61);
  *&v145 = v59;
  *(&v145 + 1) = MEMORY[0x1E69AB380];
  *&v146 = &unk_1E65EB918;
  *(&v146 + 1) = v140;
  *&v147 = &unk_1E65FA770;
  *(&v147 + 1) = v139;
  *&v148 = &unk_1E65EB920;
  *(&v148 + 1) = v57;
  *&v149 = &unk_1E65FA780;
  *(&v149 + 1) = v66;
  swift_retain_n();
  swift_retain_n();
  v67 = sub_1E635B33C(v131, v130, v136, &v145);
  v68 = v47;
  v69 = v127;
  sub_1E5E1D964(v47, v127, v64);
  v70 = ((v137 + 16) & ~v137) + v111;
  v137 = (v137 + 16) & ~v137;
  v71 = v137;
  v72 = swift_allocObject();
  sub_1E5E1E798(v69, v72 + v71, v61);
  v126 = v67;

  v73 = v133;
  sub_1E65DBE78();
  v74 = v69;
  sub_1E5E1D964(v68, v69, v64);
  v75 = v134;
  v76 = v114;
  v77 = v135;
  (*(v134 + 16))(v114, v73, v135);
  v78 = *(v75 + 80);
  v113 = v70;
  v79 = (v70 + v78) & ~v78;
  v80 = (v115 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  sub_1E5E1E798(v74, v81 + v137, v143);
  (*(v75 + 32))(v81 + v79, v76, v77);
  v115 = v81;
  v82 = (v81 + v80);
  v83 = v131;
  v84 = v130;
  *v82 = v131;
  v82[1] = v84;
  v85 = (v81 + ((v80 + 23) & 0xFFFFFFFFFFFFFFF8));
  v86 = v149;
  v87 = v147;
  v85[3] = v148;
  v85[4] = v86;
  v88 = v146;
  *v85 = v145;
  v85[1] = v88;
  v85[2] = v87;
  v89 = v138;
  v90 = v128;
  v91 = v141;
  sub_1E5E1D964(v138, v128, v141);
  v92 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  v94 = v137;
  v95 = v143;
  sub_1E5E1E798(v90, v93 + v137, v143);
  v96 = (v93 + v92);
  *v96 = v83;
  v96[1] = v84;
  v97 = v129;
  sub_1E5E1D964(v89, v129, v91);
  sub_1E5DF650C(v136, &v144);
  v98 = swift_allocObject();
  sub_1E5E1E798(v97, v98 + v94, v95);
  *(v98 + v92) = v126;
  sub_1E5DF599C(&v144, v98 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A30, &qword_1E65F7668);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  sub_1E61FDE30();
  v99 = v116;
  sub_1E65DBA08();
  v100 = v127;
  sub_1E5E1D964(v138, v127, v141);
  v101 = swift_allocObject();
  sub_1E5E1E798(v100, v101 + v137, v143);
  sub_1E5FED46C(&unk_1ED077B50, &qword_1ED0771F0, &unk_1E65FA7E0);
  v102 = v117;
  v103 = v120;
  sub_1E6259D5C(sub_1E5FF0278, v101, v120);

  (*(v121 + 8))(v99, v103);
  v104 = sub_1E627312C();
  v105 = v118;
  sub_1E630FCD8(&v145, v119, v104, v118);

  sub_1E5DFE50C(v102, &unk_1ED077B40, &qword_1E65F9808);
  (*(v134 + 8))(v133, v135);
  sub_1E6273064();
  v106 = v122;
  sub_1E5FEE4C8(v105);
  sub_1E5DFE50C(v105, &qword_1ED0770C8, &unk_1E65FA420);
  sub_1E5FEE4C8(v106);
  return sub_1E5DFE50C(v106, &qword_1ED0770C8, &unk_1E65FA420);
}

uint64_t sub_1E635AEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E635B024, 0, 0);
}

uint64_t sub_1E635B024()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v16 = v0[2];
  v7 = *MEMORY[0x1E69CBD70];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = sub_1E65D74E8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = sub_1E65D9908();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = sub_1E65D9F88();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  swift_bridgeObjectRetain_n();
  sub_1E65D7A28();
  v13 = sub_1E65D7A38();
  (*(*(v13 - 8) + 56))(v16, 0, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E635B290(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E635AEDC(a1, v5, v4);
}

uint64_t sub_1E635B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v83 = a2;
  v85 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v74 = *(v75 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = v59 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v73 = *(v71 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v59 - v16;
  v17 = type metadata accessor for AppComposer();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v86 = v59 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v59 - v25;
  v28 = v27;
  v64 = v27;
  MEMORY[0x1EEE9AC00](v24);
  v30 = v59 - v29;
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v92 = 0xD00000000000001ELL;
  *(&v92 + 1) = 0x80000001E6616500;
  MEMORY[0x1E694D7C0](a1, a2);
  v67 = v92;
  sub_1E5DF650C(a3, &v92);
  v88 = swift_allocObject();
  sub_1E5DF599C(&v92, v88 + 16);
  sub_1E5E1D964(v4, v30, type metadata accessor for AppComposer);
  v59[10] = *a4;
  v59[11] = *(a4 + 24);
  v59[12] = *(a4 + 40);
  v59[13] = *(a4 + 56);
  v59[14] = *(a4 + 72);
  v31 = *(v18 + 80);
  v32 = (v31 + 16) & ~v31;
  v33 = (v32 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v68 = v34;
  sub_1E5E1E798(v30, v34 + v32, type metadata accessor for AppComposer);
  v35 = (v34 + v33);
  v36 = *(a4 + 48);
  v35[2] = *(a4 + 32);
  v35[3] = v36;
  v35[4] = *(a4 + 64);
  v37 = *(a4 + 16);
  *v35 = *a4;
  v35[1] = v37;
  v38 = v5;
  v62 = type metadata accessor for AppComposer;
  sub_1E5E1D964(v5, v26, type metadata accessor for AppComposer);
  v61 = v31;
  v39 = swift_allocObject();
  v87 = v39;
  v63 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v26, v39 + v32, type metadata accessor for AppComposer);
  v40 = (v39 + v33);
  v41 = v83;
  *v40 = v85;
  v40[1] = v41;
  v60 = v38;
  v42 = v86;
  sub_1E5E1D964(v38, v86, type metadata accessor for AppComposer);
  v84 = swift_allocObject();
  sub_1E5E1E798(v42, v84 + v32, type metadata accessor for AppComposer);
  v66 = *v38;
  v86 = type metadata accessor for ActionButtonDescriptor(0);
  v85 = type metadata accessor for ArtworkDescriptor();
  v82 = type metadata accessor for ContextMenu(0);
  v81 = type metadata accessor for ItemContext();
  v80 = type metadata accessor for ItemMetrics();
  v59[9] = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v79 = type metadata accessor for SectionMetrics();
  v59[8] = type metadata accessor for ViewDescriptor();
  v78 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v77 = sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v76 = sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v59[7] = sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v59[6] = sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v59[5] = sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v59[4] = sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v59[3] = sub_1E6364AD4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v59[2] = sub_1E6364AD4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  v59[1] = sub_1E5DF11E0();
  v59[0] = sub_1E5DF1338();
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v44 = sub_1E65DC168();
  v90 = v43;
  v91 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v89 = v44;
  v45 = v70;
  sub_1E65DC248();
  v46 = v69;
  sub_1E5E1D964(v60, v69, v62);
  v47 = (v61 + 32) & ~v61;
  v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v67;
  *(v49 + 16) = v67;
  sub_1E5E1E798(v46, v49 + v47, v63);
  v51 = (v49 + v48);
  *v51 = sub_1E5F8AA74;
  v51[1] = 0;
  *(swift_allocObject() + 16) = v50;
  type metadata accessor for AppFeature();
  sub_1E6364AD4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);

  v52 = v72;
  v53 = v71;
  sub_1E65E4DE8();
  v54 = swift_allocObject();
  v55 = v68;
  *(v54 + 16) = sub_1E63647F4;
  *(v54 + 24) = v55;

  sub_1E65E4CC8();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1E5FE9CE8;
  *(v56 + 24) = v54;

  v57 = sub_1E65E4F08();

  (*(v74 + 8))(v52, v75);
  (*(v73 + 8))(v45, v53);
  return v57;
}

uint64_t sub_1E635C044(void *a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = v9;
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078890, &qword_1E65FDE10);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v44 - v13;
  v14 = sub_1E65DBE88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1E65DBC98();
  v51 = *(v54 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v22 = *a1;
  v49 = v21;
  v50 = v22;
  (*(v15 + 16))(v18, v46, v14);
  sub_1E65DBC88();
  sub_1E5E1D964(a1, v10, type metadata accessor for AppComposer);
  v23 = *(v8 + 80);
  v24 = swift_allocObject();
  v26 = v47;
  v25 = v48;
  *(v24 + 16) = v47;
  *(v24 + 24) = v25;
  v46 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v10, v24 + ((v23 + 32) & ~v23), type metadata accessor for AppComposer);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  type metadata accessor for AppFeature();
  sub_1E6364AD4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v47 = sub_1E6364AD4(&qword_1ED078898, MEMORY[0x1E699D250]);
  swift_bridgeObjectRetain_n();
  sub_1E65E4DE8();
  sub_1E5E1D964(v45, v10, type metadata accessor for AppComposer);
  v28 = *a5;
  v29 = a5[3];
  v30 = a5[5];
  v31 = a5[7];
  v48 = a5[9];
  v32 = (v23 + 16) & ~v23;
  v33 = (v44 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1E5E1E798(v10, v34 + v32, v46);
  v35 = (v34 + v33);
  v36 = *(a5 + 3);
  v35[2] = *(a5 + 2);
  v35[3] = v36;
  v35[4] = *(a5 + 4);
  v37 = *(a5 + 1);
  *v35 = *a5;
  v35[1] = v37;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1E6360144;
  *(v38 + 24) = v34;

  v39 = v49;
  v41 = v54;
  v40 = v55;
  v42 = sub_1E65E4F08();

  (*(v52 + 8))(v40, v53);
  (*(v51 + 8))(v39, v41);
  return v42;
}

uint64_t sub_1E635C574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a2;
  v9 = sub_1E65DBD88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = sub_1E65DBBC8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = *(a4 + *(type metadata accessor for AppComposer() + 20) + 8);
  v28 = a5;
  if (v19 <= 1 || v19 == 3)
  {
    sub_1E65DBBB8();
    v20 = type metadata accessor for AppState();
    v21 = *(a1 + *(v20 + 68) + 8);
    if (*(v21 + 16))
    {
      v22 = sub_1E6215038(v29, a3);
      if (v23)
      {
        sub_1E5E06368(*(*(v21 + 56) + 8 * v22));
      }
    }

    v24 = *(a1 + *(v20 + 56) + 8);
    if (*(v24 + 16) && (v25 = sub_1E6215038(v29, a3), (v26 & 1) != 0))
    {
      sub_1E5E1D964(*(v24 + 56) + *(v10 + 72) * v25, v14, MEMORY[0x1E699D2D0]);
      sub_1E5E1E798(v14, v16, MEMORY[0x1E699D2D0]);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    return sub_1E65DBAE8();
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E635C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788A0, &qword_1E65FDE20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;

  v11 = sub_1E65DBAD8();
  v12 = type metadata accessor for AppState();
  v13 = a1 + *(v12 + 68);
  v14 = *(v13 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v13 + 8);
  sub_1E64208FC(v11, a3, a4, isUniquelyReferenced_nonNull_native);

  *(v13 + 8) = v20;

  sub_1E65DBAC8();
  v16 = sub_1E65DBD88();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  v17 = a1 + *(v12 + 56) + 8;
  return sub_1E64088F4(v10, a3, a4);
}

uint64_t sub_1E635C9A4(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = *a1;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = *a4;
  v13 = a4[3];
  v14 = a4[5];
  v15 = a4[7];
  v16 = a4[9];
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v10;
  v18 = *a4;
  *(v17 + 56) = *(a4 + 1);
  v19 = *(a4 + 3);
  *(v17 + 72) = *(a4 + 2);
  *(v17 + 88) = v19;
  *(v17 + 104) = *(a4 + 4);
  *(v17 + 40) = v18;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v9, &unk_1E65FDE18, v17);
}

uint64_t sub_1E635CB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a3;
  v143 = a2;
  v137 = a4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v129 = *(v139 - 8);
  v5 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v145 = v112 - v6;
  v152 = sub_1E65D76F8();
  v142 = *(v152 - 8);
  v126 = *(v142 + 64);
  v7 = MEMORY[0x1EEE9AC00](v152);
  v151 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v153 = v112 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v144 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v154 = v112 - v14;
  v15 = type metadata accessor for AppComposer();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8);
  v140 = v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v130 = v112 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v141 = v112 - v23;
  v25 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v27 = v112 - v26;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v136 = *(v135 - 8);
  v28 = *(v136 + 64);
  v29 = MEMORY[0x1EEE9AC00](v135);
  v131 = v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v132 = v112 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v133 = v112 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v134 = v112 - v35;
  sub_1E65E5148();
  v36 = sub_1E65E5138();
  v138 = type metadata accessor for AppComposer;
  v146 = a1;
  v37 = v27;
  v128 = v27;
  sub_1E5E1D964(a1, v27, type metadata accessor for AppComposer);
  v38 = *(v16 + 80);
  v39 = (v38 + 32) & ~v38;
  v40 = v39;
  v127 = v39;
  v41 = v25;
  v124 = v25;
  v113 = v38 | 7;
  v42 = v38;
  v43 = (v39 + v25) & 0xFFFFFFFFFFFFFFF8;
  v44 = v39 + v25;
  v125 = v44;
  v45 = swift_allocObject();
  v122 = &unk_1E65FDDC0;
  *(v45 + 16) = &unk_1E65FDDC0;
  *(v45 + 24) = 0;
  sub_1E5E1E798(v37, v45 + v40, type metadata accessor for AppComposer);
  *(v45 + v44) = 0;
  v46 = v45 + v43;
  v150 = v45;
  v121 = sub_1E6172524;
  *(v46 + 8) = sub_1E6172524;
  *(v46 + 16) = 0;
  v47 = (v45 + ((v43 + 31) & 0xFFFFFFFFFFFFFFF8));
  v48 = MEMORY[0x1E69AB380];
  v155 = v36;
  *v47 = v36;
  v47[1] = v48;
  v49 = a1;
  v50 = v141;
  v51 = v138;
  sub_1E5E1D964(v49, v141, v138);
  v123 = v42;
  v52 = (v42 + 48) & ~v42;
  v53 = swift_allocObject();
  v54 = v122;
  v53[2] = v122;
  v53[3] = 0;
  v53[4] = v36;
  v53[5] = MEMORY[0x1E69AB380];
  v55 = v53;
  sub_1E5E1E798(v50, v53 + v52, type metadata accessor for AppComposer);
  v148 = v55;
  *(v55 + v52 + v41) = 0;
  v56 = v55 + ((v52 + v41) & 0xFFFFFFFFFFFFFFF8);
  v57 = v121;
  *(v56 + 1) = v121;
  *(v56 + 2) = 0;
  v58 = v130;
  sub_1E5E1D964(v146, v130, v51);
  v59 = (v52 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v60[2] = v54;
  v60[3] = 0;
  v61 = v54;
  v60[4] = v155;
  v60[5] = MEMORY[0x1E69AB380];
  v62 = v60 + v52;
  v63 = v60;
  v147 = v60;
  sub_1E5E1E798(v58, v62, type metadata accessor for AppComposer);
  v64 = v63 + v59;
  *v64 = v57;
  *(v64 + 1) = 0;
  v64[16] = 0;
  v65 = v146;
  v66 = v140;
  sub_1E5E1D964(v146, v140, v51);
  v67 = swift_allocObject();
  v125 = v67;
  *(v67 + 16) = v61;
  *(v67 + 24) = 0;
  sub_1E5E1E798(v66, v67 + v127, type metadata accessor for AppComposer);
  v68 = v65;
  v69 = v128;
  sub_1E5E1D964(v65, v128, v51);
  sub_1E5DF650C(v149, &v157);
  v70 = ((v123 + 16) & ~v123) + v124;
  v71 = (v123 + 16) & ~v123;
  v140 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v130 = v72;
  sub_1E5E1E798(v69, v72 + v71, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v157, v72 + ((v70 + 7) & 0xFFFFFFFFFFFFFFF8));
  v73 = sub_1E65E3E08();
  (*(*(v73 - 8) + 56))(v154, 1, 1, v73);
  swift_retain_n();
  v74 = v153;
  sub_1E65D76E8();
  (*(v129 + 104))(v145, *MEMORY[0x1E699D720], v139);
  v75 = v141;
  sub_1E5E1D964(v68, v141, v51);
  v129 = swift_allocObject();
  sub_1E5E1E798(v75, v129 + v71, type metadata accessor for AppComposer);
  v76 = v75;
  sub_1E5E1D964(v68, v75, v51);
  v124 = v70;
  v128 = swift_allocObject();
  sub_1E5E1E798(v75, &v128[v71], type metadata accessor for AppComposer);
  sub_1E5E1D964(v68, v75, v51);
  v127 = swift_allocObject();
  v119 = v71;
  v118 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v75, v127 + v71, type metadata accessor for AppComposer);
  sub_1E5E1D964(v68, v75, v51);
  sub_1E5DF650C(v149, &v156);
  v77 = v142;
  v78 = *(v142 + 16);
  v122 = (v142 + 16);
  v123 = v78;
  v79 = v151;
  v78(v151, v74, v152);
  v80 = v140;
  v81 = (v140 + 47) & 0xFFFFFFFFFFFFFFF8;
  v120 = v81;
  v139 = (v81 + 87) & 0xFFFFFFFFFFFFFFF8;
  v121 = v139 + 8;
  v82 = (v139 + 8 + *(v77 + 80)) & ~*(v77 + 80);
  v83 = swift_allocObject();
  sub_1E5E1E798(v76, v83 + v71, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v156, v83 + v80);
  v84 = (v83 + v81);
  v85 = v83;
  *v84 = v155;
  v117 = &unk_1E65FDDC8;
  v84[1] = MEMORY[0x1E69AB380];
  v84[2] = &unk_1E65FDDC8;
  v116 = &unk_1E65FDDD0;
  v84[3] = v150;
  v84[4] = &unk_1E65FDDD0;
  v115 = &unk_1E65FDDD8;
  v84[5] = v148;
  v84[6] = &unk_1E65FDDD8;
  v114 = &unk_1E65FDDE0;
  v84[7] = v147;
  v84[8] = &unk_1E65FDDE0;
  v86 = v125;
  v84[9] = v125;
  v87 = v143;
  v88 = v85;
  v126 = v85;
  *(v85 + v139) = v143;
  v89 = *(v77 + 32);
  v90 = v152;
  v89(v88 + v82, v79, v152);
  v91 = v146;
  v92 = v138;
  sub_1E5E1D964(v146, v76, v138);
  sub_1E5DF650C(v149, &v156);
  v93 = swift_allocObject();
  v94 = v119;
  v95 = v118;
  sub_1E5E1E798(v76, v93 + v119, v118);
  sub_1E5DF599C(&v156, v93 + v140);
  v96 = (v93 + v120);
  v149 = v93;
  *v96 = v155;
  v97 = v117;
  v96[1] = MEMORY[0x1E69AB380];
  v96[2] = v97;
  v98 = v116;
  v96[3] = v150;
  v96[4] = v98;
  v99 = v115;
  v96[5] = v148;
  v96[6] = v99;
  v100 = v114;
  v96[7] = v147;
  v96[8] = v100;
  v96[9] = v86;
  *(v93 + v139) = v87;
  sub_1E5E1D964(v91, v76, v92);
  v146 = swift_allocObject();
  sub_1E5E1E798(v76, v146 + v94, v95);
  sub_1E5DFD1CC(v154, v144, &qword_1ED074410, &qword_1E65F0B78);
  (v123)(v151, v153, v90);
  v141 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();

  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v150 = type metadata accessor for ArtworkDescriptor();
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v139 = type metadata accessor for ContextMenu(0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v124 = type metadata accessor for ItemContext();
  v123 = type metadata accessor for ItemMetrics();
  v122 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v120 = type metadata accessor for SectionMetrics();
  v119 = type metadata accessor for ViewDescriptor();
  v118 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v117 = sub_1E60731B0();
  v116 = sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v115 = sub_1E5FEB2FC();
  v114 = sub_1E60C08DC();
  v113 = sub_1E60C15C0();
  v112[1] = sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v103 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v156 = v102;
  *(&v156 + 1) = v103;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v156 = v101;
  *(&v156 + 1) = OpaqueTypeConformance2;
  v112[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E6364AD4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E6364AD4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v105 = v131;
  sub_1E65DC198();
  (*(v142 + 8))(v153, v152);
  sub_1E5DFE50C(v154, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v106 = v132;
  v107 = v135;
  sub_1E5FEE4C8(v105);
  v108 = *(v136 + 8);
  v108(v105, v107);
  v109 = v133;
  sub_1E5FEE4C8(v106);
  v108(v106, v107);
  v110 = v134;
  sub_1E5FEE4C8(v109);
  v108(v109, v107);
  sub_1E5FEE4C8(v110);
  return (v108)(v110, v107);
}

uint64_t sub_1E635DEF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a1;
  v64 = a3;
  v67 = a4;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v52 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v16 = *(v15 - 8);
  v65 = v15;
  v66 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v52 - v18;
  sub_1E65E5148();
  v19 = sub_1E65E5138();
  v69 = type metadata accessor for AppComposer;
  sub_1E5E1D964(a2, v14, type metadata accessor for AppComposer);
  v20 = *(v6 + 80);
  v59 = (v20 + 32) & ~v20;
  v21 = (v59 + v7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v59 + v7;
  v57 = v59 + v7;
  v23 = swift_allocObject();
  v68 = &unk_1E65FDDE8;
  *(v23 + 16) = &unk_1E65FDDE8;
  *(v23 + 24) = 0;
  v70 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v14, v23 + ((v20 + 32) & ~v20), type metadata accessor for AppComposer);
  v56 = v23;
  *(v23 + v22) = 0;
  v24 = v23 + v21;
  v55 = sub_1E6172524;
  *(v24 + 8) = sub_1E6172524;
  *(v24 + 16) = 0;
  v25 = (v23 + ((v21 + 31) & 0xFFFFFFFFFFFFFFF8));
  v26 = MEMORY[0x1E69AB380];
  v53 = v19;
  *v25 = v19;
  v25[1] = v26;
  v27 = v26;
  v54 = a2;
  v28 = v58;
  sub_1E5E1D964(a2, v58, v69);
  v29 = (v20 + 48) & ~v20;
  v30 = v29 + v7;
  v31 = (v29 + v7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v68;
  v32[2] = v68;
  v32[3] = 0;
  v32[4] = v19;
  v32[5] = v27;
  sub_1E5E1E798(v28, v32 + v29, v70);
  *(v32 + v30) = 0;
  v34 = v32 + v31;
  v35 = v55;
  *(v34 + 1) = v55;
  *(v34 + 2) = 0;
  v36 = v60;
  v37 = v69;
  sub_1E5E1D964(a2, v60, v69);
  v38 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = v33;
  v39[3] = 0;
  v40 = v53;
  v39[4] = v53;
  v39[5] = MEMORY[0x1E69AB380];
  v41 = v36;
  v42 = v70;
  sub_1E5E1E798(v41, v39 + v29, v70);
  v43 = v39 + v38;
  *v43 = v35;
  *(v43 + 1) = 0;
  v43[16] = 0;
  v44 = v61;
  sub_1E5E1D964(v54, v61, v37);
  v45 = swift_allocObject();
  *(v45 + 16) = v68;
  *(v45 + 24) = 0;
  sub_1E5E1E798(v44, v45 + v59, v42);
  *&v73 = v40;
  *(&v73 + 1) = MEMORY[0x1E69AB380];
  v74 = &unk_1E65FDDF0;
  v75 = v56;
  v76 = &unk_1E65FDDF8;
  v77 = v32;
  v78 = &unk_1E65FDE00;
  v79 = v39;
  v80 = &unk_1E65FDE08;
  v81 = v45;
  swift_retain_n();
  v46 = v62;
  sub_1E61E66C8(v63, v64, &v73, v62);

  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v48 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v71 = v47;
  v72 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v65;
  MEMORY[0x1E69482C0](v46, v65, OpaqueTypeConformance2);
  return (*(v66 + 8))(v46, v50);
}

uint64_t sub_1E635E458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1E65D79C8();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E635E51C, 0, 0);
}

uint64_t sub_1E635E51C()
{
  v1 = *(v0 + 112);
  *(v0 + 52) = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 92) = *(type metadata accessor for AppEnvironment() + 40);
  v2 = AwardsService.fetchSeymourAchievement.getter();
  *(v0 + 144) = v3;
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_1E635E644;
  v6 = *(v0 + 136);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  return v10(v6, v7, v8);
}

uint64_t sub_1E635E644()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E635ECBC;
  }

  else
  {
    v3 = sub_1E635E758;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E635E758()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  if (sub_1E65DB988() == v3 && v4 == v2)
  {
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = sub_1E65E6C18();

    if ((v8 & 1) == 0)
    {
      v9 = *(v0 + 160);
      v10 = *(v0 + 128);
      v11 = *(v0 + 136);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = -1;
      v12 = sub_1E634B750(v0 + 16);
      (*(v10 + 8))(*(v0 + 136), *(v0 + 120));
      v13 = *(v0 + 136);

      if (v9)
      {
        v14 = *(v0 + 8);

        return v14();
      }

      else
      {
        v23 = *(v0 + 8);

        return v23(v12 & 1);
      }
    }
  }

  v16 = *(v0 + 112) + *(v0 + 52) + *(v0 + 92);
  v17 = AwardsService.fetchSeymourAchievementProgress.getter();
  *(v0 + 168) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v19 = swift_allocObject();
  *(v0 + 176) = v19;
  *(v19 + 16) = xmmword_1E65EA670;
  *(v19 + 32) = sub_1E65DB998();
  *(v19 + 40) = v20;
  v24 = (v17 + *v17);
  v21 = v17[1];
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = sub_1E635E9B0;

  return v24(v19);
}

uint64_t sub_1E635E9B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = v1;

  v7 = v4[22];
  v8 = v4[21];
  if (v1)
  {

    v9 = sub_1E635ED28;
  }

  else
  {

    v4[25] = a1;
    v9 = sub_1E635EB24;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E635EB24()
{
  sub_1E6059D88(*(v0 + 200), v0 + 56);

  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if (*(v0 + 88) == 255)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = -1;
    v4 = sub_1E634B750(v0 + 16);
    v8 = (v2 + 8);
    v9 = *(v0 + 136);
    v10 = *(v0 + 120);
    if (v1)
    {
      (*v8)(v9, v10);
      goto LABEL_6;
    }

    (*v8)(v9, v10);
  }

  else
  {
    v4 = sub_1E634B750(v0 + 56);
    v5 = (v2 + 8);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    if (v1)
    {
      (*v5)(v6, v7);
      sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
LABEL_6:
      v11 = *(v0 + 136);

      v12 = *(v0 + 8);

      return v12();
    }

    (*v5)(v6, v7);
    sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
  }

  v14 = *(v0 + 136);

  v15 = *(v0 + 8);

  return v15(v4 & 1);
}

uint64_t sub_1E635ECBC()
{
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E635ED28()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[24];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E635EDA4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5FE99E8;

  return sub_1E635E458(a1, a2, v2 + v7);
}

uint64_t sub_1E635EE84(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E635EF24, 0, 0);
}

uint64_t sub_1E635EF24()
{
  sub_1E65E6058();
  *(v0 + 40) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E635EFB8, v2, v1);
}

uint64_t sub_1E635EFB8()
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

uint64_t sub_1E635F060()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E635EE84(v0);
}

uint64_t sub_1E635F0F0()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DBE88() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v6);
  v9 = *v8;
  v10 = v8[1];

  return sub_1E635C044((v0 + v2), (v0 + v5), v9, v10, (v0 + v7));
}

uint64_t sub_1E635F1F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return AppComposer.awardHeaderViewBuilder(awardName:)(*v4, v4[1], a1);
}

uint64_t sub_1E635F28C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E635CB24(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E635F334@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E635DEF0(a1, v2 + v6, v7, a2);
}

uint64_t objectdestroy_15Tm_0(void (*a1)(void))
{
  v113 = type metadata accessor for AppComposer();
  v112 = *(*(v113 - 1) + 80);
  v111 = *(*(v113 - 1) + 64);
  a1(*(v1 + 24));
  v108 = (v1 + ((v112 + 32) & ~v112));
  v3 = *v108;

  v4 = v108 + v113[5];
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v110 = type metadata accessor for AccountService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v7], v110);
  v8 = v6[7];
  v107 = type metadata accessor for AppStateService();
  v106 = *(v107[-1].Description + 1);
  v106(&v4[v8], v107);
  v9 = v6[8];
  v105 = type metadata accessor for ArchivedSessionService();
  v104 = *(v105[-1].Description + 1);
  v104(&v4[v9], v105);
  v10 = v6[9];
  v103 = type metadata accessor for AssetService();
  v102 = *(v103[-1].Description + 1);
  v102(&v4[v10], v103);
  v11 = v6[10];
  v101 = type metadata accessor for AwardsService();
  v100 = *(v101[-1].Description + 1);
  v100(&v4[v11], v101);
  v12 = v6[11];
  v99 = type metadata accessor for BookmarkService();
  v98 = *(v99[-1].Description + 1);
  v98(&v4[v12], v99);
  v13 = v6[12];
  v97 = type metadata accessor for CatalogService();
  v96 = *(v97[-1].Description + 1);
  v96(&v4[v13], v97);
  v14 = v6[13];
  v95 = type metadata accessor for ConfigurationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v4[v14], v95);
  v15 = v6[14];
  v93 = type metadata accessor for ContentAvailabilityService();
  v92 = *(v93[-1].Description + 1);
  v92(&v4[v15], v93);
  v16 = v6[15];
  v91 = type metadata accessor for EngagementService();
  v90 = *(v91[-1].Description + 1);
  v90(&v4[v16], v91);
  v17 = v6[16];
  v89 = type metadata accessor for HealthDataService();
  v88 = *(v89[-1].Description + 1);
  v88(&v4[v17], v89);
  v18 = v6[17];
  v87 = type metadata accessor for InteropService();
  v86 = *(v87[-1].Description + 1);
  v86(&v4[v18], v87);
  v19 = v6[18];
  v85 = type metadata accessor for LocalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v4[v19], v85);
  v20 = v6[19];
  v83 = type metadata accessor for MarketingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v4[v20], v83);
  v21 = v6[20];
  v81 = type metadata accessor for MetricService();
  v80 = *(v81[-1].Description + 1);
  v80(&v4[v21], v81);
  v22 = v6[21];
  v79 = type metadata accessor for PersonalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v4[v22], v79);
  v23 = v6[22];
  v77 = type metadata accessor for PlayerService();
  v76 = *(v77[-1].Description + 1);
  v76(&v4[v23], v77);
  v24 = v6[23];
  v75 = type metadata accessor for PrivacyPreferenceService();
  v74 = *(v75[-1].Description + 1);
  v74(&v4[v24], v75);
  v25 = v6[24];
  v73 = type metadata accessor for RecommendationService();
  v72 = *(v73[-1].Description + 1);
  v72(&v4[v25], v73);
  v26 = v6[25];
  v71 = type metadata accessor for RemoteBrowsingService();
  v70 = *(v71[-1].Description + 1);
  v70(&v4[v26], v71);
  v27 = v6[26];
  v69 = type metadata accessor for SearchService();
  v68 = *(v69[-1].Description + 1);
  v68(&v4[v27], v69);
  v28 = v6[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v66 = *(v67[-1].Description + 1);
  v66(&v4[v28], v67);
  v29 = v6[28];
  v60 = type metadata accessor for SessionService();
  v65 = *(v60[-1].Description + 1);
  v65(&v4[v29], v60);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v64 = *(v31[-1].Description + 1);
  v64(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v63 = *(v33[-1].Description + 1);
  v63(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v62 = *(v35[-1].Description + 1);
  v62(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v61 = *(QueueService[-1].Description + 1);
  v61(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v59 = *(v44[-1].Description + 1);
  v59(&v4[v43], v44);
  v45 = *(v108 + v113[6]);

  v46 = (v108 + v113[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v109(&v49[v6[6]], v110);
  v106(&v49[v6[7]], v107);
  v104(&v49[v6[8]], v105);
  v102(&v49[v6[9]], v103);
  v100(&v49[v6[10]], v101);
  v98(&v49[v6[11]], v99);
  v96(&v49[v6[12]], v97);
  v94(&v49[v6[13]], v95);
  v92(&v49[v6[14]], v93);
  v90(&v49[v6[15]], v91);
  v88(&v49[v6[16]], v89);
  v86(&v49[v6[17]], v87);
  v84(&v49[v6[18]], v85);
  v82(&v49[v6[19]], v83);
  v80(&v49[v6[20]], v81);
  v78(&v49[v6[21]], v79);
  v76(&v49[v6[22]], v77);
  v74(&v49[v6[23]], v75);
  v72(&v49[v6[24]], v73);
  v70(&v49[v6[25]], v71);
  v68(&v49[v6[26]], v69);
  v66(&v49[v6[27]], v67);
  v65(&v49[v6[28]], v60);
  v64(&v49[v6[29]], v31);
  v63(&v49[v6[30]], v33);
  v62(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v61(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v59(&v49[v6[36]], v44);
  v56 = *(v108 + v113[8]);
  swift_unknownObjectRelease();
  if (*(v108 + v113[9] + 8) >= 0xC)
  {
  }

  v57 = (v108 + v113[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  return swift_deallocObject();
}

uint64_t sub_1E63600B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E635C574(a1, v6, v7, v8, a2);
}

uint64_t sub_1E6360144(char *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E635C9A4(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E63601F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v43 = type metadata accessor for CanvasTaskIdentifier();
  v4 = *(*(v43 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v43);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v42 - v8;
  v10 = type metadata accessor for RouteSource(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RouteDestination();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v45 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v42 - v17);
  v19 = type metadata accessor for ItemContext();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5E1D964(a1, v22, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1E6321560(v22, type metadata accessor for ItemContext);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v23 - 8) + 56))(v47, 1, 1, v23);
  }

  else
  {
    v26 = *v22;
    v25 = v22[1];
    swift_storeEnumTagMultiPayload();
    *v18 = v26;
    v18[1] = v25;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E798(v13, v18 + *(v14 + 20), type metadata accessor for RouteSource);
    *(v18 + *(v14 + 24)) = MEMORY[0x1E69E7CD0];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v42[1] = v27[12];
    v28 = v27[16];
    v29 = v27[20];
    v30 = v47;
    v31 = (v47 + v27[24]);
    sub_1E5E1D964(v18, v9, type metadata accessor for RouteDestination);
    sub_1E5E1D964(v9, v7, type metadata accessor for CanvasTaskIdentifier);
    sub_1E6364AD4(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier);
    sub_1E65E6848();
    sub_1E6321560(v9, type metadata accessor for CanvasTaskIdentifier);
    v32 = *MEMORY[0x1E6999B50];
    v33 = sub_1E65E4EB8();
    (*(*(v33 - 8) + 104))(v30 + v28, v32, v33);
    v34 = *MEMORY[0x1E6999B48];
    v35 = sub_1E65E4EA8();
    (*(*(v35 - 8) + 104))(v30 + v29, v34, v35);
    sub_1E5DF650C(v46, v48);
    v36 = v45;
    sub_1E5E1D964(v18, v45, type metadata accessor for RouteDestination);
    v37 = (*(v44 + 80) + 56) & ~*(v44 + 80);
    v38 = swift_allocObject();
    sub_1E5DF599C(v48, v38 + 16);
    sub_1E5E1E798(v36, v38 + v37, type metadata accessor for RouteDestination);
    *v31 = &unk_1E65FDF00;
    v31[1] = v38;
    sub_1E65E6068();
    sub_1E6321560(v18, type metadata accessor for RouteDestination);
    v39 = *MEMORY[0x1E6999AD8];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v41 = *(v40 - 8);
    (*(v41 + 104))(v30, v39, v40);
    return (*(v41 + 56))(v30, 0, 1, v40);
  }
}

uint64_t sub_1E6360780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1E6360AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6360B98, 0, 0);
}

uint64_t sub_1E6360B98()
{
  v1 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (!*(v2 + 16) || (v3 = sub_1E6215038(*(v0 + 32), *(v0 + 40)), (v4 & 1) == 0))
  {

    goto LABEL_6;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  sub_1E5E06368(v5);

  if (v5 < 2)
  {
    sub_1E5F87148(v5);
LABEL_6:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 24);
  sub_1E65E5BA8();
  sub_1E62DDC8C();
  sub_1E65E6578();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v14 = sub_1E65E5D48();
  v16 = v15;
  v17 = swift_task_alloc();
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v16;
  v6 = sub_1E5F9F864(sub_1E6364AB0, v17, v5);

  sub_1E5F87148(v5);

LABEL_7:
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_1E6360D8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState() + 68);
  v4 = *(v3 + 8);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E6360DE0@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a5;
  v109 = a4;
  v107 = a3;
  v97 = a1;
  v104 = sub_1E65E03F8();
  v6 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ItemContext();
  v8 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v102 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1E65DBE68();
  v106 = *(v108 - 8);
  v10 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v101 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v79 = v78 - v14;
  v88 = sub_1E65E0438();
  v87 = *(v88 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v90 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v89 = v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v98 = v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v96 = v78 - v25;
  v26 = sub_1E65D72D8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v83 = v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v95 = v78 - v31;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v32 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v94 = v78 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = v78 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  v92 = *(v42 - 8);
  v93 = v42;
  v43 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = (v78 - v44);
  v46 = type metadata accessor for AppComposer();
  v47 = *a2;
  LODWORD(v86) = *(a2 + *(v46 + 20) + 8);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v48 = sub_1E65E0678();
  v49 = *(v35 + 8);
  v49(v41, v34);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0708();
  v49(v39, v34);
  Platform.transformed(with:sizeClass:)(v48, v111, v86, v45);
  v50 = sub_1E65DBF68();
  v84 = v51;
  v52 = *(v92 + 16);
  v86 = v45;
  v52(v94, v45, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  v53 = sub_1E65D7348();
  __swift_project_value_buffer(v53, qword_1EE2EA268);
  sub_1E65E5D38();
  v54 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  (*(*(v54 - 8) + 56))(v96, 1, 1, v54);
  v55 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v55 - 8) + 56))(v98, 1, 1, v55);
  v56 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v57 = sub_1E6364AD4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v58 = v95;
  v82 = v55;
  v83 = v54;
  v81 = v56;
  v80 = v57;
  sub_1E65E0458();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v60 = sub_1E65DBF88();
  v61 = *(v60 + 16);
  v85 = v50;
  if (v61)
  {
    v110 = MEMORY[0x1E69E7CC0];
    sub_1E601BE24(0, v61, 0);
    v109 = v110;
    v98 = *(v106 + 16);
    v62 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v78[1] = v60;
    v63 = v60 + v62;
    v106 += 16;
    v96 = *(v106 + 56);
    v97 = (v106 - 8);
    v64 = v79;
    v65 = v102;
    do
    {
      v107 = v61;
      v66 = v101;
      (v98)(v101, v63, v108);
      *v65 = sub_1E65DBE38();
      *(v65 + 1) = v67;
      v65[16] = 1;
      swift_storeEnumTagMultiPayload();
      sub_1E65E0A68();
      swift_storeEnumTagMultiPayload();
      sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E65E04D8();
      (*v97)(v66, v108);
      swift_storeEnumTagMultiPayload();
      v110 = v109;
      v69 = *(v109 + 16);
      v68 = *(v109 + 24);
      v70 = v109;
      if (v69 >= v68 >> 1)
      {
        sub_1E601BE24(v68 > 1, v69 + 1, 1);
        v64 = v79;
        v70 = v110;
      }

      v109 = v70;
      *(v70 + 16) = v69 + 1;
      sub_1E5FAB460(v64, v70 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v69, &qword_1ED0720A8, &qword_1E65EA790);
      v63 += v96;
      v61 = v107 - 1;
    }

    while (v107 != 1);
  }

  else
  {

    v109 = MEMORY[0x1E69E7CC0];
  }

  v71 = type metadata accessor for SectionMetrics();
  v72 = *(v71 + 24);
  v73 = *MEMORY[0x1E69CBCB0];
  v74 = sub_1E65D8F28();
  v75 = v89;
  (*(*(v74 - 8) + 104))(&v89[v72], v73, v74);
  v76 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  *v75 = 0xD000000000000012;
  v75[1] = 0x80000001E6616520;
  v75[2] = 0xD000000000000012;
  v75[3] = 0x80000001E6616520;
  *(v75 + *(v71 + 32)) = v76;
  (*(*(v71 - 8) + 56))(v75, 0, 1, v71);
  (*(v87 + 104))(v90, *MEMORY[0x1E699D7D8], v88);
  v108 = type metadata accessor for ArtworkDescriptor();
  v107 = type metadata accessor for ContextMenu(0);
  v106 = type metadata accessor for ItemMetrics();
  v104 = type metadata accessor for ViewDescriptor();
  v103 = sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v102 = sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E6364AD4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  sub_1E65E0418();
  return (*(v92 + 8))(v86, v93);
}

uint64_t sub_1E6361CC4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = sub_1E65D9CC8();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v11 = type metadata accessor for ItemContext();
  v2[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[20] = v13;
  v14 = *(v13 - 8);
  v2[21] = v14;
  v15 = *(v14 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6361EFC, 0, 0);
}

unint64_t sub_1E6361EFC()
{
  v1 = v0[21];
  v80 = v0[19];
  v2 = v0[5];
  v3 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
  v89 = (v1 + 8);
  v77 = (v1 + 40);
  v78 = (v1 + 32);
  v90 = v2;

  v9 = 0;
  v85 = v8;
  v87 = v2 + 56;
  while (2)
  {
    v82 = v3;
    v0[25] = v3;
    v10 = v9;
    if (!v7)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v9 = v10;
LABEL_9:
      v11 = v0[19];
      v12 = v0[17];
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = *(v1 + 72);
      v15 = v1;
      v16 = *(v1 + 16);
      v16(v0[24], *(v90 + 48) + v14 * (v13 | (v9 << 6)), v0[20]);
      sub_1E65E04E8();
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      v17 = v0[19];
      (*v89)(v0[24], v0[20]);
      sub_1E6321560(v17, type metadata accessor for ItemContext);
      v10 = v9;
      v1 = v15;
      v8 = v85;
      v4 = v87;
      if (!v7)
      {
        while (1)
        {
LABEL_6:
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v9 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v9);
          ++v10;
          if (v7)
          {
            goto LABEL_9;
          }
        }

        v84 = v0[18];
        v42 = v0[14];
        v43 = v0[5];

        v44 = -1;
        v45 = -1 << *(v90 + 32);
        if (-v45 < 64)
        {
          v44 = ~(-1 << -v45);
        }

        v46 = v44 & *(v90 + 56);
        v47 = (63 - v45) >> 6;
        v81 = v42;
        v86 = (v42 + 32);

        v48 = 0;
        v88 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v0[26] = v88;
          if (!v46)
          {
            break;
          }

          v49 = v48;
LABEL_30:
          v51 = v0[17];
          v50 = v0[18];
          v52 = __clz(__rbit64(v46));
          v46 &= v46 - 1;
          (*(v1 + 16))(v0[22], *(v90 + 48) + *(v1 + 72) * (v52 | (v49 << 6)), v0[20]);
          sub_1E65E04E8();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v54 = v0[18];
          if (EnumCaseMultiPayload)
          {
            (*v89)(v0[22], v0[20]);
            sub_1E6321560(v54, type metadata accessor for ItemContext);
            v48 = v49;
          }

          else
          {
            v55 = v0[15];
            v79 = v0[16];
            v56 = v0[13];
            v57 = *v54;
            v58 = *(v84 + 8);
            v59 = v0[22];
            v60 = v0[20];
            sub_1E65D9C88();
            (*v89)(v59, v60);
            v61 = *v86;
            (*v86)(v79, v55, v56);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_1E64F610C(0, v88[2] + 1, 1, v88);
            }

            v63 = v88[2];
            v62 = v88[3];
            if (v63 >= v62 >> 1)
            {
              v88 = sub_1E64F610C(v62 > 1, v63 + 1, 1, v88);
            }

            v64 = v0[16];
            v65 = v0[13];
            v88[2] = v63 + 1;
            v61(v88 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v63, v64, v65);
            v48 = v49;
          }
        }

        while (1)
        {
          v49 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v49 >= v47)
          {
            v66 = v0[5];
            v67 = v0[6];

            v68 = v67 + *(type metadata accessor for AppComposer() + 20);
            v69 = v68 + *(type metadata accessor for AppEnvironment() + 48);
            v70 = CatalogService.fetchRemoteCatalogLockups.getter();
            v0[27] = v71;
            v91 = (v70 + *v70);
            v72 = v70[1];
            v73 = swift_task_alloc();
            v0[28] = v73;
            *v73 = v0;
            v73[1] = sub_1E6362650;

            return (v91)(33, v88);
          }

          v46 = *(v4 + 8 * v49);
          ++v48;
          if (v46)
          {
            goto LABEL_30;
          }
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v75 = v14;
    v18 = *v0[19];
    v19 = *(v80 + 8);
    v74 = *(v80 + 16);
    v16(v0[23], v0[24], v0[20]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v82;
    v76 = v18;
    v21 = v19;
    result = sub_1E6215038(v18, v19);
    v24 = v82[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v28 = v23;
    v1 = v15;
    v4 = v87;
    if (v82[3] >= v27)
    {
      v31 = v75;
      v29 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = result;
        sub_1E6424B84();
        v31 = v75;
        result = v41;
      }

LABEL_18:
      v32 = v0[23];
      v33 = v0[24];
      v34 = v0[20];
      if (v28)
      {
        v83 = v0[24];
        v35 = result;
        v36 = v0[23];
        v37 = v31;
        sub_1E5E483B8();
        v3 = v92;
        (*v77)(v92[7] + v35 * v37, v36, v34);
        (*v89)(v83, v34);
        v8 = v85;
        continue;
      }

      v3 = v82;
      v82[(result >> 6) + 8] |= 1 << result;
      v38 = (v82[6] + 16 * result);
      *v38 = v76;
      v38[1] = v29;
      (*v78)(v82[7] + result * v31, v32, v34);
      result = (*v89)(v33, v34);
      v39 = v82[2];
      v26 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (!v26)
      {
        v82[2] = v40;
        v8 = v85;
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  sub_1E641BE8C(v27, isUniquelyReferenced_nonNull_native);
  v29 = v21;
  result = sub_1E6215038(v76, v21);
  v31 = v75;
  if ((v28 & 1) == (v30 & 1))
  {
    goto LABEL_18;
  }

LABEL_42:

  return sub_1E65E6C68();
}

uint64_t sub_1E6362650(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[28];
  v10 = *v2;
  v4[29] = v1;

  if (v1)
  {
    v6 = sub_1E6362A08;
  }

  else
  {
    v8 = v4[26];
    v7 = v4[27];

    v6 = sub_1E636277C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E636277C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = **(v0 + 48);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = **(v0 + 64);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 64);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v11 = *v9;
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(&v9[v10], v12);
      goto LABEL_8;
    }

    sub_1E5DFE50C(*(v0 + 64), &qword_1ED072910, &qword_1E65EC030);
  }

  v11 = 0;
LABEL_8:
  v13 = *(v0 + 232);
  v14 = *(v0 + 24);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v25 = *(v0 + 152);
  v26 = *(v0 + 144);
  v27 = *(v0 + 128);
  v28 = *(v0 + 120);
  v29 = *(v0 + 96);
  v30 = *(v0 + 72);
  v31 = *(v0 + 64);
  v19 = *(v0 + 48);
  v20 = swift_task_alloc();
  v20[2] = v16;
  v20[3] = v11;
  v20[4] = v19;
  v21 = sub_1E6404CB8(sub_1E6364A90, v20, v14);

  v22 = sub_1E600A848(v21);

  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_1E6362A08()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[8];

  v11 = v0[1];
  v12 = v0[29];

  return v11();
}

uint64_t sub_1E6362B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v215 = a4;
  v229 = a3;
  v249 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v196 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v228 = &v196 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v227 = &v196 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v196 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v233 = &v196 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v245 = &v196 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v235 = &v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v246 = &v196 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v211 = &v196 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v209 = &v196 - v34;
  v208 = sub_1E65DAC98();
  v206 = *(v208 - 8);
  v35 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v203 = &v196 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1E65DB268();
  v37 = *(*(v210 - 8) + 64);
  MEMORY[0x1EEE9AC00](v210);
  v204 = &v196 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1E65DA0B8();
  v205 = *(v207 - 8);
  v39 = *(v205 + 64);
  v40 = MEMORY[0x1EEE9AC00](v207);
  v202 = &v196 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v220 = &v196 - v42;
  v201 = sub_1E65D9D58();
  v200 = *(v201 - 8);
  v43 = *(v200 + 64);
  v44 = MEMORY[0x1EEE9AC00](v201);
  v199 = &v196 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v198 = &v196 - v46;
  v216 = sub_1E65D8BB8();
  v47 = *(*(v216 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v216);
  v217 = (&v196 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v230 = &v196 - v50;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v51 = *(*(v219 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v219);
  v218 = &v196 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v244 = (&v196 - v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8);
  v231 = &v196 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v238 = &v196 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v243 = &v196 - v61;
  v252 = sub_1E65D72D8();
  v242 = *(v252 - 8);
  v62 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v252);
  v251 = &v196 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v67 = &v196 - v66;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v212 = *(v213 - 1);
  v68 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v70 = &v196 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = &v196 - v73;
  v232 = sub_1E65D9AC8();
  v250 = *(v232 - 8);
  v75 = v250[8];
  v76 = MEMORY[0x1EEE9AC00](v232);
  v214 = &v196 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v236 = &v196 - v78;
  v226 = sub_1E65D7848();
  v225 = *(v226 - 8);
  v79 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v253 = &v196 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for ItemContext();
  v81 = *(*(v222 - 8) + 64);
  v82 = MEMORY[0x1EEE9AC00](v222);
  v221 = &v196 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v241 = &v196 - v84;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v223 = *(v224 - 8);
  v85 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v240 = &v196 - v86;
  v87 = sub_1E65E03F8();
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v239 = &v196 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v237 = *(v248 - 8);
  v90 = *(v237 + 64);
  v91 = MEMORY[0x1EEE9AC00](v248);
  v93 = &v196 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v247 = &v196 - v94;
  v254 = a1;
  v95 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_10;
  }

  v97 = a2;
  v197 = v10;
  v98 = sub_1E6215038(v95, v96);
  v100 = v99;

  if ((v100 & 1) == 0)
  {
LABEL_10:
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v115 - 8) + 56))(v249, 1, 1, v115);
  }

  v101 = v237;
  v102 = *(v97 + 56) + *(v237 + 72) * v98;
  v103 = v248;
  (*(v237 + 16))(v93, v102, v248);
  (*(v101 + 32))(v247, v93, v103);
  if (v229)
  {
    v104 = sub_1E65D80B8();
    v106 = v105;
    v255 = v104;
    v256 = v105;
    v108 = v107 & 1;
    v257 = v107 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v104, v106, v108);
    if (v259 != 3 && (sub_1E637CE70(v259, v229) & 1) == 0)
    {
      (*(v237 + 8))(v247, v248);
      goto LABEL_10;
    }
  }

  sub_1E65E0A68();
  swift_storeEnumTagMultiPayload();
  v109 = v215;
  v110 = *v215;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v229 = v109 + *(type metadata accessor for AppComposer() + 20);
  v258 = *(v229 + 8);
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v111 = v213;
  sub_1E65E4C98();
  sub_1E60EEE88(v74);
  sub_1E5DFE50C(v67, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v212 + 8))(v70, v111);
  v112 = v250;
  v113 = v250[6];
  v114 = v232;
  if (v113(v74, 1, v232) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v113(v74, 1, v114) != 1)
    {
      sub_1E5DFE50C(v74, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (v112[4])(v236, v74, v114);
  }

  v117 = *(type metadata accessor for AppEnvironment() + 136);
  v118 = sub_1E5F9B6D0(&unk_1F5FA8C40);
  v119 = sub_1E65D8248();
  sub_1E63C4134(v253, (v229 + v117), v119, v251);

  v120 = sub_1E65D80A8();
  v121 = sub_1E65D9AA8();
  v123 = v122;
  v124 = v214;
  MEMORY[0x1E6941490]();
  v125 = sub_1E65D9AA8();
  v127 = v126;
  v128 = v250[1];
  ++v250;
  v215 = v128;
  (v128)(v124, v114);
  if (v121 == v125 && v123 == v127)
  {
  }

  else
  {
    v129 = sub_1E65E6C18();

    if ((v129 & 1) == 0)
    {
      v130 = sub_1E65D8198();
      v131 = sub_1E65D9AA8();
      v133 = sub_1E637CA94(v131, v132, v130);

      if (v133)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v134 = *(sub_1E65DADF8() - 8);
        v135 = *(v134 + 72);
        v136 = (*(v134 + 80) + 32) & ~*(v134 + 80);
        v137 = swift_allocObject();
        *(v137 + 16) = xmmword_1E65EB9E0;
        v138 = (v137 + v136);
        *v138 = sub_1E65D9AA8();
        v138[1] = v139;
        swift_storeEnumTagMultiPayload();
        *(v138 + v135) = 1;
        swift_storeEnumTagMultiPayload();
        v140 = sub_1E65D80A8();
        v255 = v137;
        sub_1E5FA9E2C(v140);
        v120 = v255;
      }
    }
  }

  v141 = *(sub_1E65D8068() + 16);

  v142 = v243;
  if (v141)
  {
    v143 = sub_1E65D8068();
    sub_1E63C4134(v253, (v229 + v117), v143, v142);

    v144 = 0;
  }

  else
  {
    v144 = 1;
  }

  v214 = v120;
  v145 = v242 + 56;
  v146 = *(v242 + 56);
  v146(v142, v144, 1, v252);
  v213 = sub_1E63B0704(v118);

  v147 = v230;
  sub_1E65D8128();
  v148 = v147;
  v149 = v217;
  sub_1E5E1D964(v148, v217, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v212 = v117;
  if (EnumCaseMultiPayload == 1)
  {
    v216 = v145;
    v151 = v205;
    v152 = v220;
    v153 = v207;
    (*(v205 + 32))(v220, v149, v207);
    v154 = v202;
    (*(v151 + 16))(v202, v152, v153);
    v217 = v146;
    v155 = v203;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    v156 = v155;
    v146 = v217;
    (*(v206 + 8))(v156, v208);
    sub_1E65DA0A8();
    sub_1E6364AD4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v157 = v218;
    sub_1E65DC438();
    v158 = *(v151 + 8);
    v158(v154, v153);
    v158(v220, v153);
  }

  else
  {
    v159 = v200;
    v160 = v198;
    v161 = v149;
    v162 = v201;
    (*(v200 + 32))(v198, v161, v201);
    v163 = v199;
    (*(v159 + 16))(v199, v160, v162);
    v157 = v218;
    sub_1E6134678(v163, v218);
    (*(v159 + 8))(v160, v162);
  }

  sub_1E6321560(v230, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v157, v244, &qword_1ED074530, &qword_1E65F0CA8);
  v164 = sub_1E65D81E8();
  v167 = v214;
  if (v166 == -1)
  {
    v171 = 4;
  }

  else
  {
    v255 = v164;
    v256 = v165;
    v257 = v166 & 1;
    v168 = v164;
    v169 = v165;
    v170 = v166;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v168, v169, v170);
    v171 = v259;
  }

  LODWORD(v220) = v171;
  v172 = v238;
  v173 = v252;
  (*(v242 + 16))(v238, v251, v252);
  v174 = 1;
  v146(v172, 0, 1, v173);
  sub_1E65D8158();
  v175 = v231;
  if (*(v167 + 16))
  {
    sub_1E63C4134(v253, (v229 + v212), v167, v231);
    v174 = 0;
  }

  v146(v175, v174, 1, v252);
  sub_1E65D8178();
  v176 = type metadata accessor for ActionButtonDescriptor(0);
  v230 = v176;
  v177 = *(*(v176 - 8) + 56);
  v178 = v234;
  v177();
  v179 = v227;
  (v177)(v227, 1, 1, v176);
  v180 = sub_1E65D8088();
  v182 = v181;
  v229 = v181;
  v183 = sub_1E65D80C8();
  v185 = v184;
  v187 = v186;
  v188 = sub_1E65D81B8();
  v187 &= 1u;
  v195 = v180;
  v194 = v178;
  v189 = v231;
  v190 = v233;
  sub_1E63A0574(v240, v244, v213, v220, v238, v245, v231, v233, v246, v243, v258, v194, v179, v195, v182, v183, v185, v187, v188, v191, 7u);

  sub_1E5F87058(v183, v185, v187);

  sub_1E5DFE50C(v179, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v234, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v190, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v189, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v245, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v238, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D964(v241, v221, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v246, v235, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v228);
  sub_1E622BB88(v251, v197);
  v254 = type metadata accessor for ArtworkDescriptor();
  v245 = type metadata accessor for ContextMenu(0);
  v238 = type metadata accessor for ItemMetrics();
  v234 = type metadata accessor for ViewDescriptor();
  v233 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v192 = v249;
  sub_1E65E0488();
  sub_1E5DFE50C(v246, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v244, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v243, &qword_1ED072D90, &qword_1E66040F0);
  (*(v242 + 8))(v251, v252);
  (v215)(v236, v232);
  (*(v225 + 8))(v253, v226);
  sub_1E6321560(v241, type metadata accessor for ItemContext);
  (*(v223 + 8))(v240, v224);
  sub_1E6321560(v239, MEMORY[0x1E699D780]);
  (*(v237 + 8))(v247, v248);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v193 - 8) + 56))(v192, 0, 1, v193);
}

uint64_t sub_1E636472C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E639E238(a1, v4, v5, v6, v1 + 40);
}

uint64_t sub_1E63647F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E6360780(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E63648A0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E6360AD8(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E63649B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E6361CC4(a1, v1 + v5);
}

uint64_t sub_1E6364AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6364B1C(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t ToastError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E6364C84()
{
  result = qword_1ED0788A8;
  if (!qword_1ED0788A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0788A8);
  }

  return result;
}

uint64_t sub_1E6364CE8()
{
  v0 = sub_1E65D9CF8();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);

    sub_1E65E6468();
  }

  else
  {
  }

  sub_1E65D9CF8();
  sub_1E65D9CD8();
  sub_1E65D9D18();
  v2 = sub_1E65D9CE8();
  v3 = v2;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v11 = v9;
    if (v7)
    {
LABEL_11:
      v12 = *(v3 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6));
      v7 &= v7 - 1;
      v21 = *v12;
      v22 = *(v12 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077030, &qword_1E65F92F8);
      sub_1E65D7FB8();
      switch(v20)
      {
        case 0:
        case 2:
        case 9:
        case 12:
        case 13:
          continue;
        case 1:
          v19 = 0;
          goto LABEL_22;
        case 3:
          v13 = 2;
          goto LABEL_21;
        case 4:
          v13 = 1;
          goto LABEL_21;
        case 5:
          v13 = 3;
          goto LABEL_21;
        case 6:
          v13 = 4;
          goto LABEL_21;
        case 7:
          v13 = 5;
          goto LABEL_21;
        case 8:
          v13 = 6;
          goto LABEL_21;
        case 10:
          v13 = 7;
          goto LABEL_21;
        case 11:
          v13 = 8;
LABEL_21:
          v19 = v13;
LABEL_22:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1E64F6D5C(0, *(v10 + 2) + 1, 1, v10);
          }

          v15 = *(v10 + 2);
          v14 = *(v10 + 3);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v17 = sub_1E64F6D5C((v14 > 1), v15 + 1, 1, v10);
            v16 = v15 + 1;
            v10 = v17;
          }

          *(v10 + 2) = v16;
          v10[v15 + 32] = v19;
          continue;
        default:
          goto LABEL_29;
      }
    }

    break;
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      JUMPOUT(0);
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  sub_1E600A0BC(v10);

  return sub_1E65E1008();
}

uint64_t sub_1E6364F9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v69 = a3;
  v66 = a2;
  v76 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v65 = *(v5 - 8);
  v75 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788B0, &qword_1E65FDFD0);
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v60 - v9;
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v60 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v64 = &v60 - v23;
  v25 = sub_1E65DE978();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v62 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E65DE728();
  v68 = *(v74 - 8);
  v28 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *v3;
  sub_1E5E1D9CC(v3, v24, type metadata accessor for AppComposer);
  v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v31 = v30 + v12;
  v32 = swift_allocObject();
  sub_1E5E1FA80(v24, v32 + v30);
  sub_1E5E1D9CC(v4, v22, type metadata accessor for AppComposer);
  v33 = swift_allocObject();
  sub_1E5E1FA80(v22, v33 + v30);
  sub_1E5E1D9CC(v4, v19, type metadata accessor for AppComposer);
  v34 = swift_allocObject();
  sub_1E5E1FA80(v19, v34 + v30);
  v61 = v4;
  sub_1E5E1D9CC(v4, v16, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  sub_1E5E1FA80(v16, v35 + v30);
  v36 = v4;
  v37 = v63;
  sub_1E5E1D9CC(v36, v63, type metadata accessor for AppComposer);
  v38 = swift_allocObject();
  sub_1E5E1FA80(v37, v38 + v30);
  sub_1E65DE968();
  sub_1E65DE718();
  v39 = v72;
  sub_1E636936C(v76, v72);
  v40 = *(v65 + 80);
  v41 = (v40 + 16) & ~v40;
  v42 = (v75 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_1E5FAB460(v39, v43 + v41, &qword_1ED073988, &unk_1E65F72F0);
  *(v43 + v42) = v66;
  type metadata accessor for AppFeature();
  sub_1E6369488(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v65 = sub_1E6369488(&qword_1ED0788B8, MEMORY[0x1E699CBF0]);

  sub_1E65E4DE8();
  v44 = v64;
  sub_1E5E1D9CC(v61, v64, type metadata accessor for AppComposer);
  v45 = v69;
  v46 = *v69;
  v47 = v69[5];
  v61 = v69[3];
  v62 = v47;
  v63 = v69[7];
  v66 = v69[9];
  v48 = v72;
  sub_1E636936C(v76, v72);
  v49 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  sub_1E5E1FA80(v44, v50 + v30);
  v51 = (v50 + v49);
  v52 = v45[3];
  v51[2] = v45[2];
  v51[3] = v52;
  v51[4] = v45[4];
  v53 = v45[1];
  *v51 = *v45;
  v51[1] = v53;
  sub_1E5FAB460(v48, v50 + ((v49 + v40 + 80) & ~v40), &qword_1ED073988, &unk_1E65F72F0);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E636968C;
  *(v54 + 24) = v50;

  v56 = v73;
  v55 = v74;
  v57 = v77;
  v58 = sub_1E65E4F08();

  (*(v70 + 8))(v57, v71);
  (*(v68 + 8))(v56, v55);
  return v58;
}

uint64_t sub_1E6365754@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = sub_1E65DE788();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E60EF310(v9);
  sub_1E5DFE50C(v5, &qword_1ED0737C8, &unk_1E6605140);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1E5DFE50C(v9, &qword_1ED075FB8, &qword_1E65F4690);
    v16 = 0;
    v17 = -4;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v18 = sub_1E65DE778();
    result = (*(v11 + 8))(v14, v10);
    v16 = v18;
    v17 = 64;
  }

  *a1 = v16;
  *(a1 + 8) = v17;
  return result;
}

uint64_t sub_1E6365990(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v23[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  v16 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v12 + 8))(v15, v11);
  sub_1E5FAB460(v10, v8, &qword_1ED075800, &unk_1E6606280);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = *v8;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v8, &qword_1ED075800, &unk_1E6606280);
LABEL_8:
    v21 = 0;
    return v21 & 1;
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
  v19 = *v8;
  v20 = sub_1E65D76A8();
  EnumCaseMultiPayload = (*(*(v20 - 8) + 8))(v8 + v18, v20);
LABEL_6:
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v23[-2] = v23[0];
  v21 = sub_1E5F95F4C(sub_1E636B2F0, &v23[-4], v19);

  return v21 & 1;
}

uint64_t sub_1E6365C38@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = sub_1E65DE788();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E60EF310(v9);
  sub_1E5DFE50C(v5, &qword_1ED0737C8, &unk_1E6605140);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1E5DFE50C(v9, &qword_1ED075FB8, &qword_1E65F4690);
LABEL_6:
    v17 = 0;
    v18 = -4;
    goto LABEL_7;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = sub_1E65DE768();
  if (!*(v16 + 16))
  {
    (*(v11 + 8))(v14, v10);

    goto LABEL_6;
  }

  v17 = *(v16 + 32);

  v18 = sub_1E65DE778();
  result = (*(v11 + 8))(v14, v10);
LABEL_7:
  *a1 = v17;
  *(a1 + 8) = v18;
  return result;
}

uint64_t sub_1E6365EAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v24[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  v16 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v12 + 8))(v15, v11);
  sub_1E5FAB460(v10, v8, &qword_1ED075800, &unk_1E6606280);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = *v8;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v8, &qword_1ED075800, &unk_1E6606280);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
  v19 = *v8;
  v20 = sub_1E65D76A8();
  EnumCaseMultiPayload = (*(*(v20 - 8) + 8))(v8 + v18, v20);
LABEL_6:
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v24[-2] = v24[0];
  v21 = sub_1E5F95F4C(sub_1E636B2D0, &v24[-4], v19);

  v22 = v21 ^ 1;
  return v22 & 1;
}

uint64_t sub_1E6366158(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  sub_1E65DE488();
  if (v1 == v6 && v2 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E63661EC(uint64_t a1)
{
  v1[7] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D0, &qword_1E65FE058) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6366294, 0, 0);
}

uint64_t sub_1E6366294()
{
  v1 = v0[7];
  v0[10] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[11] = sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6366344, v3, v2);
}

uint64_t sub_1E6366344()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];

  sub_1E5E20198(26, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  v0[13] = v4;
  v5 = swift_dynamicCast();
  v6 = *(v4 - 8);
  v0[14] = v6;
  v7 = *(v6 + 56);
  if (v5)
  {
    v8 = v6;
    v10 = v0[8];
    v9 = v0[9];
    v7(v10, 0, 1, v4);
    (*(v8 + 32))(v9, v10, v4);
    v11 = 0;
  }

  else
  {
    v12 = v0[8];
    v11 = 1;
    v7(v12, 1, 1, v4);
    sub_1E5DFE50C(v12, &qword_1ED0788D0, &qword_1E65FE058);
  }

  v7(v0[9], v11, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E63664F0, 0, 0);
}

uint64_t sub_1E63664F0()
{
  v1 = v0[14];
  v2 = v0[9];
  v0[15] = v1;
  if ((*(v1 + 48))(v2, 1) == 1)
  {
    sub_1E5DFE50C(v2, &qword_1ED0788D0, &qword_1E65FE058);
    v4 = v0[8];
    v3 = v0[9];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[11];
    v0[16] = sub_1E65E6048();
    v9 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E636663C, v9, v8);
  }
}

uint64_t sub_1E636663C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[9];

  sub_1E65E4E28();
  (*(v2 + 8))(v4, v3);
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E63666DC()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E63661EC(v0 + v3);
}

uint64_t sub_1E63667A8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E62D4088(a1, a2, v2 + v7);
}

uint64_t sub_1E6366888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[193] = a4;
  v4[187] = a3;
  v4[181] = a2;
  v4[175] = a1;
  v5 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  v4[199] = swift_task_alloc();
  v6 = sub_1E65D8E88();
  v4[205] = v6;
  v7 = *(v6 - 8);
  v4[211] = v7;
  v8 = *(v7 + 64) + 15;
  v4[217] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450) - 8) + 64) + 15;
  v4[223] = swift_task_alloc();
  v10 = sub_1E65D8668();
  v4[229] = v10;
  v11 = *(v10 - 8);
  v4[235] = v11;
  v12 = *(v11 + 64) + 15;
  v4[236] = swift_task_alloc();
  v13 = type metadata accessor for AppComposer();
  v4[237] = v13;
  v14 = *(v13 - 8);
  v4[238] = v14;
  v4[239] = *(v14 + 64);
  v4[240] = swift_task_alloc();
  v4[241] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6366A84, 0, 0);
}

uint64_t sub_1E6366A84()
{
  v1 = v0[241];
  v2 = v0[239];
  v3 = v0[238];
  v11 = v0[193];
  v12 = v0[240];
  v4 = v0[181];
  v5 = v0[175];
  sub_1E5E1D9CC(v11, v1, type metadata accessor for AppComposer);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[242] = v7;
  sub_1E5E1FA80(v1, v7 + v6);
  v8 = (v7 + ((v6 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v8 = v5;
  v8[1] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788C0, &qword_1E65FE040);
  swift_asyncLet_begin();
  sub_1E5E1D9CC(v11, v12, type metadata accessor for AppComposer);
  v9 = swift_allocObject();
  v0[243] = v9;
  sub_1E5E1FA80(v12, v9 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765A8, &qword_1E65F5A38);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 169, sub_1E6366C50, v0 + 162);
}

uint64_t sub_1E6366C50()
{
  *(v1 + 1952) = v0;
  if (v0)
  {
    v2 = sub_1E6367508;
  }

  else
  {
    v2 = sub_1E6366C84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6366C84()
{
  v16 = v0;
  v1 = v0[235];
  v2 = v0[229];
  v3 = v0[223];
  v4 = v0[169];

  sub_1E6059E28(v5, v3);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1E5DFE50C(v0[223], &qword_1ED075FE0, &unk_1E660F450);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = v0[181];
    v7 = sub_1E65E3B68();
    __swift_project_value_buffer(v7, qword_1EE2EA2A0);

    v8 = sub_1E65E3B48();
    v9 = sub_1E65E6328();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[181];
      v11 = v0[175];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1E5DFD4B0(v11, v10, &v15);
      _os_log_impl(&dword_1E5DE9000, v8, v9, "Failed to find workout with identifier %s to add to stack.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E694F1C0](v13, -1, -1);
      MEMORY[0x1E694F1C0](v12, -1, -1);
    }

    return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E63674B0, v0 + 182);
  }

  else
  {
    (*(v0[235] + 32))(v0[236], v0[223], v0[229]);

    return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 167, sub_1E6366EE4, v0 + 194);
  }
}

uint64_t sub_1E6366EE4()
{
  *(v1 + 1960) = v0;
  if (v0)
  {
    v2 = sub_1E6367650;
  }

  else
  {
    v2 = sub_1E6366F18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1E6366F18()
{
  if ((*(v0 + 1344) & 1) == 0 && *(v0 + 1336) == -1)
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 1888);
    v2 = *(v0 + 1736);
    v16 = *(v0 + 1640);
    v17 = *(v0 + 1896);
    v3 = *(v0 + 1592);
    v18 = *(v0 + 1544);
    v19 = *(v0 + 1688);
    v4 = *(v0 + 1496);
    v5 = *(v0 + 1448);
    v6 = *(v0 + 1400);

    sub_1E65D8658();
    sub_1E65D8618();
    sub_1E65D7698();
    sub_1E65D88E8();
    swift_storeEnumTagMultiPayload();
    v7 = *(v17 + 20);
    v8 = v18 + *(type metadata accessor for AppEnvironment() + 132) + v7;
    Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
    *(v0 + 1968) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073118, &qword_1E65ECF70);
    v11 = *(v19 + 72);
    v12 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v13 = swift_allocObject();
    *(v0 + 1976) = v13;
    *(v13 + 16) = xmmword_1E65EA670;
    sub_1E5E1D9CC(v2, v13 + v12, MEMORY[0x1E69CBBF0]);
    v20 = (Queue + *Queue);
    v14 = Queue[1];
    v15 = swift_task_alloc();
    *(v0 + 1984) = v15;
    *v15 = v0;
    v15[1] = sub_1E6367178;

    v20(v13);
  }
}

uint64_t sub_1E6367178()
{
  v2 = *v1;
  v3 = *(*v1 + 1984);
  v4 = *v1;
  *(*v1 + 1992) = v0;

  v5 = *(v2 + 1976);
  v6 = *(v2 + 1968);
  if (v0)
  {

    v7 = sub_1E63677F8;
  }

  else
  {

    v7 = sub_1E63672DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63672DC()
{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[229];
  sub_1E636B1A8(v0[217], MEMORY[0x1E69CBBF0]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E6367388, v0 + 224);
}

uint64_t sub_1E63673E0()
{
  v1 = v0[243];
  v2 = v0[242];
  v3 = v0[241];
  v4 = v0[240];
  v5 = v0[236];
  v6 = v0[223];
  v7 = v0[217];
  v8 = v0[199];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6367580()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[242];
  v4 = v0[241];
  v5 = v0[240];
  v6 = v0[236];
  v7 = v0[223];
  v8 = v0[217];
  v9 = v0[199];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6367650()
{
  (*(v0[235] + 8))(v0[236], v0[229]);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E63676D0, v0 + 200);
}

uint64_t sub_1E6367728()
{
  v1 = v0[245];
  v2 = v0[243];
  v3 = v0[242];
  v4 = v0[241];
  v5 = v0[240];
  v6 = v0[236];
  v7 = v0[223];
  v8 = v0[217];
  v9 = v0[199];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63677F8()
{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[229];
  sub_1E636B1A8(v0[217], MEMORY[0x1E69CBBF0]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E63678A4, v0 + 212);
}

uint64_t sub_1E63678FC()
{
  v1 = v0[249];
  v2 = v0[243];
  v3 = v0[242];
  v4 = v0[241];
  v5 = v0[240];
  v6 = v0[236];
  v7 = v0[223];
  v8 = v0[217];
  v9 = v0[199];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63679CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6366888(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E6367ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6367AE0, 0, 0);
}

uint64_t sub_1E6367AE0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v3 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 48);
  v6 = CatalogService.fetchRemoteCatalogWorkouts.getter();
  v0[12] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v9 = sub_1E600AA08(inited);
  v0[13] = v9;
  swift_setDeallocating();
  sub_1E6065BF0(inited + 32);
  v13 = (v6 + *v6);
  v10 = v6[1];
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1E6367C74;

  return v13(v9);
}

uint64_t sub_1E6367C74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_1E6367DD0;
  }

  else
  {
    v8 = v4[12];
    v9 = v4[13];

    v4[16] = a1;
    v7 = sub_1E6367DAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6367DD0()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1E6367E3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D8948();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6367EFC, 0, 0);
}

uint64_t sub_1E6367EFC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  v0[7] = v5;
  v9 = (Queue + *Queue);
  v6 = Queue[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1E6368010;

  return v9();
}

uint64_t sub_1E6368010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v8 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = sub_1E6180EA8;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_1E636812C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E636812C()
{
  v13 = v0;
  v1 = v0[10];
  v12 = v0[9];

  sub_1E636978C(&v12);
  if (v1)
  {
  }

  else
  {
    v3 = v0[9];

    v4 = *(v12 + 2);
    if (v4)
    {
      v6 = v0[5];
      v5 = v0[6];
      v7 = v0[4];
      (*(v6 + 16))(v5, &v12[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v4 - 1)], v7);

      v8 = sub_1E65D8918();
      (*(v6 + 8))(v5, v7);
    }

    else
    {

      v8 = 0;
    }

    v9 = v0[6];
    v10 = v0[2];
    *v10 = v8;
    *(v10 + 8) = v4 == 0;

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1E6368290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8948();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6368360, 0, 0);
}

uint64_t sub_1E6368360()
{
  v1 = *(v0 + 32);
  *(v0 + 136) = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 140) = *(type metadata accessor for AppEnvironment() + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 72) = v3;
  v7 = (Queue + *Queue);
  v4 = Queue[1];
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1E636847C;

  return v7();
}

uint64_t sub_1E636847C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_1E6368BE0;
  }

  else
  {
    v5 = sub_1E6368590;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6368590()
{
  v43 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v0 + 48);
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      v8 = *(v5 + 16);
      v8(*(v0 + 56), *(v0 + 88) + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, *(v0 + 40));
      if (sub_1E65D88F8() == v7 && v9 == v6)
      {
        v27 = *(v0 + 88);

        goto LABEL_18;
      }

      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      v13 = sub_1E65E6C18();

      if (v13)
      {
        break;
      }

      ++v4;
      (*(v5 + 8))(*(v0 + 56), *(v0 + 40));
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v28 = *(v0 + 88);
LABEL_18:

    v29 = *(v0 + 140);
    v30 = *(v0 + 64);
    v31 = *(v0 + 40);
    v32 = *(v0 + 32) + *(v0 + 136);
    (*(*(v0 + 48) + 32))(v30, *(v0 + 56), v31);
    Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
    *(v0 + 104) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073118, &qword_1E65ECF70);
    v35 = *(sub_1E65D8E88() - 8);
    v36 = *(v35 + 72);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = swift_allocObject();
    *(v0 + 112) = v38;
    *(v38 + 16) = xmmword_1E65EA670;
    v8(v38 + v37, v30, v31);
    swift_storeEnumTagMultiPayload();
    v41 = (Queue + *Queue);
    v39 = Queue[1];
    v40 = swift_task_alloc();
    *(v0 + 120) = v40;
    *v40 = v0;
    v40[1] = sub_1E63689F8;

    return v41(v38);
  }

  else
  {
LABEL_10:
    v14 = *(v0 + 88);

    if (qword_1EE2D7790 != -1)
    {
LABEL_22:
      swift_once();
    }

    v15 = *(v0 + 24);
    v16 = sub_1E65E3B68();
    __swift_project_value_buffer(v16, qword_1EE2EA2A0);

    v17 = sub_1E65E3B48();
    v18 = sub_1E65E6328();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1E5DFD4B0(v20, v19, &v42);
      _os_log_impl(&dword_1E5DE9000, v17, v18, "Failed to find workout with identifer %s to remove from stack.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E694F1C0](v22, -1, -1);
      MEMORY[0x1E694F1C0](v21, -1, -1);
    }

    v24 = *(v0 + 56);
    v23 = *(v0 + 64);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1E63689F8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {

    v7 = sub_1E6368C54;
  }

  else
  {

    v7 = sub_1E6368B5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6368B5C()
{
  (*(v0[6] + 8))(v0[8], v0[5]);
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6368BE0()
{
  v1 = v0[9];

  v2 = v0[12];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6368C54()
{
  (*(v0[6] + 8))(v0[8], v0[5]);
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6368CD8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6368290(a1, a2, v2 + v7);
}

uint64_t sub_1E6368DB8(char a1, char a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  v4 = type metadata accessor for ToastAction();
  *(v3 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6368E54, 0, 0);
}

uint64_t sub_1E6368E54()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = *(v2 + 8);
  v4 = sub_1E65DAE38();
  if (v4 == sub_1E65DAE38())
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 49);
    v8 = *(v0 + 48);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072838, &qword_1E65EBE80);
    v10 = *(v9 + 48);
    *v6 = 1;
    v6[v10] = v7;
    type metadata accessor for ToastResource();
    swift_storeEnumTagMultiPayload();
    v6[*(v9 + 64)] = 1;
    swift_storeEnumTagMultiPayload();
    v11 = (v2 + *(type metadata accessor for AppEnvironment() + 128));
    v12 = v11[1];
    v23 = (*v11 + **v11);
    v13 = (*v11)[1];
    v14 = swift_task_alloc();
    *(v0 + 40) = v14;
    *v14 = v0;
    v14[1] = sub_1E6369110;
    v15 = *(v0 + 32);

    return v23(v15);
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v17 = sub_1E65E3B68();
    __swift_project_value_buffer(v17, qword_1EE2EA2A0);
    v18 = sub_1E65E3B48();
    v19 = sub_1E65E6338();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E5DE9000, v18, v19, "Ignoring stack toast presentation for unsupported platform", v20, 2u);
      MEMORY[0x1E694F1C0](v20, -1, -1);
    }

    v21 = *(v0 + 32);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1E6369110()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E636920C, 0, 0);
}

uint64_t sub_1E636920C()
{
  sub_1E636B1A8(*(v0 + 32), type metadata accessor for ToastAction);
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E636928C(char a1, char a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6368DB8(a1, a2, v2 + v7);
}

uint64_t sub_1E636936C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6369488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63694D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v23 = *a1;
  HIDWORD(v22) = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  sub_1E65DE488();
  v10 = v24;
  v11 = v25;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *a4;
  v14 = a4[3];
  v15 = a4[5];
  v16 = a4[7];
  v17 = a4[9];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v23;
  *(v18 + 40) = BYTE4(v22);
  *(v18 + 48) = v10;
  *(v18 + 56) = v11;
  v19 = *(a4 + 3);
  *(v18 + 96) = *(a4 + 2);
  *(v18 + 112) = v19;
  *(v18 + 128) = *(a4 + 4);
  v20 = *(a4 + 1);
  *(v18 + 64) = *a4;
  *(v18 + 80) = v20;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v9, &unk_1E65FE028, v18);
}

uint64_t sub_1E636968C(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0) - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 80) & ~*(v8 + 80));

  return sub_1E63694D0(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E636978C(void **a1)
{
  v2 = *(sub_1E65D8948() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B294(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E6369834(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E6369834(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
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
        sub_1E65D8948();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D8948() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E6369C08(v8, v9, a1, v4);
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
    return sub_1E6369960(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E6369960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D8948();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v34 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = v17 + v20 * (a3 - 1);
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      v46(v48, v23, v8);
      v27 = v49;
      v26(v49, v24, v8);
      v28 = sub_1E65D8918();
      v29 = sub_1E65D8918();
      v30 = *v45;
      (*v45)(v27, v8);
      result = v30(v25, v8);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = v39 + v35;
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v24, v32, v8);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6369C08(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_1E65D8948();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v122 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v132 = &v115 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v138 = &v115 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v137 = &v115 - v19;
  v20 = a3[1];
  v127 = v18;
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E636AC44(v22);
      v22 = result;
    }

    v140 = v22;
    v111 = *(v22 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v22[16 * v111];
        v113 = *&v22[16 * v111 + 24];
        sub_1E636A5EC(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v22[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1E636AC44(v22);
        }

        if (v111 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v22[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v22;
        result = sub_1E636ABB8(v111 - 1);
        v22 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v116 = a4;
  v21 = 0;
  v135 = (v18 + 8);
  v136 = v18 + 16;
  v134 = (v18 + 32);
  v22 = MEMORY[0x1E69E7CC0];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v129 = v20;
      v117 = v6;
      v23 = *a3;
      v119 = v21;
      v24 = v127[9];
      v5 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v133 = v23;
      v26 = v9;
      v27 = v127[2];
      v28 = v137;
      v27(v137, v5, v26);
      v29 = &v25[v24 * v21];
      v30 = v138;
      v125 = v27;
      v27(v138, v29, v26);
      v130 = sub_1E65D8918();
      v126 = sub_1E65D8918();
      v31 = v127[1];
      v31(v30, v26);
      v124 = v31;
      result = (v31)(v28, v26);
      v32 = v119 + 2;
      v131 = v24;
      v33 = &v133[v24 * (v119 + 2)];
      while (1)
      {
        v34 = v129;
        if (v129 == v32)
        {
          break;
        }

        v35 = v125;
        LODWORD(v133) = v130 < v126;
        v36 = v137;
        v37 = v139;
        (v125)(v137, v33, v139);
        v38 = v138;
        v35(v138, v5, v37);
        v39 = sub_1E65D8918();
        v40 = sub_1E65D8918();
        v41 = v124;
        (v124)(v38, v37);
        result = v41(v36, v37);
        v22 = v128;
        ++v32;
        v33 += v131;
        v5 += v131;
        if (((v133 ^ (v39 >= v40)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v6 = v117;
      v21 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v34 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v34)
        {
          v42 = v131 * (v34 - 1);
          v5 = v34 * v131;
          v129 = v34;
          v43 = v34;
          v44 = v119;
          v45 = v119 * v131;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v134;
              (*v134)(v122, &v46[v45], v9);
              if (v45 < v42 || &v46[v45] >= &v46[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v47)(&v46[v42], v122, v9);
              a3 = v120;
              v22 = v128;
            }

            ++v44;
            v42 -= v131;
            v5 -= v131;
            v45 += v131;
          }

          while (v44 < v43);
          v6 = v117;
          v21 = v119;
          v34 = v129;
        }
      }
    }

    v48 = a3[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v116)
      {
        if (__OFADD__(v21, v116))
        {
          goto LABEL_124;
        }

        if (v21 + v116 >= v48)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v21 + v116;
        }

        if (v5 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v5)
        {
          break;
        }
      }
    }

    v5 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_1E636ADD0((v49 > 1), v50 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v5;
    v53 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v50)
    {
      while (1)
      {
        v5 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v5 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v5];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v5 - 1;
        if (v5 - 1 >= v51)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v5 + 40];
        sub_1E636A5EC(*a3 + v127[9] * v92, *a3 + v127[9] * *&v22[16 * v5 + 32], *a3 + v127[9] * v93, v53);
        if (v6)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1E636AC44(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v140 = v22;
        result = sub_1E636ABB8(v5);
        v22 = v140;
        v51 = *(v140 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v5 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v5 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v123;
    if (v123 >= v20)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v95 = *a3;
  v96 = v127[9];
  v133 = v127[2];
  v97 = &v95[v96 * (v34 - 1)];
  v130 = -v96;
  v131 = v95;
  v119 = v21;
  v98 = (v21 - v34);
  v121 = v96;
  v99 = &v95[v34 * v96];
  v123 = v5;
LABEL_85:
  v129 = v34;
  v124 = v99;
  v125 = v98;
  v126 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v137;
    v102 = v133;
    (v133)(v137, v99, v9);
    v103 = v138;
    v102(v138, v100, v139);
    v104 = sub_1E65D8918();
    v105 = sub_1E65D8918();
    v106 = *v135;
    v107 = v103;
    v9 = v139;
    (*v135)(v107, v139);
    result = v106(v101, v9);
    if (v104 >= v105)
    {
LABEL_84:
      v34 = v129 + 1;
      v97 = v126 + v121;
      v98 = v125 - 1;
      v5 = v123;
      v99 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v21 = v119;
      a3 = v120;
      v22 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v108 = *v134;
    v109 = v132;
    (*v134)(v132, v99, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v9);
    v100 += v130;
    v99 += v130;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E636A5EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = sub_1E65D8948();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v59 = &v49 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v66 = a1;
  v65 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v19;
    if (v19 >= 1)
    {
      v34 = -v15;
      v53 = a4;
      v54 = (v8 + 16);
      v52 = (v8 + 8);
      v35 = v33;
      v62 = a1;
      v55 = v34;
      do
      {
        v50 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v38 = a3;
        v56 = v36;
        v57 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v66 = v36;
            v64 = v50;
            goto LABEL_58;
          }

          v39 = v38;
          v51 = v33;
          v61 = v38 + v34;
          v40 = v35 + v34;
          v41 = *v54;
          v42 = v59;
          v43 = v35 + v34;
          v44 = v35;
          v45 = v63;
          (*v54)(v59, v43, v63);
          v46 = v60;
          (v41)(v60, v37, v45);
          v58 = sub_1E65D8918();
          v47 = sub_1E65D8918();
          v48 = *v52;
          (*v52)(v46, v45);
          v48(v42, v45);
          if (v58 < v47)
          {
            break;
          }

          v33 = v40;
          v38 = v61;
          if (v39 < v44 || v61 >= v44)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v57;
            a1 = v62;
          }

          else
          {
            v37 = v57;
            a1 = v62;
            if (v39 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v40;
          v34 = v55;
          v36 = v56;
          if (v40 <= v53)
          {
            a2 = v56;
            goto LABEL_57;
          }
        }

        v35 = v44;
        if (v39 < v56 || v61 >= v56)
        {
          a3 = v61;
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v62;
          v33 = v51;
          v34 = v55;
        }

        else
        {
          a3 = v61;
          a2 = v57;
          a1 = v62;
          v33 = v51;
          v34 = v55;
          if (v39 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v53);
    }

LABEL_57:
    v66 = a2;
    v64 = v33;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v18;
    v64 = a4 + v18;
    v61 = a3;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v56 = v15;
      v57 = v8 + 16;
      v54 = (v8 + 8);
      v55 = v21;
      do
      {
        v62 = a1;
        v22 = v59;
        v23 = v63;
        v24 = v55;
        v55(v59, a2, v63);
        v25 = v60;
        v24(v60, a4, v23);
        v26 = a2;
        v27 = sub_1E65D8918();
        v28 = sub_1E65D8918();
        v29 = *v54;
        (*v54)(v25, v23);
        v29(v22, v23);
        if (v27 >= v28)
        {
          v30 = v56;
          v32 = a4 + v56;
          v31 = v62;
          if (v62 < a4 || v62 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v62 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v32;
          a4 += v30;
        }

        else
        {
          v30 = v56;
          a2 = v26 + v56;
          v31 = v62;
          if (v62 < v26 || v62 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v31 + v30;
        v66 = a1;
      }

      while (a4 < v58 && a2 < v61);
    }
  }

LABEL_58:
  sub_1E636ACE8(&v66, &v65, &v64, MEMORY[0x1E69CB6B0]);
  return 1;
}

uint64_t sub_1E636ABB8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E636AC44(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E636ACE8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1E636ADD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788C8, &qword_1E660EF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E636AED4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E608FA38(a1, v4, v5, v6, v9, v7, v8, v1 + 64);
}

uint64_t sub_1E636AFB0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6367ABC(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E636B0CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6367E3C(a1, v1 + v5);
}

uint64_t sub_1E636B1A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E636B310@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for AppStateService();
  Description = v3[-1].Description;
  v62 = v3;
  v4 = Description[8];
  MEMORY[0x1EEE9AC00](v3);
  v59 = v5;
  v60 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = v49 - v8;
  v54 = type metadata accessor for SyncService();
  v52 = v54[-1].Description;
  v9 = v52[8];
  MEMORY[0x1EEE9AC00](v54);
  v53 = v10;
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CatalogService();
  v13 = v12[-1].Description;
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D8, &qword_1E65FE0B0);
  v58 = *(v55 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](v55);
  v56 = v18;
  v57 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v63 = v49 - v19;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v20 = sub_1E65E3B68();
  __swift_project_value_buffer(v20, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v21 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v22 = type metadata accessor for AppEnvironment();
  v51 = v22[7];
  v23 = v22[12];
  v24 = v22[31];
  v49[0] = *(v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  v49[1] = swift_getKeyPath();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v13[2];
  v27 = v21;
  v50 = v21;
  v26(v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v23, v12);
  v28 = v52;
  v29 = v54;
  (v52[2])(v11, v27 + v24, v54);
  v30 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v31 = (v14 + *(v28 + 80) + v30) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  (v13[4])(v32 + v30, v15, v12);
  (v28[4])(v32 + v31, v11, v29);

  v33 = v63;
  sub_1E65E4E08();
  v34 = v65;
  v35 = v55;
  v65[3] = v55;
  v34[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v37 = v58;
  v38 = *(v58 + 16);
  v38(boxed_opaque_existential_1, v33, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1E65EA670;
  v40 = sub_1E65E60A8();
  (*(*(v40 - 8) + 56))(v64, 1, 1, v40);
  v42 = v60;
  v41 = Description;
  v43 = v62;
  (Description[2])(v60, v50 + v51, v62);
  v44 = v57;
  v38(v57, v33, v35);
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v46 = (v59 + *(v37 + 80) + v45) & ~*(v37 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  (v41[4])(v47 + v45, v42, v43);
  (*(v37 + 32))(v47 + v46, v44, v35);
  *(v39 + 32) = sub_1E6059EAC(0, 0, v64, &unk_1E65FE0F0, v47);
  result = (*(v37 + 8))(v63, v35);
  v65[5] = v39;
  return result;
}

uint64_t sub_1E636B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1E65D76A8();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075380, &qword_1E65F1A08) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636BB0C, 0, 0);
}

uint64_t sub_1E636BB0C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = *(v0 + 128);
  if (Strong)
  {
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(Strong + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);

    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60F02EC(v3);
    sub_1E5DFE50C(v7, &qword_1ED075380, &qword_1E65F1A08);
    (*(v5 + 8))(v4, v6);
    if ((*(v9 + 48))(v3, 1, v8) != 1)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    (*(*(v0 + 80) + 56))(*(v0 + 128), 1, 1, *(v0 + 72));
  }

  v11 = 1;
LABEL_6:
  *(v0 + 192) = v11;
  sub_1E5DFE50C(*(v0 + 128), &qword_1ED0752D8, &qword_1E660CC30);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v12 = sub_1E65E3B68();
  *(v0 + 136) = __swift_project_value_buffer(v12, qword_1EE2EA2A0);
  v13 = sub_1E65E3B48();
  v14 = sub_1E65E6338();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1E5DE9000, v13, v14, "Syncing Catalog", v15, 2u);
    MEMORY[0x1E694F1C0](v15, -1, -1);
  }

  v16 = *(v0 + 56);

  v17 = CatalogService.requestCatalogSync.getter();
  *(v0 + 144) = v18;
  v22 = (v17 + *v17);
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  v20[1] = sub_1E636BE14;

  return v22(3);
}

uint64_t sub_1E636BE14()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  v5 = *(v2 + 144);
  if (v0)
  {

    v6 = sub_1E636D2C0;
  }

  else
  {

    v6 = sub_1E636BF5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E636BF5C()
{
  v34 = v0;
  v1 = *(v0 + 136);
  if (*(v0 + 192) == 1)
  {
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Syncing User Data", v4, 2u);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }

    v5 = *(v0 + 64);

    v6 = SyncService.startSync.getter();
    *(v0 + 160) = v7;
    v32 = (v6 + *v6);
    v8 = v6[1];
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1E636C29C;

    return v32();
  }

  else
  {
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);
    v14 = *(v0 + 40);
    sub_1E65D7688();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_1E65E3B48();
    v16 = sub_1E65E6338();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 72);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      sub_1E636D264();
      v23 = sub_1E65E6BC8();
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_1E5DFD4B0(v23, v25, &v33);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1E5DE9000, v15, v16, "Synced at %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E694F1C0](v22, -1, -1);
      MEMORY[0x1E694F1C0](v21, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v28 = *(v0 + 120);
    v27 = *(v0 + 128);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1E636C29C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  v5 = *(v2 + 160);
  if (v0)
  {

    v6 = sub_1E636D2C4;
  }

  else
  {

    v6 = sub_1E636C3E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E636C3E4()
{
  v1 = v0[8];
  v2 = SyncService.fetchRemoteSyncables.getter();
  v0[22] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1E636C4DC;

  return v7(1);
}

uint64_t sub_1E636C4DC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  v5 = *(v2 + 176);
  if (v0)
  {

    v6 = sub_1E636D2BC;
  }

  else
  {

    v6 = sub_1E636C624;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E636C624()
{
  v25 = v0;
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  sub_1E65D7688();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_1E636D264();
    v14 = sub_1E65E6BC8();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1E5DFD4B0(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Synced at %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E694F1C0](v13, -1, -1);
    MEMORY[0x1E694F1C0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[15];
  v18 = v0[16];
  v21 = v0[11];
  v20 = v0[12];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E636C810(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v6 = (*(Description + 80) + 24) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for SyncService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E636B970(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1E636C95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636CA90, 0, 0);
}

uint64_t sub_1E636CA90()
{
  v1 = v0[2];
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[10] = v3;
  v8 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E636CB8C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E636CB8C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E636CCA4, 0, 0);
}

uint64_t sub_1E636CCA4()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E636CD80;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E636CD80()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E636CE7C, 0, 0);
}

uint64_t sub_1E636CE7C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Requesting onActive Sync...", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v9 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E636D03C, v9, v8);
  }
}

uint64_t sub_1E636D03C()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D8, &qword_1E65FE0B0);
  sub_1E65E4E28();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E636CD80;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E636D108(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D8, &qword_1E65FE0B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E636C95C(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1E636D264()
{
  result = qword_1EE2D71C8;
  if (!qword_1EE2D71C8)
  {
    sub_1E65D76A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D71C8);
  }

  return result;
}

uint64_t sub_1E636D2C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788E0, &qword_1E65FE0F8);
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1E65DC148();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1E65DC128();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  sub_1E5E1DA34(v1, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_1E5E1FA80(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_1E65DC138();
  sub_1E65DC118();
  type metadata accessor for AppFeature();
  sub_1E636E014(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E636E014(&qword_1ED075750, MEMORY[0x1E699D3E0]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v19 = sub_1E65E4F08();
  (*(v21 + 8))(v5, v22);
  (*(v12 + 8))(v15, v11);
  return v19;
}

uint64_t sub_1E636D654(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636D6F4, 0, 0);
}

uint64_t sub_1E636D6F4()
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
  v7[1] = sub_1E636D810;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E636D810()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E636D928, 0, 0);
}

uint64_t sub_1E636D928()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788E8, &qword_1E65FE118);
  v3[4] = sub_1E5FED46C(&qword_1ED0788F0, &qword_1ED0788E8, &qword_1E65FE118);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47A8, &qword_1ED0721B8, &qword_1E65EA990);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E636DA60(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E636D654(a1, v1 + v5);
}

uint64_t sub_1E636DB3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1E65D99E8() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636DBCC, 0, 0);
}

uint64_t sub_1E636DBCC()
{
  v1 = *(v0 + 32);
  sub_1E5E1DA34(*(v0 + 24), v1, MEMORY[0x1E69CC610]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (v3 != 1)
  {
    v4 = *(v0 + 32);
    v5 = *(v2 + 48);
    v6 = sub_1E65D9FF8();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
    v7 = sub_1E65D8DE8();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  v8 = *(v0 + 32);
  **(v0 + 16) = v3 != 1;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E636DD34(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppState();
  v8 = *(a1 + v7[14] + 8);
  v9 = *(a1 + v7[15] + 8);
  v10 = *(a1 + v7[16] + 8);
  v11 = *(a1 + v7[17] + 8);
  v12 = a1 + v7[19];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v3 + 16))(v6, v12 + *(v13 + 28), v2);

  return sub_1E65DC0B8();
}

uint64_t sub_1E636DE9C(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DC0C8();
  v8 = type metadata accessor for AppState();
  v9 = a1 + v8[14];
  v10 = *(v9 + 8);

  *(v9 + 8) = v7;
  v11 = sub_1E65DC0A8();
  v12 = a1 + v8[15];
  v13 = *(v12 + 8);

  *(v12 + 8) = v11;
  v14 = sub_1E65DC0D8();
  v15 = a1 + v8[16];
  v16 = *(v15 + 8);

  *(v15 + 8) = v14;
  v17 = sub_1E65DC0E8();
  v18 = a1 + v8[17];
  v19 = *(v18 + 8);

  *(v18 + 8) = v17;
  sub_1E65DC098();
  v20 = a1 + v8[19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  return (*(v3 + 40))(v20 + *(v21 + 28), v6, v2);
}

uint64_t sub_1E636E014(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1E636E05C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = sub_1E65DE508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788F8, &qword_1E65FE120);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  sub_1E5DFD1CC(v1, v5, &unk_1ED077A70, &qword_1E65F2620);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v17 = *(v7 + 32);
    v17(v10, v5, v6);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v5, &unk_1ED077A70, &qword_1E65F2620);
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v17 = *(v7 + 32);
  v17(v10, v5, v6);
  v18 = sub_1E65D76A8();
  (*(*(v18 - 8) + 8))(&v5[v16], v18);
LABEL_6:
  v17(v14, v10, v6);
  v19 = 0;
LABEL_9:
  (*(v7 + 56))(v14, v19, 1, v6);
  v20 = (*(v7 + 48))(v14, 1, v6) != 1;
  sub_1E5DFE50C(v14, &qword_1ED0788F8, &qword_1E65FE120);
  return v20;
}

BOOL sub_1E636E32C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = sub_1E65DE788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  sub_1E5DFD1CC(v1, v5, &qword_1ED0737C8, &unk_1E6605140);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v17 = *(v7 + 32);
    v17(v10, v5, v6);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v5, &qword_1ED0737C8, &unk_1E6605140);
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
  v17 = *(v7 + 32);
  v17(v10, v5, v6);
  v18 = sub_1E65D76A8();
  (*(*(v18 - 8) + 8))(&v5[v16], v18);
LABEL_6:
  v17(v14, v10, v6);
  v19 = 0;
LABEL_9:
  (*(v7 + 56))(v14, v19, 1, v6);
  v20 = (*(v7 + 48))(v14, 1, v6) != 1;
  sub_1E5DFE50C(v14, &qword_1ED075FB8, &qword_1E65F4690);
  return v20;
}

BOOL sub_1E636E5FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = sub_1E65DECD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED073590, &qword_1E65ED568);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  sub_1E5DFD1CC(v1, v5, &qword_1ED073588, &unk_1E65FEFD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v17 = *(v7 + 32);
    v17(v10, v5, v6);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v5, &qword_1ED073588, &unk_1E65FEFD0);
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E50, &unk_1E65FABE0) + 48);
  v17 = *(v7 + 32);
  v17(v10, v5, v6);
  v18 = sub_1E65D76A8();
  (*(*(v18 - 8) + 8))(&v5[v16], v18);
LABEL_6:
  v17(v14, v10, v6);
  v19 = 0;
LABEL_9:
  (*(v7 + 56))(v14, v19, 1, v6);
  v20 = (*(v7 + 48))(v14, 1, v6) != 1;
  sub_1E5DFE50C(v14, &unk_1ED073590, &qword_1E65ED568);
  return v20;
}

uint64_t sub_1E636E8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v275 = a3;
  v283 = a4;
  v284 = a2;
  v286 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v281 = *(v5 - 8);
  v282 = v5;
  v6 = *(v281 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v239 = &v231 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v250 = &v231 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v238 = &v231 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v249 = &v231 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v243 = &v231 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v260 = &v231 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v279 = *(v18 - 8);
  v280 = v18;
  v19 = *(v279 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v237 = &v231 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v248 = &v231 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v236 = &v231 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v247 = &v231 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v242 = &v231 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v259 = &v231 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v276 = *(v31 - 8);
  v277 = v31;
  v32 = *(v276 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v235 = &v231 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v258 = &v231 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v234 = &v231 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v257 = &v231 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v241 = &v231 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v256 = &v231 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v273 = *(v44 - 8);
  v274 = v44;
  v45 = *(v273 + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v233 = &v231 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v255 = &v231 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v232 = &v231 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v246 = &v231 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v240 = &v231 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v262 = &v231 - v56;
  v270 = sub_1E65D76F8();
  v269 = *(v270 - 8);
  v57 = *(v269 + 64);
  v58 = MEMORY[0x1EEE9AC00](v270);
  v254 = &v231 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v253 = &v231 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v271 = &v231 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v267 = &v231 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v245 = &v231 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v244 = &v231 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v261 = &v231 - v72;
  v265 = sub_1E65D7848();
  v266 = *(v265 - 8);
  v73 = *(v266 + 64);
  v74 = MEMORY[0x1EEE9AC00](v265);
  v252 = &v231 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v251 = &v231 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v268 = &v231 - v78;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v79 = *(*(v263 - 8) + 64);
  MEMORY[0x1EEE9AC00](v263);
  v81 = (&v231 - v80);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v82 = *(*(v264 - 8) + 64);
  MEMORY[0x1EEE9AC00](v264);
  v84 = &v231 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v86 = *(v85 - 8);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v89 = &v231 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v91 = *(*(v90 - 8) + 64);
  v92 = MEMORY[0x1EEE9AC00](v90 - 8);
  v272 = &v231 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v278 = &v231 - v95;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v231 - v96;
  v285 = type metadata accessor for AppState();
  v98 = v285[77];
  sub_1E65DE488();
  v288 = v290;
  v289 = v291;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  sub_1E65E4D78();

  sub_1E65E4C98();
  (*(v86 + 8))(v89, v85);
  sub_1E65DE788();
  sub_1E634B00C();
  v287 = v97;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v84, &qword_1ED0753C0, &unk_1E6606290);
  sub_1E5DFD1CC(v4, v81, &qword_1ED073858, &unk_1E65F84A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v101 = *v81;
  v100 = v81[1];
  if (EnumCaseMultiPayload == 1)
  {
    v102 = v265;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490);
    sub_1E6370124(v81 + *(v103 + 48), v272);
    v104 = sub_1E636E32C();
    v105 = v285[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v106 = v286;
    v107 = v267;
    sub_1E65E4C98();
    v108 = v266;
    v109 = (v266 + 48);
    if (v104)
    {
      v110 = v244;
      sub_1E5E1F544(v244);
      sub_1E5DFE50C(v107, &qword_1ED071F78, &unk_1E65EA3F0);
      v111 = *v109;
      if ((*v109)(v110, 1, v102) == 1)
      {
        sub_1E65D77C8();
        v112 = v111(v110, 1, v102);
        v113 = v249;
        v114 = v247;
        v115 = v246;
        if (v112 != 1)
        {
          sub_1E5DFE50C(v110, &qword_1ED071F80, &unk_1E65F4310);
        }
      }

      else
      {
        (*(v108 + 32))(v251, v110, v102);
        v113 = v249;
        v114 = v247;
        v115 = v246;
      }

      (*(v269 + 16))(v253, v275, v270);
      v169 = *(v106 + v285[39]);
      v170 = (v106 + v285[48]);
      v171 = v170[7];
      if (*(v171 + 16) && (v172 = sub_1E6215038(v101, v100), (v173 & 1) != 0))
      {
        v174 = *(v171 + 56);
        v176 = v273;
        v175 = v274;
        v177 = v232;
        (*(v273 + 16))(v232, v174 + *(v273 + 72) * v172, v274);
        (*(v176 + 32))(v115, v177, v175);
      }

      else
      {
        (*(v273 + 104))(v115, *MEMORY[0x1E699CB70], v274);
      }

      v178 = v170[10];
      if (*(v178 + 16) && (v179 = sub_1E6215038(v101, v100), (v180 & 1) != 0))
      {
        v181 = *(v178 + 56);
        v183 = v276;
        v182 = v277;
        v184 = v234;
        (*(v276 + 16))(v234, v181 + *(v276 + 72) * v179, v277);
        (*(v183 + 32))(v257, v184, v182);
      }

      else
      {
        (*(v276 + 104))(v257, *MEMORY[0x1E699CB70], v277);
      }

      v185 = v170[9];
      if (*(v185 + 16) && (v186 = sub_1E6215038(v101, v100), (v187 & 1) != 0))
      {
        v188 = *(v185 + 56);
        v190 = v279;
        v189 = v280;
        v191 = v236;
        (*(v279 + 16))(v236, v188 + *(v279 + 72) * v186, v280);
        (*(v190 + 32))(v114, v191, v189);
      }

      else
      {
        (*(v279 + 104))(v114, *MEMORY[0x1E699CB70], v280);
      }

      v192 = v170[12];
      if (*(v192 + 16) && (v193 = sub_1E6215038(v101, v100), (v194 & 1) != 0))
      {
        v195 = *(v192 + 56);
        v197 = v281;
        v196 = v282;
        v198 = v238;
        (*(v281 + 16))(v238, v195 + *(v281 + 72) * v193, v282);
        (*(v197 + 32))(v113, v198, v196);
      }

      else
      {
        (*(v281 + 104))(v113, *MEMORY[0x1E699CB70], v282);
      }

      sub_1E5DFD1CC(v287, v278, &qword_1ED0737C8, &unk_1E6605140);

      sub_1E65DE9F8();
      v199 = v272;
    }

    else
    {
      v131 = v245;
      sub_1E5E1F544(v245);
      sub_1E5DFE50C(v107, &qword_1ED071F78, &unk_1E65EA3F0);
      v132 = *v109;
      if ((*v109)(v131, 1, v102) == 1)
      {
        sub_1E65D77C8();
        v133 = v132(v131, 1, v102) == 1;
        v134 = v250;
        v135 = v248;
        v136 = v254;
        if (!v133)
        {
          v137 = v254;
          sub_1E5DFE50C(v131, &qword_1ED071F80, &unk_1E65F4310);
          v136 = v137;
        }
      }

      else
      {
        (*(v108 + 32))(v252, v131, v102);
        v134 = v250;
        v135 = v248;
        v136 = v254;
      }

      (*(v269 + 16))(v136, v275, v270);
      LODWORD(v275) = *(v106 + v285[39]);
      v200 = (v106 + v285[48]);
      v201 = v200[7];
      if (*(v201 + 16) && (v202 = sub_1E6215038(v101, v100), (v203 & 1) != 0))
      {
        v204 = *(v201 + 56);
        v206 = v273;
        v205 = v274;
        v207 = v233;
        (*(v273 + 16))(v233, v204 + *(v273 + 72) * v202, v274);
        (*(v206 + 32))(v255, v207, v205);
      }

      else
      {
        (*(v273 + 104))(v255, *MEMORY[0x1E699CB70], v274);
      }

      v208 = v200[10];
      if (*(v208 + 16) && (v209 = sub_1E6215038(v101, v100), (v210 & 1) != 0))
      {
        v211 = *(v208 + 56);
        v213 = v276;
        v212 = v277;
        v214 = v235;
        (*(v276 + 16))(v235, v211 + *(v276 + 72) * v209, v277);
        (*(v213 + 32))(v258, v214, v212);
      }

      else
      {
        (*(v276 + 104))(v258, *MEMORY[0x1E699CB70], v277);
      }

      v215 = v200[9];
      if (*(v215 + 16) && (v216 = sub_1E6215038(v101, v100), (v217 & 1) != 0))
      {
        v218 = *(v215 + 56);
        v220 = v279;
        v219 = v280;
        v221 = v237;
        (*(v279 + 16))(v237, v218 + *(v279 + 72) * v216, v280);
        (*(v220 + 32))(v135, v221, v219);
      }

      else
      {
        (*(v279 + 104))(v135, *MEMORY[0x1E699CB70], v280);
      }

      v222 = v200[12];
      if (*(v222 + 16) && (v223 = sub_1E6215038(v101, v100), (v224 & 1) != 0))
      {
        v225 = *(v222 + 56);
        v227 = v281;
        v226 = v282;
        v228 = v239;
        (*(v281 + 16))(v239, v225 + *(v281 + 72) * v223, v282);
        (*(v227 + 32))(v134, v228, v226);
      }

      else
      {
        (*(v281 + 104))(v134, *MEMORY[0x1E699CB70], v282);
      }

      v229 = v272;
      sub_1E5DFD1CC(v272, v278, &qword_1ED0737C8, &unk_1E6605140);

      sub_1E65DE9F8();
      v199 = v229;
    }

    sub_1E5DFE50C(v199, &qword_1ED0737C8, &unk_1E6605140);
  }

  else
  {
    v116 = v285;
    v117 = v285[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v118 = v286;
    v119 = v267;
    sub_1E65E4C98();
    v120 = v261;
    sub_1E5E1F544(v261);
    sub_1E5DFE50C(v119, &qword_1ED071F78, &unk_1E65EA3F0);
    v121 = v266;
    v122 = *(v266 + 48);
    v123 = v265;
    v124 = v122(v120, 1, v265);
    v125 = v121;
    v126 = v116;
    if (v124 == 1)
    {
      sub_1E65D77C8();
      v127 = v122(v120, 1, v123);
      v128 = v259;
      v129 = v256;
      v130 = v262;
      if (v127 != 1)
      {
        sub_1E5DFE50C(v261, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v125 + 32))(v268, v120, v123);
      v128 = v259;
      v129 = v256;
      v130 = v262;
    }

    (*(v269 + 16))(v271, v275, v270);
    v138 = *(v118 + v126[39]);
    v139 = (v118 + v126[48]);
    v140 = v139[7];
    v141 = MEMORY[0x1E699CB70];
    if (*(v140 + 16) && (v142 = sub_1E6215038(v101, v100), (v143 & 1) != 0))
    {
      v144 = *(v140 + 56);
      v146 = v273;
      v145 = v274;
      v147 = v240;
      (*(v273 + 16))(v240, v144 + *(v273 + 72) * v142, v274);
      v141 = MEMORY[0x1E699CB70];
      (*(v146 + 32))(v130, v147, v145);
    }

    else
    {
      (*(v273 + 104))(v130, *v141, v274);
    }

    v148 = v139[10];
    if (*(v148 + 16) && (v149 = sub_1E6215038(v101, v100), (v150 & 1) != 0))
    {
      v151 = *(v148 + 56);
      v153 = v276;
      v152 = v277;
      v154 = v241;
      (*(v276 + 16))(v241, v151 + *(v276 + 72) * v149, v277);
      (*(v153 + 32))(v129, v154, v152);
    }

    else
    {
      (*(v276 + 104))(v129, *v141, v277);
    }

    v155 = v139[9];
    if (*(v155 + 16) && (v156 = sub_1E6215038(v101, v100), (v157 & 1) != 0))
    {
      v158 = *(v155 + 56);
      v160 = v279;
      v159 = v280;
      v161 = v242;
      (*(v279 + 16))(v242, v158 + *(v279 + 72) * v156, v280);
      (*(v160 + 32))(v128, v161, v159);
    }

    else
    {
      (*(v279 + 104))(v128, *v141, v280);
    }

    v162 = v139[12];
    if (*(v162 + 16) && (v163 = sub_1E6215038(v101, v100), (v164 & 1) != 0))
    {
      v165 = *(v162 + 56);
      v167 = v281;
      v166 = v282;
      v168 = v243;
      (*(v281 + 16))(v243, v165 + *(v281 + 72) * v163, v282);
      (*(v167 + 32))(v260, v168, v166);
    }

    else
    {
      (*(v281 + 104))(v260, *v141, v282);
    }

    sub_1E5DFD1CC(v287, v278, &qword_1ED0737C8, &unk_1E6605140);

    sub_1E65DE9F8();
  }

  return sub_1E5DFE50C(v287, &qword_1ED0737C8, &unk_1E6605140);
}

uint64_t sub_1E6370124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6370194@<X0>(uint64_t *a1@<X8>)
{
  v90 = a1;
  v74 = type metadata accessor for RemoteBrowsingService();
  Description = v74[-1].Description;
  v2 = Description[8];
  MEMORY[0x1EEE9AC00](v74);
  v71 = v3;
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = &v68 - v6;
  v7 = type metadata accessor for WorkoutPlanService();
  v8 = v7[-1].Description;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v88 = v10;
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  v94 = *(v12 - 8);
  v13 = *(v94 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v91 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v68 - v16;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v18 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v19 = type metadata accessor for AppEnvironment();
  v70 = *(v19 + 100);
  v20 = *(v19 + 144);
  v84 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v22 = v8[2];
  v85 = (v8 + 2);
  v23 = v18;
  v76 = v18;
  v22(v11, v18 + v20, v7);
  v68 = v22;
  v24 = v7;
  v25 = *(v8 + 80);
  v83 = v25 | 7;
  v26 = swift_allocObject();
  v69 = v11;
  v27 = v8[4];
  v86 = (v8 + 4);
  v87 = v27;
  v28 = v24;
  v27(v26 + ((v25 + 16) & ~v25), v11, v24);

  v29 = v89;
  sub_1E65E4E08();
  v30 = v90;
  v90[3] = v12;
  v30[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v33 = v94 + 16;
  v32 = *(v94 + 16);
  v32(boxed_opaque_existential_1, v29, v12);
  v81 = v32;
  v82 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1E65EA8E0;
  v79 = sub_1E65E60A8();
  v34 = *(v79 - 8);
  v78 = *(v34 + 56);
  v80 = v34 + 56;
  v35 = v93;
  v78(v93, 1, 1, v79);
  v36 = v69;
  v22(v69, v23 + v84, v28);
  v32(v91, v29, v12);
  v37 = (v25 + 32) & ~v25;
  v38 = v94;
  v39 = *(v94 + 80);
  v40 = v12;
  v41 = v35;
  v42 = (v88 + v37 + v39) & ~v39;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v44 = v28;
  v87(v43 + v37, v36, v28);
  v45 = *(v38 + 32);
  v75 = v38 + 32;
  v88 = v45;
  v46 = v91;
  v45(v43 + v42, v91, v40);
  v47 = v41;
  v48 = sub_1E6059EAC(0, 0, v41, &unk_1E65FE168, v43);
  v50 = v77;
  v49 = v78;
  *(v77 + 32) = v48;
  v49(v47, 1, 1, v79);
  v68(v36, v76 + v84, v44);
  v51 = v46;
  v52 = v46;
  v53 = v89;
  v54 = v40;
  v81(v52, v89, v40);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  v87(v55 + v37, v36, v44);
  v56 = v51;
  v88(v55 + v42, v51, v54);
  v57 = v93;
  *(v50 + 40) = sub_1E6059EAC(0, 0, v93, &unk_1E65FE178, v55);
  v78(v57, 1, 1, v79);
  v58 = Description;
  v59 = v72;
  v60 = v74;
  (Description[2])(v72, v76 + v70, v74);
  v61 = v56;
  v81(v56, v53, v54);
  v62 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v63 = (v71 + v39 + v62) & ~v39;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  (v58[4])(v64 + v62, v59, v60);
  v88(v64 + v63, v61, v54);
  v65 = sub_1E6059EAC(0, 0, v93, &unk_1E65FE188, v64);
  v66 = v77;
  *(v77 + 48) = v65;
  result = (*(v94 + 8))(v53, v54);
  v90[5] = v66;
  return result;
}

uint64_t sub_1E6370984(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63709A4, 0, 0);
}

uint64_t sub_1E63709A4()
{
  v1 = v0[3];
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  v0[4] = v3;
  v8 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6370AA0;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1E6370AA0()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E6370BB4;
  }

  else
  {
    v3 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6370BB4()
{
  v1 = v0[4];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch active workout plan with error: %@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v12 = v0[6];

  swift_willThrow();
  v13 = v0[1];
  v14 = v0[6];

  return v13();
}

uint64_t sub_1E6370D54(uint64_t a1)
{
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6370984(a1, v1 + v5);
}

uint64_t sub_1E6370E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6370F64, 0, 0);
}

uint64_t sub_1E6370F64()
{
  v1 = v0[2];
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[10] = v3;
  v8 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6371060;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6371060()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6371178, 0, 0);
}

uint64_t sub_1E6371178()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6371254;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6371254()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6371350, 0, 0);
}

uint64_t sub_1E6371350()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6371450, v5, v4);
  }
}

uint64_t sub_1E6371450()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6371254;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E637151C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6370E30(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6371678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078908, &qword_1E65FE190) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078910, &qword_1E65FE198);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63717E4, 0, 0);
}

uint64_t sub_1E63717E4()
{
  v1 = v0[2];
  v2 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E63718E0;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E63718E0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63719F8, 0, 0);
}

uint64_t sub_1E63719F8()
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
  v6[1] = sub_1E6371AD4;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6371AD4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6371BD0, 0, 0);
}

uint64_t sub_1E6371BD0()
{
  v1 = v0[4];
  v2 = sub_1E65DDF18();
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

    return MEMORY[0x1EEE6DFA0](sub_1E6371D20, v7, v6);
  }
}

uint64_t sub_1E6371D20()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6371DA4, 0, 0);
}

uint64_t sub_1E6371DA4()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078908, &qword_1E65FE190);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6371AD4;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6371E64(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6371678(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6371FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x1EEE6DFA0](sub_1E637212C, 0, 0);
}

uint64_t sub_1E637212C()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6372228;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6372228()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6372340, 0, 0);
}

uint64_t sub_1E6372340()
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
  v6[1] = sub_1E637241C;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E637241C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6372518, 0, 0);
}

uint64_t sub_1E6372518()
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

    return MEMORY[0x1EEE6DFA0](sub_1E6372668, v7, v6);
  }
}

uint64_t sub_1E6372668()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E63726EC, 0, 0);
}

uint64_t sub_1E63726EC()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E637241C;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t objectdestroy_3Tm_9(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6372910(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6371FC0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6372A6C(void *a1, void (*a2)(char *, uint64_t, uint64_t), void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void *a5)
{
  v72 = a5;
  v79 = a4;
  v69 = a2;
  v70 = a3;
  v80 = sub_1E65DBB88();
  v84 = *(v80 - 8);
  v78 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v77 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078918, &qword_1E65FE1A8);
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v83 = v61 - v9;
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v14;
  v64 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = v61 - v17;
  v63 = v61 - v17;
  v19 = sub_1E65DBE18();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v66 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E65DBC68();
  v73 = *(v81 - 8);
  v22 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *a1;
  v62 = a1;
  sub_1E5E1D5BC(a1, v18, type metadata accessor for AppComposer);
  v24 = *(v11 + 80);
  v25 = ((v24 + 16) & ~v24) + v16;
  v26 = (v24 + 16) & ~v24;
  v67 = v25;
  v76 = v24 | 7;
  v27 = swift_allocObject();
  v65 = v26;
  sub_1E5E1FA80(v18, v27 + v26);
  sub_1E5E1D5BC(a1, v15, type metadata accessor for AppComposer);
  v68 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1E5E1FA80(v15, v28 + v26);
  v29 = (v28 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v70;
  *v29 = v69;
  v29[1] = v30;

  sub_1E65DBE08();
  sub_1E65DBC58();
  v31 = v84;
  v32 = *(v84 + 16);
  v66 = (v84 + 16);
  v69 = v32;
  v33 = v77;
  v34 = v80;
  v32(v77, v79, v80);
  v35 = v62;
  v36 = v63;
  sub_1E5E1D5BC(v62, v63, type metadata accessor for AppComposer);
  v37 = *(v31 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = (v78 + v24 + v38) & ~v24;
  v40 = swift_allocObject();
  v41 = *(v31 + 32);
  v84 = v31 + 32;
  v70 = v41;
  v41((v40 + v38), v33, v34);
  sub_1E5E1FA80(v36, v40 + v39);
  v42 = v36;
  sub_1E5E1D5BC(v35, v36, type metadata accessor for AppComposer);
  v43 = swift_allocObject();
  v44 = v65;
  sub_1E5E1FA80(v36, v43 + v65);
  type metadata accessor for AppFeature();
  sub_1E6375CF8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v67 = sub_1E6375CF8(&qword_1ED078920, MEMORY[0x1E699D238]);
  sub_1E65E4DE8();
  sub_1E5E1D5BC(v35, v36, type metadata accessor for AppComposer);
  v45 = v72;
  v46 = *v72;
  v61[0] = v72[3];
  v61[1] = v72[5];
  v62 = v72[7];
  v64 = v72[9];
  v47 = v77;
  v48 = v80;
  v69(v77, v79, v80);
  v49 = v68;
  v50 = (v68 + v37 + 80) & ~v37;
  v51 = swift_allocObject();
  sub_1E5E1FA80(v42, v51 + v44);
  v52 = (v51 + v49);
  v53 = v45[3];
  v52[2] = v45[2];
  v52[3] = v53;
  v52[4] = v45[4];
  v54 = v45[1];
  *v52 = *v45;
  v52[1] = v54;
  v70((v51 + v50), v47, v48);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1E6375C04;
  *(v55 + 24) = v51;

  v57 = v82;
  v56 = v83;
  v58 = v81;
  v59 = sub_1E65E4F08();

  (*(v74 + 8))(v56, v75);
  (*(v73 + 8))(v57, v58);
  return v59;
}

uint64_t sub_1E63731D0(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 72) = a1;
  v3 = type metadata accessor for ToastAction();
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = sub_1E65E3B68();
  *(v2 + 40) = v5;
  v6 = *(v5 - 8);
  *(v2 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63732C4, 0, 0);
}

uint64_t sub_1E63732C4()
{
  v1 = *(v0 + 56);
  sub_1E65DB958();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Publishing award toast action .dismiss", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = *(v0 + 72);

  (*(v6 + 8))(v5, v7);
  v12 = v10 + *(type metadata accessor for AppComposer() + 20);
  v13 = (v12 + *(type metadata accessor for AppEnvironment() + 128));
  v14 = *v13;
  v15 = v13[1];
  *v8 = v11;
  swift_storeEnumTagMultiPayload();
  v20 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_1E63734A4;
  v18 = *(v0 + 32);

  return v20(v18);
}

uint64_t sub_1E63734A4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 32);
  v6 = *v0;

  sub_1E6375D40(v3, type metadata accessor for ToastAction);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1E63735EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = *(*(type metadata accessor for AppComposer() - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v7 = sub_1E65E3B68();
  v5[26] = v7;
  v8 = *(v7 - 8);
  v5[27] = v8;
  v9 = *(v8 + 64) + 15;
  v5[28] = swift_task_alloc();
  v10 = type metadata accessor for RouteSource(0);
  v5[29] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v12 = type metadata accessor for RouteDestination();
  v5[31] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6373740, 0, 0);
}

uint64_t sub_1E6373740()
{
  v45 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];
  swift_storeEnumTagMultiPayload();
  *v1 = v7;
  v1[1] = v5;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v4, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E6375D40(v4, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  v8 = *v6;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v9 = v0[13];
  v0[33] = v9;
  if (v9 == 6)
  {
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[22];
    sub_1E65DB958();
    sub_1E5E1D5BC(v12, v11, type metadata accessor for AppComposer);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6338();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[32];
    v18 = v0[27];
    v17 = v0[28];
    v20 = v0[25];
    v19 = v0[26];
    if (v15)
    {
      v21 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v21 = 136315138;
      v43 = v16;
      v44 = v40;
      v22 = *v20;
      swift_getKeyPath();
      v42 = v17;
      sub_1E65E4EC8();

      v41 = v19;
      v23 = v0[14];
      v24 = v0[15];
      v0[16] = v23;
      v0[17] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
      v25 = sub_1E65E6648();
      v27 = v26;
      sub_1E5E07DA0(v23, v24);
      sub_1E6375D40(v20, type metadata accessor for AppComposer);
      v28 = sub_1E5DFD4B0(v25, v27, &v44);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "No routing context for root item %s, skipping detail page presentation", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1E694F1C0](v40, -1, -1);
      MEMORY[0x1E694F1C0](v21, -1, -1);

      (*(v18 + 8))(v42, v41);
      v29 = type metadata accessor for RouteDestination;
      v30 = v43;
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      sub_1E6375D40(v16, type metadata accessor for RouteDestination);
      v29 = type metadata accessor for AppComposer;
      v30 = v20;
    }

    sub_1E6375D40(v30, v29);
    v34 = v0[32];
    v35 = v0[30];
    v36 = v0[28];
    v37 = v0[25];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v31 = v0[12];
    v0[34] = v31;
    v0[18] = v31;
    v0[19] = v9;
    sub_1E65E6058();
    v0[35] = sub_1E65E6048();
    v33 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6373B3C, v33, v32);
  }
}

uint64_t sub_1E6373B3C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[23];
  v4 = v0[24];

  v5(v0 + 18);
  sub_1E5E07DA0(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E6373BD0, 0, 0);
}

uint64_t sub_1E6373BD0()
{
  v37 = v0;
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_1E600F5B0((v0 + 304));
    v3 = swift_task_alloc();
    *(v0 + 288) = v3;
    *v3 = v0;
    v3[1] = sub_1E6373F50;
    v4 = *(v0 + 256);

    return RoutingContext.appendDestination(_:priority:)(v4, (v0 + 304), v2, v1);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    v6 = *(v0 + 224);
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    sub_1E65DB958();
    sub_1E5E1D5BC(v8, v7, type metadata accessor for AppComposer);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 256);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    if (v11)
    {
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v17 = 136315138;
      v35 = v12;
      v36 = v32;
      v18 = *v16;
      swift_getKeyPath();
      v34 = v13;
      sub_1E65E4EC8();

      v33 = v15;
      v19 = *(v0 + 112);
      v20 = *(v0 + 120);
      *(v0 + 128) = v19;
      *(v0 + 136) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
      v21 = sub_1E65E6648();
      v23 = v22;
      sub_1E5E07DA0(v19, v20);
      sub_1E6375D40(v16, type metadata accessor for AppComposer);
      v24 = sub_1E5DFD4B0(v21, v23, &v36);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "No routing context for root item %s, skipping detail page presentation", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E694F1C0](v32, -1, -1);
      MEMORY[0x1E694F1C0](v17, -1, -1);

      (*(v14 + 8))(v34, v33);
      v25 = type metadata accessor for RouteDestination;
      v26 = v35;
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      sub_1E6375D40(v12, type metadata accessor for RouteDestination);
      v25 = type metadata accessor for AppComposer;
      v26 = v16;
    }

    sub_1E6375D40(v26, v25);
    v27 = *(v0 + 256);
    v28 = *(v0 + 240);
    v29 = *(v0 + 224);
    v30 = *(v0 + 200);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1E6373F50()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1E6374118;
  }

  else
  {
    v3 = sub_1E6374064;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6374064()
{
  sub_1E6375D40(v0[32], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6374118()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[25];
  sub_1E6375D40(v0[32], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];
  v5 = v0[37];

  return v4();
}

uint64_t sub_1E63741D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65DBB28();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E65DBA98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1E65DBBA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1E65DBB88();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v19 = *(a3 + *(type metadata accessor for AppComposer() + 20) + 8);
  v20 = sub_1E65DAE38();
  if (v20 == sub_1E65DAE38())
  {
    *v12 = 0x4076600000000000;
    v21 = MEMORY[0x1E699D1C0];
  }

  else
  {
    v21 = MEMORY[0x1E699D1C8];
  }

  (*(v9 + 104))(v12, *v21, v8);
  sub_1E65DBB08();
  sub_1E65DBB98();
  v22 = (a1 + *(type metadata accessor for AppState() + 248));
  v23 = *v22;
  v24 = v22[1];
  if (v24 <= 2)
  {
    switch(v24)
    {
      case 0:
        goto LABEL_16;
      case 1:
        sub_1E5FED40C(*v22, 1uLL);
        v25 = 0xE600000000000000;
        goto LABEL_21;
      case 2:
        goto LABEL_16;
    }

LABEL_14:
    v27 = 0x7974696C61646F6DLL;
    v28 = 0xE90000000000003ALL;
    sub_1E5FED40C(v23, v24);
    MEMORY[0x1E694D7C0](v23, v24);
    v25 = v28;
    if (v27 != 0x756F59726F66)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v25 == 0xE600000000000000)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v24 <= 5)
  {
LABEL_16:
    sub_1E5FED40C(*v22, v22[1]);
LABEL_17:
    sub_1E65E6C18();
LABEL_18:
    sub_1E5E07DA0(0, 1uLL);

    sub_1E5E07DA0(v23, v24);
    return sub_1E65DBA58();
  }

  if (v24 != 6)
  {
    goto LABEL_14;
  }

  sub_1E5FED40C(*v22, 6uLL);
  sub_1E5E07DA0(v23, 6uLL);
  sub_1E5E07DA0(0, 1uLL);
  return sub_1E65DBA58();
}

uint64_t sub_1E637461C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65E07B8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v47 - v10;
  v12 = sub_1E65D76F8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v70 = *(v18 - 8);
  v19 = *(v70 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v47 - v23;
  result = sub_1E65DBA78();
  if (result)
  {
    v68 = v18;
    v69 = v17;
    v26 = sub_1E65DB9A8();
    v28 = v27;
    v29 = sub_1E65DBA88();
    if (!v30)
    {

      result = sub_1E65DBA68();
      if (result)
      {
        return result;
      }

      v46 = a1 + *(type metadata accessor for AppState() + 248);
      goto LABEL_11;
    }

    v63 = v30;
    v64 = v29;
    v66 = a2;
    v62 = type metadata accessor for AppState();
    v31 = *(v62 + 100);
    v67 = a1;
    v32 = a1 + v31;
    v33 = *(v32 + 8);
    v65 = v32 + 8;
    if (*(v33 + 16) && (v34 = sub_1E6215038(v26, v28), (v35 & 1) != 0))
    {
      v36 = v70;
      v37 = *(v33 + 56) + *(v70 + 72) * v34;
      v38 = *(v70 + 16);
      v61 = v26;
      v39 = v68;
      v38(v22, v37, v68);
      (*(v36 + 32))(v24, v22, v39);
      v40 = sub_1E65DC1D8();
      v59 = v41;
      v60 = v40;
      LODWORD(v56) = sub_1E65DC1E8();
      v47[8] = v11;
      sub_1E65DC238();
      v58 = sub_1E65DC1A8();
      LODWORD(v57) = v42;
      LODWORD(v55) = sub_1E65DC208();
      sub_1E65DC1F8();
      v54 = type metadata accessor for ActionButtonDescriptor(0);
      v53 = type metadata accessor for ArtworkDescriptor();
      v52 = type metadata accessor for ContextMenu(0);
      v51 = type metadata accessor for ItemContext();
      v50 = type metadata accessor for ItemMetrics();
      v49 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      v48 = type metadata accessor for SectionMetrics();
      v47[7] = type metadata accessor for ViewDescriptor();
      v47[6] = sub_1E6375CF8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v47[5] = sub_1E6375CF8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      v47[4] = sub_1E6375CF8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      v47[3] = sub_1E6375CF8(&qword_1EE2DB720, type metadata accessor for ItemContext);
      v47[2] = sub_1E6375CF8(&qword_1EE2DB738, type metadata accessor for ItemContext);
      v47[1] = sub_1E6375CF8(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      sub_1E6375CF8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      sub_1E6375CF8(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E5DF1338();
      sub_1E6375CF8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      v43 = v69;
      sub_1E65DC1C8();
      (*(v36 + 56))(v43, 0, 1, v39);
      sub_1E6407C10(v43, v61, v28);
      (*(v36 + 8))(v24, v39);
    }

    else
    {
      v44 = *(a3 + *(type metadata accessor for AppComposer() + 20) + 8);

      LODWORD(v61) = sub_1E65DAE08();
      sub_1E65D76E8();
      sub_1E65E0778();
      sub_1E5E0024C(MEMORY[0x1E69E7CC0]);
      v71 = 2;
      v56 = sub_1E5DF11E0();
      v55 = sub_1E5DF1338();
      sub_1E65E06E8();
      v60 = type metadata accessor for ActionButtonDescriptor(0);
      v59 = type metadata accessor for ArtworkDescriptor();
      v58 = type metadata accessor for ContextMenu(0);
      v57 = type metadata accessor for ItemContext();
      v54 = type metadata accessor for ItemMetrics();
      v53 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      v52 = type metadata accessor for SectionMetrics();
      v51 = type metadata accessor for ViewDescriptor();
      v50 = sub_1E6375CF8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v49 = sub_1E6375CF8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      v48 = sub_1E6375CF8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      sub_1E6375CF8(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      sub_1E6375CF8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      sub_1E6375CF8(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
      sub_1E6375CF8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      v45 = v69;
      sub_1E65DC1C8();
      (*(v70 + 56))(v45, 0, 1, v68);
      sub_1E6407C10(v45, v26, v28);
    }

    result = sub_1E65DBA68();
    if ((result & 1) == 0)
    {
      v46 = v67 + *(v62 + 248);
LABEL_11:
      result = sub_1E5E07DA0(*v46, *(v46 + 8));
      *v46 = 0;
      *(v46 + 8) = 1;
    }
  }

  return result;
}