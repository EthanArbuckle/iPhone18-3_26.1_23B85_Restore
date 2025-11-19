uint64_t sub_1E62D64D4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1E65D8818();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v35 - v7;
  v9 = sub_1E65D8668();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v35 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v35 - v21;
  sub_1E65D9618();
  v23 = sub_1E65D8528();
  v35[1] = v24;
  v35[2] = v23;
  v25 = *(v10 + 8);
  v25(v22, v9);
  v39 = v1;
  sub_1E65D9618();
  sub_1E65D85C8();
  v25(v20, v9);
  v26 = sub_1E65D9678();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v8, 1, v26) == 1)
  {
    sub_1E5DFE50C(v8, &qword_1ED0752C8, &unk_1E65F8500);
  }

  else
  {
    sub_1E65D9668();
    (*(v27 + 8))(v8, v26);
  }

  sub_1E65D9618();
  v28 = v36;
  sub_1E65D8628();
  v25(v17, v9);
  sub_1E65D87D8();
  (*(v37 + 8))(v28, v38);
  sub_1E65D9618();
  v29 = sub_1E65D8658();
  v31 = v30;
  v33 = v32;
  v25(v14, v9);
  v41 = v29;
  v42 = v31;
  v43 = v33 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  sub_1E5F87058(v29, v31, v33 & 1);
  return sub_1E65DE758();
}

uint64_t sub_1E62D68C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65DEB68() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1E65DEA28() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1E65DEC18() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_1E5DFA78C;

  return sub_1E61D0138(a1, v17, v18, v1 + v6, v1 + v9, v1 + v12, v1 + v15, v1 + v16);
}

uint64_t sub_1E62D6B08(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E62D9338;

  return sub_1E62D41D0(a1, a2, v2 + v7);
}

uint64_t sub_1E62D6BE8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62D3DF4(a1, a2, v2 + v7);
}

uint64_t sub_1E62D6CC8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62D3F40(a1, a2, v2 + v7);
}

uint64_t sub_1E62D6DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_1E6236B60(a1, a2);
}

uint64_t sub_1E62D6E40(uint64_t (*a1)(unint64_t, unint64_t, unint64_t, unint64_t, unint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  return a1(v1 + v3, v1 + v6, v1 + v9, v1 + v10, v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E62D6FC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E62D7008(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E62D4088(a1, a2, v2 + v7);
}

uint64_t objectdestroy_26Tm()
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

uint64_t objectdestroy_30Tm()
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

uint64_t sub_1E62D8230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1E65D76F8() - 8);
  return sub_1E636E8CC(a1, *(v2 + v6), v2 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80)), a2);
}

uint64_t objectdestroy_33Tm_0()
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

uint64_t sub_1E62D851C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8) + 80);

  return sub_1E62D5C68(a1);
}

uint64_t objectdestroy_36Tm()
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

uint64_t sub_1E62D9350@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v8 = MEMORY[0x1E699CEF0];
      goto LABEL_15;
    case 2:
      v8 = MEMORY[0x1E699CF18];
      goto LABEL_15;
    case 3:
      v8 = MEMORY[0x1E699CF08];
      goto LABEL_15;
    case 4:
    case 5:
      v3 = sub_1E65DF038();
      v4 = *(*(v3 - 8) + 56);
      v5 = v3;
      v6 = a2;
      v7 = 1;
      goto LABEL_16;
    case 6:
      v8 = MEMORY[0x1E699CEF8];
      goto LABEL_15;
    case 7:
      v8 = MEMORY[0x1E699CEE0];
      goto LABEL_15;
    case 8:
      v8 = MEMORY[0x1E699CEE8];
      goto LABEL_15;
    case 9:
      v8 = MEMORY[0x1E699CF20];
      goto LABEL_15;
    case 10:
      v8 = MEMORY[0x1E699CF10];
      goto LABEL_15;
    case 11:
      v8 = MEMORY[0x1E699CF30];
      goto LABEL_15;
    case 12:
      v8 = MEMORY[0x1E699CF38];
      goto LABEL_15;
    case 13:
      v8 = MEMORY[0x1E699CF00];
      goto LABEL_15;
    default:
      v8 = MEMORY[0x1E699CF28];
LABEL_15:
      v9 = *v8;
      v10 = sub_1E65DF038();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a2, v9, v10);
      v4 = *(v12 + 56);
      v6 = a2;
      v7 = 0;
      v5 = v10;
LABEL_16:

      return v4(v6, v7, 1, v5);
  }
}

uint64_t sub_1E62D9508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a2;
  v152 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v151 = &v126 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v149 = *(v8 - 8);
  v150 = v8;
  v9 = *(v149 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v126 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v127 = &v126 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v133 = &v126 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v129 = &v126 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v126 - v20;
  v21 = sub_1E65D76F8();
  v145 = *(v21 - 8);
  v146 = v21;
  v22 = *(v145 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v132 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v139 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v126 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v142 = &v126 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v131 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v130 = &v126 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v135 = &v126 - v37;
  v143 = sub_1E65D7848();
  v153 = *(v143 - 8);
  v38 = *(v153 + 64);
  v39 = MEMORY[0x1EEE9AC00](v143);
  v137 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v136 = &v126 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v141 = &v126 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v126 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v52 = &v126 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v148 = &v126 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v126 - v55;
  sub_1E65DE488();
  v57 = v154;
  v58 = v155;
  v59 = v156;
  sub_1E62DAC70(v154, v155, v156, v56);
  sub_1E6001C2C(v57, v58, v59);
  v144 = v3;
  sub_1E5DFD1CC(v3, v47, &unk_1ED0776E0, &qword_1E65EDC00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *v47;
  v62 = *(v47 + 1);
  v63 = v47[16];
  if (EnumCaseMultiPayload == 1)
  {
    v64 = a1;
    v65 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48)];
    v141 = v52;
    sub_1E62DDCD8(v65, v52);
    v66 = sub_1E636E05C();
    v67 = v153;
    v68 = (v153 + 48);
    v126 = v56;
    if (v66)
    {
      v154 = v61;
      v155 = v62;
      v156 = v63;
      v69 = type metadata accessor for AppState();
      v70 = *(v69 + 28);
      sub_1E600B01C(v61, v62, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
      v71 = v64;
      v72 = v142;
      sub_1E65E4C98();
      v73 = v130;
      sub_1E5E1F544(v130);
      sub_1E5DFE50C(v72, &qword_1ED071F78, &unk_1E65EA3F0);
      v74 = *v68;
      v75 = v143;
      if ((*v68)(v73, 1, v143) == 1)
      {
        sub_1E65D77C8();
        v76 = v74(v73, 1, v75);
        v77 = v141;
        if (v76 != 1)
        {
          sub_1E5DFE50C(v73, &qword_1ED071F80, &unk_1E65F4310);
        }
      }

      else
      {
        (*(v67 + 32))(v136, v73, v75);
        v77 = v141;
      }

      (*(v145 + 16))(v139, v147, v146);
      v105 = *(v71 + *(v69 + 192) + 88);
      if (*(v105 + 16))
      {
        v106 = sub_1E6416FB4(v61, v62, v63);
        v108 = v107;
        sub_1E6001C2C(v61, v62, v63);
        if (v108)
        {
          v109 = *(v105 + 56);
          v110 = v149;
          v111 = v109 + *(v149 + 72) * v106;
          v112 = v127;
          v113 = v150;
          (*(v149 + 16))(v127, v111, v150);
          (*(v110 + 32))(v133, v112, v113);
LABEL_29:
          sub_1E62DB5D0(v151);
          v123 = v126;
          sub_1E5DFD1CC(v126, v148, &unk_1ED077A70, &qword_1E65F2620);
          sub_1E604C89C();
          sub_1E65DE6F8();
          sub_1E5DFE50C(v77, &unk_1ED077A70, &qword_1E65F2620);
          v104 = v123;
          return sub_1E5DFE50C(v104, &unk_1ED077A70, &qword_1E65F2620);
        }
      }

      else
      {
        sub_1E6001C2C(v61, v62, v63);
      }

      (*(v149 + 104))(v133, *MEMORY[0x1E699CB70], v150);
      goto LABEL_29;
    }

    v154 = v61;
    v155 = v62;
    v156 = v63;
    v86 = type metadata accessor for AppState();
    v87 = *(v86 + 28);
    sub_1E600B01C(v61, v62, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v88 = v64;
    v89 = v142;
    sub_1E65E4C98();
    v90 = v131;
    sub_1E5E1F544(v131);
    sub_1E5DFE50C(v89, &qword_1ED071F78, &unk_1E65EA3F0);
    v91 = *v68;
    v92 = v143;
    if ((*v68)(v90, 1, v143) == 1)
    {
      sub_1E65D77C8();
      v93 = v91(v90, 1, v92);
      v94 = v132;
      if (v93 != 1)
      {
        sub_1E5DFE50C(v90, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v67 + 32))(v137, v90, v92);
      v94 = v132;
    }

    (*(v145 + 16))(v94, v147, v146);
    v114 = *(v88 + *(v86 + 192) + 88);
    if (*(v114 + 16))
    {
      v115 = sub_1E6416FB4(v61, v62, v63);
      v117 = v116;
      sub_1E6001C2C(v61, v62, v63);
      if (v117)
      {
        v118 = *(v114 + 56);
        v119 = v149;
        v120 = v118 + *(v149 + 72) * v115;
        v121 = v128;
        v122 = v150;
        (*(v149 + 16))(v128, v120, v150);
        (*(v119 + 32))(v134, v121, v122);
LABEL_32:
        sub_1E62DB5D0(v151);
        v124 = v141;
        sub_1E5DFD1CC(v141, v148, &unk_1ED077A70, &qword_1E65F2620);
        sub_1E604C89C();
        sub_1E65DE6F8();
        sub_1E5DFE50C(v124, &unk_1ED077A70, &qword_1E65F2620);
        v104 = v126;
        return sub_1E5DFE50C(v104, &unk_1ED077A70, &qword_1E65F2620);
      }
    }

    else
    {
      sub_1E6001C2C(v61, v62, v63);
    }

    (*(v149 + 104))(v134, *MEMORY[0x1E699CB70], v150);
    goto LABEL_32;
  }

  v78 = v56;
  v154 = v61;
  v155 = v62;
  v156 = v63;
  v79 = type metadata accessor for AppState();
  v80 = *(v79 + 28);
  sub_1E600B01C(v61, v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v81 = a1;
  v82 = v142;
  sub_1E65E4C98();
  v83 = v135;
  sub_1E5E1F544(v135);
  sub_1E5DFE50C(v82, &qword_1ED071F78, &unk_1E65EA3F0);
  v84 = *(v153 + 48);
  v85 = v143;
  if (v84(v83, 1, v143) == 1)
  {
    sub_1E65D77C8();
    if (v84(v83, 1, v85) != 1)
    {
      sub_1E5DFE50C(v83, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v153 + 32))(v141, v83, v85);
  }

  (*(v145 + 16))(v138, v147, v146);
  v95 = *(v81 + *(v79 + 192) + 88);
  if (!*(v95 + 16))
  {
    sub_1E6001C2C(v61, v62, v63);
    goto LABEL_17;
  }

  v96 = sub_1E6416FB4(v61, v62, v63);
  v98 = v97;
  sub_1E6001C2C(v61, v62, v63);
  if ((v98 & 1) == 0)
  {
LABEL_17:
    (*(v149 + 104))(v140, *MEMORY[0x1E699CB70], v150);
    goto LABEL_18;
  }

  v99 = *(v95 + 56);
  v100 = v149;
  v101 = v99 + *(v149 + 72) * v96;
  v102 = v129;
  v103 = v150;
  (*(v149 + 16))(v129, v101, v150);
  (*(v100 + 32))(v140, v102, v103);
LABEL_18:
  sub_1E62DB5D0(v151);
  sub_1E5DFD1CC(v78, v148, &unk_1ED077A70, &qword_1E65F2620);
  sub_1E604C89C();
  sub_1E65DE6F8();
  v104 = v78;
  return sub_1E5DFE50C(v104, &unk_1ED077A70, &qword_1E65F2620);
}

uint64_t sub_1E62DA2C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a1;
  v96 = a2;
  v2 = sub_1E65D74E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E5C28();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1E65D7848();
  v95 = *(v93 - 8);
  v8 = *(v95 + 64);
  v9 = MEMORY[0x1EEE9AC00](v93);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v75 - v11;
  v94 = sub_1E65D8518();
  v91 = *(v94 - 8);
  v12 = *(v91 + 64);
  v13 = MEMORY[0x1EEE9AC00](v94);
  v87 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - v15;
  v17 = sub_1E65D76A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65D94D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v90 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v75 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F40, &qword_1E65FAF50);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v75 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE0, &qword_1E65F9198);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v76 = v23;
    (*(v23 + 32))(v28, v32, v22);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    sub_1E65D9498();
    v58 = sub_1E65D8488();
    v60 = v59;
    v84 = v22;
    v91 = *(v91 + 8);
    (v91)(v16, v94);
    v61 = v96;
    *v96 = v58;
    v61[1] = v60;
    *(v61 + 16) = 1;
    (*(v23 + 16))(v90, v28, v22);
    sub_1E62DDC8C();
    v62 = sub_1E65E6588();
    v64 = v92;
    v63 = v93;
    v65 = *(v95 + 16);
    v65(v92, v85, v93);
    sub_1E65E5BA8();
    v65(v86, v64, v63);
    v66 = v62;
    sub_1E65E5D48();
    v67 = v87;
    v88 = v28;
    v68 = v90;
    sub_1E65D9498();
    v69 = v76;
    sub_1E65D8498();
    (v91)(v67, v94);
    sub_1E65DE4F8();

    (*(v95 + 8))(v92, v93);
    v70 = *(v69 + 8);
    v71 = v84;
    v70(v68, v84);
    v70(v88, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    swift_storeEnumTagMultiPayload();
    v56 = *(*(v54 - 8) + 56);
    v57 = v61;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v32, &qword_1ED077F40, &qword_1E65FAF50);
LABEL_8:
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    v56 = *(*(v73 - 8) + 56);
    v57 = v96;
    v72 = 1;
    return v56(v57, v72, 1, v73);
  }

  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F48, &qword_1E65FAF58) + 48);
  (*(v23 + 32))(v28, v32, v22);
  v35 = *(v18 + 32);
  v81 = v18 + 32;
  v82 = v21;
  v83 = v35;
  v80 = v17;
  v35(v21, &v32[v34], v17);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290);
  v37 = v96;
  v79 = v96 + *(v36 + 48);
  sub_1E65D9498();
  v38 = sub_1E65D8488();
  v40 = v39;
  v41 = v22;
  v84 = v22;
  v42 = *(v91 + 8);
  v91 += 8;
  v77 = v42;
  v42(v16, v94);
  *v37 = v38;
  v37[1] = v40;
  *(v37 + 16) = 1;
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v43 = v90;
  (*(v23 + 16))(v90, v28, v41);
  sub_1E62DDC8C();
  v44 = sub_1E65E6588();
  v45 = *(v95 + 16);
  v47 = v92;
  v46 = v93;
  v45(v92, v85, v93);
  sub_1E65E5BA8();
  v45(v86, v47, v46);
  v48 = v44;
  sub_1E65E5D48();
  v49 = v87;
  sub_1E65D9498();
  v50 = v95;
  sub_1E65D8498();
  v77(v49, v94);
  v51 = v79;
  sub_1E65DE4F8();

  (*(v50 + 8))(v92, v93);
  v52 = *(v23 + 8);
  v53 = v84;
  v52(v43, v84);
  v52(v28, v53);
  v83(&v51[v78], v82, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v55 = v96;
  swift_storeEnumTagMultiPayload();
  v56 = *(*(v54 - 8) + 56);
  v57 = v55;
LABEL_6:
  v72 = 0;
  v73 = v54;
  return v56(v57, v72, 1, v73);
}

uint64_t sub_1E62DAC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v81 = a2;
  LODWORD(v79) = a3;
  v80 = a1;
  v83 = a4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F20, &qword_1E65FAF30);
  v4 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F28, &qword_1E65FAF38);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v63 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F30, &qword_1E65FAF40);
  v9 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v63 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F38, &qword_1E65FAF48);
  v67 = *(v69 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v63 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  v13 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v63 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v64 = *(v65 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F40, &qword_1E65FAF50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE0, &qword_1E65F9198);
  v78 = *(v22 - 8);
  v23 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v63 - v33;
  v35 = type metadata accessor for AppState();
  v36 = v79;
  if (v79 <= 1u)
  {
    v45 = v78;
    v79 = v18;
    if (v36)
    {
      v59 = v35[59];
      v84 = v80;
      v85 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
      v60 = v82;
      sub_1E65E4D78();
      sub_1E65E4C98();
      v61 = (*(v45 + 8))(v25, v22);
      MEMORY[0x1EEE9AC00](v61);
      *(&v63 - 2) = v60;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v43 = &qword_1ED077F40;
      v44 = &qword_1E65FAF50;
      v49 = v21;
    }

    else
    {
      v46 = v35[77];
      v84 = v80;
      v85 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
      v47 = v82;
      sub_1E65E4D78();
      sub_1E65E4C98();
      v48 = (*(v31 + 8))(v34, v30);
      MEMORY[0x1EEE9AC00](v48);
      *(&v63 - 2) = v47;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v43 = &qword_1ED0753C0;
      v44 = &unk_1E6606290;
      v49 = v29;
    }
  }

  else
  {
    if (v79 == 2)
    {
      v50 = v35[31];
      v84 = v80;
      v85 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
      v51 = v82;
      sub_1E65E4D78();
      v40 = v68;
      v52 = v65;
      sub_1E65E4C98();
      v53 = (*(v64 + 8))(v17, v52);
      MEMORY[0x1EEE9AC00](v53);
      *(&v63 - 2) = v51;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v43 = &qword_1ED0741E0;
      v44 = &qword_1E65EFC00;
    }

    else if (v79 == 3)
    {
      v37 = v35[74];
      v84 = v80;
      v85 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
      v38 = v82;
      v39 = v66;
      sub_1E65E4D78();
      v40 = v74;
      v41 = v69;
      sub_1E65E4C98();
      v42 = (*(v67 + 8))(v39, v41);
      MEMORY[0x1EEE9AC00](v42);
      *(&v63 - 2) = v38;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v43 = &qword_1ED077F30;
      v44 = &qword_1E65FAF40;
    }

    else
    {
      v54 = v35[47];
      v84 = v80;
      v85 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
      v55 = v82;
      v56 = v71;
      sub_1E65E4D78();
      v40 = v76;
      v57 = v73;
      sub_1E65E4C98();
      v58 = (*(v72 + 8))(v56, v57);
      MEMORY[0x1EEE9AC00](v58);
      *(&v63 - 2) = v55;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v43 = &qword_1ED077F20;
      v44 = &qword_1E65FAF30;
    }

    v49 = v40;
  }

  return sub_1E5DFE50C(v49, v43, v44);
}

