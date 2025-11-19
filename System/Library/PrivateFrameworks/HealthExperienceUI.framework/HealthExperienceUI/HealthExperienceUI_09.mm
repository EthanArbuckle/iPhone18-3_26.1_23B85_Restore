uint64_t sub_1BA004B68()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] restoreUserActivityState stream completed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA004D10(id *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v64 = a2;
  v65 = a4;
  v69 = a3;
  v5 = sub_1BA4A1798();
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A37B8();
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3778();
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A33C8();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = sub_1BA4A3EA8();
  v20 = *(v19 - 8);
  v71 = v19;
  v72 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  if (*a1)
  {
    v26 = *a1;
    sub_1BA4A3DD8();
    v27 = v26;
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v73[0] = v70;
      *v30 = 136315394;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, v73);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v34 = v27;
      v35 = [v34 description];
      v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v38 = v37;

      v39 = sub_1B9F0B82C(v36, v38, v73);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_1B9F07000, v28, v29, "[%s] restoreUserActivityState fetched entry: %s", v30, 0x16u);
      v40 = v70;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v72 + 8))(v25, v71);
    v41 = v27;
    sub_1BA4A3288();
    v43 = v66;
    v42 = v67;
    v44 = v68;
    (*(v67 + 16))(v66, v18, v68);
    v45 = v69;
    sub_1B9F0A534(&v69[OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore], v73);
    v46 = *&v45[OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore];
    v47 = objc_allocWithZone(type metadata accessor for SummarySharingRelationshipDetailsViewController());
    v48 = sub_1BA0854CC(v43, v73, v46);
    v49 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v45 presentViewController:v49 animated:1 completion:0];

    return (*(v42 + 8))(v18, v44);
  }

  else
  {
    v68 = v8;
    v69 = v5;
    sub_1BA4A3DD8();
    (*(v70 + 16))(v13, v64, v11);
    v51 = sub_1BA4A3E88();
    v52 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v73[0] = v67;
      *v53 = 136315394;
      v54 = sub_1BA4A85D8();
      LODWORD(v66) = v52;
      v56 = sub_1B9F0B82C(v54, v55, v73);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      sub_1BA4A3748();
      sub_1BA4A3798();
      (*(v62 + 8))(v10, v68);
      v57 = sub_1BA4A1748();
      v59 = v58;
      (*(v63 + 8))(v7, v69);
      (*(v70 + 8))(v13, v11);
      v60 = sub_1B9F0B82C(v57, v59, v73);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_1B9F07000, v51, v66, "[%s] No entry exists for user activity sharing uuid: %s", v53, 0x16u);
      v61 = v67;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v53, -1, -1);
    }

    else
    {

      (*(v70 + 8))(v13, v11);
    }

    return (*(v72 + 8))(v22, v71);
  }
}

uint64_t sub_1BA0054AC()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3358();
  v6 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v7 = sub_1BA4A1758();
  v8 = [v6 initForInvitationUUID_];

  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:*(v1 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore) recipientIdentifier:v8];
  *(swift_allocObject() + 16) = v9;
  sub_1BA00CC04(0, &qword_1EBBEA178, MEMORY[0x1E695C028]);
  swift_allocObject();
  v10 = v9;
  v13[1] = sub_1BA4A4EA8();
  sub_1BA00CCBC();
  v11 = sub_1BA4A4F98();

  return v11;
}

void sub_1BA005698(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA00CD30;
  *(v7 + 24) = v6;
  v9[4] = sub_1BA00CD70;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA112CEC;
  v9[3] = &block_descriptor_74;
  v8 = _Block_copy(v9);

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v8);
}

void sub_1BA0057A8(unint64_t a1, void *a2, void (*a3)(void, void, __n128))
{
  sub_1BA00ADAC(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  if (!a2)
  {
    if (!a1)
    {
      (a3)(MEMORY[0x1E69E7CC0], 0, v11.n128_f64[0]);
      return;
    }

    if (a1 >> 62)
    {
      v15 = sub_1BA4A7CC8();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1BA066E00(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
        return;
      }

      v24 = a3;
      v16 = v25;
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v15; ++i)
        {
          MEMORY[0x1BFAF2860](i, a1);
          sub_1BA4A3A38();
          v25 = v16;
          v19 = *(v16 + 16);
          v18 = *(v16 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1BA066E00(v18 > 1, v19 + 1, 1);
            v16 = v25;
          }

          *(v16 + 16) = v19 + 1;
          sub_1BA00B508(v13, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, sub_1BA00ADAC);
        }
      }

      else
      {
        v20 = (a1 + 32);
        do
        {
          v21 = *v20;
          sub_1BA4A3A38();
          v25 = v16;
          v23 = *(v16 + 16);
          v22 = *(v16 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1BA066E00(v22 > 1, v23 + 1, 1);
            v16 = v25;
          }

          *(v16 + 16) = v23 + 1;
          sub_1BA00B508(v9, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, sub_1BA00ADAC);
          ++v20;
          --v15;
        }

        while (v15);
      }

      a3 = v24;
    }

    a3(v16, 0, v11);

    return;
  }

  v14 = a2;
  (a3)(a2, 1);
}

uint64_t sub_1BA005AA4()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3C48();
  sub_1BA4A3C38();
  sub_1BA4154C8();
  v5 = sub_1BA4A3B58();
  if (v0)
  {
  }

  else
  {
    v6 = v5;

    sub_1BA4A3D88();
    v7 = v6;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v27 = v9;
      v11 = v10;
      v28 = swift_slowAlloc();
      v30 = v28;
      *v11 = 136315394;
      v12 = sub_1BA4A85D8();
      v14 = sub_1B9F0B82C(v12, v13, &v30);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = v7;
      v16 = [v15 description];
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v7;
      v18 = v2;
      v19 = v17;
      v26 = v8;
      v21 = v20;

      v22 = sub_1B9F0B82C(v19, v21, &v30);

      *(v11 + 14) = v22;
      v23 = v26;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] Fetched bundle: %s", v11, 0x16u);
      v24 = v28;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);

      (*(v18 + 8))(v4, v1);
      v7 = v29;
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    v1 = sub_1BA2FD9C4();
  }

  return v1;
}

