uint64_t type metadata accessor for JournalRotator()
{
  result = qword_1EE2DAA00;
  if (!qword_1EE2DAA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5DEC494()
{
  result = sub_1E65D74E8();
  if (v1 <= 0x3F)
  {
    result = sub_1E5DEC528();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5DEC528()
{
  result = qword_1EE2D4598;
  if (!qword_1EE2D4598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4598);
  }

  return result;
}

uint64_t JournalRotator.init(containerDirectory:limit:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a2;
  v7 = type metadata accessor for JournalRotator();
  *&a4[*(v7 + 24)] = a3;
  v8 = *(v7 + 20);
  v9 = sub_1E65D74E8();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a4[v8], a1, v9);
}

uint64_t sub_1E5DEC618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E65D74E8();
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

uint64_t sub_1E5DEC6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65D74E8();
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

uint64_t type metadata accessor for AppCoordinator()
{
  result = qword_1EE2DAE18;
  if (!qword_1EE2DAE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DEC7F4()
{
  result = type metadata accessor for AppComposer();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata accessor for AppComposer()
{
  result = qword_1EE2DBA40;
  if (!qword_1EE2DBA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DEC91C()
{
  if (!qword_1EE2D4A08)
  {
    type metadata accessor for AppFeature();
    sub_1E5DED16C();
    v0 = sub_1E65E4F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A08);
    }
  }
}

void sub_1E5DEC980()
{
  sub_1E5DEC91C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppEnvironment();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppStateResolver();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AppDataItemResolver();
        if (v3 <= 0x3F)
        {
          sub_1E5DED2BC();
          if (v4 <= 0x3F)
          {
            sub_1E5DED31C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for AppFeature()
{
  result = qword_1EE2DBD80;
  if (!qword_1EE2DBD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DECAB8()
{
  result = type metadata accessor for AppEnvironment();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AppEnvironment()
{
  result = qword_1EE2DACF8;
  if (!qword_1EE2DACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5DECB78()
{
  result = sub_1E5DECED0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AccountService();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppStateService();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ArchivedSessionService();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AssetService();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for AwardsService();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for BookmarkService();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for CatalogService();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ConfigurationService();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ContentAvailabilityService();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for EngagementService();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for HealthDataService();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for InteropService();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for LocalizationService();
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for MarketingService();
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for MetricService();
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for PersonalizationService();
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for PlayerService();
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for PrivacyPreferenceService();
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for RecommendationService();
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for RemoteBrowsingService();
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for SearchService();
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for ServiceSubscriptionService();
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for SessionService();
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for SharePlayService();
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for SiriService();
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for SyncService();
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for UpNextQueueService();
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = sub_1E5DED0C4();
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for WindowSceneObserver();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for WorkoutPlanService();
                                                              if (v31 <= 0x3F)
                                                              {
                                                                swift_cvw_initStructMetadataWithLayoutString();
                                                                return 0;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E5DECED0()
{
  result = qword_1EE2D4698;
  if (!qword_1EE2D4698)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D4698);
  }

  return result;
}

unint64_t sub_1E5DED0C4()
{
  result = qword_1EE2D6D60;
  if (!qword_1EE2D6D60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D6D60);
  }

  return result;
}

unint64_t sub_1E5DED16C()
{
  result = qword_1EE2DBD90;
  if (!qword_1EE2DBD90)
  {
    type metadata accessor for AppFeature();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DBD90);
  }

  return result;
}

uint64_t type metadata accessor for AppStateResolver()
{
  result = qword_1EE2DA5C0;
  if (!qword_1EE2DA5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DED210()
{
  result = type metadata accessor for AppEnvironment();
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

unint64_t sub_1E5DED2BC()
{
  result = qword_1EE2D6D48;
  if (!qword_1EE2D6D48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D6D48);
  }

  return result;
}

void sub_1E5DED31C()
{
  if (!qword_1EE2DA970[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0758E8, &unk_1E65F2000);
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2DA970);
    }
  }
}

uint64_t sub_1E5DED3A0(uint64_t a1, uint64_t a2)
{
  v195 = type metadata accessor for RouteDetourPresenter.State(0);
  v5 = *(*(v195 - 8) + 64);
  MEMORY[0x1EEE9AC00](v195);
  v196 = (&v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = type metadata accessor for ServiceSubscriptionService();
  Description = v221[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v221);
  v209 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for MetricService();
  v208 = v220[-1].Description;
  v9 = *(v208 + 8);
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for EngagementService();
  v206 = v207[-1].Description;
  v11 = v206[8];
  v12 = MEMORY[0x1EEE9AC00](v207);
  v194 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v217 = &v175 - v14;
  v218 = type metadata accessor for AccountService();
  v204 = v218[-1].Description;
  v15 = v204[8];
  MEMORY[0x1EEE9AC00](v218);
  v203 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for AppDataItemResolver();
  v17 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v186 = (&v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for AppState();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v181 = (&v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for AppFeature();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v180 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3B0, &qword_1E66065E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v178 = &v175 - v27;
  v199 = sub_1E65E4CE8();
  v201 = *(v199 - 8);
  v28 = *(v201 + 64);
  v29 = MEMORY[0x1EEE9AC00](v199);
  v179 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v216 = &v175 - v31;
  v185 = type metadata accessor for AppComposer();
  v32 = *(*(v185 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v185);
  v205 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v175 - v35;
  *&v197 = type metadata accessor for AppEnvironment();
  v37 = *(*(v197 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v197);
  v182 = (&v175 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x1EEE9AC00](v38);
  v183 = (&v175 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v175 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v175 - v46;
  *(v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride) = 1;
  v48 = (v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onTerminateApplication);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onDeactivateApplication);
  v50 = sub_1E65E60A8();
  *v49 = 0;
  v49[1] = 0;
  v51 = a2;
  v52 = v43;
  v53 = *(v50 - 8);
  v54 = *(v53 + 56);
  v189 = v50;
  v188 = v54;
  v187 = v53 + 56;
  (v54)(v47, 1, 1);
  v215 = v51;
  sub_1E5DFD1CC(v51, &v225, &qword_1ED0782C0, &qword_1E65FBB50);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  v56 = v226;
  *(v55 + 32) = v225;
  *(v55 + 48) = v56;
  *(v55 + 64) = v227;
  sub_1E63399BC(0, 0, v47, &unk_1E66065F0, v55);

  v190 = v47;
  sub_1E5DFE50C(v47, &unk_1ED0735B0, &qword_1E65EA000);
  sub_1E65D7F18();
  v192 = v225;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A3C0, &qword_1E66065F8);
  sub_1E65D7F18();
  v213 = v2;
  sub_1E5DF599C(&v225, v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator);
  v57 = sub_1E65E56E8();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v191 = v57;
  swift_allocObject();

  v212 = sub_1E65E56D8();

  v60 = sub_1E5DF4D5C();
  v211 = a1;
  static AppEnvironment.live(with:)(a1, v52);
  v61 = *(v52 + 8);
  v62 = sub_1E5E03F70(*(v52 + 8));
  v202 = type metadata accessor for AppRouter();
  sub_1E5E05224(v61, &v225);
  v63 = *(&v225 + 1);
  if (*(&v225 + 1) == 6)
  {
    goto LABEL_6;
  }

  v64 = v225;
  sub_1E5E05374(v225, *(&v225 + 1));
  v65 = sub_1E5E25298(v64, v63, v62);
  sub_1E5E07DA0(v64, v63);
  if ((v65 & 1) == 0)
  {
    sub_1E5E07DA0(v64, v63);
    goto LABEL_6;
  }

  if (v63 == 4)
  {
LABEL_6:
    swift_beginAccess();
    v63 = qword_1ED075950;
    v64 = qword_1ED075948;
    sub_1E5E05374(qword_1ED075948, qword_1ED075950);
  }

  v66 = v63;
  v200 = v60;
  v214 = v36;
  sub_1E5DFD1CC(v215, &v225, &qword_1ED0782C0, &qword_1E65FBB50);
  v67 = *(&v226 + 1);
  if (*(&v226 + 1))
  {
    v68 = v227;
    __swift_project_boxed_opaque_existential_1(&v225, *(&v226 + 1));
    v69 = v67;
    v70 = v178;
    (*(v68 + 8))(v69, v68);
    v71 = v201;
    v72 = v199;
    (*(v201 + 56))(v70, 0, 1, v199);
    __swift_destroy_boxed_opaque_existential_1(&v225);
    v73 = (*(v71 + 48))(v70, 1, v72);
    v74 = v180;
    if (v73 != 1)
    {
      (*(v71 + 32))(v216, v70, v72);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E5DFE50C(&v225, &qword_1ED0782C0, &qword_1E65FBB50);
    v71 = v201;
    v70 = v178;
    v72 = v199;
    (*(v201 + 56))(v178, 1, 1, v199);
    v74 = v180;
  }

  (*(v71 + 104))(v216, *MEMORY[0x1E6999AF8], v72);
  if ((*(v71 + 48))(v70, 1, v72) != 1)
  {
    sub_1E5DFE50C(v70, &unk_1ED07A3B0, &qword_1E66065E0);
  }

LABEL_13:
  v75 = sub_1E65E56C8();
  v77 = v76;
  sub_1E5DFAA48(v52, v74, type metadata accessor for AppEnvironment);
  sub_1E65E4CC8();
  *&v225 = v64;
  *(&v225 + 1) = v66;
  v198 = v61;
  v180 = v75;
  v178 = v77;
  if (v61 > 1)
  {
    if (v61 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    v78 = 2;
  }

  else if (v61)
  {
    v78 = 3;
  }

  else
  {
    v78 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A3C8, &qword_1E6606600);
  v177 = v66;
  sub_1E5E05374(v64, v66);

  v176 = v64;
  sub_1E5DF83E0(v79, &v225, v78, v181);
  (*(v71 + 16))(v179, v216, v72);
  v80 = sub_1E65E4EF8();
  v81 = v183;
  sub_1E5DFAA48(v52, v183, type metadata accessor for AppEnvironment);
  v82 = type metadata accessor for AppStateResolver();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  v85 = v71;
  v86 = swift_allocObject();
  sub_1E5DFAA48(v81, v86 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment, type metadata accessor for AppEnvironment);
  *(v86 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store) = v80;
  v87 = sub_1E5E09ED0(MEMORY[0x1E69E7CC0]);

  v181 = type metadata accessor for AppEnvironment;
  sub_1E5E09E70(v81, type metadata accessor for AppEnvironment);
  *(v86 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_resolvers) = v87;
  v88 = v182;
  sub_1E5DFAA48(v52, v182, type metadata accessor for AppEnvironment);
  sub_1E5DFAA48(v52, v81, type metadata accessor for AppEnvironment);
  v201 = v52;
  v89 = v186;
  *(v186 + 1) = v80;
  sub_1E5DFAA48(v81, v89 + *(v184 + 24), type metadata accessor for AppEnvironment);

  v90 = sub_1E6018B3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A3D0, &qword_1E6606608);
  v91 = swift_allocObject();
  *(v91 + 24) = 0;

  sub_1E5E09E70(v81, type metadata accessor for AppEnvironment);
  *(v91 + 16) = v90;

  *v89 = v91;
  v92 = sub_1E65DAE38();
  v93 = sub_1E65DAE38();
  sub_1E5E0476C(v176, v177);
  (*(v85 + 8))(v216, v199);
  v94 = v201;
  if (v92 == v93)
  {
    v95 = 10;
  }

  else
  {
    v95 = 0;
  }

  v96 = v185;
  v97 = v214;
  v98 = v214 + *(v185 + 40);
  *(v98 + 4) = 0;
  *v98 = 0u;
  *(v98 + 1) = 0u;
  *v97 = v80;
  sub_1E5DFAC50(v88, v97 + v96[5], type metadata accessor for AppEnvironment);
  *(v97 + v96[6]) = v86;
  sub_1E5DFAC50(v89, v97 + v96[7], type metadata accessor for AppDataItemResolver);
  v99 = (v97 + v96[8]);
  v100 = v178;
  *v99 = v180;
  v99[1] = v100;
  v101 = (v97 + v96[9]);
  *v101 = 0;
  v101[1] = v95;
  v102 = v200;

  static AppEnvironment.live(with:)(v211, v81);

  v103 = sub_1E5E0A0F0();
  v104 = v205;
  v186 = type metadata accessor for AppComposer;
  sub_1E5DFAA48(v97, v205, type metadata accessor for AppComposer);
  v105 = *(v202 + 48);
  v106 = *(v202 + 52);
  v107 = swift_allocObject();
  v108 = sub_1E5E0C5D4(v104, v103, v102, v107);
  sub_1E5E09E70(v81, v181);

  v109 = v213;
  sub_1E5DFAA48(v97, v213 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer, type metadata accessor for AppComposer);
  v110 = (v109 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver);
  v110[3] = &type metadata for AppURLResolver;
  v110[4] = &off_1F5FAB4F8;
  *v110 = v108;
  v111 = v108;
  v216 = v108;
  v112 = (v109 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_detourPresenter);
  *v112 = v102;
  v112[1] = &off_1F5FB2698;
  v113 = v197;
  v114 = *(v197 + 24);
  v183 = v204[2];
  v115 = v203;
  (v183)(v203, v94 + v114, v218);
  v199 = *v94;
  v116 = v113[15];
  v184 = v206[2];
  (v184)(v217, v94 + v116, v207);
  v117 = v113[20];
  v181 = *(v208 + 2);
  (v181)(v219, v94 + v117, v220);
  v118 = v113[27];
  v182 = Description[2];
  v119 = v209;
  (v182)(v209, v94 + v118, v221);
  v120 = (v111 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
  v185 = v120;
  v121 = type metadata accessor for EngagementMessagePresenter();
  v122 = *(v121 + 48);
  v123 = *(v121 + 52);
  v124 = swift_allocObject();
  v125 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_accountService;
  v197 = *v120;
  *(v124 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_placement) = 3;
  (v183)(v124 + v125, v115, v218);
  *(v124 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_bag) = v199;
  v126 = v217;
  v127 = v207;
  v128 = v184;
  (v184)(v124 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_engagementService, v217, v207);
  (v181)(v124 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_metricService, v219, v220);
  v129 = v213;
  *(v124 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_platform) = v198;
  (v182)(v124 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_serviceSubscriptionService, v119, v221);
  *(v124 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_taskScheduler) = v197;
  v130 = v190;
  v188(v190, 1, 1, v189);
  v131 = v194;
  v128(v194, v126, v127);
  v132 = v206;
  v133 = (*(v206 + 80) + 32) & ~*(v206 + 80);
  v134 = v133 + v193;
  v135 = swift_allocObject();
  *(v135 + 16) = 0;
  *(v135 + 24) = 0;
  (v132[4])(v135 + v133, v131, v127);
  *(v135 + v134) = 3;

  v136 = v216;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v130, &unk_1E6606610, v135);

  (Description[1])(v209, v221);
  (*(v208 + 1))(v219, v220);
  (v132[1])(v217, v127);
  (v204[1])(v203, v218);
  *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_engagementMessagePresenter) = v124;
  v137 = objc_allocWithZone(sub_1E65E51F8());

  v138 = sub_1E65E51D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  v139 = v224;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v140 = v222;
  v141 = v223;
  v142 = objc_allocWithZone(type metadata accessor for SubscriptionPurchasePresenter());
  v143 = sub_1E5E1B07C(&v225, v139, v140, v141);

  *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_subscriptionPurchasePresenter) = v143;
  v144 = v205;
  sub_1E5DFAA48(v136 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer, v205, v186);
  v146 = *v185;
  v145 = *(v185 + 8);
  v147 = swift_allocObject();
  swift_weakInit();
  v148 = type metadata accessor for ToastPresenter();
  v149 = *(v148 + 48);
  v150 = *(v148 + 52);
  swift_allocObject();
  *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_toastPresenter) = sub_1E5E1B880(v144, v146, v145, sub_1E64C007C, v147);
  *(*(v136 + OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext) + OBJC_IVAR____TtC10Blackbeard20NavigationController_pictureInPictureSurrogate + 8) = MEMORY[0x1E69CD6C8];
  swift_unknownObjectWeakAssign();
  v151 = swift_allocObject();
  *(v151 + 16) = v138;
  swift_unknownObjectRetain();
  v152 = v138;
  v153 = sub_1E627FA08(v136, sub_1E64C0084, v151, v192);

  v154 = (v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  v154[3] = v202;
  v154[4] = &off_1F5FBE858;
  *v154 = v136;
  v155 = MEMORY[0x1E69CD8E8];
  v156 = (v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v156[3] = v191;
  v156[4] = v155;
  *v156 = v212;
  *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) = v153;
  *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_pictureInPicturePresenter) = v152;
  sub_1E5E0E7A0(qword_1EE2DAE30, type metadata accessor for AppCoordinator);

  v157 = v152;

  v158 = v153;

  v221 = v157;
  sub_1E65E51E8();
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v159 = sub_1E65E3B68();
  __swift_project_value_buffer(v159, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v160 = v196;
  *v196 = v158;
  swift_storeEnumTagMultiPayload();
  v161 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  v162 = v200;
  swift_beginAccess();
  v163 = v158;
  sub_1E61CFF50(v160, v162 + v161);
  swift_endAccess();
  v164 = *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_subscriptionPurchasePresenter);
  swift_unknownObjectWeakAssign();
  v165 = *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_toastPresenter);
  swift_unknownObjectWeakAssign();
  v166 = swift_allocObject();
  swift_weakInit();
  v167 = v162;
  v168 = v162[3];
  v169 = v162[4];
  v167[3] = sub_1E64C00B4;
  v167[4] = v166;

  sub_1E5F9169C(v168, v169);

  v170 = swift_allocObject();
  swift_weakInit();

  v171 = v167[5];
  v172 = v167[6];
  v167[5] = sub_1E64C00D8;
  v167[6] = v170;

  sub_1E5F9169C(v171, v172);

  sub_1E61E2908();
  sub_1E65E3B38();
  v173 = *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator + 32);
  __swift_project_boxed_opaque_existential_1((v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator), *(v129 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator + 24));
  sub_1E5E0E7A0(&qword_1EE2DAE28, type metadata accessor for AppCoordinator);
  sub_1E65E59A8();

  sub_1E5DFE50C(v215, &qword_1ED0782C0, &qword_1E65FBB50);
  sub_1E5E09E70(v214, type metadata accessor for AppComposer);
  sub_1E5E09E70(v201, type metadata accessor for AppEnvironment);
  return v129;
}

uint64_t sub_1E5DEED00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5DEED48()
{
  v1 = type metadata accessor for EngagementService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = Description[8] + v3;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5DEEE10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5DEEE48()
{

  return swift_deallocObject();
}

uint64_t AppCoordinator.init(dependencies:journalRotator:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5DED3A0(a1, a2);

  return v2;
}

uint64_t sub_1E5DEEEB8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DEEEF0()
{
  sub_1E5DEEF64();
  if (v0 <= 0x3F)
  {
    sub_1E5DEEFAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DEEF64()
{
  if (!qword_1EE2D4638)
  {
    v0 = sub_1E5DEF094();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4638);
    }
  }
}

void sub_1E5DEEFAC()
{
  if (!qword_1EE2DA058[0])
  {
    type metadata accessor for RouteDestination();
    sub_1E5DEF094();
    _s20NavigationControllerCMa();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE2DA058);
    }
  }
}

uint64_t type metadata accessor for RouteDestination()
{
  result = qword_1EE2DA048;
  if (!qword_1EE2DA048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5DEF094()
{
  result = qword_1EE2D4630;
  if (!qword_1EE2D4630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4630);
  }

  return result;
}

void sub_1E5DEF0E0()
{
  type metadata accessor for RouteResource();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RouteSource(319);
    if (v1 <= 0x3F)
    {
      sub_1E5DF022C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for RouteResource()
{
  result = qword_1EE2DB240;
  if (!qword_1EE2DB240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DEF1C8()
{
  sub_1E5DF13E4();
  if (v0 <= 0x3F)
  {
    sub_1E61B74B0(319);
    if (v1 <= 0x3F)
    {
      sub_1E5DEF56C();
      if (v2 <= 0x3F)
      {
        sub_1E5DF1414(319);
        if (v3 <= 0x3F)
        {
          sub_1E5DF1534();
          if (v4 <= 0x3F)
          {
            sub_1E5DF1640();
            if (v5 <= 0x3F)
            {
              sub_1E5DF15A0(319, &qword_1EE2D44F8, MEMORY[0x1E699E860]);
              if (v6 <= 0x3F)
              {
                sub_1E5DF1868(319, &qword_1EE2D6D28, MEMORY[0x1E69CD620], MEMORY[0x1E6968FB0]);
                if (v7 <= 0x3F)
                {
                  sub_1E5DF15A0(319, &qword_1EE2D44F0, MEMORY[0x1E6968FB0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1E5DEF59C();
                    if (v9 <= 0x3F)
                    {
                      sub_1E5DF1670();
                      if (v10 <= 0x3F)
                      {
                        sub_1E5DF16D4(319, &qword_1EE2D6D40, MEMORY[0x1E69CD5A8]);
                        if (v11 <= 0x3F)
                        {
                          sub_1E5DF1720();
                          if (v12 <= 0x3F)
                          {
                            sub_1E5DF16D4(319, &qword_1EE2D71E8, MEMORY[0x1E6968FB0]);
                            if (v13 <= 0x3F)
                            {
                              sub_1E5DEF5CC(319);
                              if (v14 <= 0x3F)
                              {
                                sub_1E5DEF780(319);
                                if (v15 <= 0x3F)
                                {
                                  sub_1E5DEF8E8(319);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1E5DEFA94(319);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1E5DEFBB8();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1E5DEFC3C();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1E65E52B8();
                                          if (v20 <= 0x3F)
                                          {
                                            type metadata accessor for PlaylistType();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1E5DF16D4(319, &qword_1EE2D71B8, MEMORY[0x1E69695A8]);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1E5DF1868(319, &unk_1EE2D49A0, MEMORY[0x1E69CD8B0], MEMORY[0x1E69CB0E0]);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1E5DEFD2C();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1E5DEFDD0();
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1E5DEFE50();
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_1E5DEFED4();
                                                        if (v27 <= 0x3F)
                                                        {
                                                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5DEF56C()
{
  result = qword_1EE2D4908;
  if (!qword_1EE2D4908)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D4908);
  }

  return result;
}

uint64_t sub_1E5DEF59C()
{
  result = qword_1EE2D48F0;
  if (!qword_1EE2D48F0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48F0);
  }

  return result;
}

void sub_1E5DEF5CC(uint64_t a1)
{
  if (!qword_1EE2D48B0)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E5DEF738(255, &qword_1EE2D4670, 0x1E698C988);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D48B0);
    }
  }
}

uint64_t sub_1E5DEF738(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1E5DEF780(uint64_t a1)
{
  if (!qword_1EE2D48B8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077780, &unk_1E66097F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D48B8);
    }
  }
}

void sub_1E5DEF8E8(uint64_t a1)
{
  if (!qword_1EE2D44E8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65D74E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076220, &unk_1E65FA4A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077770, &unk_1E660C190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07B500, &qword_1E65F0EE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D44E8);
    }
  }
}

void sub_1E5DEFA94(uint64_t a1)
{
  if (!qword_1EE2D4980)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65E57D8();
    sub_1E65E5528();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D4980);
    }
  }
}

void sub_1E5DEFBB8()
{
  if (!qword_1EE2D46D8)
  {
    sub_1E5DEF738(255, &qword_1EE2D46D0, 0x1E698C818);
    sub_1E65DB848();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D46D8);
    }
  }
}

uint64_t sub_1E5DEFC3C()
{
  result = qword_1EE2D46F0;
  if (!qword_1EE2D46F0)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EE2D46F0);
  }

  return result;
}

uint64_t type metadata accessor for PlaylistType()
{
  result = qword_1EE2DB2F8;
  if (!qword_1EE2DB2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DEFCB8()
{
  result = sub_1E5DEF56C();
  if (v1 <= 0x3F)
  {
    result = sub_1E65DAEB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5DEFD2C()
{
  if (!qword_1EE2D4988)
  {
    sub_1E65E56B8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0762C0, &qword_1E65F5300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072908, &qword_1E660F010);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D4988);
    }
  }
}

void sub_1E5DEFDD0()
{
  if (!qword_1EE2D6FD8)
  {
    sub_1E65DA308();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072908, &qword_1E660F010);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6FD8);
    }
  }
}

void sub_1E5DEFE50()
{
  if (!qword_1EE2D4978)
  {
    sub_1E65E58D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072908, &qword_1E660F010);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D4978);
    }
  }
}

void sub_1E5DEFED4()
{
  if (!qword_1EE2D70B8)
  {
    sub_1E65D9048();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D70B8);
    }
  }
}

void sub_1E5DEFF84()
{
  type metadata accessor for AppLaunchScope(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URLContext(319);
    if (v1 <= 0x3F)
    {
      sub_1E65D74E8();
      if (v2 <= 0x3F)
      {
        sub_1E5DF01E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5DF0020()
{
  result = type metadata accessor for URLContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E5DF00A0()
{
  sub_1E65D74E8();
  if (v0 <= 0x3F)
  {
    sub_1E5DF013C();
    if (v1 <= 0x3F)
    {
      sub_1E5DF0194();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5DF013C()
{
  if (!qword_1EE2D71D8)
  {
    sub_1E65D74E8();
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D71D8);
    }
  }
}

void sub_1E5DF0194()
{
  if (!qword_1EE2D48A8)
  {
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D48A8);
    }
  }
}

void sub_1E5DF01E4()
{
  if (!qword_1EE2D70F0)
  {
    v0 = sub_1E65D8D48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D70F0);
    }
  }
}

void sub_1E5DF022C()
{
  if (!qword_1EE2D4728)
  {
    sub_1E5DF0288();
    v0 = sub_1E65E6278();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4728);
    }
  }
}

unint64_t sub_1E5DF0288()
{
  result = qword_1EE2DA5E8[0];
  if (!qword_1EE2DA5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DA5E8);
  }

  return result;
}

unint64_t sub_1E5DF02E0()
{
  result = qword_1EE2DA5E0;
  if (!qword_1EE2DA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA5E0);
  }

  return result;
}

uint64_t _s20NavigationControllerCMa()
{
  result = qword_1EE2D9590;
  if (!qword_1EE2D9590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF0380()
{
  sub_1E5DF0444();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E5DF0444()
{
  if (!qword_1EE2D6AF8)
  {
    v0 = sub_1E65DDC78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6AF8);
    }
  }
}

uint64_t type metadata accessor for AppState()
{
  result = qword_1EE2D7778;
  if (!qword_1EE2D7778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF04F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Resettable();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5DF0544()
{
  sub_1E65DE668();
  if (v0 <= 0x3F)
  {
    sub_1E5DF04F0(319, &qword_1EE2DBB98, MEMORY[0x1E699CE20]);
    if (v1 <= 0x3F)
    {
      sub_1E5DF178C();
      if (v2 <= 0x3F)
      {
        sub_1E5DF449C();
        if (v3 <= 0x3F)
        {
          sub_1E5DF19A0();
          if (v4 <= 0x3F)
          {
            sub_1E5DF1A34(319, &qword_1EE2DBB68, MEMORY[0x1E699F640], type metadata accessor for Resettable);
            if (v5 <= 0x3F)
            {
              sub_1E5DF4530(319, &qword_1EE2D4AA8, &qword_1ED074678, &qword_1E660D860, &qword_1EE2D4700);
              if (v6 <= 0x3F)
              {
                sub_1E5DF4010(319, &qword_1EE2DBB00, &qword_1ED0746B0, &qword_1E65F0FA8);
                if (v7 <= 0x3F)
                {
                  sub_1E5DF1A84();
                  if (v8 <= 0x3F)
                  {
                    sub_1E5DF45CC();
                    if (v9 <= 0x3F)
                    {
                      sub_1E5DF4010(319, &qword_1EE2DBB30, &qword_1ED074720, &qword_1E65F0FC8);
                      if (v10 <= 0x3F)
                      {
                        sub_1E5DF4010(319, &qword_1EE2DBAF0, &qword_1ED074768, &qword_1E65F0FD8);
                        if (v11 <= 0x3F)
                        {
                          sub_1E5DF4010(319, &qword_1EE2DBB28, &qword_1ED0747E0, &qword_1E65F0FF0);
                          if (v12 <= 0x3F)
                          {
                            sub_1E5DF4010(319, &qword_1EE2DBB20, &qword_1ED074828, &qword_1E65F1000);
                            if (v13 <= 0x3F)
                            {
                              sub_1E5DF4010(319, &qword_1EE2DBBC0, &qword_1ED074870, &qword_1E65F1010);
                              if (v14 <= 0x3F)
                              {
                                sub_1E5DF04F0(319, &qword_1EE2DBBB8, MEMORY[0x1E699D2B0]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1E60DE628();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1E5DF4530(319, &qword_1EE2D4AA0, &qword_1ED0748E0, &qword_1E660F180, &qword_1EE2D46F8);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1E5DF1B2C();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1E5DF1BC8();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1E5DF4010(319, &qword_1EE2DBB10, &qword_1ED074928, &qword_1E65F1020);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1E5DF4010(319, &qword_1EE2DBB18, &qword_1ED074970, &qword_1E65F1030);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1E5DF04F0(319, &qword_1EE2DBB88, MEMORY[0x1E699D6B8]);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1E5DF04F0(319, &qword_1EE2DBB78, MEMORY[0x1E699F288]);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1E5DFCC30();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1E5DFCCAC();
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1E5DFCD68();
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_1E5E0138C(319, &qword_1EE2D4930, MEMORY[0x1E699EB58]);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_1E5DF4010(319, &qword_1EE2DBB38, &qword_1ED074A60, &qword_1E65F1058);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_1E5DF1A34(319, &qword_1EE2DBBA8, MEMORY[0x1E699E1C0], type metadata accessor for Resettable);
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_1E5E013F0();
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_1E5DF04F0(319, &qword_1EE2DBBB0, MEMORY[0x1E699E100]);
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_1E5DFC0C4();
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_1E5E01484();
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_1E5E014DC();
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_1E5DF4010(319, &qword_1EE2DBB48, &qword_1ED074B68, &qword_1E65F1098);
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_1E5DF4010(319, &qword_1EE2DBB40, &qword_1ED074BC0, &qword_1E65F10A8);
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_1E5DF04F0(319, &qword_1EE2DBB90, MEMORY[0x1E699E698]);
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              sub_1E5DF4124();
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                sub_1E5E01570();
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  sub_1E5DF1A34(319, &qword_1EE2DBB50, &type metadata for ModalPresentationState, type metadata accessor for Resettable);
                                                                                  if (v40 <= 0x3F)
                                                                                  {
                                                                                    sub_1E5DF04F0(319, qword_1EE2DBBC8, MEMORY[0x1E699D0E8]);
                                                                                    if (v41 <= 0x3F)
                                                                                    {
                                                                                      sub_1E5DF6D94(319, &qword_1EE2D4B08, sub_1E5E01620, MEMORY[0x1E69CBB48], MEMORY[0x1E6999AA8]);
                                                                                      if (v42 <= 0x3F)
                                                                                      {
                                                                                        sub_1E60DE704(319, &qword_1EE2D4AD0, &qword_1ED074CB0, &unk_1E660F800, sub_1E60DB408);
                                                                                        if (v43 <= 0x3F)
                                                                                        {
                                                                                          sub_1E60DE704(319, &qword_1EE2D4AD8, &qword_1ED074CD0, &qword_1E660EF60, sub_1E5E01674);
                                                                                          if (v44 <= 0x3F)
                                                                                          {
                                                                                            sub_1E5DF04F0(319, &qword_1EE2DBB80, MEMORY[0x1E699E9E0]);
                                                                                            if (v45 <= 0x3F)
                                                                                            {
                                                                                              sub_1E5DF4010(319, &qword_1EE2DBB58, &qword_1ED073568, &qword_1E65FD8A0);
                                                                                              if (v46 <= 0x3F)
                                                                                              {
                                                                                                sub_1E5E01728();
                                                                                                if (v47 <= 0x3F)
                                                                                                {
                                                                                                  sub_1E5DF04F0(319, &qword_1EE2DBB70, MEMORY[0x1E699F370]);
                                                                                                  if (v48 <= 0x3F)
                                                                                                  {
                                                                                                    sub_1E5DF4010(319, &qword_1EE2DBB08, &qword_1ED074D80, &qword_1E65F10F0);
                                                                                                    if (v49 <= 0x3F)
                                                                                                    {
                                                                                                      sub_1E5E017BC();
                                                                                                      if (v50 <= 0x3F)
                                                                                                      {
                                                                                                        sub_1E5DF04F0(319, &qword_1EE2DBB60, MEMORY[0x1E699ED68]);
                                                                                                        if (v51 <= 0x3F)
                                                                                                        {
                                                                                                          sub_1E5DF1A34(319, &qword_1EE2D74F0, &type metadata for RootItem, MEMORY[0x1E69E6720]);
                                                                                                          if (v52 <= 0x3F)
                                                                                                          {
                                                                                                            sub_1E5DF6D94(319, &qword_1EE2D4710, sub_1E5DFCE18, &type metadata for RootItem, MEMORY[0x1E69E64E8]);
                                                                                                            if (v53 <= 0x3F)
                                                                                                            {
                                                                                                              type metadata accessor for UIEdgeInsets(319);
                                                                                                              if (v54 <= 0x3F)
                                                                                                              {
                                                                                                                sub_1E60DE774();
                                                                                                                if (v55 <= 0x3F)
                                                                                                                {
                                                                                                                  sub_1E5DF42B8();
                                                                                                                  if (v56 <= 0x3F)
                                                                                                                  {
                                                                                                                    sub_1E5DF4010(319, &qword_1EE2DBAE8, &qword_1ED0748E0, &qword_1E660F180);
                                                                                                                    if (v57 <= 0x3F)
                                                                                                                    {
                                                                                                                      sub_1E5DF04F0(319, &qword_1EE2DBBA0, MEMORY[0x1E699EF28]);
                                                                                                                      if (v58 <= 0x3F)
                                                                                                                      {
                                                                                                                        sub_1E65E39E8();
                                                                                                                        if (v59 <= 0x3F)
                                                                                                                        {
                                                                                                                          sub_1E60DE82C();
                                                                                                                          if (v60 <= 0x3F)
                                                                                                                          {
                                                                                                                            sub_1E65E1D58();
                                                                                                                            if (v61 <= 0x3F)
                                                                                                                            {
                                                                                                                              sub_1E60DE8D4();
                                                                                                                              if (v62 <= 0x3F)
                                                                                                                              {
                                                                                                                                sub_1E5DF4388();
                                                                                                                                if (v63 <= 0x3F)
                                                                                                                                {
                                                                                                                                  sub_1E60DE704(319, &qword_1EE2D4AC0, &qword_1ED074F18, &qword_1E65F1150, sub_1E60DB4BC);
                                                                                                                                  if (v64 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    sub_1E5E0138C(319, &qword_1EE2D4928, MEMORY[0x1E699ECC8]);
                                                                                                                                    if (v65 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      sub_1E5DF4BD4();
                                                                                                                                      if (v66 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        sub_1E5E0138C(319, &qword_1EE2D4938, MEMORY[0x1E699EA38]);
                                                                                                                                        if (v67 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          sub_1E5DF4010(319, &qword_1EE2DBAF8, &qword_1ED074F88, &qword_1E65F1170);
                                                                                                                                          if (v68 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            sub_1E60DE968();
                                                                                                                                            if (v69 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              sub_1E60DEA18();
                                                                                                                                              if (v70 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                swift_cvw_initStructMetadataWithLayoutString();
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5DF1170(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5DF11E0()
{
  result = qword_1EE2D9EF8;
  if (!qword_1EE2D9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EF8);
  }

  return result;
}

unint64_t sub_1E5DF1238()
{
  result = qword_1EE2D9ED8;
  if (!qword_1EE2D9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9ED8);
  }

  return result;
}

unint64_t sub_1E5DF1290()
{
  result = qword_1EE2D9EF0;
  if (!qword_1EE2D9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EF0);
  }

  return result;
}

unint64_t sub_1E5DF12E4()
{
  result = qword_1EE2D9EE8;
  if (!qword_1EE2D9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EE8);
  }

  return result;
}

unint64_t sub_1E5DF1338()
{
  result = qword_1EE2DB328;
  if (!qword_1EE2DB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB328);
  }

  return result;
}

unint64_t sub_1E5DF138C()
{
  result = qword_1EE2DB308;
  if (!qword_1EE2DB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB308);
  }

  return result;
}

uint64_t sub_1E5DF13E4()
{
  result = qword_1EE2D48C0;
  if (!qword_1EE2D48C0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48C0);
  }

  return result;
}

void sub_1E5DF1414(uint64_t a1)
{
  if (!qword_1EE2D4910)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65D72D8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D4910);
    }
  }
}

void sub_1E5DF1534()
{
  if (!qword_1EE2D6548)
  {
    sub_1E65E0B48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6548);
    }
  }
}

void sub_1E5DF15A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A38, &qword_1E65EC320);
    sub_1E65DB848();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_1E5DF1640()
{
  result = qword_1EE2D67A8;
  if (!qword_1EE2D67A8)
  {
    result = MEMORY[0x1E699E678];
    atomic_store(MEMORY[0x1E699E678], &qword_1EE2D67A8);
  }

  return result;
}

void sub_1E5DF1670()
{
  if (!qword_1EE2D4900)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D4900);
    }
  }
}

void sub_1E5DF16D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5DF1720()
{
  if (!qword_1EE2D4920)
  {
    sub_1E65D74E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D4920);
    }
  }
}

void sub_1E5DF178C()
{
  if (!qword_1EE2D6580)
  {
    sub_1E5DF11E0();
    sub_1E5DF1338();
    v0 = sub_1E65E0718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6580);
    }
  }
}

unint64_t sub_1E5DF1808()
{
  result = qword_1EE2D9EE0;
  if (!qword_1EE2D9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EE0);
  }

  return result;
}

void sub_1E5DF1868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1E5DF18F0()
{
  result = qword_1EE2DB320;
  if (!qword_1EE2DB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB320);
  }

  return result;
}

unint64_t sub_1E5DF1944()
{
  result = qword_1EE2DB318;
  if (!qword_1EE2DB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB318);
  }

  return result;
}

void sub_1E5DF19A0()
{
  if (!qword_1EE2D4B10)
  {
    sub_1E65D7EB8();
    sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0]);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4B10);
    }
  }
}

void sub_1E5DF1A34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E5DF1A84()
{
  if (!qword_1EE2D4AF0)
  {
    sub_1E65E1618();
    sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8]);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4AF0);
    }
  }
}

void sub_1E5DF1B2C()
{
  if (!qword_1EE2D4A88)
  {
    sub_1E5DF46C8();
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A88);
    }
  }
}

void sub_1E5DF1BC8()
{
  if (!qword_1EE2D4B28)
  {
    type metadata accessor for BrowsingIdentity(255);
    sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4B28);
    }
  }
}

uint64_t sub_1E5DF1C5C()
{
  result = sub_1E65D8DE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5DF1CDC()
{
  result = sub_1E65D76F8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionButtonDescriptor.Kind(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5DF1D80()
{
  sub_1E5DF1EC4();
  if (v0 <= 0x3F)
  {
    sub_1E5DF4064();
    if (v1 <= 0x3F)
    {
      sub_1E64F0520(319);
      if (v2 <= 0x3F)
      {
        sub_1E5DF1EF4();
        if (v3 <= 0x3F)
        {
          sub_1E64F0650();
          if (v4 <= 0x3F)
          {
            sub_1E5DF1F70(319, &qword_1EE2D48F8);
            if (v5 <= 0x3F)
            {
              sub_1E5DF1F70(319, &qword_1EE2D4918);
              if (v6 <= 0x3F)
              {
                sub_1E64F0698();
                if (v7 <= 0x3F)
                {
                  sub_1E5DF211C();
                  if (v8 <= 0x3F)
                  {
                    sub_1E5DF20A4();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5DF1EC4()
{
  result = qword_1EE2D48C8;
  if (!qword_1EE2D48C8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48C8);
  }

  return result;
}

void sub_1E5DF1EF4()
{
  if (!qword_1EE2D72A0)
  {
    sub_1E65D72D8();
    sub_1E65D74E8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D72A0);
    }
  }
}

void sub_1E5DF1F70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for GalleryDescriptor()
{
  result = qword_1EE2D9CF8;
  if (!qword_1EE2D9CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF2010()
{
  result = sub_1E65D72D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E5DF20A4()
{
  if (!qword_1EE2D6908[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073648, &qword_1E6607560);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE2D6908);
    }
  }
}

ValueMetadata *sub_1E5DF211C()
{
  result = qword_1EE2D87A0;
  if (!qword_1EE2D87A0)
  {
    result = &type metadata for ViewPlanButtonPlacement;
    atomic_store(&type metadata for ViewPlanButtonPlacement, &qword_1EE2D87A0);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutActionsMenuLoadState()
{
  result = qword_1EE2D8288;
  if (!qword_1EE2D8288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF2198()
{
  sub_1E5DF2250();
  if (v0 <= 0x3F)
  {
    sub_1E5DF232C();
    if (v1 <= 0x3F)
    {
      sub_1E5DF2384();
      if (v2 <= 0x3F)
      {
        sub_1E5DF2434();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5DF2250()
{
  if (!qword_1EE2D4A18)
  {
    sub_1E65DE788();
    sub_1E5DF22E4(&qword_1EE2D6880, MEMORY[0x1E699CC08]);
    v0 = sub_1E65E4DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A18);
    }
  }
}

uint64_t sub_1E5DF22E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5DF232C()
{
  if (!qword_1EE2D4A10)
  {
    v0 = sub_1E65E4DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A10);
    }
  }
}

void sub_1E5DF2384()
{
  if (!qword_1EE2D4A20)
  {
    sub_1E5DF23E0();
    v0 = sub_1E65E4DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A20);
    }
  }
}

unint64_t sub_1E5DF23E0()
{
  result = qword_1EE2D68B0;
  if (!qword_1EE2D68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68B0);
  }

  return result;
}

void sub_1E5DF2434()
{
  if (!qword_1EE2D4A28)
  {
    sub_1E65DE508();
    sub_1E5DF22E4(&qword_1EE2D68D8, MEMORY[0x1E699CAD0]);
    v0 = sub_1E65E4DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A28);
    }
  }
}

uint64_t type metadata accessor for ArtworkDescriptor()
{
  result = qword_1EE2D9E88;
  if (!qword_1EE2D9E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF255C()
{
  type metadata accessor for ArtworkContent();
  if (v0 <= 0x3F)
  {
    sub_1E5DF2968();
    if (v1 <= 0x3F)
    {
      sub_1E5DF0194();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for ArtworkContent()
{
  result = qword_1EE2DAAA8;
  if (!qword_1EE2DAAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF265C()
{
  sub_1E5DF2754();
  if (v0 <= 0x3F)
  {
    sub_1E5DF270C();
    if (v1 <= 0x3F)
    {
      sub_1E5DF1EC4();
      if (v2 <= 0x3F)
      {
        sub_1E5DF2860();
        if (v3 <= 0x3F)
        {
          sub_1E5DF28E0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5DF270C()
{
  if (!qword_1EE2D6B90)
  {
    sub_1E5DF2784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6B90);
    }
  }
}

uint64_t sub_1E5DF2754()
{
  result = qword_1EE2D48E8;
  if (!qword_1EE2D48E8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48E8);
  }

  return result;
}

void sub_1E5DF2784()
{
  if (!qword_1EE2D6B80)
  {
    sub_1E65DB268();
    sub_1E5DF2818(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v0 = sub_1E65DC428();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6B80);
    }
  }
}

uint64_t sub_1E5DF2818(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5DF2860()
{
  if (!qword_1EE2D6D88)
  {
    sub_1E65DB268();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073548, &qword_1E65ED508);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6D88);
    }
  }
}

void sub_1E5DF28E0()
{
  if (!qword_1EE2D71C0)
  {
    sub_1E65D76F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075D78, &qword_1E65F38F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D71C0);
    }
  }
}

void sub_1E5DF2968()
{
  if (!qword_1EE2D4720)
  {
    sub_1E5DF29C4();
    v0 = sub_1E65E6278();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4720);
    }
  }
}

unint64_t sub_1E5DF29C4()
{
  result = qword_1EE2D9DC8;
  if (!qword_1EE2D9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DC8);
  }

  return result;
}

unint64_t sub_1E5DF2A1C()
{
  result = qword_1EE2D9DC0;
  if (!qword_1EE2D9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DC0);
  }

  return result;
}

uint64_t sub_1E5DF2A90()
{
  result = sub_1E65D76F8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContextMenu.Context(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5DF2B34(uint64_t a1)
{
  sub_1E5DF2BD8();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

void sub_1E5DF2BD8()
{
  if (!qword_1EE2D68F8)
  {
    type metadata accessor for WorkoutContextMenuLoadState();
    sub_1E5DF2D50(&qword_1EE2D81C0, type metadata accessor for WorkoutContextMenuLoadState);
    sub_1E5DF2D50(&qword_1EE2D81D8, type metadata accessor for WorkoutContextMenuLoadState);
    sub_1E5DF2D50(&qword_1EE2D81D0, type metadata accessor for WorkoutContextMenuLoadState);
    v0 = sub_1E65DE4B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D68F8);
    }
  }
}

uint64_t type metadata accessor for WorkoutContextMenuLoadState()
{
  result = qword_1EE2D81B0;
  if (!qword_1EE2D81B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF2D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DF2DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DF2E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DF2E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ItemContext()
{
  result = qword_1EE2DB708;
  if (!qword_1EE2DB708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF2F04()
{
  sub_1E5DF30F8();
  if (v0 <= 0x3F)
  {
    sub_1E5DF3128(319, &qword_1EE2D9DB8, type metadata accessor for BrowseItemContext);
    if (v1 <= 0x3F)
    {
      sub_1E5DF32C8();
      if (v2 <= 0x3F)
      {
        sub_1E5DF3128(319, &qword_1EE2D6B50, MEMORY[0x1E699E0B0]);
        if (v3 <= 0x3F)
        {
          sub_1E5DF3128(319, qword_1EE2D9AE8, type metadata accessor for LibraryItemContext);
          if (v4 <= 0x3F)
          {
            sub_1E5DF3128(319, &qword_1EE2D65C0, MEMORY[0x1E699D680]);
            if (v5 <= 0x3F)
            {
              sub_1E5DF3128(319, &qword_1EE2D6088, MEMORY[0x1E699EC90]);
              if (v6 <= 0x3F)
              {
                sub_1E5DF3128(319, qword_1EE2D86F0, type metadata accessor for ProgramDetailItemContext);
                if (v7 <= 0x3F)
                {
                  sub_1E5DF3128(319, &qword_1EE2D9B98, type metadata accessor for SearchItemContext);
                  if (v8 <= 0x3F)
                  {
                    sub_1E5DF3128(319, &qword_1EE2D6218, MEMORY[0x1E699F400]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_1E5DF30F8()
{
  result = qword_1EE2D8B60;
  if (!qword_1EE2D8B60)
  {
    result = &type metadata for AwardDetailItemContext;
    atomic_store(&type metadata for AwardDetailItemContext, &qword_1EE2D8B60);
  }

  return result;
}

void sub_1E5DF3128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for BrowseItemContext()
{
  result = qword_1EE2D9DA8;
  if (!qword_1EE2D9DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF31C0()
{
  result = sub_1E65DFF38();
  if (v1 <= 0x3F)
  {
    result = sub_1E5DEF56C();
    if (v2 <= 0x3F)
    {
      result = sub_1E65DF978();
      if (v3 <= 0x3F)
      {
        result = sub_1E5DF3298();
        if (v4 <= 0x3F)
        {
          result = sub_1E65DFDA8();
          if (v5 <= 0x3F)
          {
            result = sub_1E65DFC88();
            if (v6 <= 0x3F)
            {
              result = sub_1E65E0128();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5DF3298()
{
  result = qword_1EE2D65A8;
  if (!qword_1EE2D65A8)
  {
    result = MEMORY[0x1E699D700];
    atomic_store(MEMORY[0x1E699D700], &qword_1EE2D65A8);
  }

  return result;
}

ValueMetadata *sub_1E5DF32C8()
{
  result = qword_1EE2D9D08[0];
  if (!qword_1EE2D9D08[0])
  {
    result = &type metadata for FilterItemContext;
    atomic_store(&type metadata for FilterItemContext, qword_1EE2D9D08);
  }

  return result;
}

uint64_t type metadata accessor for LibraryItemContext()
{
  result = qword_1EE2D9AD8;
  if (!qword_1EE2D9AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3344()
{
  sub_1E5DEF56C();
  if (v0 <= 0x3F)
  {
    sub_1E5DF33B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF33B8()
{
  if (!qword_1EE2D67B8)
  {
    v0 = sub_1E65DF3B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D67B8);
    }
  }
}

uint64_t type metadata accessor for ProgramDetailItemContext()
{
  result = qword_1EE2D86E0;
  if (!qword_1EE2D86E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF344C()
{
  sub_1E5DEF56C();
  if (v0 <= 0x3F)
  {
    sub_1E5DF34C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF34C0()
{
  if (!qword_1EE2D6080)
  {
    v0 = sub_1E65E3578();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6080);
    }
  }
}

uint64_t type metadata accessor for SearchItemContext()
{
  result = qword_1EE2D9B88;
  if (!qword_1EE2D9B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3554()
{
  sub_1E5DF3600(319, &qword_1EE2D6B10, MEMORY[0x1E699EF00]);
  if (v0 <= 0x3F)
  {
    sub_1E5DF3600(319, &qword_1EE2D6B18, MEMORY[0x1E699EED0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF3600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ItemMetrics()
{
  result = qword_1EE2DB620;
  if (!qword_1EE2DB620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3698()
{
  sub_1E65D8C68();
  if (v0 <= 0x3F)
  {
    sub_1E5DF0194();
    if (v1 <= 0x3F)
    {
      sub_1E65D9908();
      if (v2 <= 0x3F)
      {
        sub_1E65D8F28();
        if (v3 <= 0x3F)
        {
          sub_1E65D9F88();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for SectionHeaderSubtitleDescriptor()
{
  result = qword_1EE2D7D58;
  if (!qword_1EE2D7D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF37C8()
{
  sub_1E5DF383C();
  if (v0 <= 0x3F)
  {
    sub_1E5DF38A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5DF383C()
{
  if (!qword_1EE2D7298)
  {
    sub_1E65D72D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D7298);
    }
  }
}

void sub_1E5DF38A4()
{
  if (!qword_1EE2D7278)
  {
    sub_1E65D72D8();
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D7278);
    }
  }
}

uint64_t type metadata accessor for SectionMetrics()
{
  result = qword_1EE2DA920;
  if (!qword_1EE2DA920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3948()
{
  sub_1E65D8F28();
  if (v0 <= 0x3F)
  {
    sub_1E5DF39E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5DF39E4()
{
  if (!qword_1EE2D4948)
  {
    v0 = sub_1E65E5B28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4948);
    }
  }
}

uint64_t type metadata accessor for ViewDescriptor()
{
  result = qword_1EE2DA688;
  if (!qword_1EE2DA688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5DF3AAC()
{
  sub_1E5DF1EC4();
  if (v0 <= 0x3F)
  {
    sub_1E5DF2754();
    if (v1 <= 0x3F)
    {
      sub_1E5DF3B98(319);
      if (v2 <= 0x3F)
      {
        sub_1E5DF4860();
        if (v3 <= 0x3F)
        {
          sub_1E647E838(319);
          if (v4 <= 0x3F)
          {
            sub_1E5DF4890();
            if (v5 <= 0x3F)
            {
              sub_1E5DF48C0();
              if (v6 <= 0x3F)
              {
                sub_1E647E994();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E5DF3B98(uint64_t a1)
{
  if (!qword_1EE2D48D0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E65DFAE8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D48D0);
    }
  }
}

uint64_t sub_1E5DF3DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DF3F80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5DF4010(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Resettable();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1E5DF4064()
{
  if (!qword_1EE2D6258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6258);
    }
  }
}

void sub_1E5DF4124()
{
  if (!qword_1EE2D4A78)
  {
    sub_1E65E1518();
    sub_1E65E1458();
    sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860]);
    sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A78);
    }
  }
}

unint64_t sub_1E5DF4210()
{
  result = qword_1EE2D9358[0];
  if (!qword_1EE2D9358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D9358);
  }

  return result;
}

unint64_t sub_1E5DF4264()
{
  result = qword_1EE2D9350;
  if (!qword_1EE2D9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9350);
  }

  return result;
}

void sub_1E5DF42B8()
{
  if (!qword_1EE2D4A30)
  {
    sub_1E5DF4334();
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A30);
    }
  }
}

unint64_t sub_1E5DF4334()
{
  result = qword_1EE2D6828;
  if (!qword_1EE2D6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6828);
  }

  return result;
}

void sub_1E5DF4388()
{
  if (!qword_1EE2D4A70)
  {
    sub_1E65D8418();
    sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A70);
    }
  }
}

unint64_t sub_1E5DF4448()
{
  result = qword_1EE2DB310;
  if (!qword_1EE2DB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB310);
  }

  return result;
}

void sub_1E5DF449C()
{
  if (!qword_1EE2D4B18)
  {
    sub_1E65D7848();
    sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770]);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4B18);
    }
  }
}

void sub_1E5DF4530(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_1E5FED46C(a5, a3, a4);
    v9 = sub_1E65E4CB8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E5DF45CC()
{
  if (!qword_1EE2D4A38)
  {
    sub_1E65DBAB8();
    sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A38);
    }
  }
}

void sub_1E5DF467C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1E5DF46C8()
{
  result = qword_1EE2D9690;
  if (!qword_1EE2D9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9690);
  }

  return result;
}

unint64_t sub_1E5DF4720()
{
  result = qword_1EE2D9688;
  if (!qword_1EE2D9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9688);
  }

  return result;
}

uint64_t sub_1E5DF4774()
{
  sub_1E5DF47EC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1E5DF47EC()
{
  if (!qword_1EE2D8AB0)
  {
    type metadata accessor for RemoteParticipantScope(255);
    sub_1E65DA2A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D8AB0);
    }
  }
}

uint64_t sub_1E5DF4860()
{
  result = qword_1EE2D48E0;
  if (!qword_1EE2D48E0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48E0);
  }

  return result;
}

uint64_t sub_1E5DF4890()
{
  result = qword_1EE2D48D8;
  if (!qword_1EE2D48D8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2D48D8);
  }

  return result;
}

void sub_1E5DF48C0()
{
  if (!qword_1EE2D6518)
  {
    sub_1E65E1458();
    sub_1E65E1518();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D6518);
    }
  }
}

uint64_t sub_1E5DF4934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DF4A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DF4B74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E5DF4BD4()
{
  if (!qword_1EE2D4A60)
  {
    sub_1E65D9658();
    sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A60);
    }
  }
}

uint64_t sub_1E5DF4C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5DF4CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5DF4D5C()
{
  sub_1E65D7F18();
  v0 = 30;
  if (v6 <= 1u)
  {
    if (!v6)
    {
      v0 = 2;
    }

    goto LABEL_6;
  }

  if (v6 == 3)
  {
LABEL_6:

    v1 = type metadata accessor for RouteDetourPresenter(0);
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    v4 = swift_allocObject();
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    type metadata accessor for RouteDetourPresenter.State(0);
    swift_storeEnumTagMultiPayload();
    *(v4 + 16) = v0;
    return v4;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E5DF4E8C()
{
  result = type metadata accessor for RouteDetourPresenter.State(319);
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

double static AccountService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  *(&v54 + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B260, &unk_1E660BBF8);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v57 + 8) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B270, &qword_1E660BC08);
  sub_1E65D7F18();
  sub_1E65D7F18();
  v58 = v43;
  sub_1E5DF53D0(v53, &v43);
  v2 = swift_allocObject();
  v3 = v50;
  *(v2 + 112) = v49;
  *(v2 + 128) = v3;
  *(v2 + 144) = v51;
  *(v2 + 160) = v52;
  v4 = v46;
  *(v2 + 48) = v45;
  *(v2 + 64) = v4;
  v5 = v48;
  *(v2 + 80) = v47;
  *(v2 + 96) = v5;
  v6 = v44;
  *(v2 + 16) = v43;
  *(v2 + 32) = v6;
  sub_1E5DF53D0(v53, &v43);
  v7 = swift_allocObject();
  v8 = v50;
  *(v7 + 112) = v49;
  *(v7 + 128) = v8;
  *(v7 + 144) = v51;
  *(v7 + 160) = v52;
  v9 = v46;
  *(v7 + 48) = v45;
  *(v7 + 64) = v9;
  v10 = v48;
  *(v7 + 80) = v47;
  *(v7 + 96) = v10;
  v11 = v44;
  *(v7 + 16) = v43;
  *(v7 + 32) = v11;
  sub_1E5DF53D0(v53, &v43);
  v12 = swift_allocObject();
  v13 = v50;
  *(v12 + 112) = v49;
  *(v12 + 128) = v13;
  *(v12 + 144) = v51;
  *(v12 + 160) = v52;
  v14 = v46;
  *(v12 + 48) = v45;
  *(v12 + 64) = v14;
  v15 = v48;
  *(v12 + 80) = v47;
  *(v12 + 96) = v15;
  v16 = v44;
  *(v12 + 16) = v43;
  *(v12 + 32) = v16;
  sub_1E5DF53D0(v53, &v43);
  v17 = swift_allocObject();
  v18 = v50;
  *(v17 + 112) = v49;
  *(v17 + 128) = v18;
  *(v17 + 144) = v51;
  *(v17 + 160) = v52;
  v19 = v46;
  *(v17 + 48) = v45;
  *(v17 + 64) = v19;
  v20 = v48;
  *(v17 + 80) = v47;
  *(v17 + 96) = v20;
  v21 = v44;
  *(v17 + 16) = v43;
  *(v17 + 32) = v21;
  sub_1E5DF53D0(v53, &v43);
  v22 = swift_allocObject();
  v23 = v50;
  *(v22 + 112) = v49;
  *(v22 + 128) = v23;
  *(v22 + 144) = v51;
  *(v22 + 160) = v52;
  v24 = v46;
  *(v22 + 48) = v45;
  *(v22 + 64) = v24;
  v25 = v48;
  *(v22 + 80) = v47;
  *(v22 + 96) = v25;
  v26 = v44;
  *(v22 + 16) = v43;
  *(v22 + 32) = v26;
  sub_1E5DF53D0(v53, &v43);
  v27 = swift_allocObject();
  v28 = v50;
  *(v27 + 112) = v49;
  *(v27 + 128) = v28;
  *(v27 + 144) = v51;
  *(v27 + 160) = v52;
  v29 = v46;
  *(v27 + 48) = v45;
  *(v27 + 64) = v29;
  v30 = v48;
  *(v27 + 80) = v47;
  *(v27 + 96) = v30;
  v31 = v44;
  *(v27 + 16) = v43;
  *(v27 + 32) = v31;
  sub_1E5DF53D0(v53, &v43);
  v32 = swift_allocObject();
  v33 = v50;
  *(v32 + 112) = v49;
  *(v32 + 128) = v33;
  *(v32 + 144) = v51;
  *(v32 + 160) = v52;
  v34 = v46;
  *(v32 + 48) = v45;
  *(v32 + 64) = v34;
  v35 = v48;
  *(v32 + 80) = v47;
  *(v32 + 96) = v35;
  v36 = v44;
  *(v32 + 16) = v43;
  *(v32 + 32) = v36;
  v37 = swift_allocObject();
  v38 = v57[2];
  *(v37 + 112) = v57[1];
  *(v37 + 128) = v38;
  *(v37 + 144) = v57[3];
  *(v37 + 160) = v58;
  v39 = v55;
  *(v37 + 48) = v54;
  *(v37 + 64) = v39;
  v40 = v57[0];
  *(v37 + 80) = v56;
  *(v37 + 96) = v40;
  result = *v53;
  v42 = v53[1];
  *(v37 + 16) = v53[0];
  *(v37 + 32) = v42;
  *a1 = &unk_1E660BC18;
  a1[1] = v2;
  a1[2] = &unk_1E660BC28;
  a1[3] = v7;
  a1[4] = &unk_1E660BC38;
  a1[5] = v12;
  a1[6] = &unk_1E660BC48;
  a1[7] = v17;
  a1[8] = &unk_1E660BC58;
  a1[9] = v22;
  a1[10] = &unk_1E660BC68;
  a1[11] = v27;
  a1[12] = &unk_1E660BC78;
  a1[13] = v32;
  a1[14] = &unk_1E660BC88;
  a1[15] = v37;
  return result;
}

uint64_t static AppStateService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveAppStateService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v4;
  *a1 = &unk_1E660ABC0;
  a1[1] = v2;
  a1[2] = &unk_1E660ABD0;
  a1[3] = v2;
  a1[4] = &unk_1E660ABE0;
  a1[5] = v2;
  a1[6] = &unk_1E660ABF0;
  a1[7] = v2;
  a1[8] = &unk_1E660AC00;
  a1[9] = v2;
  a1[10] = &unk_1E660AC10;
  a1[11] = v2;
  a1[12] = &unk_1E660AC20;
  a1[13] = v2;
  return swift_retain_n();
}

uint64_t static ArchivedSessionService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC78, &unk_1E6609370);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveArchivedSessionService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E6609388;
  a1[1] = v2;
  a1[2] = &unk_1E6609398;
  a1[3] = v2;
  a1[4] = &unk_1E66093A8;
  a1[5] = v2;
  a1[6] = &unk_1E66093B8;
  a1[7] = v2;
  a1[8] = &unk_1E66093C8;
  a1[9] = v2;
  a1[10] = &unk_1E66093D8;
  a1[11] = v2;
  a1[12] = &unk_1E66093E8;
  a1[13] = v2;
  a1[14] = &unk_1E66093F8;
  a1[15] = v2;
  return swift_retain_n();
}

uint64_t static BookmarkService.live(with:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for LiveBookmarkService();
  swift_allocObject();

  v3 = sub_1E5DF58D4(v2);

  *a1 = &unk_1E660C7C8;
  a1[1] = v3;
  a1[2] = &unk_1E660C7D8;
  a1[3] = v3;
  a1[4] = &unk_1E660C7E8;
  a1[5] = v3;
  a1[6] = &unk_1E660C7F8;
  a1[7] = v3;
  a1[8] = &unk_1E660C808;
  a1[9] = v3;
  a1[10] = &unk_1E660C818;
  a1[11] = v3;
  a1[12] = &unk_1E660C828;
  a1[13] = v3;
  a1[14] = &unk_1E660C838;
  a1[15] = v3;
  a1[16] = &unk_1E660C848;
  a1[17] = v3;
  a1[18] = &unk_1E660C858;
  a1[19] = v3;
  a1[20] = &unk_1E660C868;
  a1[21] = v3;
  a1[22] = &unk_1E660C878;
  a1[23] = v3;
  a1[24] = &unk_1E660C888;
  a1[25] = v3;
  a1[26] = &unk_1E660C898;
  a1[27] = v3;
  a1[28] = &unk_1E660C8A8;
  a1[29] = v3;
  a1[30] = &unk_1E660C8B8;
  a1[31] = v3;
  a1[32] = &unk_1E660C8C8;
  a1[33] = v3;
  a1[34] = &unk_1E660C8D8;
  a1[35] = v3;
  return swift_retain_n();
}

uint64_t sub_1E5DF58D4(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v2 + 152) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFC8, &unk_1E660AB90);
  sub_1E65D7F18();
  sub_1E6557D7C(v5, v2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v2 + 160) = v5[0];
  sub_1E65D7F18();
  *(v2 + 176) = v5[0];
  return v2;
}

uint64_t sub_1E5DF599C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static CatalogService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD00, &unk_1E660EBA0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBD8, &qword_1E660EBB0);
  sub_1E65D7F18();
  type metadata accessor for LiveCatalogService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = *(&v4[2] + 8);
  sub_1E5DF599C(v4, v2 + 168);
  *a1 = &unk_1E660EBC0;
  a1[1] = v2;
  a1[2] = &unk_1E660EBD0;
  a1[3] = v2;
  a1[4] = &unk_1E660EBE0;
  a1[5] = v2;
  a1[6] = &unk_1E660EBF0;
  a1[7] = v2;
  a1[8] = &unk_1E660EC00;
  a1[9] = v2;
  a1[10] = &unk_1E660EC10;
  a1[11] = v2;
  a1[12] = &unk_1E660EC20;
  a1[13] = v2;
  a1[14] = &unk_1E660EC30;
  a1[15] = v2;
  a1[16] = &unk_1E660EC40;
  a1[17] = v2;
  a1[18] = &unk_1E660EC50;
  a1[19] = v2;
  a1[20] = &unk_1E660EC60;
  a1[21] = v2;
  a1[22] = &unk_1E660EC70;
  a1[23] = v2;
  a1[24] = &unk_1E660EC80;
  a1[25] = v2;
  a1[26] = &unk_1E660EC90;
  a1[27] = v2;
  a1[28] = &unk_1E660ECA0;
  a1[29] = v2;
  a1[30] = &unk_1E660ECB0;
  a1[31] = v2;
  a1[32] = &unk_1E660ECC0;
  a1[33] = v2;
  a1[34] = &unk_1E660ECD0;
  a1[35] = v2;
  a1[36] = &unk_1E660ECE0;
  a1[37] = v2;
  a1[38] = &unk_1E660ECF0;
  a1[39] = v2;
  a1[40] = &unk_1E660ED00;
  a1[41] = v2;
  a1[42] = &unk_1E660ED10;
  a1[43] = v2;
  a1[44] = &unk_1E660ED20;
  a1[45] = v2;
  a1[46] = &unk_1E660ED30;
  a1[47] = v2;
  a1[48] = &unk_1E660ED40;
  a1[49] = v2;
  a1[50] = &unk_1E660ED50;
  a1[51] = v2;
  a1[52] = &unk_1E660ED60;
  a1[53] = v2;
  a1[54] = &unk_1E660ED70;
  a1[55] = v2;
  a1[56] = &unk_1E660ED80;
  a1[57] = v2;
  a1[58] = &unk_1E660ED90;
  a1[59] = v2;
  a1[60] = &unk_1E660EDA0;
  a1[61] = v2;
  a1[62] = &unk_1E660EDB0;
  a1[63] = v2;
  a1[64] = &unk_1E660EDC0;
  a1[65] = v2;
  a1[66] = &unk_1E660EDD0;
  a1[67] = v2;
  a1[68] = &unk_1E660EDE0;
  a1[69] = v2;
  return swift_retain_n();
}

uint64_t static ConfigurationService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE0, &qword_1E660A720);
  sub_1E65D7F18();
  type metadata accessor for LiveConfigurationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v4, v2 + 112);
  *a1 = &unk_1E660A730;
  a1[1] = v2;
  a1[2] = &unk_1E660A740;
  a1[3] = v2;
}

uint64_t static ContentAvailabilityService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8D0, &unk_1E660D6C0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8D8, &qword_1E660D6D0);
  sub_1E65D7F18();
  type metadata accessor for LiveContentAvailabilityService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = *(&v4[2] + 8);
  sub_1E5DF599C(v4, v2 + 168);
  *a1 = &unk_1E660D6E0;
  a1[1] = v2;
  a1[2] = &unk_1E660D6F0;
  a1[3] = v2;
  a1[4] = &unk_1E660D700;
  a1[5] = v2;
  a1[6] = &unk_1E660D710;
  a1[7] = v2;
  a1[8] = &unk_1E660D720;
  a1[9] = v2;
  a1[10] = &unk_1E660D730;
  a1[11] = v2;
  a1[12] = &unk_1E660D740;
  a1[13] = v2;
  a1[14] = &unk_1E660D750;
  a1[15] = v2;
  a1[16] = &unk_1E660D760;
  a1[17] = v2;
  a1[18] = &unk_1E660D770;
  a1[19] = v2;
  a1[20] = &unk_1E660D780;
  a1[21] = v2;
  return swift_retain_n();
}

uint64_t static EngagementService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782B8, &qword_1E660CD20);
  sub_1E65D7F18();
  type metadata accessor for LiveEngagementService();
  swift_allocObject();
  v2 = sub_1E5DF61E4(v4[5], v4);
  swift_unknownObjectRelease();
  *a1 = &unk_1E660CD30;
  a1[1] = v2;
  a1[2] = &unk_1E660CD40;
  a1[3] = v2;
  a1[4] = &unk_1E660CD50;
  a1[5] = v2;
  a1[6] = &unk_1E660CD60;
  a1[7] = v2;
  a1[8] = &unk_1E660CD70;
  a1[9] = v2;
  a1[10] = &unk_1E660CD80;
  a1[11] = v2;
  a1[12] = &unk_1E660CD90;
  a1[13] = v2;
  a1[14] = &unk_1E660CDA0;
  a1[15] = v2;
  a1[16] = &unk_1E660CDB0;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E5DF61E4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1E65DDE68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25[-1] - v14;
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  sub_1E5DF650C(a2, v3 + 120);
  (*(v7 + 104))(v10, *MEMORY[0x1E69CAB78], v6);
  LOBYTE(v25[0]) = 0;
  swift_unknownObjectRetain();
  sub_1E65DDC88();
  sub_1E65DDC48();
  LODWORD(v10) = LOBYTE(v25[0]);
  v16 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  if (v10 == 1)
  {
    v17 = swift_allocObject();
    v17[5] = sub_1E5DFC17C();
    v17[6] = &off_1F5FCBDA0;
    v17[2] = v16;
    v18 = &off_1F5FCBE78;
    v19 = &type metadata for TestEngagementMessageFetcher;
    v16 = v17;
  }

  else
  {
    v19 = sub_1E5DFC17C();
    v18 = &off_1F5FCBDA0;
  }

  v25[3] = v19;
  v25[4] = v18;
  v25[0] = v16;
  type metadata accessor for EngagementPlacementRegistry();
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  v21 = MEMORY[0x1E69E7CC0];
  v20[22] = sub_1E5DFC1EC(MEMORY[0x1E69E7CC0]);
  v20[23] = sub_1E5E09FFC(v21);
  sub_1E5DF650C(v25, (v20 + 14));
  v20[19] = 0x7373656E746966;
  v20[20] = 0xE700000000000000;
  v22 = sub_1E659C210(v21);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v12 + 8))(v15, v11);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v20[21] = v22;
  *(v3 + 160) = v20;
  return v3;
}

uint64_t sub_1E5DF64D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5DF650C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static LocalizationService.live(with:)@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC08, &unk_1E6608E80);
  sub_1E65D7F18();
  v2 = type metadata accessor for LiveLocalizationService();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_dateComponentsFormatter;
  *(v5 + v6) = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  v7 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_numberFormatter;
  *(v5 + v7) = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1E5DF650C(v9, v5 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer);
  sub_1E65D77A8();
  __swift_destroy_boxed_opaque_existential_1(v9);
  *a1 = sub_1E651E19C;
  a1[1] = v5;
  a1[2] = sub_1E651E1A4;
  a1[3] = v5;
  a1[4] = sub_1E651E32C;
  a1[5] = v5;
  return swift_retain_n();
}

uint64_t type metadata accessor for LiveLocalizationService()
{
  result = qword_1EE2D55B8;
  if (!qword_1EE2D55B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5DF66E8()
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

double static MarketingService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B960, &qword_1E660DC18);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072360, &qword_1E65EAB90);
  sub_1E65D7F18();
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B970, &unk_1E6603F00);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B978, &qword_1E660DC20);
  sub_1E65D7F18();
  *v59 = v58;
  *&v59[8] = v45;
  BYTE8(v64) = v57;
  sub_1E65A44A8(v59, &v45);
  v2 = swift_allocObject();
  v3 = v54;
  v2[9] = v53;
  v2[10] = v3;
  v4 = v56;
  v2[11] = v55;
  v2[12] = v4;
  v5 = v50;
  v2[5] = v49;
  v2[6] = v5;
  v6 = v52;
  v2[7] = v51;
  v2[8] = v6;
  v7 = v46;
  v2[1] = v45;
  v2[2] = v7;
  v8 = v48;
  v2[3] = v47;
  v2[4] = v8;
  sub_1E65A44A8(v59, &v45);
  v9 = swift_allocObject();
  v10 = v54;
  v9[9] = v53;
  v9[10] = v10;
  v11 = v56;
  v9[11] = v55;
  v9[12] = v11;
  v12 = v50;
  v9[5] = v49;
  v9[6] = v12;
  v13 = v52;
  v9[7] = v51;
  v9[8] = v13;
  v14 = v46;
  v9[1] = v45;
  v9[2] = v14;
  v15 = v48;
  v9[3] = v47;
  v9[4] = v15;
  sub_1E65A44A8(v59, &v45);
  v16 = swift_allocObject();
  v17 = v54;
  v16[9] = v53;
  v16[10] = v17;
  v18 = v56;
  v16[11] = v55;
  v16[12] = v18;
  v19 = v50;
  v16[5] = v49;
  v16[6] = v19;
  v20 = v52;
  v16[7] = v51;
  v16[8] = v20;
  v21 = v46;
  v16[1] = v45;
  v16[2] = v21;
  v22 = v48;
  v16[3] = v47;
  v16[4] = v22;
  sub_1E65A44A8(v59, &v45);
  v23 = swift_allocObject();
  v24 = v54;
  v23[9] = v53;
  v23[10] = v24;
  v25 = v56;
  v23[11] = v55;
  v23[12] = v25;
  v26 = v50;
  v23[5] = v49;
  v23[6] = v26;
  v27 = v52;
  v23[7] = v51;
  v23[8] = v27;
  v28 = v46;
  v23[1] = v45;
  v23[2] = v28;
  v29 = v48;
  v23[3] = v47;
  v23[4] = v29;
  sub_1E65A44A8(v59, &v45);
  v30 = swift_allocObject();
  v31 = v54;
  v30[9] = v53;
  v30[10] = v31;
  v32 = v56;
  v30[11] = v55;
  v30[12] = v32;
  v33 = v50;
  v30[5] = v49;
  v30[6] = v33;
  v34 = v52;
  v30[7] = v51;
  v30[8] = v34;
  v35 = v46;
  v30[1] = v45;
  v30[2] = v35;
  v36 = v48;
  v30[3] = v47;
  v30[4] = v36;
  v37 = swift_allocObject();
  v38 = v67;
  v37[9] = v66;
  v37[10] = v38;
  v39 = v69;
  v37[11] = v68;
  v37[12] = v39;
  v40 = v63;
  v37[5] = v62;
  v37[6] = v40;
  v41 = v65;
  v37[7] = v64;
  v37[8] = v41;
  v42 = *&v59[16];
  v37[1] = *v59;
  v37[2] = v42;
  result = *&v60;
  v44 = v61;
  v37[3] = v60;
  v37[4] = v44;
  *a1 = &unk_1E660DC30;
  a1[1] = v2;
  a1[2] = &unk_1E660DC40;
  a1[3] = v9;
  a1[4] = &unk_1E660DC50;
  a1[5] = v16;
  a1[6] = &unk_1E660DC60;
  a1[7] = v23;
  a1[8] = &unk_1E660DC70;
  a1[9] = v30;
  a1[10] = &unk_1E660DC80;
  a1[11] = v37;
  return result;
}

uint64_t sub_1E5DF6B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DF6BC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5DF6CE4()
{
  result = qword_1EE2D7500;
  if (!qword_1EE2D7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7500);
  }

  return result;
}

unint64_t sub_1E5DF6D3C()
{
  result = qword_1EE2D7518;
  if (!qword_1EE2D7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7518);
  }

  return result;
}

void sub_1E5DF6D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1E5DF6E00()
{
  result = qword_1EE2D7520;
  if (!qword_1EE2D7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7520);
  }

  return result;
}

uint64_t sub_1E5DF6E84()
{
  v0 = sub_1E65E3B68();
  __swift_allocate_value_buffer(v0, qword_1EE2EA2A0);
  __swift_project_value_buffer(v0, qword_1EE2EA2A0);
  return sub_1E65E3B58();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static AwardsService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB38, &unk_1E660E5A0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveAwardsService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E660E5B8;
  a1[1] = v2;
  a1[2] = &unk_1E660E5C8;
  a1[3] = v2;
  a1[4] = &unk_1E660E5D8;
  a1[5] = v2;
  a1[6] = &unk_1E660E5E8;
  a1[7] = v2;
  a1[8] = &unk_1E660E5F8;
  a1[9] = v2;
  a1[10] = &unk_1E660E608;
  a1[11] = v2;
  a1[12] = &unk_1E660E618;
  a1[13] = v2;
  a1[14] = &unk_1E660E628;
  a1[15] = v2;
  return swift_retain_n();
}

uint64_t static AppEnvironment.live(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  v4 = sub_1E65DAE28();
  v5 = type metadata accessor for AppEnvironment();
  static AccountService.live(with:)((a2 + v5[6]));
  static AppStateService.live(with:)((a2 + v5[7]));
  static ArchivedSessionService.live(with:)((a2 + v5[8]));
  static AssetService.live(with:)((a2 + v5[9]));
  static AwardsService.live(with:)((a2 + v5[10]));
  static BookmarkService.live(with:)((a2 + v5[11]));
  static CatalogService.live(with:)((a2 + v5[12]));
  static ConfigurationService.live(with:)((a2 + v5[13]));
  static ContentAvailabilityService.live(with:)((a2 + v5[14]));
  static EngagementService.live(with:)((a2 + v5[15]));
  static HealthDataService.live(with:)((a2 + v5[16]));
  static InteropService.default(with:)(a1, (a2 + v5[17]));
  static LocalizationService.live(with:)((a2 + v5[18]));
  static MarketingService.live(with:)((a2 + v5[19]));
  static MetricService.live(with:)((a2 + v5[20]));
  static PersonalizationService.live(with:)((a2 + v5[21]));
  static PlayerService.default(with:)(a1, (a2 + v5[22]));
  static PrivacyPreferenceService.live(with:)((a2 + v5[23]));
  static RecommendationService.live(with:)((a2 + v5[24]));
  static RemoteBrowsingService.live(with:)((a2 + v5[25]));
  static SearchService.live(with:)((a2 + v5[26]));
  static ServiceSubscriptionService.live(with:)((a2 + v5[27]));
  static SessionService.live(with:)((a2 + v5[28]));
  static SharePlayService.live(with:)((a2 + v5[29]));
  static SiriService.live(with:)((a2 + v5[30]));
  static SyncService.live(with:)((a2 + v5[31]));
  type metadata accessor for LiveToastService();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v6 + 112) = sub_1E65E17A8();
  v7 = v5[33];
  swift_retain_n();
  static UpNextQueueService.live(with:)((a2 + v7));
  v8 = v5[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077620, &qword_1E65F3398);
  sub_1E65D7F18();
  v9 = type metadata accessor for WindowSceneObserver();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = WindowSceneObserver.init()();
  result = static WorkoutPlanService.live(with:)((a2 + v5[36]));
  *a2 = v15;
  *(a2 + 8) = v4;
  v14 = (a2 + v5[32]);
  *v14 = &unk_1E65EC570;
  v14[1] = v6;
  v14[2] = &unk_1E65EC580;
  v14[3] = v6;
  v14[4] = &unk_1E65EC590;
  v14[5] = v6;
  *(a2 + v5[35]) = v12;
  return result;
}

uint64_t sub_1E5DF73BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5DF7474(a1, v5);
}

uint64_t sub_1E5DF7474(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA880;

  return v7(a1);
}

void sub_1E5DF756C()
{
  v1 = v0;
  v81[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for JournalRotator();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v77 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E65D74E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - v12;
  v79 = objc_opt_self();
  v14 = [v79 defaultManager];
  v15 = v0 + *(v2 + 20);
  v16 = sub_1E65D7448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078150, &qword_1E65FB6D8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E65EA670;
  v18 = *MEMORY[0x1E695DB78];
  *(v17 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v19 = v18;
  v20 = sub_1E65E5EF8();

  v81[0] = 0;
  v21 = [v14 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:v20 options:7 error:v81];

  v22 = v81[0];
  v74 = v5;
  if (v21)
  {
    v23 = sub_1E65E5F18();
    v24 = v22;

    v77 = *(v23 + 16);
    if (v77)
    {
      v25 = 0;
      v75 = (v6 + 32);
      v76 = v6 + 16;
      v72 = (v6 + 8);
      v26 = MEMORY[0x1E69E7CC0];
      v27 = v74;
      v73 = v6;
      while (v25 < *(v23 + 16))
      {
        v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v29 = *(v6 + 72);
        (*(v6 + 16))(v13, v23 + v28 + v29 * v25, v27);
        sub_1E65D7438();
        v30 = sub_1E65E5E28();

        if (v30)
        {
          (*v72)(v13, v27);
        }

        else
        {
          v31 = *v75;
          (*v75)(v78, v13, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81[0] = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E5DFE56C(0, v26[2] + 1, 1);
            v26 = v81[0];
          }

          v34 = v26[2];
          v33 = v26[3];
          if (v34 >= v33 >> 1)
          {
            sub_1E5DFE56C(v33 > 1, v34 + 1, 1);
            v26 = v81[0];
          }

          v26[2] = v34 + 1;
          v35 = v26 + v28 + v34 * v29;
          v27 = v74;
          v31(v35, v78, v74);
          v6 = v73;
        }

        if (v77 == ++v25)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
      v27 = v74;
LABEL_18:
      v77 = v26;

      if (qword_1EE2D7790 == -1)
      {
        goto LABEL_19;
      }
    }

    swift_once();
LABEL_19:
    v50 = sub_1E65E3B68();
    __swift_project_value_buffer(v50, qword_1EE2EA2A0);
    v51 = v77;

    v52 = sub_1E65E3B48();
    v53 = sub_1E65E6338();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v81[0] = v55;
      *v54 = 136315138;
      v56 = MEMORY[0x1E694D940](v51, v27);
      v58 = sub_1E5DFD4B0(v56, v57, v81);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1E5DE9000, v52, v53, "Sanitizing non-Journals: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1E694F1C0](v55, -1, -1);
      MEMORY[0x1E694F1C0](v54, -1, -1);
    }

    v59 = *(v51 + 16);
    if (v59)
    {
      v61 = *(v6 + 16);
      v60 = v6 + 16;
      v78 = v61;
      v62 = v51 + ((*(v60 + 64) + 32) & ~*(v60 + 64));
      v63 = *(v60 + 56);
      (v61)(v80, v62, v27);
      while (1)
      {
        v66 = [v79 defaultManager];
        sub_1E65D7498();
        v67 = sub_1E65E5C48();

        v81[0] = 0;
        v68 = [v66 removeItemAtPath:v67 error:v81];

        if (v68)
        {
          v64 = v81[0];
        }

        else
        {
          v69 = v81[0];
          v70 = sub_1E65D73B8();

          swift_willThrow();
        }

        v65 = v80;
        (*(v60 - 8))(v80, v27);
        v62 += v63;
        if (!--v59)
        {
          break;
        }

        (v78)(v65, v62, v27);
      }
    }

    goto LABEL_30;
  }

  v36 = v81[0];
  v37 = sub_1E65D73B8();

  swift_willThrow();
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v38 = sub_1E65E3B68();
  __swift_project_value_buffer(v38, qword_1EE2EA2A0);
  sub_1E5E057B0(v1, v77);
  v39 = sub_1E65E3B48();
  v40 = sub_1E65E6328();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = v77;
    v43 = v41;
    v44 = swift_slowAlloc();
    v81[0] = v44;
    *v43 = 136315138;
    v45 = *(v2 + 20);
    sub_1E5DFA51C(&qword_1EE2D71E0, MEMORY[0x1E6968FB0]);
    v46 = sub_1E65E6BC8();
    v48 = v47;
    sub_1E5E05BCC(v42);
    v49 = sub_1E5DFD4B0(v46, v48, v81);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_1E5DE9000, v39, v40, "Unable to list contents of %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1E694F1C0](v44, -1, -1);
    MEMORY[0x1E694F1C0](v43, -1, -1);
  }

  else
  {

    sub_1E5E05BCC(v77);
  }

LABEL_30:
  v71 = *MEMORY[0x1E69E9840];
}

void *sub_1E5DF7D84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B280, &unk_1E660AAC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1E5DF7E0C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v54[4] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v48 - v7;
  v9 = sub_1E65D76A8();
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v48[0] = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v50 = v48 - v14;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  sub_1E65D7498();
  v17 = sub_1E65E5C48();

  v54[0] = 0;
  v18 = [v16 attributesOfItemAtPath:v17 error:v54];

  v19 = v54[0];
  if (!v18)
  {
    v31 = v54[0];
LABEL_11:
    sub_1E65D73B8();

    swift_willThrow();
    goto LABEL_12;
  }

  v48[1] = v2;
  type metadata accessor for FileAttributeKey(0);
  sub_1E5DFA51C(&qword_1EE2D45F8, type metadata accessor for FileAttributeKey);
  v20 = sub_1E65E5B08();
  v21 = v19;

  v22 = [v15 defaultManager];
  sub_1E65D7498();
  v23 = sub_1E65E5C48();

  v54[0] = 0;
  v24 = [v22 attributesOfItemAtPath:v23 error:v54];

  v25 = v54[0];
  if (!v24)
  {
    v31 = v54[0];

    goto LABEL_11;
  }

  v26 = sub_1E65E5B08();
  v27 = v25;

  if (!*(v20 + 16) || (v28 = *MEMORY[0x1E696A350], v29 = sub_1E5E0E040(*MEMORY[0x1E696A350]), (v30 & 1) == 0))
  {

    (*(v52 + 56))(v8, 1, 1, v51);
    goto LABEL_9;
  }

  sub_1E5DFA11C(*(v20 + 56) + 32 * v29, v54);

  v31 = v51;
  v32 = swift_dynamicCast();
  v33 = v52;
  v34 = *(v52 + 56);
  v34(v8, v32 ^ 1u, 1, v31);
  v35 = *(v33 + 48);
  if (v35(v8, 1, v31) == 1)
  {

LABEL_9:
    sub_1E62E3040(v8);
    LOBYTE(v31) = 0;
    goto LABEL_12;
  }

  v38 = v8;
  v39 = *(v33 + 32);
  v39(v50, v38, v31);
  if (*(v26 + 16) && (v40 = sub_1E5E0E040(v28), v31 = v51, (v41 & 1) != 0))
  {
    sub_1E5DFA11C(*(v26 + 56) + 32 * v40, v54);

    v42 = v49;
    v43 = swift_dynamicCast();
    v34(v42, v43 ^ 1u, 1, v31);
    if (v35(v42, 1, v31) != 1)
    {
      v44 = v48[0];
      v39(v48[0], v42, v31);
      v45 = v50;
      v46 = v31;
      LOBYTE(v31) = sub_1E65D7668();
      v47 = *(v52 + 8);
      v47(v44, v46);
      v47(v45, v46);
      goto LABEL_12;
    }

    (*(v52 + 8))(v50, v31);
  }

  else
  {

    (*(v52 + 8))(v50, v31);
    v42 = v49;
    v34(v49, 1, 1, v31);
  }

  sub_1E62E3040(v42);
  LOBYTE(v31) = 1;
LABEL_12:
  v36 = *MEMORY[0x1E69E9840];
  return v31 & 1;
}

uint64_t sub_1E5DF83E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v184 = a3;
  v183 = a1;
  v6 = sub_1E65E07B8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v182 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v179 = &v172 - v11;
  v12 = sub_1E65DF6C8();
  v177 = *(v12 - 8);
  v178 = v12;
  v13 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DF658();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v175 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for BrowsingIdentity(0);
  v18 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v20 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65D7848();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65DE688();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = *a2;
  v180 = a2[1];
  v181 = v28;
  (*(v29 + 104))(&v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E699CBC0]);
  sub_1E65DE658();
  v30 = type metadata accessor for AppState();
  v31 = a4 + v30[5];
  sub_1E65DEEC8();
  swift_storeEnumTagMultiPayload();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E5E05C28(v31, v31 + *(v32 + 28), MEMORY[0x1E699CE20]);
  v33 = v30[7];
  v174 = v24;
  sub_1E65D77C8();
  sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770]);
  sub_1E65E4C48();
  v34 = v30[8];
  sub_1E65D7EB8();
  sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0]);
  sub_1E65E4CA8();
  *(a4 + v30[9]) = 257;
  v35 = v30[10];
  v186 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  sub_1E5FED46C(&qword_1EE2D4700, &qword_1ED074678, &qword_1E660D860);
  sub_1E65E4C48();
  v36 = (a4 + v30[11]);
  v37 = MEMORY[0x1E69E7CC0];
  v38 = sub_1E5E05C90(MEMORY[0x1E69E7CC0]);
  *v36 = v38;
  v36[1] = v38;
  v39 = v30[12];
  sub_1E65E1618();
  sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8]);

  sub_1E65E4CA8();
  v40 = v30[13];
  sub_1E65DBAB8();
  sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0]);
  sub_1E65E4D58();
  v41 = (a4 + v30[14]);
  v42 = sub_1E5E05D8C(v37);
  *v41 = v42;
  v41[1] = v42;
  v43 = (a4 + v30[15]);

  v44 = sub_1E5E05F74(v37);
  *v43 = v44;
  v43[1] = v44;
  v45 = (a4 + v30[16]);

  v46 = sub_1E5E06078(v37);
  *v45 = v46;
  v45[1] = v46;
  v47 = (a4 + v30[17]);

  v48 = sub_1E5E06264(v37);
  *v47 = v48;
  v47[1] = v48;
  v49 = a4 + v30[18];
  v50 = sub_1E65DBB88();
  (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  sub_1E5DFD1CC(v49, v49 + *(v51 + 28), &qword_1ED074870, &qword_1E65F1010);
  v52 = a4 + v30[19];
  v53 = *MEMORY[0x1E699D2A8];
  v54 = sub_1E65DBD48();
  v55 = *(v54 - 8);
  (*(v55 + 104))(v52, v53, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v55 + 16))(v52 + *(v56 + 28), v52, v54);
  v57 = v30[20];
  sub_1E65D9AC8();
  sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658]);

  sub_1E65E4CA8();
  v58 = v30[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180);
  sub_1E65E4CA8();
  v59 = v30[22];
  sub_1E5DF46C8();
  sub_1E65E4D58();
  v60 = v30[23];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v61 - 8) + 56))(v20, 1, 1, v61);
  sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity);
  sub_1E65E4C48();
  v62 = (a4 + v30[24]);
  v63 = sub_1E5E06378(v37);
  *v62 = v63;
  v62[1] = v63;
  v64 = (a4 + v30[25]);

  v65 = sub_1E5E06564(v37);
  *v64 = v65;
  v64[1] = v65;
  v66 = a4 + v30[26];
  v67 = *MEMORY[0x1E699D6A8];
  v68 = sub_1E65E02A8();
  v69 = *(v68 - 8);
  (*(v69 + 104))(v66, v67, v68);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  (*(v69 + 16))(v66 + *(v70 + 28), v66, v68);
  v71 = a4 + v30[27];

  sub_1E65E2378();
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  v73 = sub_1E65E23A8();
  (*(*(v73 - 8) + 16))(v71 + v72, v71, v73);
  *(a4 + v30[28]) = 0x3FF0000000000000;
  v74 = v30[29];
  sub_1E5DF23E0();
  sub_1E65E4D58();
  v75 = v30[30];
  *(a4 + v75) = sub_1E5E0675C(v37);
  v76 = v30[31];
  sub_1E65E61D8();
  sub_1E65DA8C8();
  sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000]);
  sub_1E65E4D38();
  v77 = v30[32];
  *(a4 + v77) = sub_1E5E06988(v37);
  v78 = (a4 + v30[33]);
  v79 = sub_1E5E06B74(v37);
  *v78 = v79;
  v78[1] = v79;
  v80 = a4 + v30[34];
  *v80 = 0;
  *(v80 + 8) = 0;
  *(v80 + 16) = 0;
  *(v80 + 24) = 2;
  *(v80 + 25) = v186;
  *(v80 + 28) = *(&v186 + 3);
  *(v80 + 40) = 0;
  *(v80 + 48) = 0;
  *(v80 + 32) = 0;
  *(v80 + 56) = 2;
  v81 = a4 + v30[35];
  *v81 = 0;
  *(v81 + 8) = 2;
  v82 = a4 + v30[36];

  sub_1E65DC5D8();
  v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8) + 28);
  v84 = sub_1E65DC638();
  (*(*(v84 - 8) + 16))(v82 + v83, v82, v84);
  v85 = v30[37];
  *(a4 + v85) = sub_1E5DFE000(v37);
  v86 = v30[38];
  sub_1E65E61D8();
  sub_1E65E4C68();
  *(a4 + v30[39]) = 0;
  *(a4 + v30[40]) = 0;
  v87 = v30[41];
  sub_1E65E61D8();
  sub_1E65E4C68();
  v88 = v30[42];
  sub_1E65E61D8();
  sub_1E65D76A8();
  sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530]);
  sub_1E65E4C68();
  v89 = (a4 + v30[43]);
  v90 = sub_1E5DFE1E8(v37);
  *v89 = v90;
  v89[1] = v90;
  v91 = (a4 + v30[44]);

  v92 = sub_1E5DFE3F8(v37);
  *v91 = v92;
  v91[1] = v92;
  v93 = a4 + v30[45];
  (*(v177 + 104))(v176, *MEMORY[0x1E699E6F0], v178);

  sub_1E65DF638();
  sub_1E65D77C8();
  sub_1E65DF598();
  v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  v95 = sub_1E65DF608();
  (*(*(v95 - 8) + 16))(v93 + v94, v93, v95);
  v96 = v30[46];
  sub_1E65E61D8();
  sub_1E65E1518();
  sub_1E65E1458();
  sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860]);
  sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810]);
  sub_1E65E4D38();
  v97 = v30[47];
  sub_1E65E61D8();
  sub_1E65D9798();
  sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8]);
  sub_1E65E4D38();
  v98 = (a4 + v30[48]);
  v99 = v37;
  v100 = sub_1E5DF9D44(v37);
  v101 = sub_1E5E06D90(v37);
  v102 = sub_1E5E06FB4(v37);
  v103 = sub_1E5E071AC(v37);
  v104 = sub_1E5E06D90(v37);
  v105 = sub_1E5E073A4(v99);
  v106 = sub_1E5DF9D44(v99);
  v176 = v100;
  v177 = v101;
  *v98 = v100;
  v98[1] = v101;
  v178 = v102;
  v98[2] = v102;
  v98[3] = v103;
  v98[4] = v104;
  v98[5] = v105;
  v98[6] = v106;
  v98[7] = v100;
  v98[8] = v101;
  v98[9] = v102;
  v98[10] = v103;
  v98[11] = v104;
  v98[12] = v105;
  v98[13] = v106;
  v107 = a4 + v30[49];
  v108 = *MEMORY[0x1E699D0E0];
  v109 = sub_1E65DB1C8();
  v110 = *(v109 - 8);
  (*(v110 + 104))(v107, v108, v109);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  (*(v110 + 16))(v107 + *(v111 + 28), v107, v109);
  v112 = v30[50];
  sub_1E5E01620();

  sub_1E65E4CA8();
  v113 = v30[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  sub_1E60DB408();
  sub_1E65E4CA8();
  v114 = a4 + v30[52];
  sub_1E65E4CA8();
  v115 = v30[53];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  sub_1E5E01674();
  sub_1E65E4CA8();
  v116 = a4 + v30[54];
  v117 = sub_1E65E1BA8();
  (*(*(v117 - 8) + 56))(v179, 1, 1, v117);
  v118 = MEMORY[0x1E69E7CD0];
  sub_1E65E1AB8();
  v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v120 = sub_1E65E1B08();
  (*(*(v120 - 8) + 16))(v116 + v119, v116, v120);
  v121 = a4 + v30[55];
  sub_1E65E1B28();
  sub_1E60DE6BC(&qword_1EE2D6490, MEMORY[0x1E699EA00]);
  sub_1E65E4CA8();
  v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  (*(*(v123 - 8) + 16))(v121 + v122, v121, v123);
  v124 = v30[56];
  sub_1E65E1F68();
  sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160]);
  sub_1E65E4CA8();
  v125 = a4 + v30[57];
  v126 = *MEMORY[0x1E699F368];
  v127 = sub_1E65E2628();
  v128 = *(v127 - 8);
  (*(v128 + 104))(v125, v126, v127);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  (*(v128 + 16))(v125 + *(v129 + 28), v125, v127);
  v130 = (a4 + v30[58]);
  v131 = MEMORY[0x1E69E7CC0];
  v132 = sub_1E5E0759C(MEMORY[0x1E69E7CC0]);
  *v130 = v132;
  v130[1] = v132;
  v133 = v30[59];

  sub_1E65E61D8();
  sub_1E65D94D8();
  sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100]);
  sub_1E65E4D38();
  v134 = a4 + v30[60];
  v135 = *MEMORY[0x1E699ED60];
  v136 = sub_1E65E3838();
  v137 = *(v136 - 8);
  (*(v137 + 104))(v134, v135, v136);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  (*(v137 + 16))(v134 + *(v138 + 28), v134, v136);
  *(a4 + v30[61]) = 0;
  v139 = a4 + v30[62];
  *v139 = xmmword_1E65EAE00;
  v140 = (a4 + v30[64]);
  v141 = *(MEMORY[0x1E69DDCE0] + 16);
  *v140 = *MEMORY[0x1E69DDCE0];
  v140[1] = v141;
  v142 = v30[65];
  sub_1E65E3668();
  sub_1E5DF4210();
  sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0]);
  sub_1E65E4D58();
  v143 = v30[66];
  sub_1E65E61D8();
  sub_1E5DF4334();
  sub_1E65E4D38();
  v144 = (a4 + v30[67]);
  *v144 = v118;
  v144[1] = v118;
  v145 = (a4 + v30[68]);
  *v145 = v118;
  v145[1] = v118;
  v146 = a4 + v30[69];
  sub_1E65DD098();
  v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v148 = sub_1E65DD0A8();
  (*(*(v148 - 8) + 16))(v146 + v147, v146, v148);
  v149 = v30[70];
  v150 = *MEMORY[0x1E699EF98];
  v151 = sub_1E65E39E8();
  (*(*(v151 - 8) + 104))(a4 + v149, v150, v151);
  v152 = v30[71];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E98, &qword_1E65F1138);
  sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8);
  sub_1E65E4CA8();
  v153 = v30[72];
  v154 = *MEMORY[0x1E699EFF0];
  v155 = sub_1E65E1D58();
  (*(*(v155 - 8) + 104))(a4 + v153, v154, v155);
  v156 = v30[73];
  sub_1E65D92D8();
  sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8]);
  sub_1E65E4CA8();
  v157 = v30[74];
  sub_1E65E61D8();
  sub_1E65D8418();
  sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8]);
  sub_1E65E4D38();
  v158 = v30[75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E60DB4BC();
  sub_1E65E4CA8();
  v159 = v30[76];
  *(a4 + v159) = sub_1E5E077DC(v131);
  v160 = v30[77];
  sub_1E65E61D8();
  sub_1E65D9658();
  sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0]);
  sub_1E65E4D38();
  v161 = v30[78];
  *(a4 + v161) = sub_1E5E079C8(v131);
  v162 = (a4 + v30[79]);
  v163 = sub_1E5E07BB4(v131);
  *v162 = v163;
  v162[1] = v163;
  v164 = v30[80];
  sub_1E65DADD8();
  sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);

  sub_1E65E4D58();
  v165 = a4 + v30[81];
  sub_1E65E4D58();
  v166 = a4 + v30[82];
  sub_1E65E4D58();
  v167 = a4 + v30[83];
  sub_1E65E4D58();
  v168 = v30[84];
  sub_1E65DAEB8();
  sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370]);
  sub_1E65E4D58();
  *(a4 + v30[63]) = v183;
  sub_1E5E07DA0(*v139, *(v139 + 8));
  v169 = v180;
  *v139 = v181;
  *(v139 + 8) = v169;
  v185 = v184;
  sub_1E65E0778();
  sub_1E5E0024C(v131);
  v170 = v30[6];
  sub_1E5DF11E0();
  sub_1E5DF1338();
  return sub_1E65E06E8();
}