uint64_t sub_1E62DB5D0@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E65DE488();
  v12 = v17;
  v11 = v18;
  if (v19 == 2)
  {
    v13 = *(type metadata accessor for AppState() + 124);
    v16[1] = v12;
    v16[2] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
    sub_1E65E4D78();
    sub_1E6001C2C(v12, v11, 2u);
    sub_1E65E4C98();
    (*(v7 + 8))(v10, v6);
    sub_1E65E4DA8();
    return sub_1E5DFE50C(v5, &qword_1ED0741E0, &qword_1E65EFC00);
  }

  else
  {
    sub_1E6001C2C(v17, v18, v19);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    *a1 = 1;
    sub_1E65D7688();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1E62DB838@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E65DA128();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E65DA888();
  sub_1E65DA108();
  (*(v3 + 8))(v6, v2);
  v8[15] = 1;
  sub_1E608DB34();
  sub_1E608DB88();
  LOBYTE(v2) = sub_1E65E6228();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1E62DB96C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v48 = a2;
  v4 = sub_1E65D74E8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D8668();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v44 - v19;
  v21 = sub_1E65D7848();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65D9658();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v31;
  v50 = v30;
  (*(v31 + 16))(v29, a1);
  sub_1E62DDC8C();
  v47 = sub_1E65E6588();
  LODWORD(a1) = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v20);
  sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
  v32 = *(v22 + 48);
  v33 = v32(v20, 1, v21);
  v52 = v22;
  v46 = v21;
  if (v33 == 1)
  {
    sub_1E65D77C8();
    v34 = v25;
    if (v32(v20, 1, v21) != 1)
    {
      sub_1E5DFE50C(v20, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v34 = v25;
  }

  v45 = v34;
  sub_1E65D9618();
  v35 = sub_1E65D8658();
  v37 = v36;
  v39 = v38;
  v48 = *(v7 + 8);
  v40 = v51;
  v48(v12, v51);
  v56 = v35;
  v57 = v37;
  v58 = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  sub_1E5F87058(v35, v37, v39 & 1);
  v41 = v47;
  sub_1E5FBE828(v47, v34);
  v42 = v53;
  sub_1E65D9618();
  sub_1E65D8538();
  v48(v42, v40);
  sub_1E65DE4F8();

  (*(v52 + 8))(v45, v46);
  return (*(v49 + 8))(v29, v50);
}

uint64_t sub_1E62DBE74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = a1;
  v2 = sub_1E65D74E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D8518();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5C28();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_1E65D7848();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = sub_1E65D94D8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v39 = v30;
  v40 = v29;
  v31 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  sub_1E62DDC8C();
  v38 = sub_1E65E6588();
  v32 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v19 + 48);
  if (v33(v17, 1, v18) == 1)
  {
    sub_1E65D77C8();
    if (v33(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
  }

  sub_1E65E5BA8();
  (*(v19 + 16))(v23, v25, v18);
  v34 = v38;
  sub_1E65E5D48();
  v42 = v18;
  v35 = v25;
  v36 = v41;
  sub_1E65D9498();
  sub_1E65D8498();
  (*(v44 + 8))(v36, v45);
  sub_1E65DE4F8();

  (*(v19 + 8))(v35, v42);
  return (*(v39 + 8))(v31, v40);
}

uint64_t sub_1E62DC390@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = a1;
  v2 = sub_1E65D74E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DA128();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5C28();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_1E65D7848();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = sub_1E65DA8C8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v39 = v30;
  v40 = v29;
  v31 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  sub_1E62DDC8C();
  v38 = sub_1E65E6588();
  v32 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v19 + 48);
  if (v33(v17, 1, v18) == 1)
  {
    sub_1E65D77C8();
    if (v33(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
  }

  sub_1E65E5BA8();
  (*(v19 + 16))(v23, v25, v18);
  v34 = v38;
  sub_1E65E5D48();
  v42 = v18;
  v35 = v25;
  v36 = v41;
  sub_1E65DA888();
  sub_1E65DA0E8();
  (*(v44 + 8))(v36, v45);
  sub_1E65DE4F8();

  (*(v19 + 8))(v35, v42);
  return (*(v39 + 8))(v31, v40);
}

uint64_t sub_1E62DC8AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = a1;
  v2 = sub_1E65D74E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DAD48();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5C28();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_1E65D7848();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = sub_1E65D8418();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v39 = v30;
  v40 = v29;
  v31 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  sub_1E62DDC8C();
  v38 = sub_1E65E6588();
  v32 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v19 + 48);
  if (v33(v17, 1, v18) == 1)
  {
    sub_1E65D77C8();
    if (v33(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
  }

  sub_1E65E5BA8();
  (*(v19 + 16))(v23, v25, v18);
  v34 = v38;
  sub_1E65E5D48();
  v42 = v18;
  v35 = v25;
  v36 = v41;
  sub_1E65D83F8();
  sub_1E65DACF8();
  (*(v44 + 8))(v36, v45);
  sub_1E65DE4F8();

  (*(v19 + 8))(v35, v42);
  return (*(v39 + 8))(v31, v40);
}

uint64_t sub_1E62DCDC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = a1;
  v2 = sub_1E65D74E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D8818();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5C28();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_1E65D7848();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = sub_1E65D9798();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v39 = v30;
  v40 = v29;
  v31 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  sub_1E62DDC8C();
  v38 = sub_1E65E6588();
  v32 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v19 + 48);
  if (v33(v17, 1, v18) == 1)
  {
    sub_1E65D77C8();
    if (v33(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
  }

  sub_1E65E5BA8();
  (*(v19 + 16))(v23, v25, v18);
  v34 = v38;
  sub_1E65E5D48();
  v42 = v18;
  v35 = v25;
  v36 = v41;
  sub_1E65D9778();
  sub_1E65D87B8();
  (*(v44 + 8))(v36, v45);
  sub_1E65DE4F8();

  (*(v19 + 8))(v35, v42);
  return (*(v39 + 8))(v31, v40);
}

uint64_t sub_1E62DD2E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a1;
  v96 = a2;
  v2 = sub_1E65D74E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E5C28();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1E65D7848();
  v95 = *(v93 - 8);
  v8 = *(v95 + 64);
  v9 = MEMORY[0x1EEE9AC00](v93);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v75 - v11;
  v94 = sub_1E65DA128();
  v91 = *(v94 - 8);
  v12 = *(v91 + 64);
  v13 = MEMORY[0x1EEE9AC00](v94);
  v87 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - v15;
  v17 = sub_1E65D76A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65DA8C8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v90 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v75 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v75 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v76 = v23;
    (*(v23 + 32))(v28, v32, v22);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    sub_1E65DA888();
    v58 = sub_1E65DA0C8();
    v60 = v59;
    v84 = v22;
    v91 = *(v91 + 8);
    (v91)(v16, v94);
    v61 = v96;
    *v96 = v58;
    v61[1] = v60;
    *(v61 + 16) = 2;
    (*(v23 + 16))(v90, v28, v22);
    sub_1E62DDC8C();
    v62 = sub_1E65E6588();
    v64 = v92;
    v63 = v93;
    v65 = *(v95 + 16);
    v65(v92, v85, v93);
    sub_1E65E5BA8();
    v65(v86, v64, v63);
    v66 = v62;
    sub_1E65E5D48();
    v67 = v87;
    v88 = v28;
    v68 = v90;
    sub_1E65DA888();
    v69 = v76;
    sub_1E65DA0E8();
    (v91)(v67, v94);
    sub_1E65DE4F8();

    (*(v95 + 8))(v92, v93);
    v70 = *(v69 + 8);
    v71 = v84;
    v70(v68, v84);
    v70(v88, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    swift_storeEnumTagMultiPayload();
    v56 = *(*(v54 - 8) + 56);
    v57 = v61;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v32, &qword_1ED0741E0, &qword_1E65EFC00);
LABEL_8:
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    v56 = *(*(v73 - 8) + 56);
    v57 = v96;
    v72 = 1;
    return v56(v57, v72, 1, v73);
  }

  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F18, &qword_1E65FAF28) + 48);
  (*(v23 + 32))(v28, v32, v22);
  v35 = *(v18 + 32);
  v81 = v18 + 32;
  v82 = v21;
  v83 = v35;
  v80 = v17;
  v35(v21, &v32[v34], v17);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290);
  v37 = v96;
  v79 = v96 + *(v36 + 48);
  sub_1E65DA888();
  v38 = sub_1E65DA0C8();
  v40 = v39;
  v41 = v22;
  v84 = v22;
  v42 = *(v91 + 8);
  v91 += 8;
  v77 = v42;
  v42(v16, v94);
  *v37 = v38;
  v37[1] = v40;
  *(v37 + 16) = 2;
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v43 = v90;
  (*(v23 + 16))(v90, v28, v41);
  sub_1E62DDC8C();
  v44 = sub_1E65E6588();
  v45 = *(v95 + 16);
  v47 = v92;
  v46 = v93;
  v45(v92, v85, v93);
  sub_1E65E5BA8();
  v45(v86, v47, v46);
  v48 = v44;
  sub_1E65E5D48();
  v49 = v87;
  sub_1E65DA888();
  v50 = v95;
  sub_1E65DA0E8();
  v77(v49, v94);
  v51 = v79;
  sub_1E65DE4F8();

  (*(v50 + 8))(v92, v93);
  v52 = *(v23 + 8);
  v53 = v84;
  v52(v43, v84);
  v52(v28, v53);
  v83(&v51[v78], v82, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v55 = v96;
  swift_storeEnumTagMultiPayload();
  v56 = *(*(v54 - 8) + 56);
  v57 = v55;
LABEL_6:
  v72 = 0;
  v73 = v54;
  return v56(v57, v72, 1, v73);
}

unint64_t sub_1E62DDC8C()
{
  result = qword_1ED077F10;
  if (!qword_1ED077F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED077F10);
  }

  return result;
}

uint64_t sub_1E62DDCD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E62DDD48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v99 = a1;
  v109 = a2;
  v2 = sub_1E65D74E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v102 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7848();
  v106 = *(v5 - 8);
  v107 = v5;
  v6 = *(v106 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v97 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v93 - v9;
  v108 = sub_1E65D8668();
  v101 = *(v108 - 8);
  v10 = *(v101 + 8);
  v11 = MEMORY[0x1EEE9AC00](v108);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v93 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v100 = &v93 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v93 - v22;
  v96 = sub_1E65D76A8();
  v103 = *(v96 - 8);
  v24 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65D9658();
  v104 = *(v26 - 8);
  v105 = v26;
  v27 = *(v104 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v93 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v94 = &v93 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v93 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v93 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v71 = v104;
    v72 = v41;
    v73 = v105;
    (*(v104 + 32))(v33, v72, v105);
    sub_1E65D9618();
    v74 = sub_1E65D8528();
    v76 = v75;
    v103 = *(v101 + 1);
    (v103)(v16, v108);
    v77 = v109;
    *v109 = v74;
    v77[1] = v76;
    *(v77 + 16) = 0;
    (*(v71 + 16))(v30, v33, v73);
    sub_1E62DDC8C();
    v78 = sub_1E65E6588();
    v101 = v78;
    (*(v106 + 16))(v97, v99, v107);
    sub_1E65D9618();
    v79 = sub_1E65D8658();
    v81 = v80;
    LOBYTE(v76) = v82;
    (v103)(v13, v108);
    v110 = v79;
    v111 = v81;
    v112 = v76 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E5F87058(v79, v81, v76 & 1);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    v84 = v78;
    v85 = v97;
    sub_1E5FBE828(v84, v97);
    v86 = v100;
    sub_1E65D9618();
    sub_1E65D8538();
    (v103)(v86, v108);
    v87 = v109;
    sub_1E65DE4F8();

    (*(v106 + 8))(v85, v107);
    v88 = v105;
    v89 = *(v104 + 8);
    v89(v30, v105);
    v89(v33, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    swift_storeEnumTagMultiPayload();
    v69 = *(*(v67 - 8) + 56);
    v70 = v87;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v41, &qword_1ED0753C0, &unk_1E6606290);
LABEL_8:
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    v69 = *(*(v91 - 8) + 56);
    v70 = v109;
    v90 = 1;
    return v69(v70, v90, 1, v91);
  }

  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C8, &qword_1E65F1A48) + 48);
  v44 = v105;
  v45 = v104;
  v46 = v37;
  (*(v104 + 32))(v37, v41, v105);
  v47 = *(v103 + 32);
  v103 += 32;
  v97 = v47;
  (v47)(v95, &v41[v43], v96);
  v93 = v37;
  sub_1E65D9618();
  v48 = sub_1E65D8528();
  v50 = v49;
  v51 = *(v101 + 1);
  v52 = v23;
  v53 = v108;
  v51(v52, v108);
  v101 = v51;
  v54 = v109;
  *v109 = v48;
  v54[1] = v50;
  *(v54 + 16) = 0;
  v55 = v54;
  (*(v45 + 16))(v94, v46, v44);
  sub_1E62DDC8C();
  v56 = sub_1E65E6588();
  (*(v106 + 16))(v98, v99, v107);
  sub_1E65D9618();
  v57 = sub_1E65D8658();
  v59 = v58;
  LOBYTE(v48) = v60;
  v51(v21, v53);
  v110 = v57;
  v111 = v59;
  v112 = v48 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  sub_1E5F87058(v57, v59, v48 & 1);
  v61 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
  v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v62 = v98;
  sub_1E5FBE828(v56, v98);
  v63 = v100;
  v64 = v94;
  sub_1E65D9618();
  sub_1E65D8538();
  v101(v63, v108);
  sub_1E65DE4F8();

  (*(v106 + 8))(v62, v107);
  v65 = v105;
  v66 = *(v104 + 8);
  v66(v64, v105);
  v66(v93, v65);
  (v97)(v61 + v99, v95, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v68 = v109;
  swift_storeEnumTagMultiPayload();
  v69 = *(*(v67 - 8) + 56);
  v70 = v68;
LABEL_6:
  v90 = 0;
  v91 = v67;
  return v69(v70, v90, 1, v91);
}

unint64_t sub_1E62DE78C()
{
  result = qword_1EE2D68D8;
  if (!qword_1EE2D68D8)
  {
    sub_1E65DE508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68D8);
  }

  return result;
}

void sub_1E62DE854(void *a1, char a2)
{
  if ([v2 isViewLoaded])
  {
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview_];

      [a1 setTranslatesAutoresizingMaskIntoConstraints_];
      [a1 setAlpha_];
      v7 = [a1 bottomAnchor];
      v8 = [v2 view];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 safeAreaLayoutGuide];

        v11 = [v10 bottomAnchor];
        v12 = -30.0;
        if (a2)
        {
          v12 = 0.0;
        }

        v13 = [v7 constraintEqualToAnchor:v11 constant:v12];

        v14 = [a1 centerXAnchor];
        v15 = [v2 view];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 centerXAnchor];

          v18 = [v14 constraintEqualToAnchor_];
          [v18 setActive_];

          v19 = [a1 leadingAnchor];
          v20 = [v2 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 leadingAnchor];

            v23 = [v19 constraintEqualToAnchor:v22 constant:36.0];
            [v23 setActive_];

            v24 = [a1 trailingAnchor];
            v25 = [v2 view];
            if (v25)
            {
              v26 = v25;
              v27 = [v25 trailingAnchor];

              v28 = [v24 constraintEqualToAnchor:v27 constant:-36.0];
              [v28 setActive_];

              [v13 setActive_];
              v29 = [v2 view];
              v30 = v29;
              if ((a2 & 1) == 0)
              {
                if (v29)
                {
                  [v29 layoutIfNeeded];

                  v37 = objc_opt_self();
                  v38 = swift_allocObject();
                  *(v38 + 16) = a1;
                  v44 = sub_1E62DF81C;
                  v45 = v38;
                  v40 = MEMORY[0x1E69E9820];
                  v41 = 1107296256;
                  v42 = sub_1E5E05AB0;
                  v43 = &block_descriptor_24;
                  v33 = _Block_copy(&v40);
                  v39 = a1;

                  [v37 animateWithDuration:0 delay:v33 options:0 animations:0.5 completion:2.0];
                  goto LABEL_14;
                }

LABEL_22:
                __break(1u);
                return;
              }

              if (v29)
              {
                [v29 layoutIfNeeded];

                v31 = objc_opt_self();
                v32 = swift_allocObject();
                v32[2] = a1;
                v32[3] = v13;
                v32[4] = v2;
                v44 = sub_1E62DF878;
                v45 = v32;
                v40 = MEMORY[0x1E69E9820];
                v41 = 1107296256;
                v42 = sub_1E5E05AB0;
                v43 = &block_descriptor_30;
                v33 = _Block_copy(&v40);
                v34 = a1;
                v35 = v13;
                v36 = v2;

                [v31 animateWithDuration:0 delay:v33 options:0 animations:1.0 completion:2.0];
LABEL_14:

                _Block_release(v33);
                return;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1E62DED74(void *a1, char a2)
{
  v3 = v2;
  v6 = [a1 superview];
  v7 = [v2 view];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_38:

LABEL_39:
    if (qword_1EE2D7790 != -1)
    {
LABEL_48:
      swift_once();
    }

    v26 = sub_1E65E3B68();
    __swift_project_value_buffer(v26, qword_1EE2EA2A0);
    osloga = sub_1E65E3B48();
    v27 = sub_1E65E6338();
    if (os_log_type_enabled(osloga, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E5DE9000, osloga, v27, "Toast view requested for dismissal was not in the current hierarchy", v28, 2u);
      MEMORY[0x1E694F1C0](v28, -1, -1);
    }

    return;
  }

  if (!v7)
  {
    v8 = v6;
    goto LABEL_38;
  }

  sub_1E5DEF738(0, &qword_1ED077F50, 0x1E69DD250);
  v9 = sub_1E65E65A8();

  if ((v9 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_6:
  if ((a2 & 1) == 0)
  {
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = v3;
    v58 = sub_1E62DF7CC;
    v59 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1E5E05AB0;
    v57 = &block_descriptor_11;
    v31 = _Block_copy(&aBlock);
    v32 = a1;
    v33 = v3;
    v34 = v32;
    v35 = v33;

    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v34;
    v58 = sub_1E62DF7D4;
    v59 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1E62DF5C8;
    v57 = &block_descriptor_6;
    v37 = _Block_copy(&aBlock);
    v38 = v34;

    [v29 animateWithDuration:v31 animations:v37 completion:0.2];
    _Block_release(v37);
    _Block_release(v31);
    return;
  }

  v10 = [v3 view];
  if (!v10)
  {
    goto LABEL_54;
  }

  v11 = v10;
  v12 = [v10 constraints];

  sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
  v13 = sub_1E65E5F18();

  v50 = a1;
  if (v13 >> 62)
  {
    v14 = sub_1E65E67C8();
    v15 = v13;
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_50:

    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = v13;
  if (!v14)
  {
    goto LABEL_50;
  }

LABEL_10:
  v16 = 0;
  v17 = v15 & 0xC000000000000001;
  v18 = v15 & 0xFFFFFFFFFFFFFF8;
  v48 = v3;
  v49 = v14;
  v51 = v15 & 0xC000000000000001;
  oslog = v15;
  while (1)
  {
    if (v17)
    {
      v19 = MEMORY[0x1E694E2D0](v16, v15);
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_47;
      }

      v19 = *(v15 + 8 * v16 + 32);
    }

    v20 = v19;
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if ([v19 firstItem])
    {
      break;
    }

LABEL_12:
    ++v16;
    if (v21 == v14)
    {
      goto LABEL_50;
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (![v20 secondItem])
  {
    swift_unknownObjectRelease();
LABEL_29:

    v15 = oslog;
    goto LABEL_12;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  sub_1E5DEF738(0, &qword_1ED076218, 0x1E69E58C0);
  if ((sub_1E65E65A8() & 1) == 0)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_33;
  }

  v22 = [v3 view];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 safeAreaLayoutGuide];

    LOBYTE(v23) = sub_1E65E65A8();
    if (v23)
    {
      v14 = v49;
      v17 = v51;
      if ([v20 firstAttribute] != 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v3 = v48;
        v15 = oslog;
        goto LABEL_12;
      }

      v25 = [v20 secondAttribute];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v3 = v48;
      if (v25 == 4)
      {

        v39 = objc_opt_self();
        v40 = swift_allocObject();
        v40[2] = v50;
        v40[3] = v20;
        v40[4] = v48;
        v58 = sub_1E62DF7F4;
        v59 = v40;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = sub_1E5E05AB0;
        v57 = &block_descriptor_12;
        v41 = _Block_copy(&aBlock);
        v42 = v20;
        v43 = v50;
        v44 = v48;

        v45 = swift_allocObject();
        *(v45 + 16) = 1;
        *(v45 + 24) = v43;
        v58 = sub_1E62DF8C8;
        v59 = v45;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = sub_1E62DF5C8;
        v57 = &block_descriptor_18;
        v46 = _Block_copy(&aBlock);
        v47 = v43;

        [v39 animateWithDuration:v41 animations:v46 completion:0.6];
        _Block_release(v46);
        _Block_release(v41);

        return;
      }

      goto LABEL_29;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v3 = v48;
LABEL_33:
    v14 = v49;
LABEL_34:
    v17 = v51;
    v15 = oslog;
    goto LABEL_12;
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1E62DF54C(void *a1, void *a2)
{
  [a1 setAlpha_];
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E62DF5C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1E62DF61C(void *a1, void *a2, void *a3, double a4, double a5)
{
  [a1 setAlpha_];
  [a2 setConstant_];
  v8 = [a3 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E62DF6B8(uint64_t a1, char a2, void *a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a2 & 1;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Removing toast from superview with animated %{BOOL}d", v8, 8u);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  return [a3 removeFromSuperview];
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t StackError.hashValue.getter()
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

unint64_t sub_1E62DF944()
{
  result = qword_1ED077F58;
  if (!qword_1ED077F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077F58);
  }

  return result;
}

uint64_t View.platformPresentAlert<A>(_:applicablePlatforms:currentPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v20 = a4;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlatformAlertViewModifier();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v9 + 16))(v12, a1, a5);

  sub_1E62E0300(v12, a2, a5, v17);
  MEMORY[0x1E694C310](v17, v20, v13, v21);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1E62DFB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65E4128();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E65E4138();
}

uint64_t sub_1E62DFC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E4128();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E65E4138();
}

BOOL sub_1E62DFD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3;
    v7 = sub_1E65DF528();
    v9 = v8;
    if (v7 == sub_1E65DF528() && v9 == v10)
    {

      return v4 != 0;
    }

    v12 = sub_1E65E6C18();

    ++v3;
  }

  while ((v12 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1E62DFE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    v7 = sub_1E65DAE38();
  }

  while (v7 != sub_1E65DAE38());
  return v4 != 0;
}

uint64_t sub_1E62DFE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v38 = a3;
  swift_getWitnessTable();
  v5 = sub_1E65E41A8();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v31 = *(a2 + 16);
  v11 = sub_1E65E3DE8();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = sub_1E65E4148();
  v36 = *(v18 - 8);
  v37 = v18;
  v19 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = sub_1E62DFE28(*(v3 + *(a2 + 40)), *(v3 + *(a2 + 36)));
  WitnessTable = swift_getWitnessTable();
  if (v22)
  {
    MEMORY[0x1E694C310](v3, v5, v31, WitnessTable);
    v24 = *(a2 + 24);
    v39 = WitnessTable;
    v40 = v24;
    swift_getWitnessTable();
    sub_1E5FEE4C8(v15);
    v25 = *(v32 + 8);
    v25(v15, v11);
    sub_1E5FEE4C8(v17);
    sub_1E62DFC6C(v15, v11);
    v25(v15, v11);
    v25(v17, v11);
  }

  else
  {
    sub_1E5FEE4C8(v35);
    v26 = v33;
    sub_1E5FEE4C8(v10);
    v24 = *(a2 + 24);
    v45 = WitnessTable;
    v46 = v24;
    swift_getWitnessTable();
    sub_1E62DFB74(v26, v11, v5);
    v27 = *(v34 + 8);
    v27(v26, v5);
    v27(v10, v5);
  }

  v28 = swift_getWitnessTable();
  v43 = v28;
  v44 = v24;
  v41 = swift_getWitnessTable();
  v42 = v28;
  v29 = v37;
  swift_getWitnessTable();
  sub_1E5FEE4C8(v21);
  return (*(v36 + 8))(v21, v29);
}

uint64_t sub_1E62E0300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for PlatformAlertViewModifier();
  *(a4 + *(v6 + 36)) = a2;
  v7 = *(v6 + 40);
  result = sub_1E65DAE28();
  *(a4 + v7) = result;
  return result;
}

void sub_1E62E0388(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E62E074C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E62E0418(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1E62E056C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1E62E074C()
{
  if (!qword_1EE2D4868)
  {
    v0 = sub_1E65E5FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4868);
    }
  }
}

uint64_t MarketingLegacyView.init(accountURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D74E8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id MarketingLegacyView.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v1 = sub_1E65D7448();
  v2 = [v0 initWithAccountURL_];

  return v2;
}

uint64_t type metadata accessor for MarketingLegacyView()
{
  result = qword_1ED077F68;
  if (!qword_1ED077F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E62E0928()
{
  v0 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v1 = sub_1E65D7448();
  v2 = [v0 initWithAccountURL_];

  return v2;
}

uint64_t sub_1E62E097C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E62E0B54(&qword_1ED077F78);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1E62E09FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E62E0B54(&qword_1ED077F78);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1E62E0A7C()
{
  sub_1E62E0B54(&qword_1ED077F78);
  sub_1E65E4358();
  __break(1u);
}

uint64_t sub_1E62E0AE8()
{
  result = sub_1E65D74E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E62E0B54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingLegacyView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a2;
  v72 = a1;
  v77 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = v63 - v11;
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v63 - v16;
  v81 = v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F80, &qword_1E65FB198);
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v64 = v63 - v20;
  v21 = sub_1E65E1A48();
  v79 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v70 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v63 - v25;
  sub_1E5DF650C(a3, &v82);
  v27 = swift_allocObject();
  sub_1E5DF599C(&v82, v27 + 16);
  sub_1E65E1A38();
  v78 = v4;
  sub_1E5FBEA08(v72, v80, &v82);
  sub_1E5E1DEAC(v4, v17);
  v28 = *(v22 + 16);
  v71 = v26;
  v28(v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v21);
  v66 = *(&v82 + 1);
  v63[1] = v82;
  v80 = *(&v83 + 1);
  v29 = *(&v84 + 1);
  v30 = *(&v85 + 1);
  v63[2] = *(&v86 + 1);
  v31 = *(v13 + 80);
  v32 = (v31 + 16) & ~v31;
  v33 = v32 + v14;
  v34 = v31 | 7;
  v35 = (v32 + v14 + *(v22 + 80)) & ~*(v22 + 80);
  v36 = (v23 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_1E5E1E2B8(v81, v37 + v32, type metadata accessor for AppComposer);
  v72 = v22;
  (*(v22 + 32))(v37 + v35, v70, v79);
  v38 = (v37 + v36);
  v39 = v65;
  v40 = v85;
  v38[2] = v84;
  v38[3] = v40;
  v38[4] = v86;
  v41 = v83;
  *v38 = v82;
  v38[1] = v41;
  v42 = v75;
  sub_1E5E1DEAC(v78, v75);
  v68 = v33;
  v67 = v34;
  v43 = swift_allocObject();
  v69 = v32;
  sub_1E5E1E2B8(v42, v43 + v32, type metadata accessor for AppComposer);
  swift_unknownObjectRetain();

  v75 = v29;

  v70 = v30;
  v44 = v64;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FEB2FC();
  sub_1E65E1928();
  v45 = sub_1E65E4FD8();
  (*(*(v45 - 8) + 56))(v39, 1, 1, v45);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v46 = sub_1E65E5018();
  __swift_project_value_buffer(v46, qword_1EE2D49E8);
  v47 = sub_1E65E2E78();
  v48 = v76;
  (*(*(v47 - 8) + 56))(v76, 1, 1, v47);
  sub_1E5FED46C(&qword_1ED077F88, &qword_1ED077F80, &qword_1E65FB198);
  v49 = v77;
  v50 = v74;
  sub_1E65E4728();
  sub_1E5DFE50C(v48, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v39, &qword_1ED071EF8, &unk_1E65FA470);
  (*(v73 + 8))(v44, v50);
  (*(v72 + 8))(v71, v79);
  v51 = swift_allocObject();
  v52 = v85;
  v51[3] = v84;
  v51[4] = v52;
  v51[5] = v86;
  v53 = v83;
  v51[1] = v82;
  v51[2] = v53;
  v54 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F90, &qword_1E65FB1B0) + 36));
  *v54 = 0;
  v54[1] = 0;
  v54[2] = sub_1E5F99E38;
  v54[3] = v51;
  v55 = v81;
  sub_1E5E1DEAC(v78, v81);
  v56 = swift_allocObject();
  sub_1E5E1E2B8(v55, v56 + v69, type metadata accessor for AppComposer);
  v57 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F98, &qword_1E65FB1B8) + 36));
  *v57 = sub_1E5FF0278;
  v57[1] = v56;
  v58 = swift_allocObject();
  v59 = v85;
  *(v58 + 3) = v84;
  *(v58 + 4) = v59;
  *(v58 + 5) = v86;
  v60 = v83;
  *(v58 + 1) = v82;
  *(v58 + 2) = v60;
  v61 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FA0, &qword_1E65FB1C0) + 36));
  *v61 = sub_1E62E2434;
  v61[1] = v58;
  v61[2] = 0;
  v61[3] = 0;
  swift_unknownObjectRetain();
}