char *sub_1BA005D94(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = sub_1BA4A33C8();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 16);
  v36 = v17;
  v19(v15);
  v20 = *(a1 + 16);
  v37 = a1;
  if (v20)
  {
    v21 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = *(v6 + 72);
    v23 = MEMORY[0x1E69E7CC0];
    v39 = v2;
    do
    {
      sub_1BA00CA40(v21, v13);
      sub_1BA00CAD4(v13, v8);
      if ((*(v3 + 48))(v8, 1, v2) == 1)
      {
        sub_1BA00A89C(v8, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
      }

      else
      {
        sub_1BA00B508(v8, v40, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1BA27F5C8(0, v23[2] + 1, 1, v23);
        }

        v25 = v23[2];
        v24 = v23[3];
        if (v25 >= v24 >> 1)
        {
          v23 = sub_1BA27F5C8(v24 > 1, v25 + 1, 1, v23);
        }

        v23[2] = v25 + 1;
        sub_1BA00B508(v40, v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v2 = v39;
      }

      v21 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v26 = v35;
  (*(v3 + 56))(v35, 1, 1, v2);
  v27 = sub_1BA006240(v26, v37);
  sub_1BA00A89C(v26, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
  v28 = v38;
  sub_1B9F0A534(v38 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore, v41);
  v29 = *(v28 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore);
  v30 = objc_allocWithZone(type metadata accessor for OBKSummarySharingInvitationTopicsViewController());
  v31 = v29;
  v32 = sub_1BA242B14(v36, v23, v27 & 1, v41, v31);

  return v32;
}

uint64_t sub_1BA006240(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  sub_1BA00CB68();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v16 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v17 = *(v7 + 72);
  while (1)
  {
    v18 = *(v11 + 48);
    sub_1BA00CA40(v16, v13);
    sub_1BA00CA40(v29, &v13[v18]);
    v19 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_1BA00CA40(v13, v9);
    if (v19(&v13[v18], 1, v3) == 1)
    {
      sub_1BA00B360(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
      goto LABEL_4;
    }

    v20 = &v13[v18];
    v21 = v17;
    v22 = v11;
    v23 = v27;
    sub_1BA00B508(v20, v27, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v28 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v9, v23);
    v24 = v23;
    v11 = v22;
    v17 = v21;
    sub_1BA00B360(v24, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA00B360(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA00A89C(v13, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
    if (v28)
    {
      return 1;
    }

LABEL_5:
    v16 += v17;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v19(&v13[v18], 1, v3) != 1)
  {
LABEL_4:
    sub_1BA00B360(v13, sub_1BA00CB68);
    goto LABEL_5;
  }

  sub_1BA00A89C(v13, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
  return 1;
}

BOOL sub_1BA006608(unsigned __int8 a1, uint64_t a2)
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
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1BA006668()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_pinnedContentManager);
}

id SharingOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA00681C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_1BA0068DC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v71 = MEMORY[0x1E69E8050];
  v74 = MEMORY[0x1E69E6720];
  v75 = ObjectType;
  sub_1B9F3D424(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v51 - v6;
  v73 = sub_1BA4A33C8();
  v76 = *(v73 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00AB24();
  v61 = v8;
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00AEAC();
  v60 = v11;
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C4B0(0, &qword_1EBBEA0C0, sub_1BA00AEAC, sub_1BA00AF88, MEMORY[0x1E695BE30]);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v51 - v15;
  sub_1BA00AFBC();
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v64 = v19;
  *(v19 + 16) = 0;
  v67 = (v19 + 16);
  v56 = a1;
  v77 = sub_1BA0054AC();
  sub_1BA4A4D08();
  sub_1BA00CC04(0, &qword_1EBBEA090, MEMORY[0x1E695BED0]);
  sub_1BA00ACC8();
  sub_1BA00AE38();
  sub_1B9F114D4(&qword_1EBBEA088, sub_1BA00ACC8);
  sub_1BA4A5078();

  v20 = v76;
  v55 = *(v76 + 16);
  v22 = v72;
  v21 = v73;
  v55(v72, a1, v73);
  v23 = *(v20 + 80);
  v54 = v23;
  v24 = (v23 + 24) & ~v23;
  v52 = v24;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = *(v20 + 32);
  v76 = v20 + 32;
  v53 = v27;
  v27(v26 + v24, v22, v21);
  v28 = v74;
  *(v26 + v25) = v75;
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, v28);
  sub_1B9F114D4(&qword_1EBBEA0B8, sub_1BA00AB24);
  v29 = v2;
  v30 = v58;
  v31 = v61;
  sub_1BA4A5058();

  (*(v63 + 8))(v10, v31);
  sub_1BA00AF88();
  v32 = v57;
  v33 = v60;
  sub_1BA4A5068();
  (*(v62 + 8))(v30, v33);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v34 = sub_1BA4A7308();
  v77 = v34;
  v35 = sub_1BA4A72A8();
  v36 = v68;
  (*(*(v35 - 8) + 56))(v68, 1, 1, v35);
  sub_1BA00B09C();
  sub_1B9F3DC80();
  v37 = v59;
  v38 = v65;
  sub_1BA4A50A8();
  sub_1BA00A89C(v36, &qword_1EDC6B5B8, v71, v74, sub_1B9F3D424);

  (*(v66 + 8))(v32, v38);
  v39 = swift_allocObject();
  v40 = v64;
  v39[2] = v29;
  v39[3] = v40;
  v41 = v75;
  v39[4] = v75;
  v43 = v72;
  v42 = v73;
  v55(v72, v56, v73);
  v44 = v51;
  v45 = swift_allocObject();
  *(v45 + 16) = v29;
  v53(v45 + v52, v43, v42);
  *(v45 + v44) = v41;
  sub_1B9F114D4(&qword_1EBBEA0E0, sub_1BA00AFBC);
  v46 = v29;

  v47 = v69;
  v48 = sub_1BA4A5008();

  (*(v70 + 8))(v37, v47);
  v49 = v67;
  swift_beginAccess();
  *v49 = v48;
}

uint64_t sub_1BA007190()
{
  sub_1B9F3D424(0, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E62F8]);
  sub_1BA00ADE0(&qword_1EBBEA080, &qword_1EBBEA070, sub_1BA00ADAC);
  return sub_1BA4A6A18();
}

uint64_t sub_1BA007248@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v121 = a4;
  v122 = a2;
  v118 = a3;
  v126 = a5;
  v6 = sub_1BA4A3EA8();
  v123 = *(v6 - 8);
  v124 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v107 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v107 - v12;
  v13 = sub_1BA4A1798();
  v112 = *(v13 - 8);
  v113 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v109 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v107 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v107 - v19;
  sub_1B9F3D424(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v110 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v107 - v23;
  v25 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v117 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v115 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00ADAC(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BA4A3A28();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v107 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v107 - v38;
  v40 = a1;
  v42 = v41;
  sub_1BA00B3C0(v40, v29, sub_1BA00ADAC);
  if ((*(v31 + 48))(v29, 1, v42) == 1)
  {
    sub_1BA00B360(v29, sub_1BA00ADAC);
    sub_1BA4A3D88();
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v128 = v46;
      *v45 = 136315138;
      v47 = sub_1BA4A85D8();
      v49 = sub_1B9F0B82C(v47, v48, &v128);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B9F07000, v43, v44, "[%s] Received a nil auth identifier", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
    }

    (*(v123 + 8))(v8, v124);
    v50 = 1;
    goto LABEL_5;
  }

  (*(v31 + 32))(v39, v29, v42);
  v54 = v130;
  v55 = sub_1BA005AA4();
  if (!v54)
  {
    v130 = 0;
    v57 = v122;
    v108 = v31;
    v107 = v42;
    if (v55)
    {
      v58 = v55;
      v59 = v56;
      ObjectType = swift_getObjectType();
      (*(v59 + 32))(v39, *&v57[OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore], v118, ObjectType, v59);
      v61 = v117;
      if ((*(v117 + 48))(v24, 1, v25) != 1)
      {
        v120 = v58;
        v122 = v39;
        v80 = v115;
        sub_1BA00B508(v24, v115, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v81 = v110;
        sub_1BA00B3C0(v80, v110, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v82 = *(v61 + 56);
        v82(v81, 0, 1, v25);
        v128 = type metadata accessor for SummarySharingSelectableDataTypeCell();
        sub_1BA00B428(0, &qword_1EBBE9DF8, type metadata accessor for SummarySharingSelectableDataTypeCell);
        v83 = sub_1BA4A6808();
        v85 = v84;
        v86 = v119;
        *(v119 + 40) = 0;
        swift_unknownObjectWeakInit();
        v87 = *(v127 + 40);
        v82(v86 + v87, 1, 1, v25);
        *v86 = v83;
        *(v86 + 8) = v85;
        v128 = 0xD000000000000025;
        v129 = 0x80000001BA4E3640;
        v88 = v111;
        sub_1BA4A1788();
        v89 = sub_1BA4A1748();
        v91 = v90;
        (*(v112 + 8))(v88, v113);
        MEMORY[0x1BFAF1350](v89, v91);

        v92 = v129;
        *(v86 + 16) = v128;
        *(v86 + 24) = v92;
        *(v86 + 48) = 0;
        *(v86 + 40) = 0;
        *(v86 + 56) = 0;
        *(v86 + 64) = 0;
        swift_unknownObjectWeakAssign();
        sub_1BA00B474(v81, v86 + v87);
        v93 = v116;
        sub_1BA4A3D88();
        v94 = v114;
        sub_1BA00B3C0(v86, v114, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v95 = sub_1BA4A3E88();
        v96 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v128 = v98;
          *v97 = 136315394;
          v99 = sub_1BA4A85D8();
          v101 = sub_1B9F0B82C(v99, v100, &v128);

          *(v97 + 4) = v101;
          *(v97 + 12) = 2080;
          sub_1BA00B3C0(v94, v109, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v102 = sub_1BA4A6808();
          v104 = v103;
          sub_1BA00B360(v94, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v105 = sub_1B9F0B82C(v102, v104, &v128);

          *(v97 + 14) = v105;
          _os_log_impl(&dword_1B9F07000, v95, v96, "[%s] Fetched item to be shared: %s", v97, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v98, -1, -1);
          MEMORY[0x1BFAF43A0](v97, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_1BA00B360(v94, type metadata accessor for SummarySharingSelectableDataTypeItem);
        }

        (*(v123 + 8))(v93, v124);
        sub_1BA00B360(v80, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*(v108 + 8))(v122, v107);
        v106 = v126;
        sub_1BA00B508(v119, v126, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v51 = v106;
        v50 = 0;
        v52 = v127;
        return (*(v125 + 56))(v51, v50, 1, v52);
      }

      swift_unknownObjectRelease();
      sub_1BA00A89C(v24, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1B9F3D424);
    }

    v62 = v120;
    sub_1BA4A3D88();
    v63 = v108;
    v64 = *(v108 + 16);
    v65 = v107;
    v64(v36, v39, v107);
    v66 = v39;
    v67 = sub_1BA4A3E88();
    LODWORD(v119) = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v67, v119))
    {

      v79 = *(v63 + 8);
      v79(v36, v65);
      (*(v123 + 8))(v62, v124);
      v79(v66, v65);
      v50 = 1;
      v51 = v126;
      v52 = v127;
      return (*(v125 + 56))(v51, v50, 1, v52);
    }

    v68 = swift_slowAlloc();
    v122 = v66;
    v69 = v68;
    v118 = swift_slowAlloc();
    v128 = v118;
    *v69 = 136315394;
    v70 = sub_1BA4A85D8();
    v72 = sub_1B9F0B82C(v70, v71, &v128);

    *(v69 + 4) = v72;
    *(v69 + 12) = 2080;
    v64(v33, v36, v65);
    v73 = sub_1BA4A6808();
    v75 = v74;
    v76 = *(v108 + 8);
    v76(v36, v65);
    v77 = sub_1B9F0B82C(v73, v75, &v128);

    *(v69 + 14) = v77;
    _os_log_impl(&dword_1B9F07000, v67, v119, "[%s] Could not get bundle app delegate class as PluginSharingAuthorizationDelegate: %s", v69, 0x16u);
    v78 = v118;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v78, -1, -1);
    MEMORY[0x1BFAF43A0](v69, -1, -1);

    (*(v123 + 8))(v120, v124);
    v76(v122, v65);
    v50 = 1;
LABEL_5:
    v51 = v126;
    v52 = v127;
    return (*(v125 + 56))(v51, v50, 1, v52);
  }

  return (*(v31 + 8))(v39, v42);
}

uint64_t sub_1BA007F4C(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v7 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = *a1;
  sub_1BA4A3DD8();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();
  v20 = os_log_type_enabled(v18, v19);
  v56 = a4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v55 = v9;
    v58 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v60[0] = v23;
    *v22 = 136315138;
    v24 = sub_1BA4A85D8();
    v54 = v17;
    v26 = v10;
    v27 = sub_1B9F0B82C(v24, v25, v60);
    v17 = v54;

    *(v22 + 4) = v27;
    v10 = v26;
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%s] Stream completed", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    v28 = v22;
    a3 = v58;
    v9 = v55;
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  v29 = v11[1];
  v29(v16, v10);
  if (v17)
  {
    v30 = v17;
    sub_1BA4A3DD8();
    v31 = v17;
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = a3;
      v36 = v35;
      v60[0] = v35;
      *v34 = 136315394;
      v37 = sub_1BA4A85D8();
      v56 = v10;
      v39 = sub_1B9F0B82C(v37, v38, v60);
      v55 = v11;
      v40 = v39;

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v59 = v17;
      v41 = v17;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v42 = sub_1BA4A6828();
      v44 = sub_1B9F0B82C(v42, v43, v60);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] Error when opening invite: %s", v34, 0x16u);
      swift_arrayDestroy();
      v45 = v36;
      a3 = v58;
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      v46 = v56;
      v47 = v13;
    }

    else
    {

      v47 = v13;
      v46 = v10;
    }

    v29(v47, v46);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v48 = sub_1BA4A1318();
    v50 = v49;
    v51 = v17;
    SummarySharingOnboardingError.init(error:)(v17, v9);
    sub_1BA0C6BA4(v57, v48, v50, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);

    sub_1BA00B360(v9, type metadata accessor for SummarySharingOnboardingError);
  }

  swift_beginAccess();
  swift_beginAccess();
  *(a3 + 16) = 0;
}

void sub_1BA008464(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1BA4A3DD8();

  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a3;
    v16 = v15;
    v29 = v15;
    *v14 = 136315394;
    v17 = sub_1BA4A85D8();
    v19 = sub_1B9F0B82C(v17, v18, &v29);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v28 = *(v10 + 16);
    v20 = sub_1BA4A82D8();
    v22 = sub_1B9F0B82C(v20, v21, &v29);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Fetched selected items with count: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    v23 = v14;
    a2 = v27;
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v24 = sub_1BA005D94(v10);
  v25 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v25 setModalInPresentation_];
  [a2 presentViewController:v25 animated:1 completion:0];
}

uint64_t sub_1BA0086FC(int a1, uint64_t a2)
{
  v4 = sub_1BA4A33C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EBBEA128);
  sub_1BA4A75A8();
  v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v9 = objc_allocWithZone(MEMORY[0x1E696C2C8]);
  v10 = v8;
  v11 = sub_1BA4A6758();

  v12 = [v9 initWithClientIdentifier:v11 healthStore:v10];

  (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation, v4);
  sub_1BA4A1BC8();
  sub_1BA4A1BB8();
  v13 = sub_1BA0098AC(a1, v7, v12);

  (*(v5 + 8))(v7, v4);
  v16[1] = v13;
  sub_1BA00C890(0, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
  sub_1BA00C330();
  v14 = sub_1BA4A4F98();

  return v14;
}

uint64_t sub_1BA008928(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v92 = a6;
  v93 = a7;
  v95 = a4;
  v96 = a2;
  v10 = sub_1BA4A33C8();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA118, MEMORY[0x1E69686D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v82 - v13;
  v14 = sub_1BA4A11C8();
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SummarySharingOnboardingError();
  v99 = *(v16 - 8);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v94 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v82 - v19;
  sub_1BA00C4B0(0, &qword_1EBBEA120, type metadata accessor for SummarySharingOnboardingError, sub_1BA00C2FC, MEMORY[0x1E695BEB0]);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  v98 = sub_1BA4A3EA8();
  v29 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v101 = a1;
  sub_1BA00C530(a1, v28);
  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v83 = a3;
    v35 = v34;
    v36 = swift_slowAlloc();
    v91 = a5;
    v37 = v36;
    v102[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, v102);
    *(v35 + 12) = 2080;
    sub_1BA00C530(v28, v25);
    v38 = sub_1BA4A6808();
    v40 = v39;
    sub_1BA00C5D8(v28);
    v41 = sub_1B9F0B82C(v38, v40, v102);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] Update sharing invite stream completed: %s", v35, 0x16u);
    swift_arrayDestroy();
    v42 = v37;
    a5 = v91;
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    v43 = v35;
    a3 = v83;
    MEMORY[0x1BFAF43A0](v43, -1, -1);
  }

  else
  {

    sub_1BA00C5D8(v28);
  }

  (*(v29 + 8))(v31, v98);
  sub_1BA00C530(v101, v22);
  if ((*(v99 + 48))(v22, 1, v100) == 1)
  {
    sub_1BA00C5D8(v22);
    goto LABEL_15;
  }

  v44 = v97;
  sub_1BA00B508(v22, v97, type metadata accessor for SummarySharingOnboardingError);
  v45 = v96;
  if (!v96)
  {
LABEL_14:
    sub_1BA00B360(v44, type metadata accessor for SummarySharingOnboardingError);
    goto LABEL_15;
  }

  v46 = v94;
  sub_1BA00B3C0(v44, v94, type metadata accessor for SummarySharingOnboardingError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v61 = v45;
    sub_1BA00B360(v46, type metadata accessor for SummarySharingOnboardingError);
LABEL_13:
    v63 = swift_allocObject();
    *(v63 + 16) = v95;
    *(v63 + 24) = a5;

    sub_1BA0C6BA4(v45, v92, v93, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA00C678, v63);

    goto LABEL_14;
  }

  if (*v46 != 707)
  {
    v62 = v45;
    goto LABEL_13;
  }

  v91 = a5;
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v47 = a3;
  v48 = v45;
  v49 = sub_1BA4A7068();
  v50 = v90;
  v102[3] = v90;
  v102[4] = MEMORY[0x1E69A3410];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
  v52 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation;
  v53 = *(v89 + 16);
  v54 = v47;
  v53(boxed_opaque_existential_1, v47 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation, v50);
  sub_1BA4A7008();
  v55 = sub_1BA4A6FE8();

  __swift_destroy_boxed_opaque_existential_1(v102);
  if (v55)
  {
    v56 = v55;
    v57 = v84;
    sub_1BA4A7A18();

    v59 = v86;
    v58 = v87;
    (*(v86 + 56))(v57, 0, 1, v87);
    v60 = v85;
    (*(v59 + 32))(v85, v57, v58);
  }

  else
  {
    v59 = v86;
    v58 = v87;
    v65 = v84;
    (*(v86 + 56))(v84, 1, 1, v87);
    v60 = v85;
    sub_1BA4A11B8();
    if ((*(v59 + 48))(v65, 1, v58) != 1)
    {
      sub_1BA00A89C(v65, &qword_1EBBEA118, MEMORY[0x1E69686D8], MEMORY[0x1E69E6720], sub_1B9F3D424);
    }
  }

  LocalizedGeminiString(_:defaultValue:comment:options:)("SUMMARY_SHARING_ERROR_PARTICIPANT_NOT_FOUND_MESSAGE", 51, 2, 0, 0xE000000000000000, "", 0, 2, v60);
  (*(v59 + 8))(v60, v58);
  sub_1B9F2EAC0();
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1BA4B5480;
  v67 = v54 + v52;
  v68 = v88;
  v69 = v90;
  v53(v88, v67, v90);
  v70 = sub_1BA4A33A8();
  v72 = v71;
  (*(v89 + 8))(v68, v69);
  *(v66 + 56) = MEMORY[0x1E69E6158];
  *(v66 + 64) = sub_1B9F1BE20();
  *(v66 + 32) = v70;
  *(v66 + 40) = v72;
  v73 = sub_1BA4A6768();
  v75 = v74;

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v76 = sub_1BA4A1318();
  v78 = v77;
  v79 = swift_allocObject();
  v80 = v95;
  v79[2] = v48;
  v79[3] = v80;
  v79[4] = v91;
  v81 = v48;

  sub_1BA2C91F8(v81, v76, v78, v73, v75, MEMORY[0x1E69E7CC0], sub_1BA00C6A4, v79);

  sub_1BA00B360(v97, type metadata accessor for SummarySharingOnboardingError);
  a3 = v54;
LABEL_15:
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable) = 0;
}

void sub_1BA0093DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1BA00CDA4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F0B040;
  v8[3] = &block_descriptor_5;
  v7 = _Block_copy(v8);

  [a1 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

uint64_t sub_1BA0094C4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v29 = a3;
  v30 = a4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = a6;
    v19 = a5;
    v20 = v17;
    v31 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v31);
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Update sharing invite stream completed with success: %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = v20;
    a5 = v19;
    a6 = v18;
    a2 = v28;
    MEMORY[0x1BFAF43A0](v21, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if ((a1 & 1) == 0 && a2)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;
    v23 = qword_1EDC5E100;
    v24 = a2;

    if (v23 != -1)
    {
      swift_once();
    }

    v25 = sub_1BA4A1318();
    sub_1BA2C91F8(v24, v29, v30, v25, v26, MEMORY[0x1E69E7CC0], sub_1BA00CDA4, v22);
  }

  return a5(a1 & 1);
}

uint64_t sub_1BA0097BC(char a1, void *a2, void (*a3)(uint64_t *))
{
  sub_1BA00C890(0, &qword_1EBBEA168, MEMORY[0x1E69E75F0]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - v7);
  if (a2)
  {
    v9 = a2;
    SummarySharingOnboardingError.init(error:)(a2, v8);
  }

  else
  {
    *v8 = a1 & 1;
  }

  swift_storeEnumTagMultiPayload();
  a3(v8);
  return sub_1BA00C904(v8);
}

uint64_t sub_1BA0098AC(int a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v41 = a1;
  sub_1BA00C6B0();
  v48 = v3;
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C7C8();
  v49 = v5;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BA4A3EA8();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1728();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_1BA4A3318();
  v18 = v17;
  sub_1B9F25350();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5480;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;

  sub_1BA4A1BA8();

  sub_1BA4A1718();
  sub_1BA4A6CE8();
  sub_1BA4A16A8();
  v20 = objc_allocWithZone(MEMORY[0x1E696C2B8]);
  v21 = sub_1BA4A6758();
  v22 = sub_1BA4A16B8();
  v39 = [v20 initWithAction:2 categoryIdentifier:v21 expirationDate:v22];

  sub_1BA4A3E28();

  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v50);
    *(v25 + 12) = 2080;
    v27 = sub_1B9F0B82C(v16, v18, &v50);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_1B9F07000, v23, v24, "%{public}s Sending dismiss instruction for %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v9, v38);
  v28 = v39;
  v50 = sub_1BA4A75B8();
  *(swift_allocObject() + 16) = v41 & 1;
  sub_1BA00C74C();
  sub_1B9F114D4(&qword_1EBBEA140, sub_1BA00C74C);
  v29 = v44;
  sub_1BA4A4FE8();

  type metadata accessor for SummarySharingOnboardingError();
  sub_1B9F114D4(&qword_1EBBEA150, sub_1BA00C6B0);
  sub_1BA00C2FC();
  v30 = v45;
  v31 = v48;
  sub_1BA4A50D8();
  (*(v46 + 8))(v29, v31);
  sub_1B9F114D4(&qword_1EBBEA158, sub_1BA00C7C8);
  v32 = v49;
  v33 = sub_1BA4A4F98();

  (*(v47 + 8))(v30, v32);
  v34 = v43;
  v35 = *(v42 + 8);
  v35(v12, v43);
  v35(v15, v34);
  return v33;
}

uint64_t sub_1BA009F00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - v9;
  v27 = a1;
  v11 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E310);
  v12 = type metadata accessor for SummarySharingOnboardingError();
  v13 = swift_dynamicCast();
  v14 = *(*(v12 - 8) + 56);
  if (v13)
  {
    v14(v10, 0, 1, v12);
    return sub_1BA00B508(v10, a2, type metadata accessor for SummarySharingOnboardingError);
  }

  else
  {
    v14(v10, 1, 1, v12);
    sub_1BA00A89C(v10, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720], sub_1B9F3D424);
    sub_1BA4A3E28();
    v16 = a1;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26[1] = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v27);
      *(v20 + 12) = 2082;
      v26[2] = a1;
      v22 = a1;
      v23 = sub_1BA4A6828();
      v25 = sub_1B9F0B82C(v23, v24, &v27);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v17, v18, "%{public}s Could not send notification instruction %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1BA00A2A0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  if (!v26)
  {
    return v1;
  }

  v2 = 0;
  v25 = a1 + 32;
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v2;
    v4 = *(v25 + 48 * v2 + 16);
    v33 = v1;
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;

      do
      {
        sub_1B9F0A534(v6, v32);
        sub_1B9F1134C(v32, v30);
        sub_1B9F0D950(0, &qword_1EDC6AD50);
        type metadata accessor for YouAreSharingWithItem();
        if ((swift_dynamicCast() & 1) != 0 && v31)
        {
          MEMORY[0x1BFAF1510]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v1 = v33;
        }

        v6 += 40;
        --v5;
      }

      while (v5);
    }

    v7 = v1 >> 62;
    if (v1 >> 62)
    {
      v8 = sub_1BA4A7CC8();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v29 >> 62;
    if (v29 >> 62)
    {
      v24 = sub_1BA4A7CC8();
      v11 = v24 + v8;
      if (__OFADD__(v24, v8))
      {
LABEL_41:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v10 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1BA4A7CC8();
      goto LABEL_24;
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1BA4A7E38();
    v29 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_45;
    }

    v16 = v12 + 8 * v13 + 32;
    v27 = v8;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_47;
      }

      sub_1B9F3D424(0, &qword_1EBBEA188, type metadata accessor for YouAreSharingWithItem, MEMORY[0x1E69E62F8]);
      sub_1BA00ADE0(&unk_1EBBEA190, &qword_1EBBEA188, type metadata accessor for YouAreSharingWithItem);
      for (i = 0; i != v15; ++i)
      {
        v18 = sub_1BA0CA918(v32, i, v1);
        v20 = *v19;

        (v18)(v32, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      type metadata accessor for YouAreSharingWithItem();
      swift_arrayInitWithCopy();
    }

    v1 = MEMORY[0x1E69E7CC0];
    if (v27 >= 1)
    {
      v21 = *(v12 + 16);
      v22 = __OFADD__(v21, v27);
      v23 = v21 + v27;
      if (v22)
      {
        goto LABEL_46;
      }

      *(v12 + 16) = v23;
    }

LABEL_4:
    v2 = v28 + 1;
    if (v28 + 1 == v26)
    {
      return v29;
    }
  }

  result = sub_1BA4A7CC8();
  v15 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v1 = MEMORY[0x1E69E7CC0];
  if (v8 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_1BA00A6C8()
{
  if (!qword_1EBBE9FA8)
  {
    sub_1BA00A794();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1B9F114D4(&qword_1EBBE9FC8, sub_1BA00A794);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE9FA8);
    }
  }
}

void sub_1BA00A794()
{
  if (!qword_1EBBE9FB0)
  {
    sub_1B9F6A804(255, &qword_1EBBE9FB8, &qword_1EBBE9FC0);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE9FB0);
    }
  }
}

BOOL sub_1BA00A82C(void *a1)
{
  sub_1BA4A3778();

  return sub_1BA00495C(a1);
}

uint64_t sub_1BA00A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA00A904(id *a1)
{
  v3 = *(sub_1BA4A3778() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA004D10(a1, v1 + v4, v6, v7);
}

void sub_1BA00AB24()
{
  if (!qword_1EBBEA058)
  {
    sub_1BA00ABFC();
    sub_1BA00CC04(255, &qword_1EBBEA090, MEMORY[0x1E695BED0]);
    sub_1B9F114D4(&qword_1EBBEA098, sub_1BA00ABFC);
    sub_1BA00AE38();
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA058);
    }
  }
}

void sub_1BA00ABFC()
{
  if (!qword_1EBBEA060)
  {
    sub_1BA00ACC8();
    sub_1B9F0D950(255, &qword_1EDC6E310);
    sub_1B9F114D4(&qword_1EBBEA088, sub_1BA00ACC8);
    v0 = sub_1BA4A4B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA060);
    }
  }
}

void sub_1BA00ACC8()
{
  if (!qword_1EBBEA068)
  {
    sub_1B9F3D424(255, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E62F8]);
    sub_1BA00ADE0(&qword_1EBBEA080, &qword_1EBBEA070, sub_1BA00ADAC);
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA068);
    }
  }
}

uint64_t sub_1BA00ADE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D424(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA00AE38()
{
  result = qword_1EBBEA0A0;
  if (!qword_1EBBEA0A0)
  {
    sub_1BA00CC04(255, &qword_1EBBEA090, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA0A0);
  }

  return result;
}

void sub_1BA00AEAC()
{
  if (!qword_1EBBEA0A8)
  {
    sub_1BA00AB24();
    sub_1B9F3D424(255, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
    sub_1B9F114D4(&qword_1EBBEA0B8, sub_1BA00AB24);
    v0 = sub_1BA4A4C08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA0A8);
    }
  }
}

void sub_1BA00AFBC()
{
  if (!qword_1EBBEA0D0)
  {
    sub_1BA00C4B0(255, &qword_1EBBEA0C0, sub_1BA00AEAC, sub_1BA00AF88, MEMORY[0x1E695BE30]);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA00B09C();
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA0D0);
    }
  }
}

