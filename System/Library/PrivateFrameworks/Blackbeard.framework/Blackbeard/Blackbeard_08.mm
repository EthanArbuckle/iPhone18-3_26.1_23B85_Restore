uint64_t sub_1E5EF2FF8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
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
    v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 2)
    {
      v14 = *(v10 + 8);

      v15 = *(v10 + 32);
    }

    else if (v11 == 1)
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v13 = sub_1E65D76A8();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  (*(v5 + 8))(v0 + ((v3 + v2 + v6 + 1) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1E5EF3210()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 == 2)
    {
      v9 = *(v5 + 8);

      v10 = *(v5 + 32);
    }

    else if (v6 == 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v8 = sub_1E65D76A8();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EF33D8()
{
  v125 = type metadata accessor for AppComposer();
  v123 = *(*(v125 - 1) + 80);
  v1 = (v123 + 16) & ~v123;
  v2 = v1 + *(*(v125 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v122 = *(*(v3 - 8) + 80);
  v120 = v2 + v122;
  v121 = *(*(v3 - 8) + 64);
  v124 = v0;
  v117 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v125[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v119 = type metadata accessor for AccountService();
  v118 = *(v119[-1].Description + 1);
  v118(&v5[v8], v119);
  v9 = v7[7];
  v116 = type metadata accessor for AppStateService();
  v115 = *(v116[-1].Description + 1);
  v115(&v5[v9], v116);
  v10 = v7[8];
  v114 = type metadata accessor for ArchivedSessionService();
  v113 = *(v114[-1].Description + 1);
  v113(&v5[v10], v114);
  v11 = v7[9];
  v112 = type metadata accessor for AssetService();
  v111 = *(v112[-1].Description + 1);
  v111(&v5[v11], v112);
  v12 = v7[10];
  v110 = type metadata accessor for AwardsService();
  v109 = *(v110[-1].Description + 1);
  v109(&v5[v12], v110);
  v13 = v7[11];
  v108 = type metadata accessor for BookmarkService();
  v107 = *(v108[-1].Description + 1);
  v107(&v5[v13], v108);
  v14 = v7[12];
  v106 = type metadata accessor for CatalogService();
  v105 = *(v106[-1].Description + 1);
  v105(&v5[v14], v106);
  v15 = v7[13];
  v104 = type metadata accessor for ConfigurationService();
  v103 = *(v104[-1].Description + 1);
  v103(&v5[v15], v104);
  v16 = v7[14];
  v102 = type metadata accessor for ContentAvailabilityService();
  v101 = *(v102[-1].Description + 1);
  v101(&v5[v16], v102);
  v17 = v7[15];
  v100 = type metadata accessor for EngagementService();
  v99 = *(v100[-1].Description + 1);
  v99(&v5[v17], v100);
  v18 = v7[16];
  v98 = type metadata accessor for HealthDataService();
  v97 = *(v98[-1].Description + 1);
  v97(&v5[v18], v98);
  v19 = v7[17];
  v96 = type metadata accessor for InteropService();
  v95 = *(v96[-1].Description + 1);
  v95(&v5[v19], v96);
  v20 = v7[18];
  v94 = type metadata accessor for LocalizationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v5[v20], v94);
  v21 = v7[19];
  v92 = type metadata accessor for MarketingService();
  v91 = *(v92[-1].Description + 1);
  v91(&v5[v21], v92);
  v22 = v7[20];
  v90 = type metadata accessor for MetricService();
  v89 = *(v90[-1].Description + 1);
  v89(&v5[v22], v90);
  v23 = v7[21];
  v88 = type metadata accessor for PersonalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v5[v23], v88);
  v24 = v7[22];
  v86 = type metadata accessor for PlayerService();
  v85 = *(v86[-1].Description + 1);
  v85(&v5[v24], v86);
  v25 = v7[23];
  v84 = type metadata accessor for PrivacyPreferenceService();
  v83 = *(v84[-1].Description + 1);
  v83(&v5[v25], v84);
  v26 = v7[24];
  v82 = type metadata accessor for RecommendationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v5[v26], v82);
  v27 = v7[25];
  v80 = type metadata accessor for RemoteBrowsingService();
  v79 = *(v80[-1].Description + 1);
  v79(&v5[v27], v80);
  v28 = v7[26];
  v78 = type metadata accessor for SearchService();
  v77 = *(v78[-1].Description + 1);
  v77(&v5[v28], v78);
  v29 = v7[27];
  v76 = type metadata accessor for ServiceSubscriptionService();
  v75 = *(v76[-1].Description + 1);
  v75(&v5[v29], v76);
  v30 = v7[28];
  v69 = type metadata accessor for SessionService();
  v74 = *(v69[-1].Description + 1);
  v74(&v5[v30], v69);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v73 = *(v32[-1].Description + 1);
  v73(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v72 = *(v34[-1].Description + 1);
  v72(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v71 = *(v36[-1].Description + 1);
  v71(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v70 = *(QueueService[-1].Description + 1);
  v70(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v68 = *(v45[-1].Description + 1);
  v68(&v5[v44], v45);
  v46 = *(v117 + v125[6]);

  v47 = (v117 + v125[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v118(&v50[v7[6]], v119);
  v115(&v50[v7[7]], v116);
  v113(&v50[v7[8]], v114);
  v111(&v50[v7[9]], v112);
  v109(&v50[v7[10]], v110);
  v107(&v50[v7[11]], v108);
  v105(&v50[v7[12]], v106);
  v103(&v50[v7[13]], v104);
  v101(&v50[v7[14]], v102);
  v99(&v50[v7[15]], v100);
  v97(&v50[v7[16]], v98);
  v95(&v50[v7[17]], v96);
  v93(&v50[v7[18]], v94);
  v91(&v50[v7[19]], v92);
  v89(&v50[v7[20]], v90);
  v87(&v50[v7[21]], v88);
  v85(&v50[v7[22]], v86);
  v83(&v50[v7[23]], v84);
  v81(&v50[v7[24]], v82);
  v79(&v50[v7[25]], v80);
  v77(&v50[v7[26]], v78);
  v75(&v50[v7[27]], v76);
  v74(&v50[v7[28]], v69);
  v73(&v50[v7[29]], v32);
  v72(&v50[v7[30]], v34);
  v71(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v70(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v68(&v50[v7[36]], v45);
  v57 = *(v117 + v125[8]);
  swift_unknownObjectRelease();
  if (*(v117 + v125[9] + 8) >= 0xCuLL)
  {
  }

  v58 = (v117 + v125[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v59 = v124 + (v120 & ~v122);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v59, *(v59 + 8), *(v59 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v61 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v62 = swift_getEnumCaseMultiPayload();
    if (v62 == 2)
    {
      v65 = *(v61 + 8);

      v66 = *(v61 + 32);
    }

    else if (v62 == 1)
    {
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v64 = sub_1E65D76A8();
      (*(*(v64 - 8) + 8))(v61 + v63, v64);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EF421C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5EF4260()
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

  v57 = *(v114 + ((v111 + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5EF4F50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EF4F88()
{
  v1 = sub_1E65D76F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 24);

  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v0 + v6 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0 + v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v13 = swift_getEnumCaseMultiPayload();
    switch(v13)
    {
      case 2:
        v18 = *(v12 + 8);

        v19 = *(v12 + 32);

        break;
      case 1:
        v15 = sub_1E65DE788();
        (*(*(v15 - 8) + 8))(v12, v15);
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v17 = sub_1E65D76A8();
        (*(*(v17 - 8) + 8))(v12 + v16, v17);
        break;
      case 0:
        v14 = sub_1E65DE788();
        (*(*(v14 - 8) + 8))(v12, v14);
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5EF5220()
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

uint64_t sub_1E5EF5418()
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

uint64_t sub_1E5EF61C0()
{
  v126 = type metadata accessor for AppComposer();
  v123 = *(*(v126 - 1) + 80);
  v120 = *(*(v126 - 1) + 64);
  v124 = sub_1E65D76F8();
  v122 = *(v124 - 8);
  v119 = *(v122 + 80);
  v118 = *(v122 + 64);
  v125 = v0;
  v121 = (v123 + 16) & ~v123;
  v115 = v0 + v121;
  v1 = *(v0 + v121);

  v2 = (v0 + v121 + v126[5]);
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
  v43 = *(v115 + v126[6]);

  v44 = (v115 + v126[7]);
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
  v54 = *(v115 + v126[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v126[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v115 + v126[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v120 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + v119 + 16) & ~v119;
  v58 = *(v125 + v56 + 8);

  (*(v122 + 8))(v125 + v57, v124);
  v59 = (v125 + ((v118 + v57 + 7) & 0xFFFFFFFFFFFFFFF8));
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  return swift_deallocObject();
}

uint64_t sub_1E5EF70C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E5EF7148()
{
  v0 = sub_1E5EF7244();

  return v0;
}

uint64_t sub_1E5EF71FC()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EF7254()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5EF72B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EF72E8()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E5EF7320()
{

  return swift_deallocObject();
}

uint64_t sub_1E5EF7358()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5EF7398()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5EF7400()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782D0, &qword_1E65FBC98);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1E5EF7430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EF746C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5EF74D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5EF7510()
{
  v1 = type metadata accessor for CatalogService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = (Description[8] + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (Description[1])(v0 + v3, v1);
  v5 = *(v0 + v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E5EF75BC()
{
  v1 = type metadata accessor for RemoteBrowsingService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = v3 + Description[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5EF771C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 80);

  sub_1E5F94E00(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_1E5EF7770()
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

uint64_t sub_1E5EF8434()
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

uint64_t sub_1E5EF9130()
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

uint64_t sub_1E5EF9E24()
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

uint64_t sub_1E5EFAB1C()
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

uint64_t sub_1E5EFB7EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5EFB824()
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

uint64_t sub_1E5EFC528()
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

uint64_t sub_1E5EFD20C()
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

uint64_t sub_1E5EFDEFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EFDF34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5EFDF6C()
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

  v56 = (v116 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v119 + v56));
  v58 = *(v119 + v57);
  swift_unknownObjectRelease();
  v59 = *(v119 + v57 + 24);

  v60 = *(v119 + v57 + 40);

  v61 = *(v119 + v57 + 56);

  v62 = *(v119 + v57 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5EFEC84()
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

uint64_t sub_1E5EFFA38()
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

uint64_t sub_1E5F00760()
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

uint64_t sub_1E5F00B8C()
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

uint64_t sub_1E5F01914()
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

uint64_t sub_1E5F025F8()
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

uint64_t sub_1E5F032F4()
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

uint64_t sub_1E5F03FE8()
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

uint64_t sub_1E5F04CE0()
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

uint64_t sub_1E5F05A04()
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

  return swift_deallocObject();
}

uint64_t sub_1E5F05D88()
{
  v1 = *(sub_1E65E1188() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65E1458();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = sub_1E65E1118();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2, 6, v9))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  v11 = (v2 + v3 + v6) & ~v6;
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v11, v4);
  v13 = *(v0 + v12);
  swift_unknownObjectRelease();
  v14 = *(v0 + v12 + 24);

  v15 = *(v0 + v12 + 40);

  v16 = *(v0 + v12 + 56);

  v17 = *(v0 + v12 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5F05FC8()
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

uint64_t sub_1E5F06030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078578, &unk_1E65FD7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F060A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F060D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F06110()
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

uint64_t sub_1E5F06E14()
{
  v1 = sub_1E65E19C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
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

uint64_t sub_1E5F07BA4()
{
  v1 = sub_1E65E19C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v116 = type metadata accessor for AppComposer();
  v115 = *(*(v116 - 1) + 80);
  v114 = *(*(v116 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v111 = (v0 + ((v3 + v4 + v115) & ~v115));
  v6 = *v111;

  v7 = v111 + v116[5];
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
  v48 = *(v111 + v116[6]);

  v49 = (v111 + v116[7]);
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
  v59 = *(v111 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v111 + v116[9] + 8) >= 0xC)
  {
  }

  v60 = (v111 + v116[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F0890C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F089E4()
{
  v1 = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NavigationControllerRoutingContext();
  v199 = *(*(v5 - 8) + 80);
  v6 = (v3 + v4 + v199) & ~v199;
  v198 = *(*(v5 - 8) + 64);
  v7 = v1 + v3;
  v8 = type metadata accessor for RouteDestination();
  v200 = v6;
  v201 = v5;
  if (!(*(*(v8 - 8) + 48))(v1 + v3, 1, v8))
  {
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
        goto LABEL_3;
      case 1u:
        v49 = sub_1E65D76F8();
        v50 = *(v49 - 8);
        if (!(*(v50 + 48))(v7, 1, v49))
        {
          (*(v50 + 8))(v7, v49);
        }

        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
        v52 = *(v7 + v51[12] + 8);

        v53 = v51[16];
        v54 = sub_1E65E2CF8();
        v55 = *(v54 - 8);
        if (!(*(v55 + 48))(v7 + v53, 1, v54))
        {
          (*(v55 + 8))(v7 + v53, v54);
        }

        v56 = *(v7 + v51[20]);

        v26 = v51[24];
        v57 = sub_1E65E1FC8();
        goto LABEL_47;
      case 3u:
        v65 = *(v7 + 8);

        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v33 = sub_1E65D72D8();
        goto LABEL_45;
      case 4u:
        sub_1E65E0B48();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 3)
        {
          if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
          {
LABEL_82:
            v145 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_52:
            v73 = v7 + *(v8 + 20);
            type metadata accessor for RouteSource(0);
            v74 = swift_getEnumCaseMultiPayload();
            if (v74 <= 1)
            {
              if (v74)
              {
                if (v74 != 1)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                type metadata accessor for AppLaunchScope(0);
                if (swift_getEnumCaseMultiPayload() > 1)
                {
                  goto LABEL_66;
                }
              }
            }

            else if (v74 != 2)
            {
              if (v74 == 3)
              {
                v75 = sub_1E65D74E8();
              }

              else
              {
                if (v74 != 4)
                {
LABEL_66:
                  v82 = *(v7 + *(v8 + 24));

                  break;
                }

                v75 = sub_1E65D8D48();
              }

              (*(*(v75 - 8) + 8))(v73, v75);
              goto LABEL_66;
            }

            v76 = sub_1E65D74E8();
            v77 = *(v76 - 8);
            v78 = *(v77 + 8);
            v78(v73, v76);
            v79 = type metadata accessor for URLContext(0);
            v80 = *(v79 + 20);
            if (!(*(v77 + 48))(v73 + v80, 1, v76))
            {
              v78(v73 + v80, v76);
            }

            v81 = *(v73 + *(v79 + 24) + 8);

            v6 = v200;
            goto LABEL_66;
          }
        }

        else if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v60 = sub_1E65E0FD8();
            (*(*(v60 - 8) + 8))(v1 + v3, v60);
          }

          goto LABEL_82;
        }

        v144 = *(v7 + 8);

        goto LABEL_82;
      case 6u:

        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
        v31 = *(v30 + 48);
        v32 = sub_1E65DB848();
        (*(*(v32 - 8) + 8))(v7 + v31, v32);
        v13 = *(v30 + 64);
        v33 = sub_1E65E1518();
        goto LABEL_45;
      case 7u:
        v41 = sub_1E65DB848();
        (*(*(v41 - 8) + 8))(v1 + v3, v41);
        v42 = &unk_1ED0720D0;
        v43 = &unk_1E65EA290;
        goto LABEL_43;
      case 8u:
      case 9u:

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
        v11 = *(v10 + 48);
        v12 = sub_1E65DB848();
        (*(*(v12 - 8) + 8))(v7 + v11, v12);
        v13 = *(v10 + 64);
        goto LABEL_44;
      case 0xCu:
        v58 = *(v7 + 8);

        sub_1E5F94E00(*(v7 + 16), *(v7 + 24));
        goto LABEL_52;
      case 0xEu:
        v29 = sub_1E65DB718();
        goto LABEL_51;
      case 0x11u:
        v69 = *(v7 + 8);

        v42 = &unk_1ED0720E0;
        v43 = &unk_1E65EA2A0;
LABEL_43:
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v42, v43) + 48);
LABEL_44:
        v33 = sub_1E65D74E8();
        goto LABEL_45;
      case 0x12u:
        v66 = *v7;
        v67 = *(v7 + 8);
        v68 = *(v7 + 16);
        sub_1E5F94E14();
        goto LABEL_52;
      case 0x13u:
        goto LABEL_24;
      case 0x14u:
        v44 = *(v7 + 8);

        v45 = *(v7 + 24);

        goto LABEL_52;
      case 0x15u:
        v70 = *(v7 + 8);

        v71 = *(v7 + 24);

        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
        v57 = sub_1E65D96F8();
LABEL_47:
        v27 = v57;
        v28 = *(v57 - 8);
        if (!(*(v28 + 48))(v7 + v26, 1, v57))
        {
          goto LABEL_48;
        }

        goto LABEL_52;
      case 0x16u:
        __swift_destroy_boxed_opaque_existential_1((v1 + v3));
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
        v15 = v14[12];
        v16 = sub_1E65D74E8();
        (*(*(v16 - 8) + 8))(v7 + v15, v16);
        v17 = *(v7 + v14[16] + 8);

        v18 = v14[20];
        v19 = sub_1E65DB3E8();
        v20 = *(v19 - 8);
        if (!(*(v20 + 48))(v7 + v18, 1, v19))
        {
          (*(v20 + 8))(v7 + v18, v19);
        }

        v21 = *(v7 + v14[24] + 8);

        v22 = *(v7 + v14[28] + 8);

        v23 = v14[32];
        v24 = sub_1E65DB5D8();
        v25 = *(v24 - 8);
        if (!(*(v25 + 48))(v7 + v23, 1, v24))
        {
          (*(v25 + 8))(v7 + v23, v24);
        }

        v26 = v14[36];
        v27 = sub_1E65D7A38();
        v28 = *(v27 - 8);
        if (!(*(v28 + 48))(v7 + v26, 1, v27))
        {
LABEL_48:
          (*(v28 + 8))(v7 + v26, v27);
        }

        goto LABEL_52;
      case 0x17u:
        v37 = sub_1E65E57D8();
        (*(*(v37 - 8) + 8))(v1 + v3, v37);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
        v39 = *(v38 + 48);
        v40 = sub_1E65E5528();
        (*(*(v40 - 8) + 8))(v7 + v39, v40);
        if (*(v7 + *(v38 + 64) + 8) >= 0xCuLL)
        {
        }

        goto LABEL_52;
      case 0x18u:

        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
        v33 = sub_1E65DB848();
        goto LABEL_45;
      case 0x1Au:
        sub_1E65E52B8();
        v48 = swift_getEnumCaseMultiPayload();
        if (v48 == 1)
        {

          goto LABEL_52;
        }

        if (v48)
        {
          goto LABEL_52;
        }

LABEL_24:
        v29 = sub_1E65D74E8();
        goto LABEL_51;
      case 0x1Bu:
        type metadata accessor for PlaylistType();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = sub_1E65DAEB8();
LABEL_51:
          (*(*(v29 - 8) + 8))(v1 + v3, v29);
        }

        else
        {
LABEL_3:
          v9 = *(v7 + 8);
        }

        goto LABEL_52;
      case 0x1Cu:
        v29 = sub_1E65D76F8();
        goto LABEL_51;
      case 0x1Du:
        v72 = sub_1E65E55E8();
        (*(*(v72 - 8) + 8))(v1 + v3, v72);
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
        v33 = sub_1E65D7EB8();
LABEL_45:
        (*(*(v33 - 8) + 8))(v7 + v13, v33);
        goto LABEL_52;
      case 0x1Eu:
        v34 = sub_1E65E56B8();
        (*(*(v34 - 8) + 8))(v1 + v3, v34);
        v35 = &unk_1ED072110;
        v36 = &unk_1E65EA2D0;
        goto LABEL_38;
      case 0x1Fu:
        v46 = sub_1E65DA308();
        (*(*(v46 - 8) + 8))(v1 + v3, v46);
        v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
        goto LABEL_39;
      case 0x20u:
        v61 = sub_1E65E58D8();
        (*(*(v61 - 8) + 8))(v1 + v3, v61);
        v35 = &qword_1ED072120;
        v36 = &qword_1E65EA2E0;
LABEL_38:
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
        v63 = *(v7 + *(v62 + 48));

        v47 = *(v62 + 64);
LABEL_39:
        v64 = *(v7 + v47);

        goto LABEL_52;
      case 0x21u:
        v29 = sub_1E65D9048();
        goto LABEL_51;
      default:
        goto LABEL_52;
    }
  }

  v197 = v1 + v6;
  v83 = *(v1 + v6 + *(v5 + 20));
  v84 = v1 + v6 + *(v5 + 20);
  v194 = v84;

  v202 = type metadata accessor for AppComposer();
  v85 = (v84 + v202[5]);
  v86 = *v85;
  swift_unknownObjectRelease();
  v87 = type metadata accessor for AppEnvironment();
  v88 = v87[6];
  v196 = type metadata accessor for AccountService();
  v195 = *(v196[-1].Description + 1);
  v195(v85 + v88, v196);
  v89 = v87[7];
  v193 = type metadata accessor for AppStateService();
  v192 = *(v193[-1].Description + 1);
  v192(v85 + v89, v193);
  v90 = v87[8];
  v191 = type metadata accessor for ArchivedSessionService();
  v190 = *(v191[-1].Description + 1);
  v190(v85 + v90, v191);
  v91 = v87[9];
  v189 = type metadata accessor for AssetService();
  v188 = *(v189[-1].Description + 1);
  v188(v85 + v91, v189);
  v92 = v87[10];
  v187 = type metadata accessor for AwardsService();
  v186 = *(v187[-1].Description + 1);
  v186(v85 + v92, v187);
  v93 = v87[11];
  v185 = type metadata accessor for BookmarkService();
  v184 = *(v185[-1].Description + 1);
  v184(v85 + v93, v185);
  v94 = v87[12];
  v183 = type metadata accessor for CatalogService();
  v182 = *(v183[-1].Description + 1);
  v182(v85 + v94, v183);
  v95 = v87[13];
  v181 = type metadata accessor for ConfigurationService();
  v180 = *(v181[-1].Description + 1);
  v180(v85 + v95, v181);
  v96 = v87[14];
  v179 = type metadata accessor for ContentAvailabilityService();
  v178 = *(v179[-1].Description + 1);
  v178(v85 + v96, v179);
  v97 = v87[15];
  v177 = type metadata accessor for EngagementService();
  v176 = *(v177[-1].Description + 1);
  v176(v85 + v97, v177);
  v98 = v87[16];
  v175 = type metadata accessor for HealthDataService();
  v174 = *(v175[-1].Description + 1);
  v174(v85 + v98, v175);
  v99 = v87[17];
  v173 = type metadata accessor for InteropService();
  v172 = *(v173[-1].Description + 1);
  v172(v85 + v99, v173);
  v100 = v87[18];
  v171 = type metadata accessor for LocalizationService();
  v170 = *(v171[-1].Description + 1);
  v170(v85 + v100, v171);
  v101 = v87[19];
  v169 = type metadata accessor for MarketingService();
  v168 = *(v169[-1].Description + 1);
  v168(v85 + v101, v169);
  v102 = v87[20];
  v167 = type metadata accessor for MetricService();
  v166 = *(v167[-1].Description + 1);
  v166(v85 + v102, v167);
  v103 = v87[21];
  v165 = type metadata accessor for PersonalizationService();
  v164 = *(v165[-1].Description + 1);
  v164(v85 + v103, v165);
  v104 = v87[22];
  v163 = type metadata accessor for PlayerService();
  v162 = *(v163[-1].Description + 1);
  v162(v85 + v104, v163);
  v105 = v87[23];
  v161 = type metadata accessor for PrivacyPreferenceService();
  v160 = *(v161[-1].Description + 1);
  v160(v85 + v105, v161);
  v106 = v87[24];
  v159 = type metadata accessor for RecommendationService();
  v158 = *(v159[-1].Description + 1);
  v158(v85 + v106, v159);
  v107 = v87[25];
  v157 = type metadata accessor for RemoteBrowsingService();
  v156 = *(v157[-1].Description + 1);
  v156(v85 + v107, v157);
  v108 = v87[26];
  v155 = type metadata accessor for SearchService();
  v154 = *(v155[-1].Description + 1);
  v154(v85 + v108, v155);
  v109 = v87[27];
  v148 = type metadata accessor for ServiceSubscriptionService();
  v153 = *(v148[-1].Description + 1);
  v153(v85 + v109, v148);
  v110 = v87[28];
  v146 = type metadata accessor for SessionService();
  v152 = *(v146[-1].Description + 1);
  v152(v85 + v110, v146);
  v111 = v87[29];
  v112 = type metadata accessor for SharePlayService();
  v151 = *(v112[-1].Description + 1);
  v151(v85 + v111, v112);
  v113 = v87[30];
  v114 = type metadata accessor for SiriService();
  v150 = *(v114[-1].Description + 1);
  v150(v85 + v113, v114);
  v115 = v87[31];
  v116 = type metadata accessor for SyncService();
  v149 = *(v116[-1].Description + 1);
  v149(v85 + v115, v116);
  v117 = (v85 + v87[32]);
  v118 = v117[1];

  v119 = v117[3];

  v120 = v117[5];

  v121 = v87[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v147 = *(QueueService[-1].Description + 1);
  v147(v85 + v121, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v85 + v87[34]));
  v123 = *(v85 + v87[35]);

  v124 = v87[36];
  v125 = type metadata accessor for WorkoutPlanService();
  v126 = *(v125[-1].Description + 1);
  v126(v85 + v124, v125);
  v127 = *(v194 + v202[6]);

  v128 = (v194 + v202[7]);
  v129 = *v128;

  v130 = v128[1];

  v131 = (v128 + *(type metadata accessor for AppDataItemResolver() + 24));
  v132 = *v131;
  swift_unknownObjectRelease();
  v195(v131 + v87[6], v196);
  v192(v131 + v87[7], v193);
  v190(v131 + v87[8], v191);
  v188(v131 + v87[9], v189);
  v186(v131 + v87[10], v187);
  v184(v131 + v87[11], v185);
  v182(v131 + v87[12], v183);
  v180(v131 + v87[13], v181);
  v178(v131 + v87[14], v179);
  v176(v131 + v87[15], v177);
  v174(v131 + v87[16], v175);
  v172(v131 + v87[17], v173);
  v170(v131 + v87[18], v171);
  v168(v131 + v87[19], v169);
  v166(v131 + v87[20], v167);
  v164(v131 + v87[21], v165);
  v162(v131 + v87[22], v163);
  v160(v131 + v87[23], v161);
  v158(v131 + v87[24], v159);
  v156(v131 + v87[25], v157);
  v154(v131 + v87[26], v155);
  v153(v131 + v87[27], v148);
  v152(v131 + v87[28], v146);
  v151(v131 + v87[29], v112);
  v150(v131 + v87[30], v114);
  v149(v131 + v87[31], v116);
  v133 = (v131 + v87[32]);
  v134 = v133[1];

  v135 = v133[3];

  v136 = v133[5];

  v147(v131 + v87[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v131 + v87[34]));
  v137 = *(v131 + v87[35]);

  v126(v131 + v87[36], v125);
  v138 = *(v194 + v202[8]);
  swift_unknownObjectRelease();
  if (*(v194 + v202[9] + 8) >= 0xCuLL)
  {
  }

  v139 = (v194 + v202[10]);
  if (v139[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v140 = *(v197 + v201[6]);
  swift_unknownObjectRelease();
  v141 = (v197 + v201[7]);
  if (v141[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v141);
  }

  v142 = *(v197 + v201[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5F0A380@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = sub_1E65E4EC8();
  *a3 = v7;
  return result;
}

uint64_t sub_1E5F0A3E4(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078618, &qword_1E65FD370);
  return sub_1E65E5B58();
}

uint64_t sub_1E5F0A440()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F0A478()
{
  v1 = type metadata accessor for RouteDestination();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
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
      v47 = sub_1E65D76F8();
      v48 = *(v47 - 8);
      if (!(*(v48 + 48))(v0 + v3, 1, v47))
      {
        (*(v48 + 8))(v0 + v3, v47);
      }

      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v50 = *(v6 + v49[12] + 8);

      v51 = v49[16];
      v52 = sub_1E65E2CF8();
      v53 = *(v52 - 8);
      if (!(*(v53 + 48))(v6 + v51, 1, v52))
      {
        (*(v53 + 8))(v6 + v51, v52);
      }

      v54 = *(v6 + v49[20]);

      v24 = v49[24];
      v55 = sub_1E65E1FC8();
      goto LABEL_46;
    case 3u:
      v63 = *(v6 + 8);

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v31 = sub_1E65D72D8();
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
            v58 = sub_1E65E0FD8();
            (*(*(v58 - 8) + 8))(v0 + v3, v58);
          }

          goto LABEL_76;
        }

LABEL_75:
        v85 = *(v6 + 8);

        goto LABEL_76;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_75;
      }

LABEL_76:
      v86 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_51:
      v71 = v6 + *(v1 + 20);
      type metadata accessor for RouteSource(0);
      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 1)
      {
        if (!v72)
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_67;
          }

          v88 = v0 + v3;
          v79 = sub_1E65D74E8();
          v80 = *(v79 - 8);
          v87 = *(v80 + 8);
          v87(v71, v79);
          v77 = type metadata accessor for URLContext(0);
          v81 = *(v77 + 20);
          if (!(*(v80 + 48))(v71 + v81, 1, v79))
          {
            v87(v71 + v81, v79);
          }

          goto LABEL_66;
        }

        if (v72 != 1)
        {
          goto LABEL_67;
        }

LABEL_58:
        v88 = v0 + v3;
        v74 = sub_1E65D74E8();
        v75 = *(v74 - 8);
        v76 = *(v75 + 8);
        v76(v71, v74);
        v77 = type metadata accessor for URLContext(0);
        v78 = *(v77 + 20);
        if (!(*(v75 + 48))(v71 + v78, 1, v74))
        {
          v76(v71 + v78, v74);
        }

LABEL_66:
        v82 = *(v71 + *(v77 + 24) + 8);

        v6 = v88;
        goto LABEL_67;
      }

      switch(v72)
      {
        case 2:
          goto LABEL_58;
        case 3:
          v73 = sub_1E65D74E8();
          break;
        case 4:
          v73 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_67;
      }

      (*(*(v73 - 8) + 8))(v71, v73);
LABEL_67:
      v83 = *(v6 + *(v1 + 24));

      return swift_deallocObject();
    case 6u:

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v29 = *(v28 + 48);
      v30 = sub_1E65DB848();
      (*(*(v30 - 8) + 8))(v6 + v29, v30);
      v11 = *(v28 + 64);
      v31 = sub_1E65E1518();
      goto LABEL_44;
    case 7u:
      v39 = sub_1E65DB848();
      (*(*(v39 - 8) + 8))(v0 + v3, v39);
      v40 = &unk_1ED0720D0;
      v41 = &unk_1E65EA290;
      goto LABEL_42;
    case 8u:
    case 9u:

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v9 = *(v8 + 48);
      v10 = sub_1E65DB848();
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
      v11 = *(v8 + 64);
      goto LABEL_43;
    case 0xCu:
      v56 = *(v6 + 8);

      sub_1E5F94E00(*(v6 + 16), *(v6 + 24));
      goto LABEL_51;
    case 0xEu:
      v27 = sub_1E65DB718();
      goto LABEL_50;
    case 0x11u:
      v67 = *(v6 + 8);

      v40 = &unk_1ED0720E0;
      v41 = &unk_1E65EA2A0;
LABEL_42:
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v40, v41) + 48);
LABEL_43:
      v31 = sub_1E65D74E8();
      goto LABEL_44;
    case 0x12u:
      v64 = *v6;
      v65 = *(v6 + 8);
      v66 = *(v6 + 16);
      sub_1E5F94E14();
      goto LABEL_51;
    case 0x13u:
      goto LABEL_23;
    case 0x14u:
      v42 = *(v6 + 8);

      v43 = *(v6 + 24);

      goto LABEL_51;
    case 0x15u:
      v68 = *(v6 + 8);

      v69 = *(v6 + 24);

      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v55 = sub_1E65D96F8();
LABEL_46:
      v25 = v55;
      v26 = *(v55 - 8);
      if (!(*(v26 + 48))(v6 + v24, 1, v55))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v13 = v12[12];
      v14 = sub_1E65D74E8();
      (*(*(v14 - 8) + 8))(v6 + v13, v14);
      v15 = *(v6 + v12[16] + 8);

      v16 = v12[20];
      v17 = sub_1E65DB3E8();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v6 + v16, 1, v17))
      {
        (*(v18 + 8))(v6 + v16, v17);
      }

      v19 = *(v6 + v12[24] + 8);

      v20 = *(v6 + v12[28] + 8);

      v21 = v12[32];
      v22 = sub_1E65DB5D8();
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(v6 + v21, 1, v22))
      {
        (*(v23 + 8))(v6 + v21, v22);
      }

      v24 = v12[36];
      v25 = sub_1E65D7A38();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v6 + v24, 1, v25))
      {
LABEL_47:
        (*(v26 + 8))(v6 + v24, v25);
      }

      goto LABEL_51;
    case 0x17u:
      v35 = sub_1E65E57D8();
      (*(*(v35 - 8) + 8))(v0 + v3, v35);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v37 = *(v36 + 48);
      v38 = sub_1E65E5528();
      (*(*(v38 - 8) + 8))(v6 + v37, v38);
      if (*(v6 + *(v36 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_51;
    case 0x18u:

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v31 = sub_1E65DB848();
      goto LABEL_44;
    case 0x1Au:
      sub_1E65E52B8();
      v46 = swift_getEnumCaseMultiPayload();
      if (v46 == 1)
      {

        goto LABEL_51;
      }

      if (v46)
      {
        goto LABEL_51;
      }

LABEL_23:
      v27 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = sub_1E65DAEB8();
LABEL_50:
        (*(*(v27 - 8) + 8))(v0 + v3, v27);
      }

      else
      {
LABEL_2:
        v7 = *(v6 + 8);
      }

      goto LABEL_51;
    case 0x1Cu:
      v27 = sub_1E65D76F8();
      goto LABEL_50;
    case 0x1Du:
      v70 = sub_1E65E55E8();
      (*(*(v70 - 8) + 8))(v0 + v3, v70);
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v31 = sub_1E65D7EB8();
LABEL_44:
      (*(*(v31 - 8) + 8))(v6 + v11, v31);
      goto LABEL_51;
    case 0x1Eu:
      v32 = sub_1E65E56B8();
      (*(*(v32 - 8) + 8))(v0 + v3, v32);
      v33 = &unk_1ED072110;
      v34 = &unk_1E65EA2D0;
      goto LABEL_37;
    case 0x1Fu:
      v44 = sub_1E65DA308();
      (*(*(v44 - 8) + 8))(v0 + v3, v44);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_38;
    case 0x20u:
      v59 = sub_1E65E58D8();
      (*(*(v59 - 8) + 8))(v0 + v3, v59);
      v33 = &qword_1ED072120;
      v34 = &qword_1E65EA2E0;
LABEL_37:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
      v61 = *(v6 + *(v60 + 48));

      v45 = *(v60 + 64);
LABEL_38:
      v62 = *(v6 + v45);

      goto LABEL_51;
    case 0x21u:
      v27 = sub_1E65D9048();
      goto LABEL_50;
    default:
      goto LABEL_51;
  }
}

uint64_t sub_1E5F0B1FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5F0B23C()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F0B274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F0B2BC()
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

  return swift_deallocObject();
}

uint64_t sub_1E5F0B640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
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

uint64_t sub_1E5F0B6B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5F0B748()
{
  v200 = type metadata accessor for AppComposer();
  v196 = *(*(v200 - 1) + 80);
  v1 = (v196 + 40) & ~v196;
  v2 = *(*(v200 - 1) + 64);
  v3 = type metadata accessor for RouteDestination();
  v198 = *(*(v3 - 8) + 80);
  v199 = v3;
  v194 = v1 + v2 + v198;
  v195 = *(*(v3 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v197 = v0;
  v191 = v0 + v1;
  v6 = *(v0 + v1);

  v7 = (v0 + v1 + v200[5]);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v193 = type metadata accessor for AccountService();
  v192 = *(v193[-1].Description + 1);
  v192(v7 + v10, v193);
  v11 = v9[7];
  v190 = type metadata accessor for AppStateService();
  v189 = *(v190[-1].Description + 1);
  v189(v7 + v11, v190);
  v12 = v9[8];
  v188 = type metadata accessor for ArchivedSessionService();
  v187 = *(v188[-1].Description + 1);
  v187(v7 + v12, v188);
  v13 = v9[9];
  v186 = type metadata accessor for AssetService();
  v185 = *(v186[-1].Description + 1);
  v185(v7 + v13, v186);
  v14 = v9[10];
  v184 = type metadata accessor for AwardsService();
  v183 = *(v184[-1].Description + 1);
  v183(v7 + v14, v184);
  v15 = v9[11];
  v182 = type metadata accessor for BookmarkService();
  v181 = *(v182[-1].Description + 1);
  v181(v7 + v15, v182);
  v16 = v9[12];
  v180 = type metadata accessor for CatalogService();
  v179 = *(v180[-1].Description + 1);
  v179(v7 + v16, v180);
  v17 = v9[13];
  v178 = type metadata accessor for ConfigurationService();
  v177 = *(v178[-1].Description + 1);
  v177(v7 + v17, v178);
  v18 = v9[14];
  v176 = type metadata accessor for ContentAvailabilityService();
  v175 = *(v176[-1].Description + 1);
  v175(v7 + v18, v176);
  v19 = v9[15];
  v174 = type metadata accessor for EngagementService();
  v173 = *(v174[-1].Description + 1);
  v173(v7 + v19, v174);
  v20 = v9[16];
  v172 = type metadata accessor for HealthDataService();
  v171 = *(v172[-1].Description + 1);
  v171(v7 + v20, v172);
  v21 = v9[17];
  v170 = type metadata accessor for InteropService();
  v169 = *(v170[-1].Description + 1);
  v169(v7 + v21, v170);
  v22 = v9[18];
  v168 = type metadata accessor for LocalizationService();
  v167 = *(v168[-1].Description + 1);
  v167(v7 + v22, v168);
  v23 = v9[19];
  v166 = type metadata accessor for MarketingService();
  v165 = *(v166[-1].Description + 1);
  v165(v7 + v23, v166);
  v24 = v9[20];
  v164 = type metadata accessor for MetricService();
  v163 = *(v164[-1].Description + 1);
  v163(v7 + v24, v164);
  v25 = v9[21];
  v162 = type metadata accessor for PersonalizationService();
  v161 = *(v162[-1].Description + 1);
  v161(v7 + v25, v162);
  v26 = v9[22];
  v160 = type metadata accessor for PlayerService();
  v159 = *(v160[-1].Description + 1);
  v159(v7 + v26, v160);
  v27 = v9[23];
  v158 = type metadata accessor for PrivacyPreferenceService();
  v157 = *(v158[-1].Description + 1);
  v157(v7 + v27, v158);
  v28 = v9[24];
  v156 = type metadata accessor for RecommendationService();
  v155 = *(v156[-1].Description + 1);
  v155(v7 + v28, v156);
  v29 = v9[25];
  v154 = type metadata accessor for RemoteBrowsingService();
  v153 = *(v154[-1].Description + 1);
  v153(v7 + v29, v154);
  v30 = v9[26];
  v152 = type metadata accessor for SearchService();
  v151 = *(v152[-1].Description + 1);
  v151(v7 + v30, v152);
  v31 = v9[27];
  v150 = type metadata accessor for ServiceSubscriptionService();
  v149 = *(v150[-1].Description + 1);
  v149(v7 + v31, v150);
  v32 = v9[28];
  v143 = type metadata accessor for SessionService();
  v148 = *(v143[-1].Description + 1);
  v148(v7 + v32, v143);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v147 = *(v34[-1].Description + 1);
  v147(v7 + v33, v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v146 = *(v36[-1].Description + 1);
  v146(v7 + v35, v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v145 = *(v38[-1].Description + 1);
  v145(v7 + v37, v38);
  v39 = (v7 + v9[32]);
  v40 = v39[1];

  v41 = v39[3];

  v42 = v39[5];

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v144 = *(QueueService[-1].Description + 1);
  v144(v7 + v43, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v7 + v9[34]));
  v45 = *(v7 + v9[35]);

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v142 = *(v47[-1].Description + 1);
  v142(v7 + v46, v47);
  v48 = *(v191 + v200[6]);

  v49 = (v191 + v200[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v192(v52 + v9[6], v193);
  v189(v52 + v9[7], v190);
  v187(v52 + v9[8], v188);
  v185(v52 + v9[9], v186);
  v183(v52 + v9[10], v184);
  v181(v52 + v9[11], v182);
  v179(v52 + v9[12], v180);
  v177(v52 + v9[13], v178);
  v175(v52 + v9[14], v176);
  v173(v52 + v9[15], v174);
  v171(v52 + v9[16], v172);
  v169(v52 + v9[17], v170);
  v167(v52 + v9[18], v168);
  v165(v52 + v9[19], v166);
  v163(v52 + v9[20], v164);
  v161(v52 + v9[21], v162);
  v159(v52 + v9[22], v160);
  v157(v52 + v9[23], v158);
  v155(v52 + v9[24], v156);
  v153(v52 + v9[25], v154);
  v151(v52 + v9[26], v152);
  v149(v52 + v9[27], v150);
  v148(v52 + v9[28], v143);
  v147(v52 + v9[29], v34);
  v146(v52 + v9[30], v36);
  v145(v52 + v9[31], v38);
  v54 = (v52 + v9[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v144(v52 + v9[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v9[34]));
  v58 = *(v52 + v9[35]);

  v142(v52 + v9[36], v47);
  v59 = *(v191 + v200[8]);
  swift_unknownObjectRelease();
  if (*(v191 + v200[9] + 8) >= 0xCuLL)
  {
  }

  v60 = v194 & ~v198;
  v61 = (v191 + v200[10]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = v197 + v60;
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
      goto LABEL_6;
    case 1u:
      v103 = sub_1E65D76F8();
      v104 = *(v103 - 8);
      if (!(*(v104 + 48))(v197 + v60, 1, v103))
      {
        (*(v104 + 8))(v197 + v60, v103);
      }

      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v106 = *(v62 + v105[12] + 8);

      v107 = v105[16];
      v108 = sub_1E65E2CF8();
      v109 = *(v108 - 8);
      if (!(*(v109 + 48))(v62 + v107, 1, v108))
      {
        (*(v109 + 8))(v62 + v107, v108);
      }

      v110 = *(v62 + v105[20]);

      v80 = v105[24];
      v111 = sub_1E65E1FC8();
      goto LABEL_50;
    case 3u:
      v119 = *(v62 + 8);

      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v87 = sub_1E65D72D8();
      goto LABEL_48;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v114 = sub_1E65E0FD8();
            (*(*(v114 - 8) + 8))(v197 + v60, v114);
          }

          goto LABEL_78;
        }

LABEL_77:
        v140 = *(v62 + 8);

        goto LABEL_78;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_77;
      }

LABEL_78:
      v141 = *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_55:
      v127 = v199;
      v128 = v62 + *(v199 + 20);
      type metadata accessor for RouteSource(0);
      v129 = swift_getEnumCaseMultiPayload();
      if (v129 <= 1)
      {
        if (v129)
        {
          if (v129 != 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_66;
      }

      switch(v129)
      {
        case 2:
LABEL_66:
          v131 = sub_1E65D74E8();
          v132 = *(v131 - 8);
          v133 = *(v132 + 8);
          v133(v128, v131);
          v134 = type metadata accessor for URLContext(0);
          v135 = *(v134 + 20);
          if (!(*(v132 + 48))(v128 + v135, 1, v131))
          {
            v133(v128 + v135, v131);
          }

          v136 = *(v128 + *(v134 + 24) + 8);

          v127 = v199;
          goto LABEL_69;
        case 3:
          v130 = sub_1E65D74E8();
          break;
        case 4:
          v130 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_69;
      }

      (*(*(v130 - 8) + 8))(v128, v130);
LABEL_69:
      v137 = *(v62 + *(v127 + 24));

      v138 = *(v197 + ((v195 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
      swift_unknownObjectRelease();

      return swift_deallocObject();
    case 6u:

      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v85 = *(v84 + 48);
      v86 = sub_1E65DB848();
      (*(*(v86 - 8) + 8))(v62 + v85, v86);
      v67 = *(v84 + 64);
      v87 = sub_1E65E1518();
      goto LABEL_48;
    case 7u:
      v95 = sub_1E65DB848();
      (*(*(v95 - 8) + 8))(v197 + v60, v95);
      v96 = &unk_1ED0720D0;
      v97 = &unk_1E65EA290;
      goto LABEL_46;
    case 8u:
    case 9u:

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v65 = *(v64 + 48);
      v66 = sub_1E65DB848();
      (*(*(v66 - 8) + 8))(v62 + v65, v66);
      v67 = *(v64 + 64);
      goto LABEL_47;
    case 0xCu:
      v112 = *(v62 + 8);

      sub_1E5F94E00(*(v62 + 16), *(v62 + 24));
      goto LABEL_55;
    case 0xEu:
      v83 = sub_1E65DB718();
      goto LABEL_54;
    case 0x11u:
      v123 = *(v62 + 8);

      v96 = &unk_1ED0720E0;
      v97 = &unk_1E65EA2A0;
LABEL_46:
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v96, v97) + 48);
LABEL_47:
      v87 = sub_1E65D74E8();
      goto LABEL_48;
    case 0x12u:
      v120 = *v62;
      v121 = *(v62 + 8);
      v122 = *(v62 + 16);
      sub_1E5F94E14();
      goto LABEL_55;
    case 0x13u:
      goto LABEL_27;
    case 0x14u:
      v98 = *(v62 + 8);

      v99 = *(v62 + 24);

      goto LABEL_55;
    case 0x15u:
      v124 = *(v62 + 8);

      v125 = *(v62 + 24);

      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v111 = sub_1E65D96F8();
LABEL_50:
      v81 = v111;
      v82 = *(v111 - 8);
      if (!(*(v82 + 48))(v62 + v80, 1, v111))
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v197 + v60));
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v69 = v68[12];
      v70 = sub_1E65D74E8();
      (*(*(v70 - 8) + 8))(v62 + v69, v70);
      v71 = *(v62 + v68[16] + 8);

      v72 = v68[20];
      v73 = sub_1E65DB3E8();
      v74 = *(v73 - 8);
      if (!(*(v74 + 48))(v62 + v72, 1, v73))
      {
        (*(v74 + 8))(v62 + v72, v73);
      }

      v75 = *(v62 + v68[24] + 8);

      v76 = *(v62 + v68[28] + 8);

      v77 = v68[32];
      v78 = sub_1E65DB5D8();
      v79 = *(v78 - 8);
      if (!(*(v79 + 48))(v62 + v77, 1, v78))
      {
        (*(v79 + 8))(v62 + v77, v78);
      }

      v80 = v68[36];
      v81 = sub_1E65D7A38();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v62 + v80, 1, v81))
      {
LABEL_51:
        (*(v82 + 8))(v62 + v80, v81);
      }

      goto LABEL_55;
    case 0x17u:
      v91 = sub_1E65E57D8();
      (*(*(v91 - 8) + 8))(v197 + v60, v91);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v93 = *(v92 + 48);
      v94 = sub_1E65E5528();
      (*(*(v94 - 8) + 8))(v62 + v93, v94);
      if (*(v62 + *(v92 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_55;
    case 0x18u:

      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v87 = sub_1E65DB848();
      goto LABEL_48;
    case 0x1Au:
      sub_1E65E52B8();
      v102 = swift_getEnumCaseMultiPayload();
      if (v102 == 1)
      {

        goto LABEL_55;
      }

      if (v102)
      {
        goto LABEL_55;
      }

LABEL_27:
      v83 = sub_1E65D74E8();
      goto LABEL_54;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v83 = sub_1E65DAEB8();
LABEL_54:
        (*(*(v83 - 8) + 8))(v197 + v60, v83);
      }

      else
      {
LABEL_6:
        v63 = *(v62 + 8);
      }

      goto LABEL_55;
    case 0x1Cu:
      v83 = sub_1E65D76F8();
      goto LABEL_54;
    case 0x1Du:
      v126 = sub_1E65E55E8();
      (*(*(v126 - 8) + 8))(v197 + v60, v126);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v87 = sub_1E65D7EB8();
LABEL_48:
      (*(*(v87 - 8) + 8))(v62 + v67, v87);
      goto LABEL_55;
    case 0x1Eu:
      v88 = sub_1E65E56B8();
      (*(*(v88 - 8) + 8))(v197 + v60, v88);
      v89 = &unk_1ED072110;
      v90 = &unk_1E65EA2D0;
      goto LABEL_41;
    case 0x1Fu:
      v100 = sub_1E65DA308();
      (*(*(v100 - 8) + 8))(v197 + v60, v100);
      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_42;
    case 0x20u:
      v115 = sub_1E65E58D8();
      (*(*(v115 - 8) + 8))(v197 + v60, v115);
      v89 = &qword_1ED072120;
      v90 = &qword_1E65EA2E0;
LABEL_41:
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
      v117 = *(v62 + *(v116 + 48));

      v101 = *(v116 + 64);
LABEL_42:
      v118 = *(v62 + v101);

      goto LABEL_55;
    case 0x21u:
      v83 = sub_1E65D9048();
      goto LABEL_54;
    default:
      goto LABEL_55;
  }
}

uint64_t sub_1E5F0D074()
{
  v198 = type metadata accessor for AppComposer();
  v194 = *(*(v198 - 1) + 80);
  v1 = (v194 + 24) & ~v194;
  v2 = *(*(v198 - 1) + 64);
  v3 = type metadata accessor for RouteDestination();
  v196 = *(*(v3 - 8) + 80);
  v197 = v3;
  v192 = v1 + v2 + v196;
  v193 = *(*(v3 - 8) + 64);
  v4 = *(v0 + 16);

  v195 = v0;
  v189 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v198[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v191 = type metadata accessor for AccountService();
  v190 = *(v191[-1].Description + 1);
  v190(v6 + v9, v191);
  v10 = v8[7];
  v188 = type metadata accessor for AppStateService();
  v187 = *(v188[-1].Description + 1);
  v187(v6 + v10, v188);
  v11 = v8[8];
  v186 = type metadata accessor for ArchivedSessionService();
  v185 = *(v186[-1].Description + 1);
  v185(v6 + v11, v186);
  v12 = v8[9];
  v184 = type metadata accessor for AssetService();
  v183 = *(v184[-1].Description + 1);
  v183(v6 + v12, v184);
  v13 = v8[10];
  v182 = type metadata accessor for AwardsService();
  v181 = *(v182[-1].Description + 1);
  v181(v6 + v13, v182);
  v14 = v8[11];
  v180 = type metadata accessor for BookmarkService();
  v179 = *(v180[-1].Description + 1);
  v179(v6 + v14, v180);
  v15 = v8[12];
  v178 = type metadata accessor for CatalogService();
  v177 = *(v178[-1].Description + 1);
  v177(v6 + v15, v178);
  v16 = v8[13];
  v176 = type metadata accessor for ConfigurationService();
  v175 = *(v176[-1].Description + 1);
  v175(v6 + v16, v176);
  v17 = v8[14];
  v174 = type metadata accessor for ContentAvailabilityService();
  v173 = *(v174[-1].Description + 1);
  v173(v6 + v17, v174);
  v18 = v8[15];
  v172 = type metadata accessor for EngagementService();
  v171 = *(v172[-1].Description + 1);
  v171(v6 + v18, v172);
  v19 = v8[16];
  v170 = type metadata accessor for HealthDataService();
  v169 = *(v170[-1].Description + 1);
  v169(v6 + v19, v170);
  v20 = v8[17];
  v168 = type metadata accessor for InteropService();
  v167 = *(v168[-1].Description + 1);
  v167(v6 + v20, v168);
  v21 = v8[18];
  v166 = type metadata accessor for LocalizationService();
  v165 = *(v166[-1].Description + 1);
  v165(v6 + v21, v166);
  v22 = v8[19];
  v164 = type metadata accessor for MarketingService();
  v163 = *(v164[-1].Description + 1);
  v163(v6 + v22, v164);
  v23 = v8[20];
  v162 = type metadata accessor for MetricService();
  v161 = *(v162[-1].Description + 1);
  v161(v6 + v23, v162);
  v24 = v8[21];
  v160 = type metadata accessor for PersonalizationService();
  v159 = *(v160[-1].Description + 1);
  v159(v6 + v24, v160);
  v25 = v8[22];
  v158 = type metadata accessor for PlayerService();
  v157 = *(v158[-1].Description + 1);
  v157(v6 + v25, v158);
  v26 = v8[23];
  v156 = type metadata accessor for PrivacyPreferenceService();
  v155 = *(v156[-1].Description + 1);
  v155(v6 + v26, v156);
  v27 = v8[24];
  v154 = type metadata accessor for RecommendationService();
  v153 = *(v154[-1].Description + 1);
  v153(v6 + v27, v154);
  v28 = v8[25];
  v152 = type metadata accessor for RemoteBrowsingService();
  v151 = *(v152[-1].Description + 1);
  v151(v6 + v28, v152);
  v29 = v8[26];
  v150 = type metadata accessor for SearchService();
  v149 = *(v150[-1].Description + 1);
  v149(v6 + v29, v150);
  v30 = v8[27];
  v148 = type metadata accessor for ServiceSubscriptionService();
  v147 = *(v148[-1].Description + 1);
  v147(v6 + v30, v148);
  v31 = v8[28];
  v141 = type metadata accessor for SessionService();
  v146 = *(v141[-1].Description + 1);
  v146(v6 + v31, v141);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v145 = *(v33[-1].Description + 1);
  v145(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v144 = *(v35[-1].Description + 1);
  v144(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v143 = *(v37[-1].Description + 1);
  v143(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v142 = *(QueueService[-1].Description + 1);
  v142(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v140 = *(v46[-1].Description + 1);
  v140(v6 + v45, v46);
  v47 = *(v189 + v198[6]);

  v48 = (v189 + v198[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v190(v51 + v8[6], v191);
  v187(v51 + v8[7], v188);
  v185(v51 + v8[8], v186);
  v183(v51 + v8[9], v184);
  v181(v51 + v8[10], v182);
  v179(v51 + v8[11], v180);
  v177(v51 + v8[12], v178);
  v175(v51 + v8[13], v176);
  v173(v51 + v8[14], v174);
  v171(v51 + v8[15], v172);
  v169(v51 + v8[16], v170);
  v167(v51 + v8[17], v168);
  v165(v51 + v8[18], v166);
  v163(v51 + v8[19], v164);
  v161(v51 + v8[20], v162);
  v159(v51 + v8[21], v160);
  v157(v51 + v8[22], v158);
  v155(v51 + v8[23], v156);
  v153(v51 + v8[24], v154);
  v151(v51 + v8[25], v152);
  v149(v51 + v8[26], v150);
  v147(v51 + v8[27], v148);
  v146(v51 + v8[28], v141);
  v145(v51 + v8[29], v33);
  v144(v51 + v8[30], v35);
  v143(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v142(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v140(v51 + v8[36], v46);
  v58 = *(v189 + v198[8]);
  swift_unknownObjectRelease();
  if (*(v189 + v198[9] + 8) >= 0xCuLL)
  {
  }

  v59 = v192 & ~v196;
  v60 = (v189 + v198[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v195 + v59;
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
      goto LABEL_6;
    case 1u:
      v102 = sub_1E65D76F8();
      v103 = *(v102 - 8);
      if (!(*(v103 + 48))(v195 + v59, 1, v102))
      {
        (*(v103 + 8))(v195 + v59, v102);
      }

      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v105 = *(v61 + v104[12] + 8);

      v106 = v104[16];
      v107 = sub_1E65E2CF8();
      v108 = *(v107 - 8);
      if (!(*(v108 + 48))(v61 + v106, 1, v107))
      {
        (*(v108 + 8))(v61 + v106, v107);
      }

      v109 = *(v61 + v104[20]);

      v79 = v104[24];
      v110 = sub_1E65E1FC8();
      goto LABEL_50;
    case 3u:
      v118 = *(v61 + 8);

      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v86 = sub_1E65D72D8();
      goto LABEL_48;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v113 = sub_1E65E0FD8();
            (*(*(v113 - 8) + 8))(v195 + v59, v113);
          }

          goto LABEL_78;
        }

LABEL_77:
        v138 = *(v61 + 8);

        goto LABEL_78;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_77;
      }

LABEL_78:
      v139 = *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_55:
      v126 = v197;
      v127 = v61 + *(v197 + 20);
      type metadata accessor for RouteSource(0);
      v128 = swift_getEnumCaseMultiPayload();
      if (v128 <= 1)
      {
        if (v128)
        {
          if (v128 != 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_66;
      }

      switch(v128)
      {
        case 2:
LABEL_66:
          v130 = sub_1E65D74E8();
          v131 = *(v130 - 8);
          v132 = *(v131 + 8);
          v132(v127, v130);
          v133 = type metadata accessor for URLContext(0);
          v134 = *(v133 + 20);
          if (!(*(v131 + 48))(v127 + v134, 1, v130))
          {
            v132(v127 + v134, v130);
          }

          v135 = *(v127 + *(v133 + 24) + 8);

          v126 = v197;
          goto LABEL_69;
        case 3:
          v129 = sub_1E65D74E8();
          break;
        case 4:
          v129 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_69;
      }

      (*(*(v129 - 8) + 8))(v127, v129);
LABEL_69:
      v136 = *(v61 + *(v126 + 24));

      return swift_deallocObject();
    case 6u:

      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v84 = *(v83 + 48);
      v85 = sub_1E65DB848();
      (*(*(v85 - 8) + 8))(v61 + v84, v85);
      v66 = *(v83 + 64);
      v86 = sub_1E65E1518();
      goto LABEL_48;
    case 7u:
      v94 = sub_1E65DB848();
      (*(*(v94 - 8) + 8))(v195 + v59, v94);
      v95 = &unk_1ED0720D0;
      v96 = &unk_1E65EA290;
      goto LABEL_46;
    case 8u:
    case 9u:

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v64 = *(v63 + 48);
      v65 = sub_1E65DB848();
      (*(*(v65 - 8) + 8))(v61 + v64, v65);
      v66 = *(v63 + 64);
      goto LABEL_47;
    case 0xCu:
      v111 = *(v61 + 8);

      sub_1E5F94E00(*(v61 + 16), *(v61 + 24));
      goto LABEL_55;
    case 0xEu:
      v82 = sub_1E65DB718();
      goto LABEL_54;
    case 0x11u:
      v122 = *(v61 + 8);

      v95 = &unk_1ED0720E0;
      v96 = &unk_1E65EA2A0;
LABEL_46:
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v95, v96) + 48);
LABEL_47:
      v86 = sub_1E65D74E8();
      goto LABEL_48;
    case 0x12u:
      v119 = *v61;
      v120 = *(v61 + 8);
      v121 = *(v61 + 16);
      sub_1E5F94E14();
      goto LABEL_55;
    case 0x13u:
      goto LABEL_27;
    case 0x14u:
      v97 = *(v61 + 8);

      v98 = *(v61 + 24);

      goto LABEL_55;
    case 0x15u:
      v123 = *(v61 + 8);

      v124 = *(v61 + 24);

      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v110 = sub_1E65D96F8();
LABEL_50:
      v80 = v110;
      v81 = *(v110 - 8);
      if (!(*(v81 + 48))(v61 + v79, 1, v110))
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v195 + v59));
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v68 = v67[12];
      v69 = sub_1E65D74E8();
      (*(*(v69 - 8) + 8))(v61 + v68, v69);
      v70 = *(v61 + v67[16] + 8);

      v71 = v67[20];
      v72 = sub_1E65DB3E8();
      v73 = *(v72 - 8);
      if (!(*(v73 + 48))(v61 + v71, 1, v72))
      {
        (*(v73 + 8))(v61 + v71, v72);
      }

      v74 = *(v61 + v67[24] + 8);

      v75 = *(v61 + v67[28] + 8);

      v76 = v67[32];
      v77 = sub_1E65DB5D8();
      v78 = *(v77 - 8);
      if (!(*(v78 + 48))(v61 + v76, 1, v77))
      {
        (*(v78 + 8))(v61 + v76, v77);
      }

      v79 = v67[36];
      v80 = sub_1E65D7A38();
      v81 = *(v80 - 8);
      if (!(*(v81 + 48))(v61 + v79, 1, v80))
      {
LABEL_51:
        (*(v81 + 8))(v61 + v79, v80);
      }

      goto LABEL_55;
    case 0x17u:
      v90 = sub_1E65E57D8();
      (*(*(v90 - 8) + 8))(v195 + v59, v90);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v92 = *(v91 + 48);
      v93 = sub_1E65E5528();
      (*(*(v93 - 8) + 8))(v61 + v92, v93);
      if (*(v61 + *(v91 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_55;
    case 0x18u:

      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v86 = sub_1E65DB848();
      goto LABEL_48;
    case 0x1Au:
      sub_1E65E52B8();
      v101 = swift_getEnumCaseMultiPayload();
      if (v101 == 1)
      {

        goto LABEL_55;
      }

      if (v101)
      {
        goto LABEL_55;
      }

LABEL_27:
      v82 = sub_1E65D74E8();
      goto LABEL_54;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = sub_1E65DAEB8();
LABEL_54:
        (*(*(v82 - 8) + 8))(v195 + v59, v82);
      }

      else
      {
LABEL_6:
        v62 = *(v61 + 8);
      }

      goto LABEL_55;
    case 0x1Cu:
      v82 = sub_1E65D76F8();
      goto LABEL_54;
    case 0x1Du:
      v125 = sub_1E65E55E8();
      (*(*(v125 - 8) + 8))(v195 + v59, v125);
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v86 = sub_1E65D7EB8();
LABEL_48:
      (*(*(v86 - 8) + 8))(v61 + v66, v86);
      goto LABEL_55;
    case 0x1Eu:
      v87 = sub_1E65E56B8();
      (*(*(v87 - 8) + 8))(v195 + v59, v87);
      v88 = &unk_1ED072110;
      v89 = &unk_1E65EA2D0;
      goto LABEL_41;
    case 0x1Fu:
      v99 = sub_1E65DA308();
      (*(*(v99 - 8) + 8))(v195 + v59, v99);
      v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_42;
    case 0x20u:
      v114 = sub_1E65E58D8();
      (*(*(v114 - 8) + 8))(v195 + v59, v114);
      v88 = &qword_1ED072120;
      v89 = &qword_1E65EA2E0;
LABEL_41:
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
      v116 = *(v61 + *(v115 + 48));

      v100 = *(v115 + 64);
LABEL_42:
      v117 = *(v61 + v100);

      goto LABEL_55;
    case 0x21u:
      v82 = sub_1E65D9048();
      goto LABEL_54;
    default:
      goto LABEL_55;
  }
}

uint64_t sub_1E5F0E988()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F0E9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A8, &unk_1E65FD7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F0EA68()
{
  v1 = sub_1E65DEB28();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E65DEC18();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v75 = type metadata accessor for AppComposer();
  v127 = *(*(v75 - 1) + 80);
  v125 = *(*(v75 - 1) + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v128 = v0;
  v126 = (v7 + v8 + v127) & ~v127;
  v122 = v0 + v126;
  v10 = *(v0 + v126);

  v11 = (v0 + v126 + v75[5]);
  v12 = *v11;
  swift_unknownObjectRelease();
  v13 = type metadata accessor for AppEnvironment();
  v14 = v13[6];
  v124 = type metadata accessor for AccountService();
  v123 = *(v124[-1].Description + 1);
  v123(&v11[v14], v124);
  v15 = v13[7];
  v121 = type metadata accessor for AppStateService();
  v120 = *(v121[-1].Description + 1);
  v120(&v11[v15], v121);
  v16 = v13[8];
  v119 = type metadata accessor for ArchivedSessionService();
  v118 = *(v119[-1].Description + 1);
  v118(&v11[v16], v119);
  v17 = v13[9];
  v117 = type metadata accessor for AssetService();
  v116 = *(v117[-1].Description + 1);
  v116(&v11[v17], v117);
  v18 = v13[10];
  v115 = type metadata accessor for AwardsService();
  v114 = *(v115[-1].Description + 1);
  v114(&v11[v18], v115);
  v19 = v13[11];
  v113 = type metadata accessor for BookmarkService();
  v112 = *(v113[-1].Description + 1);
  v112(&v11[v19], v113);
  v20 = v13[12];
  v111 = type metadata accessor for CatalogService();
  v110 = *(v111[-1].Description + 1);
  v110(&v11[v20], v111);
  v21 = v13[13];
  v109 = type metadata accessor for ConfigurationService();
  v108 = *(v109[-1].Description + 1);
  v108(&v11[v21], v109);
  v22 = v13[14];
  v107 = type metadata accessor for ContentAvailabilityService();
  v106 = *(v107[-1].Description + 1);
  v106(&v11[v22], v107);
  v23 = v13[15];
  v105 = type metadata accessor for EngagementService();
  v104 = *(v105[-1].Description + 1);
  v104(&v11[v23], v105);
  v24 = v13[16];
  v103 = type metadata accessor for HealthDataService();
  v102 = *(v103[-1].Description + 1);
  v102(&v11[v24], v103);
  v25 = v13[17];
  v101 = type metadata accessor for InteropService();
  v100 = *(v101[-1].Description + 1);
  v100(&v11[v25], v101);
  v26 = v13[18];
  v99 = type metadata accessor for LocalizationService();
  v98 = *(v99[-1].Description + 1);
  v98(&v11[v26], v99);
  v27 = v13[19];
  v97 = type metadata accessor for MarketingService();
  v96 = *(v97[-1].Description + 1);
  v96(&v11[v27], v97);
  v28 = v13[20];
  v95 = type metadata accessor for MetricService();
  v94 = *(v95[-1].Description + 1);
  v94(&v11[v28], v95);
  v29 = v13[21];
  v93 = type metadata accessor for PersonalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v11[v29], v93);
  v30 = v13[22];
  v91 = type metadata accessor for PlayerService();
  v90 = *(v91[-1].Description + 1);
  v90(&v11[v30], v91);
  v31 = v13[23];
  v89 = type metadata accessor for PrivacyPreferenceService();
  v88 = *(v89[-1].Description + 1);
  v88(&v11[v31], v89);
  v32 = v13[24];
  v87 = type metadata accessor for RecommendationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v11[v32], v87);
  v33 = v13[25];
  v85 = type metadata accessor for RemoteBrowsingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v11[v33], v85);
  v34 = v13[26];
  v83 = type metadata accessor for SearchService();
  v82 = *(v83[-1].Description + 1);
  v82(&v11[v34], v83);
  v35 = v13[27];
  v81 = type metadata accessor for ServiceSubscriptionService();
  v80 = *(v81[-1].Description + 1);
  v80(&v11[v35], v81);
  v36 = v13[28];
  v73 = type metadata accessor for SessionService();
  v79 = *(v73[-1].Description + 1);
  v79(&v11[v36], v73);
  v37 = v13[29];
  v38 = type metadata accessor for SharePlayService();
  v78 = *(v38[-1].Description + 1);
  v78(&v11[v37], v38);
  v39 = v13[30];
  v40 = type metadata accessor for SiriService();
  v77 = *(v40[-1].Description + 1);
  v77(&v11[v39], v40);
  v41 = v13[31];
  v42 = type metadata accessor for SyncService();
  v76 = *(v42[-1].Description + 1);
  v76(&v11[v41], v42);
  v43 = &v11[v13[32]];
  v44 = *(v43 + 1);

  v45 = *(v43 + 3);

  v46 = *(v43 + 5);

  v47 = v13[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v74 = *(QueueService[-1].Description + 1);
  v74(&v11[v47], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v11[v13[34]]);
  v49 = *&v11[v13[35]];

  v50 = v13[36];
  v51 = type metadata accessor for WorkoutPlanService();
  v72 = *(v51[-1].Description + 1);
  v72(&v11[v50], v51);
  v52 = *(v122 + v75[6]);

  v53 = (v122 + v75[7]);
  v54 = *v53;

  v55 = v53[1];

  v56 = v53 + *(type metadata accessor for AppDataItemResolver() + 24);
  v57 = *v56;
  swift_unknownObjectRelease();
  v123(&v56[v13[6]], v124);
  v120(&v56[v13[7]], v121);
  v118(&v56[v13[8]], v119);
  v116(&v56[v13[9]], v117);
  v114(&v56[v13[10]], v115);
  v112(&v56[v13[11]], v113);
  v110(&v56[v13[12]], v111);
  v108(&v56[v13[13]], v109);
  v106(&v56[v13[14]], v107);
  v104(&v56[v13[15]], v105);
  v102(&v56[v13[16]], v103);
  v100(&v56[v13[17]], v101);
  v98(&v56[v13[18]], v99);
  v96(&v56[v13[19]], v97);
  v94(&v56[v13[20]], v95);
  v92(&v56[v13[21]], v93);
  v90(&v56[v13[22]], v91);
  v88(&v56[v13[23]], v89);
  v86(&v56[v13[24]], v87);
  v84(&v56[v13[25]], v85);
  v82(&v56[v13[26]], v83);
  v80(&v56[v13[27]], v81);
  v79(&v56[v13[28]], v73);
  v78(&v56[v13[29]], v38);
  v77(&v56[v13[30]], v40);
  v76(&v56[v13[31]], v42);
  v58 = &v56[v13[32]];
  v59 = *(v58 + 1);

  v60 = *(v58 + 3);

  v61 = *(v58 + 5);

  v74(&v56[v13[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v56[v13[34]]);
  v62 = *&v56[v13[35]];

  v72(&v56[v13[36]], v51);
  v63 = *(v122 + v75[8]);
  swift_unknownObjectRelease();
  if (*(v122 + v75[9] + 8) >= 0xCuLL)
  {
  }

  v64 = (v122 + v75[10]);
  if (v64[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v65 = (v128 + ((v125 + v126 + 7) & 0xFFFFFFFFFFFFFFF8));
  v66 = *v65;
  swift_unknownObjectRelease();
  v67 = v65[3];

  v68 = v65[5];

  v69 = v65[7];

  v70 = v65[9];

  return swift_deallocObject();
}

uint64_t sub_1E5F0F880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB0, &qword_1E65EEE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F0F8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB0, &qword_1E65EEE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5F0F960()
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

uint64_t sub_1E5F10664()
{
  v1 = *(sub_1E65E2258() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v23 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v0 + v2 + 8);
  }

  else if (!EnumCaseMultiPayload)
  {
    v9 = sub_1E65E21D8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }
  }

  v12 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v6 + 80) & ~v6;
  v15 = *(v0 + v12);

  v16 = (v0 + v13);
  v17 = *v16;
  swift_unknownObjectRelease();
  v18 = v16[3];

  v19 = v16[5];

  v20 = v16[7];

  v21 = v16[9];

  (*(v5 + 8))(v0 + v14, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5F108A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F108DC()
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

uint64_t sub_1E5F115C0()
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

  v56 = *(v113 + ((v111 + v110) & 0xFFFFFFFFFFFFFFF8) + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F122D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078868, &qword_1E65FDC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5F12348()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F12380()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5F123D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F12418()
{
  v127 = type metadata accessor for AppComposer();
  v125 = *(*(v127 - 1) + 80);
  v121 = *(*(v127 - 1) + 64);
  v1 = sub_1E65DBE88();
  v123 = *(v1 - 8);
  v124 = v1;
  v120 = *(v123 + 80);
  v119 = *(v123 + 64);
  v126 = v0;
  v122 = (v125 + 16) & ~v125;
  v116 = v0 + v122;
  v2 = *(v0 + v122);

  v3 = (v0 + v122 + v127[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(v3 + v6, v118);
  v7 = v5[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(v3 + v7, v115);
  v8 = v5[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(v3 + v8, v113);
  v9 = v5[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(v3 + v9, v111);
  v10 = v5[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(v3 + v10, v109);
  v11 = v5[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(v3 + v11, v107);
  v12 = v5[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(v3 + v12, v105);
  v13 = v5[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(v3 + v13, v103);
  v14 = v5[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(v3 + v14, v101);
  v15 = v5[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(v3 + v15, v99);
  v16 = v5[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(v3 + v16, v97);
  v17 = v5[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(v3 + v17, v95);
  v18 = v5[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(v3 + v18, v93);
  v19 = v5[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(v3 + v19, v91);
  v20 = v5[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(v3 + v20, v89);
  v21 = v5[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(v3 + v21, v87);
  v22 = v5[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(v3 + v22, v85);
  v23 = v5[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(v3 + v23, v83);
  v24 = v5[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(v3 + v24, v81);
  v25 = v5[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(v3 + v25, v79);
  v26 = v5[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(v3 + v26, v77);
  v27 = v5[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(v3 + v27, v75);
  v28 = v5[28];
  v68 = type metadata accessor for SessionService();
  v73 = *(v68[-1].Description + 1);
  v73(v3 + v28, v68);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v72 = *(v30[-1].Description + 1);
  v72(v3 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v71 = *(v32[-1].Description + 1);
  v71(v3 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v70 = *(v34[-1].Description + 1);
  v70(v3 + v33, v34);
  v35 = (v3 + v5[32]);
  v36 = v35[1];

  v37 = v35[3];

  v38 = v35[5];

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(v3 + v39, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v5[34]));
  v41 = *(v3 + v5[35]);

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v67 = *(v43[-1].Description + 1);
  v67(v3 + v42, v43);
  v44 = *(v116 + v127[6]);

  v45 = (v116 + v127[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = (v45 + *(type metadata accessor for AppDataItemResolver() + 24));
  v49 = *v48;
  swift_unknownObjectRelease();
  v117(v48 + v5[6], v118);
  v114(v48 + v5[7], v115);
  v112(v48 + v5[8], v113);
  v110(v48 + v5[9], v111);
  v108(v48 + v5[10], v109);
  v106(v48 + v5[11], v107);
  v104(v48 + v5[12], v105);
  v102(v48 + v5[13], v103);
  v100(v48 + v5[14], v101);
  v98(v48 + v5[15], v99);
  v96(v48 + v5[16], v97);
  v94(v48 + v5[17], v95);
  v92(v48 + v5[18], v93);
  v90(v48 + v5[19], v91);
  v88(v48 + v5[20], v89);
  v86(v48 + v5[21], v87);
  v84(v48 + v5[22], v85);
  v82(v48 + v5[23], v83);
  v80(v48 + v5[24], v81);
  v78(v48 + v5[25], v79);
  v76(v48 + v5[26], v77);
  v74(v48 + v5[27], v75);
  v73(v48 + v5[28], v68);
  v72(v48 + v5[29], v30);
  v71(v48 + v5[30], v32);
  v70(v48 + v5[31], v34);
  v50 = (v48 + v5[32]);
  v51 = v50[1];

  v52 = v50[3];

  v53 = v50[5];

  v69(v48 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v48 + v5[34]));
  v54 = *(v48 + v5[35]);

  v67(v48 + v5[36], v43);
  v55 = *(v116 + v127[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v127[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v116 + v127[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v122 + v121 + v120) & ~v120;
  v58 = (v119 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v123 + 8))(v126 + v57, v124);
  v59 = *(v126 + v58 + 8);

  v60 = (v126 + ((v58 + 23) & 0xFFFFFFFFFFFFFFF8));
  v61 = *v60;
  swift_unknownObjectRelease();
  v62 = v60[3];

  v63 = v60[5];

  v64 = v60[7];

  v65 = v60[9];

  return swift_deallocObject();
}

uint64_t sub_1E5F131B4()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v113 = (v114 + 16) & ~v114;
  v115 = v0;
  v109 = v0 + v113;
  v1 = *(v0 + v113);

  v2 = (v0 + v113 + v116[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v5], v111);
  v6 = v4[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v6], v108);
  v7 = v4[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v7], v106);
  v8 = v4[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v8], v104);
  v9 = v4[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v9], v102);
  v10 = v4[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v10], v100);
  v11 = v4[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v11], v98);
  v12 = v4[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v12], v96);
  v13 = v4[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v13], v94);
  v14 = v4[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v14], v92);
  v15 = v4[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v15], v90);
  v16 = v4[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v16], v88);
  v17 = v4[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v17], v86);
  v18 = v4[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v18], v84);
  v19 = v4[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v19], v82);
  v20 = v4[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v20], v80);
  v21 = v4[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v21], v78);
  v22 = v4[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v22], v76);
  v23 = v4[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v23], v74);
  v24 = v4[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v24], v72);
  v25 = v4[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v25], v70);
  v26 = v4[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v26], v68);
  v27 = v4[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v2[v27], v61);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v65 = *(v29[-1].Description + 1);
  v65(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v64 = *(v31[-1].Description + 1);
  v64(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v63 = *(v33[-1].Description + 1);
  v63(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v60 = *(v42[-1].Description + 1);
  v60(&v2[v41], v42);
  v43 = *(v109 + v116[6]);

  v44 = (v109 + v116[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v110(&v47[v4[6]], v111);
  v107(&v47[v4[7]], v108);
  v105(&v47[v4[8]], v106);
  v103(&v47[v4[9]], v104);
  v101(&v47[v4[10]], v102);
  v99(&v47[v4[11]], v100);
  v97(&v47[v4[12]], v98);
  v95(&v47[v4[13]], v96);
  v93(&v47[v4[14]], v94);
  v91(&v47[v4[15]], v92);
  v89(&v47[v4[16]], v90);
  v87(&v47[v4[17]], v88);
  v85(&v47[v4[18]], v86);
  v83(&v47[v4[19]], v84);
  v81(&v47[v4[20]], v82);
  v79(&v47[v4[21]], v80);
  v77(&v47[v4[22]], v78);
  v75(&v47[v4[23]], v76);
  v73(&v47[v4[24]], v74);
  v71(&v47[v4[25]], v72);
  v69(&v47[v4[26]], v70);
  v67(&v47[v4[27]], v68);
  v66(&v47[v4[28]], v61);
  v65(&v47[v4[29]], v29);
  v64(&v47[v4[30]], v31);
  v63(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v62(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v60(&v47[v4[36]], v42);
  v54 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v109 + v116[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v112 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v115 + v56);

  __swift_destroy_boxed_opaque_existential_1((v115 + v57));

  return swift_deallocObject();
}

uint64_t sub_1E5F13EAC()
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

uint64_t sub_1E5F14B8C()
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

uint64_t sub_1E5F15940()
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