uint64_t sub_1E62E1404()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FEEF74;

  return RoutingContext.dismiss()(v3, v2);
}

uint64_t sub_1E62E14BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E62E13E4(v0 + 16);
}

uint64_t sub_1E62E1550(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for AppComposer();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FC0, &qword_1E65FB1D8);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - v10;
  v11 = sub_1E65E1A48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65E1A08();
  v42 = *(v36 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  (*(v12 + 16))(v15, a2, v11);
  sub_1E65E19F8();
  type metadata accessor for AppFeature();
  sub_1E62E2770(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v35 = sub_1E62E2770(&qword_1ED077FC8, MEMORY[0x1E699E9C8]);
  sub_1E65E4DE8();
  v18 = v38;
  sub_1E5E1DEAC(a1, v38);
  v19 = *a3;
  v20 = a3[3];
  v21 = a3[5];
  v22 = a3[7];
  v23 = a3[9];
  v24 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v25 = swift_allocObject();
  sub_1E5E1E2B8(v18, v25 + v24, type metadata accessor for AppComposer);
  v26 = (v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a3 + 3);
  v26[2] = *(a3 + 2);
  v26[3] = v27;
  v26[4] = *(a3 + 4);
  v28 = *(a3 + 1);
  *v26 = *a3;
  v26[1] = v28;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1E62E27B8;
  *(v29 + 24) = v25;

  v30 = v39;
  v32 = v36;
  v31 = v37;
  v33 = sub_1E65E4F08();

  (*(v43 + 8))(v31, v44);
  (*(v42 + 8))(v30, v32);
  return v33;
}

uint64_t sub_1E62E19F8()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65E1A48() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E62E1550((v0 + v2), v0 + v5, v6);
}

uint64_t sub_1E62E1AF0(uint64_t a1)
{
  v2 = sub_1E65E19B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = type metadata accessor for AppState();
  v9 = a1 + *(v8 + 216);
  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  sub_1E65E1A98();
  v11 = a1 + *(v8 + 24);
  sub_1E634C114(v5);
  return sub_1E65E1948();
}

uint64_t sub_1E62E1C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1E65E1998();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v9, a1, v6);
  v15 = *a4;
  v16 = a4[3];
  v17 = a4[7];
  v25[1] = a4[5];
  v25[2] = v17;
  v25[3] = a4[9];
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v7 + 32))(v20 + v18, v9, v6);
  v21 = (v20 + v19);
  v22 = *(a4 + 3);
  v21[2] = *(a4 + 2);
  v21[3] = v22;
  v21[4] = *(a4 + 4);
  v23 = *(a4 + 1);
  *v21 = *a4;
  v21[1] = v23;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v13, &unk_1E65FB1E0, v20);
}

uint64_t sub_1E62E1E5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for ArtworkContent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArtworkDescriptor();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E1B48();
  sub_1E65E1B38();
  sub_1E65DB248();
  sub_1E62E2700(a1, &v12[v18]);
  swift_storeEnumTagMultiPayload();
  v19 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  v20 = sub_1E65DAE38();
  v21 = sub_1E65DAE38();
  v22 = sub_1E65E4B48();
  v23 = 4.0;
  if (v22)
  {
    v23 = 8.0;
  }

  v24 = 16.0;
  if (v22)
  {
    v24 = 18.0;
  }

  if (v20 == v21)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v20 == v21)
  {
    v26 = 12.0;
  }

  else
  {
    v26 = 8.0;
  }

  sub_1E5E1E2B8(v12, v17, type metadata accessor for ArtworkContent);
  *(v17 + v14[7]) = MEMORY[0x1E69E7CD0];
  v27 = (v17 + v14[8]);
  *v27 = 0.0;
  v27[1] = v25;
  v27[2] = v25;
  v27[3] = v26;
  *(v17 + v14[9]) = 1;
  v28 = (v17 + v14[10]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v37;
  sub_1E64D2DD0(v17, a2, v37);
  v30 = sub_1E65E4B98();
  v32 = v31;
  v33 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v17, a2, v33);
  sub_1E61BF8AC(v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v35 = (v33 + *(result + 36));
  *v35 = v30;
  v35[1] = v32;
  return result;
}

uint64_t sub_1E62E2160@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E62E1E5C(a1, v6, a2);
}

uint64_t sub_1E62E21E8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v8 = a1[3];
  v9 = a1[5];
  v10 = a1[7];
  v11 = a1[9];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = *(a1 + 3);
  *(v12 + 64) = *(a1 + 2);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a1 + 4);
  v14 = *(a1 + 1);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v5, &unk_1E65FB1D0, v12);
}

uint64_t sub_1E62E234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v9 = (*(a4 + 16) + **(a4 + 16));
  v6 = *(*(a4 + 16) + 4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1E5DFA78C;

  return v9();
}

unint64_t sub_1E62E243C()
{
  result = qword_1ED077FA8;
  if (!qword_1ED077FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077FA0, &qword_1E65FB1C0);
    sub_1E62E24C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FA8);
  }

  return result;
}

unint64_t sub_1E62E24C8()
{
  result = qword_1ED077FB0;
  if (!qword_1ED077FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077F98, &qword_1E65FB1B8);
    sub_1E62E2554();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FB0);
  }

  return result;
}

unint64_t sub_1E62E2554()
{
  result = qword_1ED077FB8;
  if (!qword_1ED077FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077F90, &qword_1E65FB1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077F80, &qword_1E65FB198);
    sub_1E5FED46C(&qword_1ED077F88, &qword_1ED077F80, &qword_1E65FB198);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FB8);
  }

  return result;
}

uint64_t sub_1E62E2650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E62E2700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E62E2770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E62E27B8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E62E1C10(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E62E2864(uint64_t a1)
{
  v4 = *(sub_1E65E1998() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5FBF150(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1E62E2980@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v41 - v19;
  v21 = type metadata accessor for ContextMenu.Context(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = (&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1E65D80C8();
  if (v27)
  {
    if (v25 == 8)
    {
      *v24 = sub_1E65D8078();
      v24[1] = v28;
      sub_1E62E2DF4();
      swift_storeEnumTagMultiPayload();
      sub_1E62E2F6C(v9);
      sub_1E65D80E8();
      v29 = sub_1E65D76A8();
      v30 = (*(*(v29 - 8) + 48))(v5, 1, v29) != 1;
      v31 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
      v42 = a1;
      v33 = *(v32 + 48);
      sub_1E62E3040(v5);
      *v14 = v30;
      sub_1E65D7688();
      swift_storeEnumTagMultiPayload();
      State = type metadata accessor for WorkoutContextMenuLoadState();
      v35 = State[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
      swift_storeEnumTagMultiPayload();
      sub_1E5FAB460(v20, v31, &qword_1ED0737C8, &unk_1E6605140);
      sub_1E5FAB460(v16, v31 + State[5], &unk_1ED077CC0, &unk_1E65F2610);
      sub_1E5FAB460(v9, v31 + State[6], &unk_1ED077CD0, &unk_1E65F42F0);
      sub_1E5FAB460(v14, v31 + State[7], &unk_1ED077CC0, &unk_1E65F2610);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
      swift_storeEnumTagMultiPayload();
      v36 = v42;
      sub_1E65D76E8();
      v37 = type metadata accessor for ContextMenu(0);
      sub_1E605953C(v24, v36 + *(v37 + 20));
      return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    }
  }

  else
  {
    sub_1E5F87058(v25, v26, 0);
  }

  v39 = type metadata accessor for ContextMenu(0);
  v40 = *(*(v39 - 8) + 56);

  return v40(a1, 1, 1, v39);
}

uint64_t sub_1E62E2DF4()
{
  v0 = sub_1E65D8238();
  if (v2 != -1)
  {
    v3 = v0;
    v4 = v1;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E61281C8(v3, v4, v5);
    if (v8 < 4u)
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
      sub_1E65D8078();
      sub_1E65D81D8();
      sub_1E65D8188();
      sub_1E65DE758();
      sub_1E65D7688();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E62E2F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65D8108();
  if (v3 == -1 || (v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = 0x100000000;
  v5 = 0;
  if (((1 << v2) & 0x19F) != 0)
  {
    goto LABEL_8;
  }

  if (v2 == 5)
  {
    v4 = 1;
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  v5 = 1;
LABEL_8:
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
  *(a1 + 4) = BYTE4(v4);
  *a1 = v4;
  *(a1 + 5) = v5;
  sub_1E65D7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E62E3040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E62E30A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v101 = a2;
  v3 = sub_1E65D74E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077690, &qword_1E65FA358);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v79 - v8;
  v9 = sub_1E65DAD48();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v94 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v89 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v87 = &v79 - v23;
  v88 = sub_1E65DAC98();
  v86 = *(v88 - 8);
  v24 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v82 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E65E3328();
  v26 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65DA0B8();
  v83 = *(v28 - 8);
  v84 = v28;
  v29 = *(v83 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v80 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v79 - v32;
  v34 = sub_1E65D9D58();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v79 - v40;
  v42 = sub_1E65D8BB8();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v79 - v47;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077688, &qword_1E65FA350);
  v49 = *(*(v90 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v90);
  v52 = &v79 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v102 = &v79 - v53;
  v99 = v2;
  sub_1E65D83E8();
  sub_1E628E768(v48, v46);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v83;
    v55 = *(v83 + 32);
    v56 = v33;
    v79 = v33;
    v57 = v46;
    v58 = v84;
    v55(v33, v57, v84);
    v59 = v80;
    (*(v54 + 16))(v80, v56, v58);
    v60 = v82;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65E3318();
    (*(v86 + 8))(v60, v88);
    sub_1E65DA0A8();
    sub_1E628E7CC();
    sub_1E65DC438();
    v61 = *(v54 + 8);
    v61(v59, v58);
    v61(v79, v58);
  }

  else
  {
    (*(v35 + 32))(v41, v46, v34);
    (*(v35 + 16))(v39, v41, v34);
    sub_1E6134680(v39, v52);
    (*(v35 + 8))(v41, v34);
  }

  sub_1E625B0B0(v48);
  swift_storeEnumTagMultiPayload();
  sub_1E628E824(v52, v102);
  v62 = v91;
  sub_1E65D83F8();
  v63 = sub_1E65DAD08();
  v64 = v97;
  v65 = *(v96 + 8);
  v66 = v65(v62, v97);
  MEMORY[0x1EEE9AC00](v66);
  v78 = v93;
  v67 = sub_1E640632C(sub_1E62E39F0, v77, v63);

  v96 = sub_1E600CCD8(v67);

  sub_1E65D83F8();
  v93 = sub_1E65DACE8();
  v90 = v68;
  v65(v62, v64);
  v69 = v92;
  sub_1E65D83F8();
  sub_1E65DAD28();
  v65(v69, v64);
  v70 = sub_1E65E3348();
  (*(*(v70 - 8) + 56))(v98, 1, 1, v70);
  v71 = v94;
  sub_1E65D83F8();
  sub_1E65DACF8();
  v65(v71, v64);
  v72 = v95;
  sub_1E65D83F8();
  v73 = sub_1E65DAD18();
  v75 = v74;
  v65(v72, v64);
  v77[1] = v75;
  v78 = MEMORY[0x1E69E7CD0];
  v77[0] = v73;
  return sub_1E65E3238();
}

uint64_t sub_1E62E3A24@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v66 = a4;
  v59 = a3;
  v69 = a2;
  v68 = a7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076948, &unk_1E65F7230);
  v79 = *(v80 - 8);
  v13 = v79[8];
  v14 = MEMORY[0x1EEE9AC00](v80);
  v67 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v57 - v16;
  v17 = type metadata accessor for AppComposer();
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076950, &unk_1E65F7240);
  v78 = *(v77 - 8);
  v20 = v78[8];
  v21 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v57 - v23;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F8, &qword_1E65EDC90);
  v76 = *(v72 - 8);
  v24 = v76[8];
  v25 = MEMORY[0x1EEE9AC00](v72);
  v71 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v73 = &v57 - v27;
  v58 = a1;
  v86 = a1;
  v87 = a2;
  v88 = a3;
  v89 = a4;
  v90 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073920, &qword_1E65EDCB0);
  sub_1E5FED46C(&qword_1EE2D4B40, &qword_1ED073920, &qword_1E65EDCB0);
  sub_1E65E4AF8();
  sub_1E5E1DEAC(a1, v19);
  v60 = *a5;
  v61 = a5[3];
  v62 = a5[5];
  v63 = a5[7];
  v64 = a5[9];
  sub_1E5DF650C(a6, &v91);
  v28 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v29 = (v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_1E5E1E5F8(v19, v31 + v28, type metadata accessor for AppComposer);
  v32 = (v31 + v29);
  v33 = v59;
  *v32 = v69;
  v32[1] = v33;
  v34 = (v31 + v30);
  v35 = *(a5 + 4);
  v34[3] = *(a5 + 3);
  v34[4] = v35;
  v36 = *(a5 + 2);
  v34[1] = *(a5 + 1);
  v34[2] = v36;
  *v34 = *a5;
  sub_1E5DF599C(&v91, v31 + ((v30 + 87) & 0xFFFFFFFFFFFFFFF8));
  v37 = v58;
  sub_1E5E1DEAC(v58, v19);
  v38 = swift_allocObject();
  sub_1E5E1E5F8(v19, v38 + v28, type metadata accessor for AppComposer);
  v39 = (v38 + v29);
  *v39 = &unk_1E65FA338;
  v39[1] = 0;

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073900, &qword_1E65EDC98);
  sub_1E61F26B4();
  v40 = v70;
  sub_1E65DF198();
  v81 = v37;
  v82 = v69;
  v83 = v33;
  v84 = v66;
  v85 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
  v41 = v75;
  sub_1E65E4AF8();
  v42 = v76[2];
  v43 = v71;
  v44 = v72;
  v42(v71, v73, v72);
  v69 = v78[2];
  v45 = v74;
  v69(v74, v40, v77);
  v46 = v79[2];
  v47 = v67;
  v46(v67, v41, v80);
  v48 = v68;
  v42(v68, v43, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078030, &qword_1E65FB3C0);
  v50 = v77;
  v69(&v48[*(v49 + 48)], v45, v77);
  v51 = v80;
  v46(&v48[*(v49 + 64)], v47, v80);
  v52 = v79[1];
  v52(v75, v51);
  v53 = v78[1];
  v53(v70, v50);
  v54 = v76[1];
  v55 = v72;
  v54(v73, v72);
  v52(v47, v51);
  v53(v74, v50);
  return (v54)(v71, v55);
}

uint64_t sub_1E62E4270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X8>)
{
  v189 = a4;
  v190 = a5;
  v194 = a3;
  v164 = a2;
  v197 = a1;
  v178 = a6;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v176 = *(v152 - 8);
  v7 = *(v176 + 64);
  v8 = MEMORY[0x1EEE9AC00](v152);
  v150 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v148 = &v139 - v11;
  v149 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v139 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073938, &unk_1E65F72A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v169 = &v139 - v16;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v167 = *(v168 - 8);
  v17 = *(v167 + 64);
  v18 = MEMORY[0x1EEE9AC00](v168);
  v147 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v173 = &v139 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073948, &unk_1E65F72B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v177 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v174 = &v139 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v175 = &v139 - v27;
  v187 = sub_1E65D76F8();
  v28 = *(v187 - 8);
  v166 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v30 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v30;
  v31 = type metadata accessor for AppComposer();
  v179 = *(v31 - 8);
  v32 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v156 = *(v34 - 8);
  v35 = *(v156 + 8);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v153 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v139 - v37;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v193 = *(v161 - 8);
  v192 = *(v193 + 8);
  v39 = MEMORY[0x1EEE9AC00](v161);
  v165 = &v139 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v162 = &v139 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v160 = &v139 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v191 = &v139 - v45;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v159 = *(v163 - 8);
  v158 = *(v159 + 64);
  v46 = MEMORY[0x1EEE9AC00](v163);
  v180 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v157 = &v139 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v139 - v50;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073960, &qword_1E65EDCD8);
  v171 = *(v172 - 8);
  v52 = *(v171 + 64);
  v53 = MEMORY[0x1EEE9AC00](v172);
  v170 = &v139 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  *v51 = a2;
  *(v51 + 1) = v194;
  v51[16] = 0;
  v195 = &v139 - v55;
  v196 = v51;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  v155 = v38;
  sub_1E6184404(v38);
  v188 = v33;
  sub_1E5E1DEAC(v197, v33);
  sub_1E5DFD1CC(v38, &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v56 = *(v28 + 16);
  v57 = v187;
  v145 = v28 + 16;
  v144 = v56;
  v56(v30, v189, v187);
  v58 = v190;
  v59 = v190[3];
  v181 = *v190;
  v182 = v59;
  v60 = v190[7];
  v183 = v190[5];
  v184 = v60;
  v185 = v190[9];
  v61 = *(v179 + 80);
  v62 = (v61 + 16) & ~v61;
  v179 = v62 + v32;
  v154 = v61 | 7;
  v63 = (v62 + v32 + *(v156 + 80)) & ~*(v156 + 80);
  v64 = *(v28 + 80);
  v65 = (v35 + v64 + v63) & ~v64;
  v141 = v64;
  v139 = v166 + 7;
  v66 = (v166 + 7 + v65) & 0xFFFFFFFFFFFFFFF8;
  v142 = v61 | 7 | v64;
  v67 = swift_allocObject();
  v156 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v33, v67 + v62, type metadata accessor for AppComposer);
  sub_1E5FAB460(v153, v67 + v63, &qword_1ED073950, &unk_1E65F4360);
  v68 = *(v28 + 32);
  v153 = v28 + 32;
  v140 = v68;
  v68(v67 + v65, v186, v57);
  v69 = (v67 + v66);
  v70 = v58[3];
  v69[2] = v58[2];
  v69[3] = v70;
  v69[4] = v58[4];
  v71 = v58[1];
  *v69 = *v58;
  v69[1] = v71;
  v72 = (v67 + ((v66 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v72 = nullsub_1;
  v72[1] = 0;
  v73 = sub_1E604BABC();
  swift_unknownObjectRetain();

  v74 = v191;
  v143 = v73;
  sub_1E65DE518();
  sub_1E5DFE50C(v155, &qword_1ED073950, &unk_1E65F4360);
  v75 = v188;
  sub_1E5E1DEAC(v197, v188);
  v76 = v157;
  sub_1E5DFD1CC(v196, v157, &qword_1ED073958, &qword_1E65EDCD0);
  v77 = *(v159 + 80);
  v78 = ((v179 + v77) & ~v77);
  v155 = v78 + v158;
  v154 |= v77;
  v79 = swift_allocObject();
  v159 = v79;
  v166 = v62;
  sub_1E5E1E5F8(v75, v79 + v62, v156);
  v156 = v78;
  sub_1E5FAB460(v76, v78 + v79, &qword_1ED073958, &qword_1E65EDCD0);
  v80 = v193;
  v81 = *(v193 + 2);
  v82 = v160;
  v83 = v161;
  v81(v160, v74, v161);
  v84 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v158 = swift_allocObject();
  v85 = *(v80 + 4);
  v85(v158 + v84, v82, v83);
  v86 = v162;
  v87 = v191;
  v81(v162, v191, v83);
  v160 = swift_allocObject();
  v85(&v160[v84], v86, v83);
  v88 = v165;
  v81(v165, v87, v83);
  v89 = swift_allocObject();
  v85(v89 + v84, v88, v83);
  v90 = v167;
  v91 = sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0);
  v138 = v83;
  v92 = v180;
  sub_1E65DE8A8();
  (*(v193 + 1))(v87, v138);
  sub_1E5DFE50C(v196, &qword_1ED073958, &qword_1E65EDCD0);
  v93 = v194;
  *v92 = v164;
  *(v92 + 8) = v93;
  *(v92 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v94 = v169;
  sub_1E61845B4(v169);
  if ((*(v90 + 48))(v94, 1, v168) == 1)
  {
    sub_1E5DFE50C(v92, &qword_1ED073958, &qword_1E65EDCD0);
    sub_1E5DFE50C(v94, &qword_1ED073938, &unk_1E65F72A0);
    v95 = 1;
    v96 = v174;
  }

  else
  {
    v97 = v141;
    v98 = v173;
    sub_1E5FAB460(v94, v173, &qword_1ED073940, &qword_1E65EDCC8);
    v99 = v188;
    sub_1E5E1DEAC(v197, v188);
    v100 = v98;
    v101 = v147;
    sub_1E5DFD1CC(v100, v147, &qword_1ED073940, &qword_1E65EDCC8);
    v103 = v186;
    v102 = v187;
    v144(v186, v189, v187);
    v104 = *(v90 + 80);
    v194 = v91;
    v105 = (v179 + v104) & ~v104;
    v106 = v105 + v146;
    v107 = (v97 + v105 + v146 + 1) & ~v97;
    v108 = (v139 + v107) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    v193 = type metadata accessor for AppComposer;
    sub_1E5E1E5F8(v99, v109 + v166, type metadata accessor for AppComposer);
    sub_1E5FAB460(v101, v109 + v105, &qword_1ED073940, &qword_1E65EDCC8);
    *(v109 + v106) = 0;
    v140(v109 + v107, v103, v102);
    v110 = (v109 + v108);
    v111 = v190;
    v112 = *(v190 + 3);
    v110[2] = *(v190 + 2);
    v110[3] = v112;
    v110[4] = v111[4];
    v113 = v111[1];
    *v110 = *v111;
    v110[1] = v113;
    swift_unknownObjectRetain();

    v114 = v151;
    sub_1E65DE528();
    sub_1E5E1DEAC(v197, v99);
    v115 = v196;
    sub_1E5DFD1CC(v92, v196, &qword_1ED073958, &qword_1E65EDCD0);
    v116 = swift_allocObject();
    v197 = v116;
    sub_1E5E1E5F8(v99, v116 + v166, v193);
    sub_1E5FAB460(v115, v156 + v116, &qword_1ED073958, &qword_1E65EDCD0);
    v117 = v176;
    v118 = *(v176 + 16);
    v119 = v148;
    v120 = v114;
    v121 = v152;
    v118(v148, v114, v152);
    v122 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v196 = swift_allocObject();
    v123 = *(v117 + 32);
    v123(&v196[v122], v119, v121);
    v118(v119, v120, v121);
    v193 = swift_allocObject();
    v123(v193 + v122, v119, v121);
    v124 = v150;
    v118(v150, v120, v121);
    v125 = swift_allocObject();
    v123((v125 + v122), v124, v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073980, &qword_1E65EDCE8);
    sub_1E604DE38();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0);
    v96 = v174;
    sub_1E65DE8A8();
    (*(v176 + 8))(v120, v121);
    sub_1E5DFE50C(v173, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5DFE50C(v180, &qword_1ED073958, &qword_1E65EDCD0);
    v95 = 0;
  }

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073970, &unk_1E65F72E0);
  (*(*(v126 - 8) + 56))(v96, v95, 1, v126);
  v127 = v175;
  sub_1E5FAB460(v96, v175, &qword_1ED073948, &unk_1E65F72B0);
  v128 = v171;
  v129 = *(v171 + 16);
  v130 = v170;
  v131 = v195;
  v132 = v172;
  v129(v170, v195, v172);
  v133 = v177;
  sub_1E5DFD1CC(v127, v177, &qword_1ED073948, &unk_1E65F72B0);
  v134 = v178;
  v129(v178, v130, v132);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073978, &qword_1E65EDCE0);
  sub_1E5DFD1CC(v133, &v134[*(v135 + 48)], &qword_1ED073948, &unk_1E65F72B0);
  sub_1E5DFE50C(v127, &qword_1ED073948, &unk_1E65F72B0);
  v136 = *(v128 + 8);
  v136(v131, v132);
  sub_1E5DFE50C(v133, &qword_1ED073948, &unk_1E65F72B0);
  return (v136)(v130, v132);
}

uint64_t sub_1E62E5680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073918, &unk_1E65F7260);
  sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260);
  return sub_1E65E4AF8();
}