unint64_t sub_1BA00B09C()
{
  result = qword_1EBBEA0D8;
  if (!qword_1EBBEA0D8)
  {
    sub_1BA00C4B0(255, &qword_1EBBEA0C0, sub_1BA00AEAC, sub_1BA00AF88, MEMORY[0x1E695BE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA0D8);
  }

  return result;
}

uint64_t sub_1BA00B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1BA4A33C8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_1BA007248(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1BA4A33C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1BA00B2C0(uint64_t *a1)
{
  v3 = *(sub_1BA4A33C8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1BA008464(a1, v4, v5);
}

uint64_t sub_1BA00B360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA00B3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA00B428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA00B474(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D424(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA00B508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA00B570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v49 = a2;
  v50 = a4;
  v46 = a3;
  sub_1B9F3D424(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  sub_1BA00C270();
  v13 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C3A4();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A3EA8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a5[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable])
  {

    sub_1BA4A3DD8();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v51);
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] Could not update invite because there is already an invite stream in progress", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v20 + 8))(v22, v19);
    sub_1BA24024C(0);
  }

  else
  {
    v51 = a1;
    v44 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable;
    *(swift_allocObject() + 16) = a5;

    v43 = a5;
    sub_1BA4A4D08();
    sub_1BA00C890(0, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    v27 = a5;
    sub_1BA00C330();
    sub_1BA4A5088();

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v28 = sub_1BA4A7308();
    v51 = v28;
    v29 = sub_1BA4A72A8();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    sub_1B9F114D4(&qword_1EBBEA108, sub_1BA00C270);
    sub_1B9F3DC80();
    sub_1BA4A50A8();
    sub_1BA00A89C(v11, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D424);

    (*(v45 + 8))(v15, v13);
    v30 = swift_allocObject();
    v31 = v49;
    v32 = v50;
    v33 = v43;
    v30[2] = v49;
    v30[3] = v33;
    v30[4] = sub_1BA00C97C;
    v30[5] = a6;
    v34 = v46;
    v30[6] = v46;
    v30[7] = v32;
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = v34;
    v35[4] = v32;
    v35[5] = sub_1BA00C97C;
    v35[6] = a6;
    sub_1B9F114D4(&qword_1EBBEA110, sub_1BA00C3A4);
    v36 = v31;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v37 = v33;
    v38 = v36;
    v39 = v48;
    v40 = sub_1BA4A5008();

    (*(v47 + 8))(v18, v39);
    *&v27[v44] = v40;
  }
}

uint64_t sub_1BA00BBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v49 = a2;
  v50 = a4;
  v46 = a3;
  sub_1B9F3D424(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  sub_1BA00C270();
  v13 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C3A4();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A3EA8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a5[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable])
  {

    sub_1BA4A3DD8();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v51);
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] Could not update invite because there is already an invite stream in progress", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v20 + 8))(v22, v19);
    sub_1BA2406C8(0);
  }

  else
  {
    v51 = a1;
    v44 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable;
    *(swift_allocObject() + 16) = a5;

    v43 = a5;
    sub_1BA4A4D08();
    sub_1BA00C890(0, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    v27 = a5;
    sub_1BA00C330();
    sub_1BA4A5088();

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v28 = sub_1BA4A7308();
    v51 = v28;
    v29 = sub_1BA4A72A8();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    sub_1B9F114D4(&qword_1EBBEA108, sub_1BA00C270);
    sub_1B9F3DC80();
    sub_1BA4A50A8();
    sub_1BA00A89C(v11, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D424);

    (*(v45 + 8))(v15, v13);
    v30 = swift_allocObject();
    v31 = v49;
    v32 = v50;
    v33 = v43;
    v30[2] = v49;
    v30[3] = v33;
    v30[4] = sub_1BA00C470;
    v30[5] = a6;
    v34 = v46;
    v30[6] = v46;
    v30[7] = v32;
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = v34;
    v35[4] = v32;
    v35[5] = sub_1BA00C470;
    v35[6] = a6;
    sub_1B9F114D4(&qword_1EBBEA110, sub_1BA00C3A4);
    v36 = v31;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v37 = v33;
    v38 = v36;
    v39 = v48;
    v40 = sub_1BA4A5008();

    (*(v47 + 8))(v18, v39);
    *&v27[v44] = v40;
  }
}

void sub_1BA00C270()
{
  if (!qword_1EBBEA0E8)
  {
    sub_1BA00C890(255, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    sub_1BA00C330();
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA0E8);
    }
  }
}

unint64_t sub_1BA00C330()
{
  result = qword_1EBBEA0F8;
  if (!qword_1EBBEA0F8)
  {
    sub_1BA00C890(255, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA0F8);
  }

  return result;
}

void sub_1BA00C3A4()
{
  if (!qword_1EBBEA100)
  {
    sub_1BA00C270();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1B9F114D4(&qword_1EBBEA108, sub_1BA00C270);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA100);
    }
  }
}

uint64_t sub_1BA00C478@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA0086FC(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

void sub_1BA00C4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1BA00C530(uint64_t a1, uint64_t a2)
{
  sub_1BA00C4B0(0, &qword_1EBBEA120, type metadata accessor for SummarySharingOnboardingError, sub_1BA00C2FC, MEMORY[0x1E695BEB0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA00C5D8(uint64_t a1)
{
  sub_1BA00C4B0(0, &qword_1EBBEA120, type metadata accessor for SummarySharingOnboardingError, sub_1BA00C2FC, MEMORY[0x1E695BEB0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA00C6B0()
{
  if (!qword_1EBBEA130)
  {
    sub_1BA00C74C();
    sub_1B9F114D4(&qword_1EBBEA140, sub_1BA00C74C);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA130);
    }
  }
}

void sub_1BA00C74C()
{
  if (!qword_1EBBEA138)
  {
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA138);
    }
  }
}

void sub_1BA00C7C8()
{
  if (!qword_1EBBEA148)
  {
    sub_1BA00C6B0();
    type metadata accessor for SummarySharingOnboardingError();
    sub_1B9F114D4(&qword_1EBBEA150, sub_1BA00C6B0);
    sub_1BA00C2FC();
    v0 = sub_1BA4A4C58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA148);
    }
  }
}

void sub_1BA00C890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SummarySharingOnboardingError();
    v7 = sub_1BA00C2FC();
    v8 = a3(a1, MEMORY[0x1E69E6370], v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA00C904(uint64_t a1)
{
  sub_1BA00C890(0, &qword_1EBBEA168, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA00CA40(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA00CAD4(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA00CB68()
{
  if (!qword_1EBBEA170)
  {
    sub_1B9F3D424(255, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA170);
    }
  }
}

void sub_1BA00CC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1B9F3D424(255, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310);
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA00CCBC()
{
  result = qword_1EBBEA180;
  if (!qword_1EBBEA180)
  {
    sub_1BA00CC04(255, &qword_1EBBEA178, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA180);
  }

  return result;
}

uint64_t sub_1BA00CD30(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t CodablePluginViewModel.encode()()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  v6 = sub_1BA4A0EC8();
  if (v0)
  {
    v26 = v5;

    sub_1BA4A3E28();
    v7 = v0;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v24 = v1;
      v11 = v10;
      v12 = swift_slowAlloc();
      v25 = v6;
      v13 = v12;
      v27 = v12;
      *v11 = 136315394;
      v14 = sub_1BA4A85D8();
      v16 = sub_1B9F0B82C(v14, v15, &v27);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_1BA4A8418();
      v19 = sub_1B9F0B82C(v17, v18, &v27);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v8, v9, "Failed to encode data for %s with error: %s", v11, 0x16u);
      swift_arrayDestroy();
      v20 = v13;
      v6 = v25;
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);

      (*(v2 + 8))(v4, v24);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v21 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1BA00D0B8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1BA4A7DF8();
    v1 = 0x676E69646F636E65;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1BA4A7DF8();
    v1 = 0x676E69646F636564;
LABEL_5:
    MEMORY[0x1BFAF1350](v1, 0xED00002861746144);
    sub_1B9FED358();
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](41, 0xE100000000000000);
    return 0;
  }

  return 0x7473614365707974;
}

uint64_t PluginView.actionHandler.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))(v5);
  if (*&v5[0])
  {
    v6[2] = v5[2];
    v6[3] = v5[3];
    v6[4] = v5[4];
    v6[0] = v5[0];
    v6[1] = v5[1];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1BA00D78C(v6, v5);
    v3 = (*(AssociatedTypeWitness + 88))(v5);
    sub_1BA00D7E8(v6);
  }

  else
  {
    sub_1B9F8051C(v5);
    return 0;
  }

  return v3;
}

uint64_t ProtobufPluginViewModel.init(userData:)(uint64_t a1, unint64_t a2)
{
  sub_1BA00D83C();
  v5 = v4;
  sub_1B9F2BB4C(a1, a2);
  return v5;
}

id ProtobufPluginViewModel.encode()()
{
  result = [v0 data];
  if (result)
  {
    v2 = result;
    v3 = sub_1BA4A1608();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA00D360@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1BA00D83C();
  v7 = v6;
  result = sub_1B9F2BB4C(a1, a2);
  *a3 = v7;
  return result;
}

void sub_1BA00D83C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BA4A15F8();
  v2 = [v0 initWithData_];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_1BA00D948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BA00D9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1BA00DA04(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1BA00DA40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEA1A0 = result;
  *algn_1EBBEA1A8 = v1;
  return result;
}

uint64_t sub_1BA00DAF4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEA1B0 = result;
  unk_1EBBEA1B8 = v1;
  return result;
}

id sub_1BA00DBC0@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t DataTypeChartMessageItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_uniqueIdentifier);

  return v1;
}

uint64_t DataTypeChartMessageItem.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA00DD24@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem____lazy_storage___cnCapabilitiesManager;
  swift_beginAccess();
  sub_1BA0110E8(v1 + v3, &v8);
  if (v9)
  {
    return sub_1B9F1134C(&v8, a1);
  }

  sub_1BA011178(&v8, &qword_1EBBEA290, &qword_1EBBED6D0, &protocol descriptor for CNCapabilitiesManaging);
  if (HKIsUnitTesting())
  {
    v5 = &off_1F380D908;
    v6 = &type metadata for NoOpCNCapabilitiesManager;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695D0F8]) init];
    v6 = sub_1B9F0ADF8(0, &qword_1EBBEA2A0);
    *a1 = v7;
    v5 = &protocol witness table for CNCapabilitiesManager;
  }

  a1[3] = v6;
  a1[4] = v5;
  sub_1B9F0A534(a1, &v8);
  swift_beginAccess();
  sub_1BA0111E8(&v8, v1 + v3);
  return swift_endAccess();
}

id sub_1BA00DE50()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA00DEA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA00DF5C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_1BA00DFC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

id sub_1BA00E078()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA00E0CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DataTypeChartMessageItem.profileInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_profileInformation;
  v4 = sub_1BA4A33C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BA00E1FC(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v63 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = sub_1BA4A28B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (*a1)
  {
    sub_1BA4A3DD8();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v67 = v26;
      *v25 = 136315394;
      v68 = ObjectType;
      swift_getMetatypeMetadata();
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v67);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v22;
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] unsupported contact type %ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    return (*(v65 + 8))(v9, v66);
  }

  else
  {
    v61 = a2;
    v62 = v14;
    if (a3)
    {
      v65 = v19;
      v66 = v18;
      v60 = a3;
      v31 = v21;

      sub_1BA4A1718();
      sub_1B9F0ADF8(0, &qword_1EDC6B610);
      v32 = sub_1BA4A70E8();
      ObjectType = v31;
      sub_1BA4A1628();
      v33 = sub_1BA4A1A08();
      [v32 setValue:v33 forKey:*MEMORY[0x1E696C898]];

      v34 = v62;
      v35 = *(v62 + 104);
      v35(v16, *MEMORY[0x1E69A3128], v13);
      LOBYTE(v32) = sub_1BA4A2898();
      v36 = *(v34 + 8);
      v36(v16, v13);
      if (v32)
      {
        v37 = v63;
        v38 = sub_1BA00FC6C(v63);
        v35(v16, *MEMORY[0x1E69A3120], v13);
        v39 = sub_1BA4A2898();
        v36(v16, v13);
        if (v39)
        {

          if (v38)
          {
            sub_1B9F232F8(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
            v40 = swift_allocObject();
            *(v40 + 16) = xmmword_1BA4B5480;
            *(v40 + 56) = type metadata accessor for HealthURLActivityItemProvider();
            *(v40 + 32) = v38;
            v41 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
            v42 = v38;
            v43 = sub_1BA4A6AE8();

            v44 = [v41 initWithActivityItems:v43 applicationActivities:0];

            sub_1BA2593F4();
            type metadata accessor for ActivityType(0);
            v45 = sub_1BA4A6AE8();

            [v44 setExcludedActivityTypes_];

            v46 = sub_1BA05984C();
            [v44 setPhotosHeaderMetadata_];

            if (v63)
            {
              [v63 presentViewController:v44 animated:1 completion:0];
            }
          }
        }

        else
        {
          sub_1B9F232F8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1BA4B5480;
          v56 = v60;
          *(v55 + 32) = v61;
          *(v55 + 40) = v56;
          sub_1BA00E9A0(v37, v38);
        }
      }

      else
      {
        v35(v16, *MEMORY[0x1E69A3120], v13);
        v54 = sub_1BA4A2898();
        v36(v16, v13);
        if (v54)
        {

          sub_1BA00F5C0(v63);
        }

        else
        {
          sub_1B9F232F8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1BA4B5480;
          v58 = v60;
          *(v57 + 32) = v61;
          *(v57 + 40) = v58;
          sub_1BA00ECB8(v63);
        }
      }

      return (*(v65 + 8))(ObjectType, v66);
    }

    else
    {
      sub_1BA4A3DD8();
      v47 = sub_1BA4A3E88();
      v48 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v67 = v50;
        *v49 = 136315138;
        v68 = ObjectType;
        swift_getMetatypeMetadata();
        v51 = sub_1BA4A6808();
        v53 = sub_1B9F0B82C(v51, v52, &v67);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_1B9F07000, v47, v48, "[%s] invalid recipient", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x1BFAF43A0](v50, -1, -1);
        MEMORY[0x1BFAF43A0](v49, -1, -1);
      }

      return (*(v65 + 8))(v12, v66);
    }
  }
}

void sub_1BA00E9A0(void *a1, void *a2)
{
  if (a2)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E6973F10]);
    v6 = a2;
    v7 = [v5 init];
    [v7 setMessageComposeDelegate_];
    [v7 setModalPresentationStyle_];
    v8 = MEMORY[0x1E69E6158];
    v9 = sub_1BA4A6AE8();
    [v7 setRecipients_];

    sub_1B9F232F8(0, &qword_1EDC6E330, v8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BA4B5480;
    *(v10 + 32) = sub_1BA4A1518();
    *(v10 + 40) = v11;
    v12 = sub_1BA4A6AE8();

    [v7 setContentURLs_];

    v13 = [objc_allocWithZone(MEMORY[0x1E696ED00]) init];
    [v13 setHasFetchedSubresources_];
    v26 = sub_1BA05984C();
    v14 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image];
    if (v14)
    {
      v15 = objc_allocWithZone(MEMORY[0x1E696EC68]);
      v16 = v14;
      v17 = [v15 initWithPlatformImage_];
      [v26 setImage_];
    }

    v18 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
    v19 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

    [v26 setIcon_];
    [v13 setMetadata_];
    v20 = [v13 dataRepresentation];
    v21 = sub_1BA4A1608();
    v23 = v22;

    v24 = sub_1BA4A15F8();
    sub_1B9F2BB4C(v21, v23);
    v25 = sub_1BA4A1548();
    [v7 addRichLinkData:v24 withWebpageURL:v25];

    if (a1)
    {
      [a1 presentViewController:v7 animated:1 completion:0];
    }
  }
}

void sub_1BA00ECB8(void *a1)
{
  swift_getObjectType();
  v81 = sub_1BA4A3EA8();
  v3 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = (v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = v74 - v6;
  v80 = sub_1BA4A3C98();
  v8 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E6973F10]) init];
  [v11 setMessageComposeDelegate_];
  [v11 setModalPresentationStyle_];
  v12 = sub_1BA4A6AE8();
  [v11 setRecipients_];

  v13 = objc_opt_self();
  if ([v13 canSendText])
  {
    if ([v13 canSendAttachments])
    {
      sub_1BA4A3C88();
      sub_1BA4A3C58();
      v78 = a1;
      v76 = *(v8 + 8);
      v77 = v8 + 8;
      v76(v10, v80);
      v14 = sub_1BA4A6758();
      a1 = v78;

      v15 = [v13 isSupportedAttachmentUTI_];

      if (v15)
      {
        if (a1 && (v82 = a1, sub_1B9F0ADF8(0, &qword_1EDC6B5D0), sub_1B9F0D950(0, &qword_1EDC65130), v75 = a1, (swift_dynamicCast() & 1) != 0))
        {
          v16 = *(&v84 + 1);
          if (*(&v84 + 1))
          {
            v17 = v85;
            __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
            v18 = *(v17 + 8);
            v19 = v17;
            a1 = v78;
            v20 = v18(v16, v19);
            v22 = v21;
            __swift_destroy_boxed_opaque_existential_1(&v83);
            if (v20)
            {
              ObjectType = swift_getObjectType();
              v24 = v22[1](ObjectType, v22);
              if (v24)
              {
                v25 = v24;
                v26 = UIImagePNGRepresentation(v24);

                if (v26)
                {
                  v78 = ObjectType;
                  v79 = v22;
                  v27 = sub_1BA4A1608();
                  v29 = v28;

                  sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                  v74[1] = v30;
                  v31 = swift_allocObject();
                  *(v31 + 16) = xmmword_1BA4B5480;
                  v32 = [v75 title];
                  if (v32)
                  {
                    v33 = v29;
                    v34 = v27;
                    v35 = v32;
                    v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                    v38 = v37;

                    v27 = v34;
                    v29 = v33;
                  }

                  else
                  {
                    v36 = 0;
                    v38 = 0;
                  }

                  *(v31 + 56) = MEMORY[0x1E69E6158];
                  v74[0] = sub_1B9F1BE20();
                  *(v31 + 64) = v74[0];
                  if (v38)
                  {
                    *(v31 + 32) = v36;
                    *(v31 + 40) = v38;
                  }

                  else
                  {
                    if (qword_1EBBE8258 != -1)
                    {
                      swift_once();
                    }

                    v57 = *algn_1EBBEA1A8;
                    *(v31 + 32) = qword_1EBBEA1A0;
                    *(v31 + 40) = v57;
                  }

                  sub_1BA4A67D8();
                  v58 = sub_1BA4A15F8();
                  v81 = v29;
                  v59 = v27;
                  v60 = v58;
                  sub_1BA4A3C88();
                  sub_1BA4A3C58();
                  v76(v10, v80);
                  v61 = sub_1BA4A6758();

                  v62 = sub_1BA4A6758();

                  [v11 addAttachmentData:v60 typeIdentifier:v61 filename:v62];

                  v63 = v79[2](v78);
                  if (v64)
                  {
                    v65 = v63;
                    v66 = v64;
                    v67 = sub_1BA4A3348();
                    v69 = v68;
                    if (qword_1EBBE8260 != -1)
                    {
                      swift_once();
                    }

                    v70 = swift_allocObject();
                    *(v70 + 16) = xmmword_1BA4B5460;
                    v71 = MEMORY[0x1E69E6158];
                    v72 = v74[0];
                    *(v70 + 56) = MEMORY[0x1E69E6158];
                    *(v70 + 64) = v72;
                    *(v70 + 32) = v67;
                    *(v70 + 40) = v69;
                    *(v70 + 96) = v71;
                    *(v70 + 104) = v72;
                    *(v70 + 72) = v65;
                    *(v70 + 80) = v66;
                    sub_1BA4A6768();

                    v73 = sub_1BA4A6758();

                    [v11 setBody_];
                    sub_1B9F2BB4C(v59, v81);
                  }

                  else
                  {
                    sub_1B9F2BB4C(v59, v81);
                  }

                  swift_unknownObjectRelease();
                  v46 = v75;
                  goto LABEL_17;
                }
              }

              swift_unknownObjectRelease();
            }

            goto LABEL_21;
          }
        }

        else
        {
          v85 = 0;
          v83 = 0u;
          v84 = 0u;
        }

        sub_1BA011178(&v83, &qword_1EBBEA288, &qword_1EDC65130, &protocol descriptor for ChartImageProviderProviding);
LABEL_21:
        v47 = v79;
        sub_1BA4A3DD8();
        v48 = a1;
        v49 = sub_1BA4A3E88();
        v50 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v82 = a1;
          *&v83 = v52;
          *v51 = 136315138;
          sub_1B9F6A804(0, &qword_1EDC5E4D8, &qword_1EDC6B5D0);
          v53 = v48;
          v54 = sub_1BA4A6828();
          v56 = sub_1B9F0B82C(v54, v55, &v83);

          *(v51 + 4) = v56;
          a1 = v78;
          _os_log_impl(&dword_1B9F07000, v49, v50, "[%s] Could not create chart image, initiating message without attachment", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x1BFAF43A0](v52, -1, -1);
          MEMORY[0x1BFAF43A0](v51, -1, -1);
        }

        (*(v3 + 8))(v47, v81);
        goto LABEL_15;
      }
    }
  }

  sub_1BA4A3DD8();
  v39 = sub_1BA4A3E88();
  v40 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v83 = v42;
    *v41 = 136315138;
    v43 = sub_1BA4A85D8();
    v45 = sub_1B9F0B82C(v43, v44, &v83);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1B9F07000, v39, v40, "[%s]: MFMessageComposeViewController cannot send attachment.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    MEMORY[0x1BFAF43A0](v41, -1, -1);
  }

  (*(v3 + 8))(v7, v81);
