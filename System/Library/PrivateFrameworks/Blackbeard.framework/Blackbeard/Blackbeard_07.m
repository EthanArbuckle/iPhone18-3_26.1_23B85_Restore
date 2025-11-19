uint64_t sub_1E5ECC4E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5ECC548()
{
  v71 = type metadata accessor for AppComposer();
  v124 = *(*(v71 - 1) + 80);
  v122 = *(*(v71 - 1) + 64);
  v1 = sub_1E65D76F8();
  v126 = *(v1 - 8);
  v127 = v1;
  v121 = *(v126 + 80);
  v125 = *(v126 + 64);
  v128 = v0;
  v123 = (v124 + 16) & ~v124;
  v118 = v0 + v123;
  v2 = *(v0 + v123);

  v3 = (v0 + v123 + v71[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v120 = type metadata accessor for AccountService();
  v119 = *(v120[-1].Description + 1);
  v119(&v3[v6], v120);
  v7 = v5[7];
  v117 = type metadata accessor for AppStateService();
  v116 = *(v117[-1].Description + 1);
  v116(&v3[v7], v117);
  v8 = v5[8];
  v115 = type metadata accessor for ArchivedSessionService();
  v114 = *(v115[-1].Description + 1);
  v114(&v3[v8], v115);
  v9 = v5[9];
  v113 = type metadata accessor for AssetService();
  v112 = *(v113[-1].Description + 1);
  v112(&v3[v9], v113);
  v10 = v5[10];
  v111 = type metadata accessor for AwardsService();
  v110 = *(v111[-1].Description + 1);
  v110(&v3[v10], v111);
  v11 = v5[11];
  v109 = type metadata accessor for BookmarkService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v11], v109);
  v12 = v5[12];
  v107 = type metadata accessor for CatalogService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v12], v107);
  v13 = v5[13];
  v105 = type metadata accessor for ConfigurationService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v13], v105);
  v14 = v5[14];
  v103 = type metadata accessor for ContentAvailabilityService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v14], v103);
  v15 = v5[15];
  v101 = type metadata accessor for EngagementService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v15], v101);
  v16 = v5[16];
  v99 = type metadata accessor for HealthDataService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v16], v99);
  v17 = v5[17];
  v97 = type metadata accessor for InteropService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v17], v97);
  v18 = v5[18];
  v95 = type metadata accessor for LocalizationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v18], v95);
  v19 = v5[19];
  v93 = type metadata accessor for MarketingService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v19], v93);
  v20 = v5[20];
  v91 = type metadata accessor for MetricService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v20], v91);
  v21 = v5[21];
  v89 = type metadata accessor for PersonalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v21], v89);
  v22 = v5[22];
  v87 = type metadata accessor for PlayerService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v22], v87);
  v23 = v5[23];
  v85 = type metadata accessor for PrivacyPreferenceService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v23], v85);
  v24 = v5[24];
  v83 = type metadata accessor for RecommendationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v24], v83);
  v25 = v5[25];
  v81 = type metadata accessor for RemoteBrowsingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v25], v81);
  v26 = v5[26];
  v79 = type metadata accessor for SearchService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v26], v79);
  v27 = v5[27];
  v77 = type metadata accessor for ServiceSubscriptionService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v27], v77);
  v28 = v5[28];
  v69 = type metadata accessor for SessionService();
  v75 = *(v69[-1].Description + 1);
  v75(&v3[v28], v69);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v74 = *(v30[-1].Description + 1);
  v74(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v73 = *(v32[-1].Description + 1);
  v73(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v72 = *(v34[-1].Description + 1);
  v72(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v70 = *(QueueService[-1].Description + 1);
  v70(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v68 = *(v43[-1].Description + 1);
  v68(&v3[v42], v43);
  v44 = *(v118 + v71[6]);

  v45 = (v118 + v71[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v119(&v48[v5[6]], v120);
  v116(&v48[v5[7]], v117);
  v114(&v48[v5[8]], v115);
  v112(&v48[v5[9]], v113);
  v110(&v48[v5[10]], v111);
  v108(&v48[v5[11]], v109);
  v106(&v48[v5[12]], v107);
  v104(&v48[v5[13]], v105);
  v102(&v48[v5[14]], v103);
  v100(&v48[v5[15]], v101);
  v98(&v48[v5[16]], v99);
  v96(&v48[v5[17]], v97);
  v94(&v48[v5[18]], v95);
  v92(&v48[v5[19]], v93);
  v90(&v48[v5[20]], v91);
  v88(&v48[v5[21]], v89);
  v86(&v48[v5[22]], v87);
  v84(&v48[v5[23]], v85);
  v82(&v48[v5[24]], v83);
  v80(&v48[v5[25]], v81);
  v78(&v48[v5[26]], v79);
  v76(&v48[v5[27]], v77);
  v75(&v48[v5[28]], v69);
  v74(&v48[v5[29]], v30);
  v73(&v48[v5[30]], v32);
  v72(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v70(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v68(&v48[v5[36]], v43);
  v55 = *(v118 + v71[8]);
  swift_unknownObjectRelease();
  if (*(v118 + v71[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v118 + v71[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v122 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 87) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v128 + v57));
  v60 = (v128 + v58);
  v61 = *v60;
  swift_unknownObjectRelease();
  v62 = v60[3];

  v63 = v60[5];

  v64 = v60[7];

  v65 = v60[9];

  v66 = *(v128 + v59);

  (*(v126 + 8))(v128 + ((v121 + v59 + 8) & ~v121), v127);

  return swift_deallocObject();
}

uint64_t sub_1E5ECD2FC()
{
  v123 = type metadata accessor for AppComposer();
  v121 = *(*(v123 - 1) + 80);
  v119 = *(*(v123 - 1) + 64);
  v120 = (v121 + 16) & ~v121;
  v122 = v0;
  v116 = v0 + v120;
  v1 = *(v0 + v120);

  v2 = (v0 + v120 + v123[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(&v2[v5], v118);
  v6 = v4[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v6], v115);
  v7 = v4[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v7], v113);
  v8 = v4[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v8], v111);
  v9 = v4[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v9], v109);
  v10 = v4[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v10], v107);
  v11 = v4[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v11], v105);
  v12 = v4[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v12], v103);
  v13 = v4[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v13], v101);
  v14 = v4[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v14], v99);
  v15 = v4[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v15], v97);
  v16 = v4[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v16], v95);
  v17 = v4[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v17], v93);
  v18 = v4[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v18], v91);
  v19 = v4[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v19], v89);
  v20 = v4[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v20], v87);
  v21 = v4[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v21], v85);
  v22 = v4[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v22], v83);
  v23 = v4[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v23], v81);
  v24 = v4[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v24], v79);
  v25 = v4[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v25], v77);
  v26 = v4[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v26], v75);
  v27 = v4[28];
  v68 = type metadata accessor for SessionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v2[v27], v68);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v72 = *(v29[-1].Description + 1);
  v72(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v71 = *(v31[-1].Description + 1);
  v71(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v70 = *(v33[-1].Description + 1);
  v70(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v67 = *(v42[-1].Description + 1);
  v67(&v2[v41], v42);
  v43 = *(v116 + v123[6]);

  v44 = (v116 + v123[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v117(&v47[v4[6]], v118);
  v114(&v47[v4[7]], v115);
  v112(&v47[v4[8]], v113);
  v110(&v47[v4[9]], v111);
  v108(&v47[v4[10]], v109);
  v106(&v47[v4[11]], v107);
  v104(&v47[v4[12]], v105);
  v102(&v47[v4[13]], v103);
  v100(&v47[v4[14]], v101);
  v98(&v47[v4[15]], v99);
  v96(&v47[v4[16]], v97);
  v94(&v47[v4[17]], v95);
  v92(&v47[v4[18]], v93);
  v90(&v47[v4[19]], v91);
  v88(&v47[v4[20]], v89);
  v86(&v47[v4[21]], v87);
  v84(&v47[v4[22]], v85);
  v82(&v47[v4[23]], v83);
  v80(&v47[v4[24]], v81);
  v78(&v47[v4[25]], v79);
  v76(&v47[v4[26]], v77);
  v74(&v47[v4[27]], v75);
  v73(&v47[v4[28]], v68);
  v72(&v47[v4[29]], v29);
  v71(&v47[v4[30]], v31);
  v70(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v69(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v67(&v47[v4[36]], v42);
  v54 = *(v116 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v116 + v123[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v119 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 87) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v122 + v56));
  v59 = (v122 + v57);
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  v65 = *(v122 + v58);

  return swift_deallocObject();
}

uint64_t sub_1E5ECE020()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5ECE074()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[12];

  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  return swift_deallocObject();
}

uint64_t sub_1E5ECE0E4()
{
  v1 = (type metadata accessor for AppEnvironment() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2);
  swift_unknownObjectRelease();
  v6 = v1[8];
  v7 = type metadata accessor for AccountService();
  (*(v7[-1].Description + 1))(v0 + v2 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for AppStateService();
  (*(v9[-1].Description + 1))(v0 + v2 + v8, v9);
  v10 = v1[10];
  v11 = type metadata accessor for ArchivedSessionService();
  (*(v11[-1].Description + 1))(v0 + v2 + v10, v11);
  v12 = v1[11];
  v13 = type metadata accessor for AssetService();
  (*(v13[-1].Description + 1))(v0 + v2 + v12, v13);
  v14 = v1[12];
  v15 = type metadata accessor for AwardsService();
  (*(v15[-1].Description + 1))(v0 + v2 + v14, v15);
  v16 = v1[13];
  v17 = type metadata accessor for BookmarkService();
  (*(v17[-1].Description + 1))(v0 + v2 + v16, v17);
  v18 = v1[14];
  v19 = type metadata accessor for CatalogService();
  (*(v19[-1].Description + 1))(v0 + v2 + v18, v19);
  v20 = v1[15];
  v21 = type metadata accessor for ConfigurationService();
  (*(v21[-1].Description + 1))(v0 + v2 + v20, v21);
  v22 = v1[16];
  v23 = type metadata accessor for ContentAvailabilityService();
  (*(v23[-1].Description + 1))(v0 + v2 + v22, v23);
  v24 = v1[17];
  v25 = type metadata accessor for EngagementService();
  (*(v25[-1].Description + 1))(v0 + v2 + v24, v25);
  v26 = v1[18];
  v27 = type metadata accessor for HealthDataService();
  (*(v27[-1].Description + 1))(v0 + v2 + v26, v27);
  v28 = v1[19];
  v29 = type metadata accessor for InteropService();
  (*(v29[-1].Description + 1))(v0 + v2 + v28, v29);
  v30 = v1[20];
  v31 = type metadata accessor for LocalizationService();
  (*(v31[-1].Description + 1))(v0 + v2 + v30, v31);
  v32 = v1[21];
  v33 = type metadata accessor for MarketingService();
  (*(v33[-1].Description + 1))(v0 + v2 + v32, v33);
  v34 = v1[22];
  v35 = type metadata accessor for MetricService();
  (*(v35[-1].Description + 1))(v0 + v2 + v34, v35);
  v36 = v1[23];
  v37 = type metadata accessor for PersonalizationService();
  (*(v37[-1].Description + 1))(v0 + v2 + v36, v37);
  v38 = v1[24];
  v39 = type metadata accessor for PlayerService();
  (*(v39[-1].Description + 1))(v0 + v2 + v38, v39);
  v40 = v1[25];
  v41 = type metadata accessor for PrivacyPreferenceService();
  (*(v41[-1].Description + 1))(v0 + v2 + v40, v41);
  v42 = v1[26];
  v43 = type metadata accessor for RecommendationService();
  (*(v43[-1].Description + 1))(v0 + v2 + v42, v43);
  v44 = v1[27];
  v45 = type metadata accessor for RemoteBrowsingService();
  (*(v45[-1].Description + 1))(v0 + v2 + v44, v45);
  v46 = v1[28];
  v47 = type metadata accessor for SearchService();
  (*(v47[-1].Description + 1))(v0 + v2 + v46, v47);
  v48 = v1[29];
  v49 = type metadata accessor for ServiceSubscriptionService();
  (*(v49[-1].Description + 1))(v0 + v2 + v48, v49);
  v50 = v1[30];
  v51 = type metadata accessor for SessionService();
  (*(v51[-1].Description + 1))(v0 + v2 + v50, v51);
  v52 = v1[31];
  v53 = type metadata accessor for SharePlayService();
  (*(v53[-1].Description + 1))(v0 + v2 + v52, v53);
  v54 = v1[32];
  v55 = type metadata accessor for SiriService();
  (*(v55[-1].Description + 1))(v0 + v2 + v54, v55);
  v56 = v1[33];
  v57 = type metadata accessor for SyncService();
  (*(v57[-1].Description + 1))(v0 + v2 + v56, v57);
  v58 = (v0 + v2 + v1[34]);
  v59 = v58[1];

  v60 = v58[3];

  v61 = v58[5];

  v62 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v0 + v2 + v62, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + v1[36]));
  v64 = *(v0 + v2 + v1[37]);

  v65 = v1[38];
  v66 = type metadata accessor for WorkoutPlanService();
  (*(v66[-1].Description + 1))(v0 + v2 + v65, v66);

  return swift_deallocObject();
}

uint64_t sub_1E5ECE874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E5ECE97C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E5ECEA90()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v113 = v0;
  v111 = (v112 + 32) & ~v112;
  v107 = v0 + v111;
  v2 = *(v0 + v111);

  v3 = (v0 + v111 + v114[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v114[6]);

  v45 = (v107 + v114[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v107 + v114[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5ECF77C()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5ECF7C0()
{
  v131 = type metadata accessor for AppComposer();
  v129 = *(*(v131 - 1) + 80);
  v1 = (v129 + 16) & ~v129;
  v2 = v1 + *(*(v131 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v128 = *(*(v3 - 8) + 80);
  v126 = v2 + v128;
  v127 = *(*(v3 - 8) + 64);
  v130 = v0;
  v123 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v131[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v125 = type metadata accessor for AccountService();
  v124 = *(v125[-1].Description + 1);
  v124(&v5[v8], v125);
  v9 = v7[7];
  v122 = type metadata accessor for AppStateService();
  v121 = *(v122[-1].Description + 1);
  v121(&v5[v9], v122);
  v10 = v7[8];
  v120 = type metadata accessor for ArchivedSessionService();
  v119 = *(v120[-1].Description + 1);
  v119(&v5[v10], v120);
  v11 = v7[9];
  v118 = type metadata accessor for AssetService();
  v117 = *(v118[-1].Description + 1);
  v117(&v5[v11], v118);
  v12 = v7[10];
  v116 = type metadata accessor for AwardsService();
  v115 = *(v116[-1].Description + 1);
  v115(&v5[v12], v116);
  v13 = v7[11];
  v114 = type metadata accessor for BookmarkService();
  v113 = *(v114[-1].Description + 1);
  v113(&v5[v13], v114);
  v14 = v7[12];
  v112 = type metadata accessor for CatalogService();
  v111 = *(v112[-1].Description + 1);
  v111(&v5[v14], v112);
  v15 = v7[13];
  v110 = type metadata accessor for ConfigurationService();
  v109 = *(v110[-1].Description + 1);
  v109(&v5[v15], v110);
  v16 = v7[14];
  v108 = type metadata accessor for ContentAvailabilityService();
  v107 = *(v108[-1].Description + 1);
  v107(&v5[v16], v108);
  v17 = v7[15];
  v106 = type metadata accessor for EngagementService();
  v105 = *(v106[-1].Description + 1);
  v105(&v5[v17], v106);
  v18 = v7[16];
  v104 = type metadata accessor for HealthDataService();
  v103 = *(v104[-1].Description + 1);
  v103(&v5[v18], v104);
  v19 = v7[17];
  v102 = type metadata accessor for InteropService();
  v101 = *(v102[-1].Description + 1);
  v101(&v5[v19], v102);
  v20 = v7[18];
  v100 = type metadata accessor for LocalizationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v5[v20], v100);
  v21 = v7[19];
  v98 = type metadata accessor for MarketingService();
  v97 = *(v98[-1].Description + 1);
  v97(&v5[v21], v98);
  v22 = v7[20];
  v96 = type metadata accessor for MetricService();
  v95 = *(v96[-1].Description + 1);
  v95(&v5[v22], v96);
  v23 = v7[21];
  v94 = type metadata accessor for PersonalizationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v5[v23], v94);
  v24 = v7[22];
  v92 = type metadata accessor for PlayerService();
  v91 = *(v92[-1].Description + 1);
  v91(&v5[v24], v92);
  v25 = v7[23];
  v90 = type metadata accessor for PrivacyPreferenceService();
  v89 = *(v90[-1].Description + 1);
  v89(&v5[v25], v90);
  v26 = v7[24];
  v88 = type metadata accessor for RecommendationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v5[v26], v88);
  v27 = v7[25];
  v86 = type metadata accessor for RemoteBrowsingService();
  v85 = *(v86[-1].Description + 1);
  v85(&v5[v27], v86);
  v28 = v7[26];
  v84 = type metadata accessor for SearchService();
  v83 = *(v84[-1].Description + 1);
  v83(&v5[v28], v84);
  v29 = v7[27];
  v82 = type metadata accessor for ServiceSubscriptionService();
  v81 = *(v82[-1].Description + 1);
  v81(&v5[v29], v82);
  v30 = v7[28];
  v75 = type metadata accessor for SessionService();
  v80 = *(v75[-1].Description + 1);
  v80(&v5[v30], v75);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v79 = *(v32[-1].Description + 1);
  v79(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v78 = *(v34[-1].Description + 1);
  v78(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v77 = *(v36[-1].Description + 1);
  v77(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v76 = *(QueueService[-1].Description + 1);
  v76(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v74 = *(v45[-1].Description + 1);
  v74(&v5[v44], v45);
  v46 = *(v123 + v131[6]);

  v47 = (v123 + v131[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v124(&v50[v7[6]], v125);
  v121(&v50[v7[7]], v122);
  v119(&v50[v7[8]], v120);
  v117(&v50[v7[9]], v118);
  v115(&v50[v7[10]], v116);
  v113(&v50[v7[11]], v114);
  v111(&v50[v7[12]], v112);
  v109(&v50[v7[13]], v110);
  v107(&v50[v7[14]], v108);
  v105(&v50[v7[15]], v106);
  v103(&v50[v7[16]], v104);
  v101(&v50[v7[17]], v102);
  v99(&v50[v7[18]], v100);
  v97(&v50[v7[19]], v98);
  v95(&v50[v7[20]], v96);
  v93(&v50[v7[21]], v94);
  v91(&v50[v7[22]], v92);
  v89(&v50[v7[23]], v90);
  v87(&v50[v7[24]], v88);
  v85(&v50[v7[25]], v86);
  v83(&v50[v7[26]], v84);
  v81(&v50[v7[27]], v82);
  v80(&v50[v7[28]], v75);
  v79(&v50[v7[29]], v32);
  v78(&v50[v7[30]], v34);
  v77(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v76(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v74(&v50[v7[36]], v45);
  v57 = *(v123 + v131[8]);
  swift_unknownObjectRelease();
  if (*(v123 + v131[9] + 8) >= 0xCuLL)
  {
  }

  v58 = (v123 + v131[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v59 = v130 + (v126 & ~v128);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v59, *(v59 + 8), *(v59 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v61 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v62 = swift_getEnumCaseMultiPayload();
    if (v62 == 2)
    {
      v65 = *(v61 + 8);

      v66 = *(v61 + 32);
    }

    else if (v62 == 1)
    {
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v64 = sub_1E65D76A8();
      (*(*(v64 - 8) + 8))(v61 + v63, v64);
    }

    v67 = v61 + *(type metadata accessor for DynamicLibraryActionLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v68 = swift_getEnumCaseMultiPayload();
    if (v68 == 2)
    {
      v71 = *(v67 + 8);

      v72 = *(v67 + 32);
    }

    else if (v68 == 1)
    {
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v70 = sub_1E65D76A8();
      (*(*(v70 - 8) + 8))(v67 + v69, v70);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5ED0688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5ED071C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F58, &qword_1E65F8FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5ED0810()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5ED0864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F58, &qword_1E65F8FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5ED08D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5ED0908()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5ED0948()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1E5ED09A4()
{
  v139 = type metadata accessor for AppComposer();
  v137 = *(*(v139 - 1) + 80);
  v1 = (v137 + 16) & ~v137;
  v2 = v1 + *(*(v139 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v136 = *(*(v3 - 8) + 80);
  v133 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v134 = *(v4 - 8);
  v135 = v4;
  v132 = *(v134 + 80);
  v131 = *(v134 + 64);
  v138 = v0;
  v128 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v139[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v130 = type metadata accessor for AccountService();
  v129 = *(v130[-1].Description + 1);
  v129(v6 + v9, v130);
  v10 = v8[7];
  v127 = type metadata accessor for AppStateService();
  v126 = *(v127[-1].Description + 1);
  v126(v6 + v10, v127);
  v11 = v8[8];
  v125 = type metadata accessor for ArchivedSessionService();
  v124 = *(v125[-1].Description + 1);
  v124(v6 + v11, v125);
  v12 = v8[9];
  v123 = type metadata accessor for AssetService();
  v122 = *(v123[-1].Description + 1);
  v122(v6 + v12, v123);
  v13 = v8[10];
  v121 = type metadata accessor for AwardsService();
  v120 = *(v121[-1].Description + 1);
  v120(v6 + v13, v121);
  v14 = v8[11];
  v119 = type metadata accessor for BookmarkService();
  v118 = *(v119[-1].Description + 1);
  v118(v6 + v14, v119);
  v15 = v8[12];
  v117 = type metadata accessor for CatalogService();
  v116 = *(v117[-1].Description + 1);
  v116(v6 + v15, v117);
  v16 = v8[13];
  v115 = type metadata accessor for ConfigurationService();
  v114 = *(v115[-1].Description + 1);
  v114(v6 + v16, v115);
  v17 = v8[14];
  v113 = type metadata accessor for ContentAvailabilityService();
  v112 = *(v113[-1].Description + 1);
  v112(v6 + v17, v113);
  v18 = v8[15];
  v111 = type metadata accessor for EngagementService();
  v110 = *(v111[-1].Description + 1);
  v110(v6 + v18, v111);
  v19 = v8[16];
  v109 = type metadata accessor for HealthDataService();
  v108 = *(v109[-1].Description + 1);
  v108(v6 + v19, v109);
  v20 = v8[17];
  v107 = type metadata accessor for InteropService();
  v106 = *(v107[-1].Description + 1);
  v106(v6 + v20, v107);
  v21 = v8[18];
  v105 = type metadata accessor for LocalizationService();
  v104 = *(v105[-1].Description + 1);
  v104(v6 + v21, v105);
  v22 = v8[19];
  v103 = type metadata accessor for MarketingService();
  v102 = *(v103[-1].Description + 1);
  v102(v6 + v22, v103);
  v23 = v8[20];
  v101 = type metadata accessor for MetricService();
  v100 = *(v101[-1].Description + 1);
  v100(v6 + v23, v101);
  v24 = v8[21];
  v99 = type metadata accessor for PersonalizationService();
  v98 = *(v99[-1].Description + 1);
  v98(v6 + v24, v99);
  v25 = v8[22];
  v97 = type metadata accessor for PlayerService();
  v96 = *(v97[-1].Description + 1);
  v96(v6 + v25, v97);
  v26 = v8[23];
  v95 = type metadata accessor for PrivacyPreferenceService();
  v94 = *(v95[-1].Description + 1);
  v94(v6 + v26, v95);
  v27 = v8[24];
  v93 = type metadata accessor for RecommendationService();
  v92 = *(v93[-1].Description + 1);
  v92(v6 + v27, v93);
  v28 = v8[25];
  v91 = type metadata accessor for RemoteBrowsingService();
  v90 = *(v91[-1].Description + 1);
  v90(v6 + v28, v91);
  v29 = v8[26];
  v89 = type metadata accessor for SearchService();
  v88 = *(v89[-1].Description + 1);
  v88(v6 + v29, v89);
  v30 = v8[27];
  v87 = type metadata accessor for ServiceSubscriptionService();
  v86 = *(v87[-1].Description + 1);
  v86(v6 + v30, v87);
  v31 = v8[28];
  v80 = type metadata accessor for SessionService();
  v85 = *(v80[-1].Description + 1);
  v85(v6 + v31, v80);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v84 = *(v33[-1].Description + 1);
  v84(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v83 = *(v35[-1].Description + 1);
  v83(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v82 = *(v37[-1].Description + 1);
  v82(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v81 = *(QueueService[-1].Description + 1);
  v81(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v79 = *(v46[-1].Description + 1);
  v79(v6 + v45, v46);
  v47 = *(v128 + v139[6]);

  v48 = (v128 + v139[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v129(v51 + v8[6], v130);
  v126(v51 + v8[7], v127);
  v124(v51 + v8[8], v125);
  v122(v51 + v8[9], v123);
  v120(v51 + v8[10], v121);
  v118(v51 + v8[11], v119);
  v116(v51 + v8[12], v117);
  v114(v51 + v8[13], v115);
  v112(v51 + v8[14], v113);
  v110(v51 + v8[15], v111);
  v108(v51 + v8[16], v109);
  v106(v51 + v8[17], v107);
  v104(v51 + v8[18], v105);
  v102(v51 + v8[19], v103);
  v100(v51 + v8[20], v101);
  v98(v51 + v8[21], v99);
  v96(v51 + v8[22], v97);
  v94(v51 + v8[23], v95);
  v92(v51 + v8[24], v93);
  v90(v51 + v8[25], v91);
  v88(v51 + v8[26], v89);
  v86(v51 + v8[27], v87);
  v85(v51 + v8[28], v80);
  v84(v51 + v8[29], v33);
  v83(v51 + v8[30], v35);
  v82(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v81(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v79(v51 + v8[36], v46);
  v58 = *(v128 + v139[8]);
  swift_unknownObjectRelease();
  if (*(v128 + v139[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v136) & ~v136;
  v60 = (v128 + v139[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v138 + v59;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v61, *(v61 + 8), *(v61 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:
        v69 = *(v63 + 8);

        v70 = *(v63 + 32);

        break;
      case 1:
        v66 = sub_1E65DE508();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE508();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }
  }

  v71 = (v59 + v133 + v132) & ~v132;
  v72 = (v131 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v134 + 8))(v138 + v71, v135);
  v73 = *(v138 + v72);
  swift_unknownObjectRelease();
  v74 = *(v138 + v72 + 24);

  v75 = *(v138 + v72 + 40);

  v76 = *(v138 + v72 + 56);

  v77 = *(v138 + v72 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5ED1990()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5ED1AA8()
{
  v118 = type metadata accessor for AppComposer();
  v116 = *(*(v118 - 1) + 80);
  v114 = *(*(v118 - 1) + 64);
  v1 = *(v0 + 24);

  v117 = v0;
  v115 = (v116 + 32) & ~v116;
  v111 = v0 + v115;
  v2 = *(v0 + v115);

  v3 = (v0 + v115 + v118[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v113 = type metadata accessor for AccountService();
  v112 = *(v113[-1].Description + 1);
  v112(&v3[v6], v113);
  v7 = v5[7];
  v110 = type metadata accessor for AppStateService();
  v109 = *(v110[-1].Description + 1);
  v109(&v3[v7], v110);
  v8 = v5[8];
  v108 = type metadata accessor for ArchivedSessionService();
  v107 = *(v108[-1].Description + 1);
  v107(&v3[v8], v108);
  v9 = v5[9];
  v106 = type metadata accessor for AssetService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v9], v106);
  v10 = v5[10];
  v104 = type metadata accessor for AwardsService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v10], v104);
  v11 = v5[11];
  v102 = type metadata accessor for BookmarkService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v11], v102);
  v12 = v5[12];
  v100 = type metadata accessor for CatalogService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v12], v100);
  v13 = v5[13];
  v98 = type metadata accessor for ConfigurationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v13], v98);
  v14 = v5[14];
  v96 = type metadata accessor for ContentAvailabilityService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v14], v96);
  v15 = v5[15];
  v94 = type metadata accessor for EngagementService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v15], v94);
  v16 = v5[16];
  v92 = type metadata accessor for HealthDataService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v16], v92);
  v17 = v5[17];
  v90 = type metadata accessor for InteropService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v17], v90);
  v18 = v5[18];
  v88 = type metadata accessor for LocalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v18], v88);
  v19 = v5[19];
  v86 = type metadata accessor for MarketingService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v19], v86);
  v20 = v5[20];
  v84 = type metadata accessor for MetricService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v20], v84);
  v21 = v5[21];
  v82 = type metadata accessor for PersonalizationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v21], v82);
  v22 = v5[22];
  v80 = type metadata accessor for PlayerService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v22], v80);
  v23 = v5[23];
  v78 = type metadata accessor for PrivacyPreferenceService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v23], v78);
  v24 = v5[24];
  v76 = type metadata accessor for RecommendationService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v24], v76);
  v25 = v5[25];
  v74 = type metadata accessor for RemoteBrowsingService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v25], v74);
  v26 = v5[26];
  v72 = type metadata accessor for SearchService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v26], v72);
  v27 = v5[27];
  v70 = type metadata accessor for ServiceSubscriptionService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v27], v70);
  v28 = v5[28];
  v63 = type metadata accessor for SessionService();
  v68 = *(v63[-1].Description + 1);
  v68(&v3[v28], v63);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v67 = *(v30[-1].Description + 1);
  v67(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v66 = *(v32[-1].Description + 1);
  v66(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v65 = *(v34[-1].Description + 1);
  v65(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v64 = *(QueueService[-1].Description + 1);
  v64(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v62 = *(v43[-1].Description + 1);
  v62(&v3[v42], v43);
  v44 = *(v111 + v118[6]);

  v45 = (v111 + v118[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v112(&v48[v5[6]], v113);
  v109(&v48[v5[7]], v110);
  v107(&v48[v5[8]], v108);
  v105(&v48[v5[9]], v106);
  v103(&v48[v5[10]], v104);
  v101(&v48[v5[11]], v102);
  v99(&v48[v5[12]], v100);
  v97(&v48[v5[13]], v98);
  v95(&v48[v5[14]], v96);
  v93(&v48[v5[15]], v94);
  v91(&v48[v5[16]], v92);
  v89(&v48[v5[17]], v90);
  v87(&v48[v5[18]], v88);
  v85(&v48[v5[19]], v86);
  v83(&v48[v5[20]], v84);
  v81(&v48[v5[21]], v82);
  v79(&v48[v5[22]], v80);
  v77(&v48[v5[23]], v78);
  v75(&v48[v5[24]], v76);
  v73(&v48[v5[25]], v74);
  v71(&v48[v5[26]], v72);
  v69(&v48[v5[27]], v70);
  v68(&v48[v5[28]], v63);
  v67(&v48[v5[29]], v30);
  v66(&v48[v5[30]], v32);
  v65(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v64(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v62(&v48[v5[36]], v43);
  v55 = *(v111 + v118[8]);
  swift_unknownObjectRelease();
  if (*(v111 + v118[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v111 + v118[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v115 + v114) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 31) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v117 + v57 + 16);

  v60 = *(v117 + v58);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5ED27A4()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v115 = v0;
  v113 = (v114 + 48) & ~v114;
  v109 = v0 + v113;
  v3 = *(v0 + v113);

  v4 = (v0 + v113 + v116[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v4[v7], v111);
  v8 = v6[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v8], v108);
  v9 = v6[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v9], v106);
  v10 = v6[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v10], v104);
  v11 = v6[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v11], v102);
  v12 = v6[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v12], v100);
  v13 = v6[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v13], v98);
  v14 = v6[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v14], v96);
  v15 = v6[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v15], v94);
  v16 = v6[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v16], v92);
  v17 = v6[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v17], v90);
  v18 = v6[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v18], v88);
  v19 = v6[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v19], v86);
  v20 = v6[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v20], v84);
  v21 = v6[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v21], v82);
  v22 = v6[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v22], v80);
  v23 = v6[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v4[v23], v78);
  v24 = v6[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v4[v24], v76);
  v25 = v6[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v4[v25], v74);
  v26 = v6[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v4[v26], v72);
  v27 = v6[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v4[v27], v70);
  v28 = v6[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v4[v28], v68);
  v29 = v6[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v4[v29], v61);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v65 = *(v31[-1].Description + 1);
  v65(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v64 = *(v33[-1].Description + 1);
  v64(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v63 = *(v35[-1].Description + 1);
  v63(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v60 = *(v44[-1].Description + 1);
  v60(&v4[v43], v44);
  v45 = *(v109 + v116[6]);

  v46 = (v109 + v116[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v110(&v49[v6[6]], v111);
  v107(&v49[v6[7]], v108);
  v105(&v49[v6[8]], v106);
  v103(&v49[v6[9]], v104);
  v101(&v49[v6[10]], v102);
  v99(&v49[v6[11]], v100);
  v97(&v49[v6[12]], v98);
  v95(&v49[v6[13]], v96);
  v93(&v49[v6[14]], v94);
  v91(&v49[v6[15]], v92);
  v89(&v49[v6[16]], v90);
  v87(&v49[v6[17]], v88);
  v85(&v49[v6[18]], v86);
  v83(&v49[v6[19]], v84);
  v81(&v49[v6[20]], v82);
  v79(&v49[v6[21]], v80);
  v77(&v49[v6[22]], v78);
  v75(&v49[v6[23]], v76);
  v73(&v49[v6[24]], v74);
  v71(&v49[v6[25]], v72);
  v69(&v49[v6[26]], v70);
  v67(&v49[v6[27]], v68);
  v66(&v49[v6[28]], v61);
  v65(&v49[v6[29]], v31);
  v64(&v49[v6[30]], v33);
  v63(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v62(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v60(&v49[v6[36]], v44);
  v56 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v109 + v116[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = *(v115 + ((v113 + v112) & 0xFFFFFFFFFFFFFFF8) + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5ED3498()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v115 = v0;
  v113 = (v114 + 48) & ~v114;
  v109 = v0 + v113;
  v3 = *(v0 + v113);

  v4 = (v0 + v113 + v116[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v4[v7], v111);
  v8 = v6[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v8], v108);
  v9 = v6[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v9], v106);
  v10 = v6[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v10], v104);
  v11 = v6[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v11], v102);
  v12 = v6[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v12], v100);
  v13 = v6[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v13], v98);
  v14 = v6[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v14], v96);
  v15 = v6[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v15], v94);
  v16 = v6[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v16], v92);
  v17 = v6[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v17], v90);
  v18 = v6[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v18], v88);
  v19 = v6[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v19], v86);
  v20 = v6[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v20], v84);
  v21 = v6[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v21], v82);
  v22 = v6[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v22], v80);
  v23 = v6[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v4[v23], v78);
  v24 = v6[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v4[v24], v76);
  v25 = v6[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v4[v25], v74);
  v26 = v6[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v4[v26], v72);
  v27 = v6[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v4[v27], v70);
  v28 = v6[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v4[v28], v68);
  v29 = v6[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v4[v29], v61);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v65 = *(v31[-1].Description + 1);
  v65(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v64 = *(v33[-1].Description + 1);
  v64(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v63 = *(v35[-1].Description + 1);
  v63(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v60 = *(v44[-1].Description + 1);
  v60(&v4[v43], v44);
  v45 = *(v109 + v116[6]);

  v46 = (v109 + v116[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v110(&v49[v6[6]], v111);
  v107(&v49[v6[7]], v108);
  v105(&v49[v6[8]], v106);
  v103(&v49[v6[9]], v104);
  v101(&v49[v6[10]], v102);
  v99(&v49[v6[11]], v100);
  v97(&v49[v6[12]], v98);
  v95(&v49[v6[13]], v96);
  v93(&v49[v6[14]], v94);
  v91(&v49[v6[15]], v92);
  v89(&v49[v6[16]], v90);
  v87(&v49[v6[17]], v88);
  v85(&v49[v6[18]], v86);
  v83(&v49[v6[19]], v84);
  v81(&v49[v6[20]], v82);
  v79(&v49[v6[21]], v80);
  v77(&v49[v6[22]], v78);
  v75(&v49[v6[23]], v76);
  v73(&v49[v6[24]], v74);
  v71(&v49[v6[25]], v72);
  v69(&v49[v6[26]], v70);
  v67(&v49[v6[27]], v68);
  v66(&v49[v6[28]], v61);
  v65(&v49[v6[29]], v31);
  v64(&v49[v6[30]], v33);
  v63(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v62(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v60(&v49[v6[36]], v44);
  v56 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v109 + v116[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = *(v115 + ((v112 + v113 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5ED4190()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 24);

  v107 = (v0 + ((v111 + 32) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5ED4E60()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v1 = *(v0 + 16);

  v113 = v0;
  v111 = (v112 + 24) & ~v112;
  v107 = v0 + v111;
  v2 = *(v0 + v111);

  v3 = (v0 + v111 + v114[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v114[6]);

  v45 = (v107 + v114[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v107 + v114[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  __swift_destroy_boxed_opaque_existential_1((v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5ED5B4C()
{
  v1 = sub_1E65E1518();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v115 = type metadata accessor for AppComposer();
  v114 = *(*(v115 - 1) + 80);
  v113 = *(*(v115 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v110 = (v0 + ((v3 + v4 + v114) & ~v114));
  v5 = *v110;

  v6 = v110 + v115[5];
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v6[v9], v112);
  v10 = v8[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v6[v10], v109);
  v11 = v8[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v6[v11], v107);
  v12 = v8[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v6[v12], v105);
  v13 = v8[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v6[v13], v103);
  v14 = v8[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v6[v14], v101);
  v15 = v8[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v6[v15], v99);
  v16 = v8[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v6[v16], v97);
  v17 = v8[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v6[v17], v95);
  v18 = v8[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v6[v18], v93);
  v19 = v8[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v6[v19], v91);
  v20 = v8[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v6[v20], v89);
  v21 = v8[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v6[v21], v87);
  v22 = v8[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v6[v22], v85);
  v23 = v8[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v6[v23], v83);
  v24 = v8[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v6[v24], v81);
  v25 = v8[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v6[v25], v79);
  v26 = v8[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v6[v26], v77);
  v27 = v8[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v6[v27], v75);
  v28 = v8[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v6[v28], v73);
  v29 = v8[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v6[v29], v71);
  v30 = v8[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v6[v30], v69);
  v31 = v8[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v6[v31], v62);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v66 = *(v33[-1].Description + 1);
  v66(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v65 = *(v35[-1].Description + 1);
  v65(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v64 = *(v37[-1].Description + 1);
  v64(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v61 = *(v46[-1].Description + 1);
  v61(&v6[v45], v46);
  v47 = *(v110 + v115[6]);

  v48 = (v110 + v115[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = v48 + *(type metadata accessor for AppDataItemResolver() + 24);
  v52 = *v51;
  swift_unknownObjectRelease();
  v111(&v51[v8[6]], v112);
  v108(&v51[v8[7]], v109);
  v106(&v51[v8[8]], v107);
  v104(&v51[v8[9]], v105);
  v102(&v51[v8[10]], v103);
  v100(&v51[v8[11]], v101);
  v98(&v51[v8[12]], v99);
  v96(&v51[v8[13]], v97);
  v94(&v51[v8[14]], v95);
  v92(&v51[v8[15]], v93);
  v90(&v51[v8[16]], v91);
  v88(&v51[v8[17]], v89);
  v86(&v51[v8[18]], v87);
  v84(&v51[v8[19]], v85);
  v82(&v51[v8[20]], v83);
  v80(&v51[v8[21]], v81);
  v78(&v51[v8[22]], v79);
  v76(&v51[v8[23]], v77);
  v74(&v51[v8[24]], v75);
  v72(&v51[v8[25]], v73);
  v70(&v51[v8[26]], v71);
  v68(&v51[v8[27]], v69);
  v67(&v51[v8[28]], v62);
  v66(&v51[v8[29]], v33);
  v65(&v51[v8[30]], v35);
  v64(&v51[v8[31]], v37);
  v53 = &v51[v8[32]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v63(&v51[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v51[v8[34]]);
  v57 = *&v51[v8[35]];

  v61(&v51[v8[36]], v46);
  v58 = *(v110 + v115[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v115[9] + 8) >= 0xC)
  {
  }

  v59 = (v110 + v115[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5ED6898()
{
  v119 = type metadata accessor for AppComposer();
  v117 = *(*(v119 - 1) + 80);
  v115 = *(*(v119 - 1) + 64);
  v116 = (v117 + 16) & ~v117;
  v118 = v0;
  v112 = v0 + v116;
  v1 = *(v0 + v116);

  v2 = (v0 + v116 + v119[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v114 = type metadata accessor for AccountService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v5], v114);
  v6 = v4[7];
  v111 = type metadata accessor for AppStateService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v6], v111);
  v7 = v4[8];
  v109 = type metadata accessor for ArchivedSessionService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v7], v109);
  v8 = v4[9];
  v107 = type metadata accessor for AssetService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v8], v107);
  v9 = v4[10];
  v105 = type metadata accessor for AwardsService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v9], v105);
  v10 = v4[11];
  v103 = type metadata accessor for BookmarkService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v10], v103);
  v11 = v4[12];
  v101 = type metadata accessor for CatalogService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v11], v101);
  v12 = v4[13];
  v99 = type metadata accessor for ConfigurationService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v12], v99);
  v13 = v4[14];
  v97 = type metadata accessor for ContentAvailabilityService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v13], v97);
  v14 = v4[15];
  v95 = type metadata accessor for EngagementService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v14], v95);
  v15 = v4[16];
  v93 = type metadata accessor for HealthDataService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v15], v93);
  v16 = v4[17];
  v91 = type metadata accessor for InteropService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v16], v91);
  v17 = v4[18];
  v89 = type metadata accessor for LocalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v17], v89);
  v18 = v4[19];
  v87 = type metadata accessor for MarketingService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v18], v87);
  v19 = v4[20];
  v85 = type metadata accessor for MetricService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v19], v85);
  v20 = v4[21];
  v83 = type metadata accessor for PersonalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v20], v83);
  v21 = v4[22];
  v81 = type metadata accessor for PlayerService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v21], v81);
  v22 = v4[23];
  v79 = type metadata accessor for PrivacyPreferenceService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v22], v79);
  v23 = v4[24];
  v77 = type metadata accessor for RecommendationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v23], v77);
  v24 = v4[25];
  v75 = type metadata accessor for RemoteBrowsingService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v24], v75);
  v25 = v4[26];
  v73 = type metadata accessor for SearchService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v25], v73);
  v26 = v4[27];
  v71 = type metadata accessor for ServiceSubscriptionService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v26], v71);
  v27 = v4[28];
  v64 = type metadata accessor for SessionService();
  v69 = *(v64[-1].Description + 1);
  v69(&v2[v27], v64);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v68 = *(v29[-1].Description + 1);
  v68(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v67 = *(v31[-1].Description + 1);
  v67(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v66 = *(v33[-1].Description + 1);
  v66(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v65 = *(QueueService[-1].Description + 1);
  v65(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v63 = *(v42[-1].Description + 1);
  v63(&v2[v41], v42);
  v43 = *(v112 + v119[6]);

  v44 = (v112 + v119[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v113(&v47[v4[6]], v114);
  v110(&v47[v4[7]], v111);
  v108(&v47[v4[8]], v109);
  v106(&v47[v4[9]], v107);
  v104(&v47[v4[10]], v105);
  v102(&v47[v4[11]], v103);
  v100(&v47[v4[12]], v101);
  v98(&v47[v4[13]], v99);
  v96(&v47[v4[14]], v97);
  v94(&v47[v4[15]], v95);
  v92(&v47[v4[16]], v93);
  v90(&v47[v4[17]], v91);
  v88(&v47[v4[18]], v89);
  v86(&v47[v4[19]], v87);
  v84(&v47[v4[20]], v85);
  v82(&v47[v4[21]], v83);
  v80(&v47[v4[22]], v81);
  v78(&v47[v4[23]], v79);
  v76(&v47[v4[24]], v77);
  v74(&v47[v4[25]], v75);
  v72(&v47[v4[26]], v73);
  v70(&v47[v4[27]], v71);
  v69(&v47[v4[28]], v64);
  v68(&v47[v4[29]], v29);
  v67(&v47[v4[30]], v31);
  v66(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v65(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v63(&v47[v4[36]], v42);
  v54 = *(v112 + v119[8]);
  swift_unknownObjectRelease();
  if (*(v112 + v119[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v112 + v119[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + ((v115 + v116 + 7) & 0xFFFFFFFFFFFFFFF8));
  v57 = *v56;
  swift_unknownObjectRelease();
  v58 = v56[3];

  v59 = v56[5];

  v60 = v56[7];

  v61 = v56[9];

  return swift_deallocObject();
}

uint64_t sub_1E5ED759C()
{
  v113 = type metadata accessor for AppComposer();
  v111 = *(*(v113 - 1) + 80);
  v109 = *(*(v113 - 1) + 64);
  v110 = (v111 + 16) & ~v111;
  v112 = v0;
  v106 = v0 + v110;
  v1 = *(v0 + v110);

  v2 = (v0 + v110 + v113[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v5], v108);
  v6 = v4[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v6], v105);
  v7 = v4[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v7], v103);
  v8 = v4[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v8], v101);
  v9 = v4[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v9], v99);
  v10 = v4[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v10], v97);
  v11 = v4[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v11], v95);
  v12 = v4[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v12], v93);
  v13 = v4[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v13], v91);
  v14 = v4[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v14], v89);
  v15 = v4[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v15], v87);
  v16 = v4[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v16], v85);
  v17 = v4[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v17], v83);
  v18 = v4[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v18], v81);
  v19 = v4[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v19], v79);
  v20 = v4[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v20], v77);
  v21 = v4[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v21], v75);
  v22 = v4[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v22], v73);
  v23 = v4[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v23], v71);
  v24 = v4[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v24], v69);
  v25 = v4[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(&v2[v25], v67);
  v26 = v4[27];
  v65 = type metadata accessor for ServiceSubscriptionService();
  v64 = *(v65[-1].Description + 1);
  v64(&v2[v26], v65);
  v27 = v4[28];
  v58 = type metadata accessor for SessionService();
  v63 = *(v58[-1].Description + 1);
  v63(&v2[v27], v58);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v62 = *(v29[-1].Description + 1);
  v62(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v61 = *(v31[-1].Description + 1);
  v61(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v60 = *(v33[-1].Description + 1);
  v60(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v57 = *(v42[-1].Description + 1);
  v57(&v2[v41], v42);
  v43 = *(v106 + v113[6]);

  v44 = (v106 + v113[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v107(&v47[v4[6]], v108);
  v104(&v47[v4[7]], v105);
  v102(&v47[v4[8]], v103);
  v100(&v47[v4[9]], v101);
  v98(&v47[v4[10]], v99);
  v96(&v47[v4[11]], v97);
  v94(&v47[v4[12]], v95);
  v92(&v47[v4[13]], v93);
  v90(&v47[v4[14]], v91);
  v88(&v47[v4[15]], v89);
  v86(&v47[v4[16]], v87);
  v84(&v47[v4[17]], v85);
  v82(&v47[v4[18]], v83);
  v80(&v47[v4[19]], v81);
  v78(&v47[v4[20]], v79);
  v76(&v47[v4[21]], v77);
  v74(&v47[v4[22]], v75);
  v72(&v47[v4[23]], v73);
  v70(&v47[v4[24]], v71);
  v68(&v47[v4[25]], v69);
  v66(&v47[v4[26]], v67);
  v64(&v47[v4[27]], v65);
  v63(&v47[v4[28]], v58);
  v62(&v47[v4[29]], v29);
  v61(&v47[v4[30]], v31);
  v60(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v59(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v57(&v47[v4[36]], v42);
  v54 = *(v106 + v113[8]);
  swift_unknownObjectRelease();
  if (*(v106 + v113[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v106 + v113[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  __swift_destroy_boxed_opaque_existential_1((v112 + ((v109 + v110 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5ED827C()
{
  v1 = sub_1E65E1168();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1E5ED8318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E2CA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5ED8380()
{
  v1 = type metadata accessor for RouteDestination();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  type metadata accessor for RouteResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_2;
    case 1u:
      v46 = sub_1E65D76F8();
      v47 = *(v46 - 8);
      if (!(*(v47 + 48))(v0 + v3, 1, v46))
      {
        (*(v47 + 8))(v0 + v3, v46);
      }

      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v49 = *(v5 + v48[12] + 8);

      v50 = v48[16];
      v51 = sub_1E65E2CF8();
      v52 = *(v51 - 8);
      if (!(*(v52 + 48))(v5 + v50, 1, v51))
      {
        (*(v52 + 8))(v5 + v50, v51);
      }

      v53 = *(v5 + v48[20]);

      v23 = v48[24];
      v54 = sub_1E65E1FC8();
      goto LABEL_46;
    case 3u:
      v62 = *(v5 + 8);

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v30 = sub_1E65D72D8();
      goto LABEL_44;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v57 = sub_1E65E0FD8();
            (*(*(v57 - 8) + 8))(v0 + v3, v57);
          }

          goto LABEL_77;
        }

LABEL_76:
        v86 = *(v5 + 8);

        goto LABEL_77;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_76;
      }

LABEL_77:
      v87 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_51:
      v70 = v5 + *(v1 + 20);
      type metadata accessor for RouteSource(0);
      v71 = swift_getEnumCaseMultiPayload();
      if (v71 <= 1)
      {
        if (!v71)
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_68;
          }

          v90 = v4;
          v91 = (v2 + 16) & ~v2;
          v79 = sub_1E65D74E8();
          v80 = *(v79 - 8);
          v89 = *(v80 + 8);
          v89(v70, v79);
          v81 = type metadata accessor for URLContext(0);
          v82 = *(v81 + 20);
          if (!(*(v80 + 48))(v70 + v82, 1, v79))
          {
            v89(v70 + v82, v79);
          }

          v83 = *(v70 + *(v81 + 24) + 8);

          goto LABEL_67;
        }

        if (v71 != 1)
        {
          goto LABEL_68;
        }

LABEL_58:
        v90 = v4;
        v91 = (v2 + 16) & ~v2;
        v88 = v0 + v3;
        v73 = sub_1E65D74E8();
        v74 = *(v73 - 8);
        v75 = *(v74 + 8);
        v75(v70, v73);
        v76 = type metadata accessor for URLContext(0);
        v77 = *(v76 + 20);
        if (!(*(v74 + 48))(v70 + v77, 1, v73))
        {
          v75(v70 + v77, v73);
        }

        v78 = *(v70 + *(v76 + 24) + 8);

        v5 = v88;
LABEL_67:
        v4 = v90;
        v3 = v91;
        goto LABEL_68;
      }

      switch(v71)
      {
        case 2:
          goto LABEL_58;
        case 3:
          v72 = sub_1E65D74E8();
          break;
        case 4:
          v72 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_68;
      }

      (*(*(v72 - 8) + 8))(v70, v72);
LABEL_68:
      v84 = *(v5 + *(v1 + 24));

      __swift_destroy_boxed_opaque_existential_1((v0 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));

      return swift_deallocObject();
    case 6u:

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v28 = *(v27 + 48);
      v29 = sub_1E65DB848();
      (*(*(v29 - 8) + 8))(v5 + v28, v29);
      v10 = *(v27 + 64);
      v30 = sub_1E65E1518();
      goto LABEL_44;
    case 7u:
      v38 = sub_1E65DB848();
      (*(*(v38 - 8) + 8))(v0 + v3, v38);
      v39 = &unk_1ED0720D0;
      v40 = &unk_1E65EA290;
      goto LABEL_42;
    case 8u:
    case 9u:

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v8 = *(v7 + 48);
      v9 = sub_1E65DB848();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
      v10 = *(v7 + 64);
      goto LABEL_43;
    case 0xCu:
      v55 = *(v5 + 8);

      sub_1E5F94E00(*(v5 + 16), *(v5 + 24));
      goto LABEL_51;
    case 0xEu:
      v26 = sub_1E65DB718();
      goto LABEL_50;
    case 0x11u:
      v66 = *(v5 + 8);

      v39 = &unk_1ED0720E0;
      v40 = &unk_1E65EA2A0;
LABEL_42:
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v39, v40) + 48);
LABEL_43:
      v30 = sub_1E65D74E8();
      goto LABEL_44;
    case 0x12u:
      v63 = *v5;
      v64 = *(v5 + 8);
      v65 = *(v5 + 16);
      sub_1E5F94E14();
      goto LABEL_51;
    case 0x13u:
      goto LABEL_23;
    case 0x14u:
      v41 = *(v5 + 8);

      v42 = *(v5 + 24);

      goto LABEL_51;
    case 0x15u:
      v67 = *(v5 + 8);

      v68 = *(v5 + 24);

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v54 = sub_1E65D96F8();
LABEL_46:
      v24 = v54;
      v25 = *(v54 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v54))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v12 = v11[12];
      v13 = sub_1E65D74E8();
      (*(*(v13 - 8) + 8))(v5 + v12, v13);
      v14 = *(v5 + v11[16] + 8);

      v15 = v11[20];
      v16 = sub_1E65DB3E8();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v5 + v15, 1, v16))
      {
        (*(v17 + 8))(v5 + v15, v16);
      }

      v18 = *(v5 + v11[24] + 8);

      v19 = *(v5 + v11[28] + 8);

      v20 = v11[32];
      v21 = sub_1E65DB5D8();
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(v5 + v20, 1, v21))
      {
        (*(v22 + 8))(v5 + v20, v21);
      }

      v23 = v11[36];
      v24 = sub_1E65D7A38();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v24))
      {
LABEL_47:
        (*(v25 + 8))(v5 + v23, v24);
      }

      goto LABEL_51;
    case 0x17u:
      v34 = sub_1E65E57D8();
      (*(*(v34 - 8) + 8))(v0 + v3, v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v36 = *(v35 + 48);
      v37 = sub_1E65E5528();
      (*(*(v37 - 8) + 8))(v5 + v36, v37);
      if (*(v5 + *(v35 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_51;
    case 0x18u:

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v30 = sub_1E65DB848();
      goto LABEL_44;
    case 0x1Au:
      sub_1E65E52B8();
      v45 = swift_getEnumCaseMultiPayload();
      if (v45 == 1)
      {

        goto LABEL_51;
      }

      if (v45)
      {
        goto LABEL_51;
      }

LABEL_23:
      v26 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = sub_1E65DAEB8();
LABEL_50:
        (*(*(v26 - 8) + 8))(v0 + v3, v26);
      }

      else
      {
LABEL_2:
        v6 = *(v5 + 8);
      }

      goto LABEL_51;
    case 0x1Cu:
      v26 = sub_1E65D76F8();
      goto LABEL_50;
    case 0x1Du:
      v69 = sub_1E65E55E8();
      (*(*(v69 - 8) + 8))(v0 + v3, v69);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v30 = sub_1E65D7EB8();
LABEL_44:
      (*(*(v30 - 8) + 8))(v5 + v10, v30);
      goto LABEL_51;
    case 0x1Eu:
      v31 = sub_1E65E56B8();
      (*(*(v31 - 8) + 8))(v0 + v3, v31);
      v32 = &unk_1ED072110;
      v33 = &unk_1E65EA2D0;
      goto LABEL_37;
    case 0x1Fu:
      v43 = sub_1E65DA308();
      (*(*(v43 - 8) + 8))(v0 + v3, v43);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_38;
    case 0x20u:
      v58 = sub_1E65E58D8();
      (*(*(v58 - 8) + 8))(v0 + v3, v58);
      v32 = &qword_1ED072120;
      v33 = &qword_1E65EA2E0;
LABEL_37:
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      v60 = *(v5 + *(v59 + 48));

      v44 = *(v59 + 64);
LABEL_38:
      v61 = *(v5 + v44);

      goto LABEL_51;
    case 0x21u:
      v26 = sub_1E65D9048();
      goto LABEL_50;
    default:
      goto LABEL_51;
  }
}

uint64_t sub_1E5ED9108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5ED9140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5ED9190()
{
  v115 = type metadata accessor for AppComposer();
  v113 = *(*(v115 - 1) + 80);
  v111 = *(*(v115 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v114 = v0;
  v112 = (v113 + 32) & ~v113;
  v108 = v0 + v112;
  v2 = *(v0 + v112);

  v3 = (v0 + v112 + v115[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v110 = type metadata accessor for AccountService();
  v109 = *(v110[-1].Description + 1);
  v109(&v3[v6], v110);
  v7 = v5[7];
  v107 = type metadata accessor for AppStateService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v7], v107);
  v8 = v5[8];
  v105 = type metadata accessor for ArchivedSessionService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v8], v105);
  v9 = v5[9];
  v103 = type metadata accessor for AssetService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v9], v103);
  v10 = v5[10];
  v101 = type metadata accessor for AwardsService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v10], v101);
  v11 = v5[11];
  v99 = type metadata accessor for BookmarkService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v11], v99);
  v12 = v5[12];
  v97 = type metadata accessor for CatalogService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v12], v97);
  v13 = v5[13];
  v95 = type metadata accessor for ConfigurationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v13], v95);
  v14 = v5[14];
  v93 = type metadata accessor for ContentAvailabilityService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v14], v93);
  v15 = v5[15];
  v91 = type metadata accessor for EngagementService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v15], v91);
  v16 = v5[16];
  v89 = type metadata accessor for HealthDataService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v16], v89);
  v17 = v5[17];
  v87 = type metadata accessor for InteropService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v17], v87);
  v18 = v5[18];
  v85 = type metadata accessor for LocalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v18], v85);
  v19 = v5[19];
  v83 = type metadata accessor for MarketingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v19], v83);
  v20 = v5[20];
  v81 = type metadata accessor for MetricService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v20], v81);
  v21 = v5[21];
  v79 = type metadata accessor for PersonalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v21], v79);
  v22 = v5[22];
  v77 = type metadata accessor for PlayerService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v22], v77);
  v23 = v5[23];
  v75 = type metadata accessor for PrivacyPreferenceService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v23], v75);
  v24 = v5[24];
  v73 = type metadata accessor for RecommendationService();
  v72 = *(v73[-1].Description + 1);
  v72(&v3[v24], v73);
  v25 = v5[25];
  v71 = type metadata accessor for RemoteBrowsingService();
  v70 = *(v71[-1].Description + 1);
  v70(&v3[v25], v71);
  v26 = v5[26];
  v69 = type metadata accessor for SearchService();
  v68 = *(v69[-1].Description + 1);
  v68(&v3[v26], v69);
  v27 = v5[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v66 = *(v67[-1].Description + 1);
  v66(&v3[v27], v67);
  v28 = v5[28];
  v60 = type metadata accessor for SessionService();
  v65 = *(v60[-1].Description + 1);
  v65(&v3[v28], v60);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v64 = *(v30[-1].Description + 1);
  v64(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v63 = *(v32[-1].Description + 1);
  v63(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v62 = *(v34[-1].Description + 1);
  v62(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v61 = *(QueueService[-1].Description + 1);
  v61(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v59 = *(v43[-1].Description + 1);
  v59(&v3[v42], v43);
  v44 = *(v108 + v115[6]);

  v45 = (v108 + v115[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v109(&v48[v5[6]], v110);
  v106(&v48[v5[7]], v107);
  v104(&v48[v5[8]], v105);
  v102(&v48[v5[9]], v103);
  v100(&v48[v5[10]], v101);
  v98(&v48[v5[11]], v99);
  v96(&v48[v5[12]], v97);
  v94(&v48[v5[13]], v95);
  v92(&v48[v5[14]], v93);
  v90(&v48[v5[15]], v91);
  v88(&v48[v5[16]], v89);
  v86(&v48[v5[17]], v87);
  v84(&v48[v5[18]], v85);
  v82(&v48[v5[19]], v83);
  v80(&v48[v5[20]], v81);
  v78(&v48[v5[21]], v79);
  v76(&v48[v5[22]], v77);
  v74(&v48[v5[23]], v75);
  v72(&v48[v5[24]], v73);
  v70(&v48[v5[25]], v71);
  v68(&v48[v5[26]], v69);
  v66(&v48[v5[27]], v67);
  v65(&v48[v5[28]], v60);
  v64(&v48[v5[29]], v30);
  v63(&v48[v5[30]], v32);
  v62(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v61(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v59(&v48[v5[36]], v43);
  v55 = *(v108 + v115[8]);
  swift_unknownObjectRelease();
  if (*(v108 + v115[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v108 + v115[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = *(v114 + ((v112 + v111) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5ED9EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770A0, &qword_1E65F95F8);
  sub_1E6259E20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5ED9FCC()
{
  if (v0[3] >= 0xCuLL)
  {
  }

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return swift_deallocObject();
}

uint64_t sub_1E5EDA024()
{
  v124 = type metadata accessor for AppComposer();
  v122 = *(*(v124 - 1) + 80);
  v117 = *(*(v124 - 1) + 64);
  v1 = sub_1E65E55E8();
  v120 = *(v1 - 8);
  v121 = v1;
  v115 = *(v120 + 80);
  v114 = *(v120 + 64);
  v119 = sub_1E65D7EB8();
  v116 = *(v119 - 8);
  v113 = *(v116 + 80);
  v112 = *(v116 + 64);
  v123 = v0;
  v118 = (v122 + 16) & ~v122;
  v109 = v0 + v118;
  v2 = *(v0 + v118);

  v3 = (v0 + v118 + v124[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(v3 + v6, v111);
  v7 = v5[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(v3 + v7, v108);
  v8 = v5[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(v3 + v8, v106);
  v9 = v5[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(v3 + v9, v104);
  v10 = v5[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(v3 + v10, v102);
  v11 = v5[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(v3 + v11, v100);
  v12 = v5[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(v3 + v12, v98);
  v13 = v5[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(v3 + v13, v96);
  v14 = v5[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(v3 + v14, v94);
  v15 = v5[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(v3 + v15, v92);
  v16 = v5[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(v3 + v16, v90);
  v17 = v5[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(v3 + v17, v88);
  v18 = v5[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(v3 + v18, v86);
  v19 = v5[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(v3 + v19, v84);
  v20 = v5[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(v3 + v20, v82);
  v21 = v5[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(v3 + v21, v80);
  v22 = v5[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(v3 + v22, v78);
  v23 = v5[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(v3 + v23, v76);
  v24 = v5[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(v3 + v24, v74);
  v25 = v5[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(v3 + v25, v72);
  v26 = v5[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(v3 + v26, v70);
  v27 = v5[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(v3 + v27, v68);
  v28 = v5[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(v3 + v28, v61);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v65 = *(v30[-1].Description + 1);
  v65(v3 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v64 = *(v32[-1].Description + 1);
  v64(v3 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v63 = *(v34[-1].Description + 1);
  v63(v3 + v33, v34);
  v35 = (v3 + v5[32]);
  v36 = v35[1];

  v37 = v35[3];

  v38 = v35[5];

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(v3 + v39, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v5[34]));
  v41 = *(v3 + v5[35]);

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v60 = *(v43[-1].Description + 1);
  v60(v3 + v42, v43);
  v44 = *(v109 + v124[6]);

  v45 = (v109 + v124[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = (v45 + *(type metadata accessor for AppDataItemResolver() + 24));
  v49 = *v48;
  swift_unknownObjectRelease();
  v110(v48 + v5[6], v111);
  v107(v48 + v5[7], v108);
  v105(v48 + v5[8], v106);
  v103(v48 + v5[9], v104);
  v101(v48 + v5[10], v102);
  v99(v48 + v5[11], v100);
  v97(v48 + v5[12], v98);
  v95(v48 + v5[13], v96);
  v93(v48 + v5[14], v94);
  v91(v48 + v5[15], v92);
  v89(v48 + v5[16], v90);
  v87(v48 + v5[17], v88);
  v85(v48 + v5[18], v86);
  v83(v48 + v5[19], v84);
  v81(v48 + v5[20], v82);
  v79(v48 + v5[21], v80);
  v77(v48 + v5[22], v78);
  v75(v48 + v5[23], v76);
  v73(v48 + v5[24], v74);
  v71(v48 + v5[25], v72);
  v69(v48 + v5[26], v70);
  v67(v48 + v5[27], v68);
  v66(v48 + v5[28], v61);
  v65(v48 + v5[29], v30);
  v64(v48 + v5[30], v32);
  v63(v48 + v5[31], v34);
  v50 = (v48 + v5[32]);
  v51 = v50[1];

  v52 = v50[3];

  v53 = v50[5];

  v62(v48 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v48 + v5[34]));
  v54 = *(v48 + v5[35]);

  v60(v48 + v5[36], v43);
  v55 = *(v109 + v124[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v124[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v109 + v124[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v118 + v117 + v115) & ~v115;
  v58 = (v57 + v114 + v113) & ~v113;
  (*(v120 + 8))(v123 + v57, v121);
  (*(v116 + 8))(v123 + v58, v119);
  __swift_destroy_boxed_opaque_existential_1((v123 + ((v112 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5EDAE2C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EDAE64()
{
  v78 = type metadata accessor for AppComposer();
  v134 = *(*(v78 - 1) + 80);
  v1 = (v134 + 16) & ~v134;
  v2 = v1 + *(*(v78 - 1) + 64);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v129 = (v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8);
  v130 = v4;
  v131 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v128 = (*(v5 + 64) + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8);
  v133 = *(v6 + 80);
  v132 = *(v6 + 64);
  v135 = v0;
  v125 = v0 + v1;
  v7 = *(v0 + v1);

  v8 = (v0 + v1 + v78[5]);
  v9 = *v8;
  swift_unknownObjectRelease();
  v10 = type metadata accessor for AppEnvironment();
  v11 = v10[6];
  v127 = type metadata accessor for AccountService();
  v126 = *(v127[-1].Description + 1);
  v126(&v8[v11], v127);
  v12 = v10[7];
  v124 = type metadata accessor for AppStateService();
  v123 = *(v124[-1].Description + 1);
  v123(&v8[v12], v124);
  v13 = v10[8];
  v122 = type metadata accessor for ArchivedSessionService();
  v121 = *(v122[-1].Description + 1);
  v121(&v8[v13], v122);
  v14 = v10[9];
  v120 = type metadata accessor for AssetService();
  v119 = *(v120[-1].Description + 1);
  v119(&v8[v14], v120);
  v15 = v10[10];
  v118 = type metadata accessor for AwardsService();
  v117 = *(v118[-1].Description + 1);
  v117(&v8[v15], v118);
  v16 = v10[11];
  v116 = type metadata accessor for BookmarkService();
  v115 = *(v116[-1].Description + 1);
  v115(&v8[v16], v116);
  v17 = v10[12];
  v114 = type metadata accessor for CatalogService();
  v113 = *(v114[-1].Description + 1);
  v113(&v8[v17], v114);
  v18 = v10[13];
  v112 = type metadata accessor for ConfigurationService();
  v111 = *(v112[-1].Description + 1);
  v111(&v8[v18], v112);
  v19 = v10[14];
  v110 = type metadata accessor for ContentAvailabilityService();
  v109 = *(v110[-1].Description + 1);
  v109(&v8[v19], v110);
  v20 = v10[15];
  v108 = type metadata accessor for EngagementService();
  v107 = *(v108[-1].Description + 1);
  v107(&v8[v20], v108);
  v21 = v10[16];
  v106 = type metadata accessor for HealthDataService();
  v105 = *(v106[-1].Description + 1);
  v105(&v8[v21], v106);
  v22 = v10[17];
  v104 = type metadata accessor for InteropService();
  v103 = *(v104[-1].Description + 1);
  v103(&v8[v22], v104);
  v23 = v10[18];
  v102 = type metadata accessor for LocalizationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v8[v23], v102);
  v24 = v10[19];
  v100 = type metadata accessor for MarketingService();
  v99 = *(v100[-1].Description + 1);
  v99(&v8[v24], v100);
  v25 = v10[20];
  v98 = type metadata accessor for MetricService();
  v97 = *(v98[-1].Description + 1);
  v97(&v8[v25], v98);
  v26 = v10[21];
  v96 = type metadata accessor for PersonalizationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v8[v26], v96);
  v27 = v10[22];
  v94 = type metadata accessor for PlayerService();
  v93 = *(v94[-1].Description + 1);
  v93(&v8[v27], v94);
  v28 = v10[23];
  v92 = type metadata accessor for PrivacyPreferenceService();
  v91 = *(v92[-1].Description + 1);
  v91(&v8[v28], v92);
  v29 = v10[24];
  v90 = type metadata accessor for RecommendationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v8[v29], v90);
  v30 = v10[25];
  v88 = type metadata accessor for RemoteBrowsingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v8[v30], v88);
  v31 = v10[26];
  v86 = type metadata accessor for SearchService();
  v85 = *(v86[-1].Description + 1);
  v85(&v8[v31], v86);
  v32 = v10[27];
  v84 = type metadata accessor for ServiceSubscriptionService();
  v83 = *(v84[-1].Description + 1);
  v83(&v8[v32], v84);
  v33 = v10[28];
  v76 = type metadata accessor for SessionService();
  v82 = *(v76[-1].Description + 1);
  v82(&v8[v33], v76);
  v34 = v10[29];
  v35 = type metadata accessor for SharePlayService();
  v81 = *(v35[-1].Description + 1);
  v81(&v8[v34], v35);
  v36 = v10[30];
  v37 = type metadata accessor for SiriService();
  v80 = *(v37[-1].Description + 1);
  v80(&v8[v36], v37);
  v38 = v10[31];
  v39 = type metadata accessor for SyncService();
  v79 = *(v39[-1].Description + 1);
  v79(&v8[v38], v39);
  v40 = &v8[v10[32]];
  v41 = *(v40 + 1);

  v42 = *(v40 + 3);

  v43 = *(v40 + 5);

  v44 = v10[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v77 = *(QueueService[-1].Description + 1);
  v77(&v8[v44], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v8[v10[34]]);
  v46 = *&v8[v10[35]];

  v47 = v10[36];
  v48 = type metadata accessor for WorkoutPlanService();
  v75 = *(v48[-1].Description + 1);
  v75(&v8[v47], v48);
  v49 = *(v125 + v78[6]);

  v50 = (v125 + v78[7]);
  v51 = *v50;

  v52 = v50[1];

  v53 = v50 + *(type metadata accessor for AppDataItemResolver() + 24);
  v54 = *v53;
  swift_unknownObjectRelease();
  v126(&v53[v10[6]], v127);
  v123(&v53[v10[7]], v124);
  v121(&v53[v10[8]], v122);
  v119(&v53[v10[9]], v120);
  v117(&v53[v10[10]], v118);
  v115(&v53[v10[11]], v116);
  v113(&v53[v10[12]], v114);
  v111(&v53[v10[13]], v112);
  v109(&v53[v10[14]], v110);
  v107(&v53[v10[15]], v108);
  v105(&v53[v10[16]], v106);
  v103(&v53[v10[17]], v104);
  v101(&v53[v10[18]], v102);
  v99(&v53[v10[19]], v100);
  v97(&v53[v10[20]], v98);
  v95(&v53[v10[21]], v96);
  v93(&v53[v10[22]], v94);
  v91(&v53[v10[23]], v92);
  v89(&v53[v10[24]], v90);
  v87(&v53[v10[25]], v88);
  v85(&v53[v10[26]], v86);
  v83(&v53[v10[27]], v84);
  v82(&v53[v10[28]], v76);
  v81(&v53[v10[29]], v35);
  v80(&v53[v10[30]], v37);
  v79(&v53[v10[31]], v39);
  v55 = &v53[v10[32]];
  v56 = *(v55 + 1);

  v57 = *(v55 + 3);

  v58 = *(v55 + 5);

  v77(&v53[v10[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v53[v10[34]]);
  v59 = *&v53[v10[35]];

  v75(&v53[v10[36]], v48);
  v60 = *(v125 + v78[8]);
  swift_unknownObjectRelease();
  if (*(v125 + v78[9] + 8) >= 0xCuLL)
  {
  }

  v61 = (v125 + v78[10]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = sub_1E65D76F8();
  v63 = *(v62 - 8);
  if (!(*(v63 + 48))(v135 + v129, 1, v62))
  {
    (*(v63 + 8))(v135 + v129, v62);
  }

  v64 = (v128 + v133 + 9) & ~v133;
  v65 = *(v135 + v130);

  v66 = sub_1E65E1FC8();
  v67 = *(v66 - 8);
  if (!(*(v67 + 48))(v135 + v131, 1, v66))
  {
    (*(v67 + 8))(v135 + v131, v66);
  }

  v68 = sub_1E65E2CF8();
  v69 = *(v68 - 8);
  if (!(*(v69 + 48))(v135 + v64, 1, v68))
  {
    (*(v69 + 8))(v135 + v64, v68);
  }

  v70 = (v64 + v132) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = *(v135 + v70 + 8);

  v73 = *(v135 + v71 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5EDBE64()
{
  v112 = type metadata accessor for AppComposer();
  v119 = *(*(v112 - 1) + 80);
  v1 = (v119 + 16) & ~v119;
  v2 = (*(*(v112 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v118 = *(v3 + 80);
  v115 = v2 + v118 + 40;
  v116 = v2;
  v117 = *(v3 + 64);
  v120 = v0;
  v121 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v112[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v114 = type metadata accessor for AccountService();
  v113 = *(v114[-1].Description + 1);
  v113(v5 + v8, v114);
  v9 = v7[7];
  v111 = type metadata accessor for AppStateService();
  v110 = *(v111[-1].Description + 1);
  v110(v5 + v9, v111);
  v10 = v7[8];
  v109 = type metadata accessor for ArchivedSessionService();
  v108 = *(v109[-1].Description + 1);
  v108(v5 + v10, v109);
  v11 = v7[9];
  v107 = type metadata accessor for AssetService();
  v106 = *(v107[-1].Description + 1);
  v106(v5 + v11, v107);
  v12 = v7[10];
  v105 = type metadata accessor for AwardsService();
  v104 = *(v105[-1].Description + 1);
  v104(v5 + v12, v105);
  v13 = v7[11];
  v103 = type metadata accessor for BookmarkService();
  v102 = *(v103[-1].Description + 1);
  v102(v5 + v13, v103);
  v14 = v7[12];
  v101 = type metadata accessor for CatalogService();
  v100 = *(v101[-1].Description + 1);
  v100(v5 + v14, v101);
  v15 = v7[13];
  v99 = type metadata accessor for ConfigurationService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v15, v99);
  v16 = v7[14];
  v97 = type metadata accessor for ContentAvailabilityService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v16, v97);
  v17 = v7[15];
  v95 = type metadata accessor for EngagementService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v17, v95);
  v18 = v7[16];
  v93 = type metadata accessor for HealthDataService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v18, v93);
  v19 = v7[17];
  v91 = type metadata accessor for InteropService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v19, v91);
  v20 = v7[18];
  v89 = type metadata accessor for LocalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v20, v89);
  v21 = v7[19];
  v87 = type metadata accessor for MarketingService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v21, v87);
  v22 = v7[20];
  v85 = type metadata accessor for MetricService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v22, v85);
  v23 = v7[21];
  v83 = type metadata accessor for PersonalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v23, v83);
  v24 = v7[22];
  v81 = type metadata accessor for PlayerService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v24, v81);
  v25 = v7[23];
  v79 = type metadata accessor for PrivacyPreferenceService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v25, v79);
  v26 = v7[24];
  v77 = type metadata accessor for RecommendationService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v26, v77);
  v27 = v7[25];
  v75 = type metadata accessor for RemoteBrowsingService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v27, v75);
  v28 = v7[26];
  v73 = type metadata accessor for SearchService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v28, v73);
  v29 = v7[27];
  v71 = type metadata accessor for ServiceSubscriptionService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v29, v71);
  v30 = v7[28];
  v64 = type metadata accessor for SessionService();
  v69 = *(v64[-1].Description + 1);
  v69(v5 + v30, v64);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v68 = *(v32[-1].Description + 1);
  v68(v5 + v31, v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v67 = *(v34[-1].Description + 1);
  v67(v5 + v33, v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v66 = *(v36[-1].Description + 1);
  v66(v5 + v35, v36);
  v37 = (v5 + v7[32]);
  v38 = v37[1];

  v39 = v37[3];

  v40 = v37[5];

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v65 = *(QueueService[-1].Description + 1);
  v65(v5 + v41, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v7[34]));
  v43 = *(v5 + v7[35]);

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v63 = *(v45[-1].Description + 1);
  v63(v5 + v44, v45);
  v46 = *(v121 + v112[6]);

  v47 = (v121 + v112[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = (v47 + *(type metadata accessor for AppDataItemResolver() + 24));
  v51 = *v50;
  swift_unknownObjectRelease();
  v113(v50 + v7[6], v114);
  v110(v50 + v7[7], v111);
  v108(v50 + v7[8], v109);
  v106(v50 + v7[9], v107);
  v104(v50 + v7[10], v105);
  v102(v50 + v7[11], v103);
  v100(v50 + v7[12], v101);
  v98(v50 + v7[13], v99);
  v96(v50 + v7[14], v97);
  v94(v50 + v7[15], v95);
  v92(v50 + v7[16], v93);
  v90(v50 + v7[17], v91);
  v88(v50 + v7[18], v89);
  v86(v50 + v7[19], v87);
  v84(v50 + v7[20], v85);
  v82(v50 + v7[21], v83);
  v80(v50 + v7[22], v81);
  v78(v50 + v7[23], v79);
  v76(v50 + v7[24], v77);
  v74(v50 + v7[25], v75);
  v72(v50 + v7[26], v73);
  v70(v50 + v7[27], v71);
  v69(v50 + v7[28], v64);
  v68(v50 + v7[29], v32);
  v67(v50 + v7[30], v34);
  v66(v50 + v7[31], v36);
  v52 = (v50 + v7[32]);
  v53 = v52[1];

  v54 = v52[3];

  v55 = v52[5];

  v65(v50 + v7[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v50 + v7[34]));
  v56 = *(v50 + v7[35]);

  v63(v50 + v7[36], v45);
  v57 = *(v121 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v121 + v112[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v115 & ~v118;
  v59 = (v121 + v112[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  __swift_destroy_boxed_opaque_existential_1((v120 + v116));
  v60 = sub_1E65D76F8();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(v120 + v58, 1, v60))
  {
    (*(v61 + 8))(v120 + v58, v60);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EDCC4C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1E5F94E00(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E5EDCC90()
{
  v113 = type metadata accessor for AppComposer();
  v120 = *(*(v113 - 1) + 80);
  v1 = (v120 + 16) & ~v120;
  v116 = (*(*(v113 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v116 + 23) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8);
  v119 = *(v2 + 80);
  v118 = *(v2 + 64);
  v121 = v0;
  v122 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v0 + v1 + v113[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(&v4[v7], v115);
  v8 = v6[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(&v4[v8], v112);
  v9 = v6[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v9], v110);
  v10 = v6[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v10], v108);
  v11 = v6[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v11], v106);
  v12 = v6[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v12], v104);
  v13 = v6[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v13], v102);
  v14 = v6[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v14], v100);
  v15 = v6[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v15], v98);
  v16 = v6[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v16], v96);
  v17 = v6[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v17], v94);
  v18 = v6[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v18], v92);
  v19 = v6[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v19], v90);
  v20 = v6[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v20], v88);
  v21 = v6[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v21], v86);
  v22 = v6[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v22], v84);
  v23 = v6[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v23], v82);
  v24 = v6[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v24], v80);
  v25 = v6[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v4[v25], v78);
  v26 = v6[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(&v4[v26], v76);
  v27 = v6[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(&v4[v27], v74);
  v28 = v6[27];
  v72 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v72[-1].Description + 1);
  v71(&v4[v28], v72);
  v29 = v6[28];
  v65 = type metadata accessor for SessionService();
  v70 = *(v65[-1].Description + 1);
  v70(&v4[v29], v65);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v69 = *(v31[-1].Description + 1);
  v69(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v68 = *(v33[-1].Description + 1);
  v68(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v67 = *(v35[-1].Description + 1);
  v67(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v64 = *(v44[-1].Description + 1);
  v64(&v4[v43], v44);
  v45 = *(v122 + v113[6]);

  v46 = (v122 + v113[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v114(&v49[v6[6]], v115);
  v111(&v49[v6[7]], v112);
  v109(&v49[v6[8]], v110);
  v107(&v49[v6[9]], v108);
  v105(&v49[v6[10]], v106);
  v103(&v49[v6[11]], v104);
  v101(&v49[v6[12]], v102);
  v99(&v49[v6[13]], v100);
  v97(&v49[v6[14]], v98);
  v95(&v49[v6[15]], v96);
  v93(&v49[v6[16]], v94);
  v91(&v49[v6[17]], v92);
  v89(&v49[v6[18]], v90);
  v87(&v49[v6[19]], v88);
  v85(&v49[v6[20]], v86);
  v83(&v49[v6[21]], v84);
  v81(&v49[v6[22]], v82);
  v79(&v49[v6[23]], v80);
  v77(&v49[v6[24]], v78);
  v75(&v49[v6[25]], v76);
  v73(&v49[v6[26]], v74);
  v71(&v49[v6[27]], v72);
  v70(&v49[v6[28]], v65);
  v69(&v49[v6[29]], v31);
  v68(&v49[v6[30]], v33);
  v67(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v66(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v64(&v49[v6[36]], v44);
  v56 = *(v122 + v113[8]);
  swift_unknownObjectRelease();
  if (*(v122 + v113[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v119 + ((((v117 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v119;
  v58 = (v122 + v113[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v59 = *(v121 + v116 + 8);

  v60 = *(v121 + v117 + 8);

  v61 = sub_1E65D96F8();
  v62 = *(v61 - 8);
  if (!(*(v62 + 48))(v121 + v57, 1, v61))
  {
    (*(v62 + 8))(v121 + v57, v61);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EDDA90()
{
  v117 = type metadata accessor for AppComposer();
  v115 = *(*(v117 - 1) + 80);
  v113 = *(*(v117 - 1) + 64);
  v114 = (v115 + 16) & ~v115;
  v116 = v0;
  v110 = v0 + v114;
  v1 = *(v0 + v114);

  v2 = (v0 + v114 + v117[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v5], v112);
  v6 = v4[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v6], v109);
  v7 = v4[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v7], v107);
  v8 = v4[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v8], v105);
  v9 = v4[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v9], v103);
  v10 = v4[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v10], v101);
  v11 = v4[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v11], v99);
  v12 = v4[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v12], v97);
  v13 = v4[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v13], v95);
  v14 = v4[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v14], v93);
  v15 = v4[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v15], v91);
  v16 = v4[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v16], v89);
  v17 = v4[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v17], v87);
  v18 = v4[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v18], v85);
  v19 = v4[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v19], v83);
  v20 = v4[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v20], v81);
  v21 = v4[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v21], v79);
  v22 = v4[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v22], v77);
  v23 = v4[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v23], v75);
  v24 = v4[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v24], v73);
  v25 = v4[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v25], v71);
  v26 = v4[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v26], v69);
  v27 = v4[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v2[v27], v62);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v66 = *(v29[-1].Description + 1);
  v66(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v65 = *(v31[-1].Description + 1);
  v65(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v64 = *(v33[-1].Description + 1);
  v64(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v61 = *(v42[-1].Description + 1);
  v61(&v2[v41], v42);
  v43 = *(v110 + v117[6]);

  v44 = (v110 + v117[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v111(&v47[v4[6]], v112);
  v108(&v47[v4[7]], v109);
  v106(&v47[v4[8]], v107);
  v104(&v47[v4[9]], v105);
  v102(&v47[v4[10]], v103);
  v100(&v47[v4[11]], v101);
  v98(&v47[v4[12]], v99);
  v96(&v47[v4[13]], v97);
  v94(&v47[v4[14]], v95);
  v92(&v47[v4[15]], v93);
  v90(&v47[v4[16]], v91);
  v88(&v47[v4[17]], v89);
  v86(&v47[v4[18]], v87);
  v84(&v47[v4[19]], v85);
  v82(&v47[v4[20]], v83);
  v80(&v47[v4[21]], v81);
  v78(&v47[v4[22]], v79);
  v76(&v47[v4[23]], v77);
  v74(&v47[v4[24]], v75);
  v72(&v47[v4[25]], v73);
  v70(&v47[v4[26]], v71);
  v68(&v47[v4[27]], v69);
  v67(&v47[v4[28]], v62);
  v66(&v47[v4[29]], v29);
  v65(&v47[v4[30]], v31);
  v64(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v63(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v61(&v47[v4[36]], v42);
  v54 = *(v110 + v117[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v117[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v110 + v117[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v113 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v116 + v56 + 8);

  v59 = *(v116 + v57 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5EDE7A8()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 64);
  v113 = *(*(v114 - 1) + 80);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5F94E14();
  v109 = (v0 + ((v113 + 33) & ~v113));
  v4 = *v109;

  v5 = v109 + v114[5];
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v5[v8], v111);
  v9 = v7[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v5[v9], v108);
  v10 = v7[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v5[v10], v106);
  v11 = v7[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v5[v11], v104);
  v12 = v7[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v5[v12], v102);
  v13 = v7[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v5[v13], v100);
  v14 = v7[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v5[v14], v98);
  v15 = v7[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v5[v15], v96);
  v16 = v7[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v5[v16], v94);
  v17 = v7[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v5[v17], v92);
  v18 = v7[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v5[v18], v90);
  v19 = v7[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v5[v19], v88);
  v20 = v7[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v5[v20], v86);
  v21 = v7[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v5[v21], v84);
  v22 = v7[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v5[v22], v82);
  v23 = v7[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v5[v23], v80);
  v24 = v7[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v5[v24], v78);
  v25 = v7[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v5[v25], v76);
  v26 = v7[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v5[v26], v74);
  v27 = v7[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v5[v27], v72);
  v28 = v7[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v5[v28], v70);
  v29 = v7[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v5[v29], v68);
  v30 = v7[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v5[v30], v61);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v65 = *(v32[-1].Description + 1);
  v65(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v64 = *(v34[-1].Description + 1);
  v64(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v63 = *(v36[-1].Description + 1);
  v63(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v60 = *(v45[-1].Description + 1);
  v60(&v5[v44], v45);
  v46 = *(v109 + v114[6]);

  v47 = (v109 + v114[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v110(&v50[v7[6]], v111);
  v107(&v50[v7[7]], v108);
  v105(&v50[v7[8]], v106);
  v103(&v50[v7[9]], v104);
  v101(&v50[v7[10]], v102);
  v99(&v50[v7[11]], v100);
  v97(&v50[v7[12]], v98);
  v95(&v50[v7[13]], v96);
  v93(&v50[v7[14]], v94);
  v91(&v50[v7[15]], v92);
  v89(&v50[v7[16]], v90);
  v87(&v50[v7[17]], v88);
  v85(&v50[v7[18]], v86);
  v83(&v50[v7[19]], v84);
  v81(&v50[v7[20]], v82);
  v79(&v50[v7[21]], v80);
  v77(&v50[v7[22]], v78);
  v75(&v50[v7[23]], v76);
  v73(&v50[v7[24]], v74);
  v71(&v50[v7[25]], v72);
  v69(&v50[v7[26]], v70);
  v67(&v50[v7[27]], v68);
  v66(&v50[v7[28]], v61);
  v65(&v50[v7[29]], v32);
  v64(&v50[v7[30]], v34);
  v63(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v62(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v60(&v50[v7[36]], v45);
  v57 = *(v109 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v114[9] + 8) >= 0xC)
  {
  }

  v58 = (v109 + v114[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EDF47C()
{
  v122 = type metadata accessor for AppComposer();
  v120 = *(*(v122 - 1) + 80);
  v118 = *(*(v122 - 1) + 64);
  v119 = (v120 + 16) & ~v120;
  v121 = v0;
  v115 = v0 + v119;
  v1 = *(v0 + v119);

  v2 = (v0 + v119 + v122[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v2[v5], v117);
  v6 = v4[7];
  v114 = type metadata accessor for AppStateService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v6], v114);
  v7 = v4[8];
  v112 = type metadata accessor for ArchivedSessionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v7], v112);
  v8 = v4[9];
  v110 = type metadata accessor for AssetService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v8], v110);
  v9 = v4[10];
  v108 = type metadata accessor for AwardsService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v9], v108);
  v10 = v4[11];
  v106 = type metadata accessor for BookmarkService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v10], v106);
  v11 = v4[12];
  v104 = type metadata accessor for CatalogService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v11], v104);
  v12 = v4[13];
  v102 = type metadata accessor for ConfigurationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v12], v102);
  v13 = v4[14];
  v100 = type metadata accessor for ContentAvailabilityService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v13], v100);
  v14 = v4[15];
  v98 = type metadata accessor for EngagementService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v14], v98);
  v15 = v4[16];
  v96 = type metadata accessor for HealthDataService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v15], v96);
  v16 = v4[17];
  v94 = type metadata accessor for InteropService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v16], v94);
  v17 = v4[18];
  v92 = type metadata accessor for LocalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v17], v92);
  v18 = v4[19];
  v90 = type metadata accessor for MarketingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v18], v90);
  v19 = v4[20];
  v88 = type metadata accessor for MetricService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v19], v88);
  v20 = v4[21];
  v86 = type metadata accessor for PersonalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v20], v86);
  v21 = v4[22];
  v84 = type metadata accessor for PlayerService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v21], v84);
  v22 = v4[23];
  v82 = type metadata accessor for PrivacyPreferenceService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v22], v82);
  v23 = v4[24];
  v80 = type metadata accessor for RecommendationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v23], v80);
  v24 = v4[25];
  v78 = type metadata accessor for RemoteBrowsingService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v24], v78);
  v25 = v4[26];
  v76 = type metadata accessor for SearchService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v25], v76);
  v26 = v4[27];
  v74 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v26], v74);
  v27 = v4[28];
  v67 = type metadata accessor for SessionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v2[v27], v67);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v71 = *(v29[-1].Description + 1);
  v71(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v70 = *(v31[-1].Description + 1);
  v70(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v69 = *(v33[-1].Description + 1);
  v69(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v66 = *(v42[-1].Description + 1);
  v66(&v2[v41], v42);
  v43 = *(v115 + v122[6]);

  v44 = (v115 + v122[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v116(&v47[v4[6]], v117);
  v113(&v47[v4[7]], v114);
  v111(&v47[v4[8]], v112);
  v109(&v47[v4[9]], v110);
  v107(&v47[v4[10]], v108);
  v105(&v47[v4[11]], v106);
  v103(&v47[v4[12]], v104);
  v101(&v47[v4[13]], v102);
  v99(&v47[v4[14]], v100);
  v97(&v47[v4[15]], v98);
  v95(&v47[v4[16]], v96);
  v93(&v47[v4[17]], v94);
  v91(&v47[v4[18]], v92);
  v89(&v47[v4[19]], v90);
  v87(&v47[v4[20]], v88);
  v85(&v47[v4[21]], v86);
  v83(&v47[v4[22]], v84);
  v81(&v47[v4[23]], v82);
  v79(&v47[v4[24]], v80);
  v77(&v47[v4[25]], v78);
  v75(&v47[v4[26]], v76);
  v73(&v47[v4[27]], v74);
  v72(&v47[v4[28]], v67);
  v71(&v47[v4[29]], v29);
  v70(&v47[v4[30]], v31);
  v69(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v68(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v66(&v47[v4[36]], v42);
  v54 = *(v115 + v122[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v122[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v115 + v122[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v121 + v56));
  v58 = *(v121 + v57 + 8);

  v59 = (v121 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EE01A4()
{
  v122 = type metadata accessor for AppComposer();
  v120 = *(*(v122 - 1) + 80);
  v118 = *(*(v122 - 1) + 64);
  v119 = (v120 + 16) & ~v120;
  v121 = v0;
  v115 = v0 + v119;
  v1 = *(v0 + v119);

  v2 = (v0 + v119 + v122[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v2[v5], v117);
  v6 = v4[7];
  v114 = type metadata accessor for AppStateService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v6], v114);
  v7 = v4[8];
  v112 = type metadata accessor for ArchivedSessionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v7], v112);
  v8 = v4[9];
  v110 = type metadata accessor for AssetService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v8], v110);
  v9 = v4[10];
  v108 = type metadata accessor for AwardsService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v9], v108);
  v10 = v4[11];
  v106 = type metadata accessor for BookmarkService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v10], v106);
  v11 = v4[12];
  v104 = type metadata accessor for CatalogService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v11], v104);
  v12 = v4[13];
  v102 = type metadata accessor for ConfigurationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v12], v102);
  v13 = v4[14];
  v100 = type metadata accessor for ContentAvailabilityService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v13], v100);
  v14 = v4[15];
  v98 = type metadata accessor for EngagementService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v14], v98);
  v15 = v4[16];
  v96 = type metadata accessor for HealthDataService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v15], v96);
  v16 = v4[17];
  v94 = type metadata accessor for InteropService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v16], v94);
  v17 = v4[18];
  v92 = type metadata accessor for LocalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v17], v92);
  v18 = v4[19];
  v90 = type metadata accessor for MarketingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v18], v90);
  v19 = v4[20];
  v88 = type metadata accessor for MetricService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v19], v88);
  v20 = v4[21];
  v86 = type metadata accessor for PersonalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v20], v86);
  v21 = v4[22];
  v84 = type metadata accessor for PlayerService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v21], v84);
  v22 = v4[23];
  v82 = type metadata accessor for PrivacyPreferenceService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v22], v82);
  v23 = v4[24];
  v80 = type metadata accessor for RecommendationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v23], v80);
  v24 = v4[25];
  v78 = type metadata accessor for RemoteBrowsingService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v24], v78);
  v25 = v4[26];
  v76 = type metadata accessor for SearchService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v25], v76);
  v26 = v4[27];
  v74 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v26], v74);
  v27 = v4[28];
  v67 = type metadata accessor for SessionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v2[v27], v67);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v71 = *(v29[-1].Description + 1);
  v71(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v70 = *(v31[-1].Description + 1);
  v70(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v69 = *(v33[-1].Description + 1);
  v69(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v66 = *(v42[-1].Description + 1);
  v66(&v2[v41], v42);
  v43 = *(v115 + v122[6]);

  v44 = (v115 + v122[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v116(&v47[v4[6]], v117);
  v113(&v47[v4[7]], v114);
  v111(&v47[v4[8]], v112);
  v109(&v47[v4[9]], v110);
  v107(&v47[v4[10]], v108);
  v105(&v47[v4[11]], v106);
  v103(&v47[v4[12]], v104);
  v101(&v47[v4[13]], v102);
  v99(&v47[v4[14]], v100);
  v97(&v47[v4[15]], v98);
  v95(&v47[v4[16]], v96);
  v93(&v47[v4[17]], v94);
  v91(&v47[v4[18]], v92);
  v89(&v47[v4[19]], v90);
  v87(&v47[v4[20]], v88);
  v85(&v47[v4[21]], v86);
  v83(&v47[v4[22]], v84);
  v81(&v47[v4[23]], v82);
  v79(&v47[v4[24]], v80);
  v77(&v47[v4[25]], v78);
  v75(&v47[v4[26]], v76);
  v73(&v47[v4[27]], v74);
  v72(&v47[v4[28]], v67);
  v71(&v47[v4[29]], v29);
  v70(&v47[v4[30]], v31);
  v69(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v68(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v66(&v47[v4[36]], v42);
  v54 = *(v115 + v122[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v122[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v115 + v122[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v121 + v56 + 8);

  __swift_destroy_boxed_opaque_existential_1((v121 + v57));
  v59 = (v121 + ((v57 + 47) & 0xFFFFFFFFFFFFFFF8));
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EE0ECC()
{
  v70 = type metadata accessor for AppComposer();
  v125 = *(*(v70 - 1) + 80);
  v122 = *(*(v70 - 1) + 64);
  v126 = sub_1E65D76F8();
  v124 = *(v126 - 8);
  v121 = *(v124 + 80);
  v120 = *(v124 + 64);
  v127 = v0;
  v123 = (v125 + 16) & ~v125;
  v117 = v0 + v123;
  v1 = *(v0 + v123);

  v2 = (v0 + v123 + v70[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v119 = type metadata accessor for AccountService();
  v118 = *(v119[-1].Description + 1);
  v118(&v2[v5], v119);
  v6 = v4[7];
  v116 = type metadata accessor for AppStateService();
  v115 = *(v116[-1].Description + 1);
  v115(&v2[v6], v116);
  v7 = v4[8];
  v114 = type metadata accessor for ArchivedSessionService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v7], v114);
  v8 = v4[9];
  v112 = type metadata accessor for AssetService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v8], v112);
  v9 = v4[10];
  v110 = type metadata accessor for AwardsService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v9], v110);
  v10 = v4[11];
  v108 = type metadata accessor for BookmarkService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v10], v108);
  v11 = v4[12];
  v106 = type metadata accessor for CatalogService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v11], v106);
  v12 = v4[13];
  v104 = type metadata accessor for ConfigurationService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v12], v104);
  v13 = v4[14];
  v102 = type metadata accessor for ContentAvailabilityService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v13], v102);
  v14 = v4[15];
  v100 = type metadata accessor for EngagementService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v14], v100);
  v15 = v4[16];
  v98 = type metadata accessor for HealthDataService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v15], v98);
  v16 = v4[17];
  v96 = type metadata accessor for InteropService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v16], v96);
  v17 = v4[18];
  v94 = type metadata accessor for LocalizationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v17], v94);
  v18 = v4[19];
  v92 = type metadata accessor for MarketingService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v18], v92);
  v19 = v4[20];
  v90 = type metadata accessor for MetricService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v19], v90);
  v20 = v4[21];
  v88 = type metadata accessor for PersonalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v20], v88);
  v21 = v4[22];
  v86 = type metadata accessor for PlayerService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v21], v86);
  v22 = v4[23];
  v84 = type metadata accessor for PrivacyPreferenceService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v22], v84);
  v23 = v4[24];
  v82 = type metadata accessor for RecommendationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v23], v82);
  v24 = v4[25];
  v80 = type metadata accessor for RemoteBrowsingService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v24], v80);
  v25 = v4[26];
  v78 = type metadata accessor for SearchService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v25], v78);
  v26 = v4[27];
  v76 = type metadata accessor for ServiceSubscriptionService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v26], v76);
  v27 = v4[28];
  v68 = type metadata accessor for SessionService();
  v74 = *(v68[-1].Description + 1);
  v74(&v2[v27], v68);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v73 = *(v29[-1].Description + 1);
  v73(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v72 = *(v31[-1].Description + 1);
  v72(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v71 = *(v33[-1].Description + 1);
  v71(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v67 = *(v42[-1].Description + 1);
  v67(&v2[v41], v42);
  v43 = *(v117 + v70[6]);

  v44 = (v117 + v70[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v118(&v47[v4[6]], v119);
  v115(&v47[v4[7]], v116);
  v113(&v47[v4[8]], v114);
  v111(&v47[v4[9]], v112);
  v109(&v47[v4[10]], v110);
  v107(&v47[v4[11]], v108);
  v105(&v47[v4[12]], v106);
  v103(&v47[v4[13]], v104);
  v101(&v47[v4[14]], v102);
  v99(&v47[v4[15]], v100);
  v97(&v47[v4[16]], v98);
  v95(&v47[v4[17]], v96);
  v93(&v47[v4[18]], v94);
  v91(&v47[v4[19]], v92);
  v89(&v47[v4[20]], v90);
  v87(&v47[v4[21]], v88);
  v85(&v47[v4[22]], v86);
  v83(&v47[v4[23]], v84);
  v81(&v47[v4[24]], v82);
  v79(&v47[v4[25]], v80);
  v77(&v47[v4[26]], v78);
  v75(&v47[v4[27]], v76);
  v74(&v47[v4[28]], v68);
  v73(&v47[v4[29]], v29);
  v72(&v47[v4[30]], v31);
  v71(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v69(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v67(&v47[v4[36]], v42);
  v54 = *(v117 + v70[8]);
  swift_unknownObjectRelease();
  if (*(v117 + v70[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v117 + v70[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v122 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + v121 + 16) & ~v121;
  v58 = (v120 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v127 + v56 + 8);

  (*(v124 + 8))(v127 + v57, v126);
  __swift_destroy_boxed_opaque_existential_1((v127 + v58));
  v60 = (v127 + ((v58 + 47) & 0xFFFFFFFFFFFFFFF8));
  v61 = *v60;
  swift_unknownObjectRelease();
  v62 = v60[3];

  v63 = v60[5];

  v64 = v60[7];

  v65 = v60[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EE1C94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1E5EE1CEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EE1D24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EE1D68@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694B900]();
  *a1 = result;
  return result;
}

uint64_t sub_1E5EE1D94(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1E694B910](v2);
}

uint64_t sub_1E5EE1DD8()
{
  v123 = type metadata accessor for AppComposer();
  v121 = *(*(v123 - 1) + 80);
  v119 = *(*(v123 - 1) + 64);
  v120 = (v121 + 16) & ~v121;
  v122 = v0;
  v116 = v0 + v120;
  v1 = *(v0 + v120);

  v2 = (v0 + v120 + v123[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(&v2[v5], v118);
  v6 = v4[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v6], v115);
  v7 = v4[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v7], v113);
  v8 = v4[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v8], v111);
  v9 = v4[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v9], v109);
  v10 = v4[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v10], v107);
  v11 = v4[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v11], v105);
  v12 = v4[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v12], v103);
  v13 = v4[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v13], v101);
  v14 = v4[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v14], v99);
  v15 = v4[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v15], v97);
  v16 = v4[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v16], v95);
  v17 = v4[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v17], v93);
  v18 = v4[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v18], v91);
  v19 = v4[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v19], v89);
  v20 = v4[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v20], v87);
  v21 = v4[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v21], v85);
  v22 = v4[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v22], v83);
  v23 = v4[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v23], v81);
  v24 = v4[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v24], v79);
  v25 = v4[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v25], v77);
  v26 = v4[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v26], v75);
  v27 = v4[28];
  v68 = type metadata accessor for SessionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v2[v27], v68);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v72 = *(v29[-1].Description + 1);
  v72(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v71 = *(v31[-1].Description + 1);
  v71(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v70 = *(v33[-1].Description + 1);
  v70(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v67 = *(v42[-1].Description + 1);
  v67(&v2[v41], v42);
  v43 = *(v116 + v123[6]);

  v44 = (v116 + v123[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v117(&v47[v4[6]], v118);
  v114(&v47[v4[7]], v115);
  v112(&v47[v4[8]], v113);
  v110(&v47[v4[9]], v111);
  v108(&v47[v4[10]], v109);
  v106(&v47[v4[11]], v107);
  v104(&v47[v4[12]], v105);
  v102(&v47[v4[13]], v103);
  v100(&v47[v4[14]], v101);
  v98(&v47[v4[15]], v99);
  v96(&v47[v4[16]], v97);
  v94(&v47[v4[17]], v95);
  v92(&v47[v4[18]], v93);
  v90(&v47[v4[19]], v91);
  v88(&v47[v4[20]], v89);
  v86(&v47[v4[21]], v87);
  v84(&v47[v4[22]], v85);
  v82(&v47[v4[23]], v83);
  v80(&v47[v4[24]], v81);
  v78(&v47[v4[25]], v79);
  v76(&v47[v4[26]], v77);
  v74(&v47[v4[27]], v75);
  v73(&v47[v4[28]], v68);
  v72(&v47[v4[29]], v29);
  v71(&v47[v4[30]], v31);
  v70(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v69(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v67(&v47[v4[36]], v42);
  v54 = *(v116 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v116 + v123[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v119 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 87) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v122 + v56));
  v59 = (v122 + v57);
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  v65 = *(v122 + v58);

  return swift_deallocObject();
}

uint64_t sub_1E5EE2AFC()
{
  v71 = type metadata accessor for AppComposer();
  v123 = *(*(v71 - 1) + 80);
  v121 = *(*(v71 - 1) + 64);
  v1 = *(v0 + 16);

  v124 = v0;
  v122 = (v123 + 24) & ~v123;
  v118 = v0 + v122;
  v2 = *(v0 + v122);

  v3 = (v0 + v122 + v71[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v120 = type metadata accessor for AccountService();
  v119 = *(v120[-1].Description + 1);
  v119(&v3[v6], v120);
  v7 = v5[7];
  v117 = type metadata accessor for AppStateService();
  v116 = *(v117[-1].Description + 1);
  v116(&v3[v7], v117);
  v8 = v5[8];
  v115 = type metadata accessor for ArchivedSessionService();
  v114 = *(v115[-1].Description + 1);
  v114(&v3[v8], v115);
  v9 = v5[9];
  v113 = type metadata accessor for AssetService();
  v112 = *(v113[-1].Description + 1);
  v112(&v3[v9], v113);
  v10 = v5[10];
  v111 = type metadata accessor for AwardsService();
  v110 = *(v111[-1].Description + 1);
  v110(&v3[v10], v111);
  v11 = v5[11];
  v109 = type metadata accessor for BookmarkService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v11], v109);
  v12 = v5[12];
  v107 = type metadata accessor for CatalogService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v12], v107);
  v13 = v5[13];
  v105 = type metadata accessor for ConfigurationService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v13], v105);
  v14 = v5[14];
  v103 = type metadata accessor for ContentAvailabilityService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v14], v103);
  v15 = v5[15];
  v101 = type metadata accessor for EngagementService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v15], v101);
  v16 = v5[16];
  v99 = type metadata accessor for HealthDataService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v16], v99);
  v17 = v5[17];
  v97 = type metadata accessor for InteropService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v17], v97);
  v18 = v5[18];
  v95 = type metadata accessor for LocalizationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v18], v95);
  v19 = v5[19];
  v93 = type metadata accessor for MarketingService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v19], v93);
  v20 = v5[20];
  v91 = type metadata accessor for MetricService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v20], v91);
  v21 = v5[21];
  v89 = type metadata accessor for PersonalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v21], v89);
  v22 = v5[22];
  v87 = type metadata accessor for PlayerService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v22], v87);
  v23 = v5[23];
  v85 = type metadata accessor for PrivacyPreferenceService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v23], v85);
  v24 = v5[24];
  v83 = type metadata accessor for RecommendationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v24], v83);
  v25 = v5[25];
  v81 = type metadata accessor for RemoteBrowsingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v25], v81);
  v26 = v5[26];
  v79 = type metadata accessor for SearchService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v26], v79);
  v27 = v5[27];
  v77 = type metadata accessor for ServiceSubscriptionService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v27], v77);
  v28 = v5[28];
  v69 = type metadata accessor for SessionService();
  v75 = *(v69[-1].Description + 1);
  v75(&v3[v28], v69);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v74 = *(v30[-1].Description + 1);
  v74(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v73 = *(v32[-1].Description + 1);
  v73(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v72 = *(v34[-1].Description + 1);
  v72(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v70 = *(QueueService[-1].Description + 1);
  v70(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v68 = *(v43[-1].Description + 1);
  v68(&v3[v42], v43);
  v44 = *(v118 + v71[6]);

  v45 = (v118 + v71[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v119(&v48[v5[6]], v120);
  v116(&v48[v5[7]], v117);
  v114(&v48[v5[8]], v115);
  v112(&v48[v5[9]], v113);
  v110(&v48[v5[10]], v111);
  v108(&v48[v5[11]], v109);
  v106(&v48[v5[12]], v107);
  v104(&v48[v5[13]], v105);
  v102(&v48[v5[14]], v103);
  v100(&v48[v5[15]], v101);
  v98(&v48[v5[16]], v99);
  v96(&v48[v5[17]], v97);
  v94(&v48[v5[18]], v95);
  v92(&v48[v5[19]], v93);
  v90(&v48[v5[20]], v91);
  v88(&v48[v5[21]], v89);
  v86(&v48[v5[22]], v87);
  v84(&v48[v5[23]], v85);
  v82(&v48[v5[24]], v83);
  v80(&v48[v5[25]], v81);
  v78(&v48[v5[26]], v79);
  v76(&v48[v5[27]], v77);
  v75(&v48[v5[28]], v69);
  v74(&v48[v5[29]], v30);
  v73(&v48[v5[30]], v32);
  v72(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v70(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v68(&v48[v5[36]], v43);
  v55 = *(v118 + v71[8]);
  swift_unknownObjectRelease();
  if (*(v118 + v71[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v118 + v71[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v121 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
  v60 = *(v124 + v57);

  __swift_destroy_boxed_opaque_existential_1((v124 + v58));
  v61 = *(v124 + v59);
  swift_unknownObjectRelease();
  v62 = *(v124 + v59 + 24);

  v63 = *(v124 + v59 + 40);

  v64 = *(v124 + v59 + 56);

  v65 = *(v124 + v59 + 72);

  v66 = *(v124 + ((v59 + 87) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5EE383C()
{
  v1 = sub_1E65D74E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EE38C8()
{
  v111 = type metadata accessor for AppComposer();
  v110 = *(*(v111 - 1) + 80);
  v109 = *(*(v111 - 1) + 64);
  v106 = (v0 + ((v110 + 17) & ~v110));
  v1 = *v106;

  v2 = v106 + v111[5];
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v5], v108);
  v6 = v4[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v6], v105);
  v7 = v4[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v7], v103);
  v8 = v4[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v8], v101);
  v9 = v4[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v9], v99);
  v10 = v4[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v10], v97);
  v11 = v4[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v11], v95);
  v12 = v4[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v12], v93);
  v13 = v4[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v13], v91);
  v14 = v4[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v14], v89);
  v15 = v4[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v15], v87);
  v16 = v4[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v16], v85);
  v17 = v4[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v17], v83);
  v18 = v4[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v18], v81);
  v19 = v4[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v19], v79);
  v20 = v4[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v20], v77);
  v21 = v4[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v21], v75);
  v22 = v4[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v22], v73);
  v23 = v4[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v23], v71);
  v24 = v4[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v24], v69);
  v25 = v4[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(&v2[v25], v67);
  v26 = v4[27];
  v65 = type metadata accessor for ServiceSubscriptionService();
  v64 = *(v65[-1].Description + 1);
  v64(&v2[v26], v65);
  v27 = v4[28];
  v58 = type metadata accessor for SessionService();
  v63 = *(v58[-1].Description + 1);
  v63(&v2[v27], v58);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v62 = *(v29[-1].Description + 1);
  v62(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v61 = *(v31[-1].Description + 1);
  v61(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v60 = *(v33[-1].Description + 1);
  v60(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v57 = *(v42[-1].Description + 1);
  v57(&v2[v41], v42);
  v43 = *(v106 + v111[6]);

  v44 = (v106 + v111[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v107(&v47[v4[6]], v108);
  v104(&v47[v4[7]], v105);
  v102(&v47[v4[8]], v103);
  v100(&v47[v4[9]], v101);
  v98(&v47[v4[10]], v99);
  v96(&v47[v4[11]], v97);
  v94(&v47[v4[12]], v95);
  v92(&v47[v4[13]], v93);
  v90(&v47[v4[14]], v91);
  v88(&v47[v4[15]], v89);
  v86(&v47[v4[16]], v87);
  v84(&v47[v4[17]], v85);
  v82(&v47[v4[18]], v83);
  v80(&v47[v4[19]], v81);
  v78(&v47[v4[20]], v79);
  v76(&v47[v4[21]], v77);
  v74(&v47[v4[22]], v75);
  v72(&v47[v4[23]], v73);
  v70(&v47[v4[24]], v71);
  v68(&v47[v4[25]], v69);
  v66(&v47[v4[26]], v67);
  v64(&v47[v4[27]], v65);
  v63(&v47[v4[28]], v58);
  v62(&v47[v4[29]], v29);
  v61(&v47[v4[30]], v31);
  v60(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v59(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v57(&v47[v4[36]], v42);
  v54 = *(v106 + v111[8]);
  swift_unknownObjectRelease();
  if (*(v106 + v111[9] + 8) >= 0xC)
  {
  }

  v55 = (v106 + v111[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EE458C()
{
  v111 = type metadata accessor for AppComposer();
  v110 = *(*(v111 - 1) + 80);
  v109 = *(*(v111 - 1) + 64);
  v106 = (v0 + ((v110 + 16) & ~v110));
  v1 = *v106;

  v2 = v106 + v111[5];
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v5], v108);
  v6 = v4[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v6], v105);
  v7 = v4[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v7], v103);
  v8 = v4[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v8], v101);
  v9 = v4[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v9], v99);
  v10 = v4[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v10], v97);
  v11 = v4[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v11], v95);
  v12 = v4[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v12], v93);
  v13 = v4[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v13], v91);
  v14 = v4[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v14], v89);
  v15 = v4[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v15], v87);
  v16 = v4[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v16], v85);
  v17 = v4[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v17], v83);
  v18 = v4[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v18], v81);
  v19 = v4[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v19], v79);
  v20 = v4[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v20], v77);
  v21 = v4[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v21], v75);
  v22 = v4[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v22], v73);
  v23 = v4[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v23], v71);
  v24 = v4[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v24], v69);
  v25 = v4[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(&v2[v25], v67);
  v26 = v4[27];
  v65 = type metadata accessor for ServiceSubscriptionService();
  v64 = *(v65[-1].Description + 1);
  v64(&v2[v26], v65);
  v27 = v4[28];
  v58 = type metadata accessor for SessionService();
  v63 = *(v58[-1].Description + 1);
  v63(&v2[v27], v58);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v62 = *(v29[-1].Description + 1);
  v62(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v61 = *(v31[-1].Description + 1);
  v61(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v60 = *(v33[-1].Description + 1);
  v60(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v57 = *(v42[-1].Description + 1);
  v57(&v2[v41], v42);
  v43 = *(v106 + v111[6]);

  v44 = (v106 + v111[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v107(&v47[v4[6]], v108);
  v104(&v47[v4[7]], v105);
  v102(&v47[v4[8]], v103);
  v100(&v47[v4[9]], v101);
  v98(&v47[v4[10]], v99);
  v96(&v47[v4[11]], v97);
  v94(&v47[v4[12]], v95);
  v92(&v47[v4[13]], v93);
  v90(&v47[v4[14]], v91);
  v88(&v47[v4[15]], v89);
  v86(&v47[v4[16]], v87);
  v84(&v47[v4[17]], v85);
  v82(&v47[v4[18]], v83);
  v80(&v47[v4[19]], v81);
  v78(&v47[v4[20]], v79);
  v76(&v47[v4[21]], v77);
  v74(&v47[v4[22]], v75);
  v72(&v47[v4[23]], v73);
  v70(&v47[v4[24]], v71);
  v68(&v47[v4[25]], v69);
  v66(&v47[v4[26]], v67);
  v64(&v47[v4[27]], v65);
  v63(&v47[v4[28]], v58);
  v62(&v47[v4[29]], v29);
  v61(&v47[v4[30]], v31);
  v60(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v59(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v57(&v47[v4[36]], v42);
  v54 = *(v106 + v111[8]);
  swift_unknownObjectRelease();
  if (*(v106 + v111[9] + 8) >= 0xC)
  {
  }

  v55 = (v106 + v111[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EE5254()
{
  v122 = type metadata accessor for AppComposer();
  v120 = *(*(v122 - 1) + 80);
  v118 = *(*(v122 - 1) + 64);
  v119 = (v120 + 16) & ~v120;
  v121 = v0;
  v115 = v0 + v119;
  v1 = *(v0 + v119);

  v2 = (v0 + v119 + v122[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v2[v5], v117);
  v6 = v4[7];
  v114 = type metadata accessor for AppStateService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v6], v114);
  v7 = v4[8];
  v112 = type metadata accessor for ArchivedSessionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v7], v112);
  v8 = v4[9];
  v110 = type metadata accessor for AssetService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v8], v110);
  v9 = v4[10];
  v108 = type metadata accessor for AwardsService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v9], v108);
  v10 = v4[11];
  v106 = type metadata accessor for BookmarkService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v10], v106);
  v11 = v4[12];
  v104 = type metadata accessor for CatalogService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v11], v104);
  v12 = v4[13];
  v102 = type metadata accessor for ConfigurationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v12], v102);
  v13 = v4[14];
  v100 = type metadata accessor for ContentAvailabilityService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v13], v100);
  v14 = v4[15];
  v98 = type metadata accessor for EngagementService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v14], v98);
  v15 = v4[16];
  v96 = type metadata accessor for HealthDataService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v15], v96);
  v16 = v4[17];
  v94 = type metadata accessor for InteropService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v16], v94);
  v17 = v4[18];
  v92 = type metadata accessor for LocalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v17], v92);
  v18 = v4[19];
  v90 = type metadata accessor for MarketingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v18], v90);
  v19 = v4[20];
  v88 = type metadata accessor for MetricService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v19], v88);
  v20 = v4[21];
  v86 = type metadata accessor for PersonalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v20], v86);
  v21 = v4[22];
  v84 = type metadata accessor for PlayerService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v21], v84);
  v22 = v4[23];
  v82 = type metadata accessor for PrivacyPreferenceService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v22], v82);
  v23 = v4[24];
  v80 = type metadata accessor for RecommendationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v23], v80);
  v24 = v4[25];
  v78 = type metadata accessor for RemoteBrowsingService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v24], v78);
  v25 = v4[26];
  v76 = type metadata accessor for SearchService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v25], v76);
  v26 = v4[27];
  v74 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v26], v74);
  v27 = v4[28];
  v67 = type metadata accessor for SessionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v2[v27], v67);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v71 = *(v29[-1].Description + 1);
  v71(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v70 = *(v31[-1].Description + 1);
  v70(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v69 = *(v33[-1].Description + 1);
  v69(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v66 = *(v42[-1].Description + 1);
  v66(&v2[v41], v42);
  v43 = *(v115 + v122[6]);

  v44 = (v115 + v122[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v116(&v47[v4[6]], v117);
  v113(&v47[v4[7]], v114);
  v111(&v47[v4[8]], v112);
  v109(&v47[v4[9]], v110);
  v107(&v47[v4[10]], v108);
  v105(&v47[v4[11]], v106);
  v103(&v47[v4[12]], v104);
  v101(&v47[v4[13]], v102);
  v99(&v47[v4[14]], v100);
  v97(&v47[v4[15]], v98);
  v95(&v47[v4[16]], v96);
  v93(&v47[v4[17]], v94);
  v91(&v47[v4[18]], v92);
  v89(&v47[v4[19]], v90);
  v87(&v47[v4[20]], v88);
  v85(&v47[v4[21]], v86);
  v83(&v47[v4[22]], v84);
  v81(&v47[v4[23]], v82);
  v79(&v47[v4[24]], v80);
  v77(&v47[v4[25]], v78);
  v75(&v47[v4[26]], v76);
  v73(&v47[v4[27]], v74);
  v72(&v47[v4[28]], v67);
  v71(&v47[v4[29]], v29);
  v70(&v47[v4[30]], v31);
  v69(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v68(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v66(&v47[v4[36]], v42);
  v54 = *(v115 + v122[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v122[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v115 + v122[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v121 + v56));
  v58 = *(v121 + v57 + 8);

  v59 = (v121 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EE5F80()
{
  v121 = type metadata accessor for AppComposer();
  v119 = *(*(v121 - 1) + 80);
  v117 = *(*(v121 - 1) + 64);
  v118 = (v119 + 16) & ~v119;
  v120 = v0;
  v114 = v0 + v118;
  v1 = *(v0 + v118);

  v2 = (v0 + v118 + v121[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v116 = type metadata accessor for AccountService();
  v115 = *(v116[-1].Description + 1);
  v115(&v2[v5], v116);
  v6 = v4[7];
  v113 = type metadata accessor for AppStateService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v6], v113);
  v7 = v4[8];
  v111 = type metadata accessor for ArchivedSessionService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v7], v111);
  v8 = v4[9];
  v109 = type metadata accessor for AssetService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v8], v109);
  v9 = v4[10];
  v107 = type metadata accessor for AwardsService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v9], v107);
  v10 = v4[11];
  v105 = type metadata accessor for BookmarkService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v10], v105);
  v11 = v4[12];
  v103 = type metadata accessor for CatalogService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v11], v103);
  v12 = v4[13];
  v101 = type metadata accessor for ConfigurationService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v12], v101);
  v13 = v4[14];
  v99 = type metadata accessor for ContentAvailabilityService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v13], v99);
  v14 = v4[15];
  v97 = type metadata accessor for EngagementService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v14], v97);
  v15 = v4[16];
  v95 = type metadata accessor for HealthDataService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v15], v95);
  v16 = v4[17];
  v93 = type metadata accessor for InteropService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v16], v93);
  v17 = v4[18];
  v91 = type metadata accessor for LocalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v17], v91);
  v18 = v4[19];
  v89 = type metadata accessor for MarketingService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v18], v89);
  v19 = v4[20];
  v87 = type metadata accessor for MetricService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v19], v87);
  v20 = v4[21];
  v85 = type metadata accessor for PersonalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v20], v85);
  v21 = v4[22];
  v83 = type metadata accessor for PlayerService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v21], v83);
  v22 = v4[23];
  v81 = type metadata accessor for PrivacyPreferenceService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v22], v81);
  v23 = v4[24];
  v79 = type metadata accessor for RecommendationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v23], v79);
  v24 = v4[25];
  v77 = type metadata accessor for RemoteBrowsingService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v24], v77);
  v25 = v4[26];
  v75 = type metadata accessor for SearchService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v25], v75);
  v26 = v4[27];
  v73 = type metadata accessor for ServiceSubscriptionService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v26], v73);
  v27 = v4[28];
  v66 = type metadata accessor for SessionService();
  v71 = *(v66[-1].Description + 1);
  v71(&v2[v27], v66);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v70 = *(v29[-1].Description + 1);
  v70(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v69 = *(v31[-1].Description + 1);
  v69(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v68 = *(v33[-1].Description + 1);
  v68(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v67 = *(QueueService[-1].Description + 1);
  v67(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v65 = *(v42[-1].Description + 1);
  v65(&v2[v41], v42);
  v43 = *(v114 + v121[6]);

  v44 = (v114 + v121[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v115(&v47[v4[6]], v116);
  v112(&v47[v4[7]], v113);
  v110(&v47[v4[8]], v111);
  v108(&v47[v4[9]], v109);
  v106(&v47[v4[10]], v107);
  v104(&v47[v4[11]], v105);
  v102(&v47[v4[12]], v103);
  v100(&v47[v4[13]], v101);
  v98(&v47[v4[14]], v99);
  v96(&v47[v4[15]], v97);
  v94(&v47[v4[16]], v95);
  v92(&v47[v4[17]], v93);
  v90(&v47[v4[18]], v91);
  v88(&v47[v4[19]], v89);
  v86(&v47[v4[20]], v87);
  v84(&v47[v4[21]], v85);
  v82(&v47[v4[22]], v83);
  v80(&v47[v4[23]], v81);
  v78(&v47[v4[24]], v79);
  v76(&v47[v4[25]], v77);
  v74(&v47[v4[26]], v75);
  v72(&v47[v4[27]], v73);
  v71(&v47[v4[28]], v66);
  v70(&v47[v4[29]], v29);
  v69(&v47[v4[30]], v31);
  v68(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v67(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v65(&v47[v4[36]], v42);
  v54 = *(v114 + v121[8]);
  swift_unknownObjectRelease();
  if (*(v114 + v121[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v114 + v121[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v117 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v120 + ((v118 + v117 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v57 = *(v120 + v56 + 8);

  v58 = (v120 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8));
  v59 = *v58;
  swift_unknownObjectRelease();
  v60 = v58[3];

  v61 = v58[5];

  v62 = v58[7];

  v63 = v58[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EE6CF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1E65E4EC8();
}

uint64_t sub_1E5EE6D3C(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077260, &qword_1E65F98D8);
  return sub_1E65E5B58();
}

uint64_t sub_1E5EE6D98()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EE6ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5EE6F44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5EE6FD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EE70B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EE7148()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EE7180()
{
  v1 = (type metadata accessor for AppEnvironment() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1E65E5798();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = (v0 + v2);
  v10 = *v9;
  swift_unknownObjectRelease();
  v11 = v1[8];
  v12 = type metadata accessor for AccountService();
  (*(v12[-1].Description + 1))(&v9[v11], v12);
  v13 = v1[9];
  v14 = type metadata accessor for AppStateService();
  (*(v14[-1].Description + 1))(&v9[v13], v14);
  v15 = v1[10];
  v16 = type metadata accessor for ArchivedSessionService();
  (*(v16[-1].Description + 1))(&v9[v15], v16);
  v17 = v1[11];
  v18 = type metadata accessor for AssetService();
  (*(v18[-1].Description + 1))(&v9[v17], v18);
  v19 = v1[12];
  v20 = type metadata accessor for AwardsService();
  (*(v20[-1].Description + 1))(&v9[v19], v20);
  v21 = v1[13];
  v22 = type metadata accessor for BookmarkService();
  (*(v22[-1].Description + 1))(&v9[v21], v22);
  v23 = v1[14];
  v24 = type metadata accessor for CatalogService();
  (*(v24[-1].Description + 1))(&v9[v23], v24);
  v25 = v1[15];
  v26 = type metadata accessor for ConfigurationService();
  (*(v26[-1].Description + 1))(&v9[v25], v26);
  v27 = v1[16];
  v28 = type metadata accessor for ContentAvailabilityService();
  (*(v28[-1].Description + 1))(&v9[v27], v28);
  v29 = v1[17];
  v30 = type metadata accessor for EngagementService();
  (*(v30[-1].Description + 1))(&v9[v29], v30);
  v31 = v1[18];
  v32 = type metadata accessor for HealthDataService();
  (*(v32[-1].Description + 1))(&v9[v31], v32);
  v33 = v1[19];
  v34 = type metadata accessor for InteropService();
  (*(v34[-1].Description + 1))(&v9[v33], v34);
  v35 = v1[20];
  v36 = type metadata accessor for LocalizationService();
  (*(v36[-1].Description + 1))(&v9[v35], v36);
  v37 = v1[21];
  v38 = type metadata accessor for MarketingService();
  (*(v38[-1].Description + 1))(&v9[v37], v38);
  v39 = v1[22];
  v40 = type metadata accessor for MetricService();
  (*(v40[-1].Description + 1))(&v9[v39], v40);
  v41 = v1[23];
  v42 = type metadata accessor for PersonalizationService();
  (*(v42[-1].Description + 1))(&v9[v41], v42);
  v43 = v1[24];
  v44 = type metadata accessor for PlayerService();
  (*(v44[-1].Description + 1))(&v9[v43], v44);
  v45 = v1[25];
  v46 = type metadata accessor for PrivacyPreferenceService();
  (*(v46[-1].Description + 1))(&v9[v45], v46);
  v47 = v1[26];
  v48 = type metadata accessor for RecommendationService();
  (*(v48[-1].Description + 1))(&v9[v47], v48);
  v49 = v1[27];
  v50 = type metadata accessor for RemoteBrowsingService();
  (*(v50[-1].Description + 1))(&v9[v49], v50);
  v51 = v1[28];
  v52 = type metadata accessor for SearchService();
  (*(v52[-1].Description + 1))(&v9[v51], v52);
  v53 = v1[29];
  v54 = type metadata accessor for ServiceSubscriptionService();
  (*(v54[-1].Description + 1))(&v9[v53], v54);
  v55 = v1[30];
  v56 = type metadata accessor for SessionService();
  (*(v56[-1].Description + 1))(&v9[v55], v56);
  v57 = v1[31];
  v58 = type metadata accessor for SharePlayService();
  (*(v58[-1].Description + 1))(&v9[v57], v58);
  v59 = v1[32];
  v60 = type metadata accessor for SiriService();
  (*(v60[-1].Description + 1))(&v9[v59], v60);
  v61 = v1[33];
  v62 = type metadata accessor for SyncService();
  (*(v62[-1].Description + 1))(&v9[v61], v62);
  v63 = &v9[v1[34]];
  v64 = *(v63 + 1);

  v65 = *(v63 + 3);

  v66 = *(v63 + 5);

  v67 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(&v9[v67], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v9[v1[36]]);
  v69 = *&v9[v1[37]];

  v70 = v1[38];
  v71 = type metadata accessor for WorkoutPlanService();
  (*(v71[-1].Description + 1))(&v9[v70], v71);
  (*(v5 + 8))(v0 + v6, v4);
  v72 = *(v0 + v7);
  swift_unknownObjectRelease();
  v73 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5EE79C4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1E5EE7A14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EE7A4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EE7AAC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5EE7AEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1E5EE7B40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EE7BF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EE7C30()
{
  v117 = type metadata accessor for AppComposer();
  v115 = *(*(v117 - 1) + 80);
  v112 = *(*(v117 - 1) + 64);
  v114 = sub_1E65DEA78();
  v111 = *(v114 - 8);
  v109 = *(v111 + 80);
  v110 = *(v111 + 64);
  v116 = v0;
  v113 = (v115 + 16) & ~v115;
  v106 = v0 + v113;
  v1 = *(v0 + v113);

  v2 = (v0 + v113 + v117[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v5], v108);
  v6 = v4[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v6], v105);
  v7 = v4[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v7], v103);
  v8 = v4[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v8], v101);
  v9 = v4[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v9], v99);
  v10 = v4[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v10], v97);
  v11 = v4[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v11], v95);
  v12 = v4[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v12], v93);
  v13 = v4[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v13], v91);
  v14 = v4[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v14], v89);
  v15 = v4[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v15], v87);
  v16 = v4[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v16], v85);
  v17 = v4[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v17], v83);
  v18 = v4[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v18], v81);
  v19 = v4[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v19], v79);
  v20 = v4[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v20], v77);
  v21 = v4[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v21], v75);
  v22 = v4[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v22], v73);
  v23 = v4[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v23], v71);
  v24 = v4[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v24], v69);
  v25 = v4[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(&v2[v25], v67);
  v26 = v4[27];
  v65 = type metadata accessor for ServiceSubscriptionService();
  v64 = *(v65[-1].Description + 1);
  v64(&v2[v26], v65);
  v27 = v4[28];
  v58 = type metadata accessor for SessionService();
  v63 = *(v58[-1].Description + 1);
  v63(&v2[v27], v58);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v62 = *(v29[-1].Description + 1);
  v62(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v61 = *(v31[-1].Description + 1);
  v61(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v60 = *(v33[-1].Description + 1);
  v60(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v57 = *(v42[-1].Description + 1);
  v57(&v2[v41], v42);
  v43 = *(v106 + v117[6]);

  v44 = (v106 + v117[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v107(&v47[v4[6]], v108);
  v104(&v47[v4[7]], v105);
  v102(&v47[v4[8]], v103);
  v100(&v47[v4[9]], v101);
  v98(&v47[v4[10]], v99);
  v96(&v47[v4[11]], v97);
  v94(&v47[v4[12]], v95);
  v92(&v47[v4[13]], v93);
  v90(&v47[v4[14]], v91);
  v88(&v47[v4[15]], v89);
  v86(&v47[v4[16]], v87);
  v84(&v47[v4[17]], v85);
  v82(&v47[v4[18]], v83);
  v80(&v47[v4[19]], v81);
  v78(&v47[v4[20]], v79);
  v76(&v47[v4[21]], v77);
  v74(&v47[v4[22]], v75);
  v72(&v47[v4[23]], v73);
  v70(&v47[v4[24]], v71);
  v68(&v47[v4[25]], v69);
  v66(&v47[v4[26]], v67);
  v64(&v47[v4[27]], v65);
  v63(&v47[v4[28]], v58);
  v62(&v47[v4[29]], v29);
  v61(&v47[v4[30]], v31);
  v60(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v59(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v57(&v47[v4[36]], v42);
  v54 = *(v106 + v117[8]);
  swift_unknownObjectRelease();
  if (*(v106 + v117[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v106 + v117[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  (*(v111 + 8))(v116 + ((v113 + v112 + v109) & ~v109), v114);

  return swift_deallocObject();
}

uint64_t sub_1E5EE898C()
{
  v1 = sub_1E65DEA78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5EE8A18()
{
  v111 = type metadata accessor for AppComposer();
  v110 = *(*(v111 - 1) + 80);
  v109 = *(*(v111 - 1) + 64);
  v106 = (v0 + ((v110 + 16) & ~v110));
  v1 = *v106;

  v2 = v106 + v111[5];
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v5], v108);
  v6 = v4[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v6], v105);
  v7 = v4[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v7], v103);
  v8 = v4[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v8], v101);
  v9 = v4[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v9], v99);
  v10 = v4[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v10], v97);
  v11 = v4[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v11], v95);
  v12 = v4[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v12], v93);
  v13 = v4[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v13], v91);
  v14 = v4[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v14], v89);
  v15 = v4[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v15], v87);
  v16 = v4[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v16], v85);
  v17 = v4[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v17], v83);
  v18 = v4[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v18], v81);
  v19 = v4[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v19], v79);
  v20 = v4[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v20], v77);
  v21 = v4[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v21], v75);
  v22 = v4[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v22], v73);
  v23 = v4[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v23], v71);
  v24 = v4[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v24], v69);
  v25 = v4[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(&v2[v25], v67);
  v26 = v4[27];
  v65 = type metadata accessor for ServiceSubscriptionService();
  v64 = *(v65[-1].Description + 1);
  v64(&v2[v26], v65);
  v27 = v4[28];
  v58 = type metadata accessor for SessionService();
  v63 = *(v58[-1].Description + 1);
  v63(&v2[v27], v58);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v62 = *(v29[-1].Description + 1);
  v62(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v61 = *(v31[-1].Description + 1);
  v61(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v60 = *(v33[-1].Description + 1);
  v60(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v57 = *(v42[-1].Description + 1);
  v57(&v2[v41], v42);
  v43 = *(v106 + v111[6]);

  v44 = (v106 + v111[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v107(&v47[v4[6]], v108);
  v104(&v47[v4[7]], v105);
  v102(&v47[v4[8]], v103);
  v100(&v47[v4[9]], v101);
  v98(&v47[v4[10]], v99);
  v96(&v47[v4[11]], v97);
  v94(&v47[v4[12]], v95);
  v92(&v47[v4[13]], v93);
  v90(&v47[v4[14]], v91);
  v88(&v47[v4[15]], v89);
  v86(&v47[v4[16]], v87);
  v84(&v47[v4[17]], v85);
  v82(&v47[v4[18]], v83);
  v80(&v47[v4[19]], v81);
  v78(&v47[v4[20]], v79);
  v76(&v47[v4[21]], v77);
  v74(&v47[v4[22]], v75);
  v72(&v47[v4[23]], v73);
  v70(&v47[v4[24]], v71);
  v68(&v47[v4[25]], v69);
  v66(&v47[v4[26]], v67);
  v64(&v47[v4[27]], v65);
  v63(&v47[v4[28]], v58);
  v62(&v47[v4[29]], v29);
  v61(&v47[v4[30]], v31);
  v60(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v59(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v57(&v47[v4[36]], v42);
  v54 = *(v106 + v111[8]);
  swift_unknownObjectRelease();
  if (*(v106 + v111[9] + 8) >= 0xC)
  {
  }

  v55 = (v106 + v111[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EE96DC(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1E65DF178();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EE98D0()
{
  if (v0[3] >= 0xCuLL)
  {
  }

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return swift_deallocObject();
}

uint64_t sub_1E5EE992C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EE9984()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5EE9A8C()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EE9B00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EE9B40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EE9C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E5EE9CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppComposer();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5EEA1CC()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v107 = (v0 + ((v111 + 32) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EEAEEC()
{
  v154 = type metadata accessor for AppComposer();
  v149 = *(*(v154 - 1) + 80);
  v1 = (v149 + 16) & ~v149;
  v2 = v1 + *(*(v154 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v146 = *(*(v3 - 8) + 80);
  v141 = v2 + v146;
  v145 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v147 = *(v4 - 8);
  v148 = v4;
  v144 = *(v147 + 80);
  v143 = *(v147 + 64);
  v5 = sub_1E65DEC18();
  v151 = *(v5 - 8);
  v152 = v5;
  v142 = *(v151 + 80);
  v150 = *(v151 + 64);
  v153 = v0;
  v138 = v0 + v1;
  v6 = *(v0 + v1);

  v7 = (v0 + v1 + v154[5]);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v140 = type metadata accessor for AccountService();
  v139 = *(v140[-1].Description + 1);
  v139(&v7[v10], v140);
  v11 = v9[7];
  v137 = type metadata accessor for AppStateService();
  v136 = *(v137[-1].Description + 1);
  v136(&v7[v11], v137);
  v12 = v9[8];
  v135 = type metadata accessor for ArchivedSessionService();
  v134 = *(v135[-1].Description + 1);
  v134(&v7[v12], v135);
  v13 = v9[9];
  v133 = type metadata accessor for AssetService();
  v132 = *(v133[-1].Description + 1);
  v132(&v7[v13], v133);
  v14 = v9[10];
  v131 = type metadata accessor for AwardsService();
  v130 = *(v131[-1].Description + 1);
  v130(&v7[v14], v131);
  v15 = v9[11];
  v129 = type metadata accessor for BookmarkService();
  v128 = *(v129[-1].Description + 1);
  v128(&v7[v15], v129);
  v16 = v9[12];
  v127 = type metadata accessor for CatalogService();
  v126 = *(v127[-1].Description + 1);
  v126(&v7[v16], v127);
  v17 = v9[13];
  v125 = type metadata accessor for ConfigurationService();
  v124 = *(v125[-1].Description + 1);
  v124(&v7[v17], v125);
  v18 = v9[14];
  v123 = type metadata accessor for ContentAvailabilityService();
  v122 = *(v123[-1].Description + 1);
  v122(&v7[v18], v123);
  v19 = v9[15];
  v121 = type metadata accessor for EngagementService();
  v120 = *(v121[-1].Description + 1);
  v120(&v7[v19], v121);
  v20 = v9[16];
  v119 = type metadata accessor for HealthDataService();
  v118 = *(v119[-1].Description + 1);
  v118(&v7[v20], v119);
  v21 = v9[17];
  v117 = type metadata accessor for InteropService();
  v116 = *(v117[-1].Description + 1);
  v116(&v7[v21], v117);
  v22 = v9[18];
  v115 = type metadata accessor for LocalizationService();
  v114 = *(v115[-1].Description + 1);
  v114(&v7[v22], v115);
  v23 = v9[19];
  v113 = type metadata accessor for MarketingService();
  v112 = *(v113[-1].Description + 1);
  v112(&v7[v23], v113);
  v24 = v9[20];
  v111 = type metadata accessor for MetricService();
  v110 = *(v111[-1].Description + 1);
  v110(&v7[v24], v111);
  v25 = v9[21];
  v109 = type metadata accessor for PersonalizationService();
  v108 = *(v109[-1].Description + 1);
  v108(&v7[v25], v109);
  v26 = v9[22];
  v107 = type metadata accessor for PlayerService();
  v106 = *(v107[-1].Description + 1);
  v106(&v7[v26], v107);
  v27 = v9[23];
  v105 = type metadata accessor for PrivacyPreferenceService();
  v104 = *(v105[-1].Description + 1);
  v104(&v7[v27], v105);
  v28 = v9[24];
  v103 = type metadata accessor for RecommendationService();
  v102 = *(v103[-1].Description + 1);
  v102(&v7[v28], v103);
  v29 = v9[25];
  v101 = type metadata accessor for RemoteBrowsingService();
  v100 = *(v101[-1].Description + 1);
  v100(&v7[v29], v101);
  v30 = v9[26];
  v99 = type metadata accessor for SearchService();
  v98 = *(v99[-1].Description + 1);
  v98(&v7[v30], v99);
  v31 = v9[27];
  v97 = type metadata accessor for ServiceSubscriptionService();
  v96 = *(v97[-1].Description + 1);
  v96(&v7[v31], v97);
  v32 = v9[28];
  v90 = type metadata accessor for SessionService();
  v95 = *(v90[-1].Description + 1);
  v95(&v7[v32], v90);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v94 = *(v34[-1].Description + 1);
  v94(&v7[v33], v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v93 = *(v36[-1].Description + 1);
  v93(&v7[v35], v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v92 = *(v38[-1].Description + 1);
  v92(&v7[v37], v38);
  v39 = &v7[v9[32]];
  v40 = *(v39 + 1);

  v41 = *(v39 + 3);

  v42 = *(v39 + 5);

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v91 = *(QueueService[-1].Description + 1);
  v91(&v7[v43], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v7[v9[34]]);
  v45 = *&v7[v9[35]];

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v89 = *(v47[-1].Description + 1);
  v89(&v7[v46], v47);
  v48 = *(v138 + v154[6]);

  v49 = (v138 + v154[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v139(&v52[v9[6]], v140);
  v136(&v52[v9[7]], v137);
  v134(&v52[v9[8]], v135);
  v132(&v52[v9[9]], v133);
  v130(&v52[v9[10]], v131);
  v128(&v52[v9[11]], v129);
  v126(&v52[v9[12]], v127);
  v124(&v52[v9[13]], v125);
  v122(&v52[v9[14]], v123);
  v120(&v52[v9[15]], v121);
  v118(&v52[v9[16]], v119);
  v116(&v52[v9[17]], v117);
  v114(&v52[v9[18]], v115);
  v112(&v52[v9[19]], v113);
  v110(&v52[v9[20]], v111);
  v108(&v52[v9[21]], v109);
  v106(&v52[v9[22]], v107);
  v104(&v52[v9[23]], v105);
  v102(&v52[v9[24]], v103);
  v100(&v52[v9[25]], v101);
  v98(&v52[v9[26]], v99);
  v96(&v52[v9[27]], v97);
  v95(&v52[v9[28]], v90);
  v94(&v52[v9[29]], v34);
  v93(&v52[v9[30]], v36);
  v92(&v52[v9[31]], v38);
  v54 = &v52[v9[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v91(&v52[v9[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v9[34]]);
  v58 = *&v52[v9[35]];

  v89(&v52[v9[36]], v47);
  v59 = *(v138 + v154[8]);
  swift_unknownObjectRelease();
  if (*(v138 + v154[9] + 8) >= 0xCuLL)
  {
  }

  v60 = v141 & ~v146;
  v61 = (v138 + v154[10]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = *(v153 + v60 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v64 = v153 + v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v65 = swift_getEnumCaseMultiPayload();
    switch(v65)
    {
      case 2:
        v70 = *(v64 + 8);

        v71 = *(v64 + 32);

        break;
      case 1:
        v67 = sub_1E65DE788();
        (*(*(v67 - 8) + 8))(v64, v67);
        v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v69 = sub_1E65D76A8();
        (*(*(v69 - 8) + 8))(v64 + v68, v69);
        break;
      case 0:
        v66 = sub_1E65DE788();
        (*(*(v66 - 8) + 8))(v64, v66);
        break;
    }

    v72 = v64 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 == 2)
    {
      v76 = *(v72 + 8);

      v77 = *(v72 + 32);
    }

    else if (v73 == 1)
    {
      v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v75 = sub_1E65D76A8();
      (*(*(v75 - 8) + 8))(v72 + v74, v75);
    }
  }

  v78 = (v145 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v78 + v144 + 8) & ~v144;
  v80 = (v143 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 47) & 0xFFFFFFFFFFFFFFF8;
  v82 = *(v153 + v78);

  (*(v147 + 8))(v153 + v79, v148);
  __swift_destroy_boxed_opaque_existential_1((v153 + v80));
  v83 = *(v153 + v81);
  swift_unknownObjectRelease();
  v84 = *(v153 + v81 + 24);

  v85 = *(v153 + v81 + 40);

  v86 = *(v153 + v81 + 56);

  v87 = *(v153 + v81 + 72);

  (*(v151 + 8))(v153 + ((v81 + v142 + 80) & ~v142), v152);

  return swift_deallocObject();
}

uint64_t sub_1E5EEBFA4()
{
  v142 = type metadata accessor for AppComposer();
  v140 = *(*(v142 - 1) + 80);
  v1 = (v140 + 32) & ~v140;
  v2 = *(*(v142 - 1) + 64);
  v3 = sub_1E65DEB68();
  v137 = *(*(v3 - 8) + 80);
  v129 = v1 + v2 + v137;
  v135 = *(*(v3 - 8) + 64);
  v4 = sub_1E65DEA28();
  v138 = *(v4 - 8);
  v139 = v4;
  v133 = *(v138 + 80);
  v132 = *(v138 + 64);
  v136 = sub_1E65DEC18();
  v134 = *(v136 - 8);
  v131 = *(v134 + 80);
  v130 = *(v134 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v141 = v0;
  v126 = v0 + v1;
  v6 = *(v0 + v1);

  v7 = (v0 + v1 + v142[5]);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v128 = type metadata accessor for AccountService();
  v127 = *(v128[-1].Description + 1);
  v127(v7 + v10, v128);
  v11 = v9[7];
  v125 = type metadata accessor for AppStateService();
  v124 = *(v125[-1].Description + 1);
  v124(v7 + v11, v125);
  v12 = v9[8];
  v123 = type metadata accessor for ArchivedSessionService();
  v122 = *(v123[-1].Description + 1);
  v122(v7 + v12, v123);
  v13 = v9[9];
  v121 = type metadata accessor for AssetService();
  v120 = *(v121[-1].Description + 1);
  v120(v7 + v13, v121);
  v14 = v9[10];
  v119 = type metadata accessor for AwardsService();
  v118 = *(v119[-1].Description + 1);
  v118(v7 + v14, v119);
  v15 = v9[11];
  v117 = type metadata accessor for BookmarkService();
  v116 = *(v117[-1].Description + 1);
  v116(v7 + v15, v117);
  v16 = v9[12];
  v115 = type metadata accessor for CatalogService();
  v114 = *(v115[-1].Description + 1);
  v114(v7 + v16, v115);
  v17 = v9[13];
  v113 = type metadata accessor for ConfigurationService();
  v112 = *(v113[-1].Description + 1);
  v112(v7 + v17, v113);
  v18 = v9[14];
  v111 = type metadata accessor for ContentAvailabilityService();
  v110 = *(v111[-1].Description + 1);
  v110(v7 + v18, v111);
  v19 = v9[15];
  v109 = type metadata accessor for EngagementService();
  v108 = *(v109[-1].Description + 1);
  v108(v7 + v19, v109);
  v20 = v9[16];
  v107 = type metadata accessor for HealthDataService();
  v106 = *(v107[-1].Description + 1);
  v106(v7 + v20, v107);
  v21 = v9[17];
  v105 = type metadata accessor for InteropService();
  v104 = *(v105[-1].Description + 1);
  v104(v7 + v21, v105);
  v22 = v9[18];
  v103 = type metadata accessor for LocalizationService();
  v102 = *(v103[-1].Description + 1);
  v102(v7 + v22, v103);
  v23 = v9[19];
  v101 = type metadata accessor for MarketingService();
  v100 = *(v101[-1].Description + 1);
  v100(v7 + v23, v101);
  v24 = v9[20];
  v99 = type metadata accessor for MetricService();
  v98 = *(v99[-1].Description + 1);
  v98(v7 + v24, v99);
  v25 = v9[21];
  v97 = type metadata accessor for PersonalizationService();
  v96 = *(v97[-1].Description + 1);
  v96(v7 + v25, v97);
  v26 = v9[22];
  v95 = type metadata accessor for PlayerService();
  v94 = *(v95[-1].Description + 1);
  v94(v7 + v26, v95);
  v27 = v9[23];
  v93 = type metadata accessor for PrivacyPreferenceService();
  v92 = *(v93[-1].Description + 1);
  v92(v7 + v27, v93);
  v28 = v9[24];
  v91 = type metadata accessor for RecommendationService();
  v90 = *(v91[-1].Description + 1);
  v90(v7 + v28, v91);
  v29 = v9[25];
  v89 = type metadata accessor for RemoteBrowsingService();
  v88 = *(v89[-1].Description + 1);
  v88(v7 + v29, v89);
  v30 = v9[26];
  v87 = type metadata accessor for SearchService();
  v86 = *(v87[-1].Description + 1);
  v86(v7 + v30, v87);
  v31 = v9[27];
  v85 = type metadata accessor for ServiceSubscriptionService();
  v84 = *(v85[-1].Description + 1);
  v84(v7 + v31, v85);
  v32 = v9[28];
  v78 = type metadata accessor for SessionService();
  v83 = *(v78[-1].Description + 1);
  v83(v7 + v32, v78);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v82 = *(v34[-1].Description + 1);
  v82(v7 + v33, v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v81 = *(v36[-1].Description + 1);
  v81(v7 + v35, v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v80 = *(v38[-1].Description + 1);
  v80(v7 + v37, v38);
  v39 = (v7 + v9[32]);
  v40 = v39[1];

  v41 = v39[3];

  v42 = v39[5];

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v79 = *(QueueService[-1].Description + 1);
  v79(v7 + v43, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v7 + v9[34]));
  v45 = *(v7 + v9[35]);

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v77 = *(v47[-1].Description + 1);
  v77(v7 + v46, v47);
  v48 = *(v126 + v142[6]);

  v49 = (v126 + v142[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v127(v52 + v9[6], v128);
  v124(v52 + v9[7], v125);
  v122(v52 + v9[8], v123);
  v120(v52 + v9[9], v121);
  v118(v52 + v9[10], v119);
  v116(v52 + v9[11], v117);
  v114(v52 + v9[12], v115);
  v112(v52 + v9[13], v113);
  v110(v52 + v9[14], v111);
  v108(v52 + v9[15], v109);
  v106(v52 + v9[16], v107);
  v104(v52 + v9[17], v105);
  v102(v52 + v9[18], v103);
  v100(v52 + v9[19], v101);
  v98(v52 + v9[20], v99);
  v96(v52 + v9[21], v97);
  v94(v52 + v9[22], v95);
  v92(v52 + v9[23], v93);
  v90(v52 + v9[24], v91);
  v88(v52 + v9[25], v89);
  v86(v52 + v9[26], v87);
  v84(v52 + v9[27], v85);
  v83(v52 + v9[28], v78);
  v82(v52 + v9[29], v34);
  v81(v52 + v9[30], v36);
  v80(v52 + v9[31], v38);
  v54 = (v52 + v9[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v79(v52 + v9[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v9[34]));
  v58 = *(v52 + v9[35]);

  v77(v52 + v9[36], v47);
  v59 = *(v126 + v142[8]);
  swift_unknownObjectRelease();
  if (*(v126 + v142[9] + 8) >= 0xCuLL)
  {
  }

  v60 = v129 & ~v137;
  v61 = (v126 + v142[10]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = v141 + v60;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v67 = sub_1E65D76A8();
      (*(*(v67 - 8) + 8))(v141 + v60, v67);
      break;
    case 2:
      v66 = *(v62 + 8);

      break;
    case 1:
      v64 = *(v62 + 8);

      v65 = *(v62 + 24);

      break;
  }

  v68 = (v60 + v135 + v133) & ~v133;
  v69 = (v68 + v132 + v131) & ~v131;
  (*(v138 + 8))(v141 + v68, v139);
  (*(v134 + 8))(v141 + v69, v136);
  v70 = (v141 + ((v130 + v69 + 7) & 0xFFFFFFFFFFFFFFF8));
  v71 = *v70;
  swift_unknownObjectRelease();
  v72 = v70[3];

  v73 = v70[5];

  v74 = v70[7];

  v75 = v70[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EECED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EECF08()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v3 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v7 = swift_getEnumCaseMultiPayload();
    switch(v7)
    {
      case 2:
        v12 = *(v6 + 8);

        v13 = *(v6 + 32);

        break;
      case 1:
        v9 = sub_1E65DE788();
        (*(*(v9 - 8) + 8))(v6, v9);
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v11 = sub_1E65D76A8();
        (*(*(v11 - 8) + 8))(v6 + v10, v11);
        break;
      case 0:
        v8 = sub_1E65DE788();
        (*(*(v8 - 8) + 8))(v6, v8);
        break;
    }

    v14 = v6 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 == 2)
    {
      v18 = *(v14 + 8);

      v19 = *(v14 + 32);
    }

    else if (v15 == 1)
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v17 = sub_1E65D76A8();
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EED1A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EED290()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EED2D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EED308()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EED34C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for PlatformAlertViewModifier();
  sub_1E65E3DE8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EED3E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PlatformAlertViewModifier();
  swift_getWitnessTable();
  sub_1E65E41A8();
  sub_1E65E3DE8();
  sub_1E65E4148();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5EED4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D74E8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5EED550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D74E8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5EED5C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EED5F8()
{
  v124 = type metadata accessor for AppComposer();
  v122 = *(*(v124 - 1) + 80);
  v118 = *(*(v124 - 1) + 64);
  v121 = sub_1E65E1A48();
  v119 = *(v121 - 8);
  v117 = *(v119 + 80);
  v116 = *(v119 + 64);
  v123 = v0;
  v120 = (v122 + 16) & ~v122;
  v113 = v0 + v120;
  v1 = *(v0 + v120);

  v2 = (v0 + v120 + v124[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(v2 + v5, v115);
  v6 = v4[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(v2 + v6, v112);
  v7 = v4[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(v2 + v7, v110);
  v8 = v4[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(v2 + v8, v108);
  v9 = v4[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(v2 + v9, v106);
  v10 = v4[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(v2 + v10, v104);
  v11 = v4[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(v2 + v11, v102);
  v12 = v4[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(v2 + v12, v100);
  v13 = v4[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(v2 + v13, v98);
  v14 = v4[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(v2 + v14, v96);
  v15 = v4[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(v2 + v15, v94);
  v16 = v4[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v16, v92);
  v17 = v4[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(v2 + v17, v90);
  v18 = v4[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(v2 + v18, v88);
  v19 = v4[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(v2 + v19, v86);
  v20 = v4[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(v2 + v20, v84);
  v21 = v4[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(v2 + v21, v82);
  v22 = v4[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(v2 + v22, v80);
  v23 = v4[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(v2 + v23, v78);
  v24 = v4[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(v2 + v24, v76);
  v25 = v4[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(v2 + v25, v74);
  v26 = v4[27];
  v72 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v72[-1].Description + 1);
  v71(v2 + v26, v72);
  v27 = v4[28];
  v65 = type metadata accessor for SessionService();
  v70 = *(v65[-1].Description + 1);
  v70(v2 + v27, v65);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v69 = *(v29[-1].Description + 1);
  v69(v2 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v68 = *(v31[-1].Description + 1);
  v68(v2 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v67 = *(v33[-1].Description + 1);
  v67(v2 + v32, v33);
  v34 = (v2 + v4[32]);
  v35 = v34[1];

  v36 = v34[3];

  v37 = v34[5];

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(v2 + v38, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4[34]));
  v40 = *(v2 + v4[35]);

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v64 = *(v42[-1].Description + 1);
  v64(v2 + v41, v42);
  v43 = *(v113 + v124[6]);

  v44 = (v113 + v124[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = (v44 + *(type metadata accessor for AppDataItemResolver() + 24));
  v48 = *v47;
  swift_unknownObjectRelease();
  v114(v47 + v4[6], v115);
  v111(v47 + v4[7], v112);
  v109(v47 + v4[8], v110);
  v107(v47 + v4[9], v108);
  v105(v47 + v4[10], v106);
  v103(v47 + v4[11], v104);
  v101(v47 + v4[12], v102);
  v99(v47 + v4[13], v100);
  v97(v47 + v4[14], v98);
  v95(v47 + v4[15], v96);
  v93(v47 + v4[16], v94);
  v91(v47 + v4[17], v92);
  v89(v47 + v4[18], v90);
  v87(v47 + v4[19], v88);
  v85(v47 + v4[20], v86);
  v83(v47 + v4[21], v84);
  v81(v47 + v4[22], v82);
  v79(v47 + v4[23], v80);
  v77(v47 + v4[24], v78);
  v75(v47 + v4[25], v76);
  v73(v47 + v4[26], v74);
  v71(v47 + v4[27], v72);
  v70(v47 + v4[28], v65);
  v69(v47 + v4[29], v29);
  v68(v47 + v4[30], v31);
  v67(v47 + v4[31], v33);
  v49 = (v47 + v4[32]);
  v50 = v49[1];

  v51 = v49[3];

  v52 = v49[5];

  v66(v47 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v47 + v4[34]));
  v53 = *(v47 + v4[35]);

  v64(v47 + v4[36], v42);
  v54 = *(v113 + v124[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v124[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v113 + v124[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v120 + v118 + v117) & ~v117;
  v57 = (v116 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v119 + 8))(v123 + v56, v121);
  v58 = *(v123 + v57);
  swift_unknownObjectRelease();
  v59 = *(v123 + v57 + 24);

  v60 = *(v123 + v57 + 40);

  v61 = *(v123 + v57 + 56);

  v62 = *(v123 + v57 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5EEE394()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1E5EEE3F4()
{
  v119 = type metadata accessor for AppComposer();
  v117 = *(*(v119 - 1) + 80);
  v115 = *(*(v119 - 1) + 64);
  v116 = (v117 + 16) & ~v117;
  v118 = v0;
  v112 = v0 + v116;
  v1 = *(v0 + v116);

  v2 = (v0 + v116 + v119[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v114 = type metadata accessor for AccountService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v5], v114);
  v6 = v4[7];
  v111 = type metadata accessor for AppStateService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v6], v111);
  v7 = v4[8];
  v109 = type metadata accessor for ArchivedSessionService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v7], v109);
  v8 = v4[9];
  v107 = type metadata accessor for AssetService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v8], v107);
  v9 = v4[10];
  v105 = type metadata accessor for AwardsService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v9], v105);
  v10 = v4[11];
  v103 = type metadata accessor for BookmarkService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v10], v103);
  v11 = v4[12];
  v101 = type metadata accessor for CatalogService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v11], v101);
  v12 = v4[13];
  v99 = type metadata accessor for ConfigurationService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v12], v99);
  v13 = v4[14];
  v97 = type metadata accessor for ContentAvailabilityService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v13], v97);
  v14 = v4[15];
  v95 = type metadata accessor for EngagementService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v14], v95);
  v15 = v4[16];
  v93 = type metadata accessor for HealthDataService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v15], v93);
  v16 = v4[17];
  v91 = type metadata accessor for InteropService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v16], v91);
  v17 = v4[18];
  v89 = type metadata accessor for LocalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v17], v89);
  v18 = v4[19];
  v87 = type metadata accessor for MarketingService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v18], v87);
  v19 = v4[20];
  v85 = type metadata accessor for MetricService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v19], v85);
  v20 = v4[21];
  v83 = type metadata accessor for PersonalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v20], v83);
  v21 = v4[22];
  v81 = type metadata accessor for PlayerService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v21], v81);
  v22 = v4[23];
  v79 = type metadata accessor for PrivacyPreferenceService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v22], v79);
  v23 = v4[24];
  v77 = type metadata accessor for RecommendationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v23], v77);
  v24 = v4[25];
  v75 = type metadata accessor for RemoteBrowsingService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v24], v75);
  v25 = v4[26];
  v73 = type metadata accessor for SearchService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v25], v73);
  v26 = v4[27];
  v71 = type metadata accessor for ServiceSubscriptionService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v26], v71);
  v27 = v4[28];
  v64 = type metadata accessor for SessionService();
  v69 = *(v64[-1].Description + 1);
  v69(&v2[v27], v64);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v68 = *(v29[-1].Description + 1);
  v68(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v67 = *(v31[-1].Description + 1);
  v67(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v66 = *(v33[-1].Description + 1);
  v66(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v65 = *(QueueService[-1].Description + 1);
  v65(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v63 = *(v42[-1].Description + 1);
  v63(&v2[v41], v42);
  v43 = *(v112 + v119[6]);

  v44 = (v112 + v119[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v113(&v47[v4[6]], v114);
  v110(&v47[v4[7]], v111);
  v108(&v47[v4[8]], v109);
  v106(&v47[v4[9]], v107);
  v104(&v47[v4[10]], v105);
  v102(&v47[v4[11]], v103);
  v100(&v47[v4[12]], v101);
  v98(&v47[v4[13]], v99);
  v96(&v47[v4[14]], v97);
  v94(&v47[v4[15]], v95);
  v92(&v47[v4[16]], v93);
  v90(&v47[v4[17]], v91);
  v88(&v47[v4[18]], v89);
  v86(&v47[v4[19]], v87);
  v84(&v47[v4[20]], v85);
  v82(&v47[v4[21]], v83);
  v80(&v47[v4[22]], v81);
  v78(&v47[v4[23]], v79);
  v76(&v47[v4[24]], v77);
  v74(&v47[v4[25]], v75);
  v72(&v47[v4[26]], v73);
  v70(&v47[v4[27]], v71);
  v69(&v47[v4[28]], v64);
  v68(&v47[v4[29]], v29);
  v67(&v47[v4[30]], v31);
  v66(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v65(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v63(&v47[v4[36]], v42);
  v54 = *(v112 + v119[8]);
  swift_unknownObjectRelease();
  if (*(v112 + v119[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v112 + v119[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + ((v115 + v116 + 7) & 0xFFFFFFFFFFFFFFF8));
  v57 = *v56;
  swift_unknownObjectRelease();
  v58 = v56[3];

  v59 = v56[5];

  v60 = v56[7];

  v61 = v56[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EEF0F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EEF130()
{
  v1 = sub_1E65E1998();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();
  v7 = *(v0 + v4 + 24);

  v8 = *(v0 + v4 + 40);

  v9 = *(v0 + v4 + 56);

  v10 = *(v0 + v4 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5EEF238()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1E5EEF290()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EEF354()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EEF3A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v115 = type metadata accessor for AppComposer();
  v114 = *(*(v115 - 1) + 80);
  v113 = *(*(v115 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v110 = (v0 + ((v3 + v4 + v114) & ~v114));
  v5 = *v110;

  v6 = v110 + v115[5];
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v6[v9], v112);
  v10 = v8[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v6[v10], v109);
  v11 = v8[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v6[v11], v107);
  v12 = v8[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v6[v12], v105);
  v13 = v8[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v6[v13], v103);
  v14 = v8[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v6[v14], v101);
  v15 = v8[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v6[v15], v99);
  v16 = v8[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v6[v16], v97);
  v17 = v8[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v6[v17], v95);
  v18 = v8[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v6[v18], v93);
  v19 = v8[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v6[v19], v91);
  v20 = v8[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v6[v20], v89);
  v21 = v8[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v6[v21], v87);
  v22 = v8[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v6[v22], v85);
  v23 = v8[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v6[v23], v83);
  v24 = v8[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v6[v24], v81);
  v25 = v8[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v6[v25], v79);
  v26 = v8[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v6[v26], v77);
  v27 = v8[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v6[v27], v75);
  v28 = v8[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v6[v28], v73);
  v29 = v8[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v6[v29], v71);
  v30 = v8[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v6[v30], v69);
  v31 = v8[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v6[v31], v62);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v66 = *(v33[-1].Description + 1);
  v66(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v65 = *(v35[-1].Description + 1);
  v65(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v64 = *(v37[-1].Description + 1);
  v64(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v61 = *(v46[-1].Description + 1);
  v61(&v6[v45], v46);
  v47 = *(v110 + v115[6]);

  v48 = (v110 + v115[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = v48 + *(type metadata accessor for AppDataItemResolver() + 24);
  v52 = *v51;
  swift_unknownObjectRelease();
  v111(&v51[v8[6]], v112);
  v108(&v51[v8[7]], v109);
  v106(&v51[v8[8]], v107);
  v104(&v51[v8[9]], v105);
  v102(&v51[v8[10]], v103);
  v100(&v51[v8[11]], v101);
  v98(&v51[v8[12]], v99);
  v96(&v51[v8[13]], v97);
  v94(&v51[v8[14]], v95);
  v92(&v51[v8[15]], v93);
  v90(&v51[v8[16]], v91);
  v88(&v51[v8[17]], v89);
  v86(&v51[v8[18]], v87);
  v84(&v51[v8[19]], v85);
  v82(&v51[v8[20]], v83);
  v80(&v51[v8[21]], v81);
  v78(&v51[v8[22]], v79);
  v76(&v51[v8[23]], v77);
  v74(&v51[v8[24]], v75);
  v72(&v51[v8[25]], v73);
  v70(&v51[v8[26]], v71);
  v68(&v51[v8[27]], v69);
  v67(&v51[v8[28]], v62);
  v66(&v51[v8[29]], v33);
  v65(&v51[v8[30]], v35);
  v64(&v51[v8[31]], v37);
  v53 = &v51[v8[32]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v63(&v51[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v51[v8[34]]);
  v57 = *&v51[v8[35]];

  v61(&v51[v8[36]], v46);
  v58 = *(v110 + v115[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v115[9] + 8) >= 0xC)
  {
  }

  v59 = (v110 + v115[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EF0100()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1E5EF0148()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EF0180()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v8, *(v8 + 8), *(v8 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 2)
    {
      v14 = *(v10 + 8);

      v15 = *(v10 + 32);
    }

    else if (v11 == 1)
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v13 = sub_1E65D76A8();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5EF0394()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 == 2)
    {
      v9 = *(v5 + 8);

      v10 = *(v5 + 32);
    }

    else if (v6 == 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v8 = sub_1E65D76A8();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EF0568()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_1E5EF05B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1E5EF0610()
{
  v123 = type metadata accessor for AppComposer();
  v121 = *(*(v123 - 1) + 80);
  v119 = *(*(v123 - 1) + 64);
  v120 = (v121 + 16) & ~v121;
  v122 = v0;
  v116 = v0 + v120;
  v1 = *(v0 + v120);

  v2 = (v0 + v120 + v123[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(&v2[v5], v118);
  v6 = v4[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v6], v115);
  v7 = v4[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v7], v113);
  v8 = v4[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v8], v111);
  v9 = v4[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v9], v109);
  v10 = v4[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v10], v107);
  v11 = v4[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v11], v105);
  v12 = v4[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v12], v103);
  v13 = v4[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v13], v101);
  v14 = v4[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v14], v99);
  v15 = v4[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v15], v97);
  v16 = v4[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v16], v95);
  v17 = v4[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v17], v93);
  v18 = v4[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v18], v91);
  v19 = v4[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v19], v89);
  v20 = v4[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v20], v87);
  v21 = v4[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v21], v85);
  v22 = v4[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v22], v83);
  v23 = v4[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v23], v81);
  v24 = v4[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v24], v79);
  v25 = v4[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v25], v77);
  v26 = v4[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v26], v75);
  v27 = v4[28];
  v68 = type metadata accessor for SessionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v2[v27], v68);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v72 = *(v29[-1].Description + 1);
  v72(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v71 = *(v31[-1].Description + 1);
  v71(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v70 = *(v33[-1].Description + 1);
  v70(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v67 = *(v42[-1].Description + 1);
  v67(&v2[v41], v42);
  v43 = *(v116 + v123[6]);

  v44 = (v116 + v123[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v117(&v47[v4[6]], v118);
  v114(&v47[v4[7]], v115);
  v112(&v47[v4[8]], v113);
  v110(&v47[v4[9]], v111);
  v108(&v47[v4[10]], v109);
  v106(&v47[v4[11]], v107);
  v104(&v47[v4[12]], v105);
  v102(&v47[v4[13]], v103);
  v100(&v47[v4[14]], v101);
  v98(&v47[v4[15]], v99);
  v96(&v47[v4[16]], v97);
  v94(&v47[v4[17]], v95);
  v92(&v47[v4[18]], v93);
  v90(&v47[v4[19]], v91);
  v88(&v47[v4[20]], v89);
  v86(&v47[v4[21]], v87);
  v84(&v47[v4[22]], v85);
  v82(&v47[v4[23]], v83);
  v80(&v47[v4[24]], v81);
  v78(&v47[v4[25]], v79);
  v76(&v47[v4[26]], v77);
  v74(&v47[v4[27]], v75);
  v73(&v47[v4[28]], v68);
  v72(&v47[v4[29]], v29);
  v71(&v47[v4[30]], v31);
  v70(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v69(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v67(&v47[v4[36]], v42);
  v54 = *(v116 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v116 + v123[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v119 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 87) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v122 + v56 + 8);

  v60 = (v122 + v57);
  v61 = *v60;
  swift_unknownObjectRelease();
  v62 = v60[3];

  v63 = v60[5];

  v64 = v60[7];

  v65 = v60[9];

  __swift_destroy_boxed_opaque_existential_1((v122 + v58));

  return swift_deallocObject();
}

uint64_t sub_1E5EF1350()
{
  v139 = type metadata accessor for AppComposer();
  v137 = *(*(v139 - 1) + 80);
  v1 = (v137 + 16) & ~v137;
  v2 = v1 + *(*(v139 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v136 = *(*(v3 - 8) + 80);
  v133 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v134 = *(v4 - 8);
  v135 = v4;
  v132 = *(v134 + 80);
  v131 = *(v134 + 64);
  v138 = v0;
  v128 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v139[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v130 = type metadata accessor for AccountService();
  v129 = *(v130[-1].Description + 1);
  v129(v6 + v9, v130);
  v10 = v8[7];
  v127 = type metadata accessor for AppStateService();
  v126 = *(v127[-1].Description + 1);
  v126(v6 + v10, v127);
  v11 = v8[8];
  v125 = type metadata accessor for ArchivedSessionService();
  v124 = *(v125[-1].Description + 1);
  v124(v6 + v11, v125);
  v12 = v8[9];
  v123 = type metadata accessor for AssetService();
  v122 = *(v123[-1].Description + 1);
  v122(v6 + v12, v123);
  v13 = v8[10];
  v121 = type metadata accessor for AwardsService();
  v120 = *(v121[-1].Description + 1);
  v120(v6 + v13, v121);
  v14 = v8[11];
  v119 = type metadata accessor for BookmarkService();
  v118 = *(v119[-1].Description + 1);
  v118(v6 + v14, v119);
  v15 = v8[12];
  v117 = type metadata accessor for CatalogService();
  v116 = *(v117[-1].Description + 1);
  v116(v6 + v15, v117);
  v16 = v8[13];
  v115 = type metadata accessor for ConfigurationService();
  v114 = *(v115[-1].Description + 1);
  v114(v6 + v16, v115);
  v17 = v8[14];
  v113 = type metadata accessor for ContentAvailabilityService();
  v112 = *(v113[-1].Description + 1);
  v112(v6 + v17, v113);
  v18 = v8[15];
  v111 = type metadata accessor for EngagementService();
  v110 = *(v111[-1].Description + 1);
  v110(v6 + v18, v111);
  v19 = v8[16];
  v109 = type metadata accessor for HealthDataService();
  v108 = *(v109[-1].Description + 1);
  v108(v6 + v19, v109);
  v20 = v8[17];
  v107 = type metadata accessor for InteropService();
  v106 = *(v107[-1].Description + 1);
  v106(v6 + v20, v107);
  v21 = v8[18];
  v105 = type metadata accessor for LocalizationService();
  v104 = *(v105[-1].Description + 1);
  v104(v6 + v21, v105);
  v22 = v8[19];
  v103 = type metadata accessor for MarketingService();
  v102 = *(v103[-1].Description + 1);
  v102(v6 + v22, v103);
  v23 = v8[20];
  v101 = type metadata accessor for MetricService();
  v100 = *(v101[-1].Description + 1);
  v100(v6 + v23, v101);
  v24 = v8[21];
  v99 = type metadata accessor for PersonalizationService();
  v98 = *(v99[-1].Description + 1);
  v98(v6 + v24, v99);
  v25 = v8[22];
  v97 = type metadata accessor for PlayerService();
  v96 = *(v97[-1].Description + 1);
  v96(v6 + v25, v97);
  v26 = v8[23];
  v95 = type metadata accessor for PrivacyPreferenceService();
  v94 = *(v95[-1].Description + 1);
  v94(v6 + v26, v95);
  v27 = v8[24];
  v93 = type metadata accessor for RecommendationService();
  v92 = *(v93[-1].Description + 1);
  v92(v6 + v27, v93);
  v28 = v8[25];
  v91 = type metadata accessor for RemoteBrowsingService();
  v90 = *(v91[-1].Description + 1);
  v90(v6 + v28, v91);
  v29 = v8[26];
  v89 = type metadata accessor for SearchService();
  v88 = *(v89[-1].Description + 1);
  v88(v6 + v29, v89);
  v30 = v8[27];
  v87 = type metadata accessor for ServiceSubscriptionService();
  v86 = *(v87[-1].Description + 1);
  v86(v6 + v30, v87);
  v31 = v8[28];
  v80 = type metadata accessor for SessionService();
  v85 = *(v80[-1].Description + 1);
  v85(v6 + v31, v80);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v84 = *(v33[-1].Description + 1);
  v84(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v83 = *(v35[-1].Description + 1);
  v83(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v82 = *(v37[-1].Description + 1);
  v82(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v81 = *(QueueService[-1].Description + 1);
  v81(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v79 = *(v46[-1].Description + 1);
  v79(v6 + v45, v46);
  v47 = *(v128 + v139[6]);

  v48 = (v128 + v139[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v129(v51 + v8[6], v130);
  v126(v51 + v8[7], v127);
  v124(v51 + v8[8], v125);
  v122(v51 + v8[9], v123);
  v120(v51 + v8[10], v121);
  v118(v51 + v8[11], v119);
  v116(v51 + v8[12], v117);
  v114(v51 + v8[13], v115);
  v112(v51 + v8[14], v113);
  v110(v51 + v8[15], v111);
  v108(v51 + v8[16], v109);
  v106(v51 + v8[17], v107);
  v104(v51 + v8[18], v105);
  v102(v51 + v8[19], v103);
  v100(v51 + v8[20], v101);
  v98(v51 + v8[21], v99);
  v96(v51 + v8[22], v97);
  v94(v51 + v8[23], v95);
  v92(v51 + v8[24], v93);
  v90(v51 + v8[25], v91);
  v88(v51 + v8[26], v89);
  v86(v51 + v8[27], v87);
  v85(v51 + v8[28], v80);
  v84(v51 + v8[29], v33);
  v83(v51 + v8[30], v35);
  v82(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v81(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v79(v51 + v8[36], v46);
  v58 = *(v128 + v139[8]);
  swift_unknownObjectRelease();
  if (*(v128 + v139[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v136) & ~v136;
  v60 = (v128 + v139[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v138 + v59;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v61, *(v61 + 8), *(v61 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:
        v69 = *(v63 + 8);

        v70 = *(v63 + 32);

        break;
      case 1:
        v66 = sub_1E65DE508();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE508();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }
  }

  v71 = (v59 + v133 + v132) & ~v132;
  v72 = (v131 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v134 + 8))(v138 + v71, v135);
  v73 = *(v138 + v72);
  swift_unknownObjectRelease();
  v74 = *(v138 + v72 + 24);

  v75 = *(v138 + v72 + 40);

  v76 = *(v138 + v72 + 56);

  v77 = *(v138 + v72 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5EF22B0()
{
  v114 = type metadata accessor for AppComposer();
  v1 = (*(*(v114 - 1) + 80) + 16) & ~*(*(v114 - 1) + 80);
  v118 = *(*(v114 - 1) + 64) + v1 + 7;
  v119 = v0;
  v2 = v0 + v1;
  v115 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v2 + v114[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v4[v7], v117);
  v8 = v6[7];
  v113 = type metadata accessor for AppStateService();
  v112 = *(v113[-1].Description + 1);
  v112(&v4[v8], v113);
  v9 = v6[8];
  v111 = type metadata accessor for ArchivedSessionService();
  v110 = *(v111[-1].Description + 1);
  v110(&v4[v9], v111);
  v10 = v6[9];
  v109 = type metadata accessor for AssetService();
  v108 = *(v109[-1].Description + 1);
  v108(&v4[v10], v109);
  v11 = v6[10];
  v107 = type metadata accessor for AwardsService();
  v106 = *(v107[-1].Description + 1);
  v106(&v4[v11], v107);
  v12 = v6[11];
  v105 = type metadata accessor for BookmarkService();
  v104 = *(v105[-1].Description + 1);
  v104(&v4[v12], v105);
  v13 = v6[12];
  v103 = type metadata accessor for CatalogService();
  v102 = *(v103[-1].Description + 1);
  v102(&v4[v13], v103);
  v14 = v6[13];
  v101 = type metadata accessor for ConfigurationService();
  v100 = *(v101[-1].Description + 1);
  v100(&v4[v14], v101);
  v15 = v6[14];
  v99 = type metadata accessor for ContentAvailabilityService();
  v98 = *(v99[-1].Description + 1);
  v98(&v4[v15], v99);
  v16 = v6[15];
  v97 = type metadata accessor for EngagementService();
  v96 = *(v97[-1].Description + 1);
  v96(&v4[v16], v97);
  v17 = v6[16];
  v95 = type metadata accessor for HealthDataService();
  v94 = *(v95[-1].Description + 1);
  v94(&v4[v17], v95);
  v18 = v6[17];
  v93 = type metadata accessor for InteropService();
  v92 = *(v93[-1].Description + 1);
  v92(&v4[v18], v93);
  v19 = v6[18];
  v91 = type metadata accessor for LocalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v4[v19], v91);
  v20 = v6[19];
  v89 = type metadata accessor for MarketingService();
  v88 = *(v89[-1].Description + 1);
  v88(&v4[v20], v89);
  v21 = v6[20];
  v87 = type metadata accessor for MetricService();
  v86 = *(v87[-1].Description + 1);
  v86(&v4[v21], v87);
  v22 = v6[21];
  v85 = type metadata accessor for PersonalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v4[v22], v85);
  v23 = v6[22];
  v83 = type metadata accessor for PlayerService();
  v82 = *(v83[-1].Description + 1);
  v82(&v4[v23], v83);
  v24 = v6[23];
  v81 = type metadata accessor for PrivacyPreferenceService();
  v80 = *(v81[-1].Description + 1);
  v80(&v4[v24], v81);
  v25 = v6[24];
  v79 = type metadata accessor for RecommendationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v4[v25], v79);
  v26 = v6[25];
  v77 = type metadata accessor for RemoteBrowsingService();
  v76 = *(v77[-1].Description + 1);
  v76(&v4[v26], v77);
  v27 = v6[26];
  v75 = type metadata accessor for SearchService();
  v74 = *(v75[-1].Description + 1);
  v74(&v4[v27], v75);
  v28 = v6[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v4[v28], v68);
  v29 = v6[28];
  v66 = type metadata accessor for SessionService();
  v72 = *(v66[-1].Description + 1);
  v72(&v4[v29], v66);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v71 = *(v31[-1].Description + 1);
  v71(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v70 = *(v33[-1].Description + 1);
  v70(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v69 = *(v35[-1].Description + 1);
  v69(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v67 = *(QueueService[-1].Description + 1);
  v67(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v45 = *(v44[-1].Description + 1);
  v45(&v4[v43], v44);
  v46 = *(v115 + v114[6]);

  v47 = (v115 + v114[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v116(&v50[v6[6]], v117);
  v112(&v50[v6[7]], v113);
  v110(&v50[v6[8]], v111);
  v108(&v50[v6[9]], v109);
  v106(&v50[v6[10]], v107);
  v104(&v50[v6[11]], v105);
  v102(&v50[v6[12]], v103);
  v100(&v50[v6[13]], v101);
  v98(&v50[v6[14]], v99);
  v96(&v50[v6[15]], v97);
  v94(&v50[v6[16]], v95);
  v92(&v50[v6[17]], v93);
  v90(&v50[v6[18]], v91);
  v88(&v50[v6[19]], v89);
  v86(&v50[v6[20]], v87);
  v84(&v50[v6[21]], v85);
  v82(&v50[v6[22]], v83);
  v80(&v50[v6[23]], v81);
  v78(&v50[v6[24]], v79);
  v76(&v50[v6[25]], v77);
  v74(&v50[v6[26]], v75);
  v73(&v50[v6[27]], v68);
  v72(&v50[v6[28]], v66);
  v71(&v50[v6[29]], v31);
  v70(&v50[v6[30]], v33);
  v69(&v50[v6[31]], v35);
  v52 = &v50[v6[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v67(&v50[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v6[34]]);
  v56 = *&v50[v6[35]];

  v45(&v50[v6[36]], v44);
  v57 = *(v115 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v118 & 0xFFFFFFFFFFFFFFF8;
  v59 = (v115 + v114[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v60 = (v119 + v58);
  if (*(v119 + v58))
  {
    swift_unknownObjectRelease();
    v61 = v60[3];

    v62 = v60[5];

    v63 = v60[7];

    v64 = v60[9];
  }

  __swift_destroy_boxed_opaque_existential_1((v119 + ((v58 + 87) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}