uint64_t sub_1E62E572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v70 = a5;
  v74 = a6;
  v75 = a2;
  v66 = a1;
  v9 = sub_1E65DE588();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v71 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v55 - v13;
  v14 = type metadata accessor for AppComposer();
  v67 = *(v14 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v56 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - v20);
  v69 = sub_1E65DE468();
  v77 = *(v69 - 8);
  v22 = v77[8];
  v23 = MEMORY[0x1EEE9AC00](v69);
  v68 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v55 - v25;
  *v21 = v75;
  v21[1] = a3;
  swift_storeEnumTagMultiPayload();

  v57 = sub_1E5F9B258(&unk_1F5FA8828);
  v58 = v16;
  sub_1E5E1DEAC(a1, v16);
  sub_1E5DFD1CC(v21, &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073988, &unk_1E65F72F0);
  v59 = *a4;
  v62 = a4[3];
  v75 = a4[5];
  v60 = a4[7];
  v61 = a4[9];
  v26 = *(v67 + 80);
  v27 = (v26 + 16) & ~v26;
  v67 = v27 + v15;
  v63 = v27;
  v65 = v26 | 7;
  v28 = (v27 + v15 + *(v64 + 80)) & ~*(v64 + 80);
  v29 = (v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1E5E1E5F8(v16, v30 + v27, type metadata accessor for AppComposer);
  sub_1E5FAB460(v56, v30 + v28, &qword_1ED073988, &unk_1E65F72F0);
  *(v30 + v29) = v57;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = *(a4 + 4);
  v31[3] = *(a4 + 3);
  v31[4] = v32;
  v33 = *(a4 + 2);
  v31[1] = *(a4 + 1);
  v31[2] = v33;
  *v31 = *a4;
  swift_unknownObjectRetain();

  v34 = v76;
  sub_1E65DE458();
  sub_1E5DFE50C(v21, &qword_1ED073988, &unk_1E65F72F0);
  v35 = v58;
  sub_1E5E1DEAC(v66, v58);
  sub_1E5DF650C(v70, v79);
  v36 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_1E5E1E5F8(v35, v37 + v63, type metadata accessor for AppComposer);
  v38 = (v37 + v36);
  v39 = *(a4 + 3);
  v38[2] = *(a4 + 2);
  v38[3] = v39;
  v38[4] = *(a4 + 4);
  v40 = *(a4 + 1);
  *v38 = *a4;
  v38[1] = v40;
  sub_1E5DF599C(v79, v37 + ((v36 + 87) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v41 = v78;
  sub_1E65DE578();
  v42 = v77[2];
  v43 = v68;
  v44 = v69;
  v42(v68, v34, v69);
  v45 = v71;
  v46 = v72;
  v47 = *(v72 + 16);
  v48 = v41;
  v49 = v73;
  v47(v71, v48, v73);
  v50 = v74;
  v42(v74, v43, v44);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073990, &unk_1E65F7300);
  v47(&v50[*(v51 + 48)], v45, v49);
  v52 = *(v46 + 8);
  v52(v78, v49);
  v53 = v77[1];
  v53(v76, v44);
  v52(v45, v49);
  return (v53)(v43, v44);
}

uint64_t sub_1E62E5D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a3;
  v39 = a4;
  v35 = a2;
  v36 = a1;
  v40 = a6;
  v37 = sub_1E65D76F8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  *v17 = v35;
  *(v17 + 1) = a3;
  v17[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v36, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DFD1CC(v17, v15, &unk_1ED0776E0, &qword_1E65EDC00);
  v18 = v37;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v37);
  v19 = a5[3];
  v33 = *a5;
  v34 = v19;
  v20 = a5[7];
  v35 = a5[5];
  v36 = v20;
  v39 = a5[9];
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = (v11 + *(v30 + 80) + v21) & ~*(v30 + 80);
  v23 = (v13 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  sub_1E5E1E5F8(v29, v24 + v21, type metadata accessor for AppComposer);
  sub_1E5FAB460(v15, v24 + v22, &unk_1ED0776E0, &qword_1E65EDC00);
  (*(v8 + 32))(v24 + v23, v31, v18);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a5 + 3);
  v25[2] = *(a5 + 2);
  v25[3] = v26;
  v25[4] = *(a5 + 4);
  v27 = *(a5 + 1);
  *v25 = *a5;
  v25[1] = v27;
  sub_1E604C89C();

  swift_unknownObjectRetain();

  sub_1E65DE4E8();
  return sub_1E5DFE50C(v17, &unk_1ED0776E0, &qword_1E65EDC00);
}

uint64_t sub_1E62E6154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - v2;
  v4 = sub_1E65E4548();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E49F8();
  sub_1E65E4498();
  sub_1E65E44B8();

  (*(v5 + 104))(v8, *MEMORY[0x1E6980EA8], v4);
  v10 = sub_1E65E4578();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v12 = sub_1E65E49C8();
  v13 = swift_getKeyPath();
  v17[2] = v9;
  v17[3] = v9;
  v17[4] = KeyPath;
  v17[5] = v10;
  v17[6] = v13;
  v17[7] = v12;
  v14 = *MEMORY[0x1E697E6E8];
  v15 = sub_1E65E3DD8();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_1E62F89B8(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
  result = sub_1E65E5B98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D80, &qword_1E65EDC48);
    sub_1E604C584();
    v17[1] = KeyPath;
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E65E4848();
    sub_1E5DFE50C(v3, &unk_1ED0776B0, &unk_1E65EDE50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E62E647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;

  sub_1E64B80F8(0, 0, v9, &unk_1E65FB358, v11);
}

uint64_t sub_1E62E65AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E62E65D0, 0, 0);
}

uint64_t sub_1E62E65D0()
{
  *(v0 + 72) = 0;
  *(v0 + 40) = sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E666C, v2, v1);
}

uint64_t sub_1E62E666C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E66E0, 0, 0);
}

uint64_t sub_1E62E66E0()
{
  v1 = *(v0 + 40);
  *(v0 + 76) = 0;
  *(v0 + 72) = 0;
  *(v0 + 78) = 1;
  *(v0 + 56) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E677C, v3, v2);
}

uint64_t sub_1E62E677C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E67F0, 0, 0);
}

uint64_t sub_1E62E67F0()
{
  v1 = *(v0 + 40);
  *(v0 + 72) = 0;
  *(v0 + 64) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E6880, v3, v2);
}

uint64_t sub_1E62E6880()
{
  v1 = v0[8];
  v2 = v0[4];

  sub_1E65E4EE8();
  v3 = v0[1];

  return v3();
}

char *sub_1E62E68EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v348 = a4;
  v352 = a3;
  v278 = a1;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v332 = *(v333 - 8);
  v8 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v333);
  v331 = &v261 - v9;
  v330 = sub_1E65DED38();
  v329 = *(v330 - 8);
  v10 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v330);
  v328 = &v261 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v327 = &v261 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v326 = &v261 - v17;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v323 = *(v324 - 8);
  v18 = *(v323 + 64);
  MEMORY[0x1EEE9AC00](v324);
  v321 = &v261 - v19;
  v322 = sub_1E65E15B8();
  v320 = *(v322 - 8);
  v20 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v322);
  v319 = &v261 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v317 = *(v318 - 8);
  v22 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v318);
  v316 = &v261 - v23;
  v312 = sub_1E65E3F88();
  v311 = *(v312 - 8);
  v24 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v312);
  v310 = &v261 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v267 = *(v26 - 8);
  v27 = *(v267 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v269 = &v261 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v290 = &v261 - v30;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v302 = *(v303 - 8);
  v31 = *(v302 + 64);
  v32 = MEMORY[0x1EEE9AC00](v303);
  v272 = &v261 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v298 = &v261 - v34;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v297 = *(v274 - 8);
  v35 = *(v297 + 64);
  v36 = MEMORY[0x1EEE9AC00](v274);
  v273 = &v261 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v336 = &v261 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073938, &unk_1E65F72A0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v288 = &v261 - v41;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v335 = *(v287 - 8);
  v42 = *(v335 + 64);
  v43 = MEMORY[0x1EEE9AC00](v287);
  v263 = &v261 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = v44;
  MEMORY[0x1EEE9AC00](v43);
  v293 = &v261 - v45;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v264 = *(v286 - 8);
  v46 = *(v264 + 64);
  v47 = MEMORY[0x1EEE9AC00](v286);
  v266 = &v261 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = v48;
  MEMORY[0x1EEE9AC00](v47);
  v357 = (&v261 - v49);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FD0, &qword_1E65FB1E8);
  v50 = *(*(v300 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v300);
  v291 = &v261 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v295 = &v261 - v53;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FD8, &qword_1E65FB1F0);
  v299 = *(v307 - 8);
  v54 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v307);
  v296 = &v261 - v55;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FE0, &qword_1E65FB1F8);
  v308 = *(v309 - 8);
  v56 = *(v308 + 64);
  MEMORY[0x1EEE9AC00](v309);
  v306 = &v261 - v57;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FE8, &qword_1E65FB200);
  v304 = *(v305 - 8);
  v58 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v305);
  v301 = &v261 - v59;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772D0, &qword_1E65F9900);
  v60 = *(*(v346 - 8) + 64);
  MEMORY[0x1EEE9AC00](v346);
  v313 = &v261 - v61;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772B0, &qword_1E65F98F0);
  v62 = *(*(v314 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v314);
  v315 = &v261 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v325 = &v261 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AF0, &qword_1E65F77B0);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v284 = &v261 - v68;
  v69 = sub_1E65D76F8();
  v361 = *(v69 - 8);
  v362 = v69;
  v334 = *(v361 + 64);
  v70 = MEMORY[0x1EEE9AC00](v69);
  v347 = &v261 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v359 = &v261 - v72;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v282 = *(v283 - 8);
  v73 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v339 = &v261 - v74;
  v75 = type metadata accessor for AppComposer();
  v76 = *(v75 - 8);
  v77 = *(v76 + 64);
  v78 = MEMORY[0x1EEE9AC00](v75 - 8);
  v360 = (&v261 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v261 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v358 = (&v261 - v83);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v277 = *(v338 - 8);
  v84 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v338);
  v337 = &v261 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v356 = *(v86 - 8);
  v345 = *(v356 + 64);
  v87 = MEMORY[0x1EEE9AC00](v86);
  v344 = &v261 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v261 - v89;
  v351 = (&v261 - v89);
  *v90 = a1;
  *(v90 + 1) = a2;
  v276 = a2;
  v90[16] = 0;
  swift_storeEnumTagMultiPayload();
  v341 = *v4;
  sub_1E5E1DEAC(v4, v80);
  v91 = *(v76 + 80);
  v92 = (v91 + 16) & ~v91;
  v261 = v77;
  v93 = v92 + v77;
  v285 = v91;
  v94 = v91 | 7;
  v350 = swift_allocObject();
  sub_1E5E1E5F8(v80, v350 + v92, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v5, v80);
  v95 = swift_allocObject();
  sub_1E5E1E5F8(v80, v95 + v92, type metadata accessor for AppComposer);
  v363 = v5;
  sub_1E5E1DEAC(v5, v80);
  v353 = v93;
  v349 = v94;
  v96 = swift_allocObject();
  v354 = v92;
  v343 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v80, v96 + v92, type metadata accessor for AppComposer);
  v97 = swift_allocObject();
  *(v97 + 16) = &unk_1E65F7190;
  *(v97 + 24) = v96;
  v355 = v80;
  sub_1E5E1DEAC(v5, v80);
  v98 = swift_allocObject();
  sub_1E5E1E5F8(v80, v98 + v92, type metadata accessor for AppComposer);
  v99 = sub_1E604BABC();

  sub_1E65DED58();
  v340 = v99;
  sub_1E65DEAC8();
  v100 = v351;
  v101 = v344;
  sub_1E5DFD1CC(v351, v344, &qword_1ED072AA8, &unk_1E65FA900);
  v103 = v361;
  v102 = v362;
  v358 = *(v361 + 16);
  v350 = v361 + 16;
  v104 = v359;
  v358(v359, v352, v362);
  v342 = *(v356 + 80);
  v105 = (v342 + 16) & ~v342;
  v356 = v105 + v345;
  v106 = *(v103 + 80);
  v107 = (v105 + v345 + v106) & ~v106;
  v108 = v107 + v334;
  v279 = v106;
  v109 = swift_allocObject();
  sub_1E5FAB460(v101, v109 + v105, &qword_1ED072AA8, &unk_1E65FA900);
  v110 = *(v361 + 32);
  v281 = v361 + 32;
  v280 = v110;
  v110(v109 + v107, v104, v102);
  *(v109 + v108) = 0;
  sub_1E5DFD1CC(v100, v101, &qword_1ED072AA8, &unk_1E65FA900);
  v111 = swift_allocObject();
  sub_1E5FAB460(v101, v111 + v105, &qword_1ED072AA8, &unk_1E65FA900);
  v112 = type metadata accessor for AppFeature();
  v113 = sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v275 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  v294 = v112;
  v292 = v113;
  sub_1E65E4DE8();
  v114 = v355;
  sub_1E5E1DEAC(v363, v355);
  v115 = v348;
  v116 = *v348;
  v289 = v348[1];
  v117 = v348[3];
  v356 = v348[5];
  v118 = v348[7];
  v119 = v348[9];
  v120 = v344;
  sub_1E5DFD1CC(v351, v344, &qword_1ED072AA8, &unk_1E65FA900);
  v121 = (v353 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = (v121 + v342 + 80) & ~v342;
  v123 = swift_allocObject();
  sub_1E5E1E5F8(v114, v123 + v354, v343);
  v124 = (v123 + v121);
  v125 = *(v115 + 3);
  v124[2] = *(v115 + 2);
  v124[3] = v125;
  v124[4] = *(v115 + 4);
  v126 = *(v115 + 1);
  *v124 = *v115;
  v124[1] = v126;
  sub_1E5FAB460(v120, v123 + v122, &qword_1ED072AA8, &unk_1E65FA900);
  v342 = v116;
  swift_unknownObjectRetain();
  v343 = v117;

  v344 = v118;

  v345 = v119;

  sub_1E65E4CC8();
  v127 = swift_allocObject();
  *(v127 + 16) = sub_1E62E945C;
  *(v127 + 24) = v123;

  v128 = v337;
  v129 = v339;
  v130 = v338;
  v341 = sub_1E65E4F08();

  (*(v282 + 8))(v129, v283);
  (*(v277 + 8))(v128, v130);
  sub_1E5DFE50C(v351, &qword_1ED072AA8, &unk_1E65FA900);
  v131 = sub_1E65E07B8();
  v132 = v284;
  (*(*(v131 - 8) + 56))(v284, 1, 1, v131);
  v133 = v132;
  v134 = v132;
  v136 = v362;
  v135 = v363;
  v137 = sub_1E6375DA0(0xD000000000000018, 0x80000001E66154E0, v133, v115);
  sub_1E5DFE50C(v134, &qword_1ED076AF0, &qword_1E65F77B0);
  v138 = v135;
  sub_1E5E1DEAC(v135, v360);
  v358(v347, v352, v136);
  v139 = v357;
  v140 = v276;
  *v357 = v278;
  v139[1] = v140;
  *(v139 + 16) = 0;
  swift_storeEnumTagMultiPayload();

  v141 = v288;
  sub_1E61845B4(v288);
  v142 = v141;
  if ((*(v335 + 48))(v141, 1, v287) == 1)
  {

    sub_1E5DFE50C(v357, &qword_1ED073958, &qword_1E65EDCD0);
    sub_1E5DFE50C(v141, &qword_1ED073938, &unk_1E65F72A0);
    v143 = 1;
    v144 = v291;
  }

  else
  {
    v338 = ~v285;
    v145 = v279;
    v337 = ~v279;
    v146 = v293;
    sub_1E5FAB460(v142, v293, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5E1DEAC(v138, v355);
    v339 = v137;
    v147 = v263;
    sub_1E5DFD1CC(v146, v263, &qword_1ED073940, &qword_1E65EDCC8);
    v358(v359, v352, v136);
    v148 = (v353 + *(v335 + 80)) & ~*(v335 + 80);
    v149 = v148 + v262;
    v150 = v145;
    v151 = (v145 + v148 + v262 + 1) & ~v145;
    v335 = v349 | v150;
    v334 += 7;
    v152 = (v334 + v151) & 0xFFFFFFFFFFFFFFF8;
    v153 = swift_allocObject();
    v351 = type metadata accessor for AppComposer;
    v154 = v355;
    sub_1E5E1E5F8(v355, v153 + v354, type metadata accessor for AppComposer);
    sub_1E5FAB460(v147, v153 + v148, &qword_1ED073940, &qword_1E65EDCC8);
    *(v153 + v149) = 1;
    v155 = v359;
    v280(v153 + v151, v359, v136);
    v156 = (v153 + v152);
    v157 = *(v115 + 3);
    v156[2] = *(v115 + 2);
    v156[3] = v157;
    v156[4] = *(v115 + 4);
    v158 = *(v115 + 1);
    *v156 = *v115;
    v156[1] = v158;
    swift_unknownObjectRetain();

    sub_1E65DE528();
    v159 = v290;
    sub_1E6184404(v290);
    v160 = v154;
    sub_1E5E1DEAC(v363, v154);
    v161 = v269;
    sub_1E5DFD1CC(v159, v269, &qword_1ED073950, &unk_1E65F4360);
    v358(v155, v352, v136);
    v162 = (v353 + *(v267 + 80)) & ~*(v267 + 80);
    v163 = (v268 + v279 + v162) & v337;
    v164 = (v334 + v163) & 0xFFFFFFFFFFFFFFF8;
    v165 = swift_allocObject();
    sub_1E5E1E5F8(v160, v165 + v354, v351);
    sub_1E5FAB460(v161, v165 + v162, &qword_1ED073950, &unk_1E65F4360);
    v280(v165 + v163, v155, v136);
    v166 = (v165 + v164);
    v167 = *(v115 + 3);
    v166[2] = *(v115 + 2);
    v166[3] = v167;
    v166[4] = *(v115 + 4);
    v168 = *(v115 + 1);
    *v166 = *v115;
    v166[1] = v168;
    v169 = (v165 + ((v164 + 87) & 0xFFFFFFFFFFFFFFF8));
    v170 = v339;
    *v169 = sub_1E62F179C;
    v169[1] = v170;
    swift_unknownObjectRetain();

    v171 = v298;
    sub_1E65DE518();
    sub_1E5DFE50C(v290, &qword_1ED073950, &unk_1E65F4360);
    v172 = v363;
    v173 = v355;
    sub_1E5E1DEAC(v363, v355);
    v174 = v266;
    sub_1E5DFD1CC(v357, v266, &qword_1ED073958, &qword_1E65EDCD0);
    v175 = (v353 + *(v264 + 80)) & ~*(v264 + 80);
    v176 = swift_allocObject();
    v352 = v176;
    sub_1E5E1E5F8(v173, v176 + v354, v351);
    sub_1E5FAB460(v174, v176 + v175, &qword_1ED073958, &qword_1E65EDCD0);
    v177 = v302;
    v178 = v272;
    v179 = v303;
    (*(v302 + 16))(v272, v171, v303);
    v180 = v177;
    v181 = (*(v177 + 80) + 16) & ~*(v177 + 80);
    v337 = swift_allocObject();
    (*(v180 + 32))(v337 + v181, v178, v179);
    v182 = v297;
    v335 = *(v297 + 16);
    v183 = v273;
    v184 = v336;
    v185 = v274;
    (v335)(v273, v336, v274);
    sub_1E5E1DEAC(v172, v173);
    v186 = v182;
    v187 = (*(v182 + 80) + 16) & ~*(v182 + 80);
    v334 = v187 + v270;
    v188 = (v187 + v270 + v285) & v338;
    v189 = swift_allocObject();
    v190 = *(v186 + 32);
    v338 = v189;
    v190(v189 + v187, v183, v185);
    v191 = v189 + v188;
    v192 = v355;
    v193 = v351;
    sub_1E5E1E5F8(v355, v191, v351);
    (v335)(v183, v184, v185);
    v194 = swift_allocObject();
    v190(v194 + v187, v183, v185);
    sub_1E5E1DEAC(v363, v192);
    v195 = swift_allocObject();
    sub_1E5E1E5F8(v192, v195 + v354, v193);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078018, &qword_1E65FB300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078020, &qword_1E65FB308);
    sub_1E604CB00();
    sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0);
    sub_1E62F1A7C();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0);
    swift_getOpaqueTypeConformance2();
    v196 = v303;
    v144 = v291;
    sub_1E65DE8A8();
    v137 = v339;

    (*(v302 + 8))(v298, v196);
    (*(v297 + 8))(v336, v185);
    sub_1E5DFE50C(v293, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5DFE50C(v357, &qword_1ED073958, &qword_1E65EDCD0);
    v143 = 0;
  }

  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FF0, &qword_1E65FB208);
  (*(*(v197 - 8) + 56))(v144, v143, 1, v197);
  v198 = v144;
  v199 = v295;
  sub_1E5FAB460(v198, v295, &qword_1ED077FD0, &qword_1E65FB1E8);
  v200 = v310;
  sub_1E65E3F78();
  v201 = sub_1E62F17A4();
  v202 = sub_1E62F89B8(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
  v203 = v296;
  v204 = v300;
  v205 = v312;
  sub_1E65E47D8();
  (*(v311 + 8))(v200, v205);
  sub_1E5DFE50C(v199, &qword_1ED077FD0, &qword_1E65FB1E8);
  v366 = v204;
  v367 = v205;
  v368 = v201;
  v369 = v202;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v207 = sub_1E62438F0();
  v208 = v306;
  v209 = v307;
  sub_1E65E47F8();
  (*(v299 + 8))(v203, v209);
  v210 = [objc_opt_self() tertiaryLabelColor];
  v211 = sub_1E65E4968();
  v364 = 0x4008000000000000;
  v365 = v211;
  v366 = v209;
  v367 = &type metadata for NavigationBarButtonStyle;
  v368 = OpaqueTypeConformance2;
  v369 = v207;
  swift_getOpaqueTypeConformance2();
  sub_1E62F1854();
  v212 = v301;
  v213 = v309;
  sub_1E65E47C8();

  (*(v308 + 8))(v208, v213);
  v214 = v313;
  (*(v304 + 32))(v313, v212, v305);

  v215 = v316;
  sub_1E65DEE28();

  LOBYTE(v199) = sub_1E65E4448();
  sub_1E65E4478();
  sub_1E65E4478();
  v216 = sub_1E65E4478();
  v217 = v326;
  v218 = v346;
  if (v216 != v199)
  {
    sub_1E65E4478();
  }

  v219 = *(v218 + 52);
  v220 = v319;
  sub_1E65E15A8();
  v221 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
  v222 = v321;
  v223 = v318;
  MEMORY[0x1E69482C0](v215, v318, v221);
  v366 = v223;
  v367 = v221;
  swift_getOpaqueTypeConformance2();
  sub_1E62F89B8(&qword_1ED078010, MEMORY[0x1E699E8C8]);
  v224 = v324;
  v225 = v322;
  sub_1E65E08A8();
  (*(v323 + 8))(v222, v224);
  (*(v320 + 8))(v220, v225);
  (*(v317 + 8))(v215, v223);
  v226 = sub_1E65E4FD8();
  (*(*(v226 - 8) + 56))(v217, 1, 1, v226);
  v227 = v137;
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v228 = sub_1E65E5018();
  __swift_project_value_buffer(v228, qword_1EE2D49E8);
  v229 = sub_1E65E2E78();
  v230 = v327;
  (*(*(v229 - 8) + 56))(v327, 1, 1, v229);
  sub_1E5FED46C(&qword_1ED0772D8, &qword_1ED0772D0, &qword_1E65F9900);
  v231 = v325;
  sub_1E65E4728();
  sub_1E5DFE50C(v230, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v217, &qword_1ED071EF8, &unk_1E65FA470);
  sub_1E5DFE50C(v214, &qword_1ED0772D0, &qword_1E65F9900);
  v232 = swift_allocObject();
  v233 = v348;
  v234 = *(v348 + 3);
  v232[3] = *(v348 + 2);
  v232[4] = v234;
  v232[5] = v233[4];
  v235 = v233[1];
  v232[1] = *v233;
  v232[2] = v235;
  v236 = (v231 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772C8, &qword_1E65F98F8) + 36));
  *v236 = 0;
  v236[1] = 0;
  v236[2] = sub_1E5F99E38;
  v236[3] = v232;
  v237 = swift_allocObject();
  *(v237 + 16) = v341;
  *(v237 + 24) = v227;
  v238 = (v231 + *(v314 + 36));
  *v238 = sub_1E62F18A8;
  v238[1] = v237;
  v239 = type metadata accessor for DynamicBarButtonItem();
  v238[2] = 0;
  v238[3] = 0;
  v240 = objc_allocWithZone(v239);
  v241 = *v360;
  swift_unknownObjectRetain();

  v242 = v328;
  sub_1E65DED28();
  sub_1E62F89B8(&qword_1EE2D6820, MEMORY[0x1E699CD98]);
  v243 = v331;
  v244 = v330;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v332 + 8))(v243, v333);
  (*(v329 + 8))(v242, v244);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  v246 = *(v245 + 48);
  v247 = *(v245 + 52);
  swift_allocObject();
  *&v240[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v248 = v359;
  v249 = v347;
  v250 = v362;
  v358(v359, v347, v362);
  v251 = v315;
  sub_1E5DFD1CC(v231, v315, &qword_1ED0772B0, &qword_1E65F98F0);
  v252 = sub_1E625C02C(v248, v251);
  v253 = OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver;
  v254 = *&v252[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver];
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v256 = v252;

  sub_1E65E4D08();

  v257 = *&v252[v253];
  v258 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v258);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E62F89B8(&qword_1EE2D6840, MEMORY[0x1E699CD20]);
  sub_1E65E4D08();

  v259 = *&v252[v253];

  sub_1E65E4CF8();

  sub_1E62F87D0(v360, type metadata accessor for AppComposer);

  sub_1E5DFE50C(v231, &qword_1ED0772B0, &qword_1E65F98F0);
  (*(v361 + 8))(v249, v250);
  return v256;
}