LABEL_15:
  if (a1)
  {
    v46 = a1;
LABEL_17:
    [v46 presentViewController:v11 animated:1 completion:{0, v74[0]}];
  }
}

void sub_1BA00F5C0(void *a1)
{
  if (a1 && (type metadata accessor for DataTypeDetailViewController(), (v2 = swift_dynamicCastClass()) != 0) && (v3 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    v8 = swift_getObjectType();
    v9 = *(v4 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v4);
    v12 = v11;
    swift_unknownObjectRelease();
    if (v12)
    {
      v43 = v10;
      v13 = sub_1BA4A3348();
      v15 = v14;
      if (qword_1EBBE8260 != -1)
      {
        swift_once();
      }

      sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BA4B5460;
      v17 = MEMORY[0x1E69E6158];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v18 = sub_1B9F1BE20();
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      *(v16 + 96) = v17;
      *(v16 + 104) = v18;
      *(v16 + 64) = v18;
      *(v16 + 72) = v43;
      *(v16 + 80) = v12;
      v19 = sub_1BA4A6768();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    if (v7)
    {
      v44 = 0;
      v51 = sub_1B9F0ADF8(0, &qword_1EDC6E370);
      v50[0] = v7;
      if (!v21)
      {
        goto LABEL_14;
      }

LABEL_10:
      v22 = MEMORY[0x1E69E6158];
      v23 = v21;
      v24 = v19;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
  }

  v7 = 0;
  memset(v50, 0, sizeof(v50));
  v44 = 1;
  v51 = 0;
  if (v21)
  {
    goto LABEL_10;
  }

LABEL_14:
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v52[2] = 0;
LABEL_15:
  v52[0] = v24;
  v52[1] = v23;
  v52[3] = v22;
  v25 = v7;

  sub_1B9FF168C(v50, &v48);
  v45 = v48;
  v46 = v49;
  v26 = MEMORY[0x1E69E7CA0];
  if (*(&v49 + 1))
  {
    sub_1B9F46920(&v45, v47);
    v27 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1BA27F708(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1BA27F708((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    sub_1B9F46920(v47, &v27[32 * v29 + 32]);
  }

  else
  {
    sub_1B9F0DB54(&v45, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F232F8);
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9FF168C(v52, &v48);
  v45 = v48;
  v46 = v49;
  if (*(&v49 + 1))
  {
    sub_1B9F46920(&v45, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1BA27F708(0, *(v27 + 2) + 1, 1, v27);
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1BA27F708((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    sub_1B9F46920(v47, &v27[32 * v31 + 32]);
  }

  else
  {
    sub_1B9F0DB54(&v45, &qword_1EDC6E300, v26 + 8, MEMORY[0x1E69E6720], sub_1B9F232F8);
  }

  sub_1B9F232F8(0, &qword_1EDC6E300, v26 + 8, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v33 = sub_1BA4A6AE8();

  v34 = [v32 initWithActivityItems:v33 applicationActivities:0];

  sub_1BA2593F4();
  type metadata accessor for ActivityType(0);
  v35 = sub_1BA4A6AE8();

  [v34 setExcludedActivityTypes_];

  v36 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  if (v21)
  {
    v37 = sub_1BA4A6758();
  }

  else
  {
    v37 = 0;
  }

  [v36 setTitle_];

  v38 = v25;
  if (v44)
  {
    v38 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  }

  v39 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
  v40 = v25;
  v41 = [v39 initWithObject_];

  [v36 setImageProvider_];
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  v42 = sub_1BA4A6758();
  [v36 setSummary_];

  [v34 setPhotosHeaderMetadata_];
  if (a1)
  {
    [a1 presentViewController:v34 animated:1 completion:0];
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1BA00FC6C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v127 = v4;
  v128 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v115 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v115 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v115 - v15;
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A15D8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v115 - v27;
  if (!a1)
  {
    goto LABEL_16;
  }

  v123 = v25;
  v124 = v26;
  v122 = v16;
  v29 = a1;
  v30 = UIViewController.resolvedHealthStore.getter();
  if (!v30)
  {

LABEL_16:
    sub_1BA4A3DD8();
    v77 = a1;
    v78 = sub_1BA4A3E88();
    v79 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v132[0] = v82;
      *v80 = 136315650;
      v83 = sub_1BA4A85D8();
      v85 = sub_1B9F0B82C(v83, v84, v132);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      *(v80 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, v132);
      *(v80 + 22) = 2112;
      *(v80 + 24) = v77;
      *v81 = a1;
      v86 = v77;
      _os_log_impl(&dword_1B9F07000, v78, v79, "%s %s Can not access view controller or health store: %@", v80, 0x20u);
      sub_1B9F0DB54(v81, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v81, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v82, -1, -1);
      MEMORY[0x1BFAF43A0](v80, -1, -1);
    }

    v128[1](v7, v127);
    return 0;
  }

  v125 = v30;
  type metadata accessor for DataTypeDetailViewController();
  v31 = swift_dynamicCastClass();
  v32 = v29;
  if (!v31 || (v33 = v31 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    sub_1BA4A3DD8();
    v70 = sub_1BA4A3E88();
    v71 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v131[0] = v73;
      *v72 = 136315394;
      v74 = sub_1BA4A85D8();
      v76 = sub_1B9F0B82C(v74, v75, v131);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, v131);
      _os_log_impl(&dword_1B9F07000, v70, v71, "%s %s Unable to get chart image provider from presenting view controller", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v73, -1, -1);
      MEMORY[0x1BFAF43A0](v72, -1, -1);
    }

    else
    {
    }

    v128[1](v10, v127);
    return 0;
  }

  v35 = *(v33 + 8);
  v36 = Strong;
  v37 = swift_getObjectType();
  v38 = *(v35 + 2);
  v120 = v35;
  v121 = v36;
  v119 = v37;
  v39 = v38(v37, v35);
  if (!v40)
  {
    sub_1BA4A3DD8();
    v87 = sub_1BA4A3E88();
    v88 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v131[0] = v90;
      *v89 = 136315394;
      v91 = sub_1BA4A85D8();
      v93 = sub_1B9F0B82C(v91, v92, v131);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      *(v89 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, v131);
      _os_log_impl(&dword_1B9F07000, v87, v88, "%s %s Unable to get chartDataTypeDisplayName from imageProvider", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v90, -1, -1);
      MEMORY[0x1BFAF43A0](v89, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v128[1](v13, v127);
    return 0;
  }

  v41 = v40;
  v118 = v39;
  v115 = v29;
  v117 = sub_1BA4A3348();
  v116 = v42;
  if (qword_1EBBE8260 != -1)
  {
    swift_once();
  }

  sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4B5460;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1B9F1BE20();
  v46 = v116;
  *(v43 + 32) = v117;
  *(v43 + 40) = v46;
  *(v43 + 96) = v44;
  *(v43 + 104) = v45;
  v47 = v118;
  *(v43 + 64) = v45;
  *(v43 + 72) = v47;
  *(v43 + 80) = v41;
  v118 = sub_1BA4A6768();
  v49 = v48;

  v50 = v125;
  v51 = [v125 profileIdentifier];
  v52 = [objc_allocWithZone(MEMORY[0x1E69A2D80]) initWithProfileIdentifier:v51 useExternalURLScheme:1];

  v53 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType;
  swift_beginAccess();
  v54 = [v52 URLForDataTypeDetailWithObjectType_];
  if (!v54)
  {

    v94 = v122;
    sub_1BA4A3DD8();
    v95 = v2;
    v96 = v50;
    v97 = sub_1BA4A3E88();
    v98 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v130 = v125;
      *v99 = 136315907;
      v100 = sub_1BA4A85D8();
      v102 = sub_1B9F0B82C(v100, v101, &v130);
      ObjectType = v52;
      v103 = v102;

      *(v99 + 4) = v103;
      *(v99 + 12) = 2080;
      *(v99 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, &v130);
      *(v99 + 22) = 2081;
      v104 = [*&v2[v53] identifier];
      v105 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v107 = v106;

      v108 = sub_1B9F0B82C(v105, v107, &v130);

      *(v99 + 24) = v108;
      *(v99 + 32) = 2080;
      v109 = sub_1BA4A6F38();
      v110 = sub_1BA4A1D48();
      v112 = v111;

      v113 = sub_1B9F0B82C(v110, v112, &v130);

      *(v99 + 34) = v113;
      _os_log_impl(&dword_1B9F07000, v97, v98, "%s %s Could not create URL for %{private}s for profile %s", v99, 0x2Au);
      v114 = v125;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v114, -1, -1);
      MEMORY[0x1BFAF43A0](v99, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v128[1](v94, v127);
    return 0;
  }

  v128 = v49;
  ObjectType = v52;
  v55 = v54;
  sub_1BA4A1588();

  v127 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  v56 = v123;
  v57 = *(v123 + 16);
  v57(v124, v28, v20);
  v58 = (*(v120 + 1))(v119);
  if (qword_1EBBE8298 != -1)
  {
    swift_once();
  }

  v59 = unk_1EBBEAB20;
  v122 = qword_1EBBEAB18;
  v120 = type metadata accessor for HealthURLActivityItemProvider();
  v60 = objc_allocWithZone(v120);
  v61 = &v60[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  v62 = v128;
  *v61 = v118;
  v61[1] = v62;
  v57(&v60[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], v124, v20);
  *&v60[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = v58;
  v63 = v127;
  *&v60[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v127;
  v64 = &v60[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  *v64 = v122;
  v64[1] = v59;
  v128 = v58;
  v65 = v63;

  sub_1BA4A15C8();
  result = (*(v56 + 48))(v19, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v56 + 32))(v22, v19, v20);
    v67 = sub_1BA4A1548();
    v68 = *(v56 + 8);
    v68(v22, v20);
    v129.receiver = v60;
    v129.super_class = v120;
    v69 = objc_msgSendSuper2(&v129, sel_initWithPlaceholderItem_, v67);

    swift_unknownObjectRelease();
    v68(v124, v20);
    v68(v28, v20);
    return v69;
  }

  return result;
}

id DataTypeChartMessageItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataTypeChartMessageItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeChartMessageItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DataTypeChartMessageItem()
{
  result = qword_1EBBEA270;
  if (!qword_1EBBEA270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA010B8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA010BD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_defaultICloudAccount);

  return v1;
}

uint64_t sub_1BA010C10()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_uniqueIdentifier);

  return v1;
}

uint64_t sub_1BA010C50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA010CCC()
{
  result = qword_1EBBEA1F0;
  if (!qword_1EBBEA1F0)
  {
    type metadata accessor for DataTypeChartMessageItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA1F0);
  }

  return result;
}

uint64_t sub_1BA010D2C()
{
  result = sub_1BA4A33C8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA010FE4(uint64_t *a1, int a2)
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

uint64_t sub_1BA01102C(uint64_t result, int a2, int a3)
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

void sub_1BA011090()
{
  if (!qword_1EDC6AE90)
  {
    sub_1BA4A15D8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6AE90);
    }
  }
}

uint64_t sub_1BA0110E8(uint64_t a1, uint64_t a2)
{
  sub_1B9F40D10(0, &qword_1EBBEA290, &qword_1EBBED6D0, &protocol descriptor for CNCapabilitiesManaging, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA011178(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F40D10(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA0111E8(uint64_t a1, uint64_t a2)
{
  sub_1B9F40D10(0, &qword_1EBBEA290, &qword_1EBBED6D0, &protocol descriptor for CNCapabilitiesManaging, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1BA011278()
{
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v23[4] = xmmword_1EDC6D458;
  v23[5] = *&qword_1EDC6D468;
  v23[6] = xmmword_1EDC6D478;
  v23[7] = xmmword_1EDC6D488;
  v23[0] = xmmword_1EDC6D418;
  v23[1] = *&qword_1EDC6D428;
  v23[2] = xmmword_1EDC6D438;
  v23[3] = xmmword_1EDC6D448;
  v22 = qword_1EDC6D428;
  v21 = xmmword_1EDC6D418;
  v1 = unk_1EDC6D430;
  v3 = *(&xmmword_1EDC6D438 + 1);
  v4 = xmmword_1EDC6D438;
  v2 = xmmword_1EDC6D448;
  v18 = *&qword_1EDC6D470;
  v19 = *(&xmmword_1EDC6D478 + 8);
  v20 = *(&xmmword_1EDC6D488 + 1);
  v16 = *(&xmmword_1EDC6D448 + 8);
  v17 = *(&xmmword_1EDC6D458 + 8);
  if (*(v0 + qword_1EDC84BB0))
  {
    sub_1B9F1D9A4(v23, &v12);
  }

  else
  {
    sub_1B9F1D9A4(v23, &v12);
    sub_1B9F1DA18(v1, v4, v3, v2);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v1 = 0;
  }

  v8 = v21;
  *&v11[24] = v17;
  *&v11[40] = v18;
  *&v11[56] = v19;
  *&v9 = v22;
  *(&v9 + 1) = v1;
  *&v10 = v4;
  *(&v10 + 1) = v3;
  *v11 = v2;
  *&v11[72] = v20;
  *&v11[8] = v16;
  sub_1BA0117AC();
  *&v15[16] = *&v11[16];
  *&v15[32] = *&v11[32];
  *&v15[48] = *&v11[48];
  *&v15[64] = *&v11[64];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  *v15 = *v11;
  sub_1B9F1D9A4(&v8, &v7);
  v5 = sub_1B9F293A8(&v12);
  v12 = v21;
  *&v15[24] = v17;
  *&v15[40] = v18;
  *&v15[56] = v19;
  *&v13 = v22;
  *(&v13 + 1) = v1;
  *&v14 = v4;
  *(&v14 + 1) = v3;
  *v15 = v2;
  *&v15[72] = v20;
  *&v15[8] = v16;
  sub_1B9F1DA58(&v12);
  return v5;
}

id sub_1BA01148C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingOnboardingDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharingOnboardingDataSource()
{
  result = qword_1EDC64C78;
  if (!qword_1EDC64C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA011580@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v8 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v5, v7, 0, 0, 0, 0, v4, 0, 0);
  v10 = v9;
  a1[3] = v8;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1BA011708()
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();
}

unint64_t sub_1BA011754()
{
  result = qword_1EDC69800;
  if (!qword_1EDC69800)
  {
    type metadata accessor for HeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69800);
  }

  return result;
}

unint64_t sub_1BA0117AC()
{
  result = qword_1EDC6B530;
  if (!qword_1EDC6B530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B530);
  }

  return result;
}

uint64_t sub_1BA0117F8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFAF2860](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BA4A7CC8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1BA011920(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v10 = v7[3];
      v27 = v7[2];
      v28 = v10;
      v11 = v7[3];
      v29 = v7[4];
      v12 = v7[1];
      v26[0] = *v7;
      v26[1] = v12;
      v23 = v27;
      v24 = v11;
      v25 = v7[4];
      v21 = v26[0];
      v22 = v9;
      sub_1B9FF3650(v26, &v16);
      v13 = a1(&v21);
      if (v3)
      {
        break;
      }

      v4 = v13;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      sub_1B9FF3768(&v16);
      v14 = v8-- == 0;
      v7 += 5;
      if ((v4 | v14))
      {
        return v4 & 1;
      }
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_1B9FF3768(&v16);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1BA011A3C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v13 = *(v7 - 3);
      v14 = v8;
      v15 = v9;

      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 4;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

unint64_t sub_1BA011AF0()
{
  result = qword_1EDC6DDE0;
  if (!qword_1EDC6DDE0)
  {
    type metadata accessor for HostViewCell(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6DDE0);
  }

  return result;
}

id DataTypeDetailConfiguration.MessageButtonComponent.viewConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

void DataTypeDetailConfiguration.MessageButtonComponent.viewConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

uint64_t DataTypeDetailConfiguration.MessageButtonComponent.init(hkType:viewConfiguration:contactStore:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t DataTypeDetailConfiguration.MessageButtonComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v13 = *(v1 + 8);
  v4 = objc_opt_self();
  v5 = v13;
  v6 = [v4 hk_chartBackgroundColor];
  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  LOBYTE(v4) = sub_1BA4A7798();

  if ((v4 & 1) != 0 && (*(a1 + 48) & 0xFE) == 2)
  {
    v14[0] = v5;
    v14[1] = v3;
    v15 = v13;
    v7 = v5;
    v8 = sub_1BA011DE0(a1, v14);

    v9 = 0;
  }

  else
  {
    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v8 = EmptyDataSource.init()();
    v9 = 1;
  }

  sub_1BA012DAC();
  v10 = swift_allocObject();
  v11 = *(v8 + 24);
  *(v10 + 16) = *(v8 + 16);
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;

  return v10;
}

void *sub_1BA011DE0(void *a1, void **a2)
{
  v5 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v10 = *v2;
  v9 = *(v2 + 8);
  v11 = *(v2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1BA4A1B68();
  v13 = a1[5];
  v14 = v12;
  v15 = [v13 profileIdentifier];
  v16 = [v15 identifier];

  sub_1BA4A1778();
  type metadata accessor for SharingEntryProfileInformationDataSource();
  swift_allocObject();
  v17 = sub_1BA19BEB8(v14, v7, 0, 0, 0, 0);
  v18 = swift_allocObject();
  v18[2] = v10;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v8;
  sub_1BA012F10(0);
  swift_allocObject();
  v19 = v10;
  v20 = v9;
  v21 = v11;
  v22 = v8;
  v23 = sub_1BA271888(v17, sub_1BA013030, v18, 0);

  v24 = swift_allocObject();
  v24[2] = sub_1BA012A44;
  v24[3] = 0;
  v24[4] = v23;
  sub_1BA012E68(0);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v27 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v26 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  *(v25 + 24) = v27;
  *(v25 + 32) = v26;
  *(v25 + 40) = 0;
  *(v25 + 48) = sub_1BA01303C;
  *(v25 + 56) = v24;
  sub_1BA012EA4(0, &unk_1EDC69060, sub_1BA012E68, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
  v28 = swift_allocObject();
  v28[4] = v25;
  v28[5] = sub_1BA012D60;
  v28[6] = 0;
  v28[2] = v27;
  v28[3] = v26;
  swift_bridgeObjectRetain_n();

  return v28;
}

uint64_t sub_1BA0120A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v101 = a6;
  v102 = a3;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  v103 = v7;
  v104 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v98 - v12;
  sub_1BA01313C(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v98 - v15;
  v17 = sub_1BA4A33C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v98 - v22;
  sub_1B9F0A534(a1, v106);
  sub_1B9F32244();
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v99 = v13;
    v25(v16, 0, 1, v17);
    (*(v18 + 32))(v23, v16, v17);
    sub_1B9F109F8();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BA4B7510;
    v27 = *MEMORY[0x1E695C208];
    v28 = *MEMORY[0x1E695C330];
    v29 = MEMORY[0x1E69A3410];
    *(v26 + 32) = *MEMORY[0x1E695C208];
    *(v26 + 40) = v28;
    v106[3] = v17;
    v106[4] = v29;
    v106[5] = MEMORY[0x1E69A3418];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v106);
    v31 = v23;
    v32 = v23;
    v33 = *(v18 + 16);
    v33(boxed_opaque_existential_1, v32, v17);
    v34 = v27;
    v35 = v28;
    v36 = sub_1BA4A7018();

    __swift_destroy_boxed_opaque_existential_1(v106);
    v37 = [v36 phoneNumbers];
    sub_1B9F0ADF8(0, &unk_1EBBEE300);
    v38 = sub_1BA4A6B08();

    if (v38 >> 62)
    {
      v39 = sub_1BA4A7CC8();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v31;
    v100 = v31;
    if (v39)
    {
      goto LABEL_7;
    }

    v41 = [v36 emailAddresses];
    v42 = sub_1BA4A6B08();

    if (v42 >> 62)
    {
      v82 = sub_1BA4A7CC8();

      if (v82)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v43)
      {
LABEL_7:
        sub_1BA01313C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1BA4B5480;
        v45 = v20;
        v46 = v17;
        v103 = v17;
        v47 = v20;
        v48 = v18;
        v49 = v33;
        v33(v45, v31, v46);
        v104 = type metadata accessor for DataTypeChartMessageItem();
        v50 = objc_allocWithZone(v104);
        v51 = &v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_uniqueIdentifier];
        *v51 = 0xD000000000000018;
        *(v51 + 1) = 0x80000001BA4E3AB0;
        v52 = &v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_reuseIdentifier];
        v106[0] = type metadata accessor for DataTypeDetailMessageCell();
        sub_1BA0131A0();
        v53 = v36;
        *v52 = sub_1BA4A6808();
        v52[1] = v54;
        v55 = &v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem____lazy_storage___cnCapabilitiesManager];
        *(v55 + 4) = 0;
        *v55 = 0u;
        *(v55 + 1) = 0u;
        v56 = &v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_defaultICloudAccount];
        *v56 = 0;
        *(v56 + 1) = 0;
        *&v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact] = v53;
        v57 = v47;
        v58 = v47;
        v59 = v103;
        v49(&v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_profileInformation], v58, v103);
        v60 = v53;
        v61 = v57;
        *v56 = MEMORY[0x1BFAEDD10]();
        *(v56 + 1) = v62;

        v63 = v101;
        v64 = v102;
        *&v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration] = v101;
        *&v50[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType] = v64;
        v105.receiver = v50;
        v65 = v104;
        v105.super_class = v104;
        v66 = v63;
        v67 = v64;
        v68 = objc_msgSendSuper2(&v105, sel_init);

        v69 = *(v48 + 8);
        v69(v61, v59);
        *(v44 + 56) = v65;
        *(v44 + 64) = sub_1BA010CCC();
        *(v44 + 32) = v68;

        v69(v100, v59);
        return v44;
      }
    }

    v83 = v99;
    sub_1BA4A3E28();
    v84 = v36;
    v85 = sub_1BA4A3E88();
    v86 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v106[0] = v102;
      *v87 = 136315395;
      v107 = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
      sub_1BA0130F4();
      v88 = sub_1BA4A6808();
      v90 = sub_1B9F0B82C(v88, v89, v106);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2081;
      v91 = v84;
      v92 = [v91 description];
      v93 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v95 = v94;

      v96 = sub_1B9F0B82C(v93, v95, v106);

      *(v87 + 14) = v96;
      _os_log_impl(&dword_1B9F07000, v85, v86, "[%s]: Contact %{private}s is not reachable by message.", v87, 0x16u);
      v97 = v102;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v97, -1, -1);
      MEMORY[0x1BFAF43A0](v87, -1, -1);

      (*(v104 + 1))(v83, v103);
      (*(v18 + 8))(v100, v17);
    }

    else
    {

      (*(v104 + 1))(v83, v103);
      (*(v18 + 8))(v40, v17);
    }
  }

  else
  {
    v25(v16, 1, 1, v17);
    sub_1BA013068(v16);
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v106);
    v71 = sub_1BA4A3E88();
    v72 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v108[0] = v74;
      *v73 = 136315394;
      v107 = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
      sub_1BA0130F4();
      v75 = sub_1BA4A6808();
      v77 = sub_1B9F0B82C(v75, v76, v108);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      sub_1B9F0A534(v106, &v107);
      v78 = sub_1BA4A6808();
      v80 = v79;
      __swift_destroy_boxed_opaque_existential_1(v106);
      v81 = sub_1B9F0B82C(v78, v80, v108);

      *(v73 + 14) = v81;
      _os_log_impl(&dword_1B9F07000, v71, v72, "[%s]: Unexpected type to map: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      MEMORY[0x1BFAF43A0](v73, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v106);
    }

    (*(v104 + 1))(v10, v103);
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1BA012A44()
{
  sub_1BA4A6598();
  v36 = v0;
  v1 = objc_opt_self();
  v2 = [v1 estimatedDimension_];
  v3 = [v1 fractionalWidthDimension_];
  if (qword_1EDC6D4A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC6D4A8;
  v5 = qword_1EDC6D4B0;
  v6 = qword_1EDC6D4A8;
  v7 = v5;
  sub_1BA4A75C8();
  v35 = v8;
  v10 = v9;
  v12 = v11;
  v13 = [v1 estimatedDimension_];

  sub_1B9F1DA18(2, 1, v4, v5);
  sub_1BA4A6598();
  v15 = v14;
  v16 = [v1 estimatedDimension_];
  v17 = [v1 fractionalWidthDimension_];
  v18 = qword_1EDC6D4A8;
  v19 = qword_1EDC6D4B0;
  v20 = qword_1EDC6D4A8;
  v21 = v19;
  sub_1BA4A75C8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 estimatedDimension_];

  sub_1B9F1DA18(2, 1, v18, v19);
  v38[0] = v15;
  v38[1] = v30;
  v38[2] = v17;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 2;
  v44 = v23;
  v45 = v25;
  v46 = v27;
  v47 = v29;
  sub_1B9F1DA58(v38);
  v31 = -v46;
  v32 = [v1 estimatedDimension_];

  *&v48 = v36;
  *(&v48 + 1) = v32;
  *v49 = v3;
  memset(&v49[8], 0, 64);
  *&v49[72] = 2;
  *&v50 = v31;
  *(&v50 + 1) = v35;
  *&v51 = v10;
  *(&v51 + 1) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  *&v53[48] = *&v49[48];
  *&v53[64] = *&v49[64];
  v54 = v50;
  v55 = v51;
  v52 = v48;
  *v53 = *v49;
  *&v53[16] = *&v49[16];
  *&v53[32] = *&v49[32];
  sub_1B9F1D9A4(&v48, v37);
  v33 = sub_1B9F293A8(&v52);
  *&v52 = v36;
  *(&v52 + 1) = v32;
  *v53 = v3;
  memset(&v53[8], 0, 64);
  *&v53[72] = 2;
  *&v54 = v31;
  *(&v54 + 1) = v35;
  *&v55 = v10;
  *(&v55 + 1) = v12;
  sub_1B9F1DA58(&v52);
  return v33;
}

void sub_1BA012DAC()
{
  if (!qword_1EDC66CB8)
  {
    sub_1BA012EA4(255, &unk_1EDC69060, sub_1BA012E68, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    type metadata accessor for EmptyDataSource();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CB8);
    }
  }
}

void sub_1BA012EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1BA012F68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BA012FB0(uint64_t result, int a2, int a3)
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

uint64_t sub_1BA013068(uint64_t a1)
{
  sub_1BA01313C(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA0130F4()
{
  result = qword_1EBBEA328[0];
  if (!qword_1EBBEA328[0])
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EBBEA328);
  }

  return result;
}

void sub_1BA01313C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA0131A0()
{
  result = qword_1EBBE9E70;
  if (!qword_1EBBE9E70)
  {
    type metadata accessor for DataTypeDetailMessageCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E70);
  }

  return result;
}

uint64_t HostedPromptTileView.Padding.init(imageTopPadding:imageWidth:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  return result;
}

void static HostedPromptTileView.Padding.defaultConfiguration.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1BA01320C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F546567616D69 && a2 == 0xEF676E6964646150;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576567616D69 && a2 == 0xEA00000000006874)
  {

    return 1;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t sub_1BA013320(char a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1 & 1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA013368(char a1)
{
  if (a1)
  {
    return 0x6469576567616D69;
  }

  else
  {
    return 0x706F546567616D69;
  }
}

uint64_t sub_1BA0133E4()
{
  sub_1BA4A8488();
  sub_1BA0132F8(v2, *v0);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA01343C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA01320C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA01346C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA0146B0();
  *a1 = result;
  return result;
}

uint64_t sub_1BA013498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA0134EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t HostedPromptTileView.Padding.encode(to:)(void *a1)
{
  type metadata accessor for HostedPromptTileView.Padding.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1BA4A8298();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v12 = v1[1];
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  v14 = v7;
  v16 = 0;
  sub_1BA013730();
  v8 = v13;
  sub_1BA4A8288();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_1BA4A8238();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BA013730()
{
  result = qword_1EDC6AE18;
  if (!qword_1EDC6AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AE18);
  }

  return result;
}

uint64_t HostedPromptTileView.Padding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  type metadata accessor for HostedPromptTileView.Padding.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1BA4A81E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8528();
  if (!v2)
  {
    v8 = v14;
    v17 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v9 = v15;
    v17 = 1;
    sub_1BA4A8178();
    (*(v5 + 8))(v7, v4);
    v11 = v15;
    v12 = v16;
    *v8 = v9;
    *(v8 + 8) = v11;
    *(v8 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BA013994()
{
  result = qword_1EDC6AE10;
  if (!qword_1EDC6AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AE10);
  }

  return result;
}

uint64_t sub_1BA013A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA013B00(uint64_t a1, uint64_t a2)
{
  sub_1B9F80148();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HostedPromptTileView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for HostedPromptTileView() + 36));
  sub_1BA014368(0, &unk_1EDC69248, type metadata accessor for PromptTileViewModel, type metadata accessor for ViewModelState);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  sub_1BA013A8C(a1 + *(v5 + 28), a2, type metadata accessor for PromptTileViewModel);

  return sub_1BA013C5C(a1);
}

uint64_t sub_1BA013C5C(uint64_t a1)
{
  sub_1BA014368(0, &unk_1EDC69248, type metadata accessor for PromptTileViewModel, type metadata accessor for ViewModelState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HostedPromptTileView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v28 = type metadata accessor for PromptTileView(0);
  v10 = a2 + *(v28 + 28);
  v25 = v2;
  sub_1BA013A8C(v2, v10, type metadata accessor for PromptTileViewModel);
  v24 = *(v5 + 16);
  v24(v9, v2, a1);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v27 = v12;
  v13 = *(a1 + 24);
  v23 = *(a1 + 16);
  *(v12 + 16) = v23;
  *(v12 + 24) = v13;
  v14 = *(v5 + 32);
  v14(v12 + v11, v9, a1);
  v15 = v26;
  v24(v26, v25, a1);
  v16 = swift_allocObject();
  *(v16 + 16) = v23;
  *(v16 + 24) = v13;
  v14(v16 + v11, v15, a1);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v17 = v28;
  v18 = *(v28 + 24);
  *(a2 + v18) = swift_getKeyPath();
  sub_1BA014368(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  v20 = (a2 + *(v17 + 32));
  v21 = v27;
  *v20 = sub_1BA0140D8;
  v20[1] = v21;
  v22 = (a2 + *(v17 + 36));
  *v22 = sub_1BA0140F0;
  v22[1] = v16;
  return result;
}

uint64_t sub_1BA013F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HostedPromptTileView();
  WitnessTable = swift_getWitnessTable();
  result = PluginView.actionHandler.getter(v5, WitnessTable);
  if (result)
  {
    (*(a3 + 24))(a2, a3);
  }

  return result;
}

uint64_t sub_1BA01402C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HostedPromptTileView();
  WitnessTable = swift_getWitnessTable();
  result = PluginView.actionHandler.getter(v5, WitnessTable);
  if (result)
  {
    (*(*(a3 + 8) + 24))(a2);
  }

  return result;
}

uint64_t sub_1BA014108(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for HostedPromptTileView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

void (*sub_1BA0141B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = HostedPromptTileView.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

uint64_t sub_1BA014254(uint64_t a1)
{
  v2 = sub_1BA4A53C8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BA4A5578();
}

void sub_1BA014368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA0143E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA014424(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA0144B8()
{
  type metadata accessor for PromptTileViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1B9F80148();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA014564()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA0145A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA0145C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

unint64_t sub_1BA014604()
{
  result = qword_1EDC69318;
  if (!qword_1EDC69318)
  {
    type metadata accessor for PromptTileView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69318);
  }

  return result;
}

void sub_1BA0146DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8))(a4, a5);
  v8 = v7;
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 backgroundColor];

    if (!v11)
    {
      v11 = a3;
    }

    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v11, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA0147D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 48))(v8, a3, a4);
  v5 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = [a1 traitCollection];
  (*(v5 + 16))();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1BA0148C8(uint64_t *a1, int a2)
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

uint64_t sub_1BA014910(uint64_t result, int a2, int a3)
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

uint64_t UIImage.Symbol.imageName.getter()
{
  v1 = *v0;
  v2 = 0x73656C6B72617073;
  v3 = 0x696C666F72617473;
  v4 = 1918989427;
  if (v1)
  {
    v4 = 0x6C69662E72617473;
  }

  if (v1 != 4)
  {
    v3 = v4;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0x2E6E6F7276656863;
  }

  else
  {
    return v2;
  }
}

id static UIImage.systemImage(named:size:textStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() configurationWithTextStyle:a3 scale:a2];
  v4 = sub_1BA4A6758();

  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  return v5;
}

id static UIImage.systemImage(named:size:textStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_opt_self() configurationWithTextStyle:a4 scale:a3];
  v5 = sub_1BA4A6758();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

id static UIImage.systemImage(named:size:textStyle:weight:traits:rounded:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v9 = sub_1B9F6B774(a4, a5, a6 & 1, a7, a8, 0, 1);
  v10 = [objc_opt_self() configurationWithFont:v9 scale:a3];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  return v12;
}

id sub_1BA014D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 configurationWithFont:a1 scale:-1];
  v10 = [v8 configurationWithWeight_];
  v11 = [v9 configurationByApplyingConfiguration_];

  v12 = [v8 configurationWithHierarchicalColor_];
  v13 = [v11 configurationByApplyingConfiguration_];

  v14 = [v8 configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v15 = sub_1BA4A6758();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  if (v16 && (v17 = [v16 imageWithConfiguration_], v16, v17))
  {
  }

  else
  {
    sub_1BA4A3DD8();
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create symbol xmark", v20, 2u);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v17;
}

id _sSo7UIImageC18HealthExperienceUIE9makeXMark4fontABSgSo6UIFontC_tFZ_0(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 configurationWithFont:a1 scale:-1];
  v8 = [v6 configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v9 = sub_1BA4A6758();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (v10 && (v11 = [v10 imageWithConfiguration_], v10, v11))
  {
  }

  else
  {
    sub_1BA4A3DD8();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Unable to create symbol xmark", v14, 2u);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v11;
}

uint64_t _s6SymbolOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t _s6SymbolOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BA0153F8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA015470(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA0154DC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA015534(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA0155F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  v6 = sub_1BA015F08();
  sub_1BA016818(a1, a2);
}

uint64_t sub_1BA01568C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA0156FC();
  return sub_1B9F7B644(v6);
}

void sub_1BA0156FC()
{
  v1 = v0;
  swift_getObjectType();
  v40 = sub_1BA4A3EA8();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A2B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v12], &v42);
  if (v44)
  {
    sub_1B9FCD918();
    sub_1BA4A2EE8();
    if (swift_dynamicCast())
    {
      v13 = 0xD000000000000011;
      v14 = v41;
      v15 = sub_1BA015F08();
      *&v15[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel] = v14;
      swift_retain_n();

      sub_1BA016ECC();

      v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v43 = v16;

      MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E3D00);

      v18 = v42;
      v17 = v43;
      sub_1BA4A2E98();
      (*(v6 + 16))(v8, v11, v5);
      v19 = (*(v6 + 88))(v8, v5);
      if (v19 == *MEMORY[0x1E69A3228])
      {
        (*(v6 + 8))(v11, v5);
        v20 = 0xED00007373656E74;
        v13 = 0x69466F6964726143;
      }

      else if (v19 == *MEMORY[0x1E69A3220])
      {
        (*(v6 + 8))(v11, v5);
        v20 = 0xED00006574615274;
        v13 = 0x7261654868676948;
      }

      else if (v19 == *MEMORY[0x1E69A3218])
      {
        (*(v6 + 8))(v11, v5);
        v20 = 0xEC00000065746152;
        v13 = 0x7472616548776F4CLL;
      }

      else if (v19 == *MEMORY[0x1E69A3210])
      {
        (*(v6 + 8))(v11, v5);
        v20 = 0xE500000000000000;
        v13 = 0x646E657254;
      }

      else
      {
        v33 = *(v6 + 8);
        if (v19 == *MEMORY[0x1E69A3230])
        {
          v20 = 0x80000001BA4E3D20;
          v33(v11, v5);
        }

        else
        {
          LODWORD(v40) = *MEMORY[0x1E69A3238];
          v34 = v19;
          v33(v11, v5);
          if (v34 == v40)
          {
            v20 = 0xE500000000000000;
            v13 = 0x6573696F4ELL;
          }

          else
          {
            v33(v8, v5);
            v20 = 0xE700000000000000;
            v13 = 0x6E776F6E6B6E55;
          }
        }
      }

      v42 = v18;
      v43 = v17;

      MEMORY[0x1BFAF1350](v13, v20);

      v35 = v42;
      v36 = v43;
      v37 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier];
      swift_beginAccess();
      *v37 = v35;
      v37[1] = v36;

      v38 = sub_1BA4A6758();
      [v1 setAccessibilityIdentifier_];

      v39 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView];
      sub_1BA016818(v35, v36);

      return;
    }
  }

  else
  {
    sub_1B9F7B644(&v42);
  }

  sub_1BA4A3DD8();
  v21 = v0;
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136446466;
    v26 = sub_1BA4A85D8();
    v28 = sub_1B9F0B82C(v26, v27, &v41);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_1B9F68124(&v0[v12], &v42);
    sub_1B9F7B6F8();
    v29 = sub_1BA4A7A98();
    v31 = v30;
    sub_1B9F7B644(&v42);
    v32 = sub_1B9F0B82C(v29, v31, &v41);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s] item isn't AdvertisableFeatureModel %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    MEMORY[0x1BFAF43A0](v24, -1, -1);
  }

  (*(v2 + 8))(v4, v40);
}