unint64_t sub_1E5DF9D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079580, &qword_1E66016B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792E8, &qword_1E6601468);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079580, &qword_1E66016B0);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1E6215038(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

size_t sub_1E5DF9F3C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_1E5DFA11C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1E5DFA178(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1E65D74E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v26[0] = a1;
    v14 = v13;
    v27[0] = v13;
    *v12 = 136315138;
    sub_1E5DFA51C(&qword_1EE2D71E0, MEMORY[0x1E6968FB0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    (*(v4 + 8))(v7, v3);
    v18 = sub_1E5DFD4B0(v15, v17, v27);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "Removing %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v12, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v19 = [objc_opt_self() defaultManager];
  v20 = sub_1E65D7448();
  v27[0] = 0;
  v21 = [v19 removeItemAtURL:v20 error:v27];

  if (v21)
  {
    v22 = v27[0];
  }

  else
  {
    v24 = v27[0];
    v25 = sub_1E65D73B8();

    swift_willThrow();
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E5DFA4D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DFA51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DFA564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5DFA618(a1, v4, v5, v6);
}

uint64_t sub_1E5DFA638()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_eventHub);
  v3 = *(v1 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_eventHub + 8);
  swift_getObjectType();
  sub_1E65DE008();
  v4 = *(v1 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_subscriptionToken);
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5DFA754()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5DFA78C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5DFA880()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5DFA978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFA9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAB18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFABE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5DFAC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AppFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v150 = a4;
  v146 = a3;
  v151 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v144 = *(v145 - 8);
  v4 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v141 = &v140 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v143 = &v140 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v140 - v11;
  v13 = type metadata accessor for BrowsingIdentity(0);
  v142 = *(v13 - 8);
  v14 = *(v142 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v140 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v140 - v24;
  v26 = type metadata accessor for AppEnvironment();
  v155 = *(v26 - 8);
  v27 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v154 = v28;
  v153 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075360, &qword_1E65F18B0);
  v156 = *(v152 - 8);
  v29 = *(v156 + 8);
  MEMORY[0x1EEE9AC00](v152);
  v31 = &v140 - v30;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v148 = *(v149 - 8);
  v32 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v140 - v33;
  v34 = type metadata accessor for AppAction();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFBE08(v150, v37, type metadata accessor for AppAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v65 = v143;
    v66 = v142;
    v154 = v20;
    v155 = v13;
    v156 = v17;
    v157 = v25;
    v67 = v144;
    v68 = v145;
    if (EnumCaseMultiPayload)
    {
      v125 = *v37;
      result = type metadata accessor for AppState();
      *(v151 + *(result + 160)) = v125;
    }

    else
    {
      v69 = v157;
      sub_1E5DFAAB0(v37, v157, type metadata accessor for BrowsingIdentity);
      v153 = *(type metadata accessor for AppState() + 92);
      sub_1E65E4C98();
      v70 = v12;
      sub_1E60EE7BC(v12);
      sub_1E5DFE50C(v65, &qword_1ED071E58, &qword_1E65EA150);
      v71 = *(v66 + 48);
      v72 = v155;
      if (v71(v70, 1, v155) == 1)
      {
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
        (*(*(v73 - 8) + 56))(v23, 1, 1, v73);
        if (v71(v70, 1, v72) != 1)
        {
          sub_1E5DFE50C(v70, &qword_1ED071E60, &qword_1E65EA158);
        }
      }

      else
      {
        sub_1E5DFAAB0(v70, v23, type metadata accessor for BrowsingIdentity);
      }

      v126 = _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(v69, v23);
      sub_1E5E00614(v23, type metadata accessor for BrowsingIdentity);
      v127 = v141;
      if ((v126 & 1) == 0)
      {
        v128 = v156;
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v129 = sub_1E65E3B68();
        __swift_project_value_buffer(v129, qword_1EE2EA2A0);
        v130 = v154;
        sub_1E5DFBE08(v69, v154, type metadata accessor for BrowsingIdentity);
        v131 = sub_1E65E3B48();
        v132 = sub_1E65E6338();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *&v161[0] = v134;
          *v133 = 141558274;
          *(v133 + 4) = 1752392040;
          *(v133 + 12) = 2080;
          sub_1E5DFBE08(v130, v128, type metadata accessor for BrowsingIdentity);
          v135 = sub_1E65E5CE8();
          v137 = v136;
          sub_1E5E00614(v130, type metadata accessor for BrowsingIdentity);
          v138 = sub_1E5DFD4B0(v135, v137, v161);

          *(v133 + 14) = v138;
          _os_log_impl(&dword_1E5DE9000, v131, v132, "Resetting state since remote browsing identity has changed: %{mask.hash}s", v133, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v134);
          v139 = v134;
          v127 = v141;
          MEMORY[0x1E694F1C0](v139, -1, -1);
          MEMORY[0x1E694F1C0](v133, -1, -1);
        }

        else
        {

          sub_1E5E00614(v130, type metadata accessor for BrowsingIdentity);
        }

        sub_1E60CBEE8();
        v69 = v157;
      }

      sub_1E5DFBE08(v69, v156, type metadata accessor for BrowsingIdentity);
      sub_1E5E00864(qword_1EE2DA468, type metadata accessor for BrowsingIdentity);
      sub_1E65E4C48();
      sub_1E5E00614(v69, type metadata accessor for BrowsingIdentity);
      return (*(v67 + 40))(v151 + v153, v127, v68);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v74 = *v37;
    v75 = *(v37 + 1);
    v76 = type metadata accessor for AppState();
    v77 = *(v76 + 252);
    sub_1E5E05374(v74, v75);
    v78 = v151;
    sub_1E60F4FA8(v161, v74, v75);
    sub_1E5E0476C(*&v161[0], *(&v161[0] + 1));
    v79 = v78 + *(v76 + 248);
    result = sub_1E5E07DA0(*v79, *(v79 + 8));
    *v79 = v74;
    *(v79 + 8) = v75;
  }

  else
  {
    v39 = v151;
    if (EnumCaseMultiPayload == 3)
    {
      v40 = *v37;
      v41 = *(v37 + 1);
      v42 = *(v37 + 2);
      v43 = *(v37 + 3);
      v44 = v37[32];
      v45 = *(v37 + 5);
      v46 = v37[80];
      v47 = type metadata accessor for AppState();
      *(v39 + v47[28]) = v45;
      v48 = (v39 + v47[64]);
      v49 = *(v37 + 4);
      *v48 = *(v37 + 3);
      v48[1] = v49;
      if (v46 != 12)
      {
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v50 = sub_1E65E3B68();
        __swift_project_value_buffer(v50, qword_1EE2EA2A0);
        v51 = sub_1E65E3B48();
        v52 = sub_1E65E6338();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = v39;
          v55 = swift_slowAlloc();
          *&v161[0] = v55;
          *v53 = 136315138;
          LOBYTE(v159[0]) = v46;
          v56 = sub_1E65E5CE8();
          v58 = sub_1E5DFD4B0(v56, v57, v161);

          *(v53 + 4) = v58;
          _os_log_impl(&dword_1E5DE9000, v51, v52, "Dynamic Type Size: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v55);
          v59 = v55;
          v39 = v54;
          MEMORY[0x1E694F1C0](v59, -1, -1);
          MEMORY[0x1E694F1C0](v53, -1, -1);
        }

        v60 = v47[6];
        v61 = v147;
        v62 = v149;
        sub_1E65E0698();
        (*(v148 + 40))(v39 + v60, v61, v62);
      }

      v63 = v147;
      sub_1E60F0798(v39, v44, v147, v40, v41, v42, v43);
      return (*(v148 + 40))(v39 + v47[6], v63, v149);
    }

    else
    {
      v80 = *&v157[*(v26 + 140)];
      WindowSceneObserver.bounds.getter(v159);
      if ((v160 & 1) == 0)
      {
        v81 = *v159;
        v82 = *&v159[1];
        v83 = *&v159[2];
        v84 = *&v159[3];
        v85 = WindowSceneObserver.interfaceOrientation.getter();
        if ((v86 & 1) == 0)
        {
          v87 = v147;
          sub_1E60F0798(v39, v85 == 1, v147, v81, v82, v83, v84);
          v88 = type metadata accessor for AppState();
          (*(v148 + 40))(v39 + *(v88 + 24), v87, v149);
        }
      }

      v89 = WindowSceneObserver.preferredContentSizeCategory.getter();
      v90 = sub_1E5E00BB4();

      if (v90 != 12)
      {
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v91 = sub_1E65E3B68();
        __swift_project_value_buffer(v91, qword_1EE2EA2A0);
        v92 = sub_1E65E3B48();
        v93 = sub_1E65E6338();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *&v161[0] = v95;
          *v94 = 136315138;
          v158 = v90;
          v96 = sub_1E65E5CE8();
          v98 = sub_1E5DFD4B0(v96, v97, v161);

          *(v94 + 4) = v98;
          _os_log_impl(&dword_1E5DE9000, v92, v93, "Dynamic Type Size: %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v95);
          MEMORY[0x1E694F1C0](v95, -1, -1);
          MEMORY[0x1E694F1C0](v94, -1, -1);
        }

        v99 = *(type metadata accessor for AppState() + 24);
        v100 = v147;
        v101 = v149;
        sub_1E65E0698();
        (*(v148 + 40))(v39 + v99, v100, v101);
      }

      v102 = WindowSceneObserver.displayScale.getter();
      if ((v103 & 1) == 0)
      {
        *(v39 + *(type metadata accessor for AppState() + 112)) = v102;
      }

      WindowSceneObserver.safeAreaEdgeInsets.getter(v161);
      if ((v162 & 1) == 0)
      {
        v104 = (v39 + *(type metadata accessor for AppState() + 256));
        v105 = v161[1];
        *v104 = v161[0];
        v104[1] = v105;
      }

      v106 = 0;
      v107 = (v156 + 104);
      v108 = *v146;
      LODWORD(v150) = *MEMORY[0x1E6999B40];
      LODWORD(v151) = *MEMORY[0x1E6999B58];
      v149 = (v156 + 32);
      LODWORD(v148) = *MEMORY[0x1E6999AD8];
      v109 = v153;
      do
      {
        v110 = byte_1F5FA8580[v106 + 32];
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
        v112 = v111[12];
        v113 = v111[16];
        v114 = v111[20];
        v115 = v111[24];
        if (v110)
        {
          if (v110 == 1)
          {
            v158 = 1;
            sub_1E5E00974();
            sub_1E65E6848();
            sub_1E65E6088();
            v116 = &unk_1E65F18C0;
          }

          else
          {
            v158 = 2;
            sub_1E5E00974();
            sub_1E65E6848();
            sub_1E65E6068();
            v116 = &unk_1E65F18B8;
          }
        }

        else
        {
          v158 = 0;
          sub_1E5E00974();
          sub_1E65E6848();
          sub_1E65E6068();
          v116 = &unk_1E65F18C8;
        }

        v117 = &v31[v115];
        v118 = sub_1E65E4EA8();
        (*(*(v118 - 8) + 104))(&v31[v114], v150, v118);
        sub_1E5DFBE08(v157, v109, type metadata accessor for AppEnvironment);
        v119 = (*(v155 + 80) + 16) & ~*(v155 + 80);
        v120 = swift_allocObject();
        sub_1E5DFAAB0(v109, v120 + v119, type metadata accessor for AppEnvironment);
        *v117 = v116;
        *(v117 + 1) = v120;
        v121 = sub_1E65E4EB8();
        (*(*(v121 - 8) + 104))(&v31[v113], v151, v121);
        v122 = v152;
        (*v107)(v31, v148, v152);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1E5DFBE70(0, v108[2] + 1, 1, v108);
        }

        v124 = v108[2];
        v123 = v108[3];
        if (v124 >= v123 >> 1)
        {
          v108 = sub_1E5DFBE70(v123 > 1, v124 + 1, 1, v108);
        }

        ++v106;
        v108[2] = v124 + 1;
        result = (*(v156 + 4))(v108 + ((v156[80] + 32) & ~v156[80]) + *(v156 + 9) * v124, v31, v122);
      }

      while (v106 != 3);
      *v146 = v108;
    }
  }

  return result;
}

uint64_t sub_1E5DFBE08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t sub_1E5DFBEDC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void sub_1E5DFC0C4()
{
  if (!qword_1EE2D4958)
  {
    sub_1E65DB048();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B10, &qword_1E65F1078);
    sub_1E60DE6BC(&qword_1EE2D6DB8, MEMORY[0x1E699CFF0]);
    v0 = sub_1E65E5B28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4958);
    }
  }
}