uint64_t sub_1E62E9484@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v24[0] = sub_1E65DEBD8();
  v1 = *(v24[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v24[0]);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  v16 = *(type metadata accessor for AppState() + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v8, &qword_1ED072808, &qword_1E65EBE00);
  sub_1E5FAB460(v15, v13, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = *v13;
LABEL_7:
    v18 = v24[0];
    goto LABEL_9;
  }

  v18 = v24[0];
  if (EnumCaseMultiPayload == 1)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v20 = *v13;
    v21 = sub_1E65D76A8();
    (*(*(v21 - 8) + 8))(&v13[v19], v21);
  }

  else
  {
    sub_1E5DFE50C(v13, &unk_1ED077CC0, &unk_1E65F2610);
  }

LABEL_9:
  sub_1E63969B4();
  (*(v1 + 104))(v4, *MEMORY[0x1E699CD10], v18);
  return sub_1E65DEBA8();
}

uint64_t sub_1E62E97A0()
{
  v0 = sub_1E65E1578();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E62F87D0(v3, MEMORY[0x1E699E8A8]);
}

uint64_t sub_1E62E9840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_1E64B80F8(0, 0, v7, &unk_1E65FB318, v9);
}

uint64_t sub_1E62E9958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65E1578();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62E99EC, 0, 0);
}

uint64_t sub_1E62E99EC()
{
  *(v0 + 76) = 0;
  *(v0 + 72) = 0;
  *(v0 + 78) = 1;
  *(v0 + 48) = sub_1E65E6058();
  *(v0 + 56) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E9A94, v2, v1);
}

uint64_t sub_1E62E9A94()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E9B08, 0, 0);
}

uint64_t sub_1E62E9B08()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  swift_storeEnumTagMultiPayload();
  v0[8] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E9BA0, v5, v4);
}

uint64_t sub_1E62E9BA0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];

  sub_1E65E4EE8();
  sub_1E62F87D0(v2, MEMORY[0x1E699E8A8]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E62E9C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a3;
  v153 = a2;
  v146 = a1;
  v164 = a4;
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v163 = (v4 - 8);
  v136 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v137 = v7;
  v139 = &v120[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078070, &qword_1E65FB4C8);
  v132 = *(v134 - 8);
  v8 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v148 = &v120[-v9];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078078, &qword_1E65FB4D0);
  v135 = *(v140 - 8);
  v10 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v133 = &v120[-v11];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078080, &qword_1E65FB4D8);
  v141 = *(v142 - 8);
  v12 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v145 = &v120[-v13];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078088, &qword_1E65FB4E0);
  v151 = *(v152 - 8);
  v14 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v138 = &v120[-v15];
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v143 = *(v144 - 8);
  v16 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v120[-v17];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078090, &qword_1E65FB4E8);
  v18 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v150 = &v120[-v19];
  v156 = sub_1E65DA2A8();
  v162 = *(v156 - 8);
  v20 = *(v162 + 64);
  v21 = MEMORY[0x1EEE9AC00](v156);
  OpaqueTypeConformance2 = &v120[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v160 = &v120[-v23];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078098, &qword_1E65FB4F0);
  v24 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v120[-v25];
  v26 = type metadata accessor for BrowsingIdentity(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v161 = &v120[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780A0, &qword_1E65FB4F8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v158 = &v120[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780A8, &qword_1E65FB500);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v120[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780B0, &qword_1E65FB508);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v120[-v38];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780B8, &qword_1E65FB510);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v120[-v42];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780C0, &qword_1E65FB518);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v120[-v46];
  v48 = sub_1E65D76F8();
  v167 = *(v48 - 8);
  v168 = v48;
  v49 = *(v167 + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v50);
  v166 = &v120[-v51];
  sub_1E65D76E8();
  v52 = *(v165 + *(v163 + 7) + 8);
  if (v52 < 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E62F8830();
    sub_1E65E4138();
    sub_1E5DFD1CC(v43, v35, &qword_1ED0780B8, &qword_1E65FB510);
    swift_storeEnumTagMultiPayload();
    sub_1E62F8860(&qword_1ED0780F8, &qword_1ED0780B8, &qword_1E65FB510, sub_1E62F8830);
    sub_1E65E4138();
    sub_1E5DFE50C(v43, &qword_1ED0780B8, &qword_1E65FB510);
    v53 = v164;
LABEL_15:
    sub_1E5FAB460(v47, v53, &qword_1ED0780C0, &qword_1E65FB518);
    return (*(v167 + 8))(v166, v168);
  }

  v123 = v49;
  v124 = &v120[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = v36;
  v126 = v39;
  v127 = v29;
  v129 = v40;
  v163 = v43;
  v131 = v35;
  v128 = v47;
  v130 = v32;
  if (v52 == 3)
  {
    v54 = *v165;
    swift_getKeyPath();
    v55 = v161;
    sub_1E65E4EC8();

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    v57 = (*(*(v56 - 8) + 48))(v55, 1, v56);
    v58 = v131;
    v59 = v162;
    v60 = OpaqueTypeConformance2;
    if (v57 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1E62F84BC();
      v61 = v158;
      sub_1E65E4138();
      v62 = v163;
      v63 = v164;
    }

    else
    {
      v64 = v156;
      (*(v162 + 32))(v160, &v55[*(v56 + 48)], v156);
      sub_1E65DA258();
      sub_1E62F89B8(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
      v65 = sub_1E65E6718();
      v68 = *(v59 + 8);
      v66 = v59 + 8;
      v67 = v68;
      v68(v60, v64);
      v62 = v163;
      v122 = v68;
      if (v65)
      {
        v121 = 1;
      }

      else
      {
        sub_1E65DA268();
        v121 = sub_1E65E6718();
        v67(v60, v64);
      }

      v69 = v153;
      v70 = v148;
      v71 = v147;
      v162 = v66;
      swift_getKeyPath();
      sub_1E65E4EC8();

      v72 = sub_1E6396BE8();
      v73 = (*(v143 + 8))(v71, v144);
      v74 = 1;
      if (v72)
      {
        v75 = v152;
        v76 = v151;
        v77 = v150;
        v78 = v160;
        if (v121)
        {
          OpaqueTypeConformance2 = v120;
          v79 = MEMORY[0x1EEE9AC00](v73);
          v80 = v165;
          v81 = v166;
          *&v120[-48] = v78;
          *&v120[-40] = v80;
          *&v120[-32] = v146;
          *&v120[-24] = v69;
          v119 = v149;
          MEMORY[0x1EEE9AC00](v79);
          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078100, &qword_1E65FB570);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078108, &qword_1E65FB578);
          sub_1E62F88FC();
          sub_1E5FED46C(&qword_1ED078120, &qword_1ED078108, &qword_1E65FB578);
          sub_1E65E45C8();
          sub_1E65E4B58();
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780D0, &qword_1E65FB568);
          v83 = sub_1E5FED46C(&qword_1ED0780D8, &qword_1ED078070, &qword_1E65FB4C8);
          v84 = sub_1E62F8698();
          v85 = MEMORY[0x1E6981CD8];
          v86 = MEMORY[0x1E6981CD0];
          v118 = v84;
          v87 = v70;
          v88 = v133;
          v89 = v134;
          sub_1E65E4938();
          (*(v132 + 8))(v87, v89);
          v169 = v89;
          v170 = v85;
          v171 = v82;
          v172 = v83;
          v173 = v86;
          v174 = v84;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v148 = sub_1E62F877C();
          v90 = v140;
          sub_1E65E47E8();
          (*(v135 + 8))(v88, v90);
          v91 = v139;
          sub_1E5E1DEAC(v80, v139);
          v92 = v167;
          v93 = v124;
          v94 = v81;
          v95 = v168;
          (*(v167 + 16))(v124, v94, v168);
          v96 = v149;
          v135 = *v149;
          v143 = v149[3];
          v144 = v149[5];
          v147 = v149[7];
          v165 = v149[9];
          v97 = (*(v136 + 80) + 16) & ~*(v136 + 80);
          v98 = (v137 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
          v99 = (*(v92 + 80) + v98 + 16) & ~*(v92 + 80);
          v100 = (v123 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
          v101 = swift_allocObject();
          v102 = v91;
          v103 = v101;
          sub_1E5E1E5F8(v102, v101 + v97, type metadata accessor for AppComposer);
          v104 = (v103 + v98);
          v105 = v153;
          *v104 = v146;
          v104[1] = v105;
          v106 = *(v92 + 32);
          v107 = v103 + v99;
          v78 = v160;
          v77 = v150;
          v108 = v95;
          v62 = v163;
          v106(v107, v93, v108);
          v109 = (v103 + v100);
          v58 = v131;
          v110 = v96[3];
          v109[2] = v96[2];
          v109[3] = v110;
          v109[4] = v96[4];
          v111 = v96[1];
          *v109 = *v96;
          v109[1] = v111;

          swift_unknownObjectRetain();

          v169 = v90;
          v170 = &type metadata for WorkoutDetailActionStyle;
          v171 = OpaqueTypeConformance2;
          v172 = v148;
          swift_getOpaqueTypeConformance2();
          sub_1E604BABC();
          v112 = v138;
          v113 = v142;
          v114 = v145;
          sub_1E65E4788();

          v115 = v114;
          v116 = v113;
          v76 = v151;
          v75 = v152;
          (*(v141 + 8))(v115, v116);
          (*(v76 + 32))(v77, v112, v75);
          v74 = 0;
        }
      }

      else
      {
        v75 = v152;
        v76 = v151;
        v77 = v150;
        v78 = v160;
      }

      (*(v76 + 56))(v77, v74, 1, v75);
      sub_1E5DFD1CC(v77, v155, &qword_1ED078090, &qword_1E65FB4E8);
      swift_storeEnumTagMultiPayload();
      sub_1E62F84BC();
      v61 = v158;
      sub_1E65E4138();
      sub_1E5DFE50C(v77, &qword_1ED078090, &qword_1E65FB4E8);
      v122(v78, v156);
      sub_1E62F87D0(v161, type metadata accessor for RemoteParticipantScope);
      v63 = v164;
    }

    sub_1E5DFD1CC(v61, v126, &qword_1ED0780A0, &qword_1E65FB4F8);
    swift_storeEnumTagMultiPayload();
    sub_1E62F8830();
    sub_1E65E4138();
    sub_1E5DFD1CC(v62, v58, &qword_1ED0780B8, &qword_1E65FB510);
    swift_storeEnumTagMultiPayload();
    sub_1E62F8860(&qword_1ED0780F8, &qword_1ED0780B8, &qword_1E65FB510, sub_1E62F8830);
    v47 = v128;
    sub_1E65E4138();
    sub_1E5DFE50C(v62, &qword_1ED0780B8, &qword_1E65FB510);
    sub_1E5DFE50C(v61, &qword_1ED0780A0, &qword_1E65FB4F8);
    v53 = v63;
    goto LABEL_15;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E62EAF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v112 = a6;
  v95 = a5;
  v124 = a4;
  v118 = a3;
  v119 = a2;
  v122 = a7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v100 = *(v99 - 8);
  v8 = *(v100 + 64);
  v9 = MEMORY[0x1EEE9AC00](v99);
  v102 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v104 = (v90 - v11);
  v12 = sub_1E65DE468();
  v125 = *(v12 - 8);
  v126 = v12;
  v13 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v103 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078128, &qword_1E65FB5D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v90 - v19;
  v114 = sub_1E65D76F8();
  v94 = *(v114 - 8);
  v21 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v92 = v22;
  v109 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AppComposer();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v91 = *(v27 - 8);
  v28 = *(v91 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v105 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v108 = (v90 - v30);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v111 = *(v113 - 8);
  v31 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v93 = v90 - v32;
  v33 = sub_1E65DA2A8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078130, &qword_1E65FB5E0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v116 = v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v123 = v90 - v42;
  sub_1E65DA258();
  v43 = sub_1E62F89B8(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
  v117 = a1;
  v107 = v43;
  LOBYTE(a1) = sub_1E65E6718();
  v44 = *(v34 + 8);
  v110 = v33;
  v115 = v34 + 8;
  v106 = v44;
  v44(v37, v33);
  v120 = v20;
  v98 = v26;
  v97 = v25;
  v96 = v24;
  if (a1)
  {
    v45 = v108;
    v46 = v124;
    *v108 = v118;
    v45[1] = v46;
    *(v45 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1E5E1DEAC(v119, v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1E5DFD1CC(v45, v105, &qword_1ED073950, &unk_1E65F4360);
    v47 = v94;
    (*(v94 + 16))(v109, v95, v114);
    v48 = v112;
    v90[1] = *v112;
    v90[2] = v112[3];
    v90[3] = v112[5];
    v90[4] = v112[7];
    v95 = v112[9];
    v49 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v50 = (v25 + *(v91 + 80) + v49) & ~*(v91 + 80);
    v51 = (v28 + *(v47 + 80) + v50) & ~*(v47 + 80);
    v52 = (v92 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    sub_1E5E1E5F8(v26, v53 + v49, type metadata accessor for AppComposer);
    sub_1E5FAB460(v105, v53 + v50, &qword_1ED073950, &unk_1E65F4360);
    (*(v47 + 32))(v53 + v51, v109, v114);
    v54 = (v53 + v52);
    v55 = *(v48 + 3);
    v54[2] = *(v48 + 2);
    v54[3] = v55;
    v54[4] = *(v48 + 4);
    v56 = *(v48 + 1);
    *v54 = *v48;
    v54[1] = v56;
    v57 = (v53 + ((v52 + 87) & 0xFFFFFFFFFFFFFFF8));
    *v57 = nullsub_1;
    v57[1] = 0;
    sub_1E604BABC();
    v58 = v124;

    swift_unknownObjectRetain();

    v59 = v93;
    v20 = v120;
    sub_1E65DE518();
    sub_1E5DFE50C(v108, &qword_1ED073950, &unk_1E65F4360);
    v60 = v111;
    v61 = v123;
    v62 = v59;
    v63 = v113;
    (*(v111 + 32))(v123, v62, v113);
    v64 = 0;
    v65 = v58;
    v66 = v63;
    v67 = v60;
  }

  else
  {
    v64 = 1;
    v61 = v123;
    v65 = v124;
    v48 = v112;
    v66 = v113;
    v67 = v111;
  }

  v68 = 1;
  (*(v67 + 56))(v61, v64, 1, v66);
  sub_1E65DA268();
  v69 = v110;
  v70 = sub_1E65E6718();
  v106(v37, v69);
  if (v70)
  {
    v71 = v104;
    *v104 = v118;
    *(v71 + 8) = v65;
    swift_storeEnumTagMultiPayload();

    v115 = sub_1E5F9B258(&unk_1F5FA8850);
    v72 = v98;
    sub_1E5E1DEAC(v119, v98);
    v73 = v102;
    sub_1E5DFD1CC(v71, v102, &qword_1ED073988, &unk_1E65F72F0);
    v74 = *v48;
    v75 = v48[5];
    v117 = v48[3];
    v118 = v75;
    v119 = v48[7];
    v124 = v48[9];
    v76 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v77 = (v97 + *(v100 + 80) + v76) & ~*(v100 + 80);
    v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    sub_1E5E1E5F8(v72, v79 + v76, type metadata accessor for AppComposer);
    v80 = v73;
    v61 = v123;
    sub_1E5FAB460(v80, v79 + v77, &qword_1ED073988, &unk_1E65F72F0);
    *(v79 + v78) = v115;
    v81 = (v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8));
    v82 = *(v48 + 4);
    v81[3] = *(v48 + 3);
    v81[4] = v82;
    v83 = *(v48 + 2);
    v81[1] = *(v48 + 1);
    v81[2] = v83;
    *v81 = *v48;
    v20 = v120;
    swift_unknownObjectRetain();

    v84 = v103;
    sub_1E65DE458();
    sub_1E5DFE50C(v71, &qword_1ED073988, &unk_1E65F72F0);
    (*(v125 + 32))(v20, v84, v126);
    v68 = 0;
  }

  (*(v125 + 56))(v20, v68, 1, v126);
  v85 = v116;
  sub_1E5DFD1CC(v61, v116, &qword_1ED078130, &qword_1E65FB5E0);
  v86 = v121;
  sub_1E5DFD1CC(v20, v121, &qword_1ED078128, &qword_1E65FB5D8);
  v87 = v122;
  sub_1E5DFD1CC(v85, v122, &qword_1ED078130, &qword_1E65FB5E0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078138, &qword_1E65FB5E8);
  sub_1E5DFD1CC(v86, v87 + *(v88 + 48), &qword_1ED078128, &qword_1E65FB5D8);
  sub_1E5DFE50C(v20, &qword_1ED078128, &qword_1E65FB5D8);
  sub_1E5DFE50C(v61, &qword_1ED078130, &qword_1E65FB5E0);
  sub_1E5DFE50C(v86, &qword_1ED078128, &qword_1E65FB5D8);
  return sub_1E5DFE50C(v85, &qword_1ED078130, &qword_1E65FB5E0);
}

__n128 sub_1E62EBB04@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D7848();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E65E5C28();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E65DC268();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  sub_1E65DC278();
  sub_1E65E4BA8();
  sub_1E65E3E38();
  (*(v9 + 32))(a2, v12, v8);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078100, &qword_1E65FB570) + 36);
  v17 = v20[6];
  *(v16 + 64) = v20[5];
  *(v16 + 80) = v17;
  *(v16 + 96) = v20[7];
  v18 = v20[2];
  *v16 = v20[1];
  *(v16 + 16) = v18;
  result = v20[4];
  *(v16 + 32) = v20[3];
  *(v16 + 48) = result;
  return result;
}

uint64_t sub_1E62EBDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780D0, &qword_1E65FB568) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60) + 28);
  sub_1E65E3E48();
  *v4 = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078070, &qword_1E65FB4C8);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_1E62EBE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v79 = a5;
  v77 = a4;
  v63 = a3;
  v8 = sub_1E65D76F8();
  v74 = *(v8 - 8);
  v75 = v8;
  v76 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v63 - v12;
  v13 = type metadata accessor for AppComposer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = &v63 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v80 = *(v86 - 8);
  v20 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v67 = *(v22 - 8);
  v84 = *(v67 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v64 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - v25;
  v83 = &v63 - v25;
  *v26 = a2;
  *(v26 + 1) = a3;
  v26[16] = 0;
  swift_storeEnumTagMultiPayload();
  v78 = *a1;
  sub_1E5E1DEAC(a1, v16);
  v27 = *(v14 + 80);
  v28 = ((v27 + 16) & ~v27) + v15;
  v29 = (v27 + 16) & ~v27;
  v30 = v27 | 7;
  v31 = swift_allocObject();
  sub_1E5E1E5F8(v16, v31 + v29, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(a1, v16);
  v32 = swift_allocObject();
  sub_1E5E1E5F8(v16, v32 + v29, type metadata accessor for AppComposer);
  v66 = a1;
  sub_1E5E1DEAC(a1, v16);
  v68 = v28;
  v70 = v30;
  v33 = swift_allocObject();
  v71 = v29;
  v72 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v16, v33 + v29, type metadata accessor for AppComposer);
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_1E65FB590;
  *(v34 + 24) = v33;
  v65 = v16;
  sub_1E5E1DEAC(a1, v16);
  v35 = swift_allocObject();
  sub_1E5E1E5F8(v16, v35 + v29, type metadata accessor for AppComposer);
  sub_1E604BABC();

  sub_1E65DED58();
  sub_1E65DEAC8();
  v36 = v83;
  v37 = v64;
  sub_1E5DFD1CC(v83, v64, &qword_1ED072AA8, &unk_1E65FA900);
  v39 = v73;
  v38 = v74;
  v40 = v75;
  (*(v74 + 16))(v73, v77, v75);
  v77 = *(v67 + 80);
  v41 = (v77 + 16) & ~v77;
  v69 = (v41 + v84);
  v42 = (v41 + v84 + *(v38 + 80)) & ~*(v38 + 80);
  v43 = v42 + v76;
  v44 = swift_allocObject();
  sub_1E5FAB460(v37, v44 + v41, &qword_1ED072AA8, &unk_1E65FA900);
  (*(v38 + 32))(v44 + v42, v39, v40);
  *(v44 + v43) = 0;
  sub_1E5DFD1CC(v36, v37, &qword_1ED072AA8, &unk_1E65FA900);
  v45 = swift_allocObject();
  sub_1E5FAB460(v37, v45 + v41, &qword_1ED072AA8, &unk_1E65FA900);
  type metadata accessor for AppFeature();
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v76 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  sub_1E65E4DE8();
  v46 = v65;
  sub_1E5E1DEAC(v66, v65);
  v47 = v79;
  v48 = *v79;
  v49 = v79[3];
  v50 = v79[7];
  v73 = v79[5];
  v74 = v50;
  v75 = v79[9];
  sub_1E5DFD1CC(v36, v37, &qword_1ED072AA8, &unk_1E65FA900);
  v51 = (v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + v77 + 80) & ~v77;
  v53 = swift_allocObject();
  sub_1E5E1E5F8(v46, v53 + v71, v72);
  v54 = (v53 + v51);
  v55 = v47[3];
  v54[2] = v47[2];
  v54[3] = v55;
  v54[4] = v47[4];
  v56 = v47[1];
  *v54 = *v47;
  v54[1] = v56;
  sub_1E5FAB460(v37, v53 + v52, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1E62F8D0C;
  *(v57 + 24) = v53;

  v59 = v85;
  v58 = v86;
  v60 = v87;
  v61 = sub_1E65E4F08();

  (*(v81 + 8))(v60, v82);
  (*(v80 + 8))(v59, v58);
  sub_1E5DFE50C(v83, &qword_1ED072AA8, &unk_1E65FA900);
  return v61;
}

BOOL sub_1E62EC770(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v10 + 8))(v13, v9);
  sub_1E5FAB460(v8, v6, &qword_1ED075800, &unk_1E6606280);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v17 = *v6;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
      v17 = *v6;
      v18 = sub_1E65D76A8();
      (*(*(v18 - 8) + 8))(&v6[v16], v18);