uint64_t sub_1BA015DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA015E04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA0156FC();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA015E70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA015ED4;
}

void sub_1BA015ED4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA0156FC();
  }
}

char *sub_1BA015F08()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for AdvertisableFeatureContentView());
    v6 = sub_1BA016C38(0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id AdvertisableFeatureTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void AdvertisableFeatureTableViewCell.init(reuseIdentifier:)()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id AdvertisableFeatureTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void AdvertisableFeatureTableViewCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA016290()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_1BA015F08();
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5880;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView;
  v7 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView] leadingAnchor];
  v8 = [v1 layoutMarginsGuide];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] trailingAnchor];
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:10.0];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:-10.0];
  *(v5 + 56) = v22;
  v23 = [v1 contentView];
  v24 = [v23 heightAnchor];

  v25 = [v24 constraintGreaterThanOrEqualToConstant_];
  *(v5 + 64) = v25;
  sub_1B9F740B0();
  v26 = sub_1BA4A6AE8();

  [v4 activateConstraints_];
}

uint64_t sub_1BA016658()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA0166B4(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA01677C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v5 setAccessibilityIdentifier_];

  v7 = sub_1BA015F08();
  sub_1BA016818(a1, a2);
}

void sub_1BA016818(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1BA016A68();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v3 = sub_1BA4A6758();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA016A88();

    MEMORY[0x1BFAF1350](0x706972637365442ELL, 0xEC0000006E6F6974);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];

    v6 = sub_1BA016B08();

    MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
    v7 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];

    v8 = sub_1BA016BB0();

    MEMORY[0x1BFAF1350](0x6863746977532ELL, 0xE700000000000000);
    v12 = sub_1BA4A6758();

    [v8 setAccessibilityIdentifier_];
  }

  else
  {
    v9 = sub_1BA016A68();
    [v9 setAccessibilityIdentifier_];

    v10 = sub_1BA016A88();
    [v10 setAccessibilityIdentifier_];

    v11 = sub_1BA016B08();
    [v11 setAccessibilityIdentifier_];

    v12 = sub_1BA016BB0();
    [v12 setAccessibilityIdentifier_];
  }
}

