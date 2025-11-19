uint64_t sub_1E5F16698()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F166D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  return swift_deallocObject();
}

uint64_t sub_1E5F16730()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F16770()
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

uint64_t sub_1E5F17464@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppState() + 68) + 8);
}

uint64_t sub_1E5F174B4()
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

uint64_t sub_1E5F178E0()
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

uint64_t sub_1E5F186E0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + v2 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
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

    v14 = v6 + *(type metadata accessor for StackButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 == 2)
    {
      v18 = *(v14 + 8);

      v19 = *(v14 + 32);
    }

    else if (v15 == 1)
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v17 = sub_1E65D76A8();
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v20 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5F18990()
{
  v138 = type metadata accessor for AppComposer();
  v136 = *(*(v138 - 1) + 80);
  v1 = (v136 + 16) & ~v136;
  v133 = (*(*(v138 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0) - 8);
  v135 = *(v2 + 80);
  v134 = *(v2 + 64);
  v137 = v0;
  v130 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v0 + v1 + v138[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v132 = type metadata accessor for AccountService();
  v131 = *(v132[-1].Description + 1);
  v131(v4 + v7, v132);
  v8 = v6[7];
  v129 = type metadata accessor for AppStateService();
  v128 = *(v129[-1].Description + 1);
  v128(v4 + v8, v129);
  v9 = v6[8];
  v127 = type metadata accessor for ArchivedSessionService();
  v126 = *(v127[-1].Description + 1);
  v126(v4 + v9, v127);
  v10 = v6[9];
  v125 = type metadata accessor for AssetService();
  v124 = *(v125[-1].Description + 1);
  v124(v4 + v10, v125);
  v11 = v6[10];
  v123 = type metadata accessor for AwardsService();
  v122 = *(v123[-1].Description + 1);
  v122(v4 + v11, v123);
  v12 = v6[11];
  v121 = type metadata accessor for BookmarkService();
  v120 = *(v121[-1].Description + 1);
  v120(v4 + v12, v121);
  v13 = v6[12];
  v119 = type metadata accessor for CatalogService();
  v118 = *(v119[-1].Description + 1);
  v118(v4 + v13, v119);
  v14 = v6[13];
  v117 = type metadata accessor for ConfigurationService();
  v116 = *(v117[-1].Description + 1);
  v116(v4 + v14, v117);
  v15 = v6[14];
  v115 = type metadata accessor for ContentAvailabilityService();
  v114 = *(v115[-1].Description + 1);
  v114(v4 + v15, v115);
  v16 = v6[15];
  v113 = type metadata accessor for EngagementService();
  v112 = *(v113[-1].Description + 1);
  v112(v4 + v16, v113);
  v17 = v6[16];
  v111 = type metadata accessor for HealthDataService();
  v110 = *(v111[-1].Description + 1);
  v110(v4 + v17, v111);
  v18 = v6[17];
  v109 = type metadata accessor for InteropService();
  v108 = *(v109[-1].Description + 1);
  v108(v4 + v18, v109);
  v19 = v6[18];
  v107 = type metadata accessor for LocalizationService();
  v106 = *(v107[-1].Description + 1);
  v106(v4 + v19, v107);
  v20 = v6[19];
  v105 = type metadata accessor for MarketingService();
  v104 = *(v105[-1].Description + 1);
  v104(v4 + v20, v105);
  v21 = v6[20];
  v103 = type metadata accessor for MetricService();
  v102 = *(v103[-1].Description + 1);
  v102(v4 + v21, v103);
  v22 = v6[21];
  v101 = type metadata accessor for PersonalizationService();
  v100 = *(v101[-1].Description + 1);
  v100(v4 + v22, v101);
  v23 = v6[22];
  v99 = type metadata accessor for PlayerService();
  v98 = *(v99[-1].Description + 1);
  v98(v4 + v23, v99);
  v24 = v6[23];
  v97 = type metadata accessor for PrivacyPreferenceService();
  v96 = *(v97[-1].Description + 1);
  v96(v4 + v24, v97);
  v25 = v6[24];
  v95 = type metadata accessor for RecommendationService();
  v94 = *(v95[-1].Description + 1);
  v94(v4 + v25, v95);
  v26 = v6[25];
  v93 = type metadata accessor for RemoteBrowsingService();
  v92 = *(v93[-1].Description + 1);
  v92(v4 + v26, v93);
  v27 = v6[26];
  v91 = type metadata accessor for SearchService();
  v90 = *(v91[-1].Description + 1);
  v90(v4 + v27, v91);
  v28 = v6[27];
  v89 = type metadata accessor for ServiceSubscriptionService();
  v88 = *(v89[-1].Description + 1);
  v88(v4 + v28, v89);
  v29 = v6[28];
  v82 = type metadata accessor for SessionService();
  v87 = *(v82[-1].Description + 1);
  v87(v4 + v29, v82);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v86 = *(v31[-1].Description + 1);
  v86(v4 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v85 = *(v33[-1].Description + 1);
  v85(v4 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v84 = *(v35[-1].Description + 1);
  v84(v4 + v34, v35);
  v36 = (v4 + v6[32]);
  v37 = v36[1];

  v38 = v36[3];

  v39 = v36[5];

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v83 = *(QueueService[-1].Description + 1);
  v83(v4 + v40, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v6[34]));
  v42 = *(v4 + v6[35]);

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v81 = *(v44[-1].Description + 1);
  v81(v4 + v43, v44);
  v45 = *(v130 + v138[6]);

  v46 = (v130 + v138[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = (v46 + *(type metadata accessor for AppDataItemResolver() + 24));
  v50 = *v49;
  swift_unknownObjectRelease();
  v131(v49 + v6[6], v132);
  v128(v49 + v6[7], v129);
  v126(v49 + v6[8], v127);
  v124(v49 + v6[9], v125);
  v122(v49 + v6[10], v123);
  v120(v49 + v6[11], v121);
  v118(v49 + v6[12], v119);
  v116(v49 + v6[13], v117);
  v114(v49 + v6[14], v115);
  v112(v49 + v6[15], v113);
  v110(v49 + v6[16], v111);
  v108(v49 + v6[17], v109);
  v106(v49 + v6[18], v107);
  v104(v49 + v6[19], v105);
  v102(v49 + v6[20], v103);
  v100(v49 + v6[21], v101);
  v98(v49 + v6[22], v99);
  v96(v49 + v6[23], v97);
  v94(v49 + v6[24], v95);
  v92(v49 + v6[25], v93);
  v90(v49 + v6[26], v91);
  v88(v49 + v6[27], v89);
  v87(v49 + v6[28], v82);
  v86(v49 + v6[29], v31);
  v85(v49 + v6[30], v33);
  v84(v49 + v6[31], v35);
  v51 = (v49 + v6[32]);
  v52 = v51[1];

  v53 = v51[3];

  v54 = v51[5];

  v83(v49 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v49 + v6[34]));
  v55 = *(v49 + v6[35]);

  v81(v49 + v6[36], v44);
  v56 = *(v130 + v138[8]);
  swift_unknownObjectRelease();
  if (*(v130 + v138[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v133 + v135 + 80) & ~v135;
  v58 = (v130 + v138[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v59 = *(v137 + v133);
  swift_unknownObjectRelease();
  v60 = *(v137 + v133 + 24);

  v61 = *(v137 + v133 + 40);

  v62 = *(v137 + v133 + 56);

  v63 = *(v137 + v133 + 72);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = *(v137 + v57 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v66 = v137 + v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v67 = swift_getEnumCaseMultiPayload();
    switch(v67)
    {
      case 2:
        v72 = *(v66 + 8);

        v73 = *(v66 + 32);

        break;
      case 1:
        v69 = sub_1E65DE788();
        (*(*(v69 - 8) + 8))(v66, v69);
        v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v71 = sub_1E65D76A8();
        (*(*(v71 - 8) + 8))(v66 + v70, v71);
        break;
      case 0:
        v68 = sub_1E65DE788();
        (*(*(v68 - 8) + 8))(v66, v68);
        break;
    }

    v74 = v66 + *(type metadata accessor for StackButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v75 = swift_getEnumCaseMultiPayload();
    if (v75 == 2)
    {
      v78 = *(v74 + 8);

      v79 = *(v74 + 32);
    }

    else if (v75 == 1)
    {
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v77 = sub_1E65D76A8();
      (*(*(v77 - 8) + 8))(v74 + v76, v77);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F19908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F19940()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];
  swift_unknownObjectRelease();
  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_1E5F199A8()
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

uint64_t sub_1E5F1A6C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F1A6FC()
{
  v1 = type metadata accessor for CatalogService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 24) & ~*(Description + 80);
  v4 = Description[8];
  v5 = type metadata accessor for SyncService();
  v6 = v5[-1].Description;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v6[8];
  v9 = *(v0 + 16);

  (Description[1])(v0 + v3, v1);
  (v6[1])(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5F1A84C()
{
  v1 = type metadata accessor for AppStateService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = v3 + Description[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D8, &qword_1E65FE0B0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5F1A9A8()
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

uint64_t sub_1E5F1B66C()
{
  v1 = type metadata accessor for WorkoutPlanService();
  Description = v1[-1].Description;
  v3 = Description[8];
  (Description[1])(v0 + ((*(Description + 80) + 16) & ~*(Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F1B72C()
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

uint64_t sub_1E5F1C410()
{
  v1 = sub_1E65DBB88();
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

uint64_t sub_1E5F1D15C()
{
  v126 = type metadata accessor for AppComposer();
  v121 = *(*(v126 - 1) + 80);
  v119 = *(*(v126 - 1) + 64);
  v1 = sub_1E65DBB88();
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

uint64_t sub_1E5F1DEEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F1DF30()
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
  v57 = (v56 + 87) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v121 + v56);
  v59 = *(v121 + v56);
  swift_unknownObjectRelease();
  v60 = v58[3];

  v61 = v58[5];

  v62 = v58[7];

  v63 = v58[9];

  v64 = *(v121 + v57 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5F1EC4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F1EC84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078958, qword_1E65FE3C0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5F1ED30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5F1ED74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5F1EDB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5F1EE64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E65D8F28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5F1EF08(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1E65E3DE8();
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  sub_1E65E4AC8();

  return swift_getWitnessTable();
}

uint64_t sub_1E5F1EFB8()
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

uint64_t sub_1E5F1FC9C()
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

uint64_t sub_1E5F20998()
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

uint64_t sub_1E5F2168C()
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

uint64_t sub_1E5F22384()
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

uint64_t sub_1E5F23054()
{
  v1 = *(sub_1E65E0B48() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for AppComposer();
  v121 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v121) & ~v121;
  v119 = *(*(v4 - 1) + 64);
  v6 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
    {
      goto LABEL_11;
    }

LABEL_10:
    v9 = *(v6 + 8);

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload > 1 || !EnumCaseMultiPayload)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_1E65E0FD8();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

LABEL_11:
  v122 = v0;
  v120 = v5;
  v116 = v0 + v5;
  v10 = *(v0 + v5);

  v11 = (v0 + v5 + v4[5]);
  v12 = *v11;
  swift_unknownObjectRelease();
  v13 = type metadata accessor for AppEnvironment();
  v14 = v13[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(v11 + v14, v118);
  v15 = v13[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(v11 + v15, v115);
  v16 = v13[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(v11 + v16, v113);
  v17 = v13[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(v11 + v17, v111);
  v18 = v13[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(v11 + v18, v109);
  v19 = v13[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(v11 + v19, v107);
  v20 = v13[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(v11 + v20, v105);
  v21 = v13[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(v11 + v21, v103);
  v22 = v13[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(v11 + v22, v101);
  v23 = v13[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(v11 + v23, v99);
  v24 = v13[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(v11 + v24, v97);
  v25 = v13[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(v11 + v25, v95);
  v26 = v13[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(v11 + v26, v93);
  v27 = v13[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(v11 + v27, v91);
  v28 = v13[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(v11 + v28, v89);
  v29 = v13[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(v11 + v29, v87);
  v30 = v13[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(v11 + v30, v85);
  v31 = v13[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(v11 + v31, v83);
  v32 = v13[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(v11 + v32, v81);
  v33 = v13[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(v11 + v33, v79);
  v34 = v13[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(v11 + v34, v77);
  v35 = v13[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(v11 + v35, v75);
  v36 = v13[28];
  v69 = type metadata accessor for SessionService();
  v73 = *(v69[-1].Description + 1);
  v73(v11 + v36, v69);
  v37 = v13[29];
  v67 = type metadata accessor for SharePlayService();
  v72 = *(v67[-1].Description + 1);
  v72(v11 + v37, v67);
  v38 = v13[30];
  v39 = type metadata accessor for SiriService();
  v71 = *(v39[-1].Description + 1);
  v71(v11 + v38, v39);
  v40 = v13[31];
  v41 = type metadata accessor for SyncService();
  v70 = *(v41[-1].Description + 1);
  v70(v11 + v40, v41);
  v42 = (v11 + v13[32]);
  v43 = v42[1];

  v44 = v42[3];

  v45 = v42[5];

  v46 = v13[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(v11 + v46, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v11 + v13[34]));
  v48 = *(v11 + v13[35]);

  v49 = v13[36];
  v50 = type metadata accessor for WorkoutPlanService();
  v51 = *(v50[-1].Description + 1);
  v51(v11 + v49, v50);
  v52 = *(v116 + v4[6]);

  v53 = (v116 + v4[7]);
  v54 = *v53;

  v55 = v53[1];

  v56 = (v53 + *(type metadata accessor for AppDataItemResolver() + 24));
  v57 = *v56;
  swift_unknownObjectRelease();
  v117(v56 + v13[6], v118);
  v114(v56 + v13[7], v115);
  v112(v56 + v13[8], v113);
  v110(v56 + v13[9], v111);
  v108(v56 + v13[10], v109);
  v106(v56 + v13[11], v107);
  v104(v56 + v13[12], v105);
  v102(v56 + v13[13], v103);
  v100(v56 + v13[14], v101);
  v98(v56 + v13[15], v99);
  v96(v56 + v13[16], v97);
  v94(v56 + v13[17], v95);
  v92(v56 + v13[18], v93);
  v90(v56 + v13[19], v91);
  v88(v56 + v13[20], v89);
  v86(v56 + v13[21], v87);
  v84(v56 + v13[22], v85);
  v82(v56 + v13[23], v83);
  v80(v56 + v13[24], v81);
  v78(v56 + v13[25], v79);
  v76(v56 + v13[26], v77);
  v74(v56 + v13[27], v75);
  v73(v56 + v13[28], v69);
  v72(v56 + v13[29], v67);
  v71(v56 + v13[30], v39);
  v70(v56 + v13[31], v41);
  v58 = (v56 + v13[32]);
  v59 = v58[1];

  v60 = v58[3];

  v61 = v58[5];

  v68(v56 + v13[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v56 + v13[34]));
  v62 = *(v56 + v13[35]);

  v51(v56 + v13[36], v50);
  v63 = *(v116 + v4[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v4[9] + 8) >= 0xCuLL)
  {
  }

  v64 = (v116 + v4[10]);
  if (v64[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v65 = *(v122 + ((v119 + v120 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5F23E44()
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

uint64_t sub_1E5F24B40()
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

uint64_t sub_1E5F25834()
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

uint64_t sub_1E5F2652C()
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

uint64_t sub_1E5F27200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E65DEBB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5F27278@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = sub_1E65E4EC8();
  *a3 = v7;
  return result;
}

uint64_t sub_1E5F27324()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F27380(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1E65E4EC8();
}

uint64_t sub_1E5F273F4()
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

uint64_t sub_1E5F282BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F28350()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F283A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F283D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1E5F28420()
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

uint64_t sub_1E5F29424()
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

uint64_t sub_1E5F2A11C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F2A1F8()
{
  v1 = type metadata accessor for ServiceSubscriptionService();
  Description = v1[-1].Description;
  v3 = Description[8];
  (Description[1])(v0 + ((*(Description + 80) + 16) & ~*(Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F2A31C()
{
  v1 = sub_1E65D7A38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F2A3A4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F2A3DC()
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

uint64_t sub_1E5F2B0D0()
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

uint64_t sub_1E5F2BDC8()
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

uint64_t sub_1E5F2CA98()
{
  v120 = type metadata accessor for AppComposer();
  v118 = *(*(v120 - 1) + 80);
  v114 = *(*(v120 - 1) + 64);
  v117 = sub_1E65D7A38();
  v115 = *(v117 - 8);
  v113 = *(v115 + 80);
  v112 = *(v115 + 64);
  v119 = v0;
  v116 = (v118 + 16) & ~v118;
  v109 = v0 + v116;
  v1 = *(v0 + v116);

  v2 = (v0 + v116 + v120[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(v2 + v5, v111);
  v6 = v4[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(v2 + v6, v108);
  v7 = v4[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(v2 + v7, v106);
  v8 = v4[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(v2 + v8, v104);
  v9 = v4[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(v2 + v9, v102);
  v10 = v4[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(v2 + v10, v100);
  v11 = v4[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(v2 + v11, v98);
  v12 = v4[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(v2 + v12, v96);
  v13 = v4[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(v2 + v13, v94);
  v14 = v4[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v14, v92);
  v15 = v4[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(v2 + v15, v90);
  v16 = v4[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(v2 + v16, v88);
  v17 = v4[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(v2 + v17, v86);
  v18 = v4[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(v2 + v18, v84);
  v19 = v4[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(v2 + v19, v82);
  v20 = v4[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(v2 + v20, v80);
  v21 = v4[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(v2 + v21, v78);
  v22 = v4[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(v2 + v22, v76);
  v23 = v4[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(v2 + v23, v74);
  v24 = v4[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(v2 + v24, v72);
  v25 = v4[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(v2 + v25, v70);
  v26 = v4[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(v2 + v26, v68);
  v27 = v4[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(v2 + v27, v61);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v65 = *(v29[-1].Description + 1);
  v65(v2 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v64 = *(v31[-1].Description + 1);
  v64(v2 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v63 = *(v33[-1].Description + 1);
  v63(v2 + v32, v33);
  v34 = (v2 + v4[32]);
  v35 = v34[1];

  v36 = v34[3];

  v37 = v34[5];

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(v2 + v38, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4[34]));
  v40 = *(v2 + v4[35]);

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v60 = *(v42[-1].Description + 1);
  v60(v2 + v41, v42);
  v43 = *(v109 + v120[6]);

  v44 = (v109 + v120[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = (v44 + *(type metadata accessor for AppDataItemResolver() + 24));
  v48 = *v47;
  swift_unknownObjectRelease();
  v110(v47 + v4[6], v111);
  v107(v47 + v4[7], v108);
  v105(v47 + v4[8], v106);
  v103(v47 + v4[9], v104);
  v101(v47 + v4[10], v102);
  v99(v47 + v4[11], v100);
  v97(v47 + v4[12], v98);
  v95(v47 + v4[13], v96);
  v93(v47 + v4[14], v94);
  v91(v47 + v4[15], v92);
  v89(v47 + v4[16], v90);
  v87(v47 + v4[17], v88);
  v85(v47 + v4[18], v86);
  v83(v47 + v4[19], v84);
  v81(v47 + v4[20], v82);
  v79(v47 + v4[21], v80);
  v77(v47 + v4[22], v78);
  v75(v47 + v4[23], v76);
  v73(v47 + v4[24], v74);
  v71(v47 + v4[25], v72);
  v69(v47 + v4[26], v70);
  v67(v47 + v4[27], v68);
  v66(v47 + v4[28], v61);
  v65(v47 + v4[29], v29);
  v64(v47 + v4[30], v31);
  v63(v47 + v4[31], v33);
  v49 = (v47 + v4[32]);
  v50 = v49[1];

  v51 = v49[3];

  v52 = v49[5];

  v62(v47 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v47 + v4[34]));
  v53 = *(v47 + v4[35]);

  v60(v47 + v4[36], v42);
  v54 = *(v109 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v109 + v120[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v116 + v114 + v113) & ~v113;
  v57 = (v112 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v115 + 8))(v119 + v56, v117);
  v58 = *(v119 + v57);

  return swift_deallocObject();
}

uint64_t sub_1E5F2D808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D76F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5F2D874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D76F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5F2D91C()
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

uint64_t sub_1E5F2E5E0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for AppComposer();
  v125 = *(*(v4 - 8) + 80);
  v5 = (v2 + v3 + v125) & ~v125;
  v124 = *(*(v4 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = v0 + v2;
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v7 = *(v6 + 8);

  if (v3 == 1)
  {
    v8 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E40, &unk_1E65FABD0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v14 = *(v8 + 8);

        v15 = *(v8 + 32);

        break;
      case 1:
        v11 = sub_1E65DECD8();
        (*(*(v11 - 8) + 8))(v8, v11);
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E50, &unk_1E65FABE0) + 48);
        v13 = sub_1E65D76A8();
        (*(*(v13 - 8) + 8))(v8 + v12, v13);
        break;
      case 0:
        v10 = sub_1E65DECD8();
        (*(*(v10 - 8) + 8))(v8, v10);
        break;
    }
  }

  v121 = v0 + v5;
  v16 = *(v0 + v5);

  v126 = v4;
  v17 = (v0 + v5 + *(v4 + 20));
  v18 = *v17;
  swift_unknownObjectRelease();
  v19 = type metadata accessor for AppEnvironment();
  v20 = v19[6];
  v123 = type metadata accessor for AccountService();
  v122 = *(v123[-1].Description + 1);
  v122(v17 + v20, v123);
  v21 = v19[7];
  v120 = type metadata accessor for AppStateService();
  v119 = *(v120[-1].Description + 1);
  v119(v17 + v21, v120);
  v22 = v19[8];
  v118 = type metadata accessor for ArchivedSessionService();
  v117 = *(v118[-1].Description + 1);
  v117(v17 + v22, v118);
  v23 = v19[9];
  v116 = type metadata accessor for AssetService();
  v115 = *(v116[-1].Description + 1);
  v115(v17 + v23, v116);
  v24 = v19[10];
  v114 = type metadata accessor for AwardsService();
  v113 = *(v114[-1].Description + 1);
  v113(v17 + v24, v114);
  v25 = v19[11];
  v112 = type metadata accessor for BookmarkService();
  v111 = *(v112[-1].Description + 1);
  v111(v17 + v25, v112);
  v26 = v19[12];
  v110 = type metadata accessor for CatalogService();
  v109 = *(v110[-1].Description + 1);
  v109(v17 + v26, v110);
  v27 = v19[13];
  v108 = type metadata accessor for ConfigurationService();
  v107 = *(v108[-1].Description + 1);
  v107(v17 + v27, v108);
  v28 = v19[14];
  v106 = type metadata accessor for ContentAvailabilityService();
  v105 = *(v106[-1].Description + 1);
  v105(v17 + v28, v106);
  v29 = v19[15];
  v104 = type metadata accessor for EngagementService();
  v103 = *(v104[-1].Description + 1);
  v103(v17 + v29, v104);
  v30 = v19[16];
  v102 = type metadata accessor for HealthDataService();
  v101 = *(v102[-1].Description + 1);
  v101(v17 + v30, v102);
  v31 = v19[17];
  v100 = type metadata accessor for InteropService();
  v99 = *(v100[-1].Description + 1);
  v99(v17 + v31, v100);
  v32 = v19[18];
  v98 = type metadata accessor for LocalizationService();
  v97 = *(v98[-1].Description + 1);
  v97(v17 + v32, v98);
  v33 = v19[19];
  v96 = type metadata accessor for MarketingService();
  v95 = *(v96[-1].Description + 1);
  v95(v17 + v33, v96);
  v34 = v19[20];
  v94 = type metadata accessor for MetricService();
  v93 = *(v94[-1].Description + 1);
  v93(v17 + v34, v94);
  v35 = v19[21];
  v92 = type metadata accessor for PersonalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(v17 + v35, v92);
  v36 = v19[22];
  v90 = type metadata accessor for PlayerService();
  v89 = *(v90[-1].Description + 1);
  v89(v17 + v36, v90);
  v37 = v19[23];
  v88 = type metadata accessor for PrivacyPreferenceService();
  v87 = *(v88[-1].Description + 1);
  v87(v17 + v37, v88);
  v38 = v19[24];
  v86 = type metadata accessor for RecommendationService();
  v85 = *(v86[-1].Description + 1);
  v85(v17 + v38, v86);
  v39 = v19[25];
  v84 = type metadata accessor for RemoteBrowsingService();
  v83 = *(v84[-1].Description + 1);
  v83(v17 + v39, v84);
  v40 = v19[26];
  v82 = type metadata accessor for SearchService();
  v81 = *(v82[-1].Description + 1);
  v81(v17 + v40, v82);
  v41 = v19[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v80 = *(v75[-1].Description + 1);
  v80(v17 + v41, v75);
  v42 = v19[28];
  v73 = type metadata accessor for SessionService();
  v79 = *(v73[-1].Description + 1);
  v79(v17 + v42, v73);
  v43 = v19[29];
  v44 = type metadata accessor for SharePlayService();
  v78 = *(v44[-1].Description + 1);
  v78(v17 + v43, v44);
  v45 = v19[30];
  v46 = type metadata accessor for SiriService();
  v77 = *(v46[-1].Description + 1);
  v77(v17 + v45, v46);
  v47 = v19[31];
  v48 = type metadata accessor for SyncService();
  v76 = *(v48[-1].Description + 1);
  v76(v17 + v47, v48);
  v49 = (v17 + v19[32]);
  v50 = v49[1];

  v51 = v49[3];

  v52 = v49[5];

  v53 = v19[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v74 = *(QueueService[-1].Description + 1);
  v74(v17 + v53, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v17 + v19[34]));
  v55 = *(v17 + v19[35]);

  v56 = v19[36];
  v57 = type metadata accessor for WorkoutPlanService();
  v58 = *(v57[-1].Description + 1);
  v58(v17 + v56, v57);
  v59 = *(v121 + v126[6]);

  v60 = (v121 + v126[7]);
  v61 = *v60;

  v62 = v60[1];

  v63 = (v60 + *(type metadata accessor for AppDataItemResolver() + 24));
  v64 = *v63;
  swift_unknownObjectRelease();
  v122(v63 + v19[6], v123);
  v119(v63 + v19[7], v120);
  v117(v63 + v19[8], v118);
  v115(v63 + v19[9], v116);
  v113(v63 + v19[10], v114);
  v111(v63 + v19[11], v112);
  v109(v63 + v19[12], v110);
  v107(v63 + v19[13], v108);
  v105(v63 + v19[14], v106);
  v103(v63 + v19[15], v104);
  v101(v63 + v19[16], v102);
  v99(v63 + v19[17], v100);
  v97(v63 + v19[18], v98);
  v95(v63 + v19[19], v96);
  v93(v63 + v19[20], v94);
  v91(v63 + v19[21], v92);
  v89(v63 + v19[22], v90);
  v87(v63 + v19[23], v88);
  v85(v63 + v19[24], v86);
  v83(v63 + v19[25], v84);
  v81(v63 + v19[26], v82);
  v80(v63 + v19[27], v75);
  v79(v63 + v19[28], v73);
  v78(v63 + v19[29], v44);
  v77(v63 + v19[30], v46);
  v76(v63 + v19[31], v48);
  v65 = (v63 + v19[32]);
  v66 = v65[1];

  v67 = v65[3];

  v68 = v65[5];

  v74(v63 + v19[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v63 + v19[34]));
  v69 = *(v63 + v19[35]);

  v58(v63 + v19[36], v57);
  v70 = *(v121 + v126[8]);
  swift_unknownObjectRelease();
  if (*(v121 + v126[9] + 8) >= 0xCuLL)
  {
  }

  v71 = (v121 + v126[10]);
  if (v71[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F2F470()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v3 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E40, &unk_1E65FABD0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
    v7 = swift_getEnumCaseMultiPayload();
    switch(v7)
    {
      case 2:
        v12 = *(v6 + 8);

        v13 = *(v6 + 32);

        break;
      case 1:
        v9 = sub_1E65DECD8();
        (*(*(v9 - 8) + 8))(v6, v9);
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E50, &unk_1E65FABE0) + 48);
        v11 = sub_1E65D76A8();
        (*(*(v11 - 8) + 8))(v6 + v10, v11);
        break;
      case 0:
        v8 = sub_1E65DECD8();
        (*(*(v8 - 8) + 8))(v6, v8);
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F2F668()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1E5F2F6C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F2F6F8()
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

uint64_t sub_1E5F2FA80@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  result = sub_1E65DE6D8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E5F2FB14@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  result = sub_1E65DE6E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5F2FB64()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F2FB9C()
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
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v116 + v56);

  v59 = *(v116 + v57);

  return swift_deallocObject();
}

uint64_t sub_1E5F3088C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F308C8()
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

  v56 = (v115 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v118 + v56);

  v60 = *(v118 + v57);

  __swift_destroy_boxed_opaque_existential_1((v118 + v58));
  v61 = *(v118 + ((v58 + 47) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5F315E4()
{
  v117 = type metadata accessor for AppComposer();
  v115 = *(*(v117 - 1) + 80);
  v113 = *(*(v117 - 1) + 64);
  v1 = *(v0 + 16);

  v116 = v0;
  v114 = (v115 + 24) & ~v115;
  v110 = v0 + v114;
  v2 = *(v0 + v114);

  v3 = (v0 + v114 + v117[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v3[v6], v112);
  v7 = v5[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v7], v109);
  v8 = v5[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v8], v107);
  v9 = v5[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v9], v105);
  v10 = v5[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v10], v103);
  v11 = v5[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v11], v101);
  v12 = v5[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v12], v99);
  v13 = v5[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v13], v97);
  v14 = v5[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v14], v95);
  v15 = v5[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v15], v93);
  v16 = v5[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v16], v91);
  v17 = v5[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v17], v89);
  v18 = v5[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v18], v87);
  v19 = v5[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v19], v85);
  v20 = v5[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v20], v83);
  v21 = v5[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v21], v81);
  v22 = v5[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v22], v79);
  v23 = v5[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v23], v77);
  v24 = v5[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v24], v75);
  v25 = v5[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v3[v25], v73);
  v26 = v5[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v3[v26], v71);
  v27 = v5[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v3[v27], v69);
  v28 = v5[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v3[v28], v62);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v66 = *(v30[-1].Description + 1);
  v66(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v65 = *(v32[-1].Description + 1);
  v65(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v64 = *(v34[-1].Description + 1);
  v64(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v61 = *(v43[-1].Description + 1);
  v61(&v3[v42], v43);
  v44 = *(v110 + v117[6]);

  v45 = (v110 + v117[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v111(&v48[v5[6]], v112);
  v108(&v48[v5[7]], v109);
  v106(&v48[v5[8]], v107);
  v104(&v48[v5[9]], v105);
  v102(&v48[v5[10]], v103);
  v100(&v48[v5[11]], v101);
  v98(&v48[v5[12]], v99);
  v96(&v48[v5[13]], v97);
  v94(&v48[v5[14]], v95);
  v92(&v48[v5[15]], v93);
  v90(&v48[v5[16]], v91);
  v88(&v48[v5[17]], v89);
  v86(&v48[v5[18]], v87);
  v84(&v48[v5[19]], v85);
  v82(&v48[v5[20]], v83);
  v80(&v48[v5[21]], v81);
  v78(&v48[v5[22]], v79);
  v76(&v48[v5[23]], v77);
  v74(&v48[v5[24]], v75);
  v72(&v48[v5[25]], v73);
  v70(&v48[v5[26]], v71);
  v68(&v48[v5[27]], v69);
  v67(&v48[v5[28]], v62);
  v66(&v48[v5[29]], v30);
  v65(&v48[v5[30]], v32);
  v64(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v63(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v61(&v48[v5[36]], v43);
  v55 = *(v110 + v117[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v117[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v110 + v117[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v113 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v116 + v57);

  __swift_destroy_boxed_opaque_existential_1((v116 + v58));

  return swift_deallocObject();
}

uint64_t sub_1E5F322E0()
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

  v56 = (v113 + v112) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v115 + v56 + 8);

  __swift_destroy_boxed_opaque_existential_1((v115 + v57));

  return swift_deallocObject();
}

uint64_t sub_1E5F32FD0()
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
  v57 = (v56 + 95) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v121 + v56);
  v59 = *(v121 + v56);

  v60 = v58[1];
  swift_unknownObjectRelease();
  v61 = v58[4];

  v62 = v58[6];

  v63 = v58[8];

  v64 = v58[10];

  __swift_destroy_boxed_opaque_existential_1((v121 + v57));

  return swift_deallocObject();
}

uint64_t sub_1E5F33CEC()
{
  v1 = *(sub_1E65DF618() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65DF6C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 2)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077328, &qword_1E65F99C0);
    (*(v5 + 8))(v0 + v2 + *(v11 + 48), v4);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_1E65DF658();
    (*(*(v10 - 8) + 8))(v0 + v2, v10);
  }

  v12 = (v2 + v3 + v6) & ~v6;
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v12, v4);
  v14 = *(v0 + v13);
  swift_unknownObjectRelease();
  v15 = *(v0 + v13 + 24);

  v16 = *(v0 + v13 + 40);

  v17 = *(v0 + v13 + 56);

  v18 = *(v0 + v13 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5F33EF4()
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

uint64_t sub_1E5F34BBC()
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

uint64_t sub_1E5F358B8()
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

uint64_t sub_1E5F365AC()
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

uint64_t sub_1E5F372A4()
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

uint64_t sub_1E5F37F80()
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

uint64_t sub_1E5F37FE0()
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

uint64_t sub_1E5F38CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F38D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F38D84()
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

uint64_t sub_1E5F39B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F39B80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F39BB8()
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

uint64_t sub_1E5F3A888()
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

uint64_t sub_1E5F3B58C()
{
  v1 = sub_1E65E30D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1E65E30C8();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
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

uint64_t sub_1E5F3B74C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5F3B888@<X0>(uint64_t *a1@<X8>)
{
  sub_1E65D71E8();
  result = sub_1E65D71D8();
  *a1 = result;
  return result;
}

uint64_t sub_1E5F3B8E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F3B918()
{
  v1 = type metadata accessor for AwardsService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 24) & ~*(Description + 80);
  v4 = Description[8];
  v5 = *(v0 + 16);

  (Description[1])(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F3BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
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

uint64_t sub_1E5F3BB18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
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

uint64_t sub_1E5F3BC2C()
{
  v13 = type metadata accessor for ContentAvailabilityService();
  Description = v13[-1].Description;
  v2 = (*(Description + 80) + 16) & ~*(Description + 80);
  v3 = Description[8];
  v12 = type metadata accessor for AssetService();
  v4 = v12[-1].Description;
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v4[8];
  v7 = type metadata accessor for CatalogService();
  v8 = v7[-1].Description;
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = v8[8];
  (Description[1])(v0 + v2, v13);
  (v4[1])(v0 + v5, v12);
  (v8[1])(v0 + v9, v7);

  return swift_deallocObject();
}