unint64_t sub_1E5DFC17C()
{
  result = qword_1EE2D46B0;
  if (!qword_1EE2D46B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D46B0);
  }

  return result;
}

unint64_t sub_1E5DFC1EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B888, &qword_1E660D310);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      sub_1E659B890(v6, *i);
      result = sub_1E5E1B97C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__n128 static HealthDataService.live(with:)@<Q0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveHealthDataService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  result = v4;
  *(v2 + 112) = v4;
  *a1 = &unk_1E6608FA0;
  a1[1] = v2;
  return result;
}

uint64_t static InteropService.default(with:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  sub_1E65D7F18();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v25;
  *(v24 + 32) = v26;
  *(v24 + 40) = v25;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v25;
  *(v23 + 32) = v26;
  *(v23 + 40) = v25;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v25;
  *(v22 + 32) = v26;
  *(v22 + 40) = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v25;
  *(v21 + 32) = v26;
  *(v21 + 40) = v25;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v25;
  *(v20 + 32) = v26;
  *(v20 + 40) = v25;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v25;
  *(v19 + 32) = v26;
  *(v19 + 40) = v25;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v25;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v25;
  *(v17 + 32) = v26;
  *(v17 + 40) = v25;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v25;
  *(v16 + 32) = v26;
  *(v16 + 40) = v25;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v25;
  *(v15 + 32) = v26;
  *(v15 + 40) = v25;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v25;
  *(v14 + 32) = v26;
  *(v14 + 40) = v25;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v25;
  *(v13 + 32) = v26;
  *(v13 + 40) = v25;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v25;
  *(v12 + 32) = v26;
  *(v12 + 40) = v25;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v25;
  *(v11 + 32) = v26;
  *(v11 + 40) = v25;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v25;
  *(v4 + 32) = v26;
  *(v4 + 40) = v25;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v25;
  *(v5 + 32) = v26;
  *(v5 + 40) = v25;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v25;
  *(v6 + 32) = v26;
  *(v6 + 40) = v25;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v25;
  *(v7 + 32) = v26;
  *(v7 + 40) = v25;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v25;
  *(v8 + 32) = v26;
  *(v8 + 40) = v25;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v25;
  *(v9 + 32) = v26;
  *(v9 + 40) = v25;
  *a2 = sub_1E65D3A8C;
  a2[1] = v24;
  a2[2] = sub_1E65D3B5C;
  a2[3] = v23;
  a2[4] = sub_1E65D3CAC;
  a2[5] = v22;
  a2[6] = sub_1E65D3CF8;
  a2[7] = v21;
  a2[8] = sub_1E65D3DC8;
  a2[9] = v20;
  a2[10] = sub_1E65D3DD8;
  a2[11] = v19;
  a2[12] = sub_1E65D3FB8;
  a2[13] = v18;
  a2[14] = sub_1E65D3FE8;
  a2[15] = v17;
  a2[16] = sub_1E65D44F0;
  a2[17] = v16;
  a2[18] = sub_1E65D46AC;
  a2[19] = v15;
  a2[20] = sub_1E65D46DC;
  a2[21] = v14;
  a2[22] = sub_1E65D4858;
  a2[23] = v13;
  a2[24] = sub_1E65D4A2C;
  a2[25] = v12;
  a2[26] = sub_1E65D4B74;
  a2[27] = v11;
  a2[28] = sub_1E65D4E54;
  a2[29] = v4;
  a2[30] = sub_1E65D5100;
  a2[31] = v5;
  a2[32] = sub_1E65D53FC;
  a2[33] = v6;
  a2[34] = sub_1E65D56B0;
  a2[35] = v7;
  a2[36] = sub_1E65D5970;
  a2[37] = v8;
  a2[38] = sub_1E65D5B28;
  a2[39] = v9;
  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1E5DFC960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5DFCAC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5DFCC30()
{
  if (!qword_1EE2D4A90)
  {
    sub_1E5DF46C8();
    sub_1E5DF23E0();
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A90);
    }
  }
}

