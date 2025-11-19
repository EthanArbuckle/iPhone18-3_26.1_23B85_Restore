uint64_t sub_1E5E38644()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E3867C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5E386C0()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5E386F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E38738()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E38778()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E387D0()
{
  v1 = sub_1E65DB438();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E38894()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E388CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E38960()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E389A0()
{
  v117 = type metadata accessor for AppComposer();
  v115 = *(*(v117 - 1) + 80);
  v112 = *(*(v117 - 1) + 64);
  v114 = sub_1E65D8D48();
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

uint64_t sub_1E5E39738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E39770()
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

uint64_t sub_1E5E3A46C()
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

uint64_t sub_1E5E3B160()
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

uint64_t sub_1E5E3BE58()
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

uint64_t sub_1E5E3CB28()
{
  v1 = type metadata accessor for ContentAvailabilityService();
  Description = v1[-1].Description;
  v3 = Description[8];
  (Description[1])(v0 + ((*(Description + 80) + 16) & ~*(Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E3CBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5E3CC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
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

uint64_t sub_1E5E3CD14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E3CDA0()
{
  v1 = (type metadata accessor for TaskScheduler.ScheduledTask(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = v0 + v2;
  v10 = *(v9 + 16);

  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  (*(v5 + 8))(v0 + v6, v4);
  v13 = *(v0 + v7);

  return swift_deallocObject();
}

uint64_t sub_1E5E3CF34()
{
  v1 = (type metadata accessor for TaskScheduler.ScheduledTask(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = v0 + v2;
  v11 = *(v10 + 16);

  v12 = v1[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5E3D0C4()
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

uint64_t sub_1E5E3DDC0()
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

uint64_t sub_1E5E3EAB4()
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

uint64_t sub_1E5E3F7AC()
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

uint64_t sub_1E5E4047C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E404B4()
{
  v115 = type metadata accessor for AppComposer();
  v113 = *(*(v115 - 1) + 80);
  v111 = *(*(v115 - 1) + 64);
  v1 = *(v0 + 24);

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

  v57 = *(v114 + ((v111 + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5E411A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E411DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E41214()
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
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v122 + v56);

  v59 = *(v122 + v57 + 8);

  v60 = (v122 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
  v61 = *v60;
  swift_unknownObjectRelease();
  v62 = v60[3];

  v63 = v60[5];

  v64 = v60[7];

  v65 = v60[9];

  return swift_deallocObject();
}

uint64_t sub_1E5E41F3C()
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
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v121 + v56);

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

uint64_t sub_1E5E42C64()
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

uint64_t sub_1E5E43948()
{
  v118 = type metadata accessor for AppComposer();
  v124 = *(*(v118 - 1) + 80);
  v122 = *(*(v118 - 1) + 64);
  v1 = sub_1E65D76F8();
  v126 = *(v1 - 8);
  v127 = v1;
  v121 = *(v126 + 80);
  v125 = *(v126 + 64);
  v123 = (v124 + 17) & ~v124;
  v128 = v0;
  v129 = v0 + v123;
  v2 = *(v0 + v123);

  v3 = (v0 + v123 + v118[5]);
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
  v70 = type metadata accessor for SessionService();
  v75 = *(v70[-1].Description + 1);
  v75(&v3[v28], v70);
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
  v71 = *(QueueService[-1].Description + 1);
  v71(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v69 = *(v43[-1].Description + 1);
  v69(&v3[v42], v43);
  v44 = *(v129 + v118[6]);

  v45 = (v129 + v118[7]);
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
  v75(&v48[v5[28]], v70);
  v74(&v48[v5[29]], v30);
  v73(&v48[v5[30]], v32);
  v72(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v71(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v69(&v48[v5[36]], v43);
  v55 = *(v129 + v118[8]);
  swift_unknownObjectRelease();
  if (*(v129 + v118[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v129 + v118[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v122 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 87) & 0xFFFFFFFFFFFFFFF8;
  v61 = *(v128 + v57);

  __swift_destroy_boxed_opaque_existential_1((v128 + v58));
  v62 = *(v128 + v59);
  swift_unknownObjectRelease();
  v63 = *(v128 + v59 + 24);

  v64 = *(v128 + v59 + 40);

  v65 = *(v128 + v59 + 56);

  v66 = *(v128 + v59 + 72);

  v67 = *(v128 + v60 + 8);

  (*(v126 + 8))(v128 + ((v121 + v60 + 16) & ~v121), v127);

  return swift_deallocObject();
}

uint64_t sub_1E5E44710()
{
  v135 = type metadata accessor for AppComposer();
  v128 = *(*(v135 - 1) + 80);
  v126 = *(*(v135 - 1) + 64);
  v1 = sub_1E65D76F8();
  v132 = *(v1 - 8);
  v133 = v1;
  v125 = *(v132 + 80);
  v124 = *(v132 + 64);
  v2 = sub_1E65E3C48();
  v130 = *(v2 - 8);
  v131 = v2;
  v123 = *(v130 + 80);
  v129 = *(v130 + 64);
  v134 = v0;
  v127 = (v128 + 18) & ~v128;
  v120 = v0 + v127;
  v3 = *(v0 + v127);

  v4 = (v0 + v127 + v135[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v122 = type metadata accessor for AccountService();
  v121 = *(v122[-1].Description + 1);
  v121(&v4[v7], v122);
  v8 = v6[7];
  v119 = type metadata accessor for AppStateService();
  v118 = *(v119[-1].Description + 1);
  v118(&v4[v8], v119);
  v9 = v6[8];
  v117 = type metadata accessor for ArchivedSessionService();
  v116 = *(v117[-1].Description + 1);
  v116(&v4[v9], v117);
  v10 = v6[9];
  v115 = type metadata accessor for AssetService();
  v114 = *(v115[-1].Description + 1);
  v114(&v4[v10], v115);
  v11 = v6[10];
  v113 = type metadata accessor for AwardsService();
  v112 = *(v113[-1].Description + 1);
  v112(&v4[v11], v113);
  v12 = v6[11];
  v111 = type metadata accessor for BookmarkService();
  v110 = *(v111[-1].Description + 1);
  v110(&v4[v12], v111);
  v13 = v6[12];
  v109 = type metadata accessor for CatalogService();
  v108 = *(v109[-1].Description + 1);
  v108(&v4[v13], v109);
  v14 = v6[13];
  v107 = type metadata accessor for ConfigurationService();
  v106 = *(v107[-1].Description + 1);
  v106(&v4[v14], v107);
  v15 = v6[14];
  v105 = type metadata accessor for ContentAvailabilityService();
  v104 = *(v105[-1].Description + 1);
  v104(&v4[v15], v105);
  v16 = v6[15];
  v103 = type metadata accessor for EngagementService();
  v102 = *(v103[-1].Description + 1);
  v102(&v4[v16], v103);
  v17 = v6[16];
  v101 = type metadata accessor for HealthDataService();
  v100 = *(v101[-1].Description + 1);
  v100(&v4[v17], v101);
  v18 = v6[17];
  v99 = type metadata accessor for InteropService();
  v98 = *(v99[-1].Description + 1);
  v98(&v4[v18], v99);
  v19 = v6[18];
  v97 = type metadata accessor for LocalizationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v4[v19], v97);
  v20 = v6[19];
  v95 = type metadata accessor for MarketingService();
  v94 = *(v95[-1].Description + 1);
  v94(&v4[v20], v95);
  v21 = v6[20];
  v93 = type metadata accessor for MetricService();
  v92 = *(v93[-1].Description + 1);
  v92(&v4[v21], v93);
  v22 = v6[21];
  v91 = type metadata accessor for PersonalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v4[v22], v91);
  v23 = v6[22];
  v89 = type metadata accessor for PlayerService();
  v88 = *(v89[-1].Description + 1);
  v88(&v4[v23], v89);
  v24 = v6[23];
  v87 = type metadata accessor for PrivacyPreferenceService();
  v86 = *(v87[-1].Description + 1);
  v86(&v4[v24], v87);
  v25 = v6[24];
  v85 = type metadata accessor for RecommendationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v4[v25], v85);
  v26 = v6[25];
  v83 = type metadata accessor for RemoteBrowsingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v4[v26], v83);
  v27 = v6[26];
  v81 = type metadata accessor for SearchService();
  v80 = *(v81[-1].Description + 1);
  v80(&v4[v27], v81);
  v28 = v6[27];
  v79 = type metadata accessor for ServiceSubscriptionService();
  v78 = *(v79[-1].Description + 1);
  v78(&v4[v28], v79);
  v29 = v6[28];
  v72 = type metadata accessor for SessionService();
  v77 = *(v72[-1].Description + 1);
  v77(&v4[v29], v72);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v76 = *(v31[-1].Description + 1);
  v76(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v75 = *(v33[-1].Description + 1);
  v75(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v74 = *(v35[-1].Description + 1);
  v74(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v73 = *(QueueService[-1].Description + 1);
  v73(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v71 = *(v44[-1].Description + 1);
  v71(&v4[v43], v44);
  v45 = *(v120 + v135[6]);

  v46 = (v120 + v135[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v121(&v49[v6[6]], v122);
  v118(&v49[v6[7]], v119);
  v116(&v49[v6[8]], v117);
  v114(&v49[v6[9]], v115);
  v112(&v49[v6[10]], v113);
  v110(&v49[v6[11]], v111);
  v108(&v49[v6[12]], v109);
  v106(&v49[v6[13]], v107);
  v104(&v49[v6[14]], v105);
  v102(&v49[v6[15]], v103);
  v100(&v49[v6[16]], v101);
  v98(&v49[v6[17]], v99);
  v96(&v49[v6[18]], v97);
  v94(&v49[v6[19]], v95);
  v92(&v49[v6[20]], v93);
  v90(&v49[v6[21]], v91);
  v88(&v49[v6[22]], v89);
  v86(&v49[v6[23]], v87);
  v84(&v49[v6[24]], v85);
  v82(&v49[v6[25]], v83);
  v80(&v49[v6[26]], v81);
  v78(&v49[v6[27]], v79);
  v77(&v49[v6[28]], v72);
  v76(&v49[v6[29]], v31);
  v75(&v49[v6[30]], v33);
  v74(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v73(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v71(&v49[v6[36]], v44);
  v56 = *(v120 + v135[8]);
  swift_unknownObjectRelease();
  if (*(v120 + v135[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v120 + v135[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = (v126 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 47) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 87) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v125 + v61 + 16) & ~v125;
  v63 = *(v134 + v58);

  __swift_destroy_boxed_opaque_existential_1((v134 + v59));
  v64 = *(v134 + v60);
  swift_unknownObjectRelease();
  v65 = *(v134 + v60 + 24);

  v66 = *(v134 + v60 + 40);

  v67 = *(v134 + v60 + 56);

  v68 = *(v134 + v60 + 72);

  v69 = *(v134 + v61 + 8);

  (*(v132 + 8))(v134 + v62, v133);
  (*(v130 + 8))(v134 + ((v124 + v123 + v62) & ~v123), v131);

  return swift_deallocObject();
}

uint64_t sub_1E5E45568()
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

  v59 = *(v116 + v57);

  return swift_deallocObject();
}

uint64_t sub_1E5E46260()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v111 = (v112 + 16) & ~v112;
  v113 = v0;
  v107 = v0 + v111;
  v1 = *(v0 + v111);

  v2 = (v0 + v111 + v114[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v5], v109);
  v6 = v4[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v6], v106);
  v7 = v4[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v7], v104);
  v8 = v4[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v8], v102);
  v9 = v4[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v9], v100);
  v10 = v4[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v10], v98);
  v11 = v4[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v11], v96);
  v12 = v4[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v12], v94);
  v13 = v4[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v13], v92);
  v14 = v4[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v14], v90);
  v15 = v4[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v15], v88);
  v16 = v4[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v16], v86);
  v17 = v4[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v17], v84);
  v18 = v4[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v18], v82);
  v19 = v4[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v19], v80);
  v20 = v4[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v20], v78);
  v21 = v4[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v21], v76);
  v22 = v4[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v22], v74);
  v23 = v4[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v23], v72);
  v24 = v4[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v24], v70);
  v25 = v4[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v25], v68);
  v26 = v4[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v2[v26], v66);
  v27 = v4[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v2[v27], v59);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v63 = *(v29[-1].Description + 1);
  v63(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v62 = *(v31[-1].Description + 1);
  v62(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v61 = *(v33[-1].Description + 1);
  v61(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v58 = *(v42[-1].Description + 1);
  v58(&v2[v41], v42);
  v43 = *(v107 + v114[6]);

  v44 = (v107 + v114[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v108(&v47[v4[6]], v109);
  v105(&v47[v4[7]], v106);
  v103(&v47[v4[8]], v104);
  v101(&v47[v4[9]], v102);
  v99(&v47[v4[10]], v100);
  v97(&v47[v4[11]], v98);
  v95(&v47[v4[12]], v96);
  v93(&v47[v4[13]], v94);
  v91(&v47[v4[14]], v92);
  v89(&v47[v4[15]], v90);
  v87(&v47[v4[16]], v88);
  v85(&v47[v4[17]], v86);
  v83(&v47[v4[18]], v84);
  v81(&v47[v4[19]], v82);
  v79(&v47[v4[20]], v80);
  v77(&v47[v4[21]], v78);
  v75(&v47[v4[22]], v76);
  v73(&v47[v4[23]], v74);
  v71(&v47[v4[24]], v72);
  v69(&v47[v4[25]], v70);
  v67(&v47[v4[26]], v68);
  v65(&v47[v4[27]], v66);
  v64(&v47[v4[28]], v59);
  v63(&v47[v4[29]], v29);
  v62(&v47[v4[30]], v31);
  v61(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v60(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v58(&v47[v4[36]], v42);
  v54 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v107 + v114[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = *(v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5E46F48()
{
  v1 = sub_1E65DC6E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 73) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1E65DC4B8();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1E5FED0B8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4);
  swift_unknownObjectRelease();
  v11 = *(v0 + v4 + 24);

  v12 = *(v0 + v4 + 40);

  v13 = *(v0 + v4 + 56);

  v14 = *(v0 + v4 + 72);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5E470E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppState() + 100) + 8);
}

uint64_t sub_1E5E47138()
{
  v1 = sub_1E65D76A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5E47228()
{
  v117 = type metadata accessor for AppComposer();
  v115 = *(*(v117 - 1) + 80);
  v112 = *(*(v117 - 1) + 64);
  v114 = sub_1E65D76F8();
  v110 = *(*(v114 - 8) + 80);
  v111 = *(v114 - 8);
  v109 = *(v111 + 64);
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

  (*(v111 + 8))(v116 + ((v113 + v112 + v110) & ~v110), v114);

  return swift_deallocObject();
}

uint64_t sub_1E5E47F8C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_14;
      }

LABEL_8:
      v11 = v9[1];

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_17;
      }

LABEL_13:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      goto LABEL_16;
    }

    type metadata accessor for ItemContext();
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 > 4)
    {
      if (v24 <= 6)
      {
        if (v24 == 5)
        {
          v12 = sub_1E65E0248();
        }

        else
        {
          v12 = sub_1E65E3498();
        }

        goto LABEL_16;
      }

      switch(v24)
      {
        case 7:
          type metadata accessor for ProgramDetailItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65E3578();
            break;
          }

          goto LABEL_8;
        case 8:
          type metadata accessor for SearchItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65DCCE8();
          }

          else
          {
            v12 = sub_1E65DCF98();
          }

          break;
        case 9:
          v12 = sub_1E65E26E8();
          break;
        default:
          goto LABEL_17;
      }
    }

    else
    {
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          if (v24 == 3)
          {
            v12 = sub_1E65DC508();
            goto LABEL_16;
          }

          type metadata accessor for LibraryItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65DF3B8();
            goto LABEL_16;
          }

          goto LABEL_8;
        }

LABEL_40:
        v26 = *v9;
        v27 = v9[1];
        v28 = *(v9 + 16);
        sub_1E5E483B8();
        goto LABEL_17;
      }

      if (!v24)
      {
        goto LABEL_40;
      }

      if (v24 != 1)
      {
        goto LABEL_17;
      }

      type metadata accessor for BrowseItemContext();
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 > 3)
      {
        switch(v25)
        {
          case 4:
            v12 = sub_1E65DFDA8();
            break;
          case 5:
            v12 = sub_1E65DFC88();
            break;
          case 6:
            v12 = sub_1E65E0128();
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        if (!v25)
        {
          v12 = sub_1E65DFF38();
          goto LABEL_16;
        }

        if (v25 == 1)
        {
          goto LABEL_8;
        }

        if (v25 != 2)
        {
          goto LABEL_17;
        }

        v12 = sub_1E65DF978();
      }
    }

LABEL_16:
    (*(*(v12 - 8) + 8))(v0 + v2, v12);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_14:
    v13 = *v9;

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_15:
    v12 = sub_1E65D7968();
    goto LABEL_16;
  }

LABEL_17:
  v14 = (v2 + v3 + v6) & ~v6;
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v14, v4);
  v16 = *(v0 + v15);

  v17 = (v0 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  swift_unknownObjectRelease();
  v19 = v17[3];

  v20 = v17[5];

  v21 = v17[7];

  v22 = v17[9];

  return swift_deallocObject();
}

uint64_t sub_1E5E483C0()
{
  v1 = type metadata accessor for RouteDestination();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
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

          goto LABEL_76;
        }

LABEL_75:
        v84 = *(v5 + 8);

        goto LABEL_76;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_75;
      }

LABEL_76:
      v85 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

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
            goto LABEL_67;
          }

          v87 = v0 + v3;
          v78 = sub_1E65D74E8();
          v79 = *(v78 - 8);
          v86 = *(v79 + 8);
          v86(v70, v78);
          v76 = type metadata accessor for URLContext(0);
          v80 = *(v76 + 20);
          if (!(*(v79 + 48))(v70 + v80, 1, v78))
          {
            v86(v70 + v80, v78);
          }

          goto LABEL_66;
        }

        if (v71 != 1)
        {
          goto LABEL_67;
        }

