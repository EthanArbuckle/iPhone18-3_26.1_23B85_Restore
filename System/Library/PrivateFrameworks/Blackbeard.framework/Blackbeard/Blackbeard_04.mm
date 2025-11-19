uint64_t sub_1E5E5B96C()
{
  v1 = type metadata accessor for PageMetricsClick();
  v2 = (*(*(v1 - 1) + 80) + 96) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  v7 = *(v0 + 9);

  v8 = *(v0 + 11);

  v9 = &v0[v2];
  v10 = sub_1E65D9D78();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v0[v2], 1, v10))
  {
    (*(v11 + 8))(&v0[v2], v10);
  }

  v12 = v1[5];
  v13 = sub_1E65D8C68();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);
  v14 = v1[6];
  v15 = sub_1E65D74E8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v9[v14], 1, v15))
  {
    (*(v16 + 8))(&v9[v14], v15);
  }

  v17 = *&v9[v1[7]];

  v18 = v1[8];
  v19 = sub_1E65DA208();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(&v9[v18], 1, v19))
  {
    (*(v20 + 8))(&v9[v18], v19);
  }

  v21 = *&v9[v1[9] + 8];

  v22 = *&v9[v1[10] + 8];

  v23 = *&v9[v1[11]];

  v24 = *&v9[v1[12] + 8];

  v25 = *&v9[v1[13] + 8];

  v26 = v1[14];
  v27 = sub_1E65D8F28();
  (*(*(v27 - 8) + 8))(&v9[v26], v27);
  v28 = v1[15];
  v29 = sub_1E65D9908();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(&v9[v28], 1, v29))
  {
    (*(v30 + 8))(&v9[v28], v29);
  }

  __swift_destroy_boxed_opaque_existential_1(&v0[(v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8]);

  return swift_deallocObject();
}