void sub_1E5DFCCAC()
{
  if (!qword_1EE2D4950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A08, &qword_1E65F3920);
    sub_1E65DAFD8();
    sub_1E5FED46C(&qword_1EE2D6B88, &qword_1ED074A08, &qword_1E65F3920);
    v0 = sub_1E65E5B28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4950);
    }
  }
}

void sub_1E5DFCD68()
{
  if (!qword_1EE2D4A50)
  {
    sub_1E65DA8C8();
    sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A50);
    }
  }
}

unint64_t sub_1E5DFCE18()
{
  result = qword_1EE2D7510;
  if (!qword_1EE2D7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7510);
  }

  return result;
}

unint64_t sub_1E5DFCE6C()
{
  result = qword_1EE2D74F8;
  if (!qword_1EE2D74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74F8);
  }

  return result;
}

uint64_t sub_1E5DFCEC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5DF6E64(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E5DFCF74()
{
  sub_1E5DFD1CC(*(v0 + 96), v0 + 56, &qword_1ED0782C0, &qword_1E65FBB50);
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v1 = sub_1E65E3B68();
    __swift_project_value_buffer(v1, qword_1EE2EA2A0);
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Attempting to rotate journals", v4, 2u);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }

    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v6 + 16);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_1E5E1CF84;

    return v12(v5, v6);
  }

  else
  {
    sub_1E5DFE50C(v0 + 56, &qword_1ED0782C0, &qword_1E65FBB50);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1E5DFD1CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t static AssetService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B510, &qword_1E6609F00);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE30, &qword_1E660C1A0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveAssetService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v6, v2 + 112);
  sub_1E5DF599C(&v5, v2 + 152);
  *(v2 + 192) = v4;
  *a1 = &unk_1E6609F10;
  a1[1] = v2;
  a1[2] = &unk_1E6609F20;
  a1[3] = v2;
  a1[4] = &unk_1E6609F30;
  a1[5] = v2;
  a1[6] = &unk_1E6609F40;
  a1[7] = v2;
  a1[8] = &unk_1E6609F50;
  a1[9] = v2;
  a1[10] = &unk_1E6609F60;
  a1[11] = v2;
  a1[12] = &unk_1E6609F70;
  a1[13] = v2;
  a1[14] = &unk_1E6609F80;
  a1[15] = v2;
  a1[16] = &unk_1E6609F90;
  a1[17] = v2;
  a1[18] = &unk_1E6609FA0;
  a1[19] = v2;
  a1[20] = &unk_1E6609FB0;
  a1[21] = v2;
  a1[22] = &unk_1E6609FC0;
  a1[23] = v2;
  a1[24] = &unk_1E6609FD0;
  a1[25] = v2;
  return swift_retain_n();
}

