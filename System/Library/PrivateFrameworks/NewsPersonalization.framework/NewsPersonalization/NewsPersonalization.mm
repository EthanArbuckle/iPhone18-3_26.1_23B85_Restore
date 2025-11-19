id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NXAssembly_assemblies;
  sub_1C6B0BE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D80210;
  v4 = type metadata accessor for AnalyticsAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1C6B0BEFC(&qword_1EDCE9A68, type metadata accessor for AnalyticsAssembly);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for DiagnosticAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1C6B0BEFC(qword_1EDCE98F0, type metadata accessor for DiagnosticAssembly);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for ServiceAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_1C6B0BEFC(qword_1EDCE9B20, type metadata accessor for ServiceAssembly);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for SessionTrackingAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_1C6B0BEFC(&unk_1EDCE9358, type metadata accessor for SessionTrackingAssembly);
  *(v3 + 152) = v11;
  *&v0[v2] = v3;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1C6B0BE1C()
{
  if (!qword_1EDCE7D28)
  {
    sub_1C6B0BE74();
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7D28);
    }
  }
}

unint64_t sub_1C6B0BE74()
{
  result = qword_1EDCEA348;
  if (!qword_1EDCEA348)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA348);
  }

  return result;
}

uint64_t sub_1C6B0BEFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B0BFC8()
{
  v0 = sub_1C6D781E0();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  type metadata accessor for NewsPersonalizer();
  sub_1C6D78100();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_1C6D77F20();

  v7 = v1[1];
  v7(v4, v0);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCEA378);
  sub_1C6D78110();

  v6(v4, v5, v0);
  sub_1C6D77F20();

  v7(v4, v0);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCEA380);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C830();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE9840);
  sub_1C6D78110();

  sub_1C6D78050();
  _s7FactoryCMa();
  sub_1C6D78100();
}

uint64_t sub_1C6B0C47C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NewsPersonalizer()
{
  result = qword_1EDCEA000;
  if (!qword_1EDCEA000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B0C534()
{
  v0 = sub_1C6D76B80();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C6B0C628();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C6B0C628()
{
  if (!qword_1EDCEA388)
  {
    sub_1C6B0C69C(255, &qword_1EDCE7E80, 0x1E69B5448);
    sub_1C6B0C6E4();
    v0 = sub_1C6D77080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA388);
    }
  }
}

uint64_t sub_1C6B0C69C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1C6B0C6E4()
{
  result = qword_1EDCE7E88;
  if (!qword_1EDCE7E88)
  {
    sub_1C6B0C69C(255, &qword_1EDCE7E80, 0x1E69B5448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7E88);
  }

  return result;
}

uint64_t sub_1C6B0C790(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C6B0C69C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B0C7D4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C6B0C830()
{
  if (!qword_1EDCE9BE8)
  {
    _s7FactoryCMa();
    v0 = type metadata accessor for SessionManager();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE9BE8);
    }
  }
}

uint64_t sub_1C6B0C900(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6B0C9A8()
{
  v0 = sub_1C6D77FF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  type metadata accessor for DiagnosticFileProvider();
  sub_1C6D78100();

  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1C6D78140();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6500], v0);
  sub_1C6D78150();
  (*(v1 + 8))(v4, v0);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C6B0CBB4(uint64_t a1)
{
  v2 = sub_1C6D77FF0();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D781E0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCEA358);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE7E70, &protocolRef_FCPersonalizedGrouping);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7EA8, &protocolRef_FCFeedPersonalizing);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE7FA8);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE7F10, &protocolRef_FCTagRanking);
  sub_1C6D78100();

  sub_1C6D78050();
  type metadata accessor for UserEmbeddingManager();
  sub_1C6D78100();

  v10 = *MEMORY[0x1E69D6AD0];
  v11 = v6[13];
  v59 = v6 + 13;
  v60 = v10;
  v11(v9, v10, v5);
  v57 = v11;
  sub_1C6D77F20();

  v12 = v6[1];
  v12(v9, v5);
  v58 = v6 + 1;
  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7E58, &protocolRef_FCClearableUserEmbedding);
  sub_1C6D78100();

  sub_1C6D78050();
  v13 = sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
  sub_1C6D78100();

  sub_1C6D78050();
  v53 = v13;
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7DC8, &protocolRef_FCReadonlyAggregateStoreProviderType);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE92B0);
  sub_1C6D78110();

  v11(v9, v10, v5);
  sub_1C6D77F20();

  v12(v9, v5);
  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7E38, &protocolRef_NPUserEmbeddingGeneratorType);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE8F60);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE8D38);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE86E0);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE8F38);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE9100);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCEA368);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE9A70);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE8F48);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE92A0);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE7FC8);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0F7A8(0, &qword_1EDCE7E20, &protocolRef_FCRecipeAutofavoritesProviding);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &unk_1EDCE7FB8);
  sub_1C6D78110();

  v55 = a1;
  sub_1C6D78050();
  type metadata accessor for RecipeAutoFavoritesManager();
  sub_1C6D78100();

  v14 = v9;
  v15 = v9;
  v16 = v60;
  v54 = v5;
  v17 = v57;
  v57(v15, v60, v5);
  sub_1C6D77F20();

  v12(v14, v5);
  sub_1C6D78060();
  type metadata accessor for AutoFavoritesService();
  sub_1C6D78100();

  v18 = v16;
  v19 = v16;
  v20 = v54;
  v17(v14, v19, v54);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6D78100();

  v21 = v57;
  v57(v14, v18, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8A30);
  sub_1C6D78110();

  v21(v14, v60, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v22 = v60;
  v23 = v21;
  v21(v14, v60, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ArticleEventHistoryTagSuggestionsProvider();
  sub_1C6D78100();

  v21(v14, v22, v20);
  sub_1C6D77F20();

  v56 = v12;
  v12(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeEventHistoryTagSuggestionsProvider();
  sub_1C6D78100();

  v24 = v60;
  v23(v14, v60, v20);
  sub_1C6D77F20();

  v12(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE88D8);
  sub_1C6D78110();

  v25 = v24;
  v26 = v57;
  v57(v14, v25, v20);
  sub_1C6D77F20();

  v27 = v56;
  v56(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v28 = v60;
  v26(v14, v60, v20);
  sub_1C6D77F20();

  v27(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ArticleAutoFavoritesServiceConfigurationProvider();
  sub_1C6D78100();

  v26(v14, v28, v20);
  sub_1C6D77F20();

  v29 = v56;
  v56(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesServiceConfigurationProvider();
  sub_1C6D78100();

  v26(v14, v28, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesResourceManager();
  sub_1C6D78100();

  v26(v14, v28, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  sub_1C6D78100();

  v30 = v60;
  v26(v14, v60, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7DA8, &protocolRef_FCPersonalizationBundleIDMappingProvider);
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7DD0, &protocolRef_FCPersonalizationURLMappingProvider);
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesPersistence();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ArticleAutoFavoritesGroupingEligibilityPolicy();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for RecipeAutoFavoritesGroupingEligibilityPolicy();
  sub_1C6D78100();

  v26(v14, v30, v20);
  v31 = v26;
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for ClearableUserEmbeddingManager();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6D78110();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for NewsPersonalizationService();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for NotificationScoringService();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for XavierGroupingService();
  sub_1C6D78100();

  v26(v14, v30, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, &unk_1EDCE9788);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE9850);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE90F8);
  sub_1C6D78110();

  v32 = v60;
  v31(v14, v60, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for EventHistoryAggregateStoreStateModeResolver();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0C69C(0, &unk_1EDCE7E00, 0x1E69B51B0);
  sub_1C6D78100();

  v31(v14, v32, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  type metadata accessor for XavierScoringService();
  sub_1C6D78100();

  v31(v14, v32, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6D75DE0();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8A28);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for AppUserEmbeddingManager();
  sub_1C6D78100();

  v31(v14, v32, v20);
  sub_1C6D77F20();

  v29(v14, v20);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE9020);
  sub_1C6D78110();

  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  sub_1C6D780C0();
  v34 = v50;
  v33 = v51;
  v35 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x1E69D6500], v52);
  sub_1C6D78150();
  (*(v33 + 8))(v34, v35);
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1C6D78060();
  type metadata accessor for NewsPersonalizationDataCleanupStartupTask(0);
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for NotificationUserEventHistorySubmissionStartupTask();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCE8438);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8D30);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, &qword_1EDCE8F58);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE8D40);
  sub_1C6D78110();

  v36 = v14;
  v37 = v14;
  v38 = v60;
  v39 = v54;
  v40 = v57;
  v57(v37, v60, v54);
  sub_1C6D77F20();

  v41 = v56;
  v56(v36, v39);
  sub_1C6D78050();
  sub_1C6B0F658(0, qword_1EDCE8A38, type metadata accessor for TopicClusteringJournalStorageService, MEMORY[0x1E69E6720]);
  sub_1C6D78110();

  v40(v36, v38, v39);
  sub_1C6D77F20();

  v41(v36, v39);
  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE7FA0);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, &qword_1EDCE91F8);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B0C7D4(0, qword_1EDCE8E80);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D79200();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6D79190();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0C7D4(0, qword_1EDCEA188);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for EmptyPersonalizationDataGenerator();
  sub_1C6D78100();

  v42 = v57;
  v57(v36, v38, v39);
  sub_1C6D77F20();

  v43 = v39;
  v44 = v39;
  v45 = v56;
  v56(v36, v43);
  sub_1C6D78060();
  sub_1C6D78100();

  v42(v36, v38, v44);
  sub_1C6D77F20();

  v45(v36, v44);
  v46 = v45;
  sub_1C6D78060();
  sub_1C6B0C69C(0, &unk_1EDCEA8D0, 0x1E69B5568);
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for AppUserContextProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B0F7A8(0, &unk_1EDCE7E98, &protocolRef_FCTranslationManager);
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for ManagerTranslationProviderProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  sub_1C6B37EF4();
  sub_1C6D78100();

  v47 = v60;
  v48 = v54;
  v42(v36, v60, v54);
  sub_1C6D77F20();

  v46(v36, v48);
  sub_1C6D78060();
  type metadata accessor for BundleSubscriptionIsSubscribedProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for TagEvaluator();
  sub_1C6D78100();

  v42(v36, v47, v48);
  sub_1C6D77F20();

  v46(v36, v48);
  sub_1C6D78060();
  type metadata accessor for TagSuggestionsDataService();
  sub_1C6D78100();

  v42(v36, v47, v48);
  sub_1C6D77F20();

  v46(v36, v48);
  sub_1C6D78060();
  sub_1C6B0C7D4(0, &unk_1EDCE82C0);
  sub_1C6D78110();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1C6B0F56C()
{
  if (!qword_1EDCEA2E8)
  {
    sub_1C6B0F9A0(255, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA2E8);
    }
  }
}

unint64_t sub_1C6B0F5E0()
{
  result = qword_1EDCE7F78;
  if (!qword_1EDCE7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F78);
  }

  return result;
}