uint64_t sub_1E5E5BCFC()
{
  v1 = (type metadata accessor for GalleryDescriptor() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v125 = type metadata accessor for AppComposer();
  v123 = *(*(v125 - 1) + 80);
  v121 = *(*(v125 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  v6 = *(v5 + 8);

  v7 = v1[9];
  v8 = sub_1E65D72D8();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v3);
  swift_unknownObjectRelease();
  v10 = *(v0 + v3 + 24);

  v11 = *(v0 + v3 + 40);

  v12 = *(v0 + v3 + 56);

  v13 = *(v0 + v3 + 72);

  v124 = v0;
  v122 = (v3 + v123 + 80) & ~v123;
  v126 = v0 + v122;
  v14 = *(v0 + v122);

  v15 = (v0 + v122 + v125[5]);
  v16 = *v15;
  swift_unknownObjectRelease();
  v17 = type metadata accessor for AppEnvironment();
  v18 = v17[6];
  v120 = type metadata accessor for AccountService();
  v119 = *(v120[-1].Description + 1);
  v119(&v15[v18], v120);
  v19 = v17[7];
  v118 = type metadata accessor for AppStateService();
  v117 = *(v118[-1].Description + 1);
  v117(&v15[v19], v118);
  v20 = v17[8];
  v116 = type metadata accessor for ArchivedSessionService();
  v115 = *(v116[-1].Description + 1);
  v115(&v15[v20], v116);
  v21 = v17[9];
  v114 = type metadata accessor for AssetService();
  v113 = *(v114[-1].Description + 1);
  v113(&v15[v21], v114);
  v22 = v17[10];
  v112 = type metadata accessor for AwardsService();
  v111 = *(v112[-1].Description + 1);
  v111(&v15[v22], v112);
  v23 = v17[11];
  v110 = type metadata accessor for BookmarkService();
  v109 = *(v110[-1].Description + 1);
  v109(&v15[v23], v110);
  v24 = v17[12];
  v108 = type metadata accessor for CatalogService();
  v107 = *(v108[-1].Description + 1);
  v107(&v15[v24], v108);
  v25 = v17[13];
  v106 = type metadata accessor for ConfigurationService();
  v105 = *(v106[-1].Description + 1);
  v105(&v15[v25], v106);
  v26 = v17[14];
  v104 = type metadata accessor for ContentAvailabilityService();
  v103 = *(v104[-1].Description + 1);
  v103(&v15[v26], v104);
  v27 = v17[15];
  v102 = type metadata accessor for EngagementService();
  v101 = *(v102[-1].Description + 1);
  v101(&v15[v27], v102);
  v28 = v17[16];
  v100 = type metadata accessor for HealthDataService();
  v99 = *(v100[-1].Description + 1);
  v99(&v15[v28], v100);
  v29 = v17[17];
  v98 = type metadata accessor for InteropService();
  v97 = *(v98[-1].Description + 1);
  v97(&v15[v29], v98);
  v30 = v17[18];
  v96 = type metadata accessor for LocalizationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v15[v30], v96);
  v31 = v17[19];
  v94 = type metadata accessor for MarketingService();
  v93 = *(v94[-1].Description + 1);
  v93(&v15[v31], v94);
  v32 = v17[20];
  v92 = type metadata accessor for MetricService();
  v91 = *(v92[-1].Description + 1);
  v91(&v15[v32], v92);
  v33 = v17[21];
  v90 = type metadata accessor for PersonalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v15[v33], v90);
  v34 = v17[22];
  v88 = type metadata accessor for PlayerService();
  v87 = *(v88[-1].Description + 1);
  v87(&v15[v34], v88);
  v35 = v17[23];
  v86 = type metadata accessor for PrivacyPreferenceService();
  v85 = *(v86[-1].Description + 1);
  v85(&v15[v35], v86);
  v36 = v17[24];
  v84 = type metadata accessor for RecommendationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v15[v36], v84);
  v37 = v17[25];
  v82 = type metadata accessor for RemoteBrowsingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v15[v37], v82);
  v38 = v17[26];
  v80 = type metadata accessor for SearchService();
  v79 = *(v80[-1].Description + 1);
  v79(&v15[v38], v80);
  v39 = v17[27];
  v73 = type metadata accessor for ServiceSubscriptionService();
  v78 = *(v73[-1].Description + 1);
  v78(&v15[v39], v73);
  v40 = v17[28];
  v71 = type metadata accessor for SessionService();
  v77 = *(v71[-1].Description + 1);
  v77(&v15[v40], v71);
  v41 = v17[29];
  v42 = type metadata accessor for SharePlayService();
  v76 = *(v42[-1].Description + 1);
  v76(&v15[v41], v42);
  v43 = v17[30];
  v44 = type metadata accessor for SiriService();
  v75 = *(v44[-1].Description + 1);
  v75(&v15[v43], v44);
  v45 = v17[31];
  v46 = type metadata accessor for SyncService();
  v74 = *(v46[-1].Description + 1);
  v74(&v15[v45], v46);
  v47 = &v15[v17[32]];
  v48 = *(v47 + 1);

  v49 = *(v47 + 3);

  v50 = *(v47 + 5);

  v51 = v17[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v72 = *(QueueService[-1].Description + 1);
  v72(&v15[v51], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v15[v17[34]]);
  v53 = *&v15[v17[35]];

  v54 = v17[36];
  v55 = type metadata accessor for WorkoutPlanService();
  v56 = *(v55[-1].Description + 1);
  v56(&v15[v54], v55);
  v57 = *(v126 + v125[6]);

  v58 = (v126 + v125[7]);
  v59 = *v58;

  v60 = v58[1];

  v61 = v58 + *(type metadata accessor for AppDataItemResolver() + 24);
  v62 = *v61;
  swift_unknownObjectRelease();
  v119(&v61[v17[6]], v120);
  v117(&v61[v17[7]], v118);
  v115(&v61[v17[8]], v116);
  v113(&v61[v17[9]], v114);
  v111(&v61[v17[10]], v112);
  v109(&v61[v17[11]], v110);
  v107(&v61[v17[12]], v108);
  v105(&v61[v17[13]], v106);
  v103(&v61[v17[14]], v104);
  v101(&v61[v17[15]], v102);
  v99(&v61[v17[16]], v100);
  v97(&v61[v17[17]], v98);
  v95(&v61[v17[18]], v96);
  v93(&v61[v17[19]], v94);
  v91(&v61[v17[20]], v92);
  v89(&v61[v17[21]], v90);
  v87(&v61[v17[22]], v88);
  v85(&v61[v17[23]], v86);
  v83(&v61[v17[24]], v84);
  v81(&v61[v17[25]], v82);
  v79(&v61[v17[26]], v80);
  v78(&v61[v17[27]], v73);
  v77(&v61[v17[28]], v71);
  v76(&v61[v17[29]], v42);
  v75(&v61[v17[30]], v44);
  v74(&v61[v17[31]], v46);
  v63 = &v61[v17[32]];
  v64 = *(v63 + 1);

  v65 = *(v63 + 3);

  v66 = *(v63 + 5);

  v72(&v61[v17[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v61[v17[34]]);
  v67 = *&v61[v17[35]];

  v56(&v61[v17[36]], v55);
  v68 = *(v126 + v125[8]);
  swift_unknownObjectRelease();
  if (*(v126 + v125[9] + 8) >= 0xCuLL)
  {
  }

  v69 = (v126 + v125[10]);
  if (v69[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  __swift_destroy_boxed_opaque_existential_1((v124 + ((v121 + v122 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5E5CAC0()
{
  v1 = type metadata accessor for PageMetricsClick();
  v2 = (*(*(v1 - 1) + 80) + 160) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v4 = v0[9];

  v5 = v0[10];
  swift_unknownObjectRelease();
  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0 + v2;
  v11 = sub_1E65D9D78();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v2, 1, v11))
  {
    (*(v12 + 8))(v0 + v2, v11);
  }

  v13 = v1[5];
  v14 = sub_1E65D8C68();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = v1[6];
  v16 = sub_1E65D74E8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(&v10[v15], 1, v16))
  {
    (*(v17 + 8))(&v10[v15], v16);
  }

  v18 = *&v10[v1[7]];

  v19 = v1[8];
  v20 = sub_1E65DA208();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v10[v19], 1, v20))
  {
    (*(v21 + 8))(&v10[v19], v20);
  }

  v22 = *&v10[v1[9] + 8];

  v23 = *&v10[v1[10] + 8];

  v24 = *&v10[v1[11]];

  v25 = *&v10[v1[12] + 8];

  v26 = *&v10[v1[13] + 8];

  v27 = v1[14];
  v28 = sub_1E65D8F28();
  (*(*(v28 - 8) + 8))(&v10[v27], v28);
  v29 = v1[15];
  v30 = sub_1E65D9908();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(&v10[v29], 1, v30))
  {
    (*(v31 + 8))(&v10[v29], v30);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E5CE4C()
{
  v120 = type metadata accessor for AppComposer();
  v118 = *(*(v120 - 1) + 80);
  v116 = *(*(v120 - 1) + 64);
  v117 = (v118 + 16) & ~v118;
  v119 = v0;
  v113 = v0 + v117;
  v1 = *(v0 + v117);

  v2 = (v0 + v117 + v120[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v5], v115);
  v6 = v4[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v6], v112);
  v7 = v4[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v7], v110);
  v8 = v4[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v8], v108);
  v9 = v4[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v9], v106);
  v10 = v4[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v10], v104);
  v11 = v4[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v11], v102);
  v12 = v4[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v12], v100);
  v13 = v4[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v13], v98);
  v14 = v4[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v14], v96);
  v15 = v4[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v15], v94);
  v16 = v4[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v16], v92);
  v17 = v4[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v17], v90);
  v18 = v4[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v18], v88);
  v19 = v4[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v19], v86);
  v20 = v4[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v20], v84);
  v21 = v4[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v21], v82);
  v22 = v4[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v22], v80);
  v23 = v4[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v23], v78);
  v24 = v4[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v24], v76);
  v25 = v4[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v25], v74);
  v26 = v4[27];
  v72 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v26], v72);
  v27 = v4[28];
  v65 = type metadata accessor for SessionService();
  v70 = *(v65[-1].Description + 1);
  v70(&v2[v27], v65);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v69 = *(v29[-1].Description + 1);
  v69(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v68 = *(v31[-1].Description + 1);
  v68(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v67 = *(v33[-1].Description + 1);
  v67(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v64 = *(v42[-1].Description + 1);
  v64(&v2[v41], v42);
  v43 = *(v113 + v120[6]);

  v44 = (v113 + v120[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v114(&v47[v4[6]], v115);
  v111(&v47[v4[7]], v112);
  v109(&v47[v4[8]], v110);
  v107(&v47[v4[9]], v108);
  v105(&v47[v4[10]], v106);
  v103(&v47[v4[11]], v104);
  v101(&v47[v4[12]], v102);
  v99(&v47[v4[13]], v100);
  v97(&v47[v4[14]], v98);
  v95(&v47[v4[15]], v96);
  v93(&v47[v4[16]], v94);
  v91(&v47[v4[17]], v92);
  v89(&v47[v4[18]], v90);
  v87(&v47[v4[19]], v88);
  v85(&v47[v4[20]], v86);
  v83(&v47[v4[21]], v84);
  v81(&v47[v4[22]], v82);
  v79(&v47[v4[23]], v80);
  v77(&v47[v4[24]], v78);
  v75(&v47[v4[25]], v76);
  v73(&v47[v4[26]], v74);
  v71(&v47[v4[27]], v72);
  v70(&v47[v4[28]], v65);
  v69(&v47[v4[29]], v29);
  v68(&v47[v4[30]], v31);
  v67(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v66(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v64(&v47[v4[36]], v42);
  v54 = *(v113 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v113 + v120[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v117 + v116) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v119 + v56 + 8));
  v58 = *(v119 + v57);
  swift_unknownObjectRelease();
  v59 = *(v119 + v57 + 24);

  v60 = *(v119 + v57 + 40);

  v61 = *(v119 + v57 + 56);

  v62 = *(v119 + v57 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5E5DB64()
{
  v151 = type metadata accessor for AppComposer();
  v149 = *(*(v151 - 1) + 80);
  v1 = (v149 + 16) & ~v149;
  v2 = v1 + *(*(v151 - 1) + 64);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v138 = (v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = sub_1E65D76F8();
  v142 = *(v145 - 8);
  v143 = v4;
  v148 = *(v142 + 80);
  v139 = (*(v142 + 64) + ((v4 + v148 + 8) & ~v148) + 7) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v4 + v148 + 8) & ~v148;
  v5 = sub_1E65DEC18();
  v146 = *(v5 - 8);
  v147 = v5;
  v141 = (v139 + 47) & 0xFFFFFFFFFFFFFFF8;
  v144 = (v141 + *(v146 + 80) + 80) & ~*(v146 + 80);
  v137 = *(v146 + 64) + v144;
  v150 = v0;
  v134 = v0 + v1;
  v6 = *(v0 + v1);

  v7 = (v0 + v1 + v151[5]);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v136 = type metadata accessor for AccountService();
  v135 = *(v136[-1].Description + 1);
  v135(v7 + v10, v136);
  v11 = v9[7];
  v133 = type metadata accessor for AppStateService();
  v132 = *(v133[-1].Description + 1);
  v132(v7 + v11, v133);
  v12 = v9[8];
  v131 = type metadata accessor for ArchivedSessionService();
  v130 = *(v131[-1].Description + 1);
  v130(v7 + v12, v131);
  v13 = v9[9];
  v129 = type metadata accessor for AssetService();
  v128 = *(v129[-1].Description + 1);
  v128(v7 + v13, v129);
  v14 = v9[10];
  v127 = type metadata accessor for AwardsService();
  v126 = *(v127[-1].Description + 1);
  v126(v7 + v14, v127);
  v15 = v9[11];
  v125 = type metadata accessor for BookmarkService();
  v124 = *(v125[-1].Description + 1);
  v124(v7 + v15, v125);
  v16 = v9[12];
  v123 = type metadata accessor for CatalogService();
  v122 = *(v123[-1].Description + 1);
  v122(v7 + v16, v123);
  v17 = v9[13];
  v121 = type metadata accessor for ConfigurationService();
  v120 = *(v121[-1].Description + 1);
  v120(v7 + v17, v121);
  v18 = v9[14];
  v119 = type metadata accessor for ContentAvailabilityService();
  v118 = *(v119[-1].Description + 1);
  v118(v7 + v18, v119);
  v19 = v9[15];
  v117 = type metadata accessor for EngagementService();
  v116 = *(v117[-1].Description + 1);
  v116(v7 + v19, v117);
  v20 = v9[16];
  v115 = type metadata accessor for HealthDataService();
  v114 = *(v115[-1].Description + 1);
  v114(v7 + v20, v115);
  v21 = v9[17];
  v113 = type metadata accessor for InteropService();
  v112 = *(v113[-1].Description + 1);
  v112(v7 + v21, v113);
  v22 = v9[18];
  v111 = type metadata accessor for LocalizationService();
  v110 = *(v111[-1].Description + 1);
  v110(v7 + v22, v111);
  v23 = v9[19];
  v109 = type metadata accessor for MarketingService();
  v108 = *(v109[-1].Description + 1);
  v108(v7 + v23, v109);
  v24 = v9[20];
  v107 = type metadata accessor for MetricService();
  v106 = *(v107[-1].Description + 1);
  v106(v7 + v24, v107);
  v25 = v9[21];
  v105 = type metadata accessor for PersonalizationService();
  v104 = *(v105[-1].Description + 1);
  v104(v7 + v25, v105);
  v26 = v9[22];
  v103 = type metadata accessor for PlayerService();
  v102 = *(v103[-1].Description + 1);
  v102(v7 + v26, v103);
  v27 = v9[23];
  v101 = type metadata accessor for PrivacyPreferenceService();
  v100 = *(v101[-1].Description + 1);
  v100(v7 + v27, v101);
  v28 = v9[24];
  v99 = type metadata accessor for RecommendationService();
  v98 = *(v99[-1].Description + 1);
  v98(v7 + v28, v99);
  v29 = v9[25];
  v97 = type metadata accessor for RemoteBrowsingService();
  v96 = *(v97[-1].Description + 1);
  v96(v7 + v29, v97);
  v30 = v9[26];
  v95 = type metadata accessor for SearchService();
  v94 = *(v95[-1].Description + 1);
  v94(v7 + v30, v95);
  v31 = v9[27];
  v88 = type metadata accessor for ServiceSubscriptionService();
  v93 = *(v88[-1].Description + 1);
  v93(v7 + v31, v88);
  v32 = v9[28];
  v86 = type metadata accessor for SessionService();
  v92 = *(v86[-1].Description + 1);
  v92(v7 + v32, v86);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v91 = *(v34[-1].Description + 1);
  v91(v7 + v33, v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v90 = *(v36[-1].Description + 1);
  v90(v7 + v35, v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v89 = *(v38[-1].Description + 1);
  v89(v7 + v37, v38);
  v39 = (v7 + v9[32]);
  v40 = v39[1];

  v41 = v39[3];

  v42 = v39[5];

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v87 = *(QueueService[-1].Description + 1);
  v87(v7 + v43, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v7 + v9[34]));
  v45 = *(v7 + v9[35]);

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v85 = *(v47[-1].Description + 1);
  v85(v7 + v46, v47);
  v48 = *(v134 + v151[6]);

  v49 = (v134 + v151[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v135(v52 + v9[6], v136);
  v132(v52 + v9[7], v133);
  v130(v52 + v9[8], v131);
  v128(v52 + v9[9], v129);
  v126(v52 + v9[10], v127);
  v124(v52 + v9[11], v125);
  v122(v52 + v9[12], v123);
  v120(v52 + v9[13], v121);
  v118(v52 + v9[14], v119);
  v116(v52 + v9[15], v117);
  v114(v52 + v9[16], v115);
  v112(v52 + v9[17], v113);
  v110(v52 + v9[18], v111);
  v108(v52 + v9[19], v109);
  v106(v52 + v9[20], v107);
  v104(v52 + v9[21], v105);
  v102(v52 + v9[22], v103);
  v100(v52 + v9[23], v101);
  v98(v52 + v9[24], v99);
  v96(v52 + v9[25], v97);
  v94(v52 + v9[26], v95);
  v93(v52 + v9[27], v88);
  v92(v52 + v9[28], v86);
  v91(v52 + v9[29], v34);
  v90(v52 + v9[30], v36);
  v89(v52 + v9[31], v38);
  v54 = (v52 + v9[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v87(v52 + v9[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v9[34]));
  v58 = *(v52 + v9[35]);

  v85(v52 + v9[36], v47);
  v59 = *(v134 + v151[8]);
  swift_unknownObjectRelease();
  if (*(v134 + v151[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v134 + v151[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = (v137 + 7) & 0xFFFFFFFFFFFFFFF8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = *(v150 + v138 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v64 = v150 + v138 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
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

  v78 = *(v150 + v143);

  (*(v142 + 8))(v150 + v140, v145);
  __swift_destroy_boxed_opaque_existential_1((v150 + v139));
  v79 = *(v150 + v141);
  swift_unknownObjectRelease();
  v80 = *(v150 + v141 + 24);

  v81 = *(v150 + v141 + 40);

  v82 = *(v150 + v141 + 56);

  v83 = *(v150 + v141 + 72);

  (*(v146 + 8))(v150 + v144, v147);
  if (*(v150 + v61 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v150 + v61));
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E5EC4C()
{
  v1 = sub_1E65D74E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v5 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E5ED18()
{
  v120 = type metadata accessor for AppComposer();
  v127 = *(*(v120 - 1) + 80);
  v1 = (v127 + 16) & ~v127;
  v123 = (*(*(v120 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978) - 8);
  v126 = *(v2 + 80);
  v124 = (v123 + 47) & 0xFFFFFFFFFFFFFFF8;
  v125 = *(v2 + 64);
  v128 = v0;
  v129 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v0 + v1 + v120[5]);
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
  v45 = *(v129 + v120[6]);

  v46 = (v129 + v120[7]);
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
  v56 = *(v129 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v129 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v124 + v126 + 16) & ~v126;
  v58 = (v129 + v120[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  __swift_destroy_boxed_opaque_existential_1((v128 + v123));
  v59 = *(v128 + v124 + 8);

  v60 = sub_1E65E20A8();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(v128 + v57, 1, v60))
  {
    (*(v61 + 8))(v128 + v57, v60);
  }

  v62 = (((v125 + v57 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = *(v128 + v62 + 8);

  v65 = *(v128 + v63);
  swift_unknownObjectRelease();
  v66 = *(v128 + v63 + 24);

  v67 = *(v128 + v63 + 40);

  v68 = *(v128 + v63 + 56);

  v69 = *(v128 + v63 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5E5FB58()
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

uint64_t sub_1E5E608E4()
{
  v1 = sub_1E65D74E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v6 = v0[10];

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E609CC()
{
  v1 = type metadata accessor for PageMetricsClick();
  v2 = (*(*(v1 - 1) + 80) + 176) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v5 = v0[11];

  v6 = v0[12];
  swift_unknownObjectRelease();
  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0 + v2;
  v12 = sub_1E65D9D78();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v2, 1, v12))
  {
    (*(v13 + 8))(v0 + v2, v12);
  }

  v14 = v1[5];
  v15 = sub_1E65D8C68();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = v1[6];
  v17 = sub_1E65D74E8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v11[v16], 1, v17))
  {
    (*(v18 + 8))(&v11[v16], v17);
  }

  v19 = *&v11[v1[7]];

  v20 = v1[8];
  v21 = sub_1E65DA208();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(&v11[v20], 1, v21))
  {
    (*(v22 + 8))(&v11[v20], v21);
  }

  v23 = *&v11[v1[9] + 8];

  v24 = *&v11[v1[10] + 8];

  v25 = *&v11[v1[11]];

  v26 = *&v11[v1[12] + 8];

  v27 = *&v11[v1[13] + 8];

  v28 = v1[14];
  v29 = sub_1E65D8F28();
  (*(*(v29 - 8) + 8))(&v11[v28], v29);
  v30 = v1[15];
  v31 = sub_1E65D9908();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(&v11[v30], 1, v31))
  {
    (*(v32 + 8))(&v11[v30], v31);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E60D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E3ED8();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E60D94(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E65E3EE8();
}

uint64_t sub_1E5E60E24()
{
  v1 = (type metadata accessor for GalleryDescriptor() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v126 = type metadata accessor for AppComposer();
  v124 = *(*(v126 - 1) + 80);
  v122 = *(*(v126 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = *(v6 + 8);

  v8 = v1[9];
  v9 = sub_1E65D72D8();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v0 + v3);
  swift_unknownObjectRelease();
  v11 = *(v0 + v3 + 24);

  v12 = *(v0 + v3 + 40);

  v13 = *(v0 + v3 + 56);

  v14 = *(v0 + v3 + 72);

  v125 = v0;
  v123 = (v3 + v124 + 80) & ~v124;
  v127 = v0 + v123;
  v15 = *(v0 + v123);

  v16 = (v0 + v123 + v126[5]);
  v17 = *v16;
  swift_unknownObjectRelease();
  v18 = type metadata accessor for AppEnvironment();
  v19 = v18[6];
  v121 = type metadata accessor for AccountService();
  v120 = *(v121[-1].Description + 1);
  v120(&v16[v19], v121);
  v20 = v18[7];
  v119 = type metadata accessor for AppStateService();
  v118 = *(v119[-1].Description + 1);
  v118(&v16[v20], v119);
  v21 = v18[8];
  v117 = type metadata accessor for ArchivedSessionService();
  v116 = *(v117[-1].Description + 1);
  v116(&v16[v21], v117);
  v22 = v18[9];
  v115 = type metadata accessor for AssetService();
  v114 = *(v115[-1].Description + 1);
  v114(&v16[v22], v115);
  v23 = v18[10];
  v113 = type metadata accessor for AwardsService();
  v112 = *(v113[-1].Description + 1);
  v112(&v16[v23], v113);
  v24 = v18[11];
  v111 = type metadata accessor for BookmarkService();
  v110 = *(v111[-1].Description + 1);
  v110(&v16[v24], v111);
  v25 = v18[12];
  v109 = type metadata accessor for CatalogService();
  v108 = *(v109[-1].Description + 1);
  v108(&v16[v25], v109);
  v26 = v18[13];
  v107 = type metadata accessor for ConfigurationService();
  v106 = *(v107[-1].Description + 1);
  v106(&v16[v26], v107);
  v27 = v18[14];
  v105 = type metadata accessor for ContentAvailabilityService();
  v104 = *(v105[-1].Description + 1);
  v104(&v16[v27], v105);
  v28 = v18[15];
  v103 = type metadata accessor for EngagementService();
  v102 = *(v103[-1].Description + 1);
  v102(&v16[v28], v103);
  v29 = v18[16];
  v101 = type metadata accessor for HealthDataService();
  v100 = *(v101[-1].Description + 1);
  v100(&v16[v29], v101);
  v30 = v18[17];
  v99 = type metadata accessor for InteropService();
  v98 = *(v99[-1].Description + 1);
  v98(&v16[v30], v99);
  v31 = v18[18];
  v97 = type metadata accessor for LocalizationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v16[v31], v97);
  v32 = v18[19];
  v95 = type metadata accessor for MarketingService();
  v94 = *(v95[-1].Description + 1);
  v94(&v16[v32], v95);
  v33 = v18[20];
  v93 = type metadata accessor for MetricService();
  v92 = *(v93[-1].Description + 1);
  v92(&v16[v33], v93);
  v34 = v18[21];
  v91 = type metadata accessor for PersonalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v16[v34], v91);
  v35 = v18[22];
  v89 = type metadata accessor for PlayerService();
  v88 = *(v89[-1].Description + 1);
  v88(&v16[v35], v89);
  v36 = v18[23];
  v87 = type metadata accessor for PrivacyPreferenceService();
  v86 = *(v87[-1].Description + 1);
  v86(&v16[v36], v87);
  v37 = v18[24];
  v85 = type metadata accessor for RecommendationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v16[v37], v85);
  v38 = v18[25];
  v83 = type metadata accessor for RemoteBrowsingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v16[v38], v83);
  v39 = v18[26];
  v81 = type metadata accessor for SearchService();
  v80 = *(v81[-1].Description + 1);
  v80(&v16[v39], v81);
  v40 = v18[27];
  v74 = type metadata accessor for ServiceSubscriptionService();
  v79 = *(v74[-1].Description + 1);
  v79(&v16[v40], v74);
  v41 = v18[28];
  v72 = type metadata accessor for SessionService();
  v78 = *(v72[-1].Description + 1);
  v78(&v16[v41], v72);
  v42 = v18[29];
  v43 = type metadata accessor for SharePlayService();
  v77 = *(v43[-1].Description + 1);
  v77(&v16[v42], v43);
  v44 = v18[30];
  v45 = type metadata accessor for SiriService();
  v76 = *(v45[-1].Description + 1);
  v76(&v16[v44], v45);
  v46 = v18[31];
  v47 = type metadata accessor for SyncService();
  v75 = *(v47[-1].Description + 1);
  v75(&v16[v46], v47);
  v48 = &v16[v18[32]];
  v49 = *(v48 + 1);

  v50 = *(v48 + 3);

  v51 = *(v48 + 5);

  v52 = v18[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v73 = *(QueueService[-1].Description + 1);
  v73(&v16[v52], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v16[v18[34]]);
  v54 = *&v16[v18[35]];

  v55 = v18[36];
  v56 = type metadata accessor for WorkoutPlanService();
  v57 = *(v56[-1].Description + 1);
  v57(&v16[v55], v56);
  v58 = *(v127 + v126[6]);

  v59 = (v127 + v126[7]);
  v60 = *v59;

  v61 = v59[1];

  v62 = v59 + *(type metadata accessor for AppDataItemResolver() + 24);
  v63 = *v62;
  swift_unknownObjectRelease();
  v120(&v62[v18[6]], v121);
  v118(&v62[v18[7]], v119);
  v116(&v62[v18[8]], v117);
  v114(&v62[v18[9]], v115);
  v112(&v62[v18[10]], v113);
  v110(&v62[v18[11]], v111);
  v108(&v62[v18[12]], v109);
  v106(&v62[v18[13]], v107);
  v104(&v62[v18[14]], v105);
  v102(&v62[v18[15]], v103);
  v100(&v62[v18[16]], v101);
  v98(&v62[v18[17]], v99);
  v96(&v62[v18[18]], v97);
  v94(&v62[v18[19]], v95);
  v92(&v62[v18[20]], v93);
  v90(&v62[v18[21]], v91);
  v88(&v62[v18[22]], v89);
  v86(&v62[v18[23]], v87);
  v84(&v62[v18[24]], v85);
  v82(&v62[v18[25]], v83);
  v80(&v62[v18[26]], v81);
  v79(&v62[v18[27]], v74);
  v78(&v62[v18[28]], v72);
  v77(&v62[v18[29]], v43);
  v76(&v62[v18[30]], v45);
  v75(&v62[v18[31]], v47);
  v64 = &v62[v18[32]];
  v65 = *(v64 + 1);

  v66 = *(v64 + 3);

  v67 = *(v64 + 5);

  v73(&v62[v18[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v62[v18[34]]);
  v68 = *&v62[v18[35]];

  v57(&v62[v18[36]], v56);
  v69 = *(v127 + v126[8]);
  swift_unknownObjectRelease();
  if (*(v127 + v126[9] + 8) >= 0xCuLL)
  {
  }

  v70 = (v127 + v126[10]);
  if (v70[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  __swift_destroy_boxed_opaque_existential_1((v125 + ((v122 + v123 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5E61BF0()
{
  v1 = type metadata accessor for PageMetricsClick();
  v2 = (*(*(v1 - 1) + 80) + 112) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 4);
  swift_unknownObjectRelease();
  v6 = *(v0 + 7);

  v7 = *(v0 + 9);

  v8 = *(v0 + 11);

  v9 = *(v0 + 13);

  v10 = &v0[v2];
  v11 = sub_1E65D9D78();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v0[v2], 1, v11))
  {
    (*(v12 + 8))(&v0[v2], v11);
  }

  v13 = v1[5];
  v14 = sub_1E65D8C68();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = v1[6];
  v16 = sub_1E65D74E8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(&v10[v15], 1, v16))
  {
    (*(v17 + 8))(&v10[v15], v16);
  }

  v18 = *&v10[v1[7]];

  v19 = v1[8];
  v20 = sub_1E65DA208();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v10[v19], 1, v20))
  {
    (*(v21 + 8))(&v10[v19], v20);
  }

  v22 = *&v10[v1[9] + 8];

  v23 = *&v10[v1[10] + 8];

  v24 = *&v10[v1[11]];

  v25 = *&v10[v1[12] + 8];

  v26 = *&v10[v1[13] + 8];

  v27 = v1[14];
  v28 = sub_1E65D8F28();
  (*(*(v28 - 8) + 8))(&v10[v27], v28);
  v29 = v1[15];
  v30 = sub_1E65D9908();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(&v10[v29], 1, v30))
  {
    (*(v31 + 8))(&v10[v29], v30);
  }

  __swift_destroy_boxed_opaque_existential_1(&v0[(v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8]);

  return swift_deallocObject();
}

uint64_t sub_1E5E61F88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E61FC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
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
    v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
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

    v16 = v10 + *(type metadata accessor for RemoveLibraryActionLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 == 2)
    {
      v20 = *(v16 + 8);

      v21 = *(v16 + 32);
    }

    else if (v17 == 1)
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v19 = sub_1E65D76A8();
      (*(*(v19 - 8) + 8))(v16 + v18, v19);
    }
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5E6227C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
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

    v11 = v5 + *(type metadata accessor for RemoveLibraryActionLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 == 2)
    {
      v15 = *(v11 + 8);

      v16 = *(v11 + 32);
    }

    else if (v12 == 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v14 = sub_1E65D76A8();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E624A4()
{
  v135 = type metadata accessor for AppComposer();
  v133 = *(*(v135 - 1) + 80);
  v1 = (v133 + 16) & ~v133;
  v130 = (*(*(v135 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v132 = *(v2 + 80);
  v131 = *(v2 + 64);
  v134 = v0;
  v127 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v0 + v1 + v135[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v129 = type metadata accessor for AccountService();
  v128 = *(v129[-1].Description + 1);
  v128(&v4[v7], v129);
  v8 = v6[7];
  v126 = type metadata accessor for AppStateService();
  v125 = *(v126[-1].Description + 1);
  v125(&v4[v8], v126);
  v9 = v6[8];
  v124 = type metadata accessor for ArchivedSessionService();
  v123 = *(v124[-1].Description + 1);
  v123(&v4[v9], v124);
  v10 = v6[9];
  v122 = type metadata accessor for AssetService();
  v121 = *(v122[-1].Description + 1);
  v121(&v4[v10], v122);
  v11 = v6[10];
  v120 = type metadata accessor for AwardsService();
  v119 = *(v120[-1].Description + 1);
  v119(&v4[v11], v120);
  v12 = v6[11];
  v118 = type metadata accessor for BookmarkService();
  v117 = *(v118[-1].Description + 1);
  v117(&v4[v12], v118);
  v13 = v6[12];
  v116 = type metadata accessor for CatalogService();
  v115 = *(v116[-1].Description + 1);
  v115(&v4[v13], v116);
  v14 = v6[13];
  v114 = type metadata accessor for ConfigurationService();
  v113 = *(v114[-1].Description + 1);
  v113(&v4[v14], v114);
  v15 = v6[14];
  v112 = type metadata accessor for ContentAvailabilityService();
  v111 = *(v112[-1].Description + 1);
  v111(&v4[v15], v112);
  v16 = v6[15];
  v110 = type metadata accessor for EngagementService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v16], v110);
  v17 = v6[16];
  v108 = type metadata accessor for HealthDataService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v17], v108);
  v18 = v6[17];
  v106 = type metadata accessor for InteropService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v18], v106);
  v19 = v6[18];
  v104 = type metadata accessor for LocalizationService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v19], v104);
  v20 = v6[19];
  v102 = type metadata accessor for MarketingService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v20], v102);
  v21 = v6[20];
  v100 = type metadata accessor for MetricService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v21], v100);
  v22 = v6[21];
  v98 = type metadata accessor for PersonalizationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v22], v98);
  v23 = v6[22];
  v96 = type metadata accessor for PlayerService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v23], v96);
  v24 = v6[23];
  v94 = type metadata accessor for PrivacyPreferenceService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v24], v94);
  v25 = v6[24];
  v92 = type metadata accessor for RecommendationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v25], v92);
  v26 = v6[25];
  v90 = type metadata accessor for RemoteBrowsingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v26], v90);
  v27 = v6[26];
  v88 = type metadata accessor for SearchService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v27], v88);
  v28 = v6[27];
  v86 = type metadata accessor for ServiceSubscriptionService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v28], v86);
  v29 = v6[28];
  v79 = type metadata accessor for SessionService();
  v84 = *(v79[-1].Description + 1);
  v84(&v4[v29], v79);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v83 = *(v31[-1].Description + 1);
  v83(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v82 = *(v33[-1].Description + 1);
  v82(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v81 = *(v35[-1].Description + 1);
  v81(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v80 = *(QueueService[-1].Description + 1);
  v80(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v78 = *(v44[-1].Description + 1);
  v78(&v4[v43], v44);
  v45 = *(v127 + v135[6]);

  v46 = (v127 + v135[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v128(&v49[v6[6]], v129);
  v125(&v49[v6[7]], v126);
  v123(&v49[v6[8]], v124);
  v121(&v49[v6[9]], v122);
  v119(&v49[v6[10]], v120);
  v117(&v49[v6[11]], v118);
  v115(&v49[v6[12]], v116);
  v113(&v49[v6[13]], v114);
  v111(&v49[v6[14]], v112);
  v109(&v49[v6[15]], v110);
  v107(&v49[v6[16]], v108);
  v105(&v49[v6[17]], v106);
  v103(&v49[v6[18]], v104);
  v101(&v49[v6[19]], v102);
  v99(&v49[v6[20]], v100);
  v97(&v49[v6[21]], v98);
  v95(&v49[v6[22]], v96);
  v93(&v49[v6[23]], v94);
  v91(&v49[v6[24]], v92);
  v89(&v49[v6[25]], v90);
  v87(&v49[v6[26]], v88);
  v85(&v49[v6[27]], v86);
  v84(&v49[v6[28]], v79);
  v83(&v49[v6[29]], v31);
  v82(&v49[v6[30]], v33);
  v81(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v80(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v78(&v49[v6[36]], v44);
  v56 = *(v127 + v135[8]);
  swift_unknownObjectRelease();
  if (*(v127 + v135[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v127 + v135[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = *(v134 + v130);
  swift_unknownObjectRelease();
  v59 = *(v134 + v130 + 24);

  v60 = *(v134 + v130 + 40);

  v61 = *(v134 + v130 + 56);

  v62 = *(v134 + v130 + 72);

  v63 = v134 + ((v130 + v132 + 80) & ~v132);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v63, *(v63 + 8), *(v63 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v65 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 == 2)
    {
      v69 = *(v65 + 8);

      v70 = *(v65 + 32);
    }

    else if (v66 == 1)
    {
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v68 = sub_1E65D76A8();
      (*(*(v68 - 8) + 8))(v65 + v67, v68);
    }

    v71 = v65 + *(type metadata accessor for RemoveLibraryActionLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      v75 = *(v71 + 8);

      v76 = *(v71 + 32);
    }

    else if (v72 == 1)
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v74 = sub_1E65D76A8();
      (*(*(v74 - 8) + 8))(v71 + v73, v74);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E633A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E633E0()
{
  v128 = type metadata accessor for AppComposer();
  v126 = *(*(v128 - 1) + 80);
  v1 = (v126 + 16) & ~v126;
  v2 = v1 + *(*(v128 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v125 = *(*(v3 - 8) + 80);
  v123 = v2 + v125;
  v124 = *(*(v3 - 8) + 64);
  v127 = v0;
  v120 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v128[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v122 = type metadata accessor for AccountService();
  v121 = *(v122[-1].Description + 1);
  v121(&v5[v8], v122);
  v9 = v7[7];
  v119 = type metadata accessor for AppStateService();
  v118 = *(v119[-1].Description + 1);
  v118(&v5[v9], v119);
  v10 = v7[8];
  v117 = type metadata accessor for ArchivedSessionService();
  v116 = *(v117[-1].Description + 1);
  v116(&v5[v10], v117);
  v11 = v7[9];
  v115 = type metadata accessor for AssetService();
  v114 = *(v115[-1].Description + 1);
  v114(&v5[v11], v115);
  v12 = v7[10];
  v113 = type metadata accessor for AwardsService();
  v112 = *(v113[-1].Description + 1);
  v112(&v5[v12], v113);
  v13 = v7[11];
  v111 = type metadata accessor for BookmarkService();
  v110 = *(v111[-1].Description + 1);
  v110(&v5[v13], v111);
  v14 = v7[12];
  v109 = type metadata accessor for CatalogService();
  v108 = *(v109[-1].Description + 1);
  v108(&v5[v14], v109);
  v15 = v7[13];
  v107 = type metadata accessor for ConfigurationService();
  v106 = *(v107[-1].Description + 1);
  v106(&v5[v15], v107);
  v16 = v7[14];
  v105 = type metadata accessor for ContentAvailabilityService();
  v104 = *(v105[-1].Description + 1);
  v104(&v5[v16], v105);
  v17 = v7[15];
  v103 = type metadata accessor for EngagementService();
  v102 = *(v103[-1].Description + 1);
  v102(&v5[v17], v103);
  v18 = v7[16];
  v101 = type metadata accessor for HealthDataService();
  v100 = *(v101[-1].Description + 1);
  v100(&v5[v18], v101);
  v19 = v7[17];
  v99 = type metadata accessor for InteropService();
  v98 = *(v99[-1].Description + 1);
  v98(&v5[v19], v99);
  v20 = v7[18];
  v97 = type metadata accessor for LocalizationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v5[v20], v97);
  v21 = v7[19];
  v95 = type metadata accessor for MarketingService();
  v94 = *(v95[-1].Description + 1);
  v94(&v5[v21], v95);
  v22 = v7[20];
  v93 = type metadata accessor for MetricService();
  v92 = *(v93[-1].Description + 1);
  v92(&v5[v22], v93);
  v23 = v7[21];
  v91 = type metadata accessor for PersonalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v5[v23], v91);
  v24 = v7[22];
  v89 = type metadata accessor for PlayerService();
  v88 = *(v89[-1].Description + 1);
  v88(&v5[v24], v89);
  v25 = v7[23];
  v87 = type metadata accessor for PrivacyPreferenceService();
  v86 = *(v87[-1].Description + 1);
  v86(&v5[v25], v87);
  v26 = v7[24];
  v85 = type metadata accessor for RecommendationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v5[v26], v85);
  v27 = v7[25];
  v83 = type metadata accessor for RemoteBrowsingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v5[v27], v83);
  v28 = v7[26];
  v81 = type metadata accessor for SearchService();
  v80 = *(v81[-1].Description + 1);
  v80(&v5[v28], v81);
  v29 = v7[27];
  v79 = type metadata accessor for ServiceSubscriptionService();
  v78 = *(v79[-1].Description + 1);
  v78(&v5[v29], v79);
  v30 = v7[28];
  v72 = type metadata accessor for SessionService();
  v77 = *(v72[-1].Description + 1);
  v77(&v5[v30], v72);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v76 = *(v32[-1].Description + 1);
  v76(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v75 = *(v34[-1].Description + 1);
  v75(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v74 = *(v36[-1].Description + 1);
  v74(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v73 = *(QueueService[-1].Description + 1);
  v73(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v71 = *(v45[-1].Description + 1);
  v71(&v5[v44], v45);
  v46 = *(v120 + v128[6]);

  v47 = (v120 + v128[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v121(&v50[v7[6]], v122);
  v118(&v50[v7[7]], v119);
  v116(&v50[v7[8]], v117);
  v114(&v50[v7[9]], v115);
  v112(&v50[v7[10]], v113);
  v110(&v50[v7[11]], v111);
  v108(&v50[v7[12]], v109);
  v106(&v50[v7[13]], v107);
  v104(&v50[v7[14]], v105);
  v102(&v50[v7[15]], v103);
  v100(&v50[v7[16]], v101);
  v98(&v50[v7[17]], v99);
  v96(&v50[v7[18]], v97);
  v94(&v50[v7[19]], v95);
  v92(&v50[v7[20]], v93);
  v90(&v50[v7[21]], v91);
  v88(&v50[v7[22]], v89);
  v86(&v50[v7[23]], v87);
  v84(&v50[v7[24]], v85);
  v82(&v50[v7[25]], v83);
  v80(&v50[v7[26]], v81);
  v78(&v50[v7[27]], v79);
  v77(&v50[v7[28]], v72);
  v76(&v50[v7[29]], v32);
  v75(&v50[v7[30]], v34);
  v74(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v73(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v71(&v50[v7[36]], v45);
  v57 = *(v120 + v128[8]);
  swift_unknownObjectRelease();
  if (*(v120 + v128[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v123 & ~v125;
  v59 = (v120 + v128[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *(v127 + v58 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v127 + v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v63 = swift_getEnumCaseMultiPayload();
    switch(v63)
    {
      case 2:
        v68 = *(v62 + 8);

        v69 = *(v62 + 32);

        break;
      case 1:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v62, v65);
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v67 = sub_1E65D76A8();
        (*(*(v67 - 8) + 8))(v62 + v66, v67);
        break;
      case 0:
        v64 = sub_1E65DE788();
        (*(*(v64 - 8) + 8))(v62, v64);
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v127 + ((v124 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5E6428C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + v2 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v10 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v11 = swift_getEnumCaseMultiPayload();
    switch(v11)
    {
      case 2:
        v16 = *(v10 + 8);

        v17 = *(v10 + 32);

        break;
      case 1:
        v13 = sub_1E65DE788();
        (*(*(v13 - 8) + 8))(v10, v13);
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v15 = sub_1E65D76A8();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);
        break;
      case 0:
        v12 = sub_1E65DE788();
        (*(*(v12 - 8) + 8))(v10, v12);
        break;
    }
  }

  v18 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v6 + 8) & ~v6;
  v20 = *(v0 + v18);

  (*(v5 + 8))(v0 + v19, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5E64528()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v3 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
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
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E64720()
{
  v126 = type metadata accessor for AppComposer();
  v121 = *(*(v126 - 1) + 80);
  v119 = *(*(v126 - 1) + 64);
  v1 = sub_1E65DEC18();
  v123 = *(v1 - 8);
  v124 = v1;
  v118 = *(v123 + 80);
  v122 = *(v123 + 64);
  v125 = v0;
  v120 = (v121 + 16) & ~v121;
  v115 = v0 + v120;
  v2 = *(v0 + v120);

  v3 = (v0 + v120 + v126[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v3[v6], v117);
  v7 = v5[7];
  v114 = type metadata accessor for AppStateService();
  v113 = *(v114[-1].Description + 1);
  v113(&v3[v7], v114);
  v8 = v5[8];
  v112 = type metadata accessor for ArchivedSessionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v3[v8], v112);
  v9 = v5[9];
  v110 = type metadata accessor for AssetService();
  v109 = *(v110[-1].Description + 1);
  v109(&v3[v9], v110);
  v10 = v5[10];
  v108 = type metadata accessor for AwardsService();
  v107 = *(v108[-1].Description + 1);
  v107(&v3[v10], v108);
  v11 = v5[11];
  v106 = type metadata accessor for BookmarkService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v11], v106);
  v12 = v5[12];
  v104 = type metadata accessor for CatalogService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v12], v104);
  v13 = v5[13];
  v102 = type metadata accessor for ConfigurationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v13], v102);
  v14 = v5[14];
  v100 = type metadata accessor for ContentAvailabilityService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v14], v100);
  v15 = v5[15];
  v98 = type metadata accessor for EngagementService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v15], v98);
  v16 = v5[16];
  v96 = type metadata accessor for HealthDataService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v16], v96);
  v17 = v5[17];
  v94 = type metadata accessor for InteropService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v17], v94);
  v18 = v5[18];
  v92 = type metadata accessor for LocalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v18], v92);
  v19 = v5[19];
  v90 = type metadata accessor for MarketingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v19], v90);
  v20 = v5[20];
  v88 = type metadata accessor for MetricService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v20], v88);
  v21 = v5[21];
  v86 = type metadata accessor for PersonalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v21], v86);
  v22 = v5[22];
  v84 = type metadata accessor for PlayerService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v22], v84);
  v23 = v5[23];
  v82 = type metadata accessor for PrivacyPreferenceService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v23], v82);
  v24 = v5[24];
  v80 = type metadata accessor for RecommendationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v24], v80);
  v25 = v5[25];
  v78 = type metadata accessor for RemoteBrowsingService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v25], v78);
  v26 = v5[26];
  v76 = type metadata accessor for SearchService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v26], v76);
  v27 = v5[27];
  v74 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v27], v74);
  v28 = v5[28];
  v67 = type metadata accessor for SessionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v3[v28], v67);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v71 = *(v30[-1].Description + 1);
  v71(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v70 = *(v32[-1].Description + 1);
  v70(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v69 = *(v34[-1].Description + 1);
  v69(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v66 = *(v43[-1].Description + 1);
  v66(&v3[v42], v43);
  v44 = *(v115 + v126[6]);

  v45 = (v115 + v126[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v116(&v48[v5[6]], v117);
  v113(&v48[v5[7]], v114);
  v111(&v48[v5[8]], v112);
  v109(&v48[v5[9]], v110);
  v107(&v48[v5[10]], v108);
  v105(&v48[v5[11]], v106);
  v103(&v48[v5[12]], v104);
  v101(&v48[v5[13]], v102);
  v99(&v48[v5[14]], v100);
  v97(&v48[v5[15]], v98);
  v95(&v48[v5[16]], v96);
  v93(&v48[v5[17]], v94);
  v91(&v48[v5[18]], v92);
  v89(&v48[v5[19]], v90);
  v87(&v48[v5[20]], v88);
  v85(&v48[v5[21]], v86);
  v83(&v48[v5[22]], v84);
  v81(&v48[v5[23]], v82);
  v79(&v48[v5[24]], v80);
  v77(&v48[v5[25]], v78);
  v75(&v48[v5[26]], v76);
  v73(&v48[v5[27]], v74);
  v72(&v48[v5[28]], v67);
  v71(&v48[v5[29]], v30);
  v70(&v48[v5[30]], v32);
  v69(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v68(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v66(&v48[v5[36]], v43);
  v55 = *(v115 + v126[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v126[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v115 + v126[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v119 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + v118 + 80) & ~v118;
  v59 = (v125 + v57);
  v60 = *(v125 + v57);
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  (*(v123 + 8))(v125 + v58, v124);

  return swift_deallocObject();
}

uint64_t sub_1E5E654B0()
{
  v161 = type metadata accessor for AppComposer();
  v159 = *(*(v161 - 1) + 80);
  v1 = (v159 + 16) & ~v159;
  v2 = v1 + *(*(v161 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v158 = *(*(v3 - 8) + 80);
  v156 = v2 + v158;
  v157 = *(*(v3 - 8) + 64);
  v160 = v0;
  v153 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v161[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v155 = type metadata accessor for AccountService();
  v154 = *(v155[-1].Description + 1);
  v154(&v5[v8], v155);
  v9 = v7[7];
  v152 = type metadata accessor for AppStateService();
  v151 = *(v152[-1].Description + 1);
  v151(&v5[v9], v152);
  v10 = v7[8];
  v150 = type metadata accessor for ArchivedSessionService();
  v149 = *(v150[-1].Description + 1);
  v149(&v5[v10], v150);
  v11 = v7[9];
  v148 = type metadata accessor for AssetService();
  v147 = *(v148[-1].Description + 1);
  v147(&v5[v11], v148);
  v12 = v7[10];
  v146 = type metadata accessor for AwardsService();
  v145 = *(v146[-1].Description + 1);
  v145(&v5[v12], v146);
  v13 = v7[11];
  v144 = type metadata accessor for BookmarkService();
  v143 = *(v144[-1].Description + 1);
  v143(&v5[v13], v144);
  v14 = v7[12];
  v142 = type metadata accessor for CatalogService();
  v141 = *(v142[-1].Description + 1);
  v141(&v5[v14], v142);
  v15 = v7[13];
  v140 = type metadata accessor for ConfigurationService();
  v139 = *(v140[-1].Description + 1);
  v139(&v5[v15], v140);
  v16 = v7[14];
  v138 = type metadata accessor for ContentAvailabilityService();
  v137 = *(v138[-1].Description + 1);
  v137(&v5[v16], v138);
  v17 = v7[15];
  v136 = type metadata accessor for EngagementService();
  v135 = *(v136[-1].Description + 1);
  v135(&v5[v17], v136);
  v18 = v7[16];
  v134 = type metadata accessor for HealthDataService();
  v133 = *(v134[-1].Description + 1);
  v133(&v5[v18], v134);
  v19 = v7[17];
  v132 = type metadata accessor for InteropService();
  v131 = *(v132[-1].Description + 1);
  v131(&v5[v19], v132);
  v20 = v7[18];
  v130 = type metadata accessor for LocalizationService();
  v129 = *(v130[-1].Description + 1);
  v129(&v5[v20], v130);
  v21 = v7[19];
  v128 = type metadata accessor for MarketingService();
  v127 = *(v128[-1].Description + 1);
  v127(&v5[v21], v128);
  v22 = v7[20];
  v126 = type metadata accessor for MetricService();
  v125 = *(v126[-1].Description + 1);
  v125(&v5[v22], v126);
  v23 = v7[21];
  v124 = type metadata accessor for PersonalizationService();
  v123 = *(v124[-1].Description + 1);
  v123(&v5[v23], v124);
  v24 = v7[22];
  v122 = type metadata accessor for PlayerService();
  v121 = *(v122[-1].Description + 1);
  v121(&v5[v24], v122);
  v25 = v7[23];
  v120 = type metadata accessor for PrivacyPreferenceService();
  v119 = *(v120[-1].Description + 1);
  v119(&v5[v25], v120);
  v26 = v7[24];
  v118 = type metadata accessor for RecommendationService();
  v117 = *(v118[-1].Description + 1);
  v117(&v5[v26], v118);
  v27 = v7[25];
  v116 = type metadata accessor for RemoteBrowsingService();
  v115 = *(v116[-1].Description + 1);
  v115(&v5[v27], v116);
  v28 = v7[26];
  v114 = type metadata accessor for SearchService();
  v113 = *(v114[-1].Description + 1);
  v113(&v5[v28], v114);
  v29 = v7[27];
  v112 = type metadata accessor for ServiceSubscriptionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v5[v29], v112);
  v30 = v7[28];
  v105 = type metadata accessor for SessionService();
  v110 = *(v105[-1].Description + 1);
  v110(&v5[v30], v105);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v109 = *(v32[-1].Description + 1);
  v109(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v108 = *(v34[-1].Description + 1);
  v108(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v107 = *(v36[-1].Description + 1);
  v107(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v106 = *(QueueService[-1].Description + 1);
  v106(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v104 = *(v45[-1].Description + 1);
  v104(&v5[v44], v45);
  v46 = *(v153 + v161[6]);

  v47 = (v153 + v161[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v154(&v50[v7[6]], v155);
  v151(&v50[v7[7]], v152);
  v149(&v50[v7[8]], v150);
  v147(&v50[v7[9]], v148);
  v145(&v50[v7[10]], v146);
  v143(&v50[v7[11]], v144);
  v141(&v50[v7[12]], v142);
  v139(&v50[v7[13]], v140);
  v137(&v50[v7[14]], v138);
  v135(&v50[v7[15]], v136);
  v133(&v50[v7[16]], v134);
  v131(&v50[v7[17]], v132);
  v129(&v50[v7[18]], v130);
  v127(&v50[v7[19]], v128);
  v125(&v50[v7[20]], v126);
  v123(&v50[v7[21]], v124);
  v121(&v50[v7[22]], v122);
  v119(&v50[v7[23]], v120);
  v117(&v50[v7[24]], v118);
  v115(&v50[v7[25]], v116);
  v113(&v50[v7[26]], v114);
  v111(&v50[v7[27]], v112);
  v110(&v50[v7[28]], v105);
  v109(&v50[v7[29]], v32);
  v108(&v50[v7[30]], v34);
  v107(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v106(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v104(&v50[v7[36]], v45);
  v57 = *(v153 + v161[8]);
  swift_unknownObjectRelease();
  if (*(v153 + v161[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v156 & ~v158;
  v59 = (v153 + v161[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *(v160 + v58 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v160 + v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v63 = swift_getEnumCaseMultiPayload();
    switch(v63)
    {
      case 2:
        v68 = *(v62 + 8);

        v69 = *(v62 + 32);

        break;
      case 1:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v62, v65);
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v67 = sub_1E65D76A8();
        (*(*(v67 - 8) + 8))(v62 + v66, v67);
        break;
      case 0:
        v64 = sub_1E65DE788();
        (*(*(v64 - 8) + 8))(v62, v64);
        break;
    }

    State = type metadata accessor for WorkoutActionsMenuLoadState();
    v71 = v62 + State[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      v75 = *(v71 + 8);

      v76 = *(v71 + 32);
    }

    else if (v72 == 1)
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v74 = sub_1E65D76A8();
      (*(*(v74 - 8) + 8))(v71 + v73, v74);
    }

    v77 = v62 + State[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v78 = swift_getEnumCaseMultiPayload();
    if (v78 == 2)
    {
      v81 = *(v77 + 8);

      v82 = *(v77 + 32);
    }

    else if (v78 == 1)
    {
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v80 = sub_1E65D76A8();
      (*(*(v80 - 8) + 8))(v77 + v79, v80);
    }

    v83 = v62 + State[7];
    v84 = swift_getEnumCaseMultiPayload();
    if (v84 == 2)
    {
      v87 = *(v83 + 8);

      v88 = *(v83 + 32);
    }

    else if (v84 == 1)
    {
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v86 = sub_1E65D76A8();
      (*(*(v86 - 8) + 8))(v83 + v85, v86);
    }

    v89 = v62 + State[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v90 = swift_getEnumCaseMultiPayload();
    switch(v90)
    {
      case 2:
        v95 = *(v89 + 8);

        v96 = *(v89 + 32);

        break;
      case 1:
        v92 = sub_1E65DE508();
        (*(*(v92 - 8) + 8))(v89, v92);
        v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v94 = sub_1E65D76A8();
        (*(*(v94 - 8) + 8))(v89 + v93, v94);
        break;
      case 0:
        v91 = sub_1E65DE508();
        (*(*(v91 - 8) + 8))(v89, v91);
        break;
    }
  }

  v97 = (v160 + ((v157 + v58 + 7) & 0xFFFFFFFFFFFFFFF8));
  v98 = *v97;
  swift_unknownObjectRelease();
  v99 = v97[3];

  v100 = v97[5];

  v101 = v97[7];

  v102 = v97[9];

  return swift_deallocObject();
}

uint64_t sub_1E5E66664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E3EA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E66690(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E65E3EB8();
}

uint64_t sub_1E5E666BC()
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

uint64_t sub_1E5E67618()
{
  v140 = type metadata accessor for AppComposer();
  v138 = *(*(v140 - 1) + 80);
  v1 = (v138 + 16) & ~v138;
  v2 = v1 + *(*(v140 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v137 = *(*(v3 - 8) + 80);
  v134 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v135 = *(v4 - 8);
  v136 = v4;
  v133 = *(v135 + 80);
  v132 = *(v135 + 64);
  v139 = v0;
  v129 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v140[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v131 = type metadata accessor for AccountService();
  v130 = *(v131[-1].Description + 1);
  v130(v6 + v9, v131);
  v10 = v8[7];
  v128 = type metadata accessor for AppStateService();
  v127 = *(v128[-1].Description + 1);
  v127(v6 + v10, v128);
  v11 = v8[8];
  v126 = type metadata accessor for ArchivedSessionService();
  v125 = *(v126[-1].Description + 1);
  v125(v6 + v11, v126);
  v12 = v8[9];
  v124 = type metadata accessor for AssetService();
  v123 = *(v124[-1].Description + 1);
  v123(v6 + v12, v124);
  v13 = v8[10];
  v122 = type metadata accessor for AwardsService();
  v121 = *(v122[-1].Description + 1);
  v121(v6 + v13, v122);
  v14 = v8[11];
  v120 = type metadata accessor for BookmarkService();
  v119 = *(v120[-1].Description + 1);
  v119(v6 + v14, v120);
  v15 = v8[12];
  v118 = type metadata accessor for CatalogService();
  v117 = *(v118[-1].Description + 1);
  v117(v6 + v15, v118);
  v16 = v8[13];
  v116 = type metadata accessor for ConfigurationService();
  v115 = *(v116[-1].Description + 1);
  v115(v6 + v16, v116);
  v17 = v8[14];
  v114 = type metadata accessor for ContentAvailabilityService();
  v113 = *(v114[-1].Description + 1);
  v113(v6 + v17, v114);
  v18 = v8[15];
  v112 = type metadata accessor for EngagementService();
  v111 = *(v112[-1].Description + 1);
  v111(v6 + v18, v112);
  v19 = v8[16];
  v110 = type metadata accessor for HealthDataService();
  v109 = *(v110[-1].Description + 1);
  v109(v6 + v19, v110);
  v20 = v8[17];
  v108 = type metadata accessor for InteropService();
  v107 = *(v108[-1].Description + 1);
  v107(v6 + v20, v108);
  v21 = v8[18];
  v106 = type metadata accessor for LocalizationService();
  v105 = *(v106[-1].Description + 1);
  v105(v6 + v21, v106);
  v22 = v8[19];
  v104 = type metadata accessor for MarketingService();
  v103 = *(v104[-1].Description + 1);
  v103(v6 + v22, v104);
  v23 = v8[20];
  v102 = type metadata accessor for MetricService();
  v101 = *(v102[-1].Description + 1);
  v101(v6 + v23, v102);
  v24 = v8[21];
  v100 = type metadata accessor for PersonalizationService();
  v99 = *(v100[-1].Description + 1);
  v99(v6 + v24, v100);
  v25 = v8[22];
  v98 = type metadata accessor for PlayerService();
  v97 = *(v98[-1].Description + 1);
  v97(v6 + v25, v98);
  v26 = v8[23];
  v96 = type metadata accessor for PrivacyPreferenceService();
  v95 = *(v96[-1].Description + 1);
  v95(v6 + v26, v96);
  v27 = v8[24];
  v94 = type metadata accessor for RecommendationService();
  v93 = *(v94[-1].Description + 1);
  v93(v6 + v27, v94);
  v28 = v8[25];
  v92 = type metadata accessor for RemoteBrowsingService();
  v91 = *(v92[-1].Description + 1);
  v91(v6 + v28, v92);
  v29 = v8[26];
  v90 = type metadata accessor for SearchService();
  v89 = *(v90[-1].Description + 1);
  v89(v6 + v29, v90);
  v30 = v8[27];
  v88 = type metadata accessor for ServiceSubscriptionService();
  v87 = *(v88[-1].Description + 1);
  v87(v6 + v30, v88);
  v31 = v8[28];
  v81 = type metadata accessor for SessionService();
  v86 = *(v81[-1].Description + 1);
  v86(v6 + v31, v81);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v85 = *(v33[-1].Description + 1);
  v85(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v84 = *(v35[-1].Description + 1);
  v84(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v83 = *(v37[-1].Description + 1);
  v83(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v82 = *(QueueService[-1].Description + 1);
  v82(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v80 = *(v46[-1].Description + 1);
  v80(v6 + v45, v46);
  v47 = *(v129 + v140[6]);

  v48 = (v129 + v140[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v130(v51 + v8[6], v131);
  v127(v51 + v8[7], v128);
  v125(v51 + v8[8], v126);
  v123(v51 + v8[9], v124);
  v121(v51 + v8[10], v122);
  v119(v51 + v8[11], v120);
  v117(v51 + v8[12], v118);
  v115(v51 + v8[13], v116);
  v113(v51 + v8[14], v114);
  v111(v51 + v8[15], v112);
  v109(v51 + v8[16], v110);
  v107(v51 + v8[17], v108);
  v105(v51 + v8[18], v106);
  v103(v51 + v8[19], v104);
  v101(v51 + v8[20], v102);
  v99(v51 + v8[21], v100);
  v97(v51 + v8[22], v98);
  v95(v51 + v8[23], v96);
  v93(v51 + v8[24], v94);
  v91(v51 + v8[25], v92);
  v89(v51 + v8[26], v90);
  v87(v51 + v8[27], v88);
  v86(v51 + v8[28], v81);
  v85(v51 + v8[29], v33);
  v84(v51 + v8[30], v35);
  v83(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v82(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v80(v51 + v8[36], v46);
  v58 = *(v129 + v140[8]);
  swift_unknownObjectRelease();
  if (*(v129 + v140[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v137) & ~v137;
  v60 = (v129 + v140[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v139 + v59;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v61, *(v61 + 8), *(v61 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v64 = swift_getEnumCaseMultiPayload();
    if (v64 == 2)
    {
      v67 = *(v63 + 8);

      v68 = *(v63 + 32);
    }

    else if (v64 == 1)
    {
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v66 = sub_1E65D76A8();
      (*(*(v66 - 8) + 8))(v63 + v65, v66);
    }
  }

  v69 = (v59 + v134 + v133) & ~v133;
  v70 = (v132 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 87) & 0xFFFFFFFFFFFFFFF8;
  (*(v135 + 8))(v139 + v69, v136);
  v72 = (v139 + v70);
  v73 = *v72;
  swift_unknownObjectRelease();
  v74 = v72[3];

  v75 = v72[5];

  v76 = v72[7];

  v77 = v72[9];

  v78 = *(v139 + v71 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5E68528()
{
  v137 = type metadata accessor for AppComposer();
  v135 = *(*(v137 - 1) + 80);
  v1 = (v135 + 16) & ~v135;
  v2 = v1 + *(*(v137 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v134 = *(*(v3 - 8) + 80);
  v131 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v132 = *(v4 - 8);
  v133 = v4;
  v130 = *(v132 + 80);
  v129 = *(v132 + 64);
  v136 = v0;
  v126 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v137[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v128 = type metadata accessor for AccountService();
  v127 = *(v128[-1].Description + 1);
  v127(v6 + v9, v128);
  v10 = v8[7];
  v125 = type metadata accessor for AppStateService();
  v124 = *(v125[-1].Description + 1);
  v124(v6 + v10, v125);
  v11 = v8[8];
  v123 = type metadata accessor for ArchivedSessionService();
  v122 = *(v123[-1].Description + 1);
  v122(v6 + v11, v123);
  v12 = v8[9];
  v121 = type metadata accessor for AssetService();
  v120 = *(v121[-1].Description + 1);
  v120(v6 + v12, v121);
  v13 = v8[10];
  v119 = type metadata accessor for AwardsService();
  v118 = *(v119[-1].Description + 1);
  v118(v6 + v13, v119);
  v14 = v8[11];
  v117 = type metadata accessor for BookmarkService();
  v116 = *(v117[-1].Description + 1);
  v116(v6 + v14, v117);
  v15 = v8[12];
  v115 = type metadata accessor for CatalogService();
  v114 = *(v115[-1].Description + 1);
  v114(v6 + v15, v115);
  v16 = v8[13];
  v113 = type metadata accessor for ConfigurationService();
  v112 = *(v113[-1].Description + 1);
  v112(v6 + v16, v113);
  v17 = v8[14];
  v111 = type metadata accessor for ContentAvailabilityService();
  v110 = *(v111[-1].Description + 1);
  v110(v6 + v17, v111);
  v18 = v8[15];
  v109 = type metadata accessor for EngagementService();
  v108 = *(v109[-1].Description + 1);
  v108(v6 + v18, v109);
  v19 = v8[16];
  v107 = type metadata accessor for HealthDataService();
  v106 = *(v107[-1].Description + 1);
  v106(v6 + v19, v107);
  v20 = v8[17];
  v105 = type metadata accessor for InteropService();
  v104 = *(v105[-1].Description + 1);
  v104(v6 + v20, v105);
  v21 = v8[18];
  v103 = type metadata accessor for LocalizationService();
  v102 = *(v103[-1].Description + 1);
  v102(v6 + v21, v103);
  v22 = v8[19];
  v101 = type metadata accessor for MarketingService();
  v100 = *(v101[-1].Description + 1);
  v100(v6 + v22, v101);
  v23 = v8[20];
  v99 = type metadata accessor for MetricService();
  v98 = *(v99[-1].Description + 1);
  v98(v6 + v23, v99);
  v24 = v8[21];
  v97 = type metadata accessor for PersonalizationService();
  v96 = *(v97[-1].Description + 1);
  v96(v6 + v24, v97);
  v25 = v8[22];
  v95 = type metadata accessor for PlayerService();
  v94 = *(v95[-1].Description + 1);
  v94(v6 + v25, v95);
  v26 = v8[23];
  v93 = type metadata accessor for PrivacyPreferenceService();
  v92 = *(v93[-1].Description + 1);
  v92(v6 + v26, v93);
  v27 = v8[24];
  v91 = type metadata accessor for RecommendationService();
  v90 = *(v91[-1].Description + 1);
  v90(v6 + v27, v91);
  v28 = v8[25];
  v89 = type metadata accessor for RemoteBrowsingService();
  v88 = *(v89[-1].Description + 1);
  v88(v6 + v28, v89);
  v29 = v8[26];
  v87 = type metadata accessor for SearchService();
  v86 = *(v87[-1].Description + 1);
  v86(v6 + v29, v87);
  v30 = v8[27];
  v85 = type metadata accessor for ServiceSubscriptionService();
  v84 = *(v85[-1].Description + 1);
  v84(v6 + v30, v85);
  v31 = v8[28];
  v78 = type metadata accessor for SessionService();
  v83 = *(v78[-1].Description + 1);
  v83(v6 + v31, v78);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v82 = *(v33[-1].Description + 1);
  v82(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v81 = *(v35[-1].Description + 1);
  v81(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v80 = *(v37[-1].Description + 1);
  v80(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v79 = *(QueueService[-1].Description + 1);
  v79(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v77 = *(v46[-1].Description + 1);
  v77(v6 + v45, v46);
  v47 = *(v126 + v137[6]);

  v48 = (v126 + v137[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v127(v51 + v8[6], v128);
  v124(v51 + v8[7], v125);
  v122(v51 + v8[8], v123);
  v120(v51 + v8[9], v121);
  v118(v51 + v8[10], v119);
  v116(v51 + v8[11], v117);
  v114(v51 + v8[12], v115);
  v112(v51 + v8[13], v113);
  v110(v51 + v8[14], v111);
  v108(v51 + v8[15], v109);
  v106(v51 + v8[16], v107);
  v104(v51 + v8[17], v105);
  v102(v51 + v8[18], v103);
  v100(v51 + v8[19], v101);
  v98(v51 + v8[20], v99);
  v96(v51 + v8[21], v97);
  v94(v51 + v8[22], v95);
  v92(v51 + v8[23], v93);
  v90(v51 + v8[24], v91);
  v88(v51 + v8[25], v89);
  v86(v51 + v8[26], v87);
  v84(v51 + v8[27], v85);
  v83(v51 + v8[28], v78);
  v82(v51 + v8[29], v33);
  v81(v51 + v8[30], v35);
  v80(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v79(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v77(v51 + v8[36], v46);
  v58 = *(v126 + v137[8]);
  swift_unknownObjectRelease();
  if (*(v126 + v137[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v134) & ~v134;
  v60 = (v126 + v137[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v136 + v59;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v61, *(v61 + 8), *(v61 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v64 = swift_getEnumCaseMultiPayload();
    if (v64 == 2)
    {
      v67 = *(v63 + 8);

      v68 = *(v63 + 32);
    }

    else if (v64 == 1)
    {
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v66 = sub_1E65D76A8();
      (*(*(v66 - 8) + 8))(v63 + v65, v66);
    }
  }

  v69 = (v131 + v59 + v130 + 1) & ~v130;
  v70 = (v129 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v132 + 8))(v136 + v69, v133);
  v71 = *(v136 + v70);
  swift_unknownObjectRelease();
  v72 = *(v136 + v70 + 24);

  v73 = *(v136 + v70 + 40);

  v74 = *(v136 + v70 + 56);

  v75 = *(v136 + v70 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5E69424()
{
  v142 = type metadata accessor for AppComposer();
  v140 = *(*(v142 - 1) + 80);
  v1 = (v140 + 16) & ~v140;
  v2 = v1 + *(*(v142 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v139 = *(*(v3 - 8) + 80);
  v137 = v2 + v139;
  v138 = *(*(v3 - 8) + 64);
  v141 = v0;
  v134 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v142[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v136 = type metadata accessor for AccountService();
  v135 = *(v136[-1].Description + 1);
  v135(&v5[v8], v136);
  v9 = v7[7];
  v133 = type metadata accessor for AppStateService();
  v132 = *(v133[-1].Description + 1);
  v132(&v5[v9], v133);
  v10 = v7[8];
  v131 = type metadata accessor for ArchivedSessionService();
  v130 = *(v131[-1].Description + 1);
  v130(&v5[v10], v131);
  v11 = v7[9];
  v129 = type metadata accessor for AssetService();
  v128 = *(v129[-1].Description + 1);
  v128(&v5[v11], v129);
  v12 = v7[10];
  v127 = type metadata accessor for AwardsService();
  v126 = *(v127[-1].Description + 1);
  v126(&v5[v12], v127);
  v13 = v7[11];
  v125 = type metadata accessor for BookmarkService();
  v124 = *(v125[-1].Description + 1);
  v124(&v5[v13], v125);
  v14 = v7[12];
  v123 = type metadata accessor for CatalogService();
  v122 = *(v123[-1].Description + 1);
  v122(&v5[v14], v123);
  v15 = v7[13];
  v121 = type metadata accessor for ConfigurationService();
  v120 = *(v121[-1].Description + 1);
  v120(&v5[v15], v121);
  v16 = v7[14];
  v119 = type metadata accessor for ContentAvailabilityService();
  v118 = *(v119[-1].Description + 1);
  v118(&v5[v16], v119);
  v17 = v7[15];
  v117 = type metadata accessor for EngagementService();
  v116 = *(v117[-1].Description + 1);
  v116(&v5[v17], v117);
  v18 = v7[16];
  v115 = type metadata accessor for HealthDataService();
  v114 = *(v115[-1].Description + 1);
  v114(&v5[v18], v115);
  v19 = v7[17];
  v113 = type metadata accessor for InteropService();
  v112 = *(v113[-1].Description + 1);
  v112(&v5[v19], v113);
  v20 = v7[18];
  v111 = type metadata accessor for LocalizationService();
  v110 = *(v111[-1].Description + 1);
  v110(&v5[v20], v111);
  v21 = v7[19];
  v109 = type metadata accessor for MarketingService();
  v108 = *(v109[-1].Description + 1);
  v108(&v5[v21], v109);
  v22 = v7[20];
  v107 = type metadata accessor for MetricService();
  v106 = *(v107[-1].Description + 1);
  v106(&v5[v22], v107);
  v23 = v7[21];
  v105 = type metadata accessor for PersonalizationService();
  v104 = *(v105[-1].Description + 1);
  v104(&v5[v23], v105);
  v24 = v7[22];
  v103 = type metadata accessor for PlayerService();
  v102 = *(v103[-1].Description + 1);
  v102(&v5[v24], v103);
  v25 = v7[23];
  v101 = type metadata accessor for PrivacyPreferenceService();
  v100 = *(v101[-1].Description + 1);
  v100(&v5[v25], v101);
  v26 = v7[24];
  v99 = type metadata accessor for RecommendationService();
  v98 = *(v99[-1].Description + 1);
  v98(&v5[v26], v99);
  v27 = v7[25];
  v97 = type metadata accessor for RemoteBrowsingService();
  v96 = *(v97[-1].Description + 1);
  v96(&v5[v27], v97);
  v28 = v7[26];
  v95 = type metadata accessor for SearchService();
  v94 = *(v95[-1].Description + 1);
  v94(&v5[v28], v95);
  v29 = v7[27];
  v93 = type metadata accessor for ServiceSubscriptionService();
  v92 = *(v93[-1].Description + 1);
  v92(&v5[v29], v93);
  v30 = v7[28];
  v86 = type metadata accessor for SessionService();
  v91 = *(v86[-1].Description + 1);
  v91(&v5[v30], v86);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v90 = *(v32[-1].Description + 1);
  v90(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v89 = *(v34[-1].Description + 1);
  v89(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v88 = *(v36[-1].Description + 1);
  v88(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v87 = *(QueueService[-1].Description + 1);
  v87(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v85 = *(v45[-1].Description + 1);
  v85(&v5[v44], v45);
  v46 = *(v134 + v142[6]);

  v47 = (v134 + v142[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v135(&v50[v7[6]], v136);
  v132(&v50[v7[7]], v133);
  v130(&v50[v7[8]], v131);
  v128(&v50[v7[9]], v129);
  v126(&v50[v7[10]], v127);
  v124(&v50[v7[11]], v125);
  v122(&v50[v7[12]], v123);
  v120(&v50[v7[13]], v121);
  v118(&v50[v7[14]], v119);
  v116(&v50[v7[15]], v117);
  v114(&v50[v7[16]], v115);
  v112(&v50[v7[17]], v113);
  v110(&v50[v7[18]], v111);
  v108(&v50[v7[19]], v109);
  v106(&v50[v7[20]], v107);
  v104(&v50[v7[21]], v105);
  v102(&v50[v7[22]], v103);
  v100(&v50[v7[23]], v101);
  v98(&v50[v7[24]], v99);
  v96(&v50[v7[25]], v97);
  v94(&v50[v7[26]], v95);
  v92(&v50[v7[27]], v93);
  v91(&v50[v7[28]], v86);
  v90(&v50[v7[29]], v32);
  v89(&v50[v7[30]], v34);
  v88(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v87(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v85(&v50[v7[36]], v45);
  v57 = *(v134 + v142[8]);
  swift_unknownObjectRelease();
  if (*(v134 + v142[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v137 & ~v139;
  v59 = (v134 + v142[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *(v141 + v58 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v141 + v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v63 = swift_getEnumCaseMultiPayload();
    switch(v63)
    {
      case 2:
        v68 = *(v62 + 8);

        v69 = *(v62 + 32);

        break;
      case 1:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v62, v65);
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v67 = sub_1E65D76A8();
        (*(*(v67 - 8) + 8))(v62 + v66, v67);
        break;
      case 0:
        v64 = sub_1E65DE788();
        (*(*(v64 - 8) + 8))(v62, v64);
        break;
    }

    v70 = v62 + *(type metadata accessor for StackButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v71 = swift_getEnumCaseMultiPayload();
    if (v71 == 2)
    {
      v74 = *(v70 + 8);

      v75 = *(v70 + 32);
    }

    else if (v71 == 1)
    {
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v73 = sub_1E65D76A8();
      (*(*(v73 - 8) + 8))(v70 + v72, v73);
    }
  }

  v76 = (v138 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = *(v141 + v76);

  v79 = *(v141 + v77);
  swift_unknownObjectRelease();
  v80 = *(v141 + v77 + 24);

  v81 = *(v141 + v77 + 40);

  v82 = *(v141 + v77 + 56);

  v83 = *(v141 + v77 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5E6A3A8()
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

uint64_t sub_1E5E6B0BC()
{
  v146 = type metadata accessor for AppComposer();
  v144 = *(*(v146 - 1) + 80);
  v1 = (v144 + 16) & ~v144;
  v2 = v1 + *(*(v146 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v143 = *(*(v3 - 8) + 80);
  v140 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v141 = *(v4 - 8);
  v142 = v4;
  v139 = *(v141 + 80);
  v138 = *(v141 + 64);
  v145 = v0;
  v135 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v146[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v137 = type metadata accessor for AccountService();
  v136 = *(v137[-1].Description + 1);
  v136(v6 + v9, v137);
  v10 = v8[7];
  v134 = type metadata accessor for AppStateService();
  v133 = *(v134[-1].Description + 1);
  v133(v6 + v10, v134);
  v11 = v8[8];
  v132 = type metadata accessor for ArchivedSessionService();
  v131 = *(v132[-1].Description + 1);
  v131(v6 + v11, v132);
  v12 = v8[9];
  v130 = type metadata accessor for AssetService();
  v129 = *(v130[-1].Description + 1);
  v129(v6 + v12, v130);
  v13 = v8[10];
  v128 = type metadata accessor for AwardsService();
  v127 = *(v128[-1].Description + 1);
  v127(v6 + v13, v128);
  v14 = v8[11];
  v126 = type metadata accessor for BookmarkService();
  v125 = *(v126[-1].Description + 1);
  v125(v6 + v14, v126);
  v15 = v8[12];
  v124 = type metadata accessor for CatalogService();
  v123 = *(v124[-1].Description + 1);
  v123(v6 + v15, v124);
  v16 = v8[13];
  v122 = type metadata accessor for ConfigurationService();
  v121 = *(v122[-1].Description + 1);
  v121(v6 + v16, v122);
  v17 = v8[14];
  v120 = type metadata accessor for ContentAvailabilityService();
  v119 = *(v120[-1].Description + 1);
  v119(v6 + v17, v120);
  v18 = v8[15];
  v118 = type metadata accessor for EngagementService();
  v117 = *(v118[-1].Description + 1);
  v117(v6 + v18, v118);
  v19 = v8[16];
  v116 = type metadata accessor for HealthDataService();
  v115 = *(v116[-1].Description + 1);
  v115(v6 + v19, v116);
  v20 = v8[17];
  v114 = type metadata accessor for InteropService();
  v113 = *(v114[-1].Description + 1);
  v113(v6 + v20, v114);
  v21 = v8[18];
  v112 = type metadata accessor for LocalizationService();
  v111 = *(v112[-1].Description + 1);
  v111(v6 + v21, v112);
  v22 = v8[19];
  v110 = type metadata accessor for MarketingService();
  v109 = *(v110[-1].Description + 1);
  v109(v6 + v22, v110);
  v23 = v8[20];
  v108 = type metadata accessor for MetricService();
  v107 = *(v108[-1].Description + 1);
  v107(v6 + v23, v108);
  v24 = v8[21];
  v106 = type metadata accessor for PersonalizationService();
  v105 = *(v106[-1].Description + 1);
  v105(v6 + v24, v106);
  v25 = v8[22];
  v104 = type metadata accessor for PlayerService();
  v103 = *(v104[-1].Description + 1);
  v103(v6 + v25, v104);
  v26 = v8[23];
  v102 = type metadata accessor for PrivacyPreferenceService();
  v101 = *(v102[-1].Description + 1);
  v101(v6 + v26, v102);
  v27 = v8[24];
  v100 = type metadata accessor for RecommendationService();
  v99 = *(v100[-1].Description + 1);
  v99(v6 + v27, v100);
  v28 = v8[25];
  v98 = type metadata accessor for RemoteBrowsingService();
  v97 = *(v98[-1].Description + 1);
  v97(v6 + v28, v98);
  v29 = v8[26];
  v96 = type metadata accessor for SearchService();
  v95 = *(v96[-1].Description + 1);
  v95(v6 + v29, v96);
  v30 = v8[27];
  v94 = type metadata accessor for ServiceSubscriptionService();
  v93 = *(v94[-1].Description + 1);
  v93(v6 + v30, v94);
  v31 = v8[28];
  v87 = type metadata accessor for SessionService();
  v92 = *(v87[-1].Description + 1);
  v92(v6 + v31, v87);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v91 = *(v33[-1].Description + 1);
  v91(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v90 = *(v35[-1].Description + 1);
  v90(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v89 = *(v37[-1].Description + 1);
  v89(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v88 = *(QueueService[-1].Description + 1);
  v88(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v86 = *(v46[-1].Description + 1);
  v86(v6 + v45, v46);
  v47 = *(v135 + v146[6]);

  v48 = (v135 + v146[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v136(v51 + v8[6], v137);
  v133(v51 + v8[7], v134);
  v131(v51 + v8[8], v132);
  v129(v51 + v8[9], v130);
  v127(v51 + v8[10], v128);
  v125(v51 + v8[11], v126);
  v123(v51 + v8[12], v124);
  v121(v51 + v8[13], v122);
  v119(v51 + v8[14], v120);
  v117(v51 + v8[15], v118);
  v115(v51 + v8[16], v116);
  v113(v51 + v8[17], v114);
  v111(v51 + v8[18], v112);
  v109(v51 + v8[19], v110);
  v107(v51 + v8[20], v108);
  v105(v51 + v8[21], v106);
  v103(v51 + v8[22], v104);
  v101(v51 + v8[23], v102);
  v99(v51 + v8[24], v100);
  v97(v51 + v8[25], v98);
  v95(v51 + v8[26], v96);
  v93(v51 + v8[27], v94);
  v92(v51 + v8[28], v87);
  v91(v51 + v8[29], v33);
  v90(v51 + v8[30], v35);
  v89(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v88(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v86(v51 + v8[36], v46);
  v58 = *(v135 + v146[8]);
  swift_unknownObjectRelease();
  if (*(v135 + v146[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v143) & ~v143;
  v60 = (v135 + v146[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = *(v145 + v59 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v63 = v145 + v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:
        v69 = *(v63 + 8);

        v70 = *(v63 + 32);

        break;
      case 1:
        v66 = sub_1E65DE788();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }

    v71 = v63 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      v75 = *(v71 + 8);

      v76 = *(v71 + 32);
    }

    else if (v72 == 1)
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v74 = sub_1E65D76A8();
      (*(*(v74 - 8) + 8))(v71 + v73, v74);
    }
  }

  v77 = (v59 + v140 + v139) & ~v139;
  v78 = (v138 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v141 + 8))(v145 + v77, v142);
  __swift_destroy_boxed_opaque_existential_1((v145 + v78));
  v79 = (v145 + ((v78 + 47) & 0xFFFFFFFFFFFFFFF8));
  v80 = *v79;
  swift_unknownObjectRelease();
  v81 = v79[3];

  v82 = v79[5];

  v83 = v79[7];

  v84 = v79[9];

  return swift_deallocObject();
}

uint64_t sub_1E5E6C0C8()
{
  v162 = type metadata accessor for AppComposer();
  v160 = *(*(v162 - 1) + 80);
  v1 = (v160 + 32) & ~v160;
  v2 = v1 + *(*(v162 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v159 = *(*(v3 - 8) + 80);
  v157 = v2 + v159;
  v158 = *(*(v3 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v161 = v0;
  v154 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v162[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v156 = type metadata accessor for AccountService();
  v155 = *(v156[-1].Description + 1);
  v155(&v6[v9], v156);
  v10 = v8[7];
  v153 = type metadata accessor for AppStateService();
  v152 = *(v153[-1].Description + 1);
  v152(&v6[v10], v153);
  v11 = v8[8];
  v151 = type metadata accessor for ArchivedSessionService();
  v150 = *(v151[-1].Description + 1);
  v150(&v6[v11], v151);
  v12 = v8[9];
  v149 = type metadata accessor for AssetService();
  v148 = *(v149[-1].Description + 1);
  v148(&v6[v12], v149);
  v13 = v8[10];
  v147 = type metadata accessor for AwardsService();
  v146 = *(v147[-1].Description + 1);
  v146(&v6[v13], v147);
  v14 = v8[11];
  v145 = type metadata accessor for BookmarkService();
  v144 = *(v145[-1].Description + 1);
  v144(&v6[v14], v145);
  v15 = v8[12];
  v143 = type metadata accessor for CatalogService();
  v142 = *(v143[-1].Description + 1);
  v142(&v6[v15], v143);
  v16 = v8[13];
  v141 = type metadata accessor for ConfigurationService();
  v140 = *(v141[-1].Description + 1);
  v140(&v6[v16], v141);
  v17 = v8[14];
  v139 = type metadata accessor for ContentAvailabilityService();
  v138 = *(v139[-1].Description + 1);
  v138(&v6[v17], v139);
  v18 = v8[15];
  v137 = type metadata accessor for EngagementService();
  v136 = *(v137[-1].Description + 1);
  v136(&v6[v18], v137);
  v19 = v8[16];
  v135 = type metadata accessor for HealthDataService();
  v134 = *(v135[-1].Description + 1);
  v134(&v6[v19], v135);
  v20 = v8[17];
  v133 = type metadata accessor for InteropService();
  v132 = *(v133[-1].Description + 1);
  v132(&v6[v20], v133);
  v21 = v8[18];
  v131 = type metadata accessor for LocalizationService();
  v130 = *(v131[-1].Description + 1);
  v130(&v6[v21], v131);
  v22 = v8[19];
  v129 = type metadata accessor for MarketingService();
  v128 = *(v129[-1].Description + 1);
  v128(&v6[v22], v129);
  v23 = v8[20];
  v127 = type metadata accessor for MetricService();
  v126 = *(v127[-1].Description + 1);
  v126(&v6[v23], v127);
  v24 = v8[21];
  v125 = type metadata accessor for PersonalizationService();
  v124 = *(v125[-1].Description + 1);
  v124(&v6[v24], v125);
  v25 = v8[22];
  v123 = type metadata accessor for PlayerService();
  v122 = *(v123[-1].Description + 1);
  v122(&v6[v25], v123);
  v26 = v8[23];
  v121 = type metadata accessor for PrivacyPreferenceService();
  v120 = *(v121[-1].Description + 1);
  v120(&v6[v26], v121);
  v27 = v8[24];
  v119 = type metadata accessor for RecommendationService();
  v118 = *(v119[-1].Description + 1);
  v118(&v6[v27], v119);
  v28 = v8[25];
  v117 = type metadata accessor for RemoteBrowsingService();
  v116 = *(v117[-1].Description + 1);
  v116(&v6[v28], v117);
  v29 = v8[26];
  v115 = type metadata accessor for SearchService();
  v114 = *(v115[-1].Description + 1);
  v114(&v6[v29], v115);
  v30 = v8[27];
  v113 = type metadata accessor for ServiceSubscriptionService();
  v112 = *(v113[-1].Description + 1);
  v112(&v6[v30], v113);
  v31 = v8[28];
  v106 = type metadata accessor for SessionService();
  v111 = *(v106[-1].Description + 1);
  v111(&v6[v31], v106);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v110 = *(v33[-1].Description + 1);
  v110(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v109 = *(v35[-1].Description + 1);
  v109(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v108 = *(v37[-1].Description + 1);
  v108(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v107 = *(QueueService[-1].Description + 1);
  v107(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v105 = *(v46[-1].Description + 1);
  v105(&v6[v45], v46);
  v47 = *(v154 + v162[6]);

  v48 = (v154 + v162[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = v48 + *(type metadata accessor for AppDataItemResolver() + 24);
  v52 = *v51;
  swift_unknownObjectRelease();
  v155(&v51[v8[6]], v156);
  v152(&v51[v8[7]], v153);
  v150(&v51[v8[8]], v151);
  v148(&v51[v8[9]], v149);
  v146(&v51[v8[10]], v147);
  v144(&v51[v8[11]], v145);
  v142(&v51[v8[12]], v143);
  v140(&v51[v8[13]], v141);
  v138(&v51[v8[14]], v139);
  v136(&v51[v8[15]], v137);
  v134(&v51[v8[16]], v135);
  v132(&v51[v8[17]], v133);
  v130(&v51[v8[18]], v131);
  v128(&v51[v8[19]], v129);
  v126(&v51[v8[20]], v127);
  v124(&v51[v8[21]], v125);
  v122(&v51[v8[22]], v123);
  v120(&v51[v8[23]], v121);
  v118(&v51[v8[24]], v119);
  v116(&v51[v8[25]], v117);
  v114(&v51[v8[26]], v115);
  v112(&v51[v8[27]], v113);
  v111(&v51[v8[28]], v106);
  v110(&v51[v8[29]], v33);
  v109(&v51[v8[30]], v35);
  v108(&v51[v8[31]], v37);
  v53 = &v51[v8[32]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v107(&v51[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v51[v8[34]]);
  v57 = *&v51[v8[35]];

  v105(&v51[v8[36]], v46);
  v58 = *(v154 + v162[8]);
  swift_unknownObjectRelease();
  if (*(v154 + v162[9] + 8) >= 0xCuLL)
  {
  }

  v59 = v157 & ~v159;
  v60 = (v154 + v162[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = *(v161 + v59 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v63 = v161 + v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:
        v69 = *(v63 + 8);

        v70 = *(v63 + 32);

        break;
      case 1:
        v66 = sub_1E65DE788();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }

    State = type metadata accessor for WorkoutActionsMenuLoadState();
    v72 = v63 + State[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 == 2)
    {
      v76 = *(v72 + 8);

      v77 = *(v72 + 32);
    }

    else if (v73 == 1)
    {
      v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v75 = sub_1E65D76A8();
      (*(*(v75 - 8) + 8))(v72 + v74, v75);
    }

    v78 = v63 + State[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v79 = swift_getEnumCaseMultiPayload();
    if (v79 == 2)
    {
      v82 = *(v78 + 8);

      v83 = *(v78 + 32);
    }

    else if (v79 == 1)
    {
      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v81 = sub_1E65D76A8();
      (*(*(v81 - 8) + 8))(v78 + v80, v81);
    }

    v84 = v63 + State[7];
    v85 = swift_getEnumCaseMultiPayload();
    if (v85 == 2)
    {
      v88 = *(v84 + 8);

      v89 = *(v84 + 32);
    }

    else if (v85 == 1)
    {
      v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v87 = sub_1E65D76A8();
      (*(*(v87 - 8) + 8))(v84 + v86, v87);
    }

    v90 = v63 + State[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v91 = swift_getEnumCaseMultiPayload();
    switch(v91)
    {
      case 2:
        v96 = *(v90 + 8);

        v97 = *(v90 + 32);

        break;
      case 1:
        v93 = sub_1E65DE508();
        (*(*(v93 - 8) + 8))(v90, v93);
        v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v95 = sub_1E65D76A8();
        (*(*(v95 - 8) + 8))(v90 + v94, v95);
        break;
      case 0:
        v92 = sub_1E65DE508();
        (*(*(v92 - 8) + 8))(v90, v92);
        break;
    }
  }

  v98 = (v161 + ((v158 + v59 + 7) & 0xFFFFFFFFFFFFFFF8));
  v99 = *v98;
  swift_unknownObjectRelease();
  v100 = v98[3];

  v101 = v98[5];

  v102 = v98[7];

  v103 = v98[9];

  return swift_deallocObject();
}

uint64_t sub_1E5E6D308@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694B870]();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E6D334(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E65E3E78();
}

uint64_t sub_1E5E6D360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E3F38();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E6D38C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E65E3F48();
}

uint64_t sub_1E5E6D404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    type metadata accessor for ContextMenu.Context(0);
    v10 = *(a3 + 20);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
    v12 = *(*(v11 - 8) + 48);

    return v12(a1 + v10, a2, v11);
  }
}

uint64_t sub_1E5E6D508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E65D76F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    type metadata accessor for ContextMenu.Context(0);
    v12 = *(a4 + 20);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1 + v12, a2, a2, v13);
  }
}

uint64_t sub_1E5E6D628()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5E6D668()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E6D6A8()
{
  v1 = type metadata accessor for AssetService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = (Description[8] + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (Description[1])(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5E6D748()
{
  v1 = type metadata accessor for AppStateService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = (Description[8] + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5E6D83C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1E5E6D888()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v3 = v0[14];

  return swift_deallocObject();
}

uint64_t sub_1E5E6D8D8()
{
  v1 = sub_1E65D9D28();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E6D99C()
{
  v1 = sub_1E65D9D28();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E6DA68()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5E6DAB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E6DB0C()
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

uint64_t sub_1E5E6E808()
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

uint64_t sub_1E5E6F4FC()
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

uint64_t sub_1E5E701F4()
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

uint64_t sub_1E5E70EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC8, &qword_1E65EEE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E70FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8ResourceOMa();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483641)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 6;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1E65D74E8();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1E5E71110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8ResourceOMa();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483641)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 5);
  }

  else
  {
    v11 = sub_1E65D74E8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E5E71254()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E7128C()
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

uint64_t sub_1E5E71F54()
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

uint64_t sub_1E5E72C1C()
{
  v130 = type metadata accessor for AppComposer();
  v127 = *(*(v130 - 1) + 80);
  v125 = *(*(v130 - 1) + 64);
  v128 = type metadata accessor for SectionMetrics();
  v124 = *(*(v128 - 8) + 80);
  v123 = *(*(v128 - 8) + 64);
  v129 = v0;
  v126 = (v127 + 16) & ~v127;
  v120 = v0 + v126;
  v1 = *(v0 + v126);

  v2 = (v0 + v126 + v130[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v122 = type metadata accessor for AccountService();
  v121 = *(v122[-1].Description + 1);
  v121(&v2[v5], v122);
  v6 = v4[7];
  v119 = type metadata accessor for AppStateService();
  v118 = *(v119[-1].Description + 1);
  v118(&v2[v6], v119);
  v7 = v4[8];
  v117 = type metadata accessor for ArchivedSessionService();
  v116 = *(v117[-1].Description + 1);
  v116(&v2[v7], v117);
  v8 = v4[9];
  v115 = type metadata accessor for AssetService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v8], v115);
  v9 = v4[10];
  v113 = type metadata accessor for AwardsService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v9], v113);
  v10 = v4[11];
  v111 = type metadata accessor for BookmarkService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v10], v111);
  v11 = v4[12];
  v109 = type metadata accessor for CatalogService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v11], v109);
  v12 = v4[13];
  v107 = type metadata accessor for ConfigurationService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v12], v107);
  v13 = v4[14];
  v105 = type metadata accessor for ContentAvailabilityService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v13], v105);
  v14 = v4[15];
  v103 = type metadata accessor for EngagementService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v14], v103);
  v15 = v4[16];
  v101 = type metadata accessor for HealthDataService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v15], v101);
  v16 = v4[17];
  v99 = type metadata accessor for InteropService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v16], v99);
  v17 = v4[18];
  v97 = type metadata accessor for LocalizationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v17], v97);
  v18 = v4[19];
  v95 = type metadata accessor for MarketingService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v18], v95);
  v19 = v4[20];
  v93 = type metadata accessor for MetricService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v19], v93);
  v20 = v4[21];
  v91 = type metadata accessor for PersonalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v20], v91);
  v21 = v4[22];
  v89 = type metadata accessor for PlayerService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v21], v89);
  v22 = v4[23];
  v87 = type metadata accessor for PrivacyPreferenceService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v22], v87);
  v23 = v4[24];
  v85 = type metadata accessor for RecommendationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v23], v85);
  v24 = v4[25];
  v83 = type metadata accessor for RemoteBrowsingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v24], v83);
  v25 = v4[26];
  v81 = type metadata accessor for SearchService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v25], v81);
  v26 = v4[27];
  v79 = type metadata accessor for ServiceSubscriptionService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v26], v79);
  v27 = v4[28];
  v72 = type metadata accessor for SessionService();
  v77 = *(v72[-1].Description + 1);
  v77(&v2[v27], v72);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v76 = *(v29[-1].Description + 1);
  v76(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v75 = *(v31[-1].Description + 1);
  v75(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v74 = *(v33[-1].Description + 1);
  v74(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v73 = *(QueueService[-1].Description + 1);
  v73(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v71 = *(v42[-1].Description + 1);
  v71(&v2[v41], v42);
  v43 = *(v120 + v130[6]);

  v44 = (v120 + v130[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v121(&v47[v4[6]], v122);
  v118(&v47[v4[7]], v119);
  v116(&v47[v4[8]], v117);
  v114(&v47[v4[9]], v115);
  v112(&v47[v4[10]], v113);
  v110(&v47[v4[11]], v111);
  v108(&v47[v4[12]], v109);
  v106(&v47[v4[13]], v107);
  v104(&v47[v4[14]], v105);
  v102(&v47[v4[15]], v103);
  v100(&v47[v4[16]], v101);
  v98(&v47[v4[17]], v99);
  v96(&v47[v4[18]], v97);
  v94(&v47[v4[19]], v95);
  v92(&v47[v4[20]], v93);
  v90(&v47[v4[21]], v91);
  v88(&v47[v4[22]], v89);
  v86(&v47[v4[23]], v87);
  v84(&v47[v4[24]], v85);
  v82(&v47[v4[25]], v83);
  v80(&v47[v4[26]], v81);
  v78(&v47[v4[27]], v79);
  v77(&v47[v4[28]], v72);
  v76(&v47[v4[29]], v29);
  v75(&v47[v4[30]], v31);
  v74(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v73(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v71(&v47[v4[36]], v42);
  v54 = *(v120 + v130[8]);
  swift_unknownObjectRelease();
  if (*(v120 + v130[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v120 + v130[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v125 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + v124 + 80) & ~v124;
  v58 = (v129 + v56);
  v59 = *(v129 + v56);
  swift_unknownObjectRelease();
  v60 = v58[3];

  v61 = v58[5];

  v62 = v58[7];

  v63 = v58[9];

  v64 = v129 + v57;
  v65 = *(v64 + 8);

  v66 = *(v64 + 24);

  v67 = *(v128 + 24);
  v68 = sub_1E65D8F28();
  (*(*(v68 - 8) + 8))(v64 + v67, v68);
  v69 = *(v64 + *(v128 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E5E73A04()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v27 = *(v1 + 64);
  v3 = type metadata accessor for SectionMetrics();
  v4 = *(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074050, &qword_1E65EF208);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v9 = sub_1E65D9CC8();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
    v10 = *(v8 + 48);
    v11 = sub_1E65E0388();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  v13 = (v2 + v27 + v4) & ~v4;
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v0 + v13;
  v16 = *(v0 + v13 + 8);

  v17 = *(v15 + 24);

  v18 = *(v3 + 24);
  v19 = sub_1E65D8F28();
  (*(*(v19 - 8) + 8))(v15 + v18, v19);
  v20 = *(v15 + *(v3 + 32));

  v21 = *(v0 + v14);
  swift_unknownObjectRelease();
  v22 = *(v0 + v14 + 24);

  v23 = *(v0 + v14 + 40);

  v24 = *(v0 + v14 + 56);

  v25 = *(v0 + v14 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5E73CD0()
{
  v1 = type metadata accessor for BookmarkService();
  Description = v1[-1].Description;
  v3 = Description[8];
  (Description[1])(v0 + ((*(Description + 80) + 16) & ~*(Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E73D88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1E6001C2C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1E5E73DD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E73E0C()
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

uint64_t sub_1E5E74AD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEnvironment();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E5E74B7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEnvironment();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5E74E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
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

uint64_t sub_1E5E74EEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E74F80()
{
  v114 = type metadata accessor for AppComposer();
  v113 = *(*(v114 - 1) + 80);
  v112 = *(*(v114 - 1) + 64);
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v109 = (v0 + ((v113 + 56) & ~v113));
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

uint64_t sub_1E5E75C60()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 16);

  v107 = (v0 + ((v111 + 24) & ~v111));
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

uint64_t sub_1E5E76930()
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

  v56 = *(v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5E77610()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v107 = (v0 + ((v111 + 33) & ~v111));
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

uint64_t sub_1E5E782F0()
{
  v1 = type metadata accessor for UIViewControllerRoutingContext();
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

uint64_t sub_1E5E79030()
{
  v1 = type metadata accessor for UIViewControllerRoutingContext();
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

uint64_t sub_1E5E7A9A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E7AA38()
{
  v1 = type metadata accessor for UIViewControllerRoutingContext();
  v118 = *(*(v1 - 8) + 80);
  v116 = *(*(v1 - 8) + 64);
  v2 = (v0 + ((v118 + 16) & ~v118));

  v119 = v1;
  v117 = v2;
  v3 = (v2 + *(v1 + 20));
  v4 = *v3;
  v5 = v3;
  v113 = v3;

  v120 = type metadata accessor for AppComposer();
  v6 = v5 + v120[5];
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(&v6[v9], v115);
  v10 = v8[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(&v6[v10], v112);
  v11 = v8[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(&v6[v11], v110);
  v12 = v8[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(&v6[v12], v108);
  v13 = v8[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(&v6[v13], v106);
  v14 = v8[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(&v6[v14], v104);
  v15 = v8[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(&v6[v15], v102);
  v16 = v8[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v6[v16], v100);
  v17 = v8[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(&v6[v17], v98);
  v18 = v8[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(&v6[v18], v96);
  v19 = v8[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(&v6[v19], v94);
  v20 = v8[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(&v6[v20], v92);
  v21 = v8[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v6[v21], v90);
  v22 = v8[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v6[v22], v88);
  v23 = v8[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(&v6[v23], v86);
  v24 = v8[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v6[v24], v84);
  v25 = v8[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(&v6[v25], v82);
  v26 = v8[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(&v6[v26], v80);
  v27 = v8[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v6[v27], v78);
  v28 = v8[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(&v6[v28], v76);
  v29 = v8[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(&v6[v29], v74);
  v30 = v8[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v6[v30], v67);
  v31 = v8[28];
  v65 = type metadata accessor for SessionService();
  v71 = *(v65[-1].Description + 1);
  v71(&v6[v31], v65);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v70 = *(v33[-1].Description + 1);
  v70(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v69 = *(v35[-1].Description + 1);
  v69(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v68 = *(v37[-1].Description + 1);
  v68(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(&v6[v45], v46);
  v48 = *(v113 + v120[6]);

  v49 = (v113 + v120[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v114(&v52[v8[6]], v115);
  v111(&v52[v8[7]], v112);
  v109(&v52[v8[8]], v110);
  v107(&v52[v8[9]], v108);
  v105(&v52[v8[10]], v106);
  v103(&v52[v8[11]], v104);
  v101(&v52[v8[12]], v102);
  v99(&v52[v8[13]], v100);
  v97(&v52[v8[14]], v98);
  v95(&v52[v8[15]], v96);
  v93(&v52[v8[16]], v94);
  v91(&v52[v8[17]], v92);
  v89(&v52[v8[18]], v90);
  v87(&v52[v8[19]], v88);
  v85(&v52[v8[20]], v86);
  v83(&v52[v8[21]], v84);
  v81(&v52[v8[22]], v82);
  v79(&v52[v8[23]], v80);
  v77(&v52[v8[24]], v78);
  v75(&v52[v8[25]], v76);
  v73(&v52[v8[26]], v74);
  v72(&v52[v8[27]], v67);
  v71(&v52[v8[28]], v65);
  v70(&v52[v8[29]], v33);
  v69(&v52[v8[30]], v35);
  v68(&v52[v8[31]], v37);
  v54 = &v52[v8[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v66(&v52[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v8[34]]);
  v58 = *&v52[v8[35]];

  v47(&v52[v8[36]], v46);
  v59 = *(v113 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v113 + v120[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = *(v117 + v119[6]);
  swift_unknownObjectRelease();
  v62 = (v117 + v119[7]);
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = *(v117 + v119[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E7B75C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppComposer();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E5E7B808(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppComposer();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5E7B8B0()
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

uint64_t sub_1E5E7C574()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1E5E7C5DC()
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

uint64_t sub_1E5E7D2E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5E7D318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E7D388()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074370, &qword_1E65F0960);
  if (!swift_getEnumCaseMultiPayload())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074378, &qword_1E65F0968);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
    }

    else
    {
      v6 = *v4;
      v7 = v4[1];
      v8 = *(v4 + 16);
      sub_1E5FEBB58();
    }
  }

  v9 = (v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  swift_unknownObjectRelease();
  v11 = v9[3];

  v12 = v9[5];

  v13 = v9[7];

  v14 = v9[9];

  return swift_deallocObject();
}

uint64_t sub_1E5E7D50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E7D894()
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

uint64_t sub_1E5E7E648()
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

uint64_t sub_1E5E7F36C()
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

uint64_t sub_1E5E8013C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65D7F58();
  *a1 = result;
  return result;
}

uint64_t sub_1E5E80168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppState() + 172) + 8);
}

uint64_t sub_1E5E801B8()
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