uint64_t sub_1E5DFD4B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5DFE5B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5DFA11C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
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

uint64_t sub_1E5DFD5C8(unint64_t a1, uint64_t a2)
{
  v84 = a2;
  v98[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1E65D74E8();
  v95 = *(v3 - 8);
  v4 = *(v95 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v88 = &v81 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v87 = &v81 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v93 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v81 - v14;
  if (qword_1EE2D7790 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v15 = sub_1E65E3B68();
    v85 = __swift_project_value_buffer(v15, qword_1EE2EA2A0);
    sub_1E65E3B38();
    sub_1E5DF756C();
    v16 = [objc_opt_self() defaultManager];
    v17 = *(type metadata accessor for JournalRotator() + 20);
    v83 = a1;
    v18 = sub_1E65D7448();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078150, &qword_1E65FB6D8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E65EA670;
    v20 = *MEMORY[0x1E695DB78];
    *(v19 + 32) = *MEMORY[0x1E695DB78];
    type metadata accessor for URLResourceKey(0);
    v21 = v20;
    v22 = sub_1E65E5EF8();

    v98[0] = 0;
    v23 = [v16 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:v22 options:7 error:v98];

    v24 = v98[0];
    if (!v23)
    {
      v38 = v98[0];
      v93 = sub_1E65D73B8();

      swift_willThrow();
      v39 = v93;
      v40 = v93;
      v41 = sub_1E65E3B48();
      v42 = sub_1E65E6328();

      if (os_log_type_enabled(v41, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v98[0] = v45;
        *v44 = 136446210;
        v97 = v93;
        v46 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
        v47 = sub_1E65E5CE8();
        v49 = sub_1E5DFD4B0(v47, v48, v98);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_1E5DE9000, v41, v42, "Failed to rotate journals: %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1E694F1C0](v45, -1, -1);
        MEMORY[0x1E694F1C0](v44, -1, -1);
      }

      v98[0] = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
      result = sub_1E65E5FE8();
      goto LABEL_44;
    }

    v82 = v7;
    v25 = sub_1E65E5F18();
    v26 = v24;

    v27 = *(v25 + 16);
    v94 = v3;
    v92 = v27;
    if (v27)
    {
      a1 = 0;
      v91 = (v95 + 16);
      v89 = (v95 + 8);
      v7 = (v95 + 32);
      v28 = MEMORY[0x1E69E7CC0];
      v29 = v90;
      while (a1 < *(v25 + 16))
      {
        v30 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v31 = *(v95 + 72);
        (*(v95 + 16))(v29, v25 + v30 + v31 * a1, v3);
        sub_1E65D7438();
        v32 = sub_1E65E5E28();

        if (v32)
        {
          v33 = *v7;
          (*v7)(v93, v29, v3);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98[0] = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E5DFE56C(0, v28[2] + 1, 1);
            v28 = v98[0];
          }

          v36 = v28[2];
          v35 = v28[3];
          if (v36 >= v35 >> 1)
          {
            sub_1E5DFE56C(v35 > 1, v36 + 1, 1);
            v28 = v98[0];
          }

          v28[2] = v36 + 1;
          v37 = v28 + v30 + v36 * v31;
          v3 = v94;
          v33(v37, v93, v94);
          v29 = v90;
        }

        else
        {
          (*v89)(v29, v3);
        }

        if (v92 == ++a1)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_46;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v98[0] = v28;
    a1 = 0;
    sub_1E5E0D894(v98);
    v93 = 0;
    v51 = v98[0];
    v92 = v98[0][2];
    if (!v92)
    {
      break;
    }

    v52 = 0;
    v89 = (v95 + 32);
    v90 = (v95 + 16);
    v86 = (v95 + 8);
    v3 = MEMORY[0x1E69E7CC0];
    v53 = v87;
    v91 = v98[0];
    while (v52 < v51[2])
    {
      a1 = v94;
      v7 = ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v54 = *(v95 + 72);
      (*(v95 + 16))(v53, &v7[v51 + v54 * v52], v94);
      sub_1E65D7438();
      v98[0] = 1598310736;
      v98[1] = 0xE400000000000000;
      v96 = getpid();
      v55 = sub_1E65E6BC8();
      v56 = v53;
      MEMORY[0x1E694D7C0](v55);

      MEMORY[0x1E694D7C0](95, 0xE100000000000000);
      v57 = sub_1E65E5E28();

      if (v57)
      {
        (*v86)(v53, a1);
        v51 = v91;
      }

      else
      {
        v58 = *v89;
        (*v89)(v88, v56, a1);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v97 = v3;
        if ((v59 & 1) == 0)
        {
          sub_1E5DFE56C(0, *(v3 + 16) + 1, 1);
          v3 = v97;
        }

        v51 = v91;
        v61 = *(v3 + 16);
        v60 = *(v3 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1E5DFE56C(v60 > 1, v61 + 1, 1);
          v3 = v97;
        }

        *(v3 + 16) = v61 + 1;
        (v58)(&v7[v3 + v61 * v54], v88, v94);
        v53 = v87;
      }

      if (v92 == ++v52)
      {
        goto LABEL_32;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v62 = sub_1E65E3B48();
  v63 = sub_1E65E6338();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v98[0] = v65;
    *v64 = 136315138;
    v66 = MEMORY[0x1E694D940](v3, v94);
    v68 = sub_1E5DFD4B0(v66, v67, v98);

    *(v64 + 4) = v68;
    _os_log_impl(&dword_1E5DE9000, v62, v63, "Rotating Journals: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x1E694F1C0](v65, -1, -1);
    MEMORY[0x1E694F1C0](v64, -1, -1);
  }

  v69 = v83;
  v70 = *(v3 + 16);

  v71 = *v69;
  if (*v69 >= v70)
  {
LABEL_43:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    result = sub_1E65E5FF8();
LABEL_44:
    v80 = *MEMORY[0x1E69E9840];
    return result;
  }

  v72 = v70 - v71;
  if (__OFSUB__(v70, v71))
  {
    __break(1u);
    goto LABEL_50;
  }

  if ((v72 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  v92 = v3;
  if (v70 < v72)
  {
    goto LABEL_51;
  }

  a1 = v94;
  v73 = v82;
  if (!v72)
  {
    goto LABEL_43;
  }

  v7 = 0;
  v74 = v92 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
  v75 = *(v95 + 16);
  v76 = *(v95 + 72);
  v77 = (v95 + 8);
  while (1)
  {
    v3 = v72;
    v75(v73, v74, a1);
    v78 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_47;
    }

    v79 = v93;
    sub_1E5DFA178(v73);
    v93 = v79;
    if (v79)
    {
      break;
    }

    a1 = v94;
    (*v77)(v73, v94);
    ++v7;
    v74 += v76;
    v72 = v3;
    if (v78 == v3)
    {
      goto LABEL_43;
    }
  }

  result = (*v77)(v73, v94);
  __break(1u);
  return result;
}

unint64_t sub_1E5DFE000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079598, &qword_1E66016C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079308, &qword_1E6601480);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079598, &qword_1E66016C8);
      result = sub_1E6416C60(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1E65DB048();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5DFE1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079590, &qword_1E66016C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079520, &qword_1E6601658);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079590, &qword_1E66016C0);
      v12 = *v6;
      result = sub_1E64170B8(*v6, MEMORY[0x1E699E670], MEMORY[0x1E699E670]);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1E65DF438();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5DFE3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079588, &qword_1E66016B8);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1E64170B8(v5, MEMORY[0x1E699E670], MEMORY[0x1E699E670]);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5DFE50C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

size_t sub_1E5DFE56C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731E0, &qword_1E65ED038, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

unint64_t sub_1E5DFE5B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5E00918(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E65E6908();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _s10Blackbeard8AppStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E65DE638() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AppState();
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((MEMORY[0x1E69468C0](a1 + v5, a2 + v5) & 1) == 0)
  {
    return 0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  if ((MEMORY[0x1E69468C0](v6 + *(v8 + 28), v7 + *(v8 + 28)) & 1) == 0)
  {
    return 0;
  }

  v9 = v4[6];
  sub_1E5DF11E0();
  sub_1E5DF1338();
  if ((sub_1E65E06D8() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  sub_1E65D7848();
  sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[8];
  sub_1E65D7EB8();
  sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v12 = v4[9];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 1);
  v15 = (a2 + v12);
  v16 = v15[1];
  v17 = *v15;
  v18 = *v13;
  if ((sub_1E65E2E68() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E2E68() & 1) == 0)
  {
    return 0;
  }

  v19 = v4[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  sub_1E5FED46C(&qword_1EE2D4700, &qword_1ED074678, &qword_1E660D860);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[11];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if ((sub_1E6285524(v21, *v23) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6285524(v22, v24) & 1) == 0)
  {
    return 0;
  }

  v25 = v4[12];
  sub_1E65E1618();
  sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v26 = v4[13];
  sub_1E65DBAB8();
  sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v27 = v4[14];
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if ((sub_1E6285090(v28, *v30) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6285090(v29, v31) & 1) == 0)
  {
    return 0;
  }

  v32 = v4[15];
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if ((sub_1E6284AA0(v33, *v35) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6284AA0(v34, v36) & 1) == 0)
  {
    return 0;
  }

  v37 = v4[16];
  v38 = *(a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if ((sub_1E6284590(v38, *v40) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6284590(v39, v41) & 1) == 0)
  {
    return 0;
  }

  v42 = v4[17];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if ((sub_1E6284424(v43, *v45) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6284424(v44, v46) & 1) == 0)
  {
    return 0;
  }

  if (!sub_1E60DAE8C(a1 + v4[18], a2 + v4[18]))
  {
    return 0;
  }

  v47 = v4[19];
  sub_1E65DBD48();
  sub_1E60DE6BC(&qword_1EE2D6BC8, MEMORY[0x1E699D2B0]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v49 = v4[20];
  sub_1E65D9AC8();
  sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v50 = v4[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v51 = v4[22];
  sub_1E5DF46C8();
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v52 = v4[23];
  type metadata accessor for BrowsingIdentity(0);
  sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v53 = v4[24];
  v54 = *(a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = v56[1];
  if ((sub_1E6283F14(v54, *v56) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6283F14(v55, v57) & 1) == 0)
  {
    return 0;
  }

  v58 = v4[25];
  v59 = *(a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if ((sub_1E62839FC(v59, *v61) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62839FC(v60, v62) & 1) == 0)
  {
    return 0;
  }

  v63 = v4[26];
  sub_1E65E02A8();
  sub_1E60DE6BC(&qword_1EE2D65B8, MEMORY[0x1E699D6B8]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v65 = v4[27];
  sub_1E65E23A8();
  sub_1E60DE6BC(&qword_1EE2D6248, MEMORY[0x1E699F288]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[28]) != *(a2 + v4[28]))
  {
    return 0;
  }

  v67 = v4[29];
  sub_1E5DF23E0();
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6280378(*(a1 + v4[30]), *(a2 + v4[30])) & 1) == 0)
  {
    return 0;
  }

  v68 = v4[31];
  sub_1E65DA8C8();
  sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62809C8(*(a1 + v4[32]), *(a2 + v4[32])) & 1) == 0)
  {
    return 0;
  }

  v69 = v4[33];
  v70 = *(a1 + v69);
  v71 = *(a1 + v69 + 8);
  v72 = (a2 + v69);
  v73 = v72[1];
  if ((sub_1E62833E8(v70, *v72) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62833E8(v71, v73) & 1) == 0)
  {
    return 0;
  }

  v74 = v4[34];
  v75 = a1 + v74;
  v76 = *(a1 + v74);
  v77 = *(a1 + v74 + 8);
  v78 = *(a1 + v74 + 16);
  v79 = *(a1 + v74 + 40);
  v184 = *(a1 + v74 + 32);
  v80 = *(a1 + v74 + 48);
  v81 = *(a1 + v74 + 56);
  v82 = a2 + v74;
  v83 = *(v82 + 32);
  v84 = *(v82 + 40);
  v85 = *(v82 + 48);
  v86 = *(v82 + 56);
  if ((MEMORY[0x1E69443E0](v76, v77, v78, *(v75 + 24), *v82, *(v82 + 8), *(v82 + 16), *(v82 + 24)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1E69443E0](v184, v79, v80, v81, v83, v84, v85, v86) & 1) == 0)
  {
    return 0;
  }

  v87 = v4[35];
  v88 = a1 + v87;
  v89 = *(a1 + v87);
  v90 = (a2 + v87);
  v91 = *v90;
  v92 = *(v90 + 8);
  v93 = *(v88 + 8);
  type metadata accessor for ArtworkDescriptor();
  sub_1E60DE6BC(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  if ((sub_1E65DC598() & 1) == 0)
  {
    return 0;
  }

  v94 = v4[36];
  sub_1E65DC638();
  sub_1E60DE6BC(&qword_1EE2D6B30, MEMORY[0x1E699E100]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6280ED8(*(a1 + v4[37]), *(a2 + v4[37])) & 1) == 0)
  {
    return 0;
  }

  v96 = v4[38];
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[39]) != *(a2 + v4[39]))
  {
    return 0;
  }

  if (*(a1 + v4[40]) != *(a2 + v4[40]))
  {
    return 0;
  }

  v97 = v4[41];
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v98 = v4[42];
  sub_1E65D76A8();
  sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v99 = v4[43];
  v100 = *(a1 + v99);
  v101 = *(a1 + v99 + 8);
  v102 = (a2 + v99);
  v103 = v102[1];
  if ((sub_1E62828AC(v100, *v102) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62828AC(v101, v103) & 1) == 0)
  {
    return 0;
  }

  v104 = v4[44];
  v105 = *(a1 + v104);
  v106 = *(a1 + v104 + 8);
  v107 = (a2 + v104);
  v108 = v107[1];
  if ((sub_1E62827A4(v105, *v107) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E62827A4(v106, v108) & 1) == 0)
  {
    return 0;
  }

  v109 = v4[45];
  sub_1E65DF608();
  sub_1E60DE6BC(&qword_1EE2D67A0, MEMORY[0x1E699E698]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v111 = v4[46];
  sub_1E65E1518();
  sub_1E65E1458();
  sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860]);
  sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v112 = v4[47];
  sub_1E65D9798();
  sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v113 = v4[48];
  v114 = *(a1 + v113 + 16);
  v190[0] = *(a1 + v113);
  v190[1] = v114;
  v190[2] = *(a1 + v113 + 32);
  v191 = *(a1 + v113 + 48);
  v115 = *(a1 + v113 + 72);
  v186[0] = *(a1 + v113 + 56);
  v186[1] = v115;
  v186[2] = *(a1 + v113 + 88);
  v187 = *(a1 + v113 + 104);
  v116 = (a2 + v113);
  v117 = *v116;
  v118 = v116[1];
  v119 = v116[2];
  v193 = *(v116 + 6);
  v192[1] = v118;
  v192[2] = v119;
  v192[0] = v117;
  v120 = *(v116 + 72);
  v188[0] = *(v116 + 56);
  v188[1] = v120;
  v188[2] = *(v116 + 88);
  v189 = *(v116 + 13);
  if ((sub_1E6287A14(v190, v192) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6287A14(v186, v188) & 1) == 0)
  {
    return 0;
  }

  v121 = v4[49];
  sub_1E65DB1C8();
  sub_1E60DE6BC(&qword_1EE2D6D90, MEMORY[0x1E699D0E8]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v123 = v4[50];
  sub_1E5E01620();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v124 = v4[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  sub_1E60DB408();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v125 = v4[52];
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v126 = v4[53];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  sub_1E5E01674();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v127 = v4[54];
  sub_1E65E1B08();
  sub_1E60DE6BC(&qword_1EE2D64A0, MEMORY[0x1E699E9E0]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v129 = v4[55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  sub_1E5FED46C(&qword_1EE2D4AE8, &qword_1ED073568, &qword_1E65FD8A0);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v131 = v4[56];
  sub_1E65E1F68();
  sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v132 = v4[57];
  sub_1E65E2628();
  sub_1E60DE6BC(&qword_1EE2D6220, MEMORY[0x1E699F370]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v133 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v134 = v4[58];
  v135 = *(a1 + v134);
  v136 = *(a1 + v134 + 8);
  v137 = (a2 + v134);
  v138 = v137[1];
  if ((sub_1E6282294(v135, *v137) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6282294(v136, v138) & 1) == 0)
  {
    return 0;
  }

  v139 = v4[59];
  sub_1E65D94D8();
  sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v140 = v4[60];
  sub_1E65E3838();
  sub_1E60DE6BC(&qword_1EE2D6050, MEMORY[0x1E699ED68]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v141 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100) + 28);
  if ((sub_1E65E5B98() & 1) == 0 || *(a1 + v4[61]) != *(a2 + v4[61]))
  {
    return 0;
  }

  v142 = v4[62];
  v143 = *(a1 + v142 + 8);
  v185 = *(a1 + v142);
  v144 = (a2 + v142);
  v145 = *v144;
  v146 = v144[1];
  if (v143 != 6)
  {
    if (v146 == 6)
    {
      goto LABEL_88;
    }

    v147 = 0x65726F6C707865;
    if (v143 > 2)
    {
      switch(v143)
      {
        case 3:
          sub_1E5FED40C(v185, 3uLL);
          sub_1E5FED40C(v145, v146);
          v148 = 0xE600000000000000;
          v149 = 0x686372616573;
          goto LABEL_103;
        case 4:
          sub_1E5FED40C(v185, 4uLL);
          sub_1E5FED40C(v145, v146);
          v148 = 0xE600000000000000;
          v149 = 0x7478654E7075;
          goto LABEL_103;
        case 5:
          sub_1E5FED40C(v185, 5uLL);
          sub_1E5FED40C(v145, v146);
          v148 = 0xE500000000000000;
          v149 = 0x736E616C70;
          goto LABEL_103;
      }
    }

    else
    {
      switch(v143)
      {
        case 0:
          sub_1E5FED40C(v185, 0);
          sub_1E5FED40C(v145, v146);
          v148 = 0xE700000000000000;
          v149 = 0x65726F6C707865;
          goto LABEL_103;
        case 1:
          sub_1E5FED40C(v185, 1uLL);
          sub_1E5FED40C(v145, v146);
          v148 = 0xE600000000000000;
          v149 = 0x756F59726F66;
          goto LABEL_103;
        case 2:
          sub_1E5FED40C(v185, 2uLL);
          sub_1E5FED40C(v145, v146);
          v148 = 0xE700000000000000;
          v149 = 0x7972617262696CLL;
          goto LABEL_103;
      }
    }

    sub_1E5FED40C(v185, v143);
    sub_1E5FED40C(v145, v146);
    MEMORY[0x1E694D7C0](v185, v143);
    v149 = 0x7974696C61646F6DLL;
    v148 = 0xE90000000000003ALL;
LABEL_103:
    if (v146 > 2)
    {
      switch(v146)
      {
        case 3:
          v150 = 0xE600000000000000;
          v147 = 0x686372616573;
          goto LABEL_117;
        case 4:
          v150 = 0xE600000000000000;
          v147 = 0x7478654E7075;
          goto LABEL_117;
        case 5:
          v150 = 0xE500000000000000;
          v147 = 0x736E616C70;
          goto LABEL_117;
      }
    }

    else
    {
      switch(v146)
      {
        case 0:
          v150 = 0xE700000000000000;
          goto LABEL_117;
        case 1:
          v150 = 0xE600000000000000;
          v147 = 0x756F59726F66;
          goto LABEL_117;
        case 2:
          v150 = 0xE700000000000000;
          v147 = 0x7972617262696CLL;
          goto LABEL_117;
      }
    }

    MEMORY[0x1E694D7C0](v145, v146);
    v147 = 0x7974696C61646F6DLL;
    v150 = 0xE90000000000003ALL;
LABEL_117:
    if (v149 == v147 && v148 == v150)
    {
      sub_1E5E07DA0(v145, v146);

      goto LABEL_120;
    }

    v151 = sub_1E65E6C18();
    sub_1E5E07DA0(v145, v146);

    sub_1E5E07DA0(v185, v143);
    if (v151)
    {
      goto LABEL_122;
    }

    return 0;
  }

  if (v146 != 6)
  {
LABEL_88:
    sub_1E5FED40C(v185, v143);
    sub_1E5FED40C(v145, v146);
    sub_1E5E07DA0(v185, v143);
    sub_1E5E07DA0(v145, v146);
    return 0;
  }

  v143 = 6;
  sub_1E5FED40C(v185, 6uLL);
  sub_1E5FED40C(v145, 6uLL);
LABEL_120:
  sub_1E5E07DA0(v185, v143);
LABEL_122:
  if ((sub_1E63D9C04(*(a1 + v4[63]), *(a2 + v4[63])) & 1) == 0)
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v4[64]), *(a2 + v4[64])), vceqq_f64(*(a1 + v4[64] + 16), *(a2 + v4[64] + 16))))) & 1) == 0)
  {
    return 0;
  }

  v152 = v4[65];
  sub_1E65E3668();
  sub_1E5DF4210();
  sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v153 = v4[66];
  sub_1E5DF4334();
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v154 = v4[67];
  v155 = *(a1 + v154);
  v156 = *(a1 + v154 + 8);
  v157 = (a2 + v154);
  v158 = v157[1];
  if ((sub_1E63DA160(v155, *v157) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E63DA160(v156, v158) & 1) == 0)
  {
    return 0;
  }

  v159 = v4[68];
  v160 = *(a1 + v159);
  v161 = *(a1 + v159 + 8);
  v162 = (a2 + v159);
  v163 = v162[1];
  if ((sub_1E63DA160(v160, *v162) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E63DA160(v161, v163) & 1) == 0)
  {
    return 0;
  }

  v164 = v4[69];
  sub_1E65DD0A8();
  sub_1E60DE6BC(&qword_1EE2D6B08, MEMORY[0x1E699EF28]);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v165 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v166 = v4[70];
  if ((sub_1E65E39D8() & 1) == 0)
  {
    return 0;
  }

  v167 = v4[71];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E98, &qword_1E65F1138);
  sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v168 = v4[72];
  if ((sub_1E65E1D48() & 1) == 0)
  {
    return 0;
  }

  v169 = v4[73];
  sub_1E65D92D8();
  sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8]);
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  v170 = v4[74];
  sub_1E65D8418();
  sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v171 = v4[75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E60DB4BC();
  if ((sub_1E65E4C58() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6281364(*(a1 + v4[76]), *(a2 + v4[76])) & 1) == 0)
  {
    return 0;
  }

  v172 = v4[77];
  sub_1E65D9658();
  sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6281874(*(a1 + v4[78]), *(a2 + v4[78])) & 1) == 0)
  {
    return 0;
  }

  v173 = v4[79];
  v174 = *(a1 + v173);
  v175 = *(a1 + v173 + 8);
  v176 = (a2 + v173);
  v177 = v176[1];
  if ((sub_1E6281D84(v174, *v176) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E6281D84(v175, v177) & 1) == 0)
  {
    return 0;
  }

  v178 = v4[80];
  sub_1E65DADD8();
  sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v179 = v4[81];
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v180 = v4[82];
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v181 = v4[83];
  if ((sub_1E65E4D28() & 1) == 0)
  {
    return 0;
  }

  v182 = v4[84];
  sub_1E65DAEB8();
  sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370]);

  return sub_1E65E4D28();
}