id sub_1BA016AA8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1BA016B08()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA016BB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA016C38(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint] = 0;
  *&v1[v2] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AdvertisableFeatureContentView();

  v3 = objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA016D5C();
  if (*&v3[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel])
  {

    sub_1BA016ECC();
  }

  return v3;
}

id sub_1BA016D5C()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = sub_1BA016B08();
  [v0 addSubview_];

  v2 = sub_1BA016A68();
  [v0 addSubview_];

  v3 = sub_1BA016A88();
  [v0 addSubview_];

  v4 = sub_1BA016BB0();
  [v0 addSubview_];

  v5 = objc_opt_self();
  v6 = [v0 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  sub_1BA0171C4();
  sub_1B9F740B0();
  v8 = sub_1BA4A6AE8();

  [v5 activateConstraints_];

  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch];

  return [v9 addTarget:v0 action:sel_switchValueChangedWithSender_ forControlEvents:4096];
}

id sub_1BA016ECC()
{
  v1 = v0;
  v2 = sub_1BA4A3408();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1BA016A68();
  sub_1BA4A2EC8();
  sub_1BA4A33F8();
  v10 = *(v3 + 8);
  v10(v8, v2);
  v11 = sub_1BA4A6758();

  [v9 setText_];

  v12 = sub_1BA016A88();
  sub_1BA4A2EC8();
  sub_1BA4A33D8();
  v10(v8, v2);
  v13 = sub_1BA4A6758();

  [v12 setText_];

  v14 = sub_1BA016B08();
  sub_1BA4A2EC8();
  v15 = sub_1BA4A33E8();
  v10(v8, v2);
  [v14 setImage_];

  v16 = sub_1BA016BB0();
  [v16 setOn_];

  sub_1BA4A2EC8();
  v17 = sub_1BA4A33E8();
  v10(v5, v2);
  if (v17 && ([v17 size], v19 = v18, v21 = v20, v17, v19 > 0.0) && v21 > 0.0)
  {
    result = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint);
    if (result)
    {
      return [result setConstant_];
    }
  }

  else
  {
    result = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint);
    if (result)
    {
      return [result setConstant_];
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA0171C4()
{
  v1 = v0;
  type metadata accessor for UILayoutPriority(0);
  sub_1B9F7A62C();
  sub_1BA4A3EB8();
  sub_1BA4A3EB8();
  v2 = sub_1BA016A68();
  LODWORD(v3) = v83;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];

  v4 = sub_1BA016A88();
  LODWORD(v5) = v83;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];

  v6 = sub_1BA016B08();
  v7 = [v6 heightAnchor];

  v8 = [v7 constraintEqualToConstant_];
  LODWORD(v9) = v83;
  [v8 setPriority_];
  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint] = v8;
  v11 = v8;

  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B79D0;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView;
  v14 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView] leadingAnchor];
  v15 = [v1 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(inited + 32) = v16;
  v17 = [*&v1[v13] widthAnchor];
  v18 = [v17 constraintEqualToConstant_];

  *(inited + 40) = v18;
  *(inited + 48) = v11;
  v19 = *&v1[v13];
  v82 = v11;
  v20 = [v19 heightAnchor];
  v21 = [v20 constraintLessThanOrEqualToConstant_];

  *(inited + 56) = v21;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel;
  v23 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel] trailingAnchor];
  v24 = sub_1BA016BB0();
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-10.0];
  *(inited + 64) = v26;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel;
  v28 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel] leadingAnchor];
  v29 = [*&v1[v22] leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(inited + 72) = v30;
  v31 = [*&v1[v27] topAnchor];
  v32 = [*&v1[v22] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:3.0];

  *(inited + 80) = v33;
  v34 = [*&v1[v27] bottomAnchor];
  v35 = [v1 bottomAnchor];
  v36 = [v34 constraintLessThanOrEqualToAnchor_];

  *(inited + 88) = v36;
  v37 = [*&v1[v27] trailingAnchor];
  v38 = [*&v1[v22] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(inited + 96) = v39;
  v40 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch;
  v41 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch] trailingAnchor];
  v42 = [v1 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(inited + 104) = v43;
  v81 = v40;
  v44 = [*&v1[v40] bottomAnchor];
  v45 = [v1 bottomAnchor];
  v46 = [v44 constraintLessThanOrEqualToAnchor_];

  *(inited + 112) = v46;
  if (sub_1BA4A74F8())
  {
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BA4B5880;
    v48 = [*&v1[v13] topAnchor];
    v49 = [v1 topAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    *(v47 + 32) = v50;
    v51 = [*&v1[v13] trailingAnchor];
    v52 = [v1 trailingAnchor];
    v53 = [v51 constraintLessThanOrEqualToAnchor_];

    *(v47 + 40) = v53;
    v54 = [*&v1[v22] topAnchor];
    v55 = [*&v1[v13] bottomAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:14.0];

    *(v47 + 48) = v56;
    v57 = [*&v1[v22] leadingAnchor];
    v58 = [v1 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor_];

    *(v47 + 56) = v59;
    v60 = (v47 + 64);
    v61 = [*&v1[v81] centerYAnchor];
    v62 = [*&v1[v22] centerYAnchor];
  }

  else
  {
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BA4B79E0;
    v63 = [*&v1[v13] topAnchor];
    v64 = [v1 topAnchor];
    v65 = [v63 constraintGreaterThanOrEqualToAnchor_];

    *(v47 + 32) = v65;
    v66 = [*&v1[v13] centerYAnchor];
    v67 = [v1 centerYAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    *(v47 + 40) = v68;
    v69 = [*&v1[v13] bottomAnchor];
    v70 = [v1 bottomAnchor];
    v71 = [v69 constraintLessThanOrEqualToAnchor_];

    *(v47 + 48) = v71;
    v72 = [*&v1[v22] leadingAnchor];
    v73 = [*&v1[v13] trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:14.0];

    *(v47 + 56) = v74;
    v75 = [*&v1[v22] topAnchor];
    v76 = [v1 topAnchor];
    v77 = [v75 constraintEqualToAnchor_];

    *(v47 + 64) = v77;
    v60 = (v47 + 72);
    v61 = [*&v1[v81] centerYAnchor];
    v62 = [v1 centerYAnchor];
  }

  v78 = v62;
  v79 = [v61 constraintEqualToAnchor_];

  *v60 = v79;
  sub_1B9F73B50(inited);

  return v47;
}

id sub_1BA017C7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA017D64()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  LODWORD(v1) = 1036831949;
  [v0 _setHyphenationFactor_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v4 = result;
    v5 = [result hk:0x8000 fontByAddingSymbolicTraits:?];

    [v0 setFont_];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA017EAC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  LODWORD(v1) = 1036831949;
  [v0 _setHyphenationFactor_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  v3 = [objc_opt_self() hk:*MEMORY[0x1E69DDD80] preferredFontForTextStyle:?];
  [v0 setFont_];

  return v0;
}

id sub_1BA017FC0(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView] = 0;
  if (a2)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for AdvertisableFeatureTableViewCell();
  v6 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, 0, v5);

  v7 = v6;
  sub_1BA016290();

  return v7;
}

void sub_1BA01825C()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA018354()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [v0 dateOfBirthComponentsWithError_];
  v2 = v6[0];
  if (v1)
  {
    v3 = v1;
    sub_1BA4A1108();
    v4 = v2;
  }

  else
  {
    v5 = v6[0];
    sub_1BA4A1488();

    swift_willThrow();
  }
}

id sub_1BA01849C(SEL *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 *a1];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1BA4A1488();

    swift_willThrow();
  }

  return v2;
}

id sub_1BA0185A0(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  sub_1BA018958(a1, v13 - v5);
  v7 = sub_1BA4A1148();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_1BA4A10F8();
    (*(v8 + 8))(v6, v7);
  }

  v13[0] = 0;
  v10 = [v2 _setDateOfBirthComponents_error_];

  if (v10)
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_1BA4A1488();

  return swift_willThrow();
}

id sub_1BA0187B8(uint64_t a1, SEL *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([v2 *a2])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1BA4A1488();

  return swift_willThrow();
}

uint64_t ConfirmDetailsProvider.Details.biologicalSex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ConfirmDetailsProvider.Details.dateOfBirthComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConfirmDetailsProvider.Details() + 20);

  return sub_1BA018958(v3, a1);
}

uint64_t type metadata accessor for ConfirmDetailsProvider.Details()
{
  result = qword_1EBBEA498;
  if (!qword_1EBBEA498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA018958(uint64_t a1, uint64_t a2)
{
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmDetailsProvider.Details.dateOfBirthComponents.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ConfirmDetailsProvider.Details() + 20);

  return sub_1BA018A30(a1, v3);
}

uint64_t sub_1BA018A30(uint64_t a1, uint64_t a2)
{
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *ConfirmDetailsProvider.Details.weight.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details() + 24));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.weight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details() + 24);

  *(v1 + v3) = a1;
}

void *ConfirmDetailsProvider.Details.height.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details() + 28));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.height.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details() + 28);

  *(v1 + v3) = a1;
}

uint64_t ConfirmDetailsProvider.Details.usesCalciumChannelBlockers.setter(char a1)
{
  result = type metadata accessor for ConfirmDetailsProvider.Details();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ConfirmDetailsProvider.Details.usesBetaBlockers.setter(char a1)
{
  result = type metadata accessor for ConfirmDetailsProvider.Details();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ConfirmDetailsProvider.Details.init(biologicalSex:dateOfBirthComponents:weight:height:usesCalciumChannelBlockers:usesBetaBlockers:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = type metadata accessor for ConfirmDetailsProvider.Details();
  v15 = v14[5];
  v16 = sub_1BA4A1148();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  v17 = v14[6];
  v18 = v14[7];
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  result = sub_1BA018A30(a3, a8 + v15);
  *(a8 + v17) = a4;
  *(a8 + v18) = a5;
  *(a8 + v14[8]) = a6;
  *(a8 + v14[9]) = a7;
  return result;
}

uint64_t sub_1BA018EE4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2 & 1;
  return result;
}

BOOL sub_1BA018F88()
{
  v1 = v0;
  v62 = *v0;
  v2 = sub_1BA4A3EA8();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v55 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v55 - v8;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E6720];
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - v15;
  v17 = sub_1BA4A1148();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, v13);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v55 - v22;
  v24 = type metadata accessor for ConfirmDetailsProvider.Details();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[11])
  {
    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v65 = v30;
      *v29 = 136446466;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, &v65);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4E3D40, &v65);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%{public}s.%{public}s]: Asked for aboveAgeThreshold when no threshold is set", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v63 + 8))(v4, v64);
    return 1;
  }

  else
  {
    v56 = v1[10];

    sub_1BA4A4DB8();

    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_1BA01C768(v23, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
      v35 = v60;
      sub_1BA4A3DD8();
      v36 = sub_1BA4A3E88();
      v37 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v65 = v39;
        *v38 = 136446466;
        v40 = sub_1BA4A85D8();
        v42 = sub_1B9F0B82C(v40, v41, &v65);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2082;
        *(v38 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4E3D40, &v65);
        _os_log_impl(&dword_1B9F07000, v36, v37, "[%{public}s.%{public}s]: Asked for current details before we were able to query them", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v39, -1, -1);
        MEMORY[0x1BFAF43A0](v38, -1, -1);
      }

      (*(v63 + 8))(v35, v64);
      return 0;
    }

    else
    {
      v43 = v61;
      sub_1BA01C704(v23, v61);
      sub_1BA018958(v43 + *(v24 + 20), v16);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_1BA01C768(v16, &qword_1EBBEA478, MEMORY[0x1E6968278]);
        v44 = v59;
        sub_1BA4A3DD8();
        v45 = sub_1BA4A3E88();
        v46 = sub_1BA4A6FB8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v65 = v48;
          *v47 = 136446466;
          v49 = sub_1BA4A85D8();
          v51 = sub_1B9F0B82C(v49, v50, &v65);

          *(v47 + 4) = v51;
          *(v47 + 12) = 2082;
          *(v47 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4E3D40, &v65);
          _os_log_impl(&dword_1B9F07000, v45, v46, "[%{public}s.%{public}s]: Asked for date of birth but it was not set on details", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v48, -1, -1);
          MEMORY[0x1BFAF43A0](v47, -1, -1);
        }

        (*(v63 + 8))(v44, v64);
        sub_1BA01D4B4(v61, type metadata accessor for ConfirmDetailsProvider.Details);
        return 0;
      }

      else
      {
        (*(v18 + 32))(v20, v16, v17);
        v52 = sub_1BA4A10F8();
        (v1[7])();
        v53 = sub_1BA4A16B8();
        (*(v58 + 8))(v12, v57);
        v54 = [v52 hk:v53 ageWithCurrentDate:?];

        (*(v18 + 8))(v20, v17);
        sub_1BA01D4B4(v43, type metadata accessor for ConfirmDetailsProvider.Details);
        return v54 >= v56;
      }
    }
  }
}

uint64_t sub_1BA019854()
{
  sub_1BA01C7D8();
  sub_1BA01D5D4(&qword_1EBBEA490, sub_1BA01C7D8);
  return sub_1BA4A4F98();
}

uint64_t ConfirmDetailsProvider.__allocating_init(source:ageThreshold:dateGenerator:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_1BA01CC88(v13, a2, a3 & 1, a4, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t ConfirmDetailsProvider.init(source:ageThreshold:dateGenerator:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1BA01C870(v16, a2, a3 & 1, a4, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

uint64_t sub_1BA019A84()
{
  v1 = *v0;
  v2 = sub_1BA4A6478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A64C8();
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = v0[9];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v1;
  aBlock[4] = sub_1BA01D318;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_20;
  v10 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1BA01D5D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  v11 = MEMORY[0x1E69E7F60];
  sub_1BA01C6A0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BA01D61C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v11);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v8, v5, v10);
  _Block_release(v10);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_1BA019D88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, double))
{
  v4 = sub_1BA4A3EA8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  a3(&v7, v5);
  return v7;
}

uint64_t sub_1BA01A050(uint64_t a1, uint64_t a2, uint64_t (*a3)(double))
{
  v4 = sub_1BA4A3EA8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  return a3(v5);
}

uint64_t sub_1BA01A340(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, double))
{
  v4 = sub_1BA4A3EA8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  a3(&v7, v5);
  return v7;
}