LABEL_6:
      v19 = *(v17 + 16);

      return v19 != 0;
    }

    sub_1E5DFE50C(v6, &qword_1ED075800, &unk_1E6606280);
  }

  return 0;
}

uint64_t sub_1E62EC9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1E65D8E88();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62ECAB8, 0, 0);
}

uint64_t sub_1E62ECAB8()
{
  v1 = *(v0 + 16);
  *(v0 + 112) = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 116) = *(type metadata accessor for AppEnvironment() + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 48) = v3;
  v7 = (Queue + *Queue);
  v4 = Queue[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1E62ECBD4;

  return v7();
}

uint64_t sub_1E62ECBD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_1E62ED0B8;
  }

  else
  {
    v5 = sub_1E62ECCE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E62ECCE8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v4 = *(v0 + 112);
  v3 = *(v0 + 116);
  v5 = *(v0 + 16);

  Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
  v7 = Queue;
  *(v0 + 80) = v8;
  v9 = *(v1 + 16);
  v10 = *(v0 + 64);
  if (v9)
  {
    v26 = Queue;
    v11 = *(v0 + 32);
    v29 = MEMORY[0x1E69E7CC0];
    sub_1E601C9B8(0, v9, 0);
    v12 = v29;
    v27 = sub_1E65D8948();
    v13 = *(v27 - 8);
    v14 = *(v13 + 16);
    v15 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = *(v13 + 72);
    do
    {
      v17 = *(v0 + 24);
      v14(*(v0 + 40), v15, v27);
      swift_storeEnumTagMultiPayload();
      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1E601C9B8(v18 > 1, v19 + 1, 1);
      }

      v20 = *(v0 + 40);
      *(v29 + 16) = v19 + 1;
      sub_1E5E1E5F8(v20, v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, MEMORY[0x1E69CBBF0]);
      v15 += v16;
      --v9;
    }

    while (v9);
    v21 = *(v0 + 64);

    v7 = v26;
  }

  else
  {
    v22 = *(v0 + 64);

    v12 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 88) = v12;
  v28 = (v7 + *v7);
  v23 = v7[1];
  v24 = swift_task_alloc();
  *(v0 + 96) = v24;
  *v24 = v0;
  v24[1] = sub_1E62ECF64;

  return v28(v12);
}

uint64_t sub_1E62ECF64()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E62ED124, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = v3[5];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1E62ED0B8()
{
  v1 = v0[6];

  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E62ED124()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[13];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E62ED198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5E1DEAC(a1, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1E5E1E5F8(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AppComposer);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  sub_1E64B80F8(0, 0, v12, &unk_1E65FB430, v15);
}

uint64_t sub_1E62ED374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v8 = sub_1E65D8668();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = sub_1E65D74E8();
  v6[11] = v11;
  v12 = *(v11 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v6[14] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v6[16] = v16;
  v17 = *(v16 - 8);
  v6[17] = v17;
  v18 = *(v17 + 64) + 15;
  v6[18] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v6[19] = v19;
  v20 = *(v19 - 8);
  v6[20] = v20;
  v21 = *(v20 + 64) + 15;
  v6[21] = swift_task_alloc();
  v22 = sub_1E65D9658();
  v6[22] = v22;
  v23 = *(v22 - 8);
  v6[23] = v23;
  v24 = *(v23 + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62ED634, 0, 0);
}

uint64_t sub_1E62ED634()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v39 = *(v0 + 120);
  v40 = *(v0 + 128);
  v41 = *(v0 + 112);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = **(v0 + 32);
  swift_getKeyPath();
  sub_1E65E4EC8();

  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  sub_1E65E4D78();
  (*(v2 + 8))(v1, v3);
  sub_1E65E4C98();
  (*(v5 + 8))(v4, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
LABEL_13:
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v32 = *(v0 + 144);
    v33 = *(v0 + 120);
    v34 = *(v0 + 104);
    v35 = *(v0 + 80);
    v36 = *(v0 + 56);

    v37 = *(v0 + 8);

    return v37();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v25 = *(v0 + 120);
      v26 = &qword_1ED0753C0;
      v27 = &unk_1E6606290;
      goto LABEL_12;
    }

    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    v13 = *(v0 + 120);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C8, &qword_1E65F1A48) + 48);
    (*(v11 + 32))(v10, v13, v12);
    v15 = sub_1E65D76A8();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
  }

  else
  {
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 120), *(v0 + 176));
  }

  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v18 = *(v0 + 176);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v24 = *(v0 + 56);
  v23 = *(v0 + 64);
  sub_1E65D9618();
  (*(v17 + 8))(v16, v18);
  sub_1E65D8588();
  (*(v22 + 8))(v21, v23);
  if ((*(v20 + 48))(v24, 1, v19) == 1)
  {
    v25 = *(v0 + 56);
    v26 = &qword_1ED072340;
    v27 = &qword_1E65EA410;
LABEL_12:
    sub_1E5DFE50C(v25, v26, v27);
    goto LABEL_13;
  }

  (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 56), *(v0 + 88));
  *(v0 + 200) = objc_opt_self();
  *(v0 + 208) = sub_1E65E6058();
  *(v0 + 216) = sub_1E65E6048();
  v29 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62ED9AC, v29, v28);
}

uint64_t sub_1E62ED9AC()
{
  v1 = v0[27];
  v2 = v0[25];

  v0[28] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E62EDA34, 0, 0);
}

uint64_t sub_1E62EDA34()
{
  v1 = v0[26];
  v2 = v0[13];
  v0[29] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E62F89B8(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v0[30] = sub_1E65E5AF8();

  v0[31] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62EDB4C, v4, v3);
}

uint64_t sub_1E62EDB4C()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];

  [v4 openURL:v3 options:v2 completionHandler:0];

  return MEMORY[0x1EEE6DFA0](sub_1E62EDBE8, 0, 0);
}

uint64_t sub_1E62EDBE8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E62EDCEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5E1DEAC(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1E5E1E5F8(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppComposer);
  a4(0, 0, v13, a3, v16);
}

uint64_t sub_1E62EDEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E62EDEC0, 0, 0);
}

uint64_t sub_1E62EDEC0()
{
  v1 = v0[9];
  v0[10] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[11] = sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62EDF70, v3, v2);
}

uint64_t sub_1E62EDF70()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  sub_1E5E20198(27, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  v3 = swift_dynamicCast();
  *(v0 + 120) = v3;
  if (v3)
  {
    *(v0 + 104) = *(v0 + 56);
    v4 = sub_1E62EE074;
  }

  else
  {
    v4 = sub_1E62EE04C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E62EE074()
{
  v1 = *(v0 + 88);
  *(v0 + 112) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62EE100, v3, v2);
}

uint64_t sub_1E62EE100()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E62F8CD4, 0, 0);
}

uint64_t sub_1E62EE174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v120 = a2;
  v133 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v131 = *(v6 - 8);
  v132 = v6;
  v7 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v103 - v8;
  v9 = sub_1E65E1398();
  v129 = *(v9 - 8);
  v130 = v9;
  v10 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v140 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v115 = &v103 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v113 = &v103 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v111 = &v103 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v103 - v24;
  v27 = v26;
  MEMORY[0x1EEE9AC00](v23);
  v29 = &v103 - v28;
  v30 = sub_1E65E1298();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v116 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1E65E1208();
  v124 = *(v119 - 8);
  v33 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v139 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65E1168();
  v122 = v35;
  v121 = *(v35 - 8);
  v36 = v121;
  v126 = *(v121 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v127 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v142 = &v103 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v103 - v41;
  v123 = &v103 - v41;
  v43 = sub_1E65E1518();
  v44 = *(v43 - 8);
  v137 = v43;
  v138 = v44;
  v114 = *(v44 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v112 = &v103 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v141 = &v103 - v47;
  sub_1E65E14F8();
  v48 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  (*(v36 + 104))(v42, *MEMORY[0x1E699E778], v35);
  v118 = *a1;
  v49 = a1;
  v135 = v29;
  sub_1E5E1DEAC(a1, v29);
  sub_1E5DF650C(a2, &v145);
  v50 = *(v13 + 80);
  v51 = (v50 + 24) & ~v50;
  v110 = v27;
  v52 = (v27 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v54 = v53 + v51;
  v55 = v53;
  v108 = v53;
  sub_1E5E1E5F8(v29, v54, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v145, v55 + v52);
  sub_1E5E1DEAC(v49, v25);
  v56 = (v50 + 16) & ~v50;
  v107 = swift_allocObject();
  sub_1E5E1E5F8(v25, v107 + v56, type metadata accessor for AppComposer);
  v57 = v111;
  sub_1E5E1DEAC(v49, v111);
  v104 = swift_allocObject();
  sub_1E5E1E5F8(v57, v104 + v56, type metadata accessor for AppComposer);
  v58 = v113;
  sub_1E5E1DEAC(v49, v113);
  v59 = swift_allocObject() + v56;
  sub_1E5E1E5F8(v58, v59, type metadata accessor for AppComposer);
  v134 = v49;
  v60 = v115;
  sub_1E5E1DEAC(v49, v115);
  v109 = v56 + v27;
  v61 = swift_allocObject() + v56;
  v136 = v56;
  sub_1E5E1E5F8(v60, v61, type metadata accessor for AppComposer);
  v62 = v117;
  sub_1E5E1DEAC(v49, v117);
  v63 = v50 | 7;
  v64 = swift_allocObject();
  sub_1E5E1E5F8(v62, v64 + ((v50 + 16) & ~v50), type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v66 = v137;
  v65 = v138;
  v67 = v112;
  (*(v138 + 16))(v112, v141, v137);
  v69 = v134;
  v68 = v135;
  sub_1E5E1DEAC(v134, v135);
  v70 = v65;
  v71 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v72 = (v114 + v50 + v71) & ~v50;
  v106 = v63;
  v73 = swift_allocObject();
  (*(v70 + 32))(v73 + v71, v67, v66);
  v74 = v68;
  v105 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v68, v73 + v72, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v117 = sub_1E62F89B8(&qword_1EE2D6530, MEMORY[0x1E699E7A0]);
  v75 = v125;
  v76 = v119;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v69, v74);
  v77 = v128;
  v78 = *v128;
  v79 = v128[3];
  v80 = v128[5];
  v116 = v128[7];
  v81 = (v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = v128[9];
  v82 = swift_allocObject();
  sub_1E5E1E5F8(v74, v82 + v136, type metadata accessor for AppComposer);
  v83 = (v82 + v81);
  v84 = v77[3];
  v83[2] = v77[2];
  v83[3] = v84;
  v83[4] = v77[4];
  v85 = v77[1];
  *v83 = *v77;
  v83[1] = v85;
  swift_unknownObjectRetain();

  v87 = v139;
  v86 = v140;
  v88 = sub_1E65E4F08();

  (*(v131 + 8))(v75, v132);
  (*(v129 + 8))(v86, v130);
  (*(v124 + 8))(v87, v76);
  v89 = v121;
  v90 = *(v121 + 16);
  v91 = v123;
  v92 = v122;
  v90(v142, v123, v122);
  v93 = v135;
  sub_1E5E1DEAC(v134, v135);
  sub_1E5DF650C(v120, &v145);
  v94 = swift_allocObject();
  sub_1E5E1E5F8(v93, v94 + v136, v105);
  sub_1E5DF599C(&v145, v94 + v81);
  v95 = v127;
  v96 = v91;
  v90(v127, v91, v92);
  v97 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v98 = (v126 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  (*(v89 + 32))(v99 + v97, v95, v92);
  *(v99 + v98) = v88;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E62F89B8(&qword_1EE2D6048, MEMORY[0x1E699ED90]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = v100;
  v144 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  (*(v89 + 8))(v96, v92);
  return (*(v138 + 8))(v141, v137);
}

uint64_t sub_1E62EEEF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v120 = a2;
  v133 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v131 = *(v6 - 8);
  v132 = v6;
  v7 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v103 - v8;
  v9 = sub_1E65E1398();
  v129 = *(v9 - 8);
  v130 = v9;
  v10 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v140 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v115 = &v103 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v113 = &v103 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v111 = &v103 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v103 - v24;
  v27 = v26;
  MEMORY[0x1EEE9AC00](v23);
  v29 = &v103 - v28;
  v30 = sub_1E65E1298();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v116 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1E65E1208();
  v124 = *(v119 - 8);
  v33 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v139 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65E1168();
  v122 = v35;
  v121 = *(v35 - 8);
  v36 = v121;
  v126 = *(v121 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v127 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v142 = &v103 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v103 - v41;
  v123 = &v103 - v41;
  v43 = sub_1E65E1518();
  v44 = *(v43 - 8);
  v137 = v43;
  v138 = v44;
  v114 = *(v44 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v112 = &v103 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v141 = &v103 - v47;
  sub_1E65E14F8();
  (*(v36 + 104))(v42, *MEMORY[0x1E699E768], v35);
  v48 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v118 = *a1;
  v49 = a1;
  v135 = v29;
  sub_1E5E1DEAC(a1, v29);
  sub_1E5DF650C(a2, &v145);
  v50 = *(v13 + 80);
  v51 = (v50 + 24) & ~v50;
  v110 = v27;
  v52 = (v27 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v54 = v53 + v51;
  v55 = v53;
  v108 = v53;
  sub_1E5E1E5F8(v29, v54, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v145, v55 + v52);
  sub_1E5E1DEAC(v49, v25);
  v56 = (v50 + 16) & ~v50;
  v107 = swift_allocObject();
  sub_1E5E1E5F8(v25, v107 + v56, type metadata accessor for AppComposer);
  v57 = v111;
  sub_1E5E1DEAC(v49, v111);
  v104 = swift_allocObject();
  sub_1E5E1E5F8(v57, v104 + v56, type metadata accessor for AppComposer);
  v58 = v113;
  sub_1E5E1DEAC(v49, v113);
  v59 = swift_allocObject() + v56;
  sub_1E5E1E5F8(v58, v59, type metadata accessor for AppComposer);
  v134 = v49;
  v60 = v115;
  sub_1E5E1DEAC(v49, v115);
  v109 = v56 + v27;
  v61 = swift_allocObject() + v56;
  v136 = v56;
  sub_1E5E1E5F8(v60, v61, type metadata accessor for AppComposer);
  v62 = v117;
  sub_1E5E1DEAC(v49, v117);
  v63 = v50 | 7;
  v64 = swift_allocObject();
  sub_1E5E1E5F8(v62, v64 + ((v50 + 16) & ~v50), type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v66 = v137;
  v65 = v138;
  v67 = v112;
  (*(v138 + 16))(v112, v141, v137);
  v69 = v134;
  v68 = v135;
  sub_1E5E1DEAC(v134, v135);
  v70 = v65;
  v71 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v72 = (v114 + v50 + v71) & ~v50;
  v106 = v63;
  v73 = swift_allocObject();
  (*(v70 + 32))(v73 + v71, v67, v66);
  v74 = v68;
  v105 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v68, v73 + v72, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v117 = sub_1E62F89B8(&qword_1EE2D6530, MEMORY[0x1E699E7A0]);
  v75 = v125;
  v76 = v119;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v69, v74);
  v77 = v128;
  v78 = *v128;
  v79 = v128[3];
  v80 = v128[5];
  v116 = v128[7];
  v81 = (v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = v128[9];
  v82 = swift_allocObject();
  sub_1E5E1E5F8(v74, v82 + v136, type metadata accessor for AppComposer);
  v83 = (v82 + v81);
  v84 = v77[3];
  v83[2] = v77[2];
  v83[3] = v84;
  v83[4] = v77[4];
  v85 = v77[1];
  *v83 = *v77;
  v83[1] = v85;
  swift_unknownObjectRetain();

  v87 = v139;
  v86 = v140;
  v88 = sub_1E65E4F08();

  (*(v131 + 8))(v75, v132);
  (*(v129 + 8))(v86, v130);
  (*(v124 + 8))(v87, v76);
  v89 = v121;
  v90 = *(v121 + 16);
  v91 = v123;
  v92 = v122;
  v90(v142, v123, v122);
  v93 = v135;
  sub_1E5E1DEAC(v134, v135);
  sub_1E5DF650C(v120, &v145);
  v94 = swift_allocObject();
  sub_1E5E1E5F8(v93, v94 + v136, v105);
  sub_1E5DF599C(&v145, v94 + v81);
  v95 = v127;
  v96 = v91;
  v90(v127, v91, v92);
  v97 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v98 = (v126 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  (*(v89 + 32))(v99 + v97, v95, v92);
  *(v99 + v98) = v88;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E62F89B8(&qword_1EE2D6048, MEMORY[0x1E699ED90]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = v100;
  v144 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  (*(v89 + 8))(v96, v92);
  return (*(v138 + 8))(v141, v137);
}

uint64_t sub_1E62EFC74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v128 = a2;
  v133 = a1;
  v119 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v117 = *(v4 - 8);
  v118 = v4;
  v5 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v111 = v97 - v6;
  v7 = sub_1E65E1398();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v129 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer();
  v131 = *(v10 - 8);
  v121 = *(v131 + 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v105 = v97 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v103 = v97 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v100 = v97 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = v97 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v132 = v97 - v21;
  v22 = sub_1E65E1298();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v107 = v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65E1208();
  v26 = *(v25 - 8);
  v109 = v25;
  v110 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v126 = v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1E65E1168();
  v106 = *(v127 - 8);
  v29 = v106;
  v112 = *(v106 + 64);
  v30 = MEMORY[0x1EEE9AC00](v127);
  v113 = v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v130 = v97 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v97 - v34;
  v125 = v97 - v34;
  v36 = sub_1E65E1518();
  v123 = *(v36 - 8);
  v124 = v36;
  v102 = *(v123 + 64);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v101 = v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v134 = v97 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072368, &qword_1E65EAB98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA8E0;
  *(inited + 32) = 0x6D656C7469746E65;
  *(inited + 40) = 0xEF72657355746E65;
  *&v137[0] = 1701147238;
  *(&v137[0] + 1) = 0xE400000000000000;
  sub_1E65E6848();
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x80000001E6615500;
  *&v137[0] = 1701147238;
  *(&v137[0] + 1) = 0xE400000000000000;
  sub_1E65E6848();
  *(inited + 144) = 0xD000000000000014;
  *(inited + 152) = 0x80000001E6615520;
  v41 = sub_1E6428544(&unk_1F5FA8878);
  sub_1E5DFE50C(&unk_1F5FA8898, &qword_1ED078058, &qword_1E65FB488);
  *&v137[0] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078060, &qword_1E65FB490);
  sub_1E62F8440();
  sub_1E65E6848();
  v42 = sub_1E642764C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072390, &qword_1E65EABB8);
  swift_arrayDestroy();
  sub_1E65E14F8();
  (*(v29 + 104))(v35, *MEMORY[0x1E699E768], v127);
  v43 = v132;
  v44 = v133;
  v104 = *v133;
  sub_1E5E1DEAC(v133, v132);
  sub_1E5DF650C(v128, v137);
  v45 = *(v131 + 80);
  v46 = (v45 + 24) & ~v45;
  v47 = v121;
  v48 = (v121 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  v50 = v49;
  v97[1] = v49;
  sub_1E5E1E5F8(v43, v49 + v46, type metadata accessor for AppComposer);
  sub_1E5DF599C(v137, v50 + v48);
  v51 = v99;
  sub_1E5E1DEAC(v44, v99);
  v52 = ((v45 + 16) & ~v45) + v47;
  v53 = (v45 + 16) & ~v45;
  v97[0] = swift_allocObject();
  sub_1E5E1E5F8(v51, v97[0] + v53, type metadata accessor for AppComposer);
  v54 = v100;
  sub_1E5E1DEAC(v44, v100);
  v99 = swift_allocObject();
  sub_1E5E1E5F8(v54, v99 + v53, type metadata accessor for AppComposer);
  v55 = v103;
  sub_1E5E1DEAC(v44, v103);
  v100 = swift_allocObject();
  v56 = v53;
  sub_1E5E1E5F8(v55, v100 + v53, type metadata accessor for AppComposer);
  v57 = v105;
  sub_1E5E1DEAC(v44, v105);
  v98 = v52;
  v120 = v45 | 7;
  v58 = swift_allocObject();
  v122 = v53;
  v131 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v57, v58 + v53, type metadata accessor for AppComposer);
  v59 = v108;
  sub_1E5E1DEAC(v44, v108);
  v60 = swift_allocObject();
  sub_1E5E1E5F8(v59, v60 + v56, type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v61 = v123;
  v62 = v124;
  v63 = v101;
  (*(v123 + 16))(v101, v134, v124);
  v64 = v132;
  sub_1E5E1DEAC(v44, v132);
  v65 = v61;
  v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v67 = (v102 + v45 + v66) & ~v45;
  v68 = swift_allocObject();
  (*(v65 + 32))(v68 + v66, v63, v62);
  v69 = v64;
  sub_1E5E1E5F8(v64, v68 + v67, v131);
  type metadata accessor for AppFeature();
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v121 = sub_1E62F89B8(&qword_1EE2D6530, MEMORY[0x1E699E7A0]);
  v70 = v111;
  v71 = v109;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v133, v64);
  v72 = v114;
  v73 = *v114;
  v74 = v114[3];
  v105 = v114[5];
  v75 = v114[7];
  v76 = (v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v114[9];
  v108 = v75;
  v77 = swift_allocObject();
  sub_1E5E1E5F8(v69, v77 + v122, v131);
  v78 = (v77 + v76);
  v79 = v72[3];
  v78[2] = v72[2];
  v78[3] = v79;
  v78[4] = v72[4];
  v80 = v72[1];
  *v78 = *v72;
  v78[1] = v80;
  swift_unknownObjectRetain();

  v81 = v126;
  v82 = v129;
  v83 = sub_1E65E4F08();

  (*(v117 + 8))(v70, v118);
  (*(v115 + 8))(v82, v116);
  (*(v110 + 8))(v81, v71);
  v84 = v106;
  v85 = *(v106 + 16);
  v86 = v125;
  v87 = v127;
  v85(v130, v125, v127);
  v88 = v132;
  sub_1E5E1DEAC(v133, v132);
  sub_1E5DF650C(v128, v137);
  v89 = swift_allocObject();
  sub_1E5E1E5F8(v88, v89 + v122, v131);
  sub_1E5DF599C(v137, v89 + v76);
  v90 = v113;
  v85(v113, v86, v87);
  v91 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v92 = (v112 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (*(v84 + 32))(v93 + v91, v90, v87);
  *(v93 + v92) = v83;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E62F89B8(&qword_1EE2D6048, MEMORY[0x1E699ED90]);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v94;
  v136 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  (*(v84 + 8))(v125, v87);
  return (*(v123 + 8))(v134, v124);
}

uint64_t sub_1E62F0A54@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v115 = a8;
  v105 = a7;
  v110 = a6;
  v107 = a4;
  v127 = a2;
  v112 = a1;
  v120 = a9;
  v11 = sub_1E65DEB48();
  v121 = *(v11 - 8);
  v122 = v11;
  v12 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E65D76F8();
  v102 = *(v111 - 8);
  v14 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v109 = v15;
  v106 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078040, &qword_1E65FB468);
  v117 = *(v16 - 8);
  v118 = v16;
  v17 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v90 - v18;
  v19 = type metadata accessor for AppComposer();
  v20 = v19 - 8;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v99 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v125 = &v90 - v24;
  v25 = sub_1E65DEDE8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v101 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1E65DECF8();
  v114 = *(v128 - 8);
  v28 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v100 = *(v30 - 8);
  v31 = *(v100 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v104 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v90 - v34);
  v36 = sub_1E65DEC18();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v113 = &v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v90 - v41;
  v92 = a3 + *(v20 + 28);
  v43 = v92[8];
  v129 = v35;
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v45 = &unk_1F5FA7F80;
LABEL_7:
      v95 = sub_1E5F9B258(v45);
      goto LABEL_8;
    }

LABEL_6:
    v45 = &unk_1F5FA7F58;
    goto LABEL_7;
  }

  if (v43)
  {
    goto LABEL_6;
  }

  v44 = sub_1E65DE608();
  v95 = sub_1E600A684(v44);
  v35 = v129;

LABEL_8:
  v46 = *MEMORY[0x1E699CD30];
  v123 = v37;
  v124 = v42;
  (*(v37 + 104))(v42, v46, v36);
  *v35 = v107;
  v35[1] = a5;
  swift_storeEnumTagMultiPayload();
  v107 = *a3;
  v93 = a3;
  v47 = v125;
  sub_1E5E1DEAC(a3, v125);
  v48 = *(v21 + 80);
  v49 = (v48 + 16) & ~v48;
  v94 = v49 + v22;
  v96 = v48 | 7;
  v91 = swift_allocObject();
  v98 = v49;
  v97 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v47, v91 + v49, type metadata accessor for AppComposer);
  sub_1E5DF650C(v105, &v130);
  v50 = swift_allocObject();
  v105 = v36;
  sub_1E5DF599C(&v130, v50 + 16);
  v51 = type metadata accessor for AppEnvironment();
  v52 = *(v51 + 24);

  v53 = v92;
  AccountService.requireAccount.getter();
  v90 = v54;
  v55 = &v53[*(v51 + 112)];
  SessionService.requireNewSessionsAllowed.getter();
  v56 = v99;
  sub_1E5E1DEAC(a3, v99);
  v57 = swift_allocObject();
  sub_1E5E1E5F8(v56, v57 + v49, type metadata accessor for AppComposer);
  sub_1E65DEDD8();
  sub_1E65DECE8();
  v58 = v102;
  v59 = v106;
  v60 = v111;
  (*(v102 + 16))(v106, v110, v111);
  v61 = v129;
  v62 = v104;
  sub_1E5DFD1CC(v129, v104, &qword_1ED073858, &unk_1E65F84A0);
  v63 = (*(v58 + 80) + 40) & ~*(v58 + 80);
  v64 = *(v100 + 80);
  v65 = (v109 + v64 + v63) & ~v64;
  v110 = v64 | 7;
  v66 = swift_allocObject();
  v67 = v127;
  *(v66 + 2) = v112;
  *(v66 + 3) = v67;
  *(v66 + 4) = v95;
  (*(v58 + 32))(&v66[v63], v59, v60);
  sub_1E5FAB460(v62, &v66[v65], &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DFD1CC(v61, v62, &qword_1ED073858, &unk_1E65F84A0);
  v68 = swift_allocObject();
  sub_1E5FAB460(v62, v68 + ((v64 + 16) & ~v64), &qword_1ED073858, &unk_1E65F84A0);
  type metadata accessor for AppFeature();
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v112 = sub_1E62F89B8(&qword_1ED078048, MEMORY[0x1E699CD68]);

  v69 = v116;
  sub_1E65E4DE8();
  v70 = v125;
  sub_1E5E1DEAC(v93, v125);
  v71 = v115;
  v104 = *v115;
  v106 = v115[3];
  v109 = v115[5];
  v110 = v115[7];
  v111 = v115[9];
  v72 = v123;
  v127 = *(v123 + 16);
  v73 = v113;
  v74 = v105;
  v127(v113, v124, v105);
  v75 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + *(v72 + 80) + 80) & ~*(v72 + 80);
  v77 = swift_allocObject();
  sub_1E5E1E5F8(v70, v77 + v98, v97);
  v78 = (v77 + v75);
  v79 = *(v71 + 3);
  v78[2] = *(v71 + 2);
  v78[3] = v79;
  v78[4] = *(v71 + 4);
  v80 = *(v71 + 1);
  *v78 = *v71;
  v78[1] = v80;
  v81 = *(v72 + 32);
  v82 = v73;
  v81(v77 + v76, v73, v74);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v83 = swift_allocObject();
  *(v83 + 16) = sub_1E62F8304;
  *(v83 + 24) = v77;

  v84 = v126;
  v85 = v128;
  sub_1E65E4F08();

  (*(v117 + 8))(v69, v118);
  (*(v114 + 8))(v84, v85);
  v86 = v124;
  v127(v82, v124, v74);
  v131 = sub_1E65DEAA8();
  v132 = sub_1E62F89B8(&qword_1EE2D6850, MEMORY[0x1E699CCD8]);
  __swift_allocate_boxed_opaque_existential_1(&v130);

  sub_1E65DEA98();
  v87 = v119;
  sub_1E65DEB38();
  sub_1E62F89B8(&qword_1ED078050, MEMORY[0x1E699CCF0]);

  v88 = v122;
  sub_1E65E4778();

  (*(v121 + 8))(v87, v88);
  sub_1E5DFE50C(v129, &qword_1ED073858, &unk_1E65F84A0);
  return (*(v123 + 8))(v86, v74);
}

unint64_t sub_1E62F17A4()
{
  result = qword_1ED077FF8;
  if (!qword_1ED077FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077FD0, &qword_1E65FB1E8);
    sub_1E5FED46C(&qword_1ED078000, &qword_1ED077FF0, &qword_1E65FB208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FF8);
  }

  return result;
}

unint64_t sub_1E62F1854()
{
  result = qword_1ED078008;
  if (!qword_1ED078008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078008);
  }

  return result;
}

uint64_t sub_1E62F18F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  return sub_1E64483A8(a1, v2 + v6, v9, a2);
}

uint64_t sub_1E62F1A0C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1E6448734(v2);
}

unint64_t sub_1E62F1A7C()
{
  result = qword_1ED078028;
  if (!qword_1ED078028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078018, &qword_1E65FB300);
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078028);
  }

  return result;
}