unint64_t sub_1E5E0024C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079440, &qword_1E6601598);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079438, &qword_1E6601590);
      result = sub_1E5E008AC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1E65E05C8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5E00428(uint64_t a1)
{
  v2 = sub_1E65E2628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for AppState() + 228);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  (*(v3 + 16))(v6, v7 + *(v8 + 28), v2);
  return sub_1E65E25D8();
}

uint64_t sub_1E5E00528(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1E6009ECC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E5E00614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E00674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E006D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E00734(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5DF7D84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E65E6908();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E65E5DC8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5DF7D84(v10, 0);
        result = sub_1E65E6898();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5E00864(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5E008AC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](a1);
  v4 = sub_1E65E6D78();
  return sub_1E5E01200(a1, v4);
}

uint64_t sub_1E5E00918(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E5E00734(a1, a2);
  sub_1E5E00528(&unk_1F5FA7EE0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

unint64_t sub_1E5E00974()
{
  result = qword_1EE2DBDA0;
  if (!qword_1EE2DBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DBDA0);
  }

  return result;
}

id WindowSceneObserver.preferredContentSizeCategory.getter()
{
  v0 = [objc_opt_self() system];
  v1 = [v0 preferredContentSizeCategory];

  return v1;
}

uint64_t sub_1E5E00A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard8RootItemO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for AppAction()
{
  result = qword_1EE2D7458;
  if (!qword_1EE2D7458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E00ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t WindowSceneObserver.displayScale.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 screen];
  [v3 scale];
  v5 = v4;

  return v5;
}

uint64_t sub_1E5E00BB4()
{
  v0 = *MEMORY[0x1E69DDC68];
  v1 = sub_1E65E5C78();
  v3 = v2;
  if (v1 == sub_1E65E5C78() && v3 == v4)
  {

    return 0;
  }

  else
  {
    v6 = sub_1E65E6C18();

    result = 0;
    if ((v6 & 1) == 0)
    {
      v8 = *MEMORY[0x1E69DDC88];
      v9 = sub_1E65E5C78();
      v11 = v10;
      if (v9 == sub_1E65E5C78() && v11 == v12)
      {

        return 1;
      }

      else
      {
        v14 = sub_1E65E6C18();

        if (v14)
        {
          return 1;
        }

        else
        {
          v15 = *MEMORY[0x1E69DDC78];
          v16 = sub_1E65E5C78();
          v18 = v17;
          if (v16 == sub_1E65E5C78() && v18 == v19)
          {

            return 2;
          }

          else
          {
            v20 = sub_1E65E6C18();

            if (v20)
            {
              return 2;
            }

            else
            {
              v21 = *MEMORY[0x1E69DDC70];
              v22 = sub_1E65E5C78();
              v24 = v23;
              if (v22 == sub_1E65E5C78() && v24 == v25)
              {

                return 3;
              }

              else
              {
                v26 = sub_1E65E6C18();

                if (v26)
                {
                  return 3;
                }

                else
                {
                  v27 = *MEMORY[0x1E69DDC60];
                  v28 = sub_1E65E5C78();
                  v30 = v29;
                  if (v28 == sub_1E65E5C78() && v30 == v31)
                  {

                    return 4;
                  }

                  else
                  {
                    v32 = sub_1E65E6C18();

                    if (v32)
                    {
                      return 4;
                    }

                    else
                    {
                      v33 = *MEMORY[0x1E69DDC58];
                      v34 = sub_1E65E5C78();
                      v36 = v35;
                      if (v34 == sub_1E65E5C78() && v36 == v37)
                      {

                        return 5;
                      }

                      else
                      {
                        v38 = sub_1E65E6C18();

                        if (v38)
                        {
                          return 5;
                        }

                        else
                        {
                          v39 = *MEMORY[0x1E69DDC50];
                          v40 = sub_1E65E5C78();
                          v42 = v41;
                          if (v40 == sub_1E65E5C78() && v42 == v43)
                          {

                            return 6;
                          }

                          else
                          {
                            v44 = sub_1E65E6C18();

                            if (v44)
                            {
                              return 6;
                            }

                            else
                            {
                              v45 = *MEMORY[0x1E69DDC40];
                              v46 = sub_1E65E5C78();
                              v48 = v47;
                              if (v46 == sub_1E65E5C78() && v48 == v49)
                              {

                                return 7;
                              }

                              else
                              {
                                v50 = sub_1E65E6C18();

                                if (v50)
                                {
                                  return 7;
                                }

                                else
                                {
                                  v51 = *MEMORY[0x1E69DDC38];
                                  v52 = sub_1E65E5C78();
                                  v54 = v53;
                                  if (v52 == sub_1E65E5C78() && v54 == v55)
                                  {

                                    return 8;
                                  }

                                  else
                                  {
                                    v56 = sub_1E65E6C18();

                                    if (v56)
                                    {
                                      return 8;
                                    }

                                    else
                                    {
                                      v57 = *MEMORY[0x1E69DDC30];
                                      v58 = sub_1E65E5C78();
                                      v60 = v59;
                                      if (v58 == sub_1E65E5C78() && v60 == v61)
                                      {

                                        return 9;
                                      }

                                      else
                                      {
                                        v62 = sub_1E65E6C18();

                                        if (v62)
                                        {
                                          return 9;
                                        }

                                        else
                                        {
                                          v63 = *MEMORY[0x1E69DDC28];
                                          v64 = sub_1E65E5C78();
                                          v66 = v65;
                                          if (v64 == sub_1E65E5C78() && v66 == v67)
                                          {

                                            return 10;
                                          }

                                          else
                                          {
                                            v68 = sub_1E65E6C18();

                                            if (v68)
                                            {
                                              return 10;
                                            }

                                            else
                                            {
                                              v69 = *MEMORY[0x1E69DDC20];
                                              v70 = sub_1E65E5C78();
                                              v72 = v71;
                                              if (v70 == sub_1E65E5C78() && v72 == v73)
                                              {

                                                return 11;
                                              }

                                              else
                                              {
                                                v74 = sub_1E65E6C18();

                                                if (v74)
                                                {
                                                  return 11;
                                                }

                                                else
                                                {
                                                  return 12;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E5E01200(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E5E01278()
{
  result = qword_1EE2DBD98;
  if (!qword_1EE2DBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DBD98);
  }

  return result;
}

uint64_t sub_1E5E012CC()
{
  v1 = v0[7];
  v2 = v0[2] + v0[5];
  v0[9] = *(v2 + *(type metadata accessor for AppComposer() + 24));
  v0[10] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6335624, v4, v3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1E5E0138C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E65E5B28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5E013F0()
{
  if (!qword_1EE2D6B38)
  {
    type metadata accessor for ArtworkDescriptor();
    sub_1E60DE6BC(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    v0 = sub_1E65DC5A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D6B38);
    }
  }
}

void sub_1E5E01484()
{
  if (!qword_1EE2D4AB0)
  {
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4AB0);
    }
  }
}

void sub_1E5E014DC()
{
  if (!qword_1EE2D4B20)
  {
    sub_1E65D76A8();
    sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530]);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4B20);
    }
  }
}

void sub_1E5E01570()
{
  if (!qword_1EE2D4A58)
  {
    sub_1E65D9798();
    sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A58);
    }
  }
}

unint64_t sub_1E5E01620()
{
  result = qword_1EE2D70E0;
  if (!qword_1EE2D70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70E0);
  }

  return result;
}

unint64_t sub_1E5E01674()
{
  result = qword_1EE2D4890;
  if (!qword_1EE2D4890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    sub_1E60DE6BC(&qword_1EE2D7138, MEMORY[0x1E69CB2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4890);
  }

  return result;
}

void sub_1E5E01728()
{
  if (!qword_1EE2D4AE0)
  {
    sub_1E65E1F68();
    sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160]);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4AE0);
    }
  }
}

void sub_1E5E017BC()
{
  if (!qword_1EE2D4A68)
  {
    sub_1E65D94D8();
    sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A68);
    }
  }
}

unint64_t sub_1E5E01870()
{
  result = qword_1EE2D7508;
  if (!qword_1EE2D7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7508);
  }

  return result;
}

double static MetricService.live(with:)@<D0>(uint64_t (**a1)()@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072360, &qword_1E65EAB90);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC0, &qword_1E65F1460);
  sub_1E65D7F18();
  v29[0] = v23;
  sub_1E5E01B24(v29, &v23);
  v2 = swift_allocObject();
  v3 = v26;
  *(v2 + 3) = v25;
  *(v2 + 4) = v3;
  v4 = v28;
  *(v2 + 5) = v27;
  *(v2 + 6) = v4;
  v5 = v24;
  *(v2 + 1) = v23;
  *(v2 + 2) = v5;
  sub_1E5E01B24(v29, &v23);
  v6 = swift_allocObject();
  v7 = v26;
  *(v6 + 3) = v25;
  *(v6 + 4) = v7;
  v8 = v28;
  *(v6 + 5) = v27;
  *(v6 + 6) = v8;
  v9 = v24;
  *(v6 + 1) = v23;
  *(v6 + 2) = v9;
  sub_1E5E01B24(v29, &v23);
  v10 = swift_allocObject();
  v11 = v26;
  *(v10 + 3) = v25;
  *(v10 + 4) = v11;
  v12 = v28;
  *(v10 + 5) = v27;
  *(v10 + 6) = v12;
  v13 = v24;
  *(v10 + 1) = v23;
  *(v10 + 2) = v13;
  sub_1E5E01B24(v29, &v23);
  v14 = swift_allocObject();
  v15 = v26;
  *(v14 + 3) = v25;
  *(v14 + 4) = v15;
  v16 = v28;
  *(v14 + 5) = v27;
  *(v14 + 6) = v16;
  v17 = v24;
  *(v14 + 1) = v23;
  *(v14 + 2) = v17;
  v18 = swift_allocObject();
  v19 = v29[3];
  *(v18 + 3) = v29[2];
  *(v18 + 4) = v19;
  v20 = v29[5];
  *(v18 + 5) = v29[4];
  *(v18 + 6) = v20;
  result = *v29;
  v22 = v29[1];
  *(v18 + 1) = v29[0];
  *(v18 + 2) = v22;
  *a1 = sub_1E6547E1C;
  a1[1] = v2;
  a1[2] = sub_1E6547F4C;
  a1[3] = v6;
  a1[4] = sub_1E6548124;
  a1[5] = v10;
  a1[6] = sub_1E65482FC;
  a1[7] = v14;
  a1[8] = &unk_1E660A5E0;
  a1[9] = v18;
  return result;
}

uint64_t static PersonalizationService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BAF8, &qword_1E660E360);
  sub_1E65D7F18();
  type metadata accessor for LivePersonalizationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v4, v2 + 112);
  *a1 = &unk_1E660E370;
  a1[1] = v2;
  a1[2] = &unk_1E660E380;
  a1[3] = v2;
  a1[4] = &unk_1E660E390;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t static PlayerService.default(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  v4 = sub_1E65E17A8();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v14;
  v5[5] = v15;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = v14;
  v6[5] = v15;
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = v14;
  v7[5] = v15;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E6574C80;
  *(v13 + 24) = v7;
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = v14;
  v8[5] = v15;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = v14;
  v9[5] = v15;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = v14;
  v10[5] = v15;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a1;
  v11[4] = v14;
  v11[5] = v15;
  *a2 = &unk_1E660C0D8;
  a2[1] = v5;
  a2[2] = &unk_1E660C0E8;
  a2[3] = v6;
  a2[4] = sub_1E6574DB0;
  a2[5] = v13;
  a2[6] = sub_1E6575060;
  a2[7] = v8;
  a2[8] = &unk_1E660C0F8;
  a2[9] = v9;
  a2[10] = &unk_1E660C108;
  a2[11] = v10;
  a2[12] = &unk_1E660C118;
  a2[13] = v11;
  swift_retain_n();
  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1E5E01E9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t static PrivacyPreferenceService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B970, &unk_1E6603F00);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LivePrivacyPreferenceService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 128);
  *(v2 + 112) = v4;
  *a1 = &unk_1E660BE98;
  a1[1] = v2;
  a1[2] = &unk_1E660BEA8;
  a1[3] = v2;
  a1[4] = &unk_1E660BEB8;
  a1[5] = v2;
  a1[6] = &unk_1E660BEC8;
  a1[7] = v2;
  a1[8] = &unk_1E660BED8;
  a1[9] = v2;
  a1[10] = &unk_1E660BEE8;
  a1[11] = v2;
  a1[12] = &unk_1E660BEF8;
  a1[13] = v2;
  return swift_retain_n();
}

uint64_t static RecommendationService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8D8, &qword_1E660D6D0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BAF8, &qword_1E660E360);
  sub_1E65D7F18();
  type metadata accessor for LiveRecommendationService();
  swift_allocObject();
  v2 = sub_1E5E02230(v5[5], v5[6], v5, &v4);
  swift_unknownObjectRelease();
  *a1 = &unk_1E660F6D0;
  a1[1] = v2;
  a1[2] = &unk_1E660F6E0;
  a1[3] = v2;
  a1[4] = &unk_1E660F6F0;
  a1[5] = v2;
  a1[6] = &unk_1E660F700;
  a1[7] = v2;
  a1[8] = &unk_1E660F710;
  a1[9] = v2;
  a1[10] = &unk_1E660F720;
  a1[11] = v2;
  a1[12] = &unk_1E660F730;
  a1[13] = v2;
  a1[14] = &unk_1E660F740;
  a1[15] = v2;
  a1[16] = &unk_1E660F750;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E5E02230(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  swift_defaultActor_initialize();
  sub_1E5DF650C(a4, &v15);
  sub_1E5DF650C(a3, v14);
  v9 = type metadata accessor for OnboardingDetailCache(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v12 = sub_1E5E0257C(&v15, a1, a2, v14);
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  v16 = v9;
  v17 = &off_1F5FCD760;
  *&v15 = v12;
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1E5DF599C(&v15, v4 + 128);
  sub_1E5DF599C(a4, v4 + 168);
  return v4;
}

uint64_t sub_1E5E02330()
{
  result = type metadata accessor for OnboardingDetailCache.State(319);
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

void sub_1E5E02410()
{
  sub_1E5E02498();
  if (v0 <= 0x3F)
  {
    sub_1E65D8A78();
    if (v1 <= 0x3F)
    {
      sub_1E5E02518();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E5E02498()
{
  if (!qword_1EE2D4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07BE70, &qword_1E660F878);
    sub_1E65D76F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D4828);
    }
  }
}

unint64_t sub_1E5E02518()
{
  result = qword_1EE2D4450;
  if (!qword_1EE2D4450)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D4450);
  }

  return result;
}

uint64_t sub_1E5E0257C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  swift_defaultActor_initialize();
  type metadata accessor for OnboardingDetailCache.State(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DF650C(a1, v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_recommendationClient);
  v14 = (v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_eventHub);
  *v14 = a2;
  v14[1] = a3;
  sub_1E5DF650C(a4, v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_networkEvaluator);
  v15 = sub_1E65DDEB8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v5 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_subscriptionToken) = sub_1E65DDEA8();
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v5;

  sub_1E64B80F8(0, 0, v13, &unk_1E660F958, v19);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t sub_1E5E02758()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t static RemoteBrowsingService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B168, "ʸ\a");
  v4 = *&v7[5];
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B170, "ʸ\a");
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B178, "ʸ\a");
  sub_1E65D7F18();
  type metadata accessor for LiveRemoteBrowsingService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 248) = 0;
  *(v2 + 112) = v4;
  sub_1E5DF599C(v7, v2 + 128);
  sub_1E5DF599C(&v6, v2 + 168);
  sub_1E5DF599C(&v5, v2 + 208);
  *a1 = &unk_1E660B718;
  a1[1] = v2;
  a1[2] = &unk_1E660B728;
  a1[3] = v2;
  a1[4] = &unk_1E660B738;
  a1[5] = v2;
  a1[6] = &unk_1E660B748;
  a1[7] = v2;
  a1[8] = &unk_1E660B758;
  a1[9] = v2;
  a1[10] = &unk_1E660B768;
  a1[11] = v2;
  a1[12] = &unk_1E660B778;
  a1[13] = v2;
  a1[14] = &unk_1E660B788;
  a1[15] = v2;
  a1[16] = &unk_1E660B798;
  a1[17] = v2;
  a1[18] = &unk_1E660B7A8;
  a1[19] = v2;
  a1[20] = &unk_1E660B7B8;
  a1[21] = v2;
  a1[22] = &unk_1E660B7C8;
  a1[23] = v2;
  a1[24] = &unk_1E660B7D8;
  a1[25] = v2;
  a1[26] = &unk_1E660B7E8;
  a1[27] = v2;
  a1[28] = &unk_1E660B7F8;
  a1[29] = v2;
  return swift_retain_n();
}