LABEL_58:
        v87 = v0 + v3;
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

LABEL_66:
        v81 = *(v70 + *(v76 + 24) + 8);

        v5 = v87;
        goto LABEL_67;
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
          goto LABEL_67;
      }

      (*(*(v72 - 8) + 8))(v70, v72);
LABEL_67:
      v82 = *(v5 + *(v1 + 24));

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

uint64_t sub_1E5E491C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E491FC()
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

  v56 = (v119 + v118) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 103) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v121 + v56);
  v59 = *(v121 + v56 + 8);

  v60 = v58[2];
  swift_unknownObjectRelease();
  v61 = v58[5];

  v62 = v58[7];

  v63 = v58[9];

  v64 = v58[11];

  __swift_destroy_boxed_opaque_existential_1((v121 + v57));

  return swift_deallocObject();
}

uint64_t sub_1E5E49F14()
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

uint64_t sub_1E5E4ABD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E4AC44()
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

uint64_t sub_1E5E4B94C()
{
  v115 = type metadata accessor for AppComposer();
  v113 = *(*(v115 - 1) + 80);
  v111 = *(*(v115 - 1) + 64);
  v1 = *(v0 + 24);

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

  v57 = *(v114 + ((v111 + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5E4C63C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E4C674()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E4C6BC()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v122 = *(*(v1 - 8) + 80);
  v118 = *(*(v1 - 8) + 64);
  v119 = (v122 + 16) & ~v122;
  v123 = v0;
  v2 = (v0 + v119);

  v120 = v2;
  v121 = v1;
  v3 = (v2 + *(v1 + 20));
  v4 = *v3;
  v5 = v3;
  v115 = v3;

  v124 = type metadata accessor for AppComposer();
  v6 = v5 + v124[5];
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v6[v9], v117);
  v10 = v8[7];
  v114 = type metadata accessor for AppStateService();
  v113 = *(v114[-1].Description + 1);
  v113(&v6[v10], v114);
  v11 = v8[8];
  v112 = type metadata accessor for ArchivedSessionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v6[v11], v112);
  v12 = v8[9];
  v110 = type metadata accessor for AssetService();
  v109 = *(v110[-1].Description + 1);
  v109(&v6[v12], v110);
  v13 = v8[10];
  v108 = type metadata accessor for AwardsService();
  v107 = *(v108[-1].Description + 1);
  v107(&v6[v13], v108);
  v14 = v8[11];
  v106 = type metadata accessor for BookmarkService();
  v105 = *(v106[-1].Description + 1);
  v105(&v6[v14], v106);
  v15 = v8[12];
  v104 = type metadata accessor for CatalogService();
  v103 = *(v104[-1].Description + 1);
  v103(&v6[v15], v104);
  v16 = v8[13];
  v102 = type metadata accessor for ConfigurationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v6[v16], v102);
  v17 = v8[14];
  v100 = type metadata accessor for ContentAvailabilityService();
  v99 = *(v100[-1].Description + 1);
  v99(&v6[v17], v100);
  v18 = v8[15];
  v98 = type metadata accessor for EngagementService();
  v97 = *(v98[-1].Description + 1);
  v97(&v6[v18], v98);
  v19 = v8[16];
  v96 = type metadata accessor for HealthDataService();
  v95 = *(v96[-1].Description + 1);
  v95(&v6[v19], v96);
  v20 = v8[17];
  v94 = type metadata accessor for InteropService();
  v93 = *(v94[-1].Description + 1);
  v93(&v6[v20], v94);
  v21 = v8[18];
  v92 = type metadata accessor for LocalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v6[v21], v92);
  v22 = v8[19];
  v90 = type metadata accessor for MarketingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v6[v22], v90);
  v23 = v8[20];
  v88 = type metadata accessor for MetricService();
  v87 = *(v88[-1].Description + 1);
  v87(&v6[v23], v88);
  v24 = v8[21];
  v86 = type metadata accessor for PersonalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v6[v24], v86);
  v25 = v8[22];
  v84 = type metadata accessor for PlayerService();
  v83 = *(v84[-1].Description + 1);
  v83(&v6[v25], v84);
  v26 = v8[23];
  v82 = type metadata accessor for PrivacyPreferenceService();
  v81 = *(v82[-1].Description + 1);
  v81(&v6[v26], v82);
  v27 = v8[24];
  v80 = type metadata accessor for RecommendationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v6[v27], v80);
  v28 = v8[25];
  v78 = type metadata accessor for RemoteBrowsingService();
  v77 = *(v78[-1].Description + 1);
  v77(&v6[v28], v78);
  v29 = v8[26];
  v76 = type metadata accessor for SearchService();
  v75 = *(v76[-1].Description + 1);
  v75(&v6[v29], v76);
  v30 = v8[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v69[-1].Description + 1);
  v74(&v6[v30], v69);
  v31 = v8[28];
  v67 = type metadata accessor for SessionService();
  v73 = *(v67[-1].Description + 1);
  v73(&v6[v31], v67);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v72 = *(v33[-1].Description + 1);
  v72(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v71 = *(v35[-1].Description + 1);
  v71(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v70 = *(v37[-1].Description + 1);
  v70(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(&v6[v45], v46);
  v48 = *(v115 + v124[6]);

  v49 = (v115 + v124[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v116(&v52[v8[6]], v117);
  v113(&v52[v8[7]], v114);
  v111(&v52[v8[8]], v112);
  v109(&v52[v8[9]], v110);
  v107(&v52[v8[10]], v108);
  v105(&v52[v8[11]], v106);
  v103(&v52[v8[12]], v104);
  v101(&v52[v8[13]], v102);
  v99(&v52[v8[14]], v100);
  v97(&v52[v8[15]], v98);
  v95(&v52[v8[16]], v96);
  v93(&v52[v8[17]], v94);
  v91(&v52[v8[18]], v92);
  v89(&v52[v8[19]], v90);
  v87(&v52[v8[20]], v88);
  v85(&v52[v8[21]], v86);
  v83(&v52[v8[22]], v84);
  v81(&v52[v8[23]], v82);
  v79(&v52[v8[24]], v80);
  v77(&v52[v8[25]], v78);
  v75(&v52[v8[26]], v76);
  v74(&v52[v8[27]], v69);
  v73(&v52[v8[28]], v67);
  v72(&v52[v8[29]], v33);
  v71(&v52[v8[30]], v35);
  v70(&v52[v8[31]], v37);
  v54 = &v52[v8[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v68(&v52[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v8[34]]);
  v58 = *&v52[v8[35]];

  v47(&v52[v8[36]], v46);
  v59 = *(v115 + v124[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v124[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v115 + v124[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = *(v120 + v121[6]);
  swift_unknownObjectRelease();
  v62 = (v120 + v121[7]);
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = (v118 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = *(v120 + v121[8]);
  swift_unknownObjectRelease();
  v65 = *(v123 + v63);

  sub_1E5F94E00(*(v123 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v123 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_1E5E4D3FC()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v201 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination();
  v203 = *(*(v3 - 8) + 80);
  v204 = v3;
  v196 = v2 + v203;
  v200 = *(*(v3 - 8) + 64);
  v202 = v0;
  v197 = (v201 + 16) & ~v201;

  v198 = v0 + v197;
  v199 = v1;
  v4 = *(v0 + v197 + *(v1 + 20));
  v5 = v0 + v197 + *(v1 + 20);
  v193 = v5;

  v192 = type metadata accessor for AppComposer();
  v6 = (v5 + v192[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v195 = type metadata accessor for AccountService();
  v194 = *(v195[-1].Description + 1);
  v194(v6 + v9, v195);
  v10 = v8[7];
  v191 = type metadata accessor for AppStateService();
  v190 = *(v191[-1].Description + 1);
  v190(v6 + v10, v191);
  v11 = v8[8];
  v189 = type metadata accessor for ArchivedSessionService();
  v188 = *(v189[-1].Description + 1);
  v188(v6 + v11, v189);
  v12 = v8[9];
  v187 = type metadata accessor for AssetService();
  v186 = *(v187[-1].Description + 1);
  v186(v6 + v12, v187);
  v13 = v8[10];
  v185 = type metadata accessor for AwardsService();
  v184 = *(v185[-1].Description + 1);
  v184(v6 + v13, v185);
  v14 = v8[11];
  v183 = type metadata accessor for BookmarkService();
  v182 = *(v183[-1].Description + 1);
  v182(v6 + v14, v183);
  v15 = v8[12];
  v181 = type metadata accessor for CatalogService();
  v180 = *(v181[-1].Description + 1);
  v180(v6 + v15, v181);
  v16 = v8[13];
  v179 = type metadata accessor for ConfigurationService();
  v178 = *(v179[-1].Description + 1);
  v178(v6 + v16, v179);
  v17 = v8[14];
  v177 = type metadata accessor for ContentAvailabilityService();
  v176 = *(v177[-1].Description + 1);
  v176(v6 + v17, v177);
  v18 = v8[15];
  v175 = type metadata accessor for EngagementService();
  v174 = *(v175[-1].Description + 1);
  v174(v6 + v18, v175);
  v19 = v8[16];
  v173 = type metadata accessor for HealthDataService();
  v172 = *(v173[-1].Description + 1);
  v172(v6 + v19, v173);
  v20 = v8[17];
  v171 = type metadata accessor for InteropService();
  v170 = *(v171[-1].Description + 1);
  v170(v6 + v20, v171);
  v21 = v8[18];
  v169 = type metadata accessor for LocalizationService();
  v168 = *(v169[-1].Description + 1);
  v168(v6 + v21, v169);
  v22 = v8[19];
  v167 = type metadata accessor for MarketingService();
  v166 = *(v167[-1].Description + 1);
  v166(v6 + v22, v167);
  v23 = v8[20];
  v165 = type metadata accessor for MetricService();
  v164 = *(v165[-1].Description + 1);
  v164(v6 + v23, v165);
  v24 = v8[21];
  v163 = type metadata accessor for PersonalizationService();
  v162 = *(v163[-1].Description + 1);
  v162(v6 + v24, v163);
  v25 = v8[22];
  v161 = type metadata accessor for PlayerService();
  v160 = *(v161[-1].Description + 1);
  v160(v6 + v25, v161);
  v26 = v8[23];
  v159 = type metadata accessor for PrivacyPreferenceService();
  v158 = *(v159[-1].Description + 1);
  v158(v6 + v26, v159);
  v27 = v8[24];
  v157 = type metadata accessor for RecommendationService();
  v156 = *(v157[-1].Description + 1);
  v156(v6 + v27, v157);
  v28 = v8[25];
  v155 = type metadata accessor for RemoteBrowsingService();
  v154 = *(v155[-1].Description + 1);
  v154(v6 + v28, v155);
  v29 = v8[26];
  v153 = type metadata accessor for SearchService();
  v152 = *(v153[-1].Description + 1);
  v152(v6 + v29, v153);
  v30 = v8[27];
  v146 = type metadata accessor for ServiceSubscriptionService();
  v151 = *(v146[-1].Description + 1);
  v151(v6 + v30, v146);
  v31 = v8[28];
  v144 = type metadata accessor for SessionService();
  v150 = *(v144[-1].Description + 1);
  v150(v6 + v31, v144);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v149 = *(v33[-1].Description + 1);
  v149(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v148 = *(v35[-1].Description + 1);
  v148(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v147 = *(v37[-1].Description + 1);
  v147(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v145 = *(QueueService[-1].Description + 1);
  v145(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(v6 + v45, v46);
  v48 = *(v193 + v192[6]);

  v49 = (v193 + v192[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v194(v52 + v8[6], v195);
  v190(v52 + v8[7], v191);
  v188(v52 + v8[8], v189);
  v186(v52 + v8[9], v187);
  v184(v52 + v8[10], v185);
  v182(v52 + v8[11], v183);
  v180(v52 + v8[12], v181);
  v178(v52 + v8[13], v179);
  v176(v52 + v8[14], v177);
  v174(v52 + v8[15], v175);
  v172(v52 + v8[16], v173);
  v170(v52 + v8[17], v171);
  v168(v52 + v8[18], v169);
  v166(v52 + v8[19], v167);
  v164(v52 + v8[20], v165);
  v162(v52 + v8[21], v163);
  v160(v52 + v8[22], v161);
  v158(v52 + v8[23], v159);
  v156(v52 + v8[24], v157);
  v154(v52 + v8[25], v155);
  v152(v52 + v8[26], v153);
  v151(v52 + v8[27], v146);
  v150(v52 + v8[28], v144);
  v149(v52 + v8[29], v33);
  v148(v52 + v8[30], v35);
  v147(v52 + v8[31], v37);
  v54 = (v52 + v8[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v145(v52 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v8[34]));
  v58 = *(v52 + v8[35]);

  v47(v52 + v8[36], v46);
  v59 = *(v193 + v192[8]);
  swift_unknownObjectRelease();
  if (*(v193 + v192[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v193 + v192[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = (v197 + v196) & ~v203;
  v62 = *(v198 + v199[6]);
  swift_unknownObjectRelease();
  v63 = (v198 + v199[7]);
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = *(v198 + v199[8]);
  swift_unknownObjectRelease();
  v65 = v202 + v61;
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
      goto LABEL_8;
    case 1u:
      v106 = sub_1E65D76F8();
      v107 = *(v106 - 8);
      if (!(*(v107 + 48))(v202 + v61, 1, v106))
      {
        (*(v107 + 8))(v202 + v61, v106);
      }

      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v109 = *(v65 + v108[12] + 8);

      v110 = v108[16];
      v111 = sub_1E65E2CF8();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v65 + v110, 1, v111))
      {
        (*(v112 + 8))(v65 + v110, v111);
      }

      v113 = *(v65 + v108[20]);

      v83 = v108[24];
      v114 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:
      v122 = *(v65 + 8);

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v90 = sub_1E65D72D8();
      goto LABEL_50;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v117 = sub_1E65E0FD8();
            (*(*(v117 - 8) + 8))(v202 + v61, v117);
          }

          goto LABEL_80;
        }

LABEL_79:
        v142 = *(v65 + 8);

        goto LABEL_80;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_79;
      }

LABEL_80:
      v143 = *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_57:
      v130 = v204;
      v131 = v65 + *(v204 + 20);
      type metadata accessor for RouteSource(0);
      v132 = swift_getEnumCaseMultiPayload();
      if (v132 <= 1)
      {
        if (v132)
        {
          if (v132 != 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_68;
      }

      switch(v132)
      {
        case 2:
LABEL_68:
          v134 = sub_1E65D74E8();
          v135 = *(v134 - 8);
          v136 = *(v135 + 8);
          v136(v131, v134);
          v137 = type metadata accessor for URLContext(0);
          v138 = *(v137 + 20);
          if (!(*(v135 + 48))(v131 + v138, 1, v134))
          {
            v136(v131 + v138, v134);
          }

          v139 = *(v131 + *(v137 + 24) + 8);

          v130 = v204;
          goto LABEL_71;
        case 3:
          v133 = sub_1E65D74E8();
          break;
        case 4:
          v133 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v133 - 8) + 8))(v131, v133);
LABEL_71:
      v140 = *(v65 + *(v130 + 24));

      sub_1E5F94E00(*(v202 + ((v200 + v61 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v202 + ((v200 + v61 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

      return swift_deallocObject();
    case 6u:

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v88 = *(v87 + 48);
      v89 = sub_1E65DB848();
      (*(*(v89 - 8) + 8))(v65 + v88, v89);
      v70 = *(v87 + 64);
      v90 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v98 = sub_1E65DB848();
      (*(*(v98 - 8) + 8))(v202 + v61, v98);
      v99 = &unk_1ED0720D0;
      v100 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v68 = *(v67 + 48);
      v69 = sub_1E65DB848();
      (*(*(v69 - 8) + 8))(v65 + v68, v69);
      v70 = *(v67 + 64);
      goto LABEL_49;
    case 0xCu:
      v115 = *(v65 + 8);

      sub_1E5F94E00(*(v65 + 16), *(v65 + 24));
      goto LABEL_57;
    case 0xEu:
      v86 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:
      v126 = *(v65 + 8);

      v99 = &unk_1ED0720E0;
      v100 = &unk_1E65EA2A0;
LABEL_48:
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v99, v100) + 48);
LABEL_49:
      v90 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      v123 = *v65;
      v124 = *(v65 + 8);
      v125 = *(v65 + 16);
      sub_1E5F94E14();
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:
      v101 = *(v65 + 8);

      v102 = *(v65 + 24);

      goto LABEL_57;
    case 0x15u:
      v127 = *(v65 + 8);

      v128 = *(v65 + 24);

      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v114 = sub_1E65D96F8();
LABEL_52:
      v84 = v114;
      v85 = *(v114 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v114))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v202 + v61));
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v72 = v71[12];
      v73 = sub_1E65D74E8();
      (*(*(v73 - 8) + 8))(v65 + v72, v73);
      v74 = *(v65 + v71[16] + 8);

      v75 = v71[20];
      v76 = sub_1E65DB3E8();
      v77 = *(v76 - 8);
      if (!(*(v77 + 48))(v65 + v75, 1, v76))
      {
        (*(v77 + 8))(v65 + v75, v76);
      }

      v78 = *(v65 + v71[24] + 8);

      v79 = *(v65 + v71[28] + 8);

      v80 = v71[32];
      v81 = sub_1E65DB5D8();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v65 + v80, 1, v81))
      {
        (*(v82 + 8))(v65 + v80, v81);
      }

      v83 = v71[36];
      v84 = sub_1E65D7A38();
      v85 = *(v84 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v84))
      {
LABEL_53:
        (*(v85 + 8))(v65 + v83, v84);
      }

      goto LABEL_57;
    case 0x17u:
      v94 = sub_1E65E57D8();
      (*(*(v94 - 8) + 8))(v202 + v61, v94);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v96 = *(v95 + 48);
      v97 = sub_1E65E5528();
      (*(*(v97 - 8) + 8))(v65 + v96, v97);
      if (*(v65 + *(v95 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_57;
    case 0x18u:

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v90 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v105 = swift_getEnumCaseMultiPayload();
      if (v105 == 1)
      {

        goto LABEL_57;
      }

      if (v105)
      {
        goto LABEL_57;
      }

LABEL_29:
      v86 = sub_1E65D74E8();
      goto LABEL_56;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = sub_1E65DAEB8();
LABEL_56:
        (*(*(v86 - 8) + 8))(v202 + v61, v86);
      }

      else
      {
LABEL_8:
        v66 = *(v65 + 8);
      }

      goto LABEL_57;
    case 0x1Cu:
      v86 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v129 = sub_1E65E55E8();
      (*(*(v129 - 8) + 8))(v202 + v61, v129);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v90 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v90 - 8) + 8))(v65 + v70, v90);
      goto LABEL_57;
    case 0x1Eu:
      v91 = sub_1E65E56B8();
      (*(*(v91 - 8) + 8))(v202 + v61, v91);
      v92 = &unk_1ED072110;
      v93 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v103 = sub_1E65DA308();
      (*(*(v103 - 8) + 8))(v202 + v61, v103);
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_44;
    case 0x20u:
      v118 = sub_1E65E58D8();
      (*(*(v118 - 8) + 8))(v202 + v61, v118);
      v92 = &qword_1ED072120;
      v93 = &qword_1E65EA2E0;
LABEL_43:
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(v92, v93);
      v120 = *(v65 + *(v119 + 48));

      v104 = *(v119 + 64);
LABEL_44:
      v121 = *(v65 + v104);

      goto LABEL_57;
    case 0x21u:
      v86 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E4ED74()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v200 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination();
  v202 = *(*(v3 - 8) + 80);
  v203 = v3;
  v195 = v2 + v202;
  v199 = *(*(v3 - 8) + 64);
  v201 = v0;
  v196 = (v200 + 16) & ~v200;

  v197 = v0 + v196;
  v198 = v1;
  v4 = *(v0 + v196 + *(v1 + 20));
  v5 = v0 + v196 + *(v1 + 20);
  v146 = v5;

  v204 = type metadata accessor for AppComposer();
  v6 = (v5 + v204[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v194 = type metadata accessor for AccountService();
  v193 = *(v194[-1].Description + 1);
  v193(v6 + v9, v194);
  v10 = v8[7];
  v192 = type metadata accessor for AppStateService();
  v191 = *(v192[-1].Description + 1);
  v191(v6 + v10, v192);
  v11 = v8[8];
  v190 = type metadata accessor for ArchivedSessionService();
  v189 = *(v190[-1].Description + 1);
  v189(v6 + v11, v190);
  v12 = v8[9];
  v188 = type metadata accessor for AssetService();
  v187 = *(v188[-1].Description + 1);
  v187(v6 + v12, v188);
  v13 = v8[10];
  v186 = type metadata accessor for AwardsService();
  v185 = *(v186[-1].Description + 1);
  v185(v6 + v13, v186);
  v14 = v8[11];
  v184 = type metadata accessor for BookmarkService();
  v183 = *(v184[-1].Description + 1);
  v183(v6 + v14, v184);
  v15 = v8[12];
  v182 = type metadata accessor for CatalogService();
  v181 = *(v182[-1].Description + 1);
  v181(v6 + v15, v182);
  v16 = v8[13];
  v180 = type metadata accessor for ConfigurationService();
  v179 = *(v180[-1].Description + 1);
  v179(v6 + v16, v180);
  v17 = v8[14];
  v178 = type metadata accessor for ContentAvailabilityService();
  v177 = *(v178[-1].Description + 1);
  v177(v6 + v17, v178);
  v18 = v8[15];
  v176 = type metadata accessor for EngagementService();
  v175 = *(v176[-1].Description + 1);
  v175(v6 + v18, v176);
  v19 = v8[16];
  v174 = type metadata accessor for HealthDataService();
  v173 = *(v174[-1].Description + 1);
  v173(v6 + v19, v174);
  v20 = v8[17];
  v172 = type metadata accessor for InteropService();
  v171 = *(v172[-1].Description + 1);
  v171(v6 + v20, v172);
  v21 = v8[18];
  v170 = type metadata accessor for LocalizationService();
  v169 = *(v170[-1].Description + 1);
  v169(v6 + v21, v170);
  v22 = v8[19];
  v168 = type metadata accessor for MarketingService();
  v167 = *(v168[-1].Description + 1);
  v167(v6 + v22, v168);
  v23 = v8[20];
  v166 = type metadata accessor for MetricService();
  v165 = *(v166[-1].Description + 1);
  v165(v6 + v23, v166);
  v24 = v8[21];
  v164 = type metadata accessor for PersonalizationService();
  v163 = *(v164[-1].Description + 1);
  v163(v6 + v24, v164);
  v25 = v8[22];
  v162 = type metadata accessor for PlayerService();
  v161 = *(v162[-1].Description + 1);
  v161(v6 + v25, v162);
  v26 = v8[23];
  v160 = type metadata accessor for PrivacyPreferenceService();
  v159 = *(v160[-1].Description + 1);
  v159(v6 + v26, v160);
  v27 = v8[24];
  v158 = type metadata accessor for RecommendationService();
  v157 = *(v158[-1].Description + 1);
  v157(v6 + v27, v158);
  v28 = v8[25];
  v156 = type metadata accessor for RemoteBrowsingService();
  v155 = *(v156[-1].Description + 1);
  v155(v6 + v28, v156);
  v29 = v8[26];
  v154 = type metadata accessor for SearchService();
  v153 = *(v154[-1].Description + 1);
  v153(v6 + v29, v154);
  v30 = v8[27];
  v152 = type metadata accessor for ServiceSubscriptionService();
  v151 = *(v152[-1].Description + 1);
  v151(v6 + v30, v152);
  v31 = v8[28];
  v144 = type metadata accessor for SessionService();
  v150 = *(v144[-1].Description + 1);
  v150(v6 + v31, v144);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v149 = *(v33[-1].Description + 1);
  v149(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v148 = *(v35[-1].Description + 1);
  v148(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v147 = *(v37[-1].Description + 1);
  v147(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v145 = *(QueueService[-1].Description + 1);
  v145(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v143 = *(v46[-1].Description + 1);
  v143(v6 + v45, v46);
  v47 = *(v146 + v204[6]);

  v48 = (v146 + v204[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v193(v51 + v8[6], v194);
  v191(v51 + v8[7], v192);
  v189(v51 + v8[8], v190);
  v187(v51 + v8[9], v188);
  v185(v51 + v8[10], v186);
  v183(v51 + v8[11], v184);
  v181(v51 + v8[12], v182);
  v179(v51 + v8[13], v180);
  v177(v51 + v8[14], v178);
  v175(v51 + v8[15], v176);
  v173(v51 + v8[16], v174);
  v171(v51 + v8[17], v172);
  v169(v51 + v8[18], v170);
  v167(v51 + v8[19], v168);
  v165(v51 + v8[20], v166);
  v163(v51 + v8[21], v164);
  v161(v51 + v8[22], v162);
  v159(v51 + v8[23], v160);
  v157(v51 + v8[24], v158);
  v155(v51 + v8[25], v156);
  v153(v51 + v8[26], v154);
  v151(v51 + v8[27], v152);
  v150(v51 + v8[28], v144);
  v149(v51 + v8[29], v33);
  v148(v51 + v8[30], v35);
  v147(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v145(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v143(v51 + v8[36], v46);
  v58 = *(v146 + v204[8]);
  swift_unknownObjectRelease();
  if (*(v146 + v204[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v146 + v204[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v60 = (v196 + v195) & ~v202;
  v61 = *(v197 + v198[6]);
  swift_unknownObjectRelease();
  v62 = (v197 + v198[7]);
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = *(v197 + v198[8]);
  swift_unknownObjectRelease();
  v64 = v0 + v60;
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
      goto LABEL_8;
    case 1u:
      v105 = sub_1E65D76F8();
      v106 = *(v105 - 8);
      if (!(*(v106 + 48))(v201 + v60, 1, v105))
      {
        (*(v106 + 8))(v201 + v60, v105);
      }

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v108 = *(v64 + v107[12] + 8);

      v109 = v107[16];
      v110 = sub_1E65E2CF8();
      v111 = *(v110 - 8);
      if (!(*(v111 + 48))(v64 + v109, 1, v110))
      {
        (*(v111 + 8))(v64 + v109, v110);
      }

      v112 = *(v64 + v107[20]);

      v82 = v107[24];
      v113 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:
      v121 = *(v64 + 8);

      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v89 = sub_1E65D72D8();
      goto LABEL_50;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v116 = sub_1E65E0FD8();
            (*(*(v116 - 8) + 8))(v0 + v60, v116);
          }

          goto LABEL_80;
        }

LABEL_79:
        v141 = *(v64 + 8);

        goto LABEL_80;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_79;
      }

LABEL_80:
      v142 = *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_57:
      v129 = v203;
      v130 = v64 + *(v203 + 20);
      type metadata accessor for RouteSource(0);
      v131 = swift_getEnumCaseMultiPayload();
      if (v131 <= 1)
      {
        if (v131)
        {
          if (v131 != 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_68;
      }

      switch(v131)
      {
        case 2:
LABEL_68:
          v133 = sub_1E65D74E8();
          v134 = *(v133 - 8);
          v135 = *(v134 + 8);
          v135(v130, v133);
          v136 = type metadata accessor for URLContext(0);
          v137 = *(v136 + 20);
          if (!(*(v134 + 48))(v130 + v137, 1, v133))
          {
            v135(v130 + v137, v133);
          }

          v138 = *(v130 + *(v136 + 24) + 8);

          v129 = v203;
          goto LABEL_71;
        case 3:
          v132 = sub_1E65D74E8();
          break;
        case 4:
          v132 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v132 - 8) + 8))(v130, v132);
LABEL_71:
      v139 = *(v64 + *(v129 + 24));

      return swift_deallocObject();
    case 6u:

      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v87 = *(v86 + 48);
      v88 = sub_1E65DB848();
      (*(*(v88 - 8) + 8))(v64 + v87, v88);
      v69 = *(v86 + 64);
      v89 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v97 = sub_1E65DB848();
      (*(*(v97 - 8) + 8))(v0 + v60, v97);
      v98 = &unk_1ED0720D0;
      v99 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v67 = *(v66 + 48);
      v68 = sub_1E65DB848();
      (*(*(v68 - 8) + 8))(v64 + v67, v68);
      v69 = *(v66 + 64);
      goto LABEL_49;
    case 0xCu:
      v114 = *(v64 + 8);

      sub_1E5F94E00(*(v64 + 16), *(v64 + 24));
      goto LABEL_57;
    case 0xEu:
      v85 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:
      v125 = *(v64 + 8);

      v98 = &unk_1ED0720E0;
      v99 = &unk_1E65EA2A0;
LABEL_48:
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v98, v99) + 48);
LABEL_49:
      v89 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      v122 = *v64;
      v123 = *(v64 + 8);
      v124 = *(v64 + 16);
      sub_1E5F94E14();
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:
      v100 = *(v64 + 8);

      v101 = *(v64 + 24);

      goto LABEL_57;
    case 0x15u:
      v126 = *(v64 + 8);

      v127 = *(v64 + 24);

      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v113 = sub_1E65D96F8();
LABEL_52:
      v83 = v113;
      v84 = *(v113 - 8);
      if (!(*(v84 + 48))(v64 + v82, 1, v113))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v60));
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v71 = v70[12];
      v72 = sub_1E65D74E8();
      (*(*(v72 - 8) + 8))(v64 + v71, v72);
      v73 = *(v64 + v70[16] + 8);

      v74 = v70[20];
      v75 = sub_1E65DB3E8();
      v76 = *(v75 - 8);
      if (!(*(v76 + 48))(v64 + v74, 1, v75))
      {
        (*(v76 + 8))(v64 + v74, v75);
      }

      v77 = *(v64 + v70[24] + 8);

      v78 = *(v64 + v70[28] + 8);

      v79 = v70[32];
      v80 = sub_1E65DB5D8();
      v81 = *(v80 - 8);
      if (!(*(v81 + 48))(v64 + v79, 1, v80))
      {
        (*(v81 + 8))(v64 + v79, v80);
      }

      v82 = v70[36];
      v83 = sub_1E65D7A38();
      v84 = *(v83 - 8);
      if (!(*(v84 + 48))(v64 + v82, 1, v83))
      {
LABEL_53:
        (*(v84 + 8))(v64 + v82, v83);
      }

      goto LABEL_57;
    case 0x17u:
      v93 = sub_1E65E57D8();
      (*(*(v93 - 8) + 8))(v0 + v60, v93);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v95 = *(v94 + 48);
      v96 = sub_1E65E5528();
      (*(*(v96 - 8) + 8))(v64 + v95, v96);
      if (*(v64 + *(v94 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_57;
    case 0x18u:

      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v89 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v104 = swift_getEnumCaseMultiPayload();
      if (v104 == 1)
      {

        goto LABEL_57;
      }

      if (v104)
      {
        goto LABEL_57;
      }

LABEL_29:
      v85 = sub_1E65D74E8();
      goto LABEL_56;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = sub_1E65DAEB8();
LABEL_56:
        (*(*(v85 - 8) + 8))(v0 + v60, v85);
      }

      else
      {
LABEL_8:
        v65 = *(v64 + 8);
      }

      goto LABEL_57;
    case 0x1Cu:
      v85 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v128 = sub_1E65E55E8();
      (*(*(v128 - 8) + 8))(v0 + v60, v128);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v89 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v89 - 8) + 8))(v64 + v69, v89);
      goto LABEL_57;
    case 0x1Eu:
      v90 = sub_1E65E56B8();
      (*(*(v90 - 8) + 8))(v0 + v60, v90);
      v91 = &unk_1ED072110;
      v92 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v102 = sub_1E65DA308();
      (*(*(v102 - 8) + 8))(v0 + v60, v102);
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_44;
    case 0x20u:
      v117 = sub_1E65E58D8();
      (*(*(v117 - 8) + 8))(v0 + v60, v117);
      v91 = &qword_1ED072120;
      v92 = &qword_1E65EA2E0;
LABEL_43:
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(v91, v92);
      v119 = *(v64 + *(v118 + 48));

      v103 = *(v118 + 64);
LABEL_44:
      v120 = *(v64 + v103);

      goto LABEL_57;
    case 0x21u:
      v85 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E506D0()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v201 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination();
  v203 = *(*(v3 - 8) + 80);
  v204 = v3;
  v196 = v2 + v203;
  v200 = *(*(v3 - 8) + 64);
  v202 = v0;
  v197 = (v201 + 16) & ~v201;

  v198 = v0 + v197;
  v199 = v1;
  v4 = *(v0 + v197 + *(v1 + 20));
  v5 = v0 + v197 + *(v1 + 20);
  v193 = v5;

  v192 = type metadata accessor for AppComposer();
  v6 = (v5 + v192[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v195 = type metadata accessor for AccountService();
  v194 = *(v195[-1].Description + 1);
  v194(v6 + v9, v195);
  v10 = v8[7];
  v191 = type metadata accessor for AppStateService();
  v190 = *(v191[-1].Description + 1);
  v190(v6 + v10, v191);
  v11 = v8[8];
  v189 = type metadata accessor for ArchivedSessionService();
  v188 = *(v189[-1].Description + 1);
  v188(v6 + v11, v189);
  v12 = v8[9];
  v187 = type metadata accessor for AssetService();
  v186 = *(v187[-1].Description + 1);
  v186(v6 + v12, v187);
  v13 = v8[10];
  v185 = type metadata accessor for AwardsService();
  v184 = *(v185[-1].Description + 1);
  v184(v6 + v13, v185);
  v14 = v8[11];
  v183 = type metadata accessor for BookmarkService();
  v182 = *(v183[-1].Description + 1);
  v182(v6 + v14, v183);
  v15 = v8[12];
  v181 = type metadata accessor for CatalogService();
  v180 = *(v181[-1].Description + 1);
  v180(v6 + v15, v181);
  v16 = v8[13];
  v179 = type metadata accessor for ConfigurationService();
  v178 = *(v179[-1].Description + 1);
  v178(v6 + v16, v179);
  v17 = v8[14];
  v177 = type metadata accessor for ContentAvailabilityService();
  v176 = *(v177[-1].Description + 1);
  v176(v6 + v17, v177);
  v18 = v8[15];
  v175 = type metadata accessor for EngagementService();
  v174 = *(v175[-1].Description + 1);
  v174(v6 + v18, v175);
  v19 = v8[16];
  v173 = type metadata accessor for HealthDataService();
  v172 = *(v173[-1].Description + 1);
  v172(v6 + v19, v173);
  v20 = v8[17];
  v171 = type metadata accessor for InteropService();
  v170 = *(v171[-1].Description + 1);
  v170(v6 + v20, v171);
  v21 = v8[18];
  v169 = type metadata accessor for LocalizationService();
  v168 = *(v169[-1].Description + 1);
  v168(v6 + v21, v169);
  v22 = v8[19];
  v167 = type metadata accessor for MarketingService();
  v166 = *(v167[-1].Description + 1);
  v166(v6 + v22, v167);
  v23 = v8[20];
  v165 = type metadata accessor for MetricService();
  v164 = *(v165[-1].Description + 1);
  v164(v6 + v23, v165);
  v24 = v8[21];
  v163 = type metadata accessor for PersonalizationService();
  v162 = *(v163[-1].Description + 1);
  v162(v6 + v24, v163);
  v25 = v8[22];
  v161 = type metadata accessor for PlayerService();
  v160 = *(v161[-1].Description + 1);
  v160(v6 + v25, v161);
  v26 = v8[23];
  v159 = type metadata accessor for PrivacyPreferenceService();
  v158 = *(v159[-1].Description + 1);
  v158(v6 + v26, v159);
  v27 = v8[24];
  v157 = type metadata accessor for RecommendationService();
  v156 = *(v157[-1].Description + 1);
  v156(v6 + v27, v157);
  v28 = v8[25];
  v155 = type metadata accessor for RemoteBrowsingService();
  v154 = *(v155[-1].Description + 1);
  v154(v6 + v28, v155);
  v29 = v8[26];
  v153 = type metadata accessor for SearchService();
  v152 = *(v153[-1].Description + 1);
  v152(v6 + v29, v153);
  v30 = v8[27];
  v146 = type metadata accessor for ServiceSubscriptionService();
  v151 = *(v146[-1].Description + 1);
  v151(v6 + v30, v146);
  v31 = v8[28];
  v144 = type metadata accessor for SessionService();
  v150 = *(v144[-1].Description + 1);
  v150(v6 + v31, v144);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v149 = *(v33[-1].Description + 1);
  v149(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v148 = *(v35[-1].Description + 1);
  v148(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v147 = *(v37[-1].Description + 1);
  v147(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v145 = *(QueueService[-1].Description + 1);
  v145(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(v6 + v45, v46);
  v48 = *(v193 + v192[6]);

  v49 = (v193 + v192[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v194(v52 + v8[6], v195);
  v190(v52 + v8[7], v191);
  v188(v52 + v8[8], v189);
  v186(v52 + v8[9], v187);
  v184(v52 + v8[10], v185);
  v182(v52 + v8[11], v183);
  v180(v52 + v8[12], v181);
  v178(v52 + v8[13], v179);
  v176(v52 + v8[14], v177);
  v174(v52 + v8[15], v175);
  v172(v52 + v8[16], v173);
  v170(v52 + v8[17], v171);
  v168(v52 + v8[18], v169);
  v166(v52 + v8[19], v167);
  v164(v52 + v8[20], v165);
  v162(v52 + v8[21], v163);
  v160(v52 + v8[22], v161);
  v158(v52 + v8[23], v159);
  v156(v52 + v8[24], v157);
  v154(v52 + v8[25], v155);
  v152(v52 + v8[26], v153);
  v151(v52 + v8[27], v146);
  v150(v52 + v8[28], v144);
  v149(v52 + v8[29], v33);
  v148(v52 + v8[30], v35);
  v147(v52 + v8[31], v37);
  v54 = (v52 + v8[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v145(v52 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v8[34]));
  v58 = *(v52 + v8[35]);

  v47(v52 + v8[36], v46);
  v59 = *(v193 + v192[8]);
  swift_unknownObjectRelease();
  if (*(v193 + v192[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v193 + v192[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = (v197 + v196) & ~v203;
  v62 = *(v198 + v199[6]);
  swift_unknownObjectRelease();
  v63 = (v198 + v199[7]);
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = *(v198 + v199[8]);
  swift_unknownObjectRelease();
  v65 = v202 + v61;
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
      goto LABEL_8;
    case 1u:
      v106 = sub_1E65D76F8();
      v107 = *(v106 - 8);
      if (!(*(v107 + 48))(v202 + v61, 1, v106))
      {
        (*(v107 + 8))(v202 + v61, v106);
      }

      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v109 = *(v65 + v108[12] + 8);

      v110 = v108[16];
      v111 = sub_1E65E2CF8();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v65 + v110, 1, v111))
      {
        (*(v112 + 8))(v65 + v110, v111);
      }

      v113 = *(v65 + v108[20]);

      v83 = v108[24];
      v114 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:
      v122 = *(v65 + 8);

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v90 = sub_1E65D72D8();
      goto LABEL_50;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v117 = sub_1E65E0FD8();
            (*(*(v117 - 8) + 8))(v202 + v61, v117);
          }

          goto LABEL_80;
        }

LABEL_79:
        v142 = *(v65 + 8);

        goto LABEL_80;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_79;
      }

LABEL_80:
      v143 = *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_57:
      v130 = v204;
      v131 = v65 + *(v204 + 20);
      type metadata accessor for RouteSource(0);
      v132 = swift_getEnumCaseMultiPayload();
      if (v132 <= 1)
      {
        if (v132)
        {
          if (v132 != 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_68;
      }

      switch(v132)
      {
        case 2:
LABEL_68:
          v134 = sub_1E65D74E8();
          v135 = *(v134 - 8);
          v136 = *(v135 + 8);
          v136(v131, v134);
          v137 = type metadata accessor for URLContext(0);
          v138 = *(v137 + 20);
          if (!(*(v135 + 48))(v131 + v138, 1, v134))
          {
            v136(v131 + v138, v134);
          }

          v139 = *(v131 + *(v137 + 24) + 8);

          v130 = v204;
          goto LABEL_71;
        case 3:
          v133 = sub_1E65D74E8();
          break;
        case 4:
          v133 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v133 - 8) + 8))(v131, v133);
LABEL_71:
      v140 = *(v65 + *(v130 + 24));

      sub_1E5F94E00(*(v202 + ((v61 + v200) & 0xFFFFFFFFFFFFFFF8) + 8), *(v202 + ((v61 + v200) & 0xFFFFFFFFFFFFFFF8) + 16));

      return swift_deallocObject();
    case 6u:

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v88 = *(v87 + 48);
      v89 = sub_1E65DB848();
      (*(*(v89 - 8) + 8))(v65 + v88, v89);
      v70 = *(v87 + 64);
      v90 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v98 = sub_1E65DB848();
      (*(*(v98 - 8) + 8))(v202 + v61, v98);
      v99 = &unk_1ED0720D0;
      v100 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v68 = *(v67 + 48);
      v69 = sub_1E65DB848();
      (*(*(v69 - 8) + 8))(v65 + v68, v69);
      v70 = *(v67 + 64);
      goto LABEL_49;
    case 0xCu:
      v115 = *(v65 + 8);

      sub_1E5F94E00(*(v65 + 16), *(v65 + 24));
      goto LABEL_57;
    case 0xEu:
      v86 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:
      v126 = *(v65 + 8);

      v99 = &unk_1ED0720E0;
      v100 = &unk_1E65EA2A0;
LABEL_48:
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v99, v100) + 48);
LABEL_49:
      v90 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      v123 = *v65;
      v124 = *(v65 + 8);
      v125 = *(v65 + 16);
      sub_1E5F94E14();
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:
      v101 = *(v65 + 8);

      v102 = *(v65 + 24);

      goto LABEL_57;
    case 0x15u:
      v127 = *(v65 + 8);

      v128 = *(v65 + 24);

      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v114 = sub_1E65D96F8();
LABEL_52:
      v84 = v114;
      v85 = *(v114 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v114))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v202 + v61));
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v72 = v71[12];
      v73 = sub_1E65D74E8();
      (*(*(v73 - 8) + 8))(v65 + v72, v73);
      v74 = *(v65 + v71[16] + 8);

      v75 = v71[20];
      v76 = sub_1E65DB3E8();
      v77 = *(v76 - 8);
      if (!(*(v77 + 48))(v65 + v75, 1, v76))
      {
        (*(v77 + 8))(v65 + v75, v76);
      }

      v78 = *(v65 + v71[24] + 8);

      v79 = *(v65 + v71[28] + 8);

      v80 = v71[32];
      v81 = sub_1E65DB5D8();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v65 + v80, 1, v81))
      {
        (*(v82 + 8))(v65 + v80, v81);
      }

      v83 = v71[36];
      v84 = sub_1E65D7A38();
      v85 = *(v84 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v84))
      {
LABEL_53:
        (*(v85 + 8))(v65 + v83, v84);
      }

      goto LABEL_57;
    case 0x17u:
      v94 = sub_1E65E57D8();
      (*(*(v94 - 8) + 8))(v202 + v61, v94);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v96 = *(v95 + 48);
      v97 = sub_1E65E5528();
      (*(*(v97 - 8) + 8))(v65 + v96, v97);
      if (*(v65 + *(v95 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_57;
    case 0x18u:

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v90 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v105 = swift_getEnumCaseMultiPayload();
      if (v105 == 1)
      {

        goto LABEL_57;
      }

      if (v105)
      {
        goto LABEL_57;
      }

LABEL_29:
      v86 = sub_1E65D74E8();
      goto LABEL_56;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = sub_1E65DAEB8();
LABEL_56:
        (*(*(v86 - 8) + 8))(v202 + v61, v86);
      }

      else
      {
LABEL_8:
        v66 = *(v65 + 8);
      }

      goto LABEL_57;
    case 0x1Cu:
      v86 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v129 = sub_1E65E55E8();
      (*(*(v129 - 8) + 8))(v202 + v61, v129);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v90 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v90 - 8) + 8))(v65 + v70, v90);
      goto LABEL_57;
    case 0x1Eu:
      v91 = sub_1E65E56B8();
      (*(*(v91 - 8) + 8))(v202 + v61, v91);
      v92 = &unk_1ED072110;
      v93 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v103 = sub_1E65DA308();
      (*(*(v103 - 8) + 8))(v202 + v61, v103);
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_44;
    case 0x20u:
      v118 = sub_1E65E58D8();
      (*(*(v118 - 8) + 8))(v202 + v61, v118);
      v92 = &qword_1ED072120;
      v93 = &qword_1E65EA2E0;
LABEL_43:
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(v92, v93);
      v120 = *(v65 + *(v119 + 48));

      v104 = *(v119 + 64);
LABEL_44:
      v121 = *(v65 + v104);

      goto LABEL_57;
    case 0x21u:
      v86 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E52044()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v121 = *(*(v1 - 8) + 80);
  v118 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v122 = v0;
  v119 = (v121 + 24) & ~v121;
  v3 = (v0 + v119);

  v120 = v1;
  v117 = v3;
  v4 = (v3 + *(v1 + 20));
  v5 = *v4;
  v6 = v4;
  v114 = v4;

  v123 = type metadata accessor for AppComposer();
  v7 = v6 + v123[5];
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v116 = type metadata accessor for AccountService();
  v115 = *(v116[-1].Description + 1);
  v115(&v7[v10], v116);
  v11 = v9[7];
  v113 = type metadata accessor for AppStateService();
  v112 = *(v113[-1].Description + 1);
  v112(&v7[v11], v113);
  v12 = v9[8];
  v111 = type metadata accessor for ArchivedSessionService();
  v110 = *(v111[-1].Description + 1);
  v110(&v7[v12], v111);
  v13 = v9[9];
  v109 = type metadata accessor for AssetService();
  v108 = *(v109[-1].Description + 1);
  v108(&v7[v13], v109);
  v14 = v9[10];
  v107 = type metadata accessor for AwardsService();
  v106 = *(v107[-1].Description + 1);
  v106(&v7[v14], v107);
  v15 = v9[11];
  v105 = type metadata accessor for BookmarkService();
  v104 = *(v105[-1].Description + 1);
  v104(&v7[v15], v105);
  v16 = v9[12];
  v103 = type metadata accessor for CatalogService();
  v102 = *(v103[-1].Description + 1);
  v102(&v7[v16], v103);
  v17 = v9[13];
  v101 = type metadata accessor for ConfigurationService();
  v100 = *(v101[-1].Description + 1);
  v100(&v7[v17], v101);
  v18 = v9[14];
  v99 = type metadata accessor for ContentAvailabilityService();
  v98 = *(v99[-1].Description + 1);
  v98(&v7[v18], v99);
  v19 = v9[15];
  v97 = type metadata accessor for EngagementService();
  v96 = *(v97[-1].Description + 1);
  v96(&v7[v19], v97);
  v20 = v9[16];
  v95 = type metadata accessor for HealthDataService();
  v94 = *(v95[-1].Description + 1);
  v94(&v7[v20], v95);
  v21 = v9[17];
  v93 = type metadata accessor for InteropService();
  v92 = *(v93[-1].Description + 1);
  v92(&v7[v21], v93);
  v22 = v9[18];
  v91 = type metadata accessor for LocalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v7[v22], v91);
  v23 = v9[19];
  v89 = type metadata accessor for MarketingService();
  v88 = *(v89[-1].Description + 1);
  v88(&v7[v23], v89);
  v24 = v9[20];
  v87 = type metadata accessor for MetricService();
  v86 = *(v87[-1].Description + 1);
  v86(&v7[v24], v87);
  v25 = v9[21];
  v85 = type metadata accessor for PersonalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v7[v25], v85);
  v26 = v9[22];
  v83 = type metadata accessor for PlayerService();
  v82 = *(v83[-1].Description + 1);
  v82(&v7[v26], v83);
  v27 = v9[23];
  v81 = type metadata accessor for PrivacyPreferenceService();
  v80 = *(v81[-1].Description + 1);
  v80(&v7[v27], v81);
  v28 = v9[24];
  v79 = type metadata accessor for RecommendationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v7[v28], v79);
  v29 = v9[25];
  v77 = type metadata accessor for RemoteBrowsingService();
  v76 = *(v77[-1].Description + 1);
  v76(&v7[v29], v77);
  v30 = v9[26];
  v75 = type metadata accessor for SearchService();
  v74 = *(v75[-1].Description + 1);
  v74(&v7[v30], v75);
  v31 = v9[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v7[v31], v68);
  v32 = v9[28];
  v66 = type metadata accessor for SessionService();
  v72 = *(v66[-1].Description + 1);
  v72(&v7[v32], v66);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v71 = *(v34[-1].Description + 1);
  v71(&v7[v33], v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v70 = *(v36[-1].Description + 1);
  v70(&v7[v35], v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v69 = *(v38[-1].Description + 1);
  v69(&v7[v37], v38);
  v39 = &v7[v9[32]];
  v40 = *(v39 + 1);

  v41 = *(v39 + 3);

  v42 = *(v39 + 5);

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v67 = *(QueueService[-1].Description + 1);
  v67(&v7[v43], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v7[v9[34]]);
  v45 = *&v7[v9[35]];

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v48 = *(v47[-1].Description + 1);
  v48(&v7[v46], v47);
  v49 = *(v114 + v123[6]);

  v50 = (v114 + v123[7]);
  v51 = *v50;

  v52 = v50[1];

  v53 = v50 + *(type metadata accessor for AppDataItemResolver() + 24);
  v54 = *v53;
  swift_unknownObjectRelease();
  v115(&v53[v9[6]], v116);
  v112(&v53[v9[7]], v113);
  v110(&v53[v9[8]], v111);
  v108(&v53[v9[9]], v109);
  v106(&v53[v9[10]], v107);
  v104(&v53[v9[11]], v105);
  v102(&v53[v9[12]], v103);
  v100(&v53[v9[13]], v101);
  v98(&v53[v9[14]], v99);
  v96(&v53[v9[15]], v97);
  v94(&v53[v9[16]], v95);
  v92(&v53[v9[17]], v93);
  v90(&v53[v9[18]], v91);
  v88(&v53[v9[19]], v89);
  v86(&v53[v9[20]], v87);
  v84(&v53[v9[21]], v85);
  v82(&v53[v9[22]], v83);
  v80(&v53[v9[23]], v81);
  v78(&v53[v9[24]], v79);
  v76(&v53[v9[25]], v77);
  v74(&v53[v9[26]], v75);
  v73(&v53[v9[27]], v68);
  v72(&v53[v9[28]], v66);
  v71(&v53[v9[29]], v34);
  v70(&v53[v9[30]], v36);
  v69(&v53[v9[31]], v38);
  v55 = &v53[v9[32]];
  v56 = *(v55 + 1);

  v57 = *(v55 + 3);

  v58 = *(v55 + 5);

  v67(&v53[v9[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v53[v9[34]]);
  v59 = *&v53[v9[35]];

  v48(&v53[v9[36]], v47);
  v60 = *(v114 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v114 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v61 = (v114 + v123[10]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = *(v117 + v120[6]);
  swift_unknownObjectRelease();
  v63 = (v117 + v120[7]);
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = *(v117 + v120[8]);
  swift_unknownObjectRelease();
  sub_1E5F94E00(*(v122 + ((v119 + v118) & 0xFFFFFFFFFFFFFFF8) + 8), *(v122 + ((v119 + v118) & 0xFFFFFFFFFFFFFFF8) + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E52D88()
{
  v1 = *(type metadata accessor for RouteSource(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for AppLaunchScope(0);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        v13 = sub_1E65D74E8();
        v14 = *(v13 - 8);
        v21 = *(v14 + 8);
        v21(v0 + v2, v13);
        v15 = type metadata accessor for URLContext(0);
        v16 = *(v15 + 20);
        if (!(*(v14 + 48))(v4 + v16, 1, v13))
        {
          v21(v4 + v16, v13);
        }

        v17 = *(v4 + *(v15 + 24) + 8);
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_17;
    }

LABEL_8:
    v20 = v3;
    v7 = sub_1E65D74E8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 8);
    v9(v0 + v2, v7);
    v10 = type metadata accessor for URLContext(0);
    v11 = *(v10 + 20);
    if (!(*(v8 + 48))(v4 + v11, 1, v7))
    {
      v9(v4 + v11, v7);
    }

    v12 = *(v4 + *(v10 + 24) + 8);

    v3 = v20;
    goto LABEL_17;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      goto LABEL_8;
    case 3:
      v6 = sub_1E65D74E8();
      break;
    case 4:
      v6 = sub_1E65D8D48();
      break;
    default:
      goto LABEL_17;
  }

  (*(*(v6 - 8) + 8))(v0 + v2, v6);
LABEL_17:
  v18 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5E53084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E530BC()
{
  v1 = *(type metadata accessor for RouteSource(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  if (*(v0 + 24) >= 6uLL)
  {
  }

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for AppLaunchScope(0);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        goto LABEL_19;
      }

      v12 = sub_1E65D74E8();
      v13 = *(v12 - 8);
      v17 = *(v13 + 8);
      v17(v0 + v2, v12);
      v10 = type metadata accessor for URLContext(0);
      v14 = *(v10 + 20);
      if (!(*(v13 + 48))(v4 + v14, 1, v12))
      {
        v17(v4 + v14, v12);
      }

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_19;
    }

LABEL_10:
    v7 = sub_1E65D74E8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 8);
    v9(v0 + v2, v7);
    v10 = type metadata accessor for URLContext(0);
    v11 = *(v10 + 20);
    if (!(*(v8 + 48))(v4 + v11, 1, v7))
    {
      v9(v4 + v11, v7);
    }

LABEL_18:
    v15 = *(v4 + *(v10 + 24) + 8);

    goto LABEL_19;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      goto LABEL_10;
    case 3:
      v6 = sub_1E65D74E8();
      break;
    case 4:
      v6 = sub_1E65D8D48();
      break;
    default:
      goto LABEL_19;
  }

  (*(*(v6 - 8) + 8))(v0 + v2, v6);
LABEL_19:

  return swift_deallocObject();
}

uint64_t sub_1E5E533B8()
{
  v1 = sub_1E65D74E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteSource(0) - 8);
  v16 = *(v5 + 64);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = v0 + v6;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      type metadata accessor for AppLaunchScope(0);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        goto LABEL_14;
      }
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v7(v0 + v6, v1);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v10 = sub_1E65D8D48();
      (*(*(v10 - 8) + 8))(v0 + v6, v10);
    }

    goto LABEL_14;
  }

  v7(v0 + v6, v1);
  v11 = type metadata accessor for URLContext(0);
  v15 = *(v11 + 20);
  if (!(*(v2 + 48))(v8 + v15, 1, v1))
  {
    v7(v8 + v15, v1);
  }

  v12 = *(v8 + *(v11 + 24) + 8);

LABEL_14:
  v13 = *(v0 + ((v16 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5E53634()
{
  v1 = sub_1E65E43E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E536BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A48, &qword_1E65EC3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E5372C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A58, &qword_1E65EC3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E537A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];
  swift_unknownObjectRelease();
  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  return swift_deallocObject();
}

uint64_t sub_1E5E53810()
{
  v1 = type metadata accessor for ContentAvailabilityService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = Description[8];
  v5 = type metadata accessor for LocalizationService();
  v6 = v5[-1].Description;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v6[8];
  (Description[1])(v0 + v3, v1);
  (v6[1])(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5E53958()
{
  v1 = type metadata accessor for LocalizationService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 40) & ~*(Description + 80);
  v4 = v3 + Description[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF0, &qword_1E65EC4B8);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (Description[1])(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5E53ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E65D8F28();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E65D9F88();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E5E53BE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E65D8F28();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E65D9F88();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E5E53D04(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1E5E53D1C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1E5E53D34()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v201 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination();
  v203 = *(*(v3 - 8) + 80);
  v204 = v3;
  v196 = v2 + v203;
  v200 = *(*(v3 - 8) + 64);
  v202 = v0;
  v197 = (v201 + 16) & ~v201;

  v198 = v0 + v197;
  v199 = v1;
  v4 = *(v0 + v197 + *(v1 + 20));
  v5 = v0 + v197 + *(v1 + 20);
  v193 = v5;

  v192 = type metadata accessor for AppComposer();
  v6 = (v5 + v192[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v195 = type metadata accessor for AccountService();
  v194 = *(v195[-1].Description + 1);
  v194(v6 + v9, v195);
  v10 = v8[7];
  v191 = type metadata accessor for AppStateService();
  v190 = *(v191[-1].Description + 1);
  v190(v6 + v10, v191);
  v11 = v8[8];
  v189 = type metadata accessor for ArchivedSessionService();
  v188 = *(v189[-1].Description + 1);
  v188(v6 + v11, v189);
  v12 = v8[9];
  v187 = type metadata accessor for AssetService();
  v186 = *(v187[-1].Description + 1);
  v186(v6 + v12, v187);
  v13 = v8[10];
  v185 = type metadata accessor for AwardsService();
  v184 = *(v185[-1].Description + 1);
  v184(v6 + v13, v185);
  v14 = v8[11];
  v183 = type metadata accessor for BookmarkService();
  v182 = *(v183[-1].Description + 1);
  v182(v6 + v14, v183);
  v15 = v8[12];
  v181 = type metadata accessor for CatalogService();
  v180 = *(v181[-1].Description + 1);
  v180(v6 + v15, v181);
  v16 = v8[13];
  v179 = type metadata accessor for ConfigurationService();
  v178 = *(v179[-1].Description + 1);
  v178(v6 + v16, v179);
  v17 = v8[14];
  v177 = type metadata accessor for ContentAvailabilityService();
  v176 = *(v177[-1].Description + 1);
  v176(v6 + v17, v177);
  v18 = v8[15];
  v175 = type metadata accessor for EngagementService();
  v174 = *(v175[-1].Description + 1);
  v174(v6 + v18, v175);
  v19 = v8[16];
  v173 = type metadata accessor for HealthDataService();
  v172 = *(v173[-1].Description + 1);
  v172(v6 + v19, v173);
  v20 = v8[17];
  v171 = type metadata accessor for InteropService();
  v170 = *(v171[-1].Description + 1);
  v170(v6 + v20, v171);
  v21 = v8[18];
  v169 = type metadata accessor for LocalizationService();
  v168 = *(v169[-1].Description + 1);
  v168(v6 + v21, v169);
  v22 = v8[19];
  v167 = type metadata accessor for MarketingService();
  v166 = *(v167[-1].Description + 1);
  v166(v6 + v22, v167);
  v23 = v8[20];
  v165 = type metadata accessor for MetricService();
  v164 = *(v165[-1].Description + 1);
  v164(v6 + v23, v165);
  v24 = v8[21];
  v163 = type metadata accessor for PersonalizationService();
  v162 = *(v163[-1].Description + 1);
  v162(v6 + v24, v163);
  v25 = v8[22];
  v161 = type metadata accessor for PlayerService();
  v160 = *(v161[-1].Description + 1);
  v160(v6 + v25, v161);
  v26 = v8[23];
  v159 = type metadata accessor for PrivacyPreferenceService();
  v158 = *(v159[-1].Description + 1);
  v158(v6 + v26, v159);
  v27 = v8[24];
  v157 = type metadata accessor for RecommendationService();
  v156 = *(v157[-1].Description + 1);
  v156(v6 + v27, v157);
  v28 = v8[25];
  v155 = type metadata accessor for RemoteBrowsingService();
  v154 = *(v155[-1].Description + 1);
  v154(v6 + v28, v155);
  v29 = v8[26];
  v153 = type metadata accessor for SearchService();
  v152 = *(v153[-1].Description + 1);
  v152(v6 + v29, v153);
  v30 = v8[27];
  v146 = type metadata accessor for ServiceSubscriptionService();
  v151 = *(v146[-1].Description + 1);
  v151(v6 + v30, v146);
  v31 = v8[28];
  v144 = type metadata accessor for SessionService();
  v150 = *(v144[-1].Description + 1);
  v150(v6 + v31, v144);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v149 = *(v33[-1].Description + 1);
  v149(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v148 = *(v35[-1].Description + 1);
  v148(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v147 = *(v37[-1].Description + 1);
  v147(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v145 = *(QueueService[-1].Description + 1);
  v145(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(v6 + v45, v46);
  v48 = *(v193 + v192[6]);

  v49 = (v193 + v192[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v194(v52 + v8[6], v195);
  v190(v52 + v8[7], v191);
  v188(v52 + v8[8], v189);
  v186(v52 + v8[9], v187);
  v184(v52 + v8[10], v185);
  v182(v52 + v8[11], v183);
  v180(v52 + v8[12], v181);
  v178(v52 + v8[13], v179);
  v176(v52 + v8[14], v177);
  v174(v52 + v8[15], v175);
  v172(v52 + v8[16], v173);
  v170(v52 + v8[17], v171);
  v168(v52 + v8[18], v169);
  v166(v52 + v8[19], v167);
  v164(v52 + v8[20], v165);
  v162(v52 + v8[21], v163);
  v160(v52 + v8[22], v161);
  v158(v52 + v8[23], v159);
  v156(v52 + v8[24], v157);
  v154(v52 + v8[25], v155);
  v152(v52 + v8[26], v153);
  v151(v52 + v8[27], v146);
  v150(v52 + v8[28], v144);
  v149(v52 + v8[29], v33);
  v148(v52 + v8[30], v35);
  v147(v52 + v8[31], v37);
  v54 = (v52 + v8[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v145(v52 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v8[34]));
  v58 = *(v52 + v8[35]);

  v47(v52 + v8[36], v46);
  v59 = *(v193 + v192[8]);
  swift_unknownObjectRelease();
  if (*(v193 + v192[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v193 + v192[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = (v197 + v196) & ~v203;
  v62 = *(v198 + v199[6]);
  swift_unknownObjectRelease();
  v63 = (v198 + v199[7]);
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = *(v198 + v199[8]);
  swift_unknownObjectRelease();
  v65 = v202 + v61;
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
      goto LABEL_8;
    case 1u:
      v106 = sub_1E65D76F8();
      v107 = *(v106 - 8);
      if (!(*(v107 + 48))(v202 + v61, 1, v106))
      {
        (*(v107 + 8))(v202 + v61, v106);
      }

      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v109 = *(v65 + v108[12] + 8);

      v110 = v108[16];
      v111 = sub_1E65E2CF8();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v65 + v110, 1, v111))
      {
        (*(v112 + 8))(v65 + v110, v111);
      }

      v113 = *(v65 + v108[20]);

      v83 = v108[24];
      v114 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:
      v122 = *(v65 + 8);

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v90 = sub_1E65D72D8();
      goto LABEL_50;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v117 = sub_1E65E0FD8();
            (*(*(v117 - 8) + 8))(v202 + v61, v117);
          }

          goto LABEL_80;
        }

LABEL_79:
        v142 = *(v65 + 8);

        goto LABEL_80;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_79;
      }

LABEL_80:
      v143 = *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_57:
      v130 = v204;
      v131 = v65 + *(v204 + 20);
      type metadata accessor for RouteSource(0);
      v132 = swift_getEnumCaseMultiPayload();
      if (v132 <= 1)
      {
        if (v132)
        {
          if (v132 != 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_68;
      }

      switch(v132)
      {
        case 2:
LABEL_68:
          v134 = sub_1E65D74E8();
          v135 = *(v134 - 8);
          v136 = *(v135 + 8);
          v136(v131, v134);
          v137 = type metadata accessor for URLContext(0);
          v138 = *(v137 + 20);
          if (!(*(v135 + 48))(v131 + v138, 1, v134))
          {
            v136(v131 + v138, v134);
          }

          v139 = *(v131 + *(v137 + 24) + 8);

          v130 = v204;
          goto LABEL_71;
        case 3:
          v133 = sub_1E65D74E8();
          break;
        case 4:
          v133 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v133 - 8) + 8))(v131, v133);
LABEL_71:
      v140 = *(v65 + *(v130 + 24));

      sub_1E5F94E00(*(v202 + ((v61 + v200) & 0xFFFFFFFFFFFFFFF8) + 8), *(v202 + ((v61 + v200) & 0xFFFFFFFFFFFFFFF8) + 16));

      return swift_deallocObject();
    case 6u:

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v88 = *(v87 + 48);
      v89 = sub_1E65DB848();
      (*(*(v89 - 8) + 8))(v65 + v88, v89);
      v70 = *(v87 + 64);
      v90 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v98 = sub_1E65DB848();
      (*(*(v98 - 8) + 8))(v202 + v61, v98);
      v99 = &unk_1ED0720D0;
      v100 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v68 = *(v67 + 48);
      v69 = sub_1E65DB848();
      (*(*(v69 - 8) + 8))(v65 + v68, v69);
      v70 = *(v67 + 64);
      goto LABEL_49;
    case 0xCu:
      v115 = *(v65 + 8);

      sub_1E5F94E00(*(v65 + 16), *(v65 + 24));
      goto LABEL_57;
    case 0xEu:
      v86 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:
      v126 = *(v65 + 8);

      v99 = &unk_1ED0720E0;
      v100 = &unk_1E65EA2A0;
LABEL_48:
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v99, v100) + 48);
LABEL_49:
      v90 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      v123 = *v65;
      v124 = *(v65 + 8);
      v125 = *(v65 + 16);
      sub_1E5F94E14();
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:
      v101 = *(v65 + 8);

      v102 = *(v65 + 24);

      goto LABEL_57;
    case 0x15u:
      v127 = *(v65 + 8);

      v128 = *(v65 + 24);

      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v114 = sub_1E65D96F8();
LABEL_52:
      v84 = v114;
      v85 = *(v114 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v114))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v202 + v61));
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v72 = v71[12];
      v73 = sub_1E65D74E8();
      (*(*(v73 - 8) + 8))(v65 + v72, v73);
      v74 = *(v65 + v71[16] + 8);

      v75 = v71[20];
      v76 = sub_1E65DB3E8();
      v77 = *(v76 - 8);
      if (!(*(v77 + 48))(v65 + v75, 1, v76))
      {
        (*(v77 + 8))(v65 + v75, v76);
      }

      v78 = *(v65 + v71[24] + 8);

      v79 = *(v65 + v71[28] + 8);

      v80 = v71[32];
      v81 = sub_1E65DB5D8();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v65 + v80, 1, v81))
      {
        (*(v82 + 8))(v65 + v80, v81);
      }

      v83 = v71[36];
      v84 = sub_1E65D7A38();
      v85 = *(v84 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v84))
      {
LABEL_53:
        (*(v85 + 8))(v65 + v83, v84);
      }

      goto LABEL_57;
    case 0x17u:
      v94 = sub_1E65E57D8();
      (*(*(v94 - 8) + 8))(v202 + v61, v94);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v96 = *(v95 + 48);
      v97 = sub_1E65E5528();
      (*(*(v97 - 8) + 8))(v65 + v96, v97);
      if (*(v65 + *(v95 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_57;
    case 0x18u:

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v90 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v105 = swift_getEnumCaseMultiPayload();
      if (v105 == 1)
      {

        goto LABEL_57;
      }

      if (v105)
      {
        goto LABEL_57;
      }

LABEL_29:
      v86 = sub_1E65D74E8();
      goto LABEL_56;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = sub_1E65DAEB8();
LABEL_56:
        (*(*(v86 - 8) + 8))(v202 + v61, v86);
      }

      else
      {
LABEL_8:
        v66 = *(v65 + 8);
      }

      goto LABEL_57;
    case 0x1Cu:
      v86 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v129 = sub_1E65E55E8();
      (*(*(v129 - 8) + 8))(v202 + v61, v129);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v90 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v90 - 8) + 8))(v65 + v70, v90);
      goto LABEL_57;
    case 0x1Eu:
      v91 = sub_1E65E56B8();
      (*(*(v91 - 8) + 8))(v202 + v61, v91);
      v92 = &unk_1ED072110;
      v93 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v103 = sub_1E65DA308();
      (*(*(v103 - 8) + 8))(v202 + v61, v103);
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_44;
    case 0x20u:
      v118 = sub_1E65E58D8();
      (*(*(v118 - 8) + 8))(v202 + v61, v118);
      v92 = &qword_1ED072120;
      v93 = &qword_1E65EA2E0;
LABEL_43:
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(v92, v93);
      v120 = *(v65 + *(v119 + 48));

      v104 = *(v119 + 64);
LABEL_44:
      v121 = *(v65 + v104);

      goto LABEL_57;
    case 0x21u:
      v86 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E556B0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E5E556E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E55720()
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

uint64_t sub_1E5E563E4()
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

uint64_t sub_1E5E570B4()
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

uint64_t sub_1E5E57DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E57DF0()
{
  v1 = sub_1E65E22E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v124 = type metadata accessor for AppComposer();
  v122 = *(*(v124 - 1) + 80);
  v120 = *(*(v124 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v123 = v0;
  v121 = (v3 + v4 + v122) & ~v122;
  v117 = v0 + v121;
  v6 = *(v0 + v121);

  v7 = (v0 + v121 + v124[5]);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v119 = type metadata accessor for AccountService();
  v118 = *(v119[-1].Description + 1);
  v118(&v7[v10], v119);
  v11 = v9[7];
  v116 = type metadata accessor for AppStateService();
  v115 = *(v116[-1].Description + 1);
  v115(&v7[v11], v116);
  v12 = v9[8];
  v114 = type metadata accessor for ArchivedSessionService();
  v113 = *(v114[-1].Description + 1);
  v113(&v7[v12], v114);
  v13 = v9[9];
  v112 = type metadata accessor for AssetService();
  v111 = *(v112[-1].Description + 1);
  v111(&v7[v13], v112);
  v14 = v9[10];
  v110 = type metadata accessor for AwardsService();
  v109 = *(v110[-1].Description + 1);
  v109(&v7[v14], v110);
  v15 = v9[11];
  v108 = type metadata accessor for BookmarkService();
  v107 = *(v108[-1].Description + 1);
  v107(&v7[v15], v108);
  v16 = v9[12];
  v106 = type metadata accessor for CatalogService();
  v105 = *(v106[-1].Description + 1);
  v105(&v7[v16], v106);
  v17 = v9[13];
  v104 = type metadata accessor for ConfigurationService();
  v103 = *(v104[-1].Description + 1);
  v103(&v7[v17], v104);
  v18 = v9[14];
  v102 = type metadata accessor for ContentAvailabilityService();
  v101 = *(v102[-1].Description + 1);
  v101(&v7[v18], v102);
  v19 = v9[15];
  v100 = type metadata accessor for EngagementService();
  v99 = *(v100[-1].Description + 1);
  v99(&v7[v19], v100);
  v20 = v9[16];
  v98 = type metadata accessor for HealthDataService();
  v97 = *(v98[-1].Description + 1);
  v97(&v7[v20], v98);
  v21 = v9[17];
  v96 = type metadata accessor for InteropService();
  v95 = *(v96[-1].Description + 1);
  v95(&v7[v21], v96);
  v22 = v9[18];
  v94 = type metadata accessor for LocalizationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v7[v22], v94);
  v23 = v9[19];
  v92 = type metadata accessor for MarketingService();
  v91 = *(v92[-1].Description + 1);
  v91(&v7[v23], v92);
  v24 = v9[20];
  v90 = type metadata accessor for MetricService();
  v89 = *(v90[-1].Description + 1);
  v89(&v7[v24], v90);
  v25 = v9[21];
  v88 = type metadata accessor for PersonalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v7[v25], v88);
  v26 = v9[22];
  v86 = type metadata accessor for PlayerService();
  v85 = *(v86[-1].Description + 1);
  v85(&v7[v26], v86);
  v27 = v9[23];
  v84 = type metadata accessor for PrivacyPreferenceService();
  v83 = *(v84[-1].Description + 1);
  v83(&v7[v27], v84);
  v28 = v9[24];
  v82 = type metadata accessor for RecommendationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v7[v28], v82);
  v29 = v9[25];
  v80 = type metadata accessor for RemoteBrowsingService();
  v79 = *(v80[-1].Description + 1);
  v79(&v7[v29], v80);
  v30 = v9[26];
  v78 = type metadata accessor for SearchService();
  v77 = *(v78[-1].Description + 1);
  v77(&v7[v30], v78);
  v31 = v9[27];
  v76 = type metadata accessor for ServiceSubscriptionService();
  v75 = *(v76[-1].Description + 1);
  v75(&v7[v31], v76);
  v32 = v9[28];
  v69 = type metadata accessor for SessionService();
  v74 = *(v69[-1].Description + 1);
  v74(&v7[v32], v69);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v73 = *(v34[-1].Description + 1);
  v73(&v7[v33], v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v72 = *(v36[-1].Description + 1);
  v72(&v7[v35], v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v71 = *(v38[-1].Description + 1);
  v71(&v7[v37], v38);
  v39 = &v7[v9[32]];
  v40 = *(v39 + 1);

  v41 = *(v39 + 3);

  v42 = *(v39 + 5);

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v70 = *(QueueService[-1].Description + 1);
  v70(&v7[v43], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v7[v9[34]]);
  v45 = *&v7[v9[35]];

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v68 = *(v47[-1].Description + 1);
  v68(&v7[v46], v47);
  v48 = *(v117 + v124[6]);

  v49 = (v117 + v124[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v118(&v52[v9[6]], v119);
  v115(&v52[v9[7]], v116);
  v113(&v52[v9[8]], v114);
  v111(&v52[v9[9]], v112);
  v109(&v52[v9[10]], v110);
  v107(&v52[v9[11]], v108);
  v105(&v52[v9[12]], v106);
  v103(&v52[v9[13]], v104);
  v101(&v52[v9[14]], v102);
  v99(&v52[v9[15]], v100);
  v97(&v52[v9[16]], v98);
  v95(&v52[v9[17]], v96);
  v93(&v52[v9[18]], v94);
  v91(&v52[v9[19]], v92);
  v89(&v52[v9[20]], v90);
  v87(&v52[v9[21]], v88);
  v85(&v52[v9[22]], v86);
  v83(&v52[v9[23]], v84);
  v81(&v52[v9[24]], v82);
  v79(&v52[v9[25]], v80);
  v77(&v52[v9[26]], v78);
  v75(&v52[v9[27]], v76);
  v74(&v52[v9[28]], v69);
  v73(&v52[v9[29]], v34);
  v72(&v52[v9[30]], v36);
  v71(&v52[v9[31]], v38);
  v54 = &v52[v9[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v70(&v52[v9[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v9[34]]);
  v58 = *&v52[v9[35]];

  v68(&v52[v9[36]], v47);
  v59 = *(v117 + v124[8]);
  swift_unknownObjectRelease();
  if (*(v117 + v124[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v117 + v124[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = (v123 + ((v120 + v121 + 7) & 0xFFFFFFFFFFFFFFF8));
  v62 = *v61;
  swift_unknownObjectRelease();
  v63 = v61[3];

  v64 = v61[5];

  v65 = v61[7];

  v66 = v61[9];

  return swift_deallocObject();
}

uint64_t sub_1E5E58B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E58BCC()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v111 = (v112 + 16) & ~v112;
  v113 = v0;
  v107 = v0 + v111;
  v1 = *(v0 + v111);

  v2 = (v0 + v111 + v114[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v5], v109);
  v6 = v4[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v6], v106);
  v7 = v4[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v7], v104);
  v8 = v4[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v8], v102);
  v9 = v4[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v9], v100);
  v10 = v4[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v10], v98);
  v11 = v4[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v11], v96);
  v12 = v4[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v12], v94);
  v13 = v4[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v13], v92);
  v14 = v4[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v14], v90);
  v15 = v4[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v15], v88);
  v16 = v4[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v16], v86);
  v17 = v4[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v17], v84);
  v18 = v4[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v18], v82);
  v19 = v4[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v19], v80);
  v20 = v4[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v20], v78);
  v21 = v4[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v21], v76);
  v22 = v4[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v22], v74);
  v23 = v4[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v23], v72);
  v24 = v4[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v24], v70);
  v25 = v4[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v25], v68);
  v26 = v4[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v2[v26], v66);
  v27 = v4[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v2[v27], v59);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v63 = *(v29[-1].Description + 1);
  v63(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v62 = *(v31[-1].Description + 1);
  v62(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v61 = *(v33[-1].Description + 1);
  v61(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v58 = *(v42[-1].Description + 1);
  v58(&v2[v41], v42);
  v43 = *(v107 + v114[6]);

  v44 = (v107 + v114[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v108(&v47[v4[6]], v109);
  v105(&v47[v4[7]], v106);
  v103(&v47[v4[8]], v104);
  v101(&v47[v4[9]], v102);
  v99(&v47[v4[10]], v100);
  v97(&v47[v4[11]], v98);
  v95(&v47[v4[12]], v96);
  v93(&v47[v4[13]], v94);
  v91(&v47[v4[14]], v92);
  v89(&v47[v4[15]], v90);
  v87(&v47[v4[16]], v88);
  v85(&v47[v4[17]], v86);
  v83(&v47[v4[18]], v84);
  v81(&v47[v4[19]], v82);
  v79(&v47[v4[20]], v80);
  v77(&v47[v4[21]], v78);
  v75(&v47[v4[22]], v76);
  v73(&v47[v4[23]], v74);
  v71(&v47[v4[24]], v72);
  v69(&v47[v4[25]], v70);
  v67(&v47[v4[26]], v68);
  v65(&v47[v4[27]], v66);
  v64(&v47[v4[28]], v59);
  v63(&v47[v4[29]], v29);
  v62(&v47[v4[30]], v31);
  v61(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v60(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v58(&v47[v4[36]], v42);
  v54 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v107 + v114[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = *(v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5E598B0()
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

uint64_t sub_1E5E5A590()
{
  v1 = type metadata accessor for ContentAvailabilityService();
  Description = v1[-1].Description;
  v3 = Description[8];
  (Description[1])(v0 + ((*(Description + 80) + 16) & ~*(Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E5A660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E65D72D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5E5A70C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E65D72D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5E5A7B8()
{
  v1 = type metadata accessor for RecommendationService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = Description[8];
  v5 = type metadata accessor for AccountService();
  v6 = v5[-1].Description;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v6[8] + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (Description[1])(v0 + v3, v1);
  (v6[1])(v0 + v7, v5);
  v9 = *(v0 + v8);

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5E5A988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E5AA58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5E5AA98()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5E5AAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 60));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E5E5AB9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5E5AC64()
{
  v116 = type metadata accessor for AppComposer();
  v1 = (*(*(v116 - 1) + 80) + 96) & ~*(*(v116 - 1) + 80);
  v114 = *(*(v116 - 1) + 64) + v1 + 7;
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v115 = v0;
  v117 = v0 + v1;
  v7 = *(v0 + v1);

  v8 = (v0 + v1 + v116[5]);
  v9 = *v8;
  swift_unknownObjectRelease();
  v10 = type metadata accessor for AppEnvironment();
  v11 = v10[6];
  v113 = type metadata accessor for AccountService();
  v112 = *(v113[-1].Description + 1);
  v112(v8 + v11, v113);
  v12 = v10[7];
  v111 = type metadata accessor for AppStateService();
  v110 = *(v111[-1].Description + 1);
  v110(v8 + v12, v111);
  v13 = v10[8];
  v109 = type metadata accessor for ArchivedSessionService();
  v108 = *(v109[-1].Description + 1);
  v108(v8 + v13, v109);
  v14 = v10[9];
  v107 = type metadata accessor for AssetService();
  v106 = *(v107[-1].Description + 1);
  v106(v8 + v14, v107);
  v15 = v10[10];
  v105 = type metadata accessor for AwardsService();
  v104 = *(v105[-1].Description + 1);
  v104(v8 + v15, v105);
  v16 = v10[11];
  v103 = type metadata accessor for BookmarkService();
  v102 = *(v103[-1].Description + 1);
  v102(v8 + v16, v103);
  v17 = v10[12];
  v101 = type metadata accessor for CatalogService();
  v100 = *(v101[-1].Description + 1);
  v100(v8 + v17, v101);
  v18 = v10[13];
  v99 = type metadata accessor for ConfigurationService();
  v98 = *(v99[-1].Description + 1);
  v98(v8 + v18, v99);
  v19 = v10[14];
  v97 = type metadata accessor for ContentAvailabilityService();
  v96 = *(v97[-1].Description + 1);
  v96(v8 + v19, v97);
  v20 = v10[15];
  v95 = type metadata accessor for EngagementService();
  v94 = *(v95[-1].Description + 1);
  v94(v8 + v20, v95);
  v21 = v10[16];
  v93 = type metadata accessor for HealthDataService();
  v92 = *(v93[-1].Description + 1);
  v92(v8 + v21, v93);
  v22 = v10[17];
  v91 = type metadata accessor for InteropService();
  v90 = *(v91[-1].Description + 1);
  v90(v8 + v22, v91);
  v23 = v10[18];
  v89 = type metadata accessor for LocalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(v8 + v23, v89);
  v24 = v10[19];
  v87 = type metadata accessor for MarketingService();
  v86 = *(v87[-1].Description + 1);
  v86(v8 + v24, v87);
  v25 = v10[20];
  v85 = type metadata accessor for MetricService();
  v84 = *(v85[-1].Description + 1);
  v84(v8 + v25, v85);
  v26 = v10[21];
  v83 = type metadata accessor for PersonalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(v8 + v26, v83);
  v27 = v10[22];
  v81 = type metadata accessor for PlayerService();
  v80 = *(v81[-1].Description + 1);
  v80(v8 + v27, v81);
  v28 = v10[23];
  v79 = type metadata accessor for PrivacyPreferenceService();
  v78 = *(v79[-1].Description + 1);
  v78(v8 + v28, v79);
  v29 = v10[24];
  v77 = type metadata accessor for RecommendationService();
  v76 = *(v77[-1].Description + 1);
  v76(v8 + v29, v77);
  v30 = v10[25];
  v75 = type metadata accessor for RemoteBrowsingService();
  v74 = *(v75[-1].Description + 1);
  v74(v8 + v30, v75);
  v31 = v10[26];
  v73 = type metadata accessor for SearchService();
  v72 = *(v73[-1].Description + 1);
  v72(v8 + v31, v73);
  v32 = v10[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v66[-1].Description + 1);
  v71(v8 + v32, v66);
  v33 = v10[28];
  v64 = type metadata accessor for SessionService();
  v70 = *(v64[-1].Description + 1);
  v70(v8 + v33, v64);
  v34 = v10[29];
  v35 = type metadata accessor for SharePlayService();
  v69 = *(v35[-1].Description + 1);
  v69(v8 + v34, v35);
  v36 = v10[30];
  v37 = type metadata accessor for SiriService();
  v68 = *(v37[-1].Description + 1);
  v68(v8 + v36, v37);
  v38 = v10[31];
  v39 = type metadata accessor for SyncService();
  v67 = *(v39[-1].Description + 1);
  v67(v8 + v38, v39);
  v40 = (v8 + v10[32]);
  v41 = v40[1];

  v42 = v40[3];

  v43 = v40[5];

  v44 = v10[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v65 = *(QueueService[-1].Description + 1);
  v65(v8 + v44, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v8 + v10[34]));
  v46 = *(v8 + v10[35]);

  v47 = v10[36];
  v48 = type metadata accessor for WorkoutPlanService();
  v49 = *(v48[-1].Description + 1);
  v49(v8 + v47, v48);
  v50 = *&v117[v116[6]];

  v51 = &v117[v116[7]];
  v52 = *v51;

  v53 = *(v51 + 1);

  v54 = &v51[*(type metadata accessor for AppDataItemResolver() + 24)];
  v55 = *v54;
  swift_unknownObjectRelease();
  v112(&v54[v10[6]], v113);
  v110(&v54[v10[7]], v111);
  v108(&v54[v10[8]], v109);
  v106(&v54[v10[9]], v107);
  v104(&v54[v10[10]], v105);
  v102(&v54[v10[11]], v103);
  v100(&v54[v10[12]], v101);
  v98(&v54[v10[13]], v99);
  v96(&v54[v10[14]], v97);
  v94(&v54[v10[15]], v95);
  v92(&v54[v10[16]], v93);
  v90(&v54[v10[17]], v91);
  v88(&v54[v10[18]], v89);
  v86(&v54[v10[19]], v87);
  v84(&v54[v10[20]], v85);
  v82(&v54[v10[21]], v83);
  v80(&v54[v10[22]], v81);
  v78(&v54[v10[23]], v79);
  v76(&v54[v10[24]], v77);
  v74(&v54[v10[25]], v75);
  v72(&v54[v10[26]], v73);
  v71(&v54[v10[27]], v66);
  v70(&v54[v10[28]], v64);
  v69(&v54[v10[29]], v35);
  v68(&v54[v10[30]], v37);
  v67(&v54[v10[31]], v39);
  v56 = &v54[v10[32]];
  v57 = *(v56 + 1);

  v58 = *(v56 + 3);

  v59 = *(v56 + 5);

  v65(&v54[v10[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v54[v10[34]]);
  v60 = *&v54[v10[35]];

  v49(&v54[v10[36]], v48);
  v61 = *&v117[v116[8]];
  swift_unknownObjectRelease();
  if (*&v117[v116[9] + 8] >= 0xCuLL)
  {
  }

  v62 = &v117[v116[10]];
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  if (*(v115 + (v114 & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xCuLL)
  {
  }

  return swift_deallocObject();
}