uint64_t sub_1E62F1B4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62E9958(a1, v4, v5, v7, v6);
}

uint64_t sub_1E62F1C0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v256 = a7;
  v249 = a4;
  v252 = a2;
  v250 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v234 = &v202 - v13;
  v231 = sub_1E65D7848();
  v230 = *(v231 - 8);
  v14 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v228 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC0, &qword_1E65FAB40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v232 = (&v202 - v18);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v227 = *(v229 - 8);
  v19 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v233 = &v202 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC8, &qword_1E65FAB48);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v222 = (&v202 - v23);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  v219 = *(v220 - 8);
  v24 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v223 = (&v202 - v25);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v216 = *(v239 - 8);
  v26 = *(v216 + 64);
  v27 = MEMORY[0x1EEE9AC00](v239);
  v243 = (&v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v242 = &v202 - v30;
  v240 = v31;
  MEMORY[0x1EEE9AC00](v29);
  v215 = (&v202 - v32);
  v213 = sub_1E65D76F8();
  v207 = *(v213 - 8);
  v33 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v205 = v34;
  v206 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DE0, &unk_1E65FAB60);
  v211 = *(v212 - 8);
  v35 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v238 = &v202 - v36;
  v214 = type metadata accessor for AppComposer();
  v257 = *(v214 - 8);
  v37 = *(v257 + 64);
  v38 = MEMORY[0x1EEE9AC00](v214);
  v218 = &v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v255 = &v202 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075970, &qword_1E65F2460);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v203 = &v202 - v43;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DF0, &unk_1E65FAB70);
  v209 = *(v210 - 8);
  v44 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v237 = &v202 - v45;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v202 = *(v254 - 8);
  v46 = *(v202 + 64);
  v47 = MEMORY[0x1EEE9AC00](v254);
  v208 = &v202 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = v48;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v202 - v49;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v51 = *(*(v241 - 8) + 64);
  MEMORY[0x1EEE9AC00](v241);
  v53 = &v202 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v202 - v57;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v225 = *(v226 - 8);
  v59 = *(v225 + 64);
  v60 = MEMORY[0x1EEE9AC00](v226);
  v62 = &v202 - v61;
  v63 = *(*(a9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v224 = v65;
  v66 = *(v65 + 16);
  v245 = &v202 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = a9;
  v66();
  v67 = *a8;
  swift_getKeyPath();
  v244 = v67;
  sub_1E65E4EC8();

  v68 = v250;
  aBlock = v250;
  v69 = v252;
  v266 = v252;
  v248 = v62;
  sub_1E65E4D78();
  (*(v55 + 8))(v58, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65FA360;
  *v53 = v68;
  *(v53 + 1) = v69;
  v71 = v68;
  v53[16] = 0;
  v72 = v249;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  v73 = sub_1E649226C(v53, v72, v256);
  v217 = v53;
  sub_1E5DFE50C(v53, &qword_1ED073950, &unk_1E65F4360);
  v258 = inited;
  *(inited + 32) = v73;
  v221 = inited + 32;
  *v50 = v71;
  *(v50 + 1) = v69;
  v50[16] = 0;
  v247 = v50;
  swift_storeEnumTagMultiPayload();
  if (qword_1ED071940 != -1)
  {
    swift_once();
  }

  v204 = qword_1ED0962B0;
  v74 = v255;
  sub_1E5E1DEAC(a8, v255);
  v75 = *(v257 + 80);
  v76 = ((v75 + 16) & ~v75) + v253;
  v77 = (v75 + 16) & ~v75;
  v78 = v75 | 7;
  v79 = swift_allocObject();
  sub_1E5E1E5F8(v74, v79 + v77, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(a8, v74);
  v253 = v76;
  v257 = v78;
  v80 = swift_allocObject();
  v254 = v77;
  v236 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v74, v80 + v77, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(a8, v74);
  v81 = swift_allocObject();
  v251 = a8;
  sub_1E5E1E5F8(v74, v81 + v77, type metadata accessor for AppComposer);
  sub_1E604BABC();
  sub_1E65DEB88();
  sub_1E65DE8F8();
  v82 = v208;
  sub_1E5DFD1CC(v247, v208, &qword_1ED073940, &qword_1E65EDCC8);
  v83 = v207;
  v84 = v206;
  v85 = v72;
  v86 = v213;
  (*(v207 + 16))(v206, v85, v213);
  v87 = *(v202 + 80);
  v88 = (v87 + 16) & ~v87;
  v89 = v246 + v88;
  v90 = (v246 + v88 + *(v83 + 80) + 1) & ~*(v83 + 80);
  v91 = swift_allocObject();
  sub_1E5FAB460(v82, v91 + v88, &qword_1ED073940, &qword_1E65EDCC8);
  v89[v91] = 0;
  (*(v83 + 32))(v91 + v90, v84, v86);
  v92 = v247;
  sub_1E5DFD1CC(v247, v82, &qword_1ED073940, &qword_1E65EDCC8);
  v93 = swift_allocObject();
  sub_1E5FAB460(v82, v93 + v88, &qword_1ED073940, &qword_1E65EDCC8);
  type metadata accessor for AppFeature();
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v207 = sub_1E5FED46C(&qword_1ED075978, &unk_1ED077DF0, &unk_1E65FAB70);
  v94 = v210;
  sub_1E65E4DE8();
  v95 = v255;
  sub_1E5E1DEAC(v251, v255);
  v96 = v256;
  v97 = *v256;
  v202 = v256[3];
  v203 = v256[5];
  v205 = v256[7];
  v206 = v256[9];
  sub_1E5DFD1CC(v92, v82, &qword_1ED073940, &qword_1E65EDCC8);
  v98 = (v253 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  sub_1E5E1E5F8(v95, v99 + v254, v236);
  v213 = v98;
  v100 = (v99 + v98);
  v101 = v96[3];
  v100[2] = v96[2];
  v100[3] = v101;
  v100[4] = v96[4];
  v102 = v96[1];
  *v100 = *v96;
  v100[1] = v102;
  v103 = v251;
  sub_1E5FAB460(v82, v99 + ((v98 + v87 + 80) & ~v87), &qword_1ED073940, &qword_1E65EDCC8);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v104 = swift_allocObject();
  *(v104 + 16) = sub_1E62F6CE0;
  *(v104 + 24) = v99;

  v105 = v237;
  v106 = v238;
  v107 = sub_1E65E4F08();

  (*(v211 + 8))(v106, v212);
  (*(v209 + 8))(v105, v94);
  v108 = v255;
  sub_1E5E1DEAC(v103, v255);
  v109 = v247;
  sub_1E5DFD1CC(v247, v82, &qword_1ED073940, &qword_1E65EDCC8);
  v110 = (v253 + v87) & ~v87;
  v111 = swift_allocObject();
  sub_1E5E1E5F8(v108, v111 + v254, v236);
  sub_1E5FAB460(v82, v111 + v110, &qword_1ED073940, &qword_1E65EDCC8);
  v112 = sub_1E63888F8(v204, v107, sub_1E613608C, 0, sub_1E62F6D08, v111);
  sub_1E5DFE50C(v109, &qword_1ED073940, &qword_1E65EDCC8);
  v258[5] = v112;
  v113 = v215;
  v114 = v252;
  *v215 = v250;
  *(v113 + 8) = v114;
  swift_storeEnumTagMultiPayload();
  v115 = *(v103 + *(v214 + 20) + 8);
  if (v115 <= 1)
  {
    if (!*(v103 + *(v214 + 20) + 8))
    {

      v116 = sub_1E65DE608();
      v117 = sub_1E600A684(v116);

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v115 != 2)
  {
LABEL_8:

    v118 = &unk_1F5FA7F58;
    goto LABEL_9;
  }

  v118 = &unk_1F5FA7F80;
LABEL_9:
  v117 = sub_1E5F9B258(v118);
LABEL_10:
  v119 = v256;
  if (qword_1ED071948 != -1)
  {
    v201 = v256;
    swift_once();
    v119 = v201;
  }

  v246 = qword_1ED0962B8;
  v120 = sub_1E6364F9C(v113, v117, v119);

  sub_1E5E1DEAC(v103, v108);
  v121 = v242;
  sub_1E5DFD1CC(v113, v242, &qword_1ED073988, &unk_1E65F72F0);
  v122 = (v253 + *(v216 + 80)) & ~*(v216 + 80);
  v123 = swift_allocObject();
  sub_1E5E1E5F8(v108, v123 + v254, type metadata accessor for AppComposer);
  v247 = v122;
  sub_1E5FAB460(v121, v123 + v122, &qword_1ED073988, &unk_1E65F72F0);
  v124 = sub_1E6388B04(v246, v120, sub_1E6365C38, 0, sub_1E62F6D30, v123);
  sub_1E5DFE50C(v113, &qword_1ED073988, &unk_1E65F72F0);
  v258[6] = v124;
  v125 = v243;
  v126 = v252;
  *v243 = v250;
  v125[1] = v126;
  swift_storeEnumTagMultiPayload();
  if (v115 <= 1)
  {
    if (!v115)
    {

      v127 = sub_1E65DE608();
      v128 = sub_1E600A684(v127);

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v115 != 2)
  {
LABEL_17:

    v129 = &unk_1F5FA7F58;
    goto LABEL_18;
  }

  v129 = &unk_1F5FA7F80;
LABEL_18:
  v128 = sub_1E5F9B258(v129);
LABEL_19:
  v130 = v254;
  if (qword_1ED071958 != -1)
  {
    swift_once();
  }

  v246 = qword_1ED0962C8;
  v131 = v243;
  v132 = v251;
  v133 = sub_1E6364F9C(v243, v128, v256);

  v134 = v255;
  sub_1E5E1DEAC(v132, v255);
  v135 = v242;
  sub_1E5DFD1CC(v131, v242, &qword_1ED073988, &unk_1E65F72F0);
  v136 = v247;
  v137 = v134;
  v138 = swift_allocObject();
  sub_1E5E1E5F8(v137, v138 + v130, type metadata accessor for AppComposer);
  sub_1E5FAB460(v135, v138 + v136, &qword_1ED073988, &unk_1E65F72F0);
  v139 = sub_1E6388B04(v246, v133, sub_1E6365754, 0, sub_1E62F6D58, v138);
  sub_1E5DFE50C(v131, &qword_1ED073988, &unk_1E65F72F0);
  v258[7] = v139;
  v140 = v130;
  if (qword_1ED071960 != -1)
  {
    swift_once();
  }

  v141 = qword_1ED0962D0;
  sub_1E5E1DEAC(v132, v137);
  v142 = swift_allocObject();
  sub_1E5E1E5F8(v137, v142 + v130, type metadata accessor for AppComposer);
  v143 = v218;
  sub_1E5E1DEAC(v132, v218);
  v144 = swift_allocObject();
  sub_1E5E1E5F8(v143, v144 + v130, type metadata accessor for AppComposer);
  v145 = objc_allocWithZone(BBMenuCommand);
  v269 = sub_1E62CAB78;
  v270 = v142;
  aBlock = MEMORY[0x1E69E9820];
  v266 = 1107296256;
  v146 = v137;
  v246 = &v267;
  v267 = sub_1E638D4E4;
  v268 = &block_descriptor_12;
  v147 = _Block_copy(&aBlock);
  v263 = sub_1E62F6E7C;
  v264 = v144;
  v259 = MEMORY[0x1E69E9820];
  v260 = 1107296256;
  v261 = sub_1E5E05AB0;
  v262 = &block_descriptor_265;
  v148 = _Block_copy(&v259);
  v149 = [v145 initWithSelector:v141 requireEnabled:v147 handler:v148];
  _Block_release(v147);
  _Block_release(v148);

  v150 = v258;
  v258[8] = v149;
  v151 = v250;
  v152 = v217;
  v153 = v252;
  *v217 = v250;
  *(v152 + 8) = v153;
  *(v152 + 16) = 0;
  swift_storeEnumTagMultiPayload();

  v154 = sub_1E6492AD8(v152, v249, v256);
  sub_1E5DFE50C(v152, &qword_1ED073950, &unk_1E65F4360);
  v150[9] = v154;
  if (qword_1ED071978 != -1)
  {
    swift_once();
  }

  v247 = a10;
  v155 = qword_1ED0962E8;
  sub_1E5E1DEAC(v132, v146);
  v156 = v213;
  v157 = swift_allocObject();
  sub_1E5E1E5F8(v146, v157 + v140, type metadata accessor for AppComposer);
  v158 = (v157 + v156);
  *v158 = v151;
  v158[1] = v153;
  v159 = v153;
  v160 = objc_allocWithZone(BBMenuCommand);
  v269 = sub_1E5F88C58;
  v270 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v266 = 1107296256;
  v267 = sub_1E638D4E4;
  v268 = &block_descriptor_271;
  v161 = _Block_copy(&aBlock);
  v263 = sub_1E62CABD8;
  v264 = v157;
  v259 = MEMORY[0x1E69E9820];
  v260 = 1107296256;
  v261 = sub_1E5E05AB0;
  v262 = &block_descriptor_274;
  v162 = _Block_copy(&v259);

  v163 = [v160 initWithSelector:v155 requireEnabled:v161 handler:v162];
  _Block_release(v161);
  _Block_release(v162);

  v258[10] = v163;
  v164 = v222;
  sub_1E64878E4(v222);
  v165 = *(v219 + 48);
  v166 = v220;
  if (v165(v164, 1, v220) == 1)
  {
    v167 = v223;
    *v223 = v151;
    v167[1] = v159;
    swift_storeEnumTagMultiPayload();
    v168 = v165(v164, 1, v166);

    v169 = v235;
    v170 = v233;
    v171 = v256;
    v172 = v232;
    v173 = v229;
    if (v168 != 1)
    {
      sub_1E5DFE50C(v164, &qword_1ED077DC8, &qword_1E65FAB48);
    }
  }

  else
  {
    v167 = v223;
    sub_1E5FAB460(v164, v223, &unk_1ED077DD0, &unk_1E65FAB50);
    v169 = v235;
    v170 = v233;
    v171 = v256;
    v172 = v232;
    v173 = v229;
  }

  v174 = v251;
  if (qword_1ED071980 != -1)
  {
    swift_once();
  }

  v175 = qword_1ED0962F0;
  v176 = sub_1E63A97C0(v167, v245, v171, v174, v169, v247);
  v177 = sub_1E6388D10(v175, v176, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  sub_1E5DFE50C(v167, &unk_1ED077DD0, &unk_1E65FAB50);
  v258[11] = v177;
  swift_getKeyPath();
  v178 = v228;
  sub_1E65E4EC8();

  sub_1E62DDD48(v178, v172);
  (*(v230 + 8))(v178, v231);
  v179 = *(v227 + 48);
  if (v179(v172, 1, v173) == 1)
  {
    v180 = v252;
    *v170 = v151;
    *(v170 + 8) = v180;
    *(v170 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    v181 = v179(v172, 1, v173);

    v182 = 0x1E8792000;
    if (v181 != 1)
    {
      sub_1E5DFE50C(v172, &qword_1ED077DC0, &qword_1E65FAB40);
    }
  }

  else
  {
    sub_1E5FAB460(v172, v170, &unk_1ED0776E0, &qword_1E65EDC00);
    v182 = 0x1E8792000uLL;
  }

  v183 = sub_1E6200DD8(v170, v249, v171);
  v184 = v258;
  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v185 = qword_1ED0962F8;

  v186 = sub_1E63886EC(v185, v183, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  v187 = sub_1E65E60A8();
  v188 = v234;
  (*(*(v187 - 8) + 56))(v234, 1, 1, v187);
  v189 = swift_allocObject();
  v189[2] = 0;
  v189[3] = 0;
  v189[4] = v183;

  sub_1E64B80F8(0, 0, v188, &unk_1E65F91E8, v189);

  sub_1E5DFE50C(v170, &unk_1ED0776E0, &qword_1E65EDC00);
  v184[12] = v186;
  if (qword_1ED071990 != -1)
  {
    swift_once();
  }

  v190 = qword_1ED096300;
  v191 = v255;
  sub_1E5E1DEAC(v174, v255);
  v192 = swift_allocObject();
  sub_1E5E1E5F8(v191, v192 + v254, type metadata accessor for AppComposer);
  v193 = objc_allocWithZone(*(v182 + 1080));
  v269 = sub_1E5F88C58;
  v270 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v266 = 1107296256;
  v267 = sub_1E638D4E4;
  v268 = &block_descriptor_287;
  v194 = _Block_copy(&aBlock);
  v263 = sub_1E62F7BA0;
  v264 = v192;
  v259 = MEMORY[0x1E69E9820];
  v260 = 1107296256;
  v261 = sub_1E5E05AB0;
  v262 = &block_descriptor_290;
  v195 = _Block_copy(&v259);
  v196 = [v193 initWithSelector:v190 requireEnabled:v194 handler:v195];
  _Block_release(v194);
  _Block_release(v195);

  v184[13] = v196;
  sub_1E5F9AF8C(v184);
  v198 = v197;
  swift_setDeallocating();
  v199 = v184[2];
  swift_arrayDestroy();
  (*(v225 + 8))(v248, v226);
  (*(v224 + 8))(v245, v169);
  return v198;
}

char *sub_1E62F3D80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7, uint64_t (*a8)())
{
  v223 = a8;
  v230 = a6;
  v216 = a5;
  v224 = a4;
  v227 = a3;
  v218 = a1;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v202 = *(v201 - 8);
  v11 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v197 = &v159 - v12;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v200 = *(v199 - 8);
  v13 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v194 = &v159 - v14;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v198 = *(v196 - 8);
  v15 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v193 = &v159 - v16;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D28, &qword_1E65FAA78);
  v190 = *(v189 - 8);
  v17 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v159 - v18;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D30, &unk_1E65FAA80);
  v192 = *(v191 - 8);
  v19 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v187 = &v159 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772E0, &qword_1E65F9908);
  v22 = *(v21 - 8);
  v195 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v188 = &v159 - v24;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v25 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185);
  v184 = (&v159 - v26);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v182 = *(v183 - 8);
  v27 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v180 = &v159 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v178 = &v159 - v31;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v181 = *(v179 - 8);
  v32 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v220 = &v159 - v33;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v177 = *(v175 - 8);
  v219 = *(v177 + 64);
  v34 = MEMORY[0x1EEE9AC00](v175);
  v176 = &v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v229 = (&v159 - v36);
  v225 = sub_1E65D76F8();
  v226 = *(v225 - 8);
  v215 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v228 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v173 = *(v174 - 8);
  v38 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v211 = &v159 - v39;
  v40 = type metadata accessor for AppComposer();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v214 = (&v159 - v45);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v172 = *(v210 - 8);
  v46 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v159 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v208 = *(v48 - 8);
  v206 = *(v208 + 64);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v204 = &v159 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v159 - v51;
  v241[3] = a7;
  v241[4] = v223;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v241);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, v224, a7);
  v203 = v52;
  *v52 = a1;
  *(v52 + 1) = a2;
  v52[16] = 0;
  swift_storeEnumTagMultiPayload();
  v54 = v230;
  v217 = *v230;
  v55 = &v159 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(v230, v55);
  v56 = *(v41 + 80);
  v57 = ((v56 + 16) & ~v56) + v42;
  v58 = (v56 + 16) & ~v56;
  v59 = v56 | 7;
  v60 = swift_allocObject();
  sub_1E5E1E5F8(v55, v60 + v58, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v54, v55);
  v61 = swift_allocObject();
  sub_1E5E1E5F8(v55, v61 + v58, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v54, v55);
  v207 = v57;
  v222 = v59;
  v62 = swift_allocObject();
  v224 = v58;
  v223 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v55, v62 + v58, type metadata accessor for AppComposer);
  v63 = v54;
  v64 = v55;
  v221 = v55;
  sub_1E5E1DEAC(v63, v55);
  v65 = swift_allocObject();
  sub_1E5E1E5F8(v64, v65 + v58, type metadata accessor for AppComposer);
  v66 = swift_allocObject();
  *(v66 + 16) = &unk_1E65FAAC8;
  *(v66 + 24) = v65;
  v67 = sub_1E604BABC();
  v205 = a2;

  v212 = v67;
  sub_1E65DEB78();
  sub_1E65DE8E8();
  v68 = v203;
  v69 = v204;
  sub_1E5DFD1CC(v203, v204, &qword_1ED073950, &unk_1E65F4360);
  v70 = v226;
  v71 = *(v226 + 16);
  v213 = v226 + 16;
  v214 = v71;
  v72 = v228;
  v73 = v225;
  v71(v228, v227, v225);
  v160 = *(v208 + 80);
  v74 = (v160 + 16) & ~v160;
  v170 = *(v70 + 80);
  v75 = v70;
  v76 = (v74 + v206 + v170) & ~v170;
  v77 = swift_allocObject();
  sub_1E5FAB460(v69, v77 + v74, &qword_1ED073950, &unk_1E65F4360);
  v78 = *(v75 + 32);
  v226 = v75 + 32;
  v171 = v78;
  v78(v77 + v76, v72, v73);
  sub_1E5DFD1CC(v68, v69, &qword_1ED073950, &unk_1E65F4360);
  v79 = swift_allocObject() + v74;
  v80 = v69;
  sub_1E5FAB460(v69, v79, &qword_1ED073950, &unk_1E65F4360);
  v169 = type metadata accessor for AppFeature();
  v168 = sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v161 = sub_1E5FED46C(&qword_1ED077D68, &unk_1ED077D50, &unk_1E65FAAA0);
  sub_1E65E4DE8();
  v81 = v221;
  sub_1E5E1DEAC(v230, v221);
  v82 = v216;
  v164 = *v216;
  v165 = v216[3];
  v166 = v216[5];
  v167 = v216[7];
  v208 = v216[9];
  sub_1E5DFD1CC(v68, v80, &qword_1ED073950, &unk_1E65F4360);
  v83 = (v207 + 7) & 0xFFFFFFFFFFFFFFF8;
  v162 = v83 + 80;
  v163 = v83;
  v84 = (v83 + 80 + v160) & ~v160;
  v85 = swift_allocObject();
  sub_1E5E1E5F8(v81, v85 + v224, v223);
  v86 = (v85 + v83);
  v87 = v82[3];
  v86[2] = v82[2];
  v86[3] = v87;
  v86[4] = v82[4];
  v88 = v82[1];
  *v86 = *v82;
  v86[1] = v88;
  sub_1E5FAB460(v204, v85 + v84, &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1E62C78AC;
  *(v89 + 24) = v85;

  v90 = v209;
  v91 = v211;
  v92 = v210;
  v206 = sub_1E65E4F08();

  (*(v173 + 8))(v91, v174);
  (*(v172 + 8))(v90, v92);
  sub_1E5DFE50C(v203, &qword_1ED073950, &unk_1E65F4360);
  v93 = v229;
  v94 = v205;
  *v229 = v218;
  v93[1] = v94;
  *(v93 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v95 = v230;
  v96 = v221;
  sub_1E5E1DEAC(v230, v221);
  v211 = swift_allocObject();
  v97 = v224;
  v98 = v223;
  sub_1E5E1E5F8(v96, &v211[v224], v223);
  sub_1E5E1DEAC(v95, v96);
  v99 = swift_allocObject();
  sub_1E5E1E5F8(v96, v99 + v97, v98);
  sub_1E5E1DEAC(v95, v96);
  v100 = swift_allocObject();
  sub_1E5E1E5F8(v96, v100 + v97, v98);
  v101 = swift_allocObject();
  *(v101 + 16) = &unk_1E65FB338;
  *(v101 + 24) = v100;
  sub_1E5E1DEAC(v95, v96);
  v102 = swift_allocObject();
  sub_1E5E1E5F8(v96, v102 + v97, v98);

  sub_1E65DED58();
  sub_1E65DEAC8();
  v103 = v176;
  sub_1E5DFD1CC(v229, v176, &qword_1ED072AA8, &unk_1E65FA900);
  v104 = v228;
  v105 = v225;
  v214(v228, v227, v225);
  v106 = *(v177 + 80);
  v107 = (v106 + 16) & ~v106;
  v108 = (v107 + v219 + v170) & ~v170;
  v109 = v108 + v215;
  v110 = swift_allocObject();
  sub_1E5FAB460(v103, v110 + v107, &qword_1ED072AA8, &unk_1E65FA900);
  v171(v110 + v108, v104, v105);
  *(v110 + v109) = 0;
  v111 = v229;
  v112 = v103;
  sub_1E5DFD1CC(v229, v103, &qword_1ED072AA8, &unk_1E65FA900);
  v113 = swift_allocObject();
  sub_1E5FAB460(v103, v113 + v107, &qword_1ED072AA8, &unk_1E65FA900);
  v226 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  v114 = v180;
  v115 = v179;
  sub_1E65E4DE8();
  v116 = v221;
  sub_1E5E1DEAC(v230, v221);
  sub_1E5DFD1CC(v111, v112, &qword_1ED072AA8, &unk_1E65FA900);
  v117 = (v162 + v106) & ~v106;
  v118 = swift_allocObject();
  sub_1E5E1E5F8(v116, v118 + v224, v223);
  v119 = (v118 + v163);
  v120 = v216;
  v121 = *(v216 + 3);
  v119[2] = *(v216 + 2);
  v119[3] = v121;
  v119[4] = *(v120 + 4);
  v122 = *(v120 + 1);
  *v119 = *v120;
  v119[1] = v122;
  sub_1E5FAB460(v112, v118 + v117, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v123 = swift_allocObject();
  *(v123 + 16) = sub_1E62F8D0C;
  *(v123 + 24) = v118;

  v124 = v220;
  v226 = sub_1E65E4F08();

  (*(v182 + 8))(v114, v183);
  (*(v181 + 8))(v124, v115);
  sub_1E5DFE50C(v229, &qword_1ED072AA8, &unk_1E65FA900);
  v125 = v218;
  v126 = v184;
  v127 = v205;
  *v184 = v218;
  *(v126 + 8) = v127;
  *(v126 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v128 = v127;

  v129 = v227;
  v130 = v230;
  v131 = sub_1E6200DD8(v126, v227, v120);
  sub_1E5DFE50C(v126, &unk_1ED0776E0, &qword_1E65EDC00);
  v214(v228, v129, v225);
  v231 = v130;
  v232 = v125;
  v233 = v128;
  v234 = v129;
  v235 = v120;
  v236 = v241;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D70, &qword_1E65F9100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D78, &unk_1E65FAB10);
  v132 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077D80, &qword_1E65EDC48);
  v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v134 = sub_1E604C584();
  v135 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
  v237 = v132;
  v238 = v133;
  v239 = v134;
  v240 = v135;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1ED077DA0, &qword_1ED077D78, &unk_1E65FAB10);
  v136 = v186;
  sub_1E65E45C8();
  v137 = sub_1E5FED46C(&qword_1ED077DA8, &qword_1ED077D28, &qword_1E65FAA78);
  v138 = sub_1E62438F0();
  v139 = v187;
  v140 = v189;
  sub_1E65E47F8();
  (*(v190 + 8))(v136, v140);
  v237 = v140;
  v238 = &type metadata for NavigationBarButtonStyle;
  v239 = v137;
  v240 = v138;
  swift_getOpaqueTypeConformance2();
  sub_1E6245140();
  v141 = v188;
  v142 = v191;
  sub_1E65E4948();
  (*(v192 + 8))(v139, v142);
  LODWORD(v130) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DB0, &unk_1E65FAB30) + 52);
  v143 = v226;

  v144 = v193;
  v145 = v143;
  sub_1E65DEE28();
  sub_1E604C89C();

  v146 = v194;
  sub_1E65DE568();
  v147 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
  v148 = v197;
  v149 = v196;
  MEMORY[0x1E69482C0](v144, v196, v147);
  v237 = v149;
  v238 = v147;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110);
  v150 = v146;
  v151 = v201;
  v152 = v199;
  sub_1E65E08A8();
  (*(v202 + 8))(v148, v151);
  (*(v200 + 8))(v150, v152);
  (*(v198 + 8))(v144, v149);
  v153 = swift_allocObject();
  *(v153 + 2) = v206;
  *(v153 + 3) = v145;
  *(v153 + 4) = v131;
  v154 = (v141 + *(v195 + 44));
  *v154 = sub_1E62BC1F4;
  v154[1] = v153;
  v155 = type metadata accessor for BarButtonItem();
  v154[2] = 0;
  v154[3] = 0;
  v156 = objc_allocWithZone(v155);
  v157 = sub_1E625C004(v228, v141);
  __swift_destroy_boxed_opaque_existential_1(v241);
  return v157;
}