double static SearchService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  *&v23[0] = sub_1E65E1838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC18, &qword_1E66090E8);
  sub_1E65D7F18();
  sub_1E65D7F18();
  v25 = v19;
  sub_1E5E02D58(v23, &v19);
  v2 = swift_allocObject();
  v3 = v20;
  *(v2 + 16) = v19;
  *(v2 + 32) = v3;
  *(v2 + 48) = v21;
  *(v2 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v4 = swift_allocObject();
  v5 = v20;
  *(v4 + 16) = v19;
  *(v4 + 32) = v5;
  *(v4 + 48) = v21;
  *(v4 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v6 = swift_allocObject();
  v7 = v20;
  *(v6 + 16) = v19;
  *(v6 + 32) = v7;
  *(v6 + 48) = v21;
  *(v6 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v8 = swift_allocObject();
  v9 = v20;
  *(v8 + 16) = v19;
  *(v8 + 32) = v9;
  *(v8 + 48) = v21;
  *(v8 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v10 = swift_allocObject();
  v11 = v20;
  *(v10 + 16) = v19;
  *(v10 + 32) = v11;
  *(v10 + 48) = v21;
  *(v10 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 16) = v19;
  *(v12 + 32) = v13;
  *(v12 + 48) = v21;
  *(v12 + 64) = v22;
  sub_1E5E02D58(v23, &v19);
  v14 = swift_allocObject();
  v15 = v20;
  *(v14 + 16) = v19;
  *(v14 + 32) = v15;
  *(v14 + 48) = v21;
  *(v14 + 64) = v22;
  v16 = swift_allocObject();
  v17 = v23[1];
  *(v16 + 16) = v23[0];
  *(v16 + 32) = v17;
  result = *&v24;
  *(v16 + 48) = v24;
  *(v16 + 64) = v25;
  *a1 = &unk_1E66090F8;
  a1[1] = v2;
  a1[2] = &unk_1E6609108;
  a1[3] = v4;
  a1[4] = &unk_1E6609118;
  a1[5] = v6;
  a1[6] = &unk_1E6609128;
  a1[7] = v8;
  a1[8] = &unk_1E6609138;
  a1[9] = v10;
  a1[10] = &unk_1E6609148;
  a1[11] = v12;
  a1[12] = &unk_1E6609158;
  a1[13] = v14;
  a1[14] = &unk_1E6609168;
  a1[15] = v16;
  return result;
}