void sub_1C6B0F658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for TopicClusteringJournalStorageService()
{
  result = qword_1EDCE8AE8;
  if (!qword_1EDCE8AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B0F708()
{
  result = sub_1C6D75DE0();
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

uint64_t sub_1C6B0F7A8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for UserEmbeddingManager()
{
  result = qword_1EDCE9570;
  if (!qword_1EDCE9570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B0F854()
{
  v0 = sub_1C6D75DE0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C6B0F56C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C6B0FA4C(319, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C6B0F9A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1C6B0F5E0();
    v9[0] = MEMORY[0x1E69E6448];
    v9[1] = MEMORY[0x1E69E6530];
    v9[2] = MEMORY[0x1E695FD58];
    v9[3] = v6;
    v9[4] = MEMORY[0x1E69E6548];
    v9[5] = MEMORY[0x1E69E6560];
    v9[6] = MEMORY[0x1E69E6538];
    v9[7] = MEMORY[0x1E69E6540];
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C6B0FA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B0FD10(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B0FD48()
{
  result = sub_1C6D75DE0();
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

uint64_t sub_1C6B0FEE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B0FF44(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6B1005C()
{
  v0 = sub_1C6D77FF0();
  v19 = *(v0 - 8);
  v20 = v0;
  v1 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v18 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1C6D781E0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D78050();
  sub_1C6D78110();

  v8 = *MEMORY[0x1E69D6AD0];
  v9 = v4[13];
  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10 = v4[1];
  v10(v7, v3);
  sub_1C6D78050();
  type metadata accessor for SessionTracker();
  sub_1C6D78100();

  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78050();
  sub_1C6B10A08(0, qword_1EDCE9BF8, _s7FactoryCMa_0, &off_1EEB69450, type metadata accessor for SessionManager);
  sub_1C6D78100();

  sub_1C6D78050();
  _s7FactoryCMa_0();
  sub_1C6D78100();

  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  v17 = v4 + 1;
  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE9840);
  sub_1C6D78110();

  v16 = v8;
  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78050();
  sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A08(0, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver, &protocol witness table for RecipeUserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE9368);
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for UserEventHistorySessionUnarchiver();
  sub_1C6D78100();

  sub_1C6D78050();
  type metadata accessor for RecipeUserEventHistorySessionUnarchiver();
  sub_1C6D78100();

  sub_1C6D78050();
  type metadata accessor for UserEventHistoryAggregateStoreMetadataEndpoint();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE82D0);
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for UserEventHistoryJSONSerializer();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE86E8);
  sub_1C6D78110();

  v9(v7, v8, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE7F90);
  sub_1C6D78110();

  v9(v7, v16, v3);
  sub_1C6D77F20();

  v10(v7, v3);
  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1C6D780C0();
  v12 = v18;
  v11 = v19;
  v13 = v20;
  (*(v19 + 104))(v18, *MEMORY[0x1E69D6500], v20);
  sub_1C6D78150();
  (*(v11 + 8))(v12, v13);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1C6B10A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1C6B10A98(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C6B10B30(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C6B10C98()
{
  if (!qword_1EDCE7F68)
  {
    sub_1C6D75DE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE7F68);
    }
  }
}

unint64_t sub_1C6B10D00()
{
  result = qword_1EDCE7CC8;
  if (!qword_1EDCE7CC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE7CC8);
  }

  return result;
}

void sub_1C6B10E14()
{
  v0 = type metadata accessor for FileLog.Configuration(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for FileLog.TargetDirectory(319);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C6B10FF4(319, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C6B10F60()
{
  sub_1C6B0C69C(319, &unk_1EDCE7E40, 0x1E696B050);
  if (v0 <= 0x3F)
  {
    sub_1C6B68D1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B10FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B11078()
{
  sub_1C6D75DE0();
  if (v0 <= 0x3F)
  {
    sub_1C6D6DEA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1C6B110EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = sub_1C6D79340();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_1C6D79330();
    v8 = MEMORY[0x1E69B61A8];
    a2[3] = v5;
    a2[4] = v8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6B11220()
{
  result = qword_1EDCE8F70;
  if (!qword_1EDCE8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F70);
  }

  return result;
}

unint64_t sub_1C6B11274()
{
  result = qword_1EDCE8F78;
  if (!qword_1EDCE8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F78);
  }

  return result;
}

void sub_1C6B11310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B11374()
{
  if (!qword_1EDCE65D8)
  {
    v0 = sub_1C6D79990();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65D8);
    }
  }
}

uint64_t type metadata accessor for UserEventsFeatureResolver()
{
  result = qword_1EDCE6FB8;
  if (!qword_1EDCE6FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B11418()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C6C290F4(0, &qword_1EC1D7FF0, sub_1C6C29158, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1C6B11488()
{
  v0 = sub_1C6D781E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE6A98);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE6AA0);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for ChannelPickerSuggestionsService();
  sub_1C6D78100();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1C6D77F20();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C6B11684(uint64_t a1)
{
  v52 = sub_1C6D77FF0();
  v55 = *(v52 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6D781E0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78050();
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  sub_1C6D78100();

  v9 = *MEMORY[0x1E69D6AD0];
  v10 = v5[13];
  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11 = v5[1];
  v11(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE6BF8);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE66C0);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE66D8);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D786A0();
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for ComputeServiceAdSegmentProvider();
  sub_1C6D78100();

  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  sub_1C6D78050();
  type metadata accessor for ComputeServiceCohortMembershipService();
  sub_1C6D78100();

  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE7950);
  sub_1C6D78110();

  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  v54 = v11;
  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE6A88);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCEA940);
  sub_1C6D78110();

  sub_1C6D78050();
  type metadata accessor for ComputeServiceScoringService();
  sub_1C6D78100();

  v60 = v5 + 13;
  v10(v8, v9, v4);
  sub_1C6D77F20();

  v11(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE7AB8);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCE7940);
  sub_1C6D78110();

  v12 = v10;
  v57 = v10;
  v10(v8, v9, v4);
  sub_1C6D77F20();

  v13 = v54;
  v54(v8, v4);
  sub_1C6D78050();
  sub_1C6B0F7A8(0, &unk_1EDCE6598, &protocolRef_FCUserVectorAggregateVectorProvider);
  sub_1C6D78100();

  v12(v8, v9, v4);
  sub_1C6D77F20();

  v13(v8, v4);
  v14 = v13;
  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE6F00);
  sub_1C6D78110();

  sub_1C6D78050();
  sub_1C6D41FFC(0, &qword_1EDCE7A28, MEMORY[0x1E6996188]);
  v47 = v15;
  sub_1C6D78100();

  v16 = v57;
  v57(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, qword_1EDCE6FF0);
  sub_1C6D78110();

  v16(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  sub_1C6D78050();
  type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
  sub_1C6D78100();

  v16(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE70B8);
  sub_1C6D78110();

  v16(v8, v9, v4);
  sub_1C6D77F20();

  v53 = v4;
  v14(v8, v4);
  sub_1C6D78050();
  sub_1C6B10A98(0, &unk_1EDCEA930);
  sub_1C6D78110();

  v58 = v9;
  v16(v8, v9, v4);
  sub_1C6D77F20();

  v14(v8, v4);
  v17 = v14;
  v18 = v5 + 1;
  v19 = a1;
  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE6C00);
  sub_1C6D78110();

  v20 = v53;
  v16(v8, v9, v53);
  sub_1C6D77F20();

  v17(v8, v20);
  v21 = v18;
  v22 = v19;
  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v50 = *MEMORY[0x1E69D6500];
  v23 = v55;
  v24 = *(v55 + 104);
  v48 = v55 + 104;
  v49 = v24;
  v26 = v51;
  v25 = v52;
  v24(v51);
  sub_1C6D78150();
  v27 = *(v23 + 8);
  v55 = v23 + 8;
  v47 = v27;
  v27(v26, v25);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v56 = v22;
  sub_1C6D78050();
  type metadata accessor for ComputeServiceRefreshBackgroundWorker();
  sub_1C6D78100();

  v28 = v58;
  v29 = v53;
  v30 = v57;
  v57(v8, v58, v53);
  sub_1C6D77F20();

  v31 = v54;
  v54(v8, v29);
  sub_1C6D78060();
  sub_1C6D78640();
  sub_1C6D78110();

  v32 = v28;
  v30(v8, v28, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceStartupTask();
  sub_1C6D78100();

  v30(v8, v28, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  v59 = v21;
  sub_1C6D78050();
  v33 = sub_1C6D75DE0();
  sub_1C6D78110();

  v34 = v57;
  v57(v8, v32, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  sub_1C6D78110();

  v34(v8, v32, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  sub_1C6D78110();

  v34(v8, v32, v29);
  sub_1C6D77F20();

  v31(v8, v29);
  sub_1C6D78060();
  v45 = v33;
  sub_1C6D78110();

  v35 = v53;
  v34(v8, v32, v53);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  v46 = MEMORY[0x1E69E6720];
  sub_1C6B11310(0, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
  sub_1C6D78110();

  v34(v8, v32, v35);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  sub_1C6D78110();

  v36 = v58;
  v34(v8, v58, v35);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  sub_1C6B10DA0(0);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6B11310(0, &qword_1EDCE6678, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1C6D78110();

  v37 = v36;
  v38 = v57;
  v57(v8, v37, v35);
  sub_1C6D77F20();

  v31(v8, v35);
  sub_1C6D78060();
  sub_1C6D78110();

  v39 = v58;
  v38(v8, v58, v35);
  sub_1C6D77F20();

  v40 = v54;
  v54(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceUnloaderService();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceConfigurationManager();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for PackageService();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for NewsAppFeatureResolvers();
  sub_1C6D78100();

  sub_1C6D78050();
  sub_1C6B10A98(0, &qword_1EDCE70B0);
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for UserEventsFeatureResolver();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  sub_1C6D41EEC(0, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver);
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ArticleFeaturesFactory();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  type metadata accessor for ArticleEventFeaturesProvider();
  sub_1C6D78100();

  sub_1C6D78060();
  type metadata accessor for ArticleUserEventHistoryFeaturesFactory();
  sub_1C6D78100();

  v38(v8, v39, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78070();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  sub_1C6D780C0();
  v42 = v51;
  v41 = v52;
  v49(v51, v50, v52);
  sub_1C6D78150();
  v47(v42, v41);
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  type metadata accessor for NewsComputationalGraphRequestProcessor();
  sub_1C6D78100();

  v43 = v57;
  v57(v8, v58, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D78060();
  sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, v46);
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78110();

  sub_1C6D78060();
  sub_1C6D78730();
  sub_1C6D78100();

  v43(v8, v58, v35);
  sub_1C6D77F20();

  v40(v8, v35);
  sub_1C6D77F10();
}

unint64_t sub_1C6B134B8()
{
  result = qword_1EDCE8F80;
  if (!qword_1EDCE8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F80);
  }

  return result;
}

uint64_t sub_1C6B1357C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4(0, a2, a3);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B1361C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for XavierScoringService();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    v4 = [objc_allocWithZone(MEMORY[0x1E69B51B0]) initWithTarget_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B1369C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &unk_1EDCEA8D0, 0x1E69B5568);
  result = sub_1C6D77FB0();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290);
  result = sub_1C6D77FE0();
  if (!v82)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCEA188);
  sub_1C6D77FE0();
  if (v77)
  {
    v7 = [*(*__swift_project_boxed_opaque_existential_1(&v76 v77) + 16)];
    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  else
  {
    sub_1C6B15090(&v76, &unk_1EC1D5FC0, qword_1EDCEA188, &protocol descriptor for TranslationProviderProviderType);
    v7 = 0;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0);
  result = sub_1C6D77FE0();
  if (!v80[3])
  {
    goto LABEL_14;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = type metadata accessor for ComputeServiceScoringService();
  v11 = sub_1C6D77FD0();
  if (v11)
  {
    v12 = &protocol witness table for ComputeServiceScoringService;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v79[1] = 0;
    v79[2] = 0;
  }

  v79[0] = v11;
  v79[3] = v10;
  v79[4] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceCohortMembershipService();
  v64 = sub_1C6D77FD0();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D77350();
  result = sub_1C6D77FD0();
  if (result)
  {
    v15 = result;
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCEA930);
    sub_1C6D77FE0();
    v17 = type metadata accessor for XavierScoringService();
    v18 = objc_allocWithZone(v17);
    v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring] = 0;
    *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore] = v4;
    sub_1C6B16F28(v81, &v76);
    v19 = swift_allocObject();
    sub_1C6B15E34(&v76, v19 + 16);
    sub_1C6B16F28(v81, v74);
    v20 = swift_allocObject();
    sub_1C6B15E34(v74, v20 + 16);
    v72 = v4;
    sub_1C6B14DC0();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v63 = v4;
    *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext] = sub_1C6D762F0();
    sub_1C6B16F28(v81, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager]);
    v24 = v82;
    v25 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v25 + 8))(v69, v24, v25);
    v26 = v69[3];
    sub_1C6B11190(v69);
    v27 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
    swift_beginAccess();
    *&v74[0] = v26;
    sub_1C6B14EE0(0, &qword_1EDCEA790, &qword_1EDCEA500, 0x1E69B5480);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    *&v18[v27] = sub_1C6D78220();
    swift_endAccess();
    v31 = v82;
    v32 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v32 + 8))(&v70, v31, v32);
    sub_1C6B11190(&v70);
    LOBYTE(v27) = v71;
    v33 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
    swift_beginAccess();
    LOBYTE(v74[0]) = v27;
    sub_1C6B16F8C(0, &unk_1EDCEA7A0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
    v35 = v34;
    v36 = *(v34 + 48);
    v37 = *(v34 + 52);
    swift_allocObject();
    *&v18[v33] = sub_1C6D78220();
    swift_endAccess();
    v38 = v82;
    v39 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v39 + 8))(&v72, v38, v39);
    sub_1C6B11190(&v72);
    LOBYTE(v27) = v73;
    v40 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
    swift_beginAccess();
    LOBYTE(v74[0]) = v27;
    v41 = *(v35 + 48);
    v42 = *(v35 + 52);
    swift_allocObject();
    *&v18[v40] = sub_1C6D78220();
    swift_endAccess();
    v43 = v82;
    v44 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v44 + 8))(v74, v43, v44);
    v45 = v75;
    sub_1C6B11190(v74);
    v46 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
    swift_beginAccess();
    v67 = v45;
    sub_1C6B14EE0(0, &qword_1EDCEA780, &qword_1EDCEA4B0, 0x1E69B5460);
    v48 = v47;
    v49 = *(v47 + 48);
    v50 = *(v47 + 52);
    swift_allocObject();
    *&v18[v46] = sub_1C6D78220();
    swift_endAccess();
    v51 = v82;
    v52 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v52 + 8))(&v76, v51, v52);
    v53 = v78;
    sub_1C6B11190(&v76);
    v54 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
    swift_beginAccess();
    v66 = v53;
    v55 = *(v48 + 48);
    v56 = *(v48 + 52);
    swift_allocObject();
    *&v18[v54] = sub_1C6D78220();
    swift_endAccess();
    *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider] = v7;
    sub_1C6B16F28(v80, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider]);
    sub_1C6B14FA4(v79, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService], qword_1EDCEA6B0, &unk_1EDCEA940, &protocol descriptor for ComputeServiceScoringServiceType);
    *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService] = v64;
    *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker] = v15;
    sub_1C6B14FA4(v68, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService], qword_1EDCEA548, &unk_1EDCEA930, &protocol descriptor for RecipeScoringServiceType);
    v65.receiver = v18;
    v65.super_class = v17;
    swift_unknownObjectRetain();

    v57 = objc_msgSendSuper2(&v65, sel_init);
    v58 = v82;
    v59 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = *(v59 + 32);
    v62 = v57;

    v61(sub_1C6B3807C, v60, v58, v59);

    swift_unknownObjectRelease();

    sub_1C6B15090(v68, qword_1EDCEA548, &unk_1EDCEA930, &protocol descriptor for RecipeScoringServiceType);
    sub_1C6B15090(v79, qword_1EDCEA6B0, &unk_1EDCEA940, &protocol descriptor for ComputeServiceScoringServiceType);
    __swift_destroy_boxed_opaque_existential_1(v80);

    __swift_destroy_boxed_opaque_existential_1(v81);
    return v62;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C6B13F8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C6B13FC4()
{
  MEMORY[0x1CCA571E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B14000(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
  result = sub_1C6D77FB0();
  if (result)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B140A4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v5 == 2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v5)
  {
    sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
    result = sub_1C6D77FD0();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  type metadata accessor for EmptyPersonalizationDataGenerator();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B14194@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290);
  result = sub_1C6D77FE0();
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 8))(v7, v5, v6);
    sub_1C6B11190(v7);
    *a2 = v8;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B14280(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t static FeatureState.recoveringState<A>(isEnabled:feature:configuration:)@<X0>(char a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1C6D79C00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if (a1)
  {
    v15 = *a2;
    (*(v11 + 16))(v14, a3, v10);
    v16 = *(a4 - 8);
    if ((*(v16 + 48))(v14, 1, a4) == 1)
    {
      v17 = 0xD000000000000018;
      (*(v11 + 8))(v14, v10);
      sub_1C6D79AB0();
      sub_1C6B1D314();
      v18 = swift_allocObject();
      v19 = v18;
      *(v18 + 16) = xmmword_1C6D7E630;
      if (v15)
      {
        if (v15 == 1)
        {
          v20 = "articleEmbeddingsScoring";
        }

        else
        {
          v20 = "statelessPersonalization";
          v17 = 0xD000000000000013;
        }
      }

      else
      {
        v20 = "n";
      }

      v23 = v20 | 0x8000000000000000;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1C6B2064C();
      *(v19 + 32) = v17;
      *(v19 + 40) = v23;
      sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
      v24 = sub_1C6D79BD0();
      sub_1C6D78D30();

      return (*(v16 + 56))(a5, 1, 1, a4);
    }

    else
    {
      (*(v16 + 32))(a5, v14, a4);
      return (*(v16 + 56))(a5, 0, 1, a4);
    }
  }

  else
  {
    v21 = *(*(a4 - 8) + 56);

    return v21(a5, 1, 1, a4);
  }
}

uint64_t sub_1C6B145F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = a2(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    a4[3] = v8;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B146C0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  v2 = sub_1C6D77FD0();
  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v2 translationManager];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1C6B14770(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0F7A8(0, &unk_1EDCE66C8, &protocolRef_TSLocationDetectionManagerType);
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      type metadata accessor for AppUserContextProvider();
      result = swift_allocObject();
      *(result + 16) = v4;
      *(result + 24) = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B14864(void *a1)
{
  sub_1C6B0F658(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1C6D75DE0();
  sub_1C6D77FC0();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C6D77FA0();
    v9 = sub_1C6D77F90();
    v10 = type metadata accessor for UserEmbeddingManager();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    return UserEmbeddingManager.init(directory:writeHumanReadableParametersToDisk:)(v5, v9 & 1);
  }

  return result;
}

void *sub_1C6B149D0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    v4 = [result privateDataDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UserEmbeddingManager.init(directory:writeHumanReadableParametersToDisk:)(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1C6B0FA4C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_1C6D75DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager____lazy_storage___classifier;
  sub_1C6B0F9A0(0, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
  v17 = 1;
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v18 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_unfairLock;
  *(v3 + v18) = swift_slowAlloc();
  v19 = v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_loadedUserEmbedding;
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_1C6D75D50();
  (*(v11 + 32))(v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_path, v14, v10);
  if (a2)
  {
    sub_1C6D75D50();
    v17 = 0;
  }

  (*(v11 + 56))(v9, v17, 1, v10);
  sub_1C6B14D2C(v9, v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_humanReadableParametersPath);
  **(v3 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_unfairLock) = 0;
  (*(v11 + 8))(a1, v10);
  return v3;
}

uint64_t sub_1C6B14D2C(uint64_t a1, uint64_t a2)
{
  sub_1C6B0FA4C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6B14DC0()
{
  if (!qword_1EDCEA810)
  {
    sub_1C6B0C69C(255, &unk_1EDCEA8D0, 0x1E69B5568);
    sub_1C6B14E34();
    v0 = sub_1C6D76320();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA810);
    }
  }
}

unint64_t sub_1C6B14E34()
{
  result = qword_1EDCEA4C0;
  if (!qword_1EDCEA4C0)
  {
    sub_1C6B0C69C(255, &unk_1EDCEA8D0, 0x1E69B5568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA4C0);
  }

  return result;
}

void sub_1C6B14EE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C6B0C69C(255, a3, a4);
    v5 = sub_1C6D78250();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B14F38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0C7D4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C6B14FA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1C6B14F38(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1C6B15028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B15090(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1C6B14F38(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6B15100(void *a1, void (*a2)(void))
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1C6B15174(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = [v4 appConfigurationManager];
  result = [v4 paidAccessChecker];
  if (result)
  {
    v8 = result;
    v9 = [v4 deviceIsiPad];
    type metadata accessor for XavierGroupingService();
    v10 = swift_allocObject();
    v11 = [objc_msgSend(v7 possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v10 + 16) = v11;
    *(v10 + 24) = v8;
    *(v10 + 32) = v6;
    *(v10 + 40) = v9;
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6B152FC(uint64_t a1, void *a2)
{
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = type metadata accessor for AppUserEmbeddingManager();
  v5 = sub_1C6D77FD0();
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v26 = v4;
  v27 = sub_1C6B0FEE4(qword_1EDCE70C0, type metadata accessor for AppUserEmbeddingManager);
  v25[0] = v6;
  sub_1C6D780B0();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = type metadata accessor for NewsPersonalizationDataCleanupStartupTask(0);
  v9 = sub_1C6D77FD0();
  if (!v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v9;
  v26 = v8;
  v27 = sub_1C6B0FEE4(&qword_1EDCE7838, type metadata accessor for NewsPersonalizationDataCleanupStartupTask);
  v25[0] = v10;
  sub_1C6D780B0();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (!v12)
  {
    return;
  }

  v13 = sub_1C6D795A0();
  v15 = v14;

  if (v13 == 0x6C7070612E6D6F63 && v15 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v16 = sub_1C6D7A130();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  v18 = sub_1C6D77FD0();
  if (v18)
  {
    v19 = [v18 possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    if ([v19 respondsToSelector_])
    {
      v20 = [v19 useNotificationsV2];
      swift_unknownObjectRelease();
      if (v20)
      {
        v21 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v22 = type metadata accessor for NotificationUserEventHistorySubmissionStartupTask();
        v23 = sub_1C6D77FD0();
        if (v23)
        {
          v24 = v23;
          v26 = v22;
          v27 = sub_1C6B0FEE4(qword_1EDCDFD20, type metadata accessor for NotificationUserEventHistorySubmissionStartupTask);
          v25[0] = v24;
          sub_1C6D780B0();
          __swift_destroy_boxed_opaque_existential_1(v25);
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C6B15654(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UserEmbeddingManager();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8A28);
  result = sub_1C6D77FE0();
  v8 = v17;
  if (v17)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(*(v8 - 8) + 64);
    MEMORY[0x1EEE9AC00](v9);
    v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_1C6B159B4(v4, v6, *v12);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6B15828(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for SessionDataProvider();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B1588C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290);
  result = sub_1C6D77FE0();
  if (v8)
  {
    v5 = type metadata accessor for UserEmbeddingConfigurationService();
    v6 = swift_allocObject();
    result = sub_1C6B15E34(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_1F46751E0;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_1C6B159B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v18[3] = v5;
  v18[4] = &off_1F46751E0;
  v18[0] = a3;
  v6 = type metadata accessor for AppUserEmbeddingManager();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v18, v5);
  v9 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  (*(v12 + 16))(&v16 - v10);
  v13 = *v11;
  v17[3] = v5;
  v17[4] = &off_1F46751E0;
  v17[0] = v13;
  *&v7[OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_sessionDataProvider] = a1;
  *&v7[OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingManager] = a2;
  sub_1C6B16F28(v17, &v7[OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingConfigurationService]);
  v16.receiver = v7;
  v16.super_class = v6;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_1C6B15B38@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6920];
  v3 = sub_1C6D78190();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_1C6B15BB0(void *a1)
{
  v2 = sub_1C6D75DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v9 = result;
    v10 = [result privateDataDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();

    v11 = type metadata accessor for NewsPersonalizationDataCleanupStartupTask(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    *(v14 + 16) = &unk_1F4671700;
    (*(v3 + 32))(v14 + OBJC_IVAR____TtC19NewsPersonalization41NewsPersonalizationDataCleanupStartupTask_privateDataDirectory, v6, v2);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B15D3C(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6B10A98(0, qword_1EDCE86E8);
  result = sub_1C6D77FE0();
  if (v7)
  {
    v4 = type metadata accessor for UserEventHistoryAggregateStoreFactoryStartupTask();
    v5 = swift_allocObject();
    sub_1C6B15E34(&v6, v5 + 16);
    v7 = v4;
    v8 = sub_1C6B17F28(qword_1EDCE67C8, type metadata accessor for UserEventHistoryAggregateStoreFactoryStartupTask);
    *&v6 = v5;
    sub_1C6D780B0();
    return __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B15E34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FileLog.Configuration.init(loggingUnit:maxSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for FileLog.Configuration(0) + 20);
  sub_1C6B68D1C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t *FileLog.init(configuration:targetDirectory:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
  v8 = sub_1C6D75DE0();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus) = 0;
  if ((sub_1C6D75D10() & 1) == 0)
  {
    type metadata accessor for FileLog.Errors(0);
    sub_1C6D70320(&qword_1EC1D9A58, type metadata accessor for FileLog.Errors);
    swift_allocError();
    v16 = v15;
    sub_1C6B10C98();
    v18 = *(v17 + 48);
    *v16 = 0xD00000000000002ELL;
    *(v16 + 1) = 0x80000001C6DAB320;
    (*(v9 + 16))(&v16[v18], a2, v8);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v9 + 8))(a2, v8);
LABEL_6:
    sub_1C6D7013C(a1, type metadata accessor for FileLog.Configuration);
    sub_1C6D702B0(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    v20 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files);

    v21 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls);

    v22 = *(*v3 + 48);
    v23 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_7;
  }

  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1C6D75D30();
  v26[0] = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v26];

  v13 = v26[0];
  if ((v12 & 1) == 0)
  {
    v19 = v26[0];
    sub_1C6D75CC0();

    swift_willThrow();
    (*(v9 + 8))(a2, v8);
    goto LABEL_6;
  }

  sub_1C6B162C8(a1, v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration, type metadata accessor for FileLog.Configuration);
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory, a2, v8);
  type metadata accessor for FileLog.TargetDirectory(0);
  swift_storeEnumTagMultiPayload();
  v14 = v13;
LABEL_7:
  v24 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1C6B162C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B16350(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    type metadata accessor for BundleSubscriptionIsSubscribedProvider();
    swift_allocObject();
    return sub_1C6B163D8(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B163D8(void *a1)
{
  v2 = [a1 cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_1C6B79FDC(&v12);
    goto LABEL_9;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v2, ~v4))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_1C6B79FDC(&v12);
    goto LABEL_17;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    swift_unknownObjectRelease();
    v7 = -24;
    goto LABEL_18;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  swift_unknownObjectRelease();
  v7 = v6 - 24;
LABEL_18:
  *(v1 + 16) = (v7 ^ v4) & 1;
  return v1;
}

char *SessionDataProvider.init(storage:unarchiver:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 112);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v7 setAllowedUnits_];
  [v7 setCountStyle_];
  *&v2[v6] = v7;
  *(v2 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a2);
  return v2;
}

uint64_t sub_1C6B166EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C6B1677C()
{
  result = qword_1EDCEA8E0;
  if (!qword_1EDCEA8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA8E0);
  }

  return result;
}

unint64_t sub_1C6B16800()
{
  result = qword_1EDCE6580;
  if (!qword_1EDCE6580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6580);
  }

  return result;
}

uint64_t sub_1C6B16888(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6B16898(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1C6B168A8(void *a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1C6D77F80();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  *&v2[OBJC_IVAR____TtC19NewsPersonalization43EventHistoryAggregateStoreStateModeResolver_personalizationData] = a1;
  sub_1C6B16F28(a2, &v2[OBJC_IVAR____TtC19NewsPersonalization43EventHistoryAggregateStoreStateModeResolver_userEventHistoryAggregateStoreFactory]);
  sub_1C6B16F28(a2, v16);
  v8 = swift_allocObject();
  sub_1C6B15E34(v16, v8 + 16);
  *(v8 + 56) = a1;
  *&v16[0] = MEMORY[0x1E69E7CC0];
  sub_1C6B18854();
  sub_1C6B16AC8(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B188AC();
  v9 = a1;
  sub_1C6D79CB0();
  sub_1C6B16CA0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC19NewsPersonalization43EventHistoryAggregateStoreStateModeResolver_lazyMode] = sub_1C6D781B0();
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v13;
}

uint64_t sub_1C6B16A88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C6B16AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B16B40()
{
  swift_getErrorValue();
  v0 = sub_1C6D7A1D0();
  v2 = v1;
  sub_1C6B16BE4();
  v3 = swift_allocError();
  *v4 = v0;
  v4[1] = v2;
  sub_1C6B16C38();
  swift_allocError();
  *v5 = v3;
  return swift_continuation_throwingResumeWithError();
}

unint64_t sub_1C6B16BE4()
{
  result = qword_1EDCE6BE8;
  if (!qword_1EDCE6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6BE8);
  }

  return result;
}

unint64_t sub_1C6B16C38()
{
  result = qword_1EDCEA410;
  if (!qword_1EDCEA410)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA410);
  }

  return result;
}

void sub_1C6B16CA0()
{
  if (!qword_1EDCE5E08)
  {
    v0 = sub_1C6D781C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5E08);
    }
  }
}

unint64_t sub_1C6B16CF0()
{
  result = qword_1EDCE7F80;
  if (!qword_1EDCE7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization12FeatureStateOyAA09StatelessB13ConfigurationVG(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6B16D5C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v5 == 2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v5)
  {
    type metadata accessor for EventHistoryAggregateStoreStateModeResolver();
    result = sub_1C6D77FD0();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

id sub_1C6B16E58(id result, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  if (result)
  {
    v9 = result;
    v10 = a2;
    v11 = a3;
    v12 = a4;

    return a6;
  }

  return result;
}

void sub_1C6B16EC0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  if (a1)
  {
  }
}

uint64_t sub_1C6B16F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C6B16F8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C6B16FDC(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for UserEventHistorySessionUnarchiver();
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
      v7 = swift_allocObject();
      v8 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
      [v8 setAllowedUnits_];
      [v8 setCountStyle_];
      v7[3] = v6;
      v7[4] = v8;
      v7[2] = v4;
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B17124()
{
  type metadata accessor for UserEventHistorySessionUnarchiver();

  return swift_allocObject();
}

void *sub_1C6B17158@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v86 = a2;
  v3 = sub_1C6D77F80();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75DE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C6D79AF0();
  v82 = *(v84 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1C6D79AE0();
  v13 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D78E80();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v78 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v85 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v66 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = result;
  v77 = v6;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE9290);
  result = sub_1C6D77FE0();
  if (!v92[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v76 = v3;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  v32 = [result privateDataDirectory];

  sub_1C6D795A0();
  sub_1C6D75D00();

  v33 = *(v8 + 56);
  v33(v25, 0, 1, v7);
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE82D0);
  result = sub_1C6D77FE0();
  if (!v91[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7E50, 0x1E69B5610);
  result = sub_1C6D77FD0();
  v75 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v88 = v28;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &unk_1EDCE6588, 0x1E69B5558);
  result = sub_1C6D77FD0();
  v74 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE66E0);
  result = sub_1C6D77FE0();
  if (!v90[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v73 = v8;
  v87 = v25;
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  result = sub_1C6D77FD0();
  v72 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v39 = v33;
  v40 = type metadata accessor for UserEventHistoryAggregateStoreFactory(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v71 = v40;
  v43 = swift_allocObject();
  v70 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  v44 = v7;
  v39(v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL, 1, 1, v7);
  *(v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = 0;
  v67 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_refreshQueue;
  sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  sub_1C6D78E50();
  v89 = MEMORY[0x1E69E7CC0];
  sub_1C6B17F28(&unk_1EDCE7EB8, MEMORY[0x1E69E8030]);
  v45 = MEMORY[0x1E69E8030];
  sub_1C6B18338(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v69 = v39;
  sub_1C6B17F70(&qword_1EDCE7F28, &qword_1EDCE7F30, v45);
  v68 = v8 + 56;
  sub_1C6D79CB0();
  (*(v82 + 104))(v81, *MEMORY[0x1E69E8090], v84);
  *(v43 + v67) = sub_1C6D79B20();
  v46 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter;
  v47 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v47 setAllowedUnits_];
  [v47 setCountStyle_];
  *(v43 + v46) = v47;
  *(v43 + 16) = v88;
  sub_1C6B16F28(v92, v43 + 24);
  v48 = v83;
  sub_1C6B18038(v87, v83);
  v49 = v73;
  if ((*(v73 + 48))(v48, 1, v44) == 1)
  {
    v50 = v85;
    v69(v85, 1, 1, v44);
  }

  else
  {
    v51 = v66;
    (*(v49 + 32))(v66, v48, v44);

    v50 = v85;
    sub_1C6D75D50();
    (*(v49 + 8))(v51, v44);
    v69(v50, 0, 1, v44);
  }

  v52 = v75;
  v53 = v74;
  v54 = v72;
  v55 = v70;
  swift_beginAccess();
  sub_1C6B180CC(v50, v43 + v55);
  swift_endAccess();
  sub_1C6B16F28(v91, v43 + 64);
  *(v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) = v52;
  *(v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory) = v53;
  sub_1C6B16F28(v90, v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService);
  *(v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) = v54;
  swift_unownedRetainStrong();
  v56 = v52;
  v57 = v53;
  v58 = v54;
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v43;
  v89 = MEMORY[0x1E69E7CC0];
  sub_1C6B17F28(&qword_1EDCE7AB0, MEMORY[0x1E69D6420]);
  v59 = MEMORY[0x1E69D6420];
  sub_1C6B18338(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B17F70(&qword_1EDCE6660, &qword_1EDCE6670, v59);
  sub_1C6D79CB0();
  sub_1C6B18338(0, &qword_1EDCE7A90, sub_1C6B18160, MEMORY[0x1E69D6A80]);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_1C6D781B0();

  sub_1C6B18474(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  v64 = *(v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore);
  *(v43 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = v63;

  v65 = v86;
  v86[3] = v71;
  v65[4] = &protocol witness table for UserEventHistoryAggregateStoreFactory;
  *v65 = v43;
  return result;
}

uint64_t sub_1C6B17D54()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B17D8C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    type metadata accessor for UserEventHistoryAggregateStoreMetadataEndpoint();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B17E2C()
{
  sub_1C6B1839C(319, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C6B17F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B17F70(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6B18338(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B17FD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6B1839C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B18038(uint64_t a1, uint64_t a2)
{
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B180CC(uint64_t a1, uint64_t a2)
{
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C6B18160()
{
  if (!qword_1EDCE6DA0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6DA0);
    }
  }
}

uint64_t sub_1C6B181B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __NPDeviceSupportsFeedPersonalization_block_invoke()
{
  result = MGGetBoolAnswer();
  NPDeviceSupportsFeedPersonalization_result = result;
  return result;
}

uint64_t sub_1C6B18218@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9290);
  result = sub_1C6D77FE0();
  v5 = v21;
  if (v21)
  {
    v6 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v6 + 8))(v13, v5, v6);
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    sub_1C6B16E58(v14, v15, v16, v17, v18, v19);
    sub_1C6B11190(v13);
    sub_1C6B16EC0(v7, v8, v9, v10, v11, v12);
    *a2 = v7 != 0;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B18338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1839C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B18400@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = type metadata accessor for UserEventHistoryAggregateStoreMetadataEndpoint();
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &off_1F467A228;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B18474(uint64_t a1)
{
  sub_1C6B18338(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6B18500()
{
  result = qword_1EDCEA8C0;
  if (!qword_1EDCEA8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA8C0);
  }

  return result;
}

__n128 __swift_memcpy118_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

void sub_1C6B18578()
{
  if (!qword_1EDCE2568)
  {
    v0 = type metadata accessor for FeatureState.Errors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE2568);
    }
  }
}

id sub_1C6B185C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 40);
    *a2 = v2;
    *(a2 + 8) = v7;
    *(a2 + 16) = v6;
    *(a2 + 24) = v5;
    *(a2 + 32) = v4 & 1;
    *(a2 + 40) = v3;
    v8 = v2;
    v9 = v7;
    v10 = v6;
    v11 = v5;
    return v3;
  }

  else
  {
    sub_1C6B18578();
    sub_1C6B186A4(&qword_1EDCE2570, sub_1C6B18578);
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C6B186A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6B186F8()
{
  if (!qword_1EDCEA900)
  {
    sub_1C6B0F7A8(255, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA900);
    }
  }
}

uint64_t sub_1C6B18760(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, qword_1EDCE86E8);
    result = sub_1C6D77FE0();
    if (v8[3])
    {
      v6 = objc_allocWithZone(type metadata accessor for EventHistoryAggregateStoreStateModeResolver());
      v7 = sub_1C6B168A8(v4, v8);

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6B18854()
{
  result = qword_1EDCE7AB0;
  if (!qword_1EDCE7AB0)
  {
    sub_1C6D77F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7AB0);
  }

  return result;
}

unint64_t sub_1C6B188AC()
{
  result = qword_1EDCE6660;
  if (!qword_1EDCE6660)
  {
    sub_1C6B16AC8(255, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6660);
  }

  return result;
}

size_t sub_1C6B18934(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCE64B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

void sub_1C6B18984(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6B189DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t sub_1C6B18A34()
{
  result = qword_1EDCE6FD0;
  if (!qword_1EDCE6FD0)
  {
    type metadata accessor for UserEventsFeatureResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6FD0);
  }

  return result;
}

unint64_t sub_1C6B18A8C(uint64_t a1)
{
  result = sub_1C6B18A34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C6B18AB4()
{
  result = qword_1EDCE6C18[0];
  if (!qword_1EDCE6C18[0])
  {
    sub_1C6B18B34();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE6C18);
  }

  return result;
}

unint64_t sub_1C6B18B0C(uint64_t a1)
{
  result = sub_1C6B18AB4();
  *(a1 + 8) = result;
  return result;
}

void sub_1C6B18B34()
{
  if (!qword_1EDCE6C08)
  {
    sub_1C6B134B8();
    v0 = type metadata accessor for CurrentTimestampFeatureResolver();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6C08);
    }
  }
}

uint64_t sub_1C6B18B90@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = a2(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v12 = result;
    a5[3] = v10;
    result = sub_1C6B0FEE4(a3, a4);
    a5[4] = result;
    *a5 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B18CB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C6B18D08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C6B18D58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C6D779F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v20 == 2)
  {
    __break(1u);
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      (*(v5 + 104))(v8, *MEMORY[0x1E69B48A8], v4);
      v16 = type metadata accessor for KnownAggregateStoreStateModeResolver();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v13 = swift_allocObject();
      (*(v5 + 32))(v13 + OBJC_IVAR____TtC19NewsPersonalization36KnownAggregateStoreStateModeResolver_mode, v8, v4);
      a2[3] = v16;
      v14 = &unk_1EC1D5FD0;
      v15 = type metadata accessor for KnownAggregateStoreStateModeResolver;
      goto LABEL_6;
    }

    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = type metadata accessor for EventHistoryAggregateStoreStateModeResolver();
    result = sub_1C6D77FD0();
    if (result)
    {
      v13 = result;
      a2[3] = v12;
      v14 = &unk_1EDCDFFD8;
      v15 = type metadata accessor for EventHistoryAggregateStoreStateModeResolver;
LABEL_6:
      result = sub_1C6B0FEE4(v14, v15);
      a2[4] = result;
      *a2 = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

id NewsAppConfigurationManager.init(appConfigurationManager:transform:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1C6D77F40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_lock;
  sub_1C6D77F30();
  v12 = sub_1C6D77F60();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v3[v11] = sub_1C6D77F50();
  *&v3[OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_onChangeBlocks] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_appConfigurationManager] = a1;
  if (a2)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = sub_1C6C7F5E0;
  }

  else
  {
    v16 = sub_1C6B19260;
    v15 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = &v4[OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform];
  *v18 = sub_1C6B19228;
  v18[1] = v17;
  swift_unknownObjectRetain();
  sub_1C6B16888(a2);
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [a1 addAppConfigObserver_];
  sub_1C6B16898(a2);

  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_1C6B1916C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B191A8()
{
  v1 = *v0;
  v2 = *v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = [*(v1 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_appConfigurationManager) possiblyUnfetchedAppConfiguration];
  v4();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C6B19228(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1C6B19284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if ([v1 respondsToSelector_])
  {
    v4 = [v1 articleEmbeddingsScoringEnabled];
    if (([v2 respondsToSelector_] & 1) == 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (([v1 respondsToSelector_] & 1) == 0)
    {
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }

    v4 = 0;
  }

  v5 = [v2 newsPersonalizationConfiguration];
  v6 = [v5 articleEmbeddingsConfiguration];

  if (v4)
  {
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_1C6D79AB0();
    sub_1C6C80140(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C6D7E630;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C6B2064C();
    *(v7 + 32) = 0xD000000000000018;
    *(v7 + 40) = 0x80000001C6D97090;
    sub_1C6B1AAB0();
    v6 = sub_1C6D79BD0();
    sub_1C6D78D30();
  }

LABEL_11:

  v6 = 0;
LABEL_12:
  if ([v2 respondsToSelector_])
  {
    v48 = [v2 clientSideEngagementBoostEnabled];
  }

  else
  {
    v48 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v47 = [v2 fallbackToReverseChronSorting];
  }

  else
  {
    v47 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v46 = [v2 newsTabiConfiguration];
  }

  else
  {
    v46 = 0;
  }

  v49 = v6;
  v45 = [v2 personalizationTreatment];
  if ([v2 respondsToSelector_])
  {
    v43 = [v2 statelessPersonalizationEnabled];
  }

  else
  {
    v43 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v8 = [v2 newsPersonalizationConfiguration];
    v9 = [v8 articleEmbeddingsConfiguration];
  }

  else
  {
    v9 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v10 = [v2 newsPersonalizationConfiguration];
    v11 = [v10 featureConfiguration];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 personalizationTreatment];
  if ([v2 respondsToSelector_])
  {
    v13 = [v2 newsPersonalizationConfiguration];
    v14 = [v13 statelessPersonalizationConfiguration];
  }

  else
  {
    v14 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v15 = [v2 statelessPersonalizationAllowedForExtensions];
  }

  else
  {
    v15 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v16 = [v2 newsPersonalizationConfiguration];
  }

  else
  {
    v16 = 0;
  }

  v17 = v11;
  v18 = [v16 trainingConfiguration];

  if (!v9)
  {
    sub_1C6D79AB0();
    sub_1C6B1AAB0();
    v22 = sub_1C6D79BD0();
    sub_1C6D78D30();

LABEL_49:
    v17 = 0;
LABEL_50:
    v12 = 0;
    v19 = 0;
    v15 = 0;
    v18 = 0;
    if (v43)
    {
      goto LABEL_44;
    }

LABEL_51:
    sub_1C6B16EC0(v9, v17, v12, v19, v15, v18);
    goto LABEL_52;
  }

  if (!v17)
  {
    sub_1C6D79AB0();
    sub_1C6B1AAB0();
    v23 = sub_1C6D79BD0();
    sub_1C6D78D30();

    v9 = 0;
    goto LABEL_50;
  }

  if (!v14)
  {
    sub_1C6D79AB0();
    sub_1C6B1AAB0();
    v24 = sub_1C6D79BD0();
    sub_1C6D78D30();

    v9 = 0;
    goto LABEL_49;
  }

  v19 = v14;
  if (!v18)
  {
    sub_1C6B1AAB0();
    v38 = sub_1C6D79BD0();
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v9 = 0;
    v17 = 0;
    v12 = 0;
    v19 = 0;
    v15 = 0;
    if (v43)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  if (!v43)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v9)
  {
    goto LABEL_53;
  }

  sub_1C6D79AB0();
  sub_1C6C80140(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6D7E630;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1C6B2064C();
  *(v20 + 32) = 0xD000000000000018;
  *(v20 + 40) = 0x80000001C6D970B0;
  sub_1C6B1AAB0();
  v21 = sub_1C6D79BD0();
  sub_1C6D78D30();

LABEL_52:
  v9 = 0;
  v17 = 0;
  v12 = 0;
  v19 = 0;
  v15 = 0;
  v18 = 0;
LABEL_53:
  v40 = v19;
  v42 = v12;
  v44 = v9;
  v41 = v17;
  if ([v2 respondsToSelector_])
  {
    v39 = [v2 publisherDampeningConfig];
  }

  else
  {
    sub_1C6B61D34(MEMORY[0x1E69E7CC0]);
    v25 = objc_allocWithZone(MEMORY[0x1E69B5460]);
    v26 = sub_1C6D79480();

    v39 = [v25 initWithConfig_];
  }

  if ([v2 respondsToSelector_])
  {
    v27 = [v2 shadowPublisherDampeningConfig];
  }

  else
  {
    sub_1C6B61D34(MEMORY[0x1E69E7CC0]);
    v28 = objc_allocWithZone(MEMORY[0x1E69B5460]);
    v29 = sub_1C6D79480();

    v27 = [v28 initWithConfig_];
  }

  if ([v2 respondsToSelector_])
  {
    v30 = [v2 statelessPersonalizationPublisherFavorability];
  }

  else
  {
    v31 = objc_allocWithZone(MEMORY[0x1E69B55F0]);
    sub_1C6B1C98C();
    v32 = sub_1C6D79760();
    v30 = [v31 initWithArray_];
  }

  if ([v2 respondsToSelector_])
  {
    v33 = [v2 personalizationAnalyticsEnabled];
  }

  else
  {
    v33 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v34 = [v2 enableTabiTagScoring];
  }

  else
  {
    v34 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v35 = [v2 enableTabiCohortMemberships];
  }

  else
  {
    v35 = 0;
  }

  v36 = [v2 respondsToSelector_];
  result = 1;
  if (v36)
  {
    result = [v2 aggregatesInAppXavierEnabled];
  }

  *a1 = v49;
  *(a1 + 8) = v48;
  *(a1 + 9) = v47;
  *(a1 + 16) = v46;
  *(a1 + 24) = v45;
  *(a1 + 32) = v44;
  *(a1 + 40) = v41;
  *(a1 + 48) = v42;
  *(a1 + 56) = v40;
  *(a1 + 64) = v15;
  *(a1 + 72) = v18;
  *(a1 + 80) = 1;
  *(a1 + 88) = v39;
  *(a1 + 96) = v27;
  *(a1 + 104) = v30;
  *(a1 + 112) = v33;
  *(a1 + 113) = v34;
  *(a1 + 114) = v35;
  *(a1 + 115) = result;
  *(a1 + 116) = 1;
  return result;
}

uint64_t sub_1C6B19CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6B19CE4@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  v7 = v6;
  result = sub_1C6D77FD0();
  if (result)
  {
    v9 = result;
    a3[3] = v7;
    result = sub_1C6D41F50(a2, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    a3[4] = result;
    *a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B19DAC()
{
  v0 = FCURLForNewsComputeServiceResources();
  if (v0)
  {
    v1 = v0;
    sub_1C6D75D90();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C6B19E08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B19E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B19F1C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1C6B1A060(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C6B1DCF0(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C6B1A2B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

void sub_1C6B1A2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A360(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6B1A3B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A47C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B10A98(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C6B1A4E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A5AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1A610(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C6B10A98(255, a3);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B1A66C()
{
  v0 = sub_1C6D75CD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D75DE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE7540 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();
  v11 = *(v34 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    v37 = v10;
    sub_1C6D79DF0();
    v32 = OBJC_IVAR____TtC19NewsPersonalization41NewsPersonalizationDataCleanupStartupTask_privateDataDirectory;
    v31 = *(v1 + 104);
    v30 = *MEMORY[0x1E6968F58];
    v28 = (v6 + 8);
    v29 = (v1 + 8);
    v13 = (v11 + 40);
    v27 = v9;
    v33 = v5;
    do
    {
      v14 = *v13;
      v35 = *(v13 - 1);
      v36 = v14;
      v31(v4, v30, v0);
      sub_1C6B16CF0();

      v15 = v27;
      sub_1C6D75DC0();
      v16 = (*v29)(v4, v0);
      MEMORY[0x1EEE9AC00](v16);
      *(&v26 - 2) = v15;
      sub_1C6B1AC10();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      sub_1C6D78350();

      (*v28)(v15, v33);
      sub_1C6D79DC0();
      v20 = *(v37 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      v13 += 2;
      --v12;
    }

    while (v12);
    v10 = v37;
  }

  sub_1C6B1AC10();
  v35 = v10;
  v21 = sub_1C6D78210();
  sub_1C6B1AB04();
  sub_1C6B1B2E8(&qword_1EDCE6638, sub_1C6B1AB04);
  sub_1C6D78280();

  v22 = sub_1C6D78210();
  sub_1C6D782B0();

  v23 = sub_1C6D78210();
  v24 = sub_1C6D78340();

  return v24;
}

unint64_t sub_1C6B1AAB0()
{
  result = qword_1EDCEA8B8;
  if (!qword_1EDCEA8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA8B8);
  }

  return result;
}

void sub_1C6B1AB04()
{
  if (!qword_1EDCE6640)
  {
    sub_1C6B1AC10();
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6640);
    }
  }
}

uint64_t sub_1C6B1AB5C(uint64_t a1)
{
  sub_1C6B1ABB8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6B1ABB8()
{
  if (!qword_1EDCE65F0[0])
  {
    sub_1C6D79880();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCE65F0);
    }
  }
}

void sub_1C6B1AC10()
{
  if (!qword_1EDCE7A70)
  {
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7A70);
    }
  }
}

void sub_1C6B1AC64(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5)
{
  v51 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v52 = sub_1C6D75DE0();
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v54 = 1;
  v11 = objc_opt_self();

  v12 = [v11 defaultManager];
  sub_1C6D75DA0();
  v13 = sub_1C6D79570();

  v14 = [v12 fileExistsAtPath:v13 isDirectory:&v54];

  if (v14)
  {
    v48 = a4;
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v15 = swift_allocObject();
    v46 = xmmword_1C6D7E630;
    *(v15 + 16) = xmmword_1C6D7E630;
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v47 = a5;
    v16 = sub_1C6D7A0E0();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1C6B2064C();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    if (v54 == 1)
    {
      *&v46 = [v11 defaultManager];
      v20 = v47;
      v45 = sub_1C6D75D30();
      sub_1C6B761BC();
      v21 = MEMORY[0x1CCA56010](9);
      v22 = v49;
      v23 = v50;
      v24 = v52;
      (*(v50 + 16))(v49, v20, v52);
      v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      (*(v23 + 32))(v28 + v25, v22, v24);
      v29 = (v28 + v26);
      v30 = v48;
      *v29 = v51;
      v29[1] = v30;
      v31 = (v28 + v27);
      *v31 = sub_1C6C40F6C;
      v31[1] = v10;
      aBlock[4] = sub_1C6D75404;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C6C70DF0;
      aBlock[3] = &block_descriptor_18;
      v32 = _Block_copy(aBlock);

      v34 = v45;
      v33 = v46;
      [v46 fc:v45 quicklyClearDirectory:v21 callbackQueue:v32 completion:?];
      _Block_release(v32);
    }

    else
    {

      sub_1C6D79AA0();
      v36 = swift_allocObject();
      *(v36 + 16) = v46;
      v37 = v47;
      v38 = v52;
      v39 = sub_1C6D7A0E0();
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = v19;
      *(v36 + 32) = v39;
      *(v36 + 40) = v40;
      sub_1C6D78D30();

      type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors(0);
      sub_1C6B1B2E8(&qword_1EC1D9AE8, type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors);
      v41 = swift_allocError();
      (*(v50 + 16))(v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      v51(v41);
    }
  }

  else
  {

    a1(v35);
  }

  v43 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6B1B1FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B1B234()
{
  v1 = sub_1C6D75DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1C6B1B2E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B1B330()
{
  v1 = *v0;
  sub_1C6B1BAAC(0);
  v2 = sub_1C6D78320();

  return v2;
}

uint64_t sub_1C6B1B370(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1C6B1B3B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D78360();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C6B1B3FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C6B1B44C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C6B1B49C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C6B1B4EC()
{
  v5 = *v0;
  sub_1C6B1B49C(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6B1B574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1C6B1B7C0(0, qword_1EDCE65F0, MEMORY[0x1E69E85F0]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sub_1C6D79880();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = sub_1C6C40F6C;
  v14[6] = v12;

  v15 = a5;
  sub_1C6BE0BF8(0, 0, v11, &unk_1C6D95520, v14);
}

uint64_t sub_1C6B1B6D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B1B70C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1C6B1B75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1B7C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B1B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  *a4 = result;
  return result;
}

uint64_t sub_1C6B1B934()
{
  if (qword_1EDCE7540 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  return sub_1C6D78D30();
}

uint64_t sub_1C6B1B9EC()
{
  v1 = *v0;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 24))(v2, v3);
}

uint64_t sub_1C6B1BAAC(char a1)
{
  v2 = v1;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  ConfigurationManagerType.fetchStatelessConfigurationIfNeeded(cachedOnly:)();
  v5 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_refreshQueue);
  sub_1C6B1BDF8();

  sub_1C6D782A0();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1 & 1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C6D5B5A0;
  *(v7 + 24) = v6;

  v8 = sub_1C6D782A0();

  return v8;
}

uint64_t sub_1C6B1BC68()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C6B1BCA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ConfigurationManagerType.fetchStatelessConfigurationIfNeeded(cachedOnly:)()
{
  sub_1C6D783A0();
  v0 = sub_1C6D78210();
  v1 = sub_1C6D782B0();

  return v1;
}

void sub_1C6B1BDF8()
{
  if (!qword_1EDCE7918)
  {
    sub_1C6B1BE60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE7918);
    }
  }
}

void sub_1C6B1BE60()
{
  if (!qword_1EDCE6610)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6610);
    }
  }
}

void sub_1C6B1BEC8()
{
  if (!qword_1EDCE7728)
  {
    sub_1C6B0C69C(255, &qword_1EDCE6530, 0x1E69B53D0);
    v0 = type metadata accessor for FeatureState.Errors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7728);
    }
  }
}

id sub_1C6B1BF30@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (*a1)
  {
    *a2 = v2;
    return v2;
  }

  else
  {
    sub_1C6B1BEC8();
    sub_1C6B186A4(qword_1EDCE7730, sub_1C6B1BEC8);
    swift_allocError();
    return swift_willThrow();
  }
}

void ComputeServiceConfiguration.init(from:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v71[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1C6D79470();
  v65 = *(v3 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75B30();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D79460();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1C864();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v67 = v16;
  v68 = a1;
  *(v16 + 32) = 0;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v66;
  sub_1C6D7A2C0();
  if (v18)
  {
    goto LABEL_12;
  }

  v66 = v10;
  v60 = v15;
  v61 = v12;
  v62 = v11;
  v63 = v6;
  __swift_project_boxed_opaque_existential_1(v71, v71[3]);
  sub_1C6B1C938();
  sub_1C6D7A150();
  v19 = v69;
  v20 = v70;
  v21 = objc_opt_self();
  v22 = sub_1C6D75E50();
  v69 = 0;
  v23 = [v21 JSONObjectWithData:v22 options:0 error:&v69];

  if (!v23)
  {
    v41 = v69;
    sub_1C6D75CC0();

    goto LABEL_10;
  }

  v24 = v69;
  sub_1C6D79C50();
  swift_unknownObjectRelease();
  sub_1C6B1C98C();
  v15 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C6BA0BF0();
    swift_allocError();
LABEL_10:
    swift_willThrow();
    sub_1C6B1C9F0(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v71);
LABEL_12:
    v42 = 0;
    goto LABEL_13;
  }

  v59 = v21;
  v58 = 0;
  v25 = objc_allocWithZone(MEMORY[0x1E69B53E8]);
  v26 = sub_1C6D79480();

  v27 = [v25 initWithDictionary_];

  v15 = v27;
  v28 = [v15 dictionary];
  sub_1C6D79490();

  v29 = sub_1C6D79480();

  v69 = 0;
  v30 = [v59 dataWithJSONObject:v29 options:2 error:&v69];

  v31 = v69;
  if (v30)
  {
    v32 = sub_1C6D75E60();
    v34 = v33;

    v35 = sub_1C6D75B70();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1C6D75B60();
    sub_1C6D75B20();
    sub_1C6D75B40();
    v69 = v32;
    v70 = v34;
    sub_1C6B1CCBC();
    v38 = v58;
    v39 = sub_1C6D75B50();
    if (!v38)
    {
      v45 = v15;
      v57 = v15;
      v46 = v39;
      v66 = v40;

      sub_1C6B1C9F0(v32, v34);

      sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620]);
      v47 = v63;
      v48 = v3;
      sub_1C6D79450();
      v49 = v66;
      sub_1C6B1CD10(v46, v66);
      sub_1C6B1CD64(v46, v49);
      sub_1C6B1C9F0(v46, v49);
      v59 = v19;
      v50 = v60;
      sub_1C6D79440();
      sub_1C6B1C9F0(v46, v49);
      (*(v65 + 8))(v47, v48);
      v51 = sub_1C6B1D0FC();
      v53 = v52;
      sub_1C6B1C9F0(v59, v20);
      (*(v61 + 8))(v50, v62);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v54 = v64;
      *v64 = v51;
      v54[1] = v53;
      v55 = v57;
      v54[2] = v67;
      v54[3] = v55;

      v56 = v55;
      __swift_destroy_boxed_opaque_existential_1(v68);

      goto LABEL_15;
    }

    sub_1C6B1C9F0(v32, v34);
  }

  else
  {
    v44 = v31;
    sub_1C6D75CC0();

    swift_willThrow();
  }

  sub_1C6B1C9F0(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v42 = 1;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v68);

  if (v42)
  {
  }

LABEL_15:
  v43 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6B1C6D0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE9788);
  result = sub_1C6D77FE0();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE9850);
  result = sub_1C6D77FE0();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE90F8);
  result = sub_1C6D77FE0();
  if (v8)
  {
    type metadata accessor for NewsPersonalizationService();
    v6 = swift_allocObject();
    sub_1C6B15E34(&v11, v6 + 16);
    sub_1C6B15E34(&v9, v6 + 56);
    sub_1C6B15E34(&v7, v6 + 96);
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6B1C864()
{
  if (!qword_1EDCE6500)
  {
    sub_1C6BA0C44(255, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C6D79D90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6500);
    }
  }
}

unint64_t sub_1C6B1C938()
{
  result = qword_1EDCE7AE0;
  if (!qword_1EDCE7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7AE0);
  }

  return result;
}

void sub_1C6B1C98C()
{
  if (!qword_1EDCE66A0)
  {
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE66A0);
    }
  }
}

uint64_t sub_1C6B1C9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t ComputeServiceConfiguration.encode(to:)(void *a1)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 24);
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2F0();
  v4 = objc_opt_self();
  v5 = [v2 dictionary];
  sub_1C6D79490();

  v6 = sub_1C6D79480();

  v15[0] = 0;
  v7 = [v4 dataWithJSONObject:v6 options:2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1C6D75E60();
    v11 = v10;

    v15[0] = v9;
    v15[1] = v11;
    __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_1C6B1CCBC();
    sub_1C6D7A170();
    sub_1C6B1C9F0(v9, v11);
  }

  else
  {
    v12 = v8;
    sub_1C6D75CC0();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_1(v16);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6B1CC38@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = a2(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    a4[3] = v8;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6B1CCBC()
{
  result = qword_1EDCE7AF0;
  if (!qword_1EDCE7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7AF0);
  }

  return result;
}

uint64_t sub_1C6B1CD10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C6B1CD64(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1C6D79470();
      sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620]);
      result = sub_1C6D79430();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1C6B1D01C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6B1CF44()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCEA540 = result;
  return result;
}

uint64_t sub_1C6B1D01C(uint64_t a1, uint64_t a2)
{
  result = sub_1C6D75BF0();
  if (!result || (result = sub_1C6D75C20(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C6D75C10();
      sub_1C6D79470();
      sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620]);
      return sub_1C6D79430();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B1D0FC()
{
  v1 = sub_1C6D79460();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v20 = MEMORY[0x1E69E7CC0];
  (*(v4 + 16))(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  sub_1C6BA0CEC(&unk_1EDCE66B0, MEMORY[0x1E69663E0]);
  result = sub_1C6D79670();
  v6 = v18;
  v7 = v19;
  v8 = *(v18 + 16);
  if (v19 == v8)
  {
LABEL_6:

    v18 = v20;
    sub_1C6BA0C44(0, &qword_1EDCE7F50, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
    sub_1C6B1D900();
    return sub_1C6D79660();
  }

  else
  {
    v17 = xmmword_1C6D7E630;
    v9 = MEMORY[0x1E69E7508];
    v10 = MEMORY[0x1E69E7558];
    v11 = v19;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v11 >= *(v6 + 16))
      {
        goto LABEL_8;
      }

      v12 = v11 + 1;
      v13 = *(v6 + 32 + v11);
      sub_1C6B1D314();
      v14 = swift_allocObject();
      *(v14 + 16) = v17;
      *(v14 + 56) = v9;
      *(v14 + 64) = v10;
      *(v14 + 32) = v13;
      v15 = sub_1C6D795C0();
      result = sub_1C6B1D36C(v15, v16);
      v11 = v12;
      if (v8 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1C6B1D314()
{
  if (!qword_1EDCEA8A0)
  {
    sub_1C6B47670();
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA8A0);
    }
  }
}

uint64_t sub_1C6B1D36C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C6D79620();
  v6 = *v2;
  v7 = *(*v2 + 2);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v5;
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v6 + 3) >> 1, v12 < v8))
  {
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    v6 = sub_1C6B1D518(isUniquelyReferenced_nonNull_native, v13, 1, v6);
    v12 = *(v6 + 3) >> 1;
  }

  v14 = *(v6 + 2);
  v15 = v12 - v14;
  v16 = sub_1C6B1D804(&v30, &v6[16 * v14 + 32], v12 - v14, a1, a2);
  if (v16 < v9)
  {
    goto LABEL_15;
  }

  if (v16 >= 1)
  {
    v17 = *(v6 + 2);
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
      __break(1u);
LABEL_29:
      *(v6 + 2) = a1;
LABEL_30:
      v2 = a2;
      goto LABEL_13;
    }

    *(v6 + 2) = v19;
  }

  if (v16 == v15)
  {
LABEL_16:
    a2 = v2;
    a1 = *(v6 + 2);
    v21 = sub_1C6D79640();
    if (v22)
    {
      while (1)
      {
        v23 = *(v6 + 3);
        v24 = v23 >> 1;
        if ((v23 >> 1) < a1 + 1)
        {
          v27 = v21;
          v28 = v22;
          v29 = sub_1C6B1D518((v23 > 1), a1 + 1, 1, v6);
          v22 = v28;
          v6 = v29;
          v21 = v27;
          v24 = *(v6 + 3) >> 1;
        }

        if (a1 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a1;
        }

        v26 = &v6[16 * a1 + 40];
        while (v25 != a1)
        {
          *(v26 - 1) = v21;
          *v26 = v22;
          ++a1;
          v21 = sub_1C6D79640();
          v26 += 16;
          if (!v22)
          {
            goto LABEL_29;
          }
        }

        *(v6 + 2) = v25;
        a1 = v25;
      }
    }

    goto LABEL_30;
  }

LABEL_13:

  *v2 = v6;
  return result;
}

char *sub_1C6B1D518(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EDCE6468);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C6B1D64C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D7A0F0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C6B1D698(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  sub_1C6D78FD0();
  v3 = sub_1C6D77FB0();

  if (v3)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for RecipeUserEventHistorySessionUnarchiver();
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      sub_1C6B10A08(0, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver, &protocol witness table for RecipeUserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
      v7 = swift_allocObject();
      v8 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
      [v8 setAllowedUnits_];
      [v8 setCountStyle_];
      v7[3] = v6;
      v7[4] = v8;
      v7[2] = v3;
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B1D804(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1C6D79640();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B1D8CC()
{
  type metadata accessor for RecipeUserEventHistorySessionUnarchiver();

  return swift_allocObject();
}

unint64_t sub_1C6B1D900()
{
  result = qword_1EDCE7F48;
  if (!qword_1EDCE7F48)
  {
    sub_1C6BA0C44(255, &qword_1EDCE7F50, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F48);
  }

  return result;
}

uint64_t sub_1C6B1D9E8()
{
  v2 = *(*v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_lock);
  sub_1C6D77F60();

  sub_1C6D781D0();
}

uint64_t sub_1C6B1DA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_onChangeBlocks;
  swift_beginAccess();
  v8 = *(a1 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1C6B1DBA4(0, v8[2] + 1, 1, v8);
    *(a1 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C6B1DBA4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_1C6BF5054;
  v12[5] = v6;
  *(a1 + v7) = v8;
  return swift_endAccess();
}

void *sub_1C6B1DBA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B1DCF0(0, &unk_1EDCE6440, sub_1C6B1DDB8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B1DE14();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C6B1DCF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B1DD54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C6B1DDB8()
{
  result = qword_1EDCE6430;
  if (!qword_1EDCE6430)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EDCE6430);
  }

  return result;
}

unint64_t sub_1C6B1DE14()
{
  result = qword_1EDCEA400;
  if (!qword_1EDCEA400)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDCEA400);
  }

  return result;
}

uint64_t sub_1C6B1DE64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE6C00);
  result = sub_1C6D77FE0();
  if (v8)
  {
    v5 = type metadata accessor for DiversificationService();
    v6 = swift_allocObject();
    result = sub_1C6B15E34(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_1F46767D8;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C6B1DF98(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UserEmbeddingManager();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for ClearableUserEmbeddingManager();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC19NewsPersonalization29ClearableUserEmbeddingManager_userEmbeddingManager] = v3;
    v6.receiver = v5;
    v6.super_class = v4;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6B1E048()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C6BFC3EC();
  }
}

uint64_t sub_1C6B1E084(void *a1)
{
  v2 = sub_1C6D79AE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D79AF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D78E80();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  v29 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88();
  result = sub_1C6D77FD0();
  v28 = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DA8, &protocolRef_FCPersonalizationBundleIDMappingProvider);
  result = sub_1C6D77FD0();
  v27 = result;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE86E0);
  result = sub_1C6D77FE0();
  if (!v34)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v6;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DD0, &protocolRef_FCPersonalizationURLMappingProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = result;
  v25[2] = v5;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0);
  result = sub_1C6D77FE0();
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25[1] = v2;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
  result = sub_1C6D77FD0();
  if (result)
  {
    v22 = result;
    type metadata accessor for TagSuggestionsDataService();
    v23 = swift_allocObject();
    sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
    sub_1C6D78E70();
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v26);
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C6B0FEE4(&unk_1EDCE7EB8, MEMORY[0x1E69E8030]);
    sub_1C6B0F658(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1C6B37FE4();
    sub_1C6D79CB0();
    v23[17] = sub_1C6D79B20();
    v24 = v28;
    v23[2] = v29;
    v23[3] = v24;
    v23[4] = v27;
    sub_1C6B15E34(&v33, (v23 + 5));
    v23[10] = v19;
    sub_1C6B15E34(&v31, (v23 + 11));
    v23[16] = v22;
    return v23;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C6B1E538()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE7178 = result;
  return result;
}

uint64_t sub_1C6B1E610(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCA55E50](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C6B1E6A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C6B1E6A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C6D7A260();
  sub_1C6D79610();
  v9 = sub_1C6D7A2B0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C6D7A130() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1C6B1E7F8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C6B1E7F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C6C248B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C6C25AB0();
      goto LABEL_16;
    }

    sub_1C6C25FC4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C6D7A260();
  sub_1C6D79610();
  result = sub_1C6D7A2B0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C6D7A130();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

uint64_t sub_1C6B1E978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1C6D7A260();
  sub_1C6D79610();
  v7 = sub_1C6D7A2B0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C6D7A130() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C6B1EA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileLog.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B1EB48(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1C6B1EB58(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D79190();
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE66E0);
  result = sub_1C6D77FE0();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &qword_1EDCE7EA8, &protocolRef_FCFeedPersonalizing);
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = sub_1C6D79200();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    return sub_1C6D791F0();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6B1EC88(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE7FA8);
  result = sub_1C6D77FE0();
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE7FA0);
  result = sub_1C6D77FE0();
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC90);
  result = sub_1C6D77FE0();
  if (v11)
  {
    v8 = sub_1C6D79190();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    return sub_1C6D79180();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C6B1EE6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F658(0, qword_1EDCE8A38, type metadata accessor for TopicClusteringJournalStorageService, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FE0();
  v5 = v9;
  if (!v9)
  {
    v8 = type metadata accessor for NoOpFeedTopicClusteringJournalStorageService();
    v5 = swift_allocObject();
    a2[3] = v8;
    v6 = &unk_1EC1D5FB0;
    v7 = type metadata accessor for NoOpFeedTopicClusteringJournalStorageService;
    goto LABEL_5;
  }

  if (v9 != 1)
  {
    a2[3] = type metadata accessor for TopicClusteringJournalStorageService();
    v6 = &unk_1EDCE0228;
    v7 = type metadata accessor for TopicClusteringJournalStorageService;
LABEL_5:
    result = sub_1C6B0FEE4(v6, v7);
    a2[4] = result;
    *a2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1C6B1EFA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77FA0();
  v8 = sub_1C6D77F90();
  result = 0;
  if ((v8 & 1) == 0)
  {
    goto LABEL_4;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v11 = result;
    v12 = [result contentDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();

    v13 = type metadata accessor for TopicClusteringJournalStorageService();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    result = sub_1C6B1F228(v7);
LABEL_4:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

id *sub_1C6B1F228(uint64_t a1)
{
  v2 = v1;
  v162 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = sub_1C6D78E30();
  v137 = *(v5 - 8);
  v6 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v135 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1C6D78E80();
  v134 = *(v136 - 8);
  v8 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v133 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1C6D78E40();
  v130 = *(v131 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1C6D75CA0();
  v143 = *(v149 - 8);
  v12 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v151 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D75DE0();
  v153 = *(v14 - 8);
  v15 = *(v153 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v128 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v150 = &v120 - v19;
  v127 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v120 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v23 setAllowedUnits_];
  [v23 setCountStyle_];
  v1[2] = v23;
  sub_1C6D75D40();
  v141 = objc_opt_self();
  v24 = [v141 defaultManager];
  sub_1C6D75DB0();
  v25 = sub_1C6D79570();

  v26 = [v24 fileExistsAtPath:v25 isDirectory:0];

  v142 = v2;
  v140 = a1;
  v139 = v22;
  v138 = v5;
  if (v26)
  {
    if (qword_1EDCE2068 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v27 = qword_1EDCE2070;
      sub_1C6B1D314();
      v122 = v28;
      v29 = swift_allocObject();
      v152 = xmmword_1C6D7E630;
      *(v29 + 16) = xmmword_1C6D7E630;
      v123 = sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
      v30 = sub_1C6D7A0E0();
      v32 = v31;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      v124 = sub_1C6B2064C();
      *(v29 + 64) = v124;
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
      sub_1C6D79AC0();
      v125 = v27;
      sub_1C6D78D30();

      v33 = [v141 defaultManager];
      v34 = sub_1C6D75D30();
      sub_1C6B206A0(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
      v148 = v35;
      v36 = swift_allocObject();
      v37 = v14;
      *(v36 + 16) = v152;
      v38 = *MEMORY[0x1E695DB78];
      *(v36 + 32) = *MEMORY[0x1E695DB78];
      type metadata accessor for URLResourceKey(0);
      v147 = v38;
      v14 = sub_1C6D79760();

      aBlock = 0;
      v39 = [v33 contentsOfDirectoryAtURL:v34 includingPropertiesForKeys:v14 options:0 error:&aBlock];

      v40 = aBlock;
      v132 = v37;
      if (!v39)
      {
        break;
      }

      v41 = sub_1C6D79780();
      v42 = v40;

      v144 = *(v41 + 16);
      if (!v144)
      {
        v44 = v132;
LABEL_19:

        v94 = swift_allocObject();
        *(v94 + 16) = v152;
        v65 = v139;
        v95 = sub_1C6D7A0E0();
        v96 = v124;
        *(v94 + 56) = MEMORY[0x1E69E6158];
        *(v94 + 64) = v96;
        *(v94 + 32) = v95;
        *(v94 + 40) = v97;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        goto LABEL_20;
      }

      v126 = v4;
      v4 = 0;
      v43 = *(v153 + 80);
      v120 = ~v43;
      v121 = v43;
      v145 = v41 + ((v43 + 32) & ~v43);
      v146 = v153 + 16;
      v143 += 8;
      v2 = (v153 + 8);
      v44 = v132;
      while (v4 < *(v41 + 16))
      {
        v45 = *(v153 + 16);
        v46 = v150;
        v45(v150, v145 + *(v153 + 72) * v4, v44);
        inited = swift_initStackObject();
        *(inited + 16) = v152;
        v48 = v147;
        *(inited + 32) = v147;
        v49 = v48;
        sub_1C6B20798(inited);
        swift_setDeallocating();
        sub_1C6B19E08(inited + 32, type metadata accessor for URLResourceKey);
        v50 = v151;
        v51 = v154;
        sub_1C6D75CE0();
        v154 = v51;
        if (v51)
        {
          (*v2)(v46, v44);

          v83 = v154;
          v90 = v142;
          v91 = v140;
          goto LABEL_22;
        }

        v52 = sub_1C6D75C50();
        v53 = v50;
        v14 = v52;
        (*v143)(v53, v149);
        (*v2)(v46, v44);
        if (v52 != 2 && (v52 & 1) != 0)
        {

          v54 = swift_allocObject();
          *(v54 + 16) = v152;
          v55 = v139;
          v56 = sub_1C6D7A0E0();
          v57 = v124;
          *(v54 + 56) = MEMORY[0x1E69E6158];
          *(v54 + 64) = v57;
          *(v54 + 32) = v56;
          *(v54 + 40) = v58;
          sub_1C6D79AC0();
          sub_1C6D78D30();

          *&v152 = [v141 defaultManager];
          v59 = sub_1C6D75D30();
          sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
          v60 = v130;
          v61 = v129;
          v62 = v131;
          (*(v130 + 104))(v129, *MEMORY[0x1E69E7F98], v131);
          v63 = sub_1C6D79B30();
          (*(v60 + 8))(v61, v62);
          v64 = v128;
          v45(v128, v55, v44);
          v65 = v55;
          v66 = (v121 + 16) & v120;
          v67 = swift_allocObject();
          (*(v153 + 32))(v67 + v66, v64, v44);
          v159 = sub_1C6C7405C;
          v160 = v67;
          aBlock = MEMORY[0x1E69E9820];
          v156 = 1107296256;
          v157 = sub_1C6C70DF0;
          v158 = &block_descriptor_15_0;
          v68 = _Block_copy(&aBlock);

          v69 = v152;
          [v152 fc:v59 quicklyClearDirectory:v63 callbackQueue:v68 completion:?];
          _Block_release(v68);

          goto LABEL_20;
        }

        if (v144 == ++v4)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_26:
      swift_once();
    }

    v93 = aBlock;
    v83 = sub_1C6D75CC0();

    swift_willThrow();
    v90 = v2;
    v91 = v140;
LABEL_22:
    LODWORD(v154) = sub_1C6D79AA0();
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1C6D7EB10;
    v92 = v139;
    v14 = v132;
    v108 = sub_1C6D7A0E0();
    v109 = MEMORY[0x1E69E6158];
    v110 = v124;
    *(v107 + 56) = MEMORY[0x1E69E6158];
    *(v107 + 64) = v110;
    *(v107 + 32) = v108;
    *(v107 + 40) = v111;
    aBlock = 0;
    v156 = 0xE000000000000000;
    v161 = v83;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v112 = aBlock;
    v113 = v156;
    *(v107 + 96) = v109;
    *(v107 + 104) = v110;
    *(v107 + 72) = v112;
    *(v107 + 80) = v113;
    sub_1C6D78D30();
    goto LABEL_23;
  }

  v126 = v4;
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v70 = swift_allocObject();
  v152 = xmmword_1C6D7E630;
  *(v70 + 16) = xmmword_1C6D7E630;
  sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
  v65 = v22;
  v71 = sub_1C6D7A0E0();
  v73 = v72;
  *(v70 + 56) = MEMORY[0x1E69E6158];
  v74 = sub_1C6B2064C();
  *(v70 + 64) = v74;
  *(v70 + 32) = v71;
  *(v70 + 40) = v73;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v75 = [v141 defaultManager];
  v76 = sub_1C6D75D30();
  aBlock = 0;
  LODWORD(v73) = [v75 createDirectoryAtURL:v76 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v77 = aBlock;
  if (!v73)
  {
    v82 = aBlock;
    v83 = sub_1C6D75CC0();

    swift_willThrow();
    sub_1C6D79AA0();
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1C6D7EB10;
    v85 = sub_1C6D7A0E0();
    v86 = MEMORY[0x1E69E6158];
    *(v84 + 56) = MEMORY[0x1E69E6158];
    *(v84 + 64) = v74;
    *(v84 + 32) = v85;
    *(v84 + 40) = v87;
    aBlock = 0;
    v156 = 0xE000000000000000;
    v161 = v83;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v88 = aBlock;
    v89 = v156;
    *(v84 + 96) = v86;
    *(v84 + 104) = v74;
    *(v84 + 72) = v88;
    *(v84 + 80) = v89;
    sub_1C6D78D30();
    v90 = v142;
    v91 = v140;
    v92 = v65;
LABEL_23:

    sub_1C6C71F08();
    swift_allocError();
    *v114 = v83;
    swift_willThrow();
    v115 = *(v153 + 8);
    v115(v91, v14);
    v115(v92, v14);

    v116 = *(*v90 + 12);
    v117 = *(*v90 + 26);
    swift_deallocPartialClassInstance();
    goto LABEL_24;
  }

  v78 = swift_allocObject();
  *(v78 + 16) = v152;
  v79 = v77;
  v80 = sub_1C6D7A0E0();
  *(v78 + 56) = MEMORY[0x1E69E6158];
  *(v78 + 64) = v74;
  *(v78 + 32) = v80;
  *(v78 + 40) = v81;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v44 = v14;
LABEL_20:
  v98 = v153;
  v99 = v142;
  (*(v153 + 16))(v142 + OBJC_IVAR____TtC19NewsPersonalization36TopicClusteringJournalStorageService_journalsDirectory, v65, v44);
  v100 = FCPersistenceQueue();
  v159 = sub_1C6B21310;
  v160 = v99;
  aBlock = MEMORY[0x1E69E9820];
  v156 = 1107296256;
  v157 = sub_1C6B20B90;
  v158 = &block_descriptor_7;
  v101 = _Block_copy(&aBlock);

  v102 = v133;
  sub_1C6D78E60();
  v161 = MEMORY[0x1E69E7CC0];
  sub_1C6B20604(qword_1EDCE7FD0, MEMORY[0x1E69E7F60]);
  sub_1C6B206A0(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C6B20B08();
  v103 = v135;
  v104 = v138;
  sub_1C6D79CB0();
  MEMORY[0x1CCA55FE0](0, v102, v103, v101);
  _Block_release(v101);

  v105 = *(v98 + 8);
  v105(v140, v44);
  (*(v137 + 8))(v103, v104);
  (*(v134 + 8))(v102, v136);
  v106 = v44;
  v90 = v142;
  v105(v139, v106);

LABEL_24:
  v118 = *MEMORY[0x1E69E9840];
  return v90;
}

uint64_t sub_1C6B204A4()
{
  v1 = sub_1C6D75DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B2052C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE2070 = result;
  return result;
}

uint64_t sub_1C6B20604(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6B2064C()
{
  result = qword_1EDCEA910;
  if (!qword_1EDCEA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA910);
  }

  return result;
}

void sub_1C6B206A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B20704()
{
  if (!qword_1EDCE7D68)
  {
    type metadata accessor for URLResourceKey(255);
    sub_1C6C07A7C(&unk_1EDCE7EF0, type metadata accessor for URLResourceKey);
    v0 = sub_1C6D79D40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7D68);
    }
  }
}

uint64_t sub_1C6B20798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B20704();
    v3 = sub_1C6D79D30();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1C6D795A0();
      sub_1C6D7A260();
      v29 = v7;
      sub_1C6D79610();
      v9 = sub_1C6D7A2B0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1C6D795A0();
        v20 = v19;
        if (v18 == sub_1C6D795A0() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1C6D7A130();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1C6C28AF0(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C6B20B08()
{
  result = qword_1EDCE7F58;
  if (!qword_1EDCE7F58)
  {
    sub_1C6B206A0(255, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F58);
  }

  return result;
}

uint64_t sub_1C6B20B90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1C6B20BF4()
{
  v1 = type metadata accessor for ClusteringJournalEntry();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C6D75DE0();
  v57 = *(v52 - 8);
  v6 = *(v57 + 64);
  v7 = MEMORY[0x1EEE9AC00](v52);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v51 - v10;
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDCE2070;
  sub_1C6D79AC0();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();
  v58 = sub_1C6B215D0();

  sub_1C6B22D30(&v58, sub_1C6C72810, sub_1C6B232EC);
  v53 = v0;
  if (v0)
  {
    goto LABEL_22;
  }

  v54 = v12;
  v51[0] = v9;

  v14 = v58;
  v15 = *(v58 + 16);
  if (v15)
  {
    v58 = v13;
    sub_1C6B18934(0, v15, 0);
    v16 = v2;
    v17 = v58;
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v51[1] = v14;
    v19 = v14 + v18;
    v20 = *(v16 + 72);
    v21 = (v57 + 16);
    v55 = v57 + 32;
    v56 = v20;
    v22 = v52;
    do
    {
      sub_1C6B23588(v19, v5);
      (*v21)(v11, v5, v22);
      sub_1C6B19E08(v5, type metadata accessor for ClusteringJournalEntry);
      v58 = v17;
      v12 = v11;
      v24 = v17[2];
      v23 = v17[3];
      if (v24 >= v23 >> 1)
      {
        sub_1C6B18934(v23 > 1, v24 + 1, 1);
        v22 = v52;
        v17 = v58;
      }

      v17[2] = v24 + 1;
      (*(v57 + 32))(v17 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v24, v12, v22);
      v19 += v56;
      --v15;
      v11 = v12;
    }

    while (v15);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v25 = v17[2];
  if (v25 <= 0x19)
  {

    sub_1C6B1D314();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C6D7EB10;
    v58 = v25;
    v43 = sub_1C6D7A0E0();
    v45 = v44;
    v46 = MEMORY[0x1E69E6158];
    *(v42 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1C6B2064C();
    *(v42 + 64) = v47;
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    v58 = 25;
    v48 = sub_1C6D7A0E0();
    *(v42 + 96) = v46;
    *(v42 + 104) = v47;
    *(v42 + 72) = v48;
    *(v42 + 80) = v49;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  sub_1C6B1D314();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C6D7EB10;
  v58 = v25;
  v27 = MEMORY[0x1E69E6530];
  v28 = MEMORY[0x1E69E6590];
  v29 = sub_1C6D7A0E0();
  v31 = v30;
  v32 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v33 = sub_1C6B2064C();
  *(v26 + 64) = v33;
  *(v26 + 32) = v29;
  *(v26 + 40) = v31;
  v58 = 25;
  v34 = sub_1C6D7A0E0();
  *(v26 + 96) = v32;
  *(v26 + 104) = v33;
  *(v26 + 72) = v34;
  *(v26 + 80) = v35;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v36 = v17[2];
  if (v36 >= 0x19)
  {
    v37 = v36 - 25;
    if (v36 != 25)
    {
      v38 = *(v57 + 80);
      v39 = v57 + 16;
      v57 = *(v57 + 16);
      v40 = *(v39 + 56);
      v12 = (v39 - 8);
      v41 = v17 + 25 * v40 + ((v38 + 32) & ~v38);
      v31 = v52;
      v28 = v53;
      v27 = v51[0];
      while (1)
      {
        (v57)(v27, v41, v31);
        sub_1C6C70E68();
        if (v28)
        {
          break;
        }

        (*v12)(v27, v31);
        v41 += v40;
        if (!--v37)
        {
        }
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:

  (*v12)(v27, v31);
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1C6B21318@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B37F88();
    result = sub_1C6D77FD0();
    if (result)
    {
      v8 = result;
      UserInterestVectorProvider = type metadata accessor for SmarterFetchUserInterestVectorProvider();
      v10 = swift_allocObject();
      sub_1C6B214C0();
      v11 = swift_allocObject();
      *(v11 + 32) = 0;
      *(v11 + 16) = xmmword_1C6D7E620;
      v10[3] = v8;
      v10[4] = v11;
      v10[2] = v6;
      a2[3] = UserInterestVectorProvider;
      result = sub_1C6B0FEE4(qword_1EDCE00A8, type metadata accessor for SmarterFetchUserInterestVectorProvider);
      a2[4] = result;
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ClusteringJournalEntry()
{
  result = qword_1EDCE1E78;
  if (!qword_1EDCE1E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B214C0()
{
  if (!qword_1EDCDF788)
  {
    sub_1C6B16F8C(255, &qword_1EDCE63A0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C6D79D90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF788);
    }
  }
}

uint64_t sub_1C6B2154C()
{
  result = sub_1C6D75DE0();
  if (v1 <= 0x3F)
  {
    result = sub_1C6D75F50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1C6B215D0()
{
  v51 = *MEMORY[0x1E69E9840];
  v0 = sub_1C6D75DE0();
  v47 = *(v0 - 8);
  v1 = *(v47 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = v42 - v5;
  v6 = type metadata accessor for ClusteringJournalEntry();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1C6D75D30();
  sub_1C6B206A0(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6D7E630;
  v13 = *MEMORY[0x1E695DAA8];
  *(v12 + 32) = *MEMORY[0x1E695DAA8];
  type metadata accessor for URLResourceKey(0);
  v14 = v13;
  v15 = sub_1C6D79760();

  v49 = 0;
  v16 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v15 options:0 error:&v49];

  v17 = v49;
  if (v16)
  {
    v18 = sub_1C6D79780();
    v19 = v17;

    v20 = *(v18 + 16);
    if (v20)
    {
      v49 = MEMORY[0x1E69E7CC0];
      sub_1C6B21C04(0, v20, 0);
      v21 = v49;
      v22 = *(v47 + 16);
      v23 = v18 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v24 = *(v47 + 72);
      v42[1] = v18;
      v43 = v24;
      v47 += 16;
      v25 = (v47 - 8);
      do
      {
        v26 = v46;
        v22(v46, v23, v0);
        v22(v4, v26, v0);
        v22(v9, v4, v0);
        sub_1C6B224DC(&v9[*(v45 + 20)]);
        v27 = *v25;
        (*v25)(v4, v0);
        v27(v26, v0);
        v49 = v21;
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          sub_1C6B21C04(v28 > 1, v29 + 1, 1);
          v21 = v49;
        }

        v21[2] = v29 + 1;
        sub_1C6B22BB0(v9, v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29);
        v23 += v43;
        --v20;
      }

      while (v20);
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    v49 = v21;

    sub_1C6B22D30(&v49, sub_1C6C71F5C, sub_1C6B230C8);

    result = v49;
  }

  else
  {
    v30 = v49;
    v31 = sub_1C6D75CC0();

    swift_willThrow();
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C6D7EB10;
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v33 = sub_1C6D7A0E0();
    v35 = v34;
    v36 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1C6B2064C();
    *(v32 + 64) = v37;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v49 = 0;
    v50 = 0xE000000000000000;
    v48 = v31;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v38 = v49;
    v39 = v50;
    *(v32 + 96) = v36;
    *(v32 + 104) = v37;
    *(v32 + 72) = v38;
    *(v32 + 80) = v39;
    sub_1C6D78D30();

    result = MEMORY[0x1E69E7CC0];
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

size_t sub_1C6B21C04(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCDF530, type metadata accessor for ClusteringJournalEntry, type metadata accessor for ClusteringJournalEntry);
  *v3 = result;
  return result;
}

void sub_1C6B21C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B21CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B21D1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &unk_1EDCEA8D0, 0x1E69B5568);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE8438);
  result = sub_1C6D77FE0();
  if (!v87)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8D30);
  result = sub_1C6D77FE0();
  if (!v85)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8F58);
  result = sub_1C6D77FE0();
  if (!v83)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC90);
  result = sub_1C6D77FE0();
  if (!v81)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceCohortMembershipService();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v67 = result;
  v68 = v8;
  v69 = v6;
  v70 = a2;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0);
  result = sub_1C6D77FE0();
  if (v79)
  {
    v15 = v87;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
    v66 = v62;
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x1EEE9AC00](v16);
    v19 = (v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = v85;
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    v65 = v62;
    v23 = *(*(v21 - 8) + 64);
    MEMORY[0x1EEE9AC00](v22);
    v25 = (v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = v83;
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
    v64 = v62;
    v29 = *(*(v27 - 8) + 64);
    MEMORY[0x1EEE9AC00](v28);
    v31 = (v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = *v19;
    v34 = *v25;
    v35 = *v31;
    v36 = type metadata accessor for SportsLocationRecommendationMappingsService();
    v77[3] = v36;
    v77[4] = &off_1F46739A0;
    v77[0] = v33;
    v37 = type metadata accessor for SportsTaxonomyGraphTagService();
    v75 = v37;
    v76 = &off_1F4673B88;
    v74[0] = v34;
    v38 = type metadata accessor for SportsTopicMappingService();
    v72 = v38;
    v73 = &off_1F4673AB0;
    v71[0] = v35;
    v63 = type metadata accessor for SportsRecommendationService();
    v39 = swift_allocObject();
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v77, v36);
    v62[2] = v62;
    v41 = *(*(v36 - 8) + 64);
    MEMORY[0x1EEE9AC00](v40);
    v43 = (v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    v45 = v75;
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v62[1] = v62;
    v47 = *(*(v45 - 8) + 64);
    MEMORY[0x1EEE9AC00](v46);
    v49 = (v62 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = v72;
    v52 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v53 = *(*(v51 - 8) + 64);
    MEMORY[0x1EEE9AC00](v52);
    v55 = (v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v57 = *v43;
    v58 = *v49;
    v59 = *v55;
    v39[7] = v36;
    v39[8] = &off_1F46739A0;
    v39[4] = v57;
    v39[12] = v37;
    v39[13] = &off_1F4673B88;
    v39[9] = v58;
    v39[17] = v38;
    v39[18] = &off_1F4673AB0;
    v39[14] = v59;
    v60 = v68;
    v39[2] = v69;
    v39[3] = v60;
    sub_1C6B15E34(&v80, (v39 + 19));
    v39[24] = v67;
    sub_1C6B15E34(&v78, (v39 + 25));
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v84);
    result = __swift_destroy_boxed_opaque_existential_1(v86);
    v61 = v70;
    v70[3] = v63;
    v61[4] = &protocol witness table for SportsRecommendationService;
    *v61 = v39;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C6B224DC@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B21CB8(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_1C6D75CA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B21CB8(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v21 = xmmword_1C6D7E630;
  *(inited + 16) = xmmword_1C6D7E630;
  v12 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v13 = v12;
  sub_1C6B20798(inited);
  swift_setDeallocating();
  sub_1C6B229D4(inited + 32);
  sub_1C6D75CE0();

  sub_1C6D75C60();
  (*(v7 + 8))(v10, v6);
  v14 = sub_1C6D75F50();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v5, v14);
  }

  sub_1C6C358F8(v5);
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  sub_1C6D75DE0();
  sub_1C6B476D4();
  v17 = sub_1C6D7A0E0();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1C6B2064C();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_1C6D78D30();

  return sub_1C6D75EB0();
}

uint64_t sub_1C6B22940(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DE0, &protocolRef_FCPersonalizationDataGeneratorType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B229D4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B22A30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &qword_1EDCDF8C8, &protocolRef_FCContentContext);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE7F90);
  result = sub_1C6D77FE0();
  if (v13)
  {
    v10 = type metadata accessor for SportsLocationRecommendationMappingsService();
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v8;
    result = sub_1C6B15E34(&v12, v11 + 32);
    a2[3] = v10;
    a2[4] = &off_1F46739A0;
    *a2 = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6B22BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusteringJournalEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B22C14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC70);
  result = sub_1C6D77FE0();
  if (v12)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCDFC90);
    result = sub_1C6D77FE0();
    if (v10)
    {
      v7 = type metadata accessor for SportsTaxonomyGraphTagService();
      v8 = swift_allocObject();
      sub_1C6B15E34(&v11, v8 + 16);
      result = sub_1C6B15E34(&v9, v8 + 56);
      a2[3] = v7;
      a2[4] = &off_1F4673B88;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B22D30(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ClusteringJournalEntry() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1C6B22E48(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1C6B22F68(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1C6B22E5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCDFC90);
    result = sub_1C6D77FE0();
    if (v11)
    {
      v8 = type metadata accessor for SportsTopicMappingService();
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      result = sub_1C6B15E34(&v10, v9 + 24);
      a2[3] = v8;
      a2[4] = &off_1F4673AB0;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B22F68(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1C6D7A0C0();
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
        type metadata accessor for ClusteringJournalEntry();
        v10 = sub_1C6D797F0();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for ClusteringJournalEntry() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
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
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1C6B230C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ClusteringJournalEntry();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1C6B23588(v24, v18);
      sub_1C6B23588(v21, v14);
      v25 = *(v8 + 20);
      v26 = sub_1C6D75EE0();
      sub_1C6B19E08(v14, type metadata accessor for ClusteringJournalEntry);
      result = sub_1C6B19E08(v18, type metadata accessor for ClusteringJournalEntry);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1C6B22BB0(v24, v37);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C6B22BB0(v27, v21);
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

uint64_t sub_1C6B232EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ClusteringJournalEntry();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v36 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    sub_1C6D75F50();
    v20 = *(v9 + 72);
    v21 = v19 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1C6B23588(v23, v18);
      sub_1C6B23588(v21, v15);
      v24 = *(v8 + 20);
      sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530]);
      LOBYTE(v24) = sub_1C6D79540();
      sub_1C6B19E08(v15, type metadata accessor for ClusteringJournalEntry);
      result = sub_1C6B19E08(v18, type metadata accessor for ClusteringJournalEntry);
      if (v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_1C6B22BB0(v23, v36);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C6B22BB0(v25, v21);
      v21 += v34;
      v23 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B23588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusteringJournalEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_destroy_helper_13(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_1C6B2368C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = type metadata accessor for ChannelPickerSuggestionsService();
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for ChannelPickerSuggestionsService;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B23700(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B23B48();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE92B0);
  result = sub_1C6D77FE0();
  if (!v34)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &qword_1EDCDF890, &protocolRef_FCLocalAreasManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = result;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE66C8, &protocolRef_TSLocationDetectionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = result;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE9290);
  result = sub_1C6D77FE0();
  if (v32)
  {
    type metadata accessor for ChannelPickerSuggestionsService();
    v15 = swift_allocObject();
    v16 = [v4 cachedSubscription];
    if (objc_getAssociatedObject(v16, v16 + 1))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v17 = v26;
        v18 = [v26 integerValue];
        if (v18 == -1)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C6B79FDC(&v29);
    }

    v17 = 0;
    v18 = 0;
LABEL_17:
    if (objc_getAssociatedObject(v16, ~v18))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v19 = v13;
        v20 = v11;
        v21 = v8;
        v22 = v6;
        v23 = v26;
        v24 = [v23 integerValue];

        v6 = v22;
        v8 = v21;
        v11 = v20;
        v13 = v19;

        swift_unknownObjectRelease();
        v25 = v24 - 101;
LABEL_25:
        *(v15 + 16) = ((v25 ^ v18) & 1) == 0;
        *(v15 + 24) = v6;
        *(v15 + 32) = v8;
        sub_1C6B15E34(&v33, v15 + 40);
        *(v15 + 80) = v11;
        *(v15 + 88) = v13;
        sub_1C6B15E34(&v31, v15 + 96);
        return v15;
      }
    }

    else
    {
      sub_1C6B79FDC(&v29);
    }

LABEL_24:

    swift_unknownObjectRelease();
    v25 = -101;
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_1C6B23B48()
{
  if (!qword_1EDCE96F0[0])
  {
    type metadata accessor for UserEventHistorySessionUnarchiver();
    v0 = type metadata accessor for SessionDataProvider();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCE96F0);
    }
  }
}

uint64_t sub_1C6B23BC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AutoFavoritesService();
  result = sub_1C6D77FB0();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_1F4679BD0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B23C38(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE26E0);
  result = sub_1C6D77FE0();
  if (!v85)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8A30);
  result = sub_1C6D77FE0();
  if (!v83)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE88D8);
  result = sub_1C6D77FE0();
  if (!v81)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for ArticleAutoFavoritesServiceConfigurationProvider();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v78 = v7;
  v79 = &off_1F4679798;
  *&v77 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0);
  result = sub_1C6D77FE0();
  if (!v76)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC90);
  result = sub_1C6D77FE0();
  if (!v74)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver);
  v14 = v13;
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = result;
  v71 = v14;
  v72 = sub_1C6B24B20(&qword_1EDCE2318, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver);
  *&v70 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1C6B0C69C(0, &qword_1EDCE7E50, 0x1E69B5610);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v53 = v10;
  v68 = v17;
  v69 = &off_1F467A550;
  *&v67 = result;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = type metadata accessor for ArticleAutoFavoritesGroupingEligibilityPolicy();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = v83;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
  v52[2] = v52;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = v81;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v52[1] = v52;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v25;
  v34 = *v31;
  v35 = type metadata accessor for EventHistoryAutoFavoritesProvider();
  v66[3] = v35;
  v66[4] = &off_1F46760B0;
  v66[0] = v33;
  v36 = type metadata accessor for ExternalSignalAutoFavoritesProvider();
  v64 = v36;
  v65 = &off_1F4673E58;
  v63[0] = v34;
  v61 = v19;
  v62 = &off_1F467ABD8;
  *&v60 = v20;
  type metadata accessor for AutoFavoritesService();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v66, v35);
  v52[0] = v52;
  v39 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (v52 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = v64;
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = (v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v41;
  v50 = *v47;
  v58 = v35;
  v59 = &off_1F46760B0;
  v56 = &off_1F4673E58;
  *&v57 = v49;
  v55 = v36;
  *&v54 = v50;
  v51 = qword_1EDCE23B8;

  if (v51 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6B15E34(&v84, v37 + 16);
  sub_1C6B15E34(&v57, v37 + 56);
  sub_1C6B15E34(&v54, v37 + 96);
  sub_1C6B15E34(&v77, v37 + 136);
  sub_1C6B15E34(&v75, v37 + 176);
  *(v37 + 216) = v53;
  sub_1C6B15E34(&v73, v37 + 224);
  sub_1C6B15E34(&v70, v37 + 264);
  sub_1C6B15E34(&v67, v37 + 304);
  sub_1C6B15E34(&v60, v37 + 344);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v82);
  return v37;
}

uint64_t sub_1C6B24444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE8F48);
  result = sub_1C6D77FE0();
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DA8, &protocolRef_FCPersonalizationBundleIDMappingProvider);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DD0, &protocolRef_FCPersonalizationURLMappingProvider);
  result = sub_1C6D77FD0();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for ExternalSignalAutoFavoritesProvider();
    v11 = swift_allocObject();
    result = sub_1C6B15E34(&v12, v11 + 16);
    *(v11 + 56) = v7;
    *(v11 + 64) = v9;
    a2[3] = v10;
    a2[4] = &off_1F4673E58;
    *a2 = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1C6B24598(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1C6D77F80();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v3[2] = a1;
  sub_1C6B16F28(a2, (v3 + 3));
  sub_1C6B24980();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v3[9] = v9;
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v3[10] = v10;
  sub_1C6B24A00(&qword_1EDCE7AB0, 255, MEMORY[0x1E69D6420]);
  sub_1C6B24A48();
  sub_1C6B24A00(&qword_1EDCE6660, 255, sub_1C6B24A48);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_1C6D79CB0();
  sub_1C6B24AA0(0, &qword_1EDCE5E00, &qword_1EDCDF828, &unk_1EDCDF830, 0x1E69B5490);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v3[11] = sub_1C6D781B0();

  sub_1C6D79CB0();
  sub_1C6B24AA0(0, &qword_1EDCE5DE8, &qword_1EDCDF7E0, &unk_1EDCDF7E8, 0x1E69B5440);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v3[12] = sub_1C6D781B0();

  sub_1C6D79CB0();
  sub_1C6B24AA0(0, &unk_1EDCE5DF0, &qword_1EDCDF808, &qword_1EDCDF810, 0x1E69B5488);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1C6D781B0();

  __swift_destroy_boxed_opaque_existential_1(a2);
  v3[13] = v20;
  return v3;
}

void sub_1C6B24928(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C6B0C69C(255, a3, a4);
    v5 = sub_1C6D79C00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B24980()
{
  if (!qword_1EDCDF760)
  {
    sub_1C6B24928(255, &unk_1EDCDF8F8, &qword_1EDCE7F20, 0x1E69B5598);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C6D79D90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF760);
    }
  }
}

uint64_t sub_1C6B24A00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6B24A48()
{
  if (!qword_1EDCE6670)
  {
    sub_1C6D77F80();
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6670);
    }
  }
}

void sub_1C6B24AA0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_1C6B24928(255, a3, a4, a5);
    v6 = sub_1C6D781C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C6B24B20(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6B15828(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B24B70()
{
  type metadata accessor for RecipeAutoFavoritesPersistence();
  v0 = swift_allocObject();
  sub_1C6B24BC8();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

void sub_1C6B24BC8()
{
  if (!qword_1EDCDF768)
  {
    sub_1C6B0F658(255, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C6D79D90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF768);
    }
  }
}

uint64_t sub_1C6B24C60()
{
  type metadata accessor for RecipeAutoFavoritesGroupingEligibilityPolicy();

  return swift_allocObject();
}

uint64_t sub_1C6B24C94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE23C0 = result;
  return result;
}

void *sub_1C6B24DB8(void *a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = [result possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  if ([v4 respondsToSelector_])
  {
    v5 = [v4 enableNewsPersonalizationAutoFavorites];
    swift_unknownObjectRelease();
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
    if (sub_1C6D77FB0())
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  swift_unknownObjectRelease();
LABEL_7:
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
  result = sub_1C6D77FB0();
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_8:
  MEMORY[0x1CCA55C20]();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C6D797C0();
  }

  sub_1C6D79800();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E60, &protocolRef_FCAutoFavoritesPreparer);
  result = sub_1C6D77FB0();
  if (!result)
  {
    goto LABEL_15;
  }

  MEMORY[0x1CCA55C20]();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C6D797C0();
  }

  sub_1C6D79800();
  type metadata accessor for AutoFavoritesPreparer();
  result = swift_allocObject();
  result[2] = v11;
  return result;
}

unint64_t sub_1C6B25098()
{
  result = qword_1EDCE6650;
  if (!qword_1EDCE6650)
  {
    sub_1C6B11310(255, &qword_1EDCE6658, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6650);
  }

  return result;
}

void sub_1C6B25120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B25184()
{
  sub_1C6B25120(0, &qword_1EDCDF5A0, MEMORY[0x1E69D68C8], MEMORY[0x1E69E6F90]);
  v0 = sub_1C6D78120();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  (*(v1 + 104))(v4 + v3, *MEMORY[0x1E69D68C0], v0);
  v5 = sub_1C6B252D0(v4);
  swift_setDeallocating();
  (*(v1 + 8))(v4 + v3, v0);
  swift_deallocClassInstance();
  return v5;
}

uint64_t sub_1C6B252D0(uint64_t a1)
{
  v2 = sub_1C6D78120();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1C6B255E4();
    v10 = sub_1C6D79D30();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1C6C07A7C(&qword_1EDCE5E10, MEMORY[0x1E69D68C8]);
      v18 = sub_1C6D79500();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1C6C07A7C(&qword_1EC1D7AB8, MEMORY[0x1E69D68C8]);
          v25 = sub_1C6D79560();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}