uint64_t sub_1E62F599C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E62E65AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E62F5A7C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];

  return sub_1E62E5680();
}

uint64_t objectdestroy_59Tm()
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

uint64_t sub_1E62F6A84(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0) - 8);
  v6 = v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_1E62F6B70(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1 | ((HIDWORD(a1) & 1) << 32);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(v5, v7);
}

uint64_t sub_1E62F6C38(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t sub_1E62F6D80(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v12 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a4(a1, v4 + v9, v12);
}

uint64_t objectdestroy_178Tm(void (*a1)(void))
{
  v115 = type metadata accessor for AppComposer();
  v112 = *(*(v115 - 1) + 80);
  v110 = *(*(v115 - 1) + 64);
  v111 = (v112 + 16) & ~v112;
  v114 = v1;
  v107 = v1 + v111;
  v2 = *(v1 + v111);

  v3 = (v1 + v111 + v115[5]);
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
  v44 = *(v107 + v115[6]);

  v45 = (v107 + v115[7]);
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
  v55 = *(v107 + v115[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v115[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v107 + v115[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  a1(*(v114 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_1E62F7C50(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62EDEA0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E62F7D40(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E62ED374(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1E62F7E70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62EC9F8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E62F7F60()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6348E60(v0 + v3);
}

uint64_t sub_1E62F802C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E63493F4(a1, a2, a3, a4, a5, v6 + 16, a6);
}

uint64_t sub_1E62F8104(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6349810(a1, a2, v2 + v7);
}

uint64_t sub_1E62F81E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E65D76F8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E6349D00(a1, v9, v10, v11, v2 + v6, v12, a2);
}

uint64_t sub_1E62F8304(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65DEC18() - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 80) & ~*(v8 + 80));

  return sub_1E634AA0C(a1, a2, v2 + v6, (v2 + v7), v9);
}

uint64_t sub_1E62F83F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  return v4(&v8, a3);
}

unint64_t sub_1E62F8440()
{
  result = qword_1ED078068;
  if (!qword_1ED078068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078060, &qword_1E65FB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078068);
  }

  return result;
}

unint64_t sub_1E62F84BC()
{
  result = qword_1ED0780C8;
  if (!qword_1ED0780C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078090, &qword_1E65FB4E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078080, &qword_1E65FB4D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078078, &qword_1E65FB4D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078070, &qword_1E65FB4C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0780D0, &qword_1E65FB568);
    sub_1E5FED46C(&qword_1ED0780D8, &qword_1ED078070, &qword_1E65FB4C8);
    sub_1E62F8698();
    swift_getOpaqueTypeConformance2();
    sub_1E62F877C();
    swift_getOpaqueTypeConformance2();
    sub_1E604BABC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0780C8);
  }

  return result;
}

unint64_t sub_1E62F8698()
{
  result = qword_1ED0780E0;
  if (!qword_1ED0780E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0780D0, &qword_1E65FB568);
    sub_1E5FED46C(&qword_1ED0780D8, &qword_1ED078070, &qword_1E65FB4C8);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0780E0);
  }

  return result;
}

unint64_t sub_1E62F877C()
{
  result = qword_1ED0780E8;
  if (!qword_1ED0780E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0780E8);
  }

  return result;
}

uint64_t sub_1E62F87D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E62F8860(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E62F88FC()
{
  result = qword_1ED078110;
  if (!qword_1ED078110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078100, &qword_1E65FB570);
    sub_1E62F89B8(&qword_1ED078118, MEMORY[0x1E699DB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078110);
  }

  return result;
}

uint64_t sub_1E62F89B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E62F8A00()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1E65D76F8() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E62EBE6C((v0 + v2), v6, v7, v0 + v5, v8);
}

uint64_t sub_1E62F8B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_1E62F8BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v10 = *(type metadata accessor for AppComposer() - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = v5 + ((v12 + *(v13 + 80) + 80) & ~*(v13 + 80));

  return a5(a1, a2, v5 + v11, v5 + v12, v14);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E62F8D30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E62F8D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E62F8DDC()
{
  sub_1E65D7338();
  sub_1E65E4498();
  sub_1E65E4508();
  sub_1E65E4538();

  sub_1E608F9E4();
  sub_1E65D7358();
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  sub_1E65E4968();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

unint64_t sub_1E62F8EA0()
{
  result = qword_1EE2D72C0;
  if (!qword_1EE2D72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D72C0);
  }

  return result;
}

uint64_t sub_1E62F8EF4()
{
  v22 = sub_1E65E4548();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D7348();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v22 - v14;
  __swift_allocate_value_buffer(v13, qword_1EE2EA1C0);
  v23 = __swift_project_value_buffer(v4, qword_1EE2EA1C0);
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E44B8();

  v16 = v22;
  (*(v0 + 104))(v3, *MEMORY[0x1E6980EA8], v22);
  v17 = sub_1E65E4578();

  (*(v0 + 8))(v3, v16);
  v18 = v5[2];
  v18(v12, v9, v4);
  v24 = v17;
  sub_1E608F9E4();

  sub_1E65D7358();

  v19 = v5[1];
  v19(v9, v4);
  v20 = sub_1E65E49D8();
  v18(v15, v12, v4);
  v24 = v20;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v19(v12, v4);
  v18(v23, v15, v4);
  v24 = 0x3FC999999999999ALL;
  v25 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v19)(v15, v4);
}

uint64_t sub_1E62F9314(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E65E4548();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65D7348();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v27 = &v26 - v18;
  __swift_allocate_value_buffer(v17, a2);
  v19 = __swift_project_value_buffer(v8, a2);
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E44B8();

  (*(v4 + 104))(v7, *MEMORY[0x1E6980EA8], v3);
  v20 = sub_1E65E4578();

  (*(v4 + 8))(v7, v3);
  v21 = v9[2];
  v21(v16, v13, v8);
  v28 = v20;
  sub_1E608F9E4();

  sub_1E65D7358();

  v22 = v9[1];
  v22(v13, v8);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v23 = sub_1E65E4968();
  v24 = v27;
  v21(v27, v16, v8);
  v28 = v23;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v22(v16, v8);
  v21(v19, v24, v8);
  v28 = 0x3FC999999999999ALL;
  v29 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v22)(v24, v8);
}

uint64_t sub_1E62F9720()
{
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E4508();
  sub_1E65E4538();

  sub_1E608F9E4();
  sub_1E65D7358();
  sub_1E65E49C8();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

uint64_t sub_1E62F989C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = sub_1E65D7348();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  __swift_allocate_value_buffer(v11, a2);
  v14 = __swift_project_value_buffer(v5, a2);
  v15 = sub_1E65D7338();
  a3(v15);
  v16 = sub_1E65E44B8();

  v17 = v6[2];
  v17(v13, v10, v5);
  v22 = v16;
  sub_1E608F9E4();

  sub_1E65D7358();

  v18 = v6[1];
  v18(v10, v5);
  v19 = sub_1E65E49C8();
  v17(v14, v13, v5);
  v22 = v19;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v18)(v13, v5);
}

uint64_t sub_1E62F9A98()
{
  v0 = sub_1E65E4548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7348();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  __swift_allocate_value_buffer(v11, qword_1ED0963A8);
  v14 = __swift_project_value_buffer(v5, qword_1ED0963A8);
  sub_1E65D7338();
  sub_1E65E4598();
  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA8], v0);
  v15 = sub_1E65E4578();

  (*(v1 + 8))(v4, v0);
  v16 = v6[2];
  v16(v13, v10, v5);
  v22 = v15;
  sub_1E608F9E4();

  sub_1E65D7358();

  v17 = v6[1];
  v17(v10, v5);
  v18 = [objc_opt_self() tertiaryLabelColor];
  v16(v14, v13, v5);
  v22 = v18;
  sub_1E608F990();
  v19 = v18;
  sub_1E65D7358();

  return (v17)(v13, v5);
}

uint64_t sub_1E62F9DBC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1E65D7348();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  __swift_allocate_value_buffer(v11, a2);
  v14 = __swift_project_value_buffer(v5, a2);
  v15 = sub_1E65D7338();
  v16 = a3(v15);
  v17 = v6[2];
  v17(v13, v10, v5);
  v22 = v16;
  sub_1E608F9E4();

  sub_1E65D7358();

  v18 = v6[1];
  v18(v10, v5);
  v19 = sub_1E65E49D8();
  v17(v14, v13, v5);
  v22 = v19;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v18)(v13, v5);
}

uint64_t sub_1E62F9FFC()
{
  v0 = sub_1E65E4548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7348();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - v15;
  __swift_allocate_value_buffer(v14, qword_1ED0963F0);
  v23 = __swift_project_value_buffer(v5, qword_1ED0963F0);
  sub_1E65D7338();
  sub_1E65E4568();
  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA8], v0);
  v17 = sub_1E65E4578();

  (*(v1 + 8))(v4, v0);
  v18 = v6[2];
  v18(v13, v10, v5);
  v24 = v17;
  sub_1E608F9E4();

  sub_1E65D7358();

  v19 = v6[1];
  v19(v10, v5);
  v20 = sub_1E65E49D8();
  v18(v16, v13, v5);
  v24 = v20;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v19(v13, v5);
  v18(v23, v16, v5);
  v24 = 0x3FE0000000000000;
  v25 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v19)(v16, v5);
}

uint64_t sub_1E62FA34C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7348();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v29 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v30 = &v29 - v20;
  __swift_allocate_value_buffer(v19, a2);
  v21 = __swift_project_value_buffer(v10, a2);
  v22 = sub_1E65D7338();
  a3(v22);
  (*(v6 + 104))(v9, *MEMORY[0x1E6980EA8], v5);
  v23 = sub_1E65E4578();

  (*(v6 + 8))(v9, v5);
  v24 = v11[2];
  v24(v18, v15, v10);
  v31 = v23;
  sub_1E608F9E4();

  sub_1E65D7358();

  v25 = v11[1];
  v25(v15, v10);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v26 = sub_1E65E4968();
  v27 = v30;
  v24(v30, v18, v10);
  v31 = v26;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v25(v18, v10);
  v24(v21, v27, v10);
  v31 = 0x3FE0000000000000;
  v32 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v25)(v27, v10);
}