uint64_t sub_1BA01A600(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v28 - v4;
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = sub_1BA019D88(0x6369676F6C6F6962, 0xEE00786573206C61, sub_1BA01D320);
  v30 = v13;
  sub_1BA01A050(0x20666F2065746164, 0xED00006874726962, sub_1BA01D33C);
  v29 = sub_1BA01A340(0x746867696568, 0xE600000000000000, sub_1BA01D358);
  v14 = sub_1BA01A340(0x746867696577, 0xE600000000000000, sub_1BA01D374);
  v15 = sub_1BA01A340(0xD00000000000001ALL, 0x80000001BA4E3DC0, sub_1BA01D390);
  v16 = *(a1 + 96);
  v31 = v8;
  v32 = v11;
  sub_1BA018958(v11, v8);
  v28[1] = v16;

  if (v15)
  {
    HIDWORD(v28[0]) = [v15 takingCalciumChannelBlockers];
    LODWORD(v28[0]) = [v15 takingBetaBlockers];
  }

  else
  {
    v28[0] = 0;
  }

  v17 = type metadata accessor for ConfirmDetailsProvider.Details();
  v18 = v17[5];
  v19 = sub_1BA4A1148();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = v17[6];
  v21 = v17[7];
  *v5 = v12;
  v5[8] = v30 & 1;
  v22 = v14;
  v23 = v14;
  v24 = v29;
  v25 = v29;
  sub_1BA018A30(v31, &v5[v18]);
  *&v5[v20] = v23;
  *&v5[v21] = v24;
  v26 = v28[0];
  v5[v17[8]] = BYTE4(v28[0]);
  v5[v17[9]] = v26;
  (*(*(v17 - 1) + 56))(v5, 0, 1, v17);
  sub_1BA4A4DA8();

  sub_1BA01C768(v32, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  return sub_1BA01C768(v5, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
}

void sub_1BA01AA10(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    v7 = v6;
    v8 = [v6 biologicalSex];

    *a2 = v8;
    *(a2 + 8) = 0;
  }
}

uint64_t sub_1BA01AAA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 16))(v4, v5);
  if (!v2)
  {
    v7 = sub_1BA4A1148();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_1BA01AB5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 24))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA01ABCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 32))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA01AC3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 40))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA01ACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v25 = a2;
  v26 = v6;
  v28 = sub_1BA4A6478();
  v31 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConfirmDetailsProvider.Details();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v27 = v3[9];
  sub_1BA01CDA4(a1, v15);
  v18 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[2] = v25;
  v20[3] = a3;
  v20[4] = v17;
  v20[5] = v16;
  v20[6] = v3;
  sub_1BA01C704(v15, v20 + v18);
  *(v20 + v19) = v26;
  aBlock[4] = sub_1BA01CE08;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1BA01D5D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1BA01C6A0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BA01D61C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v22);
  v23 = v28;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v11, v8, v21);
  _Block_release(v21);
  (*(v31 + 8))(v8, v23);
  (*(v29 + 8))(v11, v30);
}

uint64_t sub_1BA01B0D8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a5;
  v35 = a4;
  v36 = a3;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  sub_1BA4A3DD8();

  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FC8();

  v19 = os_log_type_enabled(v17, v18);
  v37 = v11;
  v32[2] = a7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v34 = v10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32[1] = v13;
    v23 = v22;
    v38[0] = v22;
    *v21 = 136446722;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, v38);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1B9F0B82C(0xD00000000000001FLL, 0x80000001BA4E3E70, v38);
    *(v21 + 22) = 2082;
    *(v21 + 24) = sub_1B9F0B82C(a1, a2, v38);
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s.%{public}s]: Saving changes to characteristic %{public}s", v21, 0x20u);
    swift_arrayDestroy();
    v27 = v23;
    v11 = v37;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    v28 = v21;
    v10 = v34;
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  v29 = (*(v11 + 8))(v16, v10);
  v36(v29);
  v30 = v33;
  result = swift_beginAccess();
  *(v30 + 16) = 1;
  return result;
}

void sub_1BA01B578(void (*a1)(void *, BOOL), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v85 = a7;
  v86 = a4;
  v90 = a3;
  v87 = a2;
  v88 = a1;
  v89 = sub_1BA4A3EA8();
  v83 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1148();
  v81 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v79 - v14;
  sub_1BA01D3AC();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, v12);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v79 - v20;
  v22 = type metadata accessor for ConfirmDetailsProvider.Details();
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a5;

  sub_1BA4A4DB8();

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1BA01C768(v21, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    v26 = v82;
    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v91[0] = v30;
      *v29 = 136446466;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, v91);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E3E20, v91);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%{public}s.%{public}s]: Attempted to save new deatils before we received our first set of details.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v83 + 8))(v26, v89);
    v34 = v90;
    swift_beginAccess();
    v35 = *(v34 + 16);
    v36 = v35;
    v37 = v86;
    if (!v35)
    {
      swift_beginAccess();
      v36 = *(v37 + 16);
    }

    goto LABEL_43;
  }

  v38 = sub_1BA01C704(v21, v25);
  v39 = v25[8];
  v40 = *a6;
  v41 = *(a6 + 8);
  v89 = a6;
  if ((v39 & 1) == 0 && *v25 == v40)
  {
    v41 = 1;
  }

  v42 = v86;
  v43 = v81;
  if ((v41 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v38);
    v44 = v85;
    *(&v79 - 2) = v84;
    *(&v79 - 1) = v45;
    sub_1BA01B0D8(0x6369676F6C6F6942, 0xEE00786553206C61, sub_1BA01D44C, (&v79 - 4), v42, v90, v44);
  }

  v46 = v22[5];
  v47 = *(v16 + 48);
  sub_1BA018958(&v25[v46], v18);
  sub_1BA018958(v89 + v46, &v18[v47]);
  v48 = *(v43 + 48);
  if (v48(v18, 1, v10) == 1)
  {
    if (v48(&v18[v47], 1, v10) == 1)
    {
      v49 = sub_1BA01C768(v18, &qword_1EBBEA478, MEMORY[0x1E6968278]);
      v51 = v84;
      v50 = v85;
      v52 = v89;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v53 = v80;
  sub_1BA018958(v18, v80);
  if (v48(&v18[v47], 1, v10) == 1)
  {
    (*(v43 + 8))(v53, v10);
LABEL_16:
    v49 = sub_1BA01D4B4(v18, sub_1BA01D3AC);
    v51 = v84;
    v50 = v85;
    v52 = v89;
LABEL_17:
    MEMORY[0x1EEE9AC00](v49);
    *(&v79 - 2) = v51;
    *(&v79 - 1) = v52;
    v49 = sub_1BA01B0D8(0x20666F2065746144, 0xED00006874726942, sub_1BA01D514, (&v79 - 4), v42, v90, v50);
    goto LABEL_18;
  }

  v76 = v79;
  (*(v43 + 32))(v79, &v18[v47], v10);
  sub_1BA01D5D4(&qword_1EBBEA4C8, MEMORY[0x1E6968278]);
  v77 = sub_1BA4A6728();
  v78 = *(v43 + 8);
  v78(v76, v10);
  v78(v53, v10);
  v49 = sub_1BA01C768(v18, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  v51 = v84;
  v50 = v85;
  v52 = v89;
  if ((v77 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v54 = v22[6];
  v55 = *&v25[v54];
  v56 = *&v52[v54];
  v57 = v52;
  if (!v55)
  {
    if (!v56)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!v56 || (sub_1B9F0ADF8(0, &qword_1EBBEA4B8), v58 = v56, v59 = v55, v60 = sub_1BA4A7798(), v59, v58, v57 = v89, (v60 & 1) == 0))
  {
LABEL_23:
    MEMORY[0x1EEE9AC00](v49);
    *(&v79 - 2) = v51;
    *(&v79 - 1) = v61;
    v49 = sub_1BA01B0D8(0x746867696557, 0xE600000000000000, sub_1BA01D530, (&v79 - 4), v42, v90, v50);
    v57 = v89;
  }

LABEL_24:
  v62 = v22[7];
  v63 = *&v25[v62];
  v64 = *(v57 + v62);
  if (!v63)
  {
    if (!v64)
    {
      goto LABEL_30;
    }

LABEL_29:
    MEMORY[0x1EEE9AC00](v49);
    *(&v79 - 2) = v51;
    *(&v79 - 1) = v68;
    v49 = sub_1BA01B0D8(0x746867696548, 0xE600000000000000, sub_1BA01D54C, (&v79 - 4), v42, v90, v50);
    v57 = v89;
    goto LABEL_30;
  }

  if (!v64)
  {
    goto LABEL_29;
  }

  sub_1B9F0ADF8(0, &qword_1EBBEA4B8);
  v65 = v64;
  v66 = v63;
  v67 = sub_1BA4A7798();

  v57 = v89;
  if ((v67 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v69 = v22[9];
  v70 = v25[v69];
  v71 = *(v57 + v69);
  if (v70 == v71 && v25[v22[8]] == *(v57 + v22[8]))
  {
    goto LABEL_39;
  }

  v91[0] = 0;
  if (v71)
  {
    v91[0] = 2;
    if (*(v57 + v22[8]))
    {
      v72 = 3;
LABEL_37:
      v91[0] = v72;
    }
  }

  else if (*(v57 + v22[8]) == 1)
  {
    v72 = 1;
    goto LABEL_37;
  }

  MEMORY[0x1EEE9AC00](v49);
  *(&v79 - 2) = v51;
  *(&v79 - 1) = v91;
  sub_1BA01B0D8(0xD00000000000001ALL, v73 | 0x8000000000000000, sub_1BA01D568, (&v79 - 4), v42, v90, v50);
LABEL_39:
  swift_beginAccess();
  if (*(v42 + 16) == 1)
  {
    sub_1BA019A84();
  }

  sub_1BA01D4B4(v25, type metadata accessor for ConfirmDetailsProvider.Details);
  v74 = v90;
  swift_beginAccess();
  v35 = *(v74 + 16);
  v36 = v35;
  if (!v35)
  {
    swift_beginAccess();
    v36 = *(v42 + 16);
  }

LABEL_43:
  v75 = v35;
  v88(v36, v35 != 0);
  sub_1BA01D440(v36, v35 != 0);
}

uint64_t sub_1BA01C048(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = type metadata accessor for ConfirmDetailsProvider.Details();
  return (*(v4 + 56))(a2 + *(v5 + 20), v3, v4);
}

uint64_t sub_1BA01C0C4(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = type metadata accessor for ConfirmDetailsProvider.Details();
  return (*(v4 + 64))(*(a2 + *(v5 + 24)), v3, v4);
}

uint64_t sub_1BA01C140(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = type metadata accessor for ConfirmDetailsProvider.Details();
  return (*(v4 + 72))(*(a2 + *(v5 + 28)), v3, v4);
}

uint64_t ConfirmDetailsProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ConfirmDetailsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _s18HealthExperienceUI22ConfirmDetailsProviderC0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1148();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  sub_1BA01D3AC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v15 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_13;
    }
  }

  v36 = type metadata accessor for ConfirmDetailsProvider.Details();
  v16 = *(v36 + 20);
  v17 = *(v12 + 48);
  sub_1BA018958(a1 + v16, v14);
  sub_1BA018958(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1BA018958(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v17], v4);
      sub_1BA01D5D4(&qword_1EBBEA4C8, MEMORY[0x1E6968278]);
      v20 = sub_1BA4A6728();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_1BA01C768(v14, &qword_1EBBEA478, MEMORY[0x1E6968278]);
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_1BA01D4B4(v14, sub_1BA01D3AC);
    goto LABEL_13;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1BA01C768(v14, &qword_1EBBEA478, MEMORY[0x1E6968278]);
LABEL_16:
  v22 = v36;
  v23 = *(v36 + 24);
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_13;
    }

    sub_1B9F0ADF8(0, &qword_1EBBEA4B8);
    v26 = v25;
    v27 = v24;
    v28 = sub_1BA4A7798();

    if ((v28 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v25)
  {
    goto LABEL_13;
  }

  v29 = v22[7];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_13;
    }

    sub_1B9F0ADF8(0, &qword_1EBBEA4B8);
    v32 = v31;
    v33 = v30;
    v34 = sub_1BA4A7798();

    if ((v34 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v31)
  {
    goto LABEL_13;
  }

  if (*(a1 + v22[8]) == *(a2 + v22[8]))
  {
    v15 = *(a1 + v22[9]) ^ *(a2 + v22[9]) ^ 1;
    return v15 & 1;
  }

LABEL_13:
  v15 = 0;
  return v15 & 1;
}

void sub_1BA01C6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA01C704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA01C768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA01C6A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA01C7D8()
{
  if (!qword_1EBBEA488)
  {
    sub_1BA01C6A0(255, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A4DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA488);
    }
  }
}

uint64_t sub_1BA01C870(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v27 = v25 - v13;
  v26 = sub_1BA4A72F8();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v33[3] = a7;
  v33[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v20 = sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v25[0] = "setOrLog(characteristic:block:)";
  v25[1] = v20;
  sub_1BA4A64A8();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1BA01D5D4(&unk_1EDC5E480, MEMORY[0x1E69E8030]);
  v21 = MEMORY[0x1E69E8030];
  sub_1BA01C6A0(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BA01D61C(&qword_1EDC5E660, &qword_1EDC5E670, v21);
  sub_1BA4A7C38();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8090], v26);
  *(a6 + 72) = sub_1BA4A7328();
  *(a6 + 80) = 0;
  *(a6 + 88) = 1;
  v22 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  sub_1BA01C7D8();
  swift_allocObject();
  *(a6 + 96) = sub_1BA4A4DF8();
  sub_1B9F0A534(v33, a6 + 16);
  swift_beginAccess();
  *(a6 + 80) = v28;
  *(a6 + 88) = v29 & 1;
  v23 = v31;
  *(a6 + 56) = v30;
  *(a6 + 64) = v23;

  sub_1BA019A84();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return a6;
}

uint64_t sub_1BA01CC88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmDetailsProvider();
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a7);
  return sub_1BA01C870(v17, a2, a3 & 1, a4, a5, v18, a7, a8);
}

uint64_t sub_1BA01CDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA01CE08()
{
  v1 = *(type metadata accessor for ConfirmDetailsProvider.Details() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA01B578(v3, v4, v5, v6, v7, v0 + v2, v8);
}

void sub_1BA01D1A8()
{
  sub_1BA01C6A0(319, &qword_1EBBEA4A8, type metadata accessor for HKBiologicalSex, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BA01C6A0(319, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BA01D2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BA01D2B0()
{
  if (!qword_1EBBEA4B0)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEA4B8);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA4B0);
    }
  }
}

void sub_1BA01D3AC()
{
  if (!qword_1EBBEA4C0)
  {
    sub_1BA01C6A0(255, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA4C0);
    }
  }
}

void sub_1BA01D440(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1BA01D44C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 48))(v2, v3, v4);
}

uint64_t sub_1BA01D4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA01D568()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 80))(*v2, v3, v4);
}

uint64_t sub_1BA01D5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA01D61C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA01C6A0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ContentConfigurationItem.makeDisclosureItem(text:automationIdentifier:cellSelectionHandler:deselectionBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a6;
  v42 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v39 = a1;
  sub_1B9F1D158(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v36 = &v34 - v11;
  v40 = sub_1BA4A3FB8();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3F18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A4428();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a7;
  sub_1BA4A43A8();

  sub_1BA4A43B8();
  v22 = MEMORY[0x1E69DC110];
  v35 = v18;
  *(a8 + 96) = v18;
  *(a8 + 104) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 72));
  (*(v19 + 16))(boxed_opaque_existential_1, v21, v18);
  sub_1B9F1D158(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  (*(v15 + 104))(v17, *MEMORY[0x1E69DBF28], v14);
  v25 = sub_1BA4A3F48();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v38 + 8))(v13, v40);
  (*(v15 + 8))(v17, v14);
  v26 = type metadata accessor for ContentConfigurationItem();
  v27 = v26[10];
  v28 = sub_1BA4A4168();
  (*(*(v28 - 8) + 56))(a8 + v27, 1, 1, v28);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v29 = v41;

  sub_1B9F2F610(&v46);
  *(&v47 + 1) = &type metadata for BasicCellSelectionHandler;
  v48 = &off_1F381BCC8;
  *&v46 = v42;
  *(&v46 + 1) = v29;
  LOBYTE(v47) = v37;
  (*(v19 + 8))(v21, v35);
  sub_1B9F2F698(&v46, a8 + 16);
  *(a8 + v26[12]) = 0;
  *(a8 + v26[13]) = 0;
  v30 = v44;
  v31 = v45;
  *a8 = v39;
  *(a8 + 8) = v31;
  *(a8 + 112) = 0;
  *(a8 + 120) = v24;
  *(a8 + 56) = v43;
  *(a8 + 64) = v30;
  v32 = (a8 + v26[11]);
  *v32 = 0;
  v32[1] = 0;

  return sub_1B9F2F610(&v46);
}

uint64_t static ContentConfigurationItem.makeDisclosureItem(text:automationIdentifier:makeViewControllerToShow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v44 = a1;
  sub_1B9F1D158(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v35 - v11;
  v12 = sub_1BA4A3FB8();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BA4A3F18();
  v15 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A4428();
  v37 = *(v18 - 8);
  v19 = v37;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;

  sub_1BA4A43A8();

  sub_1BA4A43B8();
  v23 = MEMORY[0x1E69DC110];
  v36 = v18;
  *(a7 + 96) = v18;
  *(a7 + 104) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a7 + 72));
  (*(v19 + 16))(boxed_opaque_existential_1, v21, v18);
  sub_1B9F1D158(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  v26 = v35;
  (*(v15 + 104))(v17, *MEMORY[0x1E69DBF28], v35);
  v27 = sub_1BA4A3F48();
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v39 + 8))(v14, v40);
  (*(v15 + 8))(v17, v26);
  v28 = type metadata accessor for ContentConfigurationItem();
  v29 = v28[10];
  v30 = sub_1BA4A4168();
  (*(*(v30 - 8) + 56))(a7 + v29, 1, 1, v30);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;

  sub_1B9F2F610(&v45);
  *(&v46 + 1) = &type metadata for BasicCellSelectionHandler;
  v47 = &off_1F381BCC8;

  *&v45 = sub_1BA01E3E0;
  *(&v45 + 1) = v22;
  LOBYTE(v46) = 2;
  (*(v37 + 8))(v21, v36);
  sub_1B9F2F698(&v45, a7 + 16);
  *(a7 + v28[12]) = 0;
  *(a7 + v28[13]) = 0;
  v31 = v43;
  *a7 = v44;
  *(a7 + 8) = v31;
  *(a7 + 112) = 0;
  *(a7 + 120) = v25;
  v32 = v42;
  *(a7 + 56) = v41;
  *(a7 + 64) = v32;
  v33 = (a7 + v28[11]);
  *v33 = 0;
  v33[1] = 0;

  return sub_1B9F2F610(&v45);
}

uint64_t sub_1BA01E0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  memset(v4, 0, sizeof(v4));
  sub_1BA4A7238();

  return sub_1B9F23224(v4);
}

uint64_t static ContentConfigurationItem.makeListHeaderConfiguration(text:automationIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v28 = sub_1BA4A1798();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A4428();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A43F8();

  sub_1BA4A43B8();
  sub_1BA4A1788();
  v15 = sub_1BA4A1748();
  v17 = v16;
  (*(v8 + 8))(v10, v28);
  *&v31[0] = v15;
  *(&v31[0] + 1) = v17;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](a1, a2);
  v18 = v31[0];
  v19 = MEMORY[0x1E69DC110];
  *(a5 + 96) = v11;
  *(a5 + 104) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 72));
  (*(v12 + 16))(boxed_opaque_existential_1, v14, v11);
  v21 = type metadata accessor for ContentConfigurationItem();
  v22 = v21[10];
  sub_1BA4A4128();
  v23 = sub_1BA4A4168();
  (*(*(v23 - 8) + 56))(a5 + v22, 0, 1, v23);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  (*(v12 + 8))(v14, v11);
  sub_1B9F2F698(v31, a5 + 16);
  *(a5 + v21[12]) = 0;
  *(a5 + v21[13]) = 0;
  *a5 = v18;
  *(a5 + 112) = 0;
  *(a5 + 120) = MEMORY[0x1E69E7CC0];
  v24 = v30;
  *(a5 + 56) = v29;
  *(a5 + 64) = v24;
  v25 = (a5 + v21[11]);
  *v25 = 0;
  v25[1] = 0;

  return sub_1B9F2F610(v31);
}

void sub_1BA01E3E8()
{
  if (!qword_1EDC6E300)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E300);
    }
  }
}

uint64_t sub_1BA01E43C()
{
  result = sub_1B9FE2518(&unk_1F37FC080);
  qword_1EBBEA4D0 = &unk_1F37FC040;
  return result;
}

uint64_t static EmergencyAccessBuddyFlow.allCases.getter()
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static EmergencyAccessBuddyFlow.allCases.setter(uint64_t a1)
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEA4D0 = a1;
}

uint64_t (*static EmergencyAccessBuddyFlow.allCases.modify())()
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BA01E608@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EBBEA4D0;
}

uint64_t sub_1BA01E688(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EBBE8268;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEA4D0 = v1;
}

uint64_t EmergencyAccessBuddyStartViewController.__allocating_init(healthStore:flow:emergencyStatus:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1BA01FEB8(a1, a2, a3);
  v9 = v8;

  return v9;
}

uint64_t EmergencyAccessBuddyStartViewController.init(healthStore:flow:emergencyStatus:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BA01FEB8(a1, a2, a3);
  v5 = v4;

  return v5;
}

id sub_1BA01E8A0()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A6488();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 dismissViewControllerAnimated:1 completion:{0, v11}];
  v15 = &v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow];
  v16 = v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow + 8];
  if (v16 <= 1)
  {
    v23 = v6;
    v17 = *v15;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v22 = v5;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F88], v9);
    sub_1BA02040C(v17, v16);
    v18 = sub_1BA4A7338();
    (*(v10 + 8))(v13, v9);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_11;
    v20 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BA020428(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F22468(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v8, v4, v20);
    _Block_release(v20);

    (*(v2 + 8))(v4, v1);
    (*(v23 + 8))(v8, v22);
  }

  return result;
}

void sub_1BA01ECE4()
{
  sub_1BA01F324();
  v1 = sub_1BA4A6758();

  v2 = sub_1BA4A6758();
  type metadata accessor for EmergencyAccessBuddyStartViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v6 = sub_1BA4A6758();
  v7 = objc_opt_self();
  v8 = [v7 imageNamed:v6 inBundle:v5];

  if (!v8)
  {
    __break(1u);
    goto LABEL_25;
  }

  [v0 addBulletedListItemWithTitle:v1 description:v2 image:v8];

  v9 = &v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow];
  v10 = v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow + 8];
  if (v10 != 1 && (v10 != 2 || *v9 != 1))
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v11 = sub_1BA4A6758();

    v12 = sub_1BA4A6758();
    v13 = [v4 bundleForClass_];
    v14 = sub_1BA4A6758();
    v15 = [v7 imageNamed:v14 inBundle:v13];

    if (v15)
    {
      [v0 addBulletedListItemWithTitle:v11 description:v12 image:v15];

      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_9:
  if (!HAFeatureFlagStewieEnabled())
  {
    goto LABEL_17;
  }

  v16 = &v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_emergencyStatus];
  if (v16[*(type metadata accessor for EmergencyAccessUserStatus() + 20)] != 1 || v9[8] != 2 || *v9 > 1uLL)
  {
    goto LABEL_17;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();
  v19 = [v4 bundleForClass_];
  v20 = sub_1BA4A6758();
  v21 = [v7 imageNamed:v20 inBundle:v19];

  if (!v21)
  {
LABEL_26:
    __break(1u);
    return;
  }

  [v0 addBulletedListItemWithTitle:v17 description:v18 image:v21];

LABEL_17:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v27 = [objc_opt_self() boldButton];
  v22 = sub_1BA4A6758();

  [v27 setTitle:v22 forState:0];

  [v27 addTarget:v0 action:sel_didTapNext_ forControlEvents:64];
  v23 = [v0 buttonTray];
  [v23 addButton_];

  if (v9[8] <= 1u)
  {
    sub_1BA4A1318();
    v24 = [objc_opt_self() linkButton];
    v25 = sub_1BA4A6758();

    [v24 setTitle:v25 forState:0];

    [v24 addTarget:v0 action:sel_didTapReviewLater forControlEvents:64];
    v26 = [v0 buttonTray];
    [v26 addButton_];
  }
}

uint64_t sub_1BA01F324()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow + 8);
  if (v2 == 2 && v1 == 0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_medicalIDStatus) != 2 && v2 != 1 && (v2 != 2 || v1 != 1))
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_17:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA01F4AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v3 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v4 = sub_1BA4A6758();

  v5 = [v3 initWithClientIdentifier_];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = ObjectType;
    v8[4] = sub_1BA020404;
    v8[5] = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1BA454240;
    v8[3] = &block_descriptor_7;
    v7 = _Block_copy(v8);

    [v5 clearPendingFollowUpItemsWithCompletion_];
    _Block_release(v7);
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E500);
  static HKKeyValueDomain.saveOnboardingStatus(_:healthStore:)(3, *&v1[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_healthStore]);
  [v1 dismissViewControllerAnimated:1 completion:0];
  sub_1BA33652C();
}

uint64_t sub_1BA01F644(char a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v8 = a2;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315650;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    *(v12 + 18) = 2080;
    v24 = a2;
    v17 = a2;
    sub_1B9F22468(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
    v18 = sub_1BA4A6828();
    v20 = sub_1B9F0B82C(v18, v19, &v25);

    *(v12 + 20) = v20;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Cleared pending followup items with success %{BOOL}d and error %s", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    return (*(v5 + 8))(v7, v23);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

id EmergencyAccessBuddyStartViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id EmergencyAccessBuddyStartViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id EmergencyAccessBuddyStartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA01FD34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == 2 && v2 == 0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (a2 != 2 && v3 != 1 && (v3 != 2 || v2 != 1))
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_17:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA01FEB8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = &v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow];
  *v8 = *a2;
  v8[8] = v7;
  sub_1BA020470(a3, &v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_emergencyStatus]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_healthStore] = a1;
  started = type metadata accessor for EmergencyAccessBuddyStartViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = a1;
  sub_1BA02040C(v6, v7);
  v13 = [v11 bundleForClass_];
  v14 = sub_1BA4A6758();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v13];

  if (v15)
  {
    if (v7 >= 2)
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v22 = 0xE000000000000000;
      sub_1BA4A1318();
      v16 = v17;
    }

    else
    {
      v16 = 0;
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_];
    v19 = [v18 medicalIDSetUpStatus];

    *&v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_medicalIDStatus] = v19;
    v24 = v6;
    v25 = v7;
    sub_1BA01FD34(&v24, v19);
    sub_1BA0204D4(v6, v7);
    v20 = sub_1BA4A6758();

    if (v16)
    {
      v21 = sub_1BA4A6758();
    }

    else
    {
      v21 = 0;
    }

    v23.receiver = v3;
    v23.super_class = started;
    objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v20, v21, v15, 2, v22);

    sub_1BA0204E8(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for EmergencyAccessBuddyStartViewController()
{
  result = qword_1EBBEA500;
  if (!qword_1EBBEA500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA0201FC()
{
  if (!qword_1EBBEA4E0)
  {
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA4E0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI24EmergencyAccessBuddyFlowO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TextViewItem.AccessoryImageAlignment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextViewItem.AccessoryImageAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA0202F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1BA020324()
{
  result = type metadata accessor for EmergencyAccessUserStatus();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA02040C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1BA020428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA020470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyAccessUserStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0204D4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA0204E8(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyAccessUserStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA02054C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEA510 = result;
  *algn_1EBBEA518 = v1;
  return result;
}

uint64_t sub_1BA020614()
{
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v27[4] = xmmword_1EDC67D78;
  v27[5] = *&qword_1EDC67D88;
  v27[6] = xmmword_1EDC67D98;
  v27[7] = unk_1EDC67DA8;
  v27[0] = xmmword_1EDC67D38;
  v27[1] = *&qword_1EDC67D48;
  v27[2] = xmmword_1EDC67D58;
  v27[3] = unk_1EDC67D68;
  v17 = xmmword_1EDC67D38;
  v18 = qword_1EDC67D48;
  v0 = unk_1EDC67D50;
  v1 = xmmword_1EDC67D58;
  v2 = unk_1EDC67D68;
  v4 = xmmword_1EDC67D78;
  v3 = qword_1EDC67D88;
  v19 = unk_1EDC67D90;
  v20 = *(&xmmword_1EDC67D98 + 8);
  *&v21 = qword_1EDC67DB0;
  sub_1B9F1D9A4(v27, &v28);
  sub_1B9F1DA18(v0, v1, *(&v1 + 1), v2);
  sub_1B9F1DA18(*(&v2 + 1), v4, *(&v4 + 1), v3);
  v28 = v17;
  memset(&v29[8], 0, 64);
  *&v29[72] = v19;
  *&v29[88] = v20;
  *v29 = v18;
  *&v29[104] = v21;
  if (qword_1EBBE8270 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBBEA510;
  v5 = *algn_1EBBEA518;
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();

  v7 = sub_1BA4A6808();
  v9 = v8;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  v10 = MEMORY[0x1E69E6F90];
  sub_1B9F3217C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F3217C(0, &qword_1EDC5DCA0, sub_1B9F32244, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  *(v12 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
  *(v12 + 64) = sub_1BA02090C();
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v6;
  *(v13 + 40) = v5;
  *(v13 + 48) = 1;
  *(inited + 32) = v12;
  sub_1BA0117AC();
  v23 = *&v29[48];
  v24 = *&v29[64];
  v25 = *&v29[80];
  v26 = *&v29[96];
  v19 = v28;
  v20 = *v29;
  v21 = *&v29[16];
  v22 = *&v29[32];
  sub_1B9F1D9A4(&v28, &v17);
  v14 = sub_1B9F293A8(&v19);
  v15 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:sectionLayout:)(inited, 1, v14);
  sub_1B9F1DA58(&v28);
  return v15;
}

unint64_t sub_1BA02090C()
{
  result = qword_1EBBEA520;
  if (!qword_1EBBEA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA520);
  }

  return result;
}

void sub_1BA020960(uint64_t a1)
{
  v3 = qword_1EBBEA528;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA020A78(uint64_t a1)
{
  v3 = qword_1EDC61B88;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1BA020AD0()
{
  v0 = sub_1BA024240();

  return v0;
}

void sub_1BA020AFC(uint64_t a1)
{
  v3 = qword_1EDC84AD8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA020BB4()
{
  v1 = qword_1EDC84AD8;
  swift_beginAccess();
  v2 = [*(v0 + v1) fetchRequest];
  v3 = [v2 predicate];

  return v3;
}

void sub_1BA020C30(void *a1)
{
  sub_1BA024C28(a1);
}

void (*sub_1BA020C68(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1BA020BB4();
  return sub_1BA020CB0;
}

void sub_1BA020CB0(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1BA024C28(v4);

    v3 = v2;
  }

  else
  {
    sub_1BA024C28(*a1);
    v3 = v4;
  }
}

unint64_t sub_1BA020D24(uint64_t a1, uint64_t a2)
{
  v5 = qword_1EDC84AD8;
  swift_beginAccess();
  v6 = [*(v2 + v5) sections];
  if (v6)
  {
    sub_1BA024D28();
    v7 = sub_1BA4A6B08();

    if (v7 >> 62)
    {
LABEL_25:
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      v18 = sub_1BA4A7CC8();
    }

    else
    {
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (1)
    {
      if (v18 == v6)
      {
        v6 = 0;
        goto LABEL_21;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](v6, v7);
      }

      else
      {
        if (v6 >= *(v17 + 16))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v8 = *(v7 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 name];
      v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v12 = v11;

      if (v10 == a1 && v12 == a2)
      {
        break;
      }

      v14 = sub_1BA4A8338();
      swift_unknownObjectRelease();

      if (v14)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_24;
      }
    }

    swift_unknownObjectRelease();
LABEL_21:
  }

  return v6;
}

void sub_1BA020F00()
{
  v1 = qword_1EDC84AD8;
  swift_beginAccess();
  v2 = [*(v0 + v1) sections];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_1BA024D28();
  v4 = sub_1BA4A6B08();

  if (v4 >> 62)
  {
    v5 = sub_1BA4A7CC8();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_13:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      ++v6;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0x6E6F69746365733CLL, 0xEA0000000000203ALL);
      sub_1BA4A7FB8();
      MEMORY[0x1BFAF1350](0x203A746E756F6320, 0xE800000000000000);
      [v7 numberOfObjects];
      v8 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v8);

      MEMORY[0x1BFAF1350](62, 0xE100000000000000);
      MEMORY[0x1BFAF1350](0, 0xE000000000000000);
      swift_unknownObjectRelease();
    }

    while (v5 != v6);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1BA021158(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v18, v21);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v3 = sub_1BA4A2D58();
    v5 = v4;
    v6 = qword_1EDC61B88;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (*(v7 + 16) && (, v8 = sub_1B9F24A34(v3, v5), v10 = v9, , (v10 & 1) != 0))
    {
      v11 = (*(v7 + 56) + 16 * v8);
      v13 = *v11;
      v12 = v11[1];
    }

    else
    {

      v13 = 0;
      v12 = 0;
    }

    __swift_project_boxed_opaque_existential_1(v21, v22);
    v15 = sub_1BA4A2E58();
    if (v12)
    {
      if (v13 == v15 && v12 == v16)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_1BA4A8338();
      }
    }

    else
    {
      v14 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B9F7B644(v18);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1BA021354(uint64_t a1)
{
  sub_1B9F12538();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1B9F17734(v5);
}

uint64_t FetchedResultsControllerDataSource.identifier.getter()
{
  v0 = sub_1B9F37B3C();

  return v0;
}

id sub_1BA02148C(void *a1)
{
  v1 = a1;
  sub_1BA0214F4();

  v2 = sub_1BA4A6758();

  return v2;
}

uint64_t sub_1BA0214F4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA4E4380);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E43B0);
  v3 = type metadata accessor for FetchedResultsControllerDataSource();
  SnapshotDataSource.numberOfSections.getter(v3, &protocol witness table for FetchedResultsControllerDataSource<A>);
  v4 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v4);

  MEMORY[0x1BFAF1350](0x6669746E65644920, 0xED0000203A726569);
  MEMORY[0x1BFAF1350](*(v1 + qword_1EDC84AD0), *(v1 + qword_1EDC84AD0 + 8));
  MEMORY[0x1BFAF1350](0x6163696465727020, 0xEC000000203A6574);
  v5 = qword_1EDC84AD8;
  swift_beginAccess();
  v6 = [*(v1 + v5) fetchRequest];
  [v6 predicate];

  sub_1BA0253B4(0, &qword_1EDC6B628, &qword_1EDC6B630, 0x1E696AE18, sub_1B9F0ADF8);
  v7 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v7);

  v8 = MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v9 = (*((*v2 & *v1) + 0x140))(v8);
  MEMORY[0x1BFAF1350](v9);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

id FetchedResultsControllerDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FetchedResultsControllerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0218E0(uint64_t a1)
{
  v2 = qword_1EDC84AC8;
  sub_1B9F12538();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

void *sub_1BA021A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  a6(0, a3, a4, a5);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  result = v8;
  v12 = v9 - 32;
  v11 = v9 < 32;
  v13 = v9 - 17;
  if (!v11)
  {
    v13 = v12;
  }

  v8[2] = a1;
  v8[3] = 2 * (v13 >> 4);
  return result;
}

void *sub_1BA021AD0(uint64_t a1, uint64_t a2)
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

  sub_1B9F1C094(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1BA021B74(uint64_t a1, uint64_t a2)
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

  sub_1BA025234(0, &qword_1EBBEA600, &qword_1EBBEAAE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_1BA021C8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9F25C90(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BA021DA0(uint64_t a1, uint64_t a2)
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

  sub_1BA025234(0, &qword_1EBBEA698, &qword_1EBBEA6A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_1BA021E7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v6 = sub_1BA4A84D8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BA4A8338() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BA0E4A50();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1BA022A90(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1BA021FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BA4A3A28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B9F51E1C(&qword_1EBBEA610, MEMORY[0x1E69A3910]);
  v31 = a1;
  v10 = sub_1BA4A6698();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1B9F51E1C(&qword_1EBBEA620, MEMORY[0x1E69A3910]);
      v19 = sub_1BA4A6728();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BA0E4EA8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1BA022F1C(v13, MEMORY[0x1E69A3910], &qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1BA0222A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1BA4A8488();
  if (*(a1 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v10 = sub_1BA4A84D8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v23 = v2;
    v24 = v5;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      v15 = v14 * v12;
      sub_1BA025290(*(v9 + 48) + v14 * v12, v8);
      v16 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_1BA0252F4(v8);
      if (v16)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v17 = 1;
        v5 = v24;
        a2 = v25;
        return (*(v6 + 56))(a2, v17, 1, v5);
      }
    }

    v18 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    v26 = *v18;
    v5 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BA0E4BA0();
      v20 = v26;
    }

    v21 = *(v20 + 48) + v15;
    a2 = v25;
    sub_1BA025350(v21, v25);
    sub_1BA022C54(v12);
    v17 = 0;
    *v18 = v26;
  }

  else
  {
    v17 = 1;
  }

  return (*(v6 + 56))(a2, v17, 1, v5);
}

uint64_t sub_1BA0224C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BA4A1E88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B9F51E1C(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
  v31 = a1;
  v10 = sub_1BA4A6698();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1B9F51E1C(&unk_1EBBEA658, MEMORY[0x1E69A3C80]);
      v19 = sub_1BA4A6728();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BA0E5108();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1BA022F1C(v13, MEMORY[0x1E69A3C80], &qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}