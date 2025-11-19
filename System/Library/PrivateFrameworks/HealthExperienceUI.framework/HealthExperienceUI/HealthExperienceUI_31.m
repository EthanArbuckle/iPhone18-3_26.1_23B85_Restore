uint64_t sub_1BA24B944(uint64_t a1)
{
  v2 = v1;
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_confirmDetailsSections) = a1;

  v7 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model;

  sub_1BA119B74(a1);

  v8 = *(v2 + v7);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA24EBC0(v8 + v9, v6, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v11 = *(v8 + v10);
  v47 = v8;
  v48 = v6;

  v12 = sub_1BA24A778(sub_1BA0AF230, v46, v11);

  sub_1BA24EB64(v6, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v13 = *(v12 + 16);
  if (v13)
  {
    v38 = v2;
    v55 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v13, 0);
    v15 = 0;
    v43 = *(v12 + 16);
    v40 = v12 + 32;
    v16 = v55;
    v39 = 0x80000001BA4E8490;
    v42 = v12;
    v41 = v13;
    while (v15 != v43)
    {
      if (v15 >= *(v12 + 16))
      {
        goto LABEL_19;
      }

      v45 = v16;
      v17 = *(v40 + 8 * v15);
      v18 = *(v17 + 16);
      if (v18)
      {
        v54 = MEMORY[0x1E69E7CC0];

        sub_1BA066B80(0, v18, 0);
        v19 = v54;
        v44 = v17;
        v20 = v17 + 32;
        do
        {
          sub_1B9F0A534(v20, v49);
          sub_1B9F0D950(0, &qword_1EDC6E1B0);
          sub_1B9F0D950(0, &qword_1EDC6AD50);
          swift_dynamicCast();
          v54 = v19;
          v22 = *(v19 + 16);
          v21 = *(v19 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1BA066B80((v21 > 1), v22 + 1, 1);
          }

          v23 = v52;
          v24 = v53;
          v25 = __swift_mutable_project_boxed_opaque_existential_1(&v50, v52);
          v26 = MEMORY[0x1EEE9AC00](v25);
          v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v29 + 16))(v28, v26);
          sub_1BA1F2854(v22, v28, &v54, v23, v24);
          __swift_destroy_boxed_opaque_existential_1(&v50);
          v19 = v54;
          v20 += 40;
          --v18;
        }

        while (v18);
      }

      else
      {

        v19 = MEMORY[0x1E69E7CC0];
      }

      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v50 = 0xD000000000000018;
      v51 = v39;
      v49[0] = v15;
      v30 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v30);

      v32 = v50;
      v31 = v51;

      v34 = Array<A>.identifierToIndexDict()(v33);

      v16 = v45;
      v55 = v45;
      v36 = *(v45 + 16);
      v35 = *(v45 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_1B9F277B0((v35 > 1), v36 + 1, 1);
        v16 = v55;
      }

      ++v15;
      *(v16 + 16) = v36 + 1;
      v37 = (v16 + 48 * v36);
      v37[4] = 0;
      v37[5] = 0;
      v37[6] = v19;
      v37[7] = v34;
      v37[8] = v32;
      v37[9] = v31;
      v12 = v42;
      if (v15 == v41)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_17:
    sub_1BA0E7F10(v16, 1);
  }

  return result;
}

uint64_t sub_1BA24BE98(uint64_t a1, void *a2)
{
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BA24EBC0(a1, &v10 - v5, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v7 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();

  sub_1BA24EC2C(v6, v7 + v8, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  swift_endAccess();
}

uint64_t sub_1BA24BFA8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA24C040(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E6969C28];
  sub_1BA24F0CC(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1BA24EBC0(a1, &v11 - v6, &qword_1EDC6AE28, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(v7, v8 + v9, &qword_1EDC6AE28, v4);
  return swift_endAccess();
}

uint64_t OnboardingConfirmDetailsDataSource.__allocating_init(sections:detailsFormatter:detailsProvider:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1BA24D9CC(a1, v12, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t sub_1BA24C284(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = a1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s] Health details changed, updating model", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    v14 = v9;
    a1 = v16;
    MEMORY[0x1BFAF43A0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1BA11993C(a1);
  }

  return result;
}

uint64_t sub_1BA24C48C()
{

  sub_1BA24EB64(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate);
}

uint64_t OnboardingConfirmDetailsDataSource.__deallocating_deinit()
{
  OnboardingConfirmDetailsDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA24C580(void (*a1)(void *a1), void *a2)
{
  v3 = v2;
  v41 = *v2;
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BA4A3EA8();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  sub_1B9F0A534(a2, v44);
  (*(v7 + 16))(v9, a1, v6);
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v10;
    v16 = v15;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v16 = 136315906;
    v17 = sub_1BA4A85D8();
    v38 = v14;
    v19 = sub_1B9F0B82C(v17, v18, &v43);
    v41 = a1;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4F6BF0, &v43);
    *(v16 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v21 = sub_1BA4A2D58();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v24 = sub_1B9F0B82C(v21, v23, &v43);

    *(v16 + 24) = v24;
    *(v16 + 32) = 2080;
    sub_1BA24F120(&unk_1EBBED850, MEMORY[0x1E6969C28]);
    v25 = sub_1BA4A82D8();
    v27 = v26;
    (*(v7 + 8))(v9, v6);
    v28 = sub_1B9F0B82C(v25, v27, &v43);
    a1 = v41;

    *(v16 + 34) = v28;
    _os_log_impl(&dword_1B9F07000, v13, v38, "[%s.%s] Reloading item %s at indexPath %s", v16, 0x2Au);
    v29 = v39;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v42 + 8))(v12, v40);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v42 + 8))(v12, v10);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v30 = a2[3];
  v31 = a2[4];
  v32 = __swift_project_boxed_opaque_existential_1(a2, v30);
  sub_1BA0F8740(a1, v32, v3, v30, *(v31 + 8));
  v33 = v3 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    (*(v35 + 8))(v3, ObjectType, v35);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA24CA08(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39[0] = v9;
    *v8 = 136315394;
    v10 = sub_1BA4A85D8();
    v12 = sub_1B9F0B82C(v10, v11, v39);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4F6BD0, v39);
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s.%s] Updating all items", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = v33;
  v35 = *(a1 + 16);
  if (v35)
  {
    v14 = 0;
    v34 = a1 + 32;
    do
    {
      v16 = *(v34 + 8 * v14);
      v17 = *(v16 + 16);
      if (v17)
      {
        v37 = v14;
        v42 = MEMORY[0x1E69E7CC0];

        sub_1BA066B80(0, v17, 0);
        v18 = v42;
        v36 = v16;
        v19 = v16 + 32;
        do
        {
          sub_1B9F0A534(v19, v38);
          sub_1B9F0D950(0, &qword_1EDC6E1B0);
          sub_1B9F0D950(0, &qword_1EDC6AD50);
          swift_dynamicCast();
          v42 = v18;
          v21 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1BA066B80((v20 > 1), v21 + 1, 1);
          }

          v22 = v40;
          v23 = v41;
          v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
          v25 = MEMORY[0x1EEE9AC00](v24);
          v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v28 + 16))(v27, v25);
          sub_1BA1F2854(v21, v27, &v42, v22, v23);
          __swift_destroy_boxed_opaque_existential_1(v39);
          v18 = v42;
          v19 += 40;
          --v17;
        }

        while (v17);

        v13 = v33;
        v14 = v37;
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      v15 = v14 + 1;
      sub_1BA0EB668(v14, v18, 1);

      v14 = v15;
    }

    while (v15 != v35);
  }

  v29 = v13 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 8))(v13, ObjectType, v31);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA24CE8C(uint64_t a1)
{
  v2 = v1;
  v31 = *v1;
  v4 = sub_1BA4A1998();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  (*(v5 + 16))(v7, a1, v4);
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v8;
    v14 = v13;
    v29 = swift_slowAlloc();
    v33[0] = v29;
    *v14 = 136315650;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, v33);
    v31 = a1;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1B9F0B82C(0x692865766F6D6572, 0xEF293A74416D6574, v33);
    *(v14 + 22) = 2080;
    sub_1BA24F120(&unk_1EBBED850, MEMORY[0x1E6969C28]);
    v19 = sub_1BA4A82D8();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = sub_1B9F0B82C(v19, v21, v33);
    a1 = v31;

    *(v14 + 24) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s.%s] Removing item at indexPath %s", v14, 0x20u);
    v23 = v29;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    (*(v32 + 8))(v10, v30);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v32 + 8))(v10, v8);
  }

  sub_1BA0EE51C(a1);
  v24 = v2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = *(v24 + 1);
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(v2, ObjectType, v26);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA24D278(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v35 = *v2;
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BA4A3EA8();
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v15 = 136315650;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, v38);
    v35 = v2;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4F6BB0, v38);
    *(v15 + 22) = 2080;
    sub_1BA24F120(&unk_1EBBED850, MEMORY[0x1E6969C28]);
    v20 = sub_1BA4A82D8();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = sub_1B9F0B82C(v20, v22, v38);
    v3 = v35;

    *(v15 + 24) = v23;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s.%s] Inserting item at indexPath %s", v15, 0x20u);
    v24 = v33;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    v25 = v15;
    a2 = v34;
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 8))(v11, v36);
  v27 = v37[3];
  v26 = v37[4];
  v28 = __swift_project_boxed_opaque_existential_1(v37, v27);
  sub_1BA0F91A8(v28, a2, v3, v27, *(v26 + 8));
  v29 = &v3[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 1);
    ObjectType = swift_getObjectType();
    (*(v31 + 8))(v3, ObjectType, v31);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall OnboardingConfirmDetailsDataSource.registerCells(for:)(UITableView *a1)
{
  sub_1B9FCCA54();
  sub_1B9FCCBF4();
  sub_1B9FCCC28();
  sub_1B9FCCC5C();
  sub_1B9FCCC90();
}

void sub_1BA24D6AC()
{
  sub_1B9FCCA54();
  sub_1B9FCCBF4();
  sub_1B9FCCC28();
  sub_1B9FCCC5C();
  sub_1B9FCCC90();
}

uint64_t OnboardingConfirmDetailsDataSource.indexPathSelected(_:)(char *a1)
{
  v3 = MEMORY[0x1E6969C28];
  sub_1BA24F0CC(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(v6, v1 + v9, &qword_1EDC6AE28, v3);
  swift_endAccess();

  sub_1BA11A1D0(a1);
}

uint64_t sub_1BA24D854(char *a1)
{
  v3 = MEMORY[0x1E6969C28];
  sub_1BA24F0CC(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = sub_1BA4A1998();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(v6, v7 + v10, &qword_1EDC6AE28, v3);
  swift_endAccess();

  sub_1BA11A1D0(a1);
}

uint64_t sub_1BA24D9CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v125 = a1;
  v115 = *a4;
  sub_1BA24F0CC(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = &v101 - v12;
  v107 = sub_1BA4A6488();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0AEF30();
  v110 = v14;
  v109 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0AF03C();
  v114 = v16;
  v113 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1BA4A1798();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA24F0CC(0, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v101 - v20;
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - v26;
  v132[3] = a5;
  v132[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v132);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v29 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  v30 = sub_1BA4A1998();
  (*(*(v30 - 8) + 56))(v8 + v29, 1, 1, v30);
  *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_32;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = sub_1B9FF611C(MEMORY[0x1E69E7CC0]))
  {
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_subscriptions) = i;
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_confirmDetailsSections) = v125;
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_detailsProvider) = a3;
    if (a3)
    {
      v32 = type metadata accessor for ConfirmDetailsProvider.Details();
      (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
    }

    else
    {
      v33 = sub_1BA4A1148();
      v34 = *(*(v33 - 8) + 56);
      v34(v21, 1, 1, v33);
      v35 = type metadata accessor for ConfirmDetailsProvider.Details();
      v36 = v8;
      v37 = v35[5];
      v34(&v27[v37], 1, 1, v33);
      v38 = v35[6];
      v39 = v35[7];
      *v27 = 0;
      v27[8] = 1;

      v40 = &v27[v37];
      v8 = v36;
      sub_1BA24EC2C(v21, v40, &qword_1EBBEA478, MEMORY[0x1E6968278]);
      *&v27[v38] = 0;
      *&v27[v39] = 0;
      v27[v35[8]] = 0;
      v27[v35[9]] = 0;
      (*(*(v35 - 1) + 56))(v27, 0, 1, v35);
    }

    sub_1B9F0A534(v132, v129);
    sub_1BA24EBC0(v27, v24, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    if (a3)
    {
      swift_beginAccess();
      v41 = *(a3 + 88) ? 35 : *(a3 + 80);
    }

    else
    {
      v41 = 35;
    }

    type metadata accessor for ConfirmDetailsModel();
    v42 = swift_allocObject();
    v43 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
    v44 = type metadata accessor for ConfirmDetailsProvider.Details();
    v45 = *(*(v44 - 8) + 56);
    v104 = v44;
    v45(v42 + v43, 1, 1);
    v46 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;

    v47 = MEMORY[0x1E69E7CC0];
    *(v42 + v46) = sub_1B9FDB8F0(MEMORY[0x1E69E7CC0]);
    *(v42 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v48 = [objc_opt_self() hk_gregorianCalendar];
    v49 = v47;
    sub_1BA4A1828();

    v50 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel____lazy_storage___defaultDateOfBirth;
    sub_1BA24F0CC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    (*(*(v51 - 8) + 56))(v42 + v50, 1, 1, v51);
    sub_1B9F0A534(v129, v42 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter);
    *(v42 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows) = v47;
    swift_beginAccess();
    sub_1BA0AF19C(v24, v42 + v43);
    swift_endAccess();
    *(v42 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues) = MEMORY[0x1E69E7CC8];
    *(v42 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_defaultAge) = v41;
    sub_1BA119B74(v125);

    sub_1BA24EB64(v24, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    __swift_destroy_boxed_opaque_existential_1(v129);
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model) = v42;
    v52 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
    v53 = swift_beginAccess();
    v54 = *(v42 + v52);
    MEMORY[0x1EEE9AC00](v53);
    *(&v101 - 2) = v42;
    *(&v101 - 1) = v27;

    v21 = sub_1BA24A778(sub_1BA24F168, (&v101 - 4), v54);

    v55 = *(v21 + 2);
    if (!v55)
    {
      break;
    }

    v101 = v8;
    v102 = v27;
    v103 = a3;
    v128 = v49;
    sub_1B9F277B0(0, v55, 0);
    a3 = 0;
    v123 = *(v21 + 2);
    v120 = v21 + 32;
    v56 = v128;
    v119 = 0x80000001BA4E8490;
    v27 = MEMORY[0x1E69A3310];
    v8 = &qword_1EDC6AD50;
    v57 = v49;
    v122 = v21;
    v121 = v55;
    while (a3 != v123)
    {
      if (a3 >= *(v21 + 2))
      {
        goto LABEL_31;
      }

      v125 = v56;
      v58 = *&v120[8 * a3];
      v59 = *(v58 + 16);
      if (v59)
      {
        v127 = v57;

        sub_1BA066B80(0, v59, 0);
        v60 = v127;
        v124 = v58;
        v61 = v58 + 32;
        do
        {
          sub_1B9F0A534(v61, v126);
          sub_1B9F0D950(0, &qword_1EDC6E1B0);
          sub_1B9F0D950(0, &qword_1EDC6AD50);
          swift_dynamicCast();
          v127 = v60;
          v63 = *(v60 + 16);
          v62 = *(v60 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1BA066B80((v62 > 1), v63 + 1, 1);
          }

          v64 = v130;
          v65 = v131;
          v66 = __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
          v67 = MEMORY[0x1EEE9AC00](v66);
          v69 = &v101 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v70 + 16))(v69, v67);
          sub_1BA1F2854(v63, v69, &v127, v64, v65);
          __swift_destroy_boxed_opaque_existential_1(v129);
          v60 = v127;
          v61 += 40;
          --v59;
        }

        while (v59);
        v57 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v60 = v57;
      }

      v129[0] = 0;
      v129[1] = 0xE000000000000000;
      sub_1BA4A7DF8();

      v129[0] = 0xD000000000000018;
      v129[1] = v119;
      v126[0] = a3;
      v71 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v71);

      v72 = v129[0];
      v24 = v129[1];

      v74 = Array<A>.identifierToIndexDict()(v73);

      v56 = v125;
      v128 = v125;
      v76 = *(v125 + 16);
      v75 = *(v125 + 24);
      if (v76 >= v75 >> 1)
      {
        v125 = v72;
        sub_1B9F277B0((v75 > 1), v76 + 1, 1);
        v72 = v125;
        v56 = v128;
      }

      ++a3;
      *(v56 + 16) = v76 + 1;
      v77 = (v56 + 48 * v76);
      v77[4] = 0;
      v77[5] = 0;
      v77[6] = v60;
      v77[7] = v74;
      v77[8] = v72;
      v77[9] = v24;
      v21 = v122;
      if (a3 == v121)
      {
        v78 = v56;

        a3 = v103;
        v27 = v102;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_2;
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v129[0] = 0;
  v129[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v129, "MutableArray<");
  HIWORD(v129[1]) = -4864;
  v79 = v116;
  sub_1BA4A1788();
  v80 = sub_1BA4A1748();
  v82 = v81;
  (*(v117 + 8))(v79, v118);
  MEMORY[0x1BFAF1350](v80, v82);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v83 = MutableArrayDataSource.init(arrangedSections:identifier:)(v78, v129[0], v129[1]);
  *(*(v83 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model) + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate + 8) = &off_1F3811050;
  swift_unknownObjectWeakAssign();
  if (a3)
  {
    v84 = *(*a3 + 184);

    v86 = v84(v85);

    v129[0] = v86;
    sub_1BA24F048();
    sub_1BA24F120(&qword_1EBBEB4E0, sub_1BA24F048);
    v87 = v108;
    sub_1BA4A4FA8();

    sub_1B9F38BF4();
    v88 = v106;
    v89 = v105;
    v90 = v107;
    (*(v106 + 104))(v105, *MEMORY[0x1E69E7F90], v107);
    v91 = sub_1BA4A7338();
    (*(v88 + 8))(v89, v90);
    v129[0] = v91;
    v92 = sub_1BA4A72A8();
    v93 = v111;
    (*(*(v92 - 8) + 56))(v111, 1, 1, v92);
    sub_1BA24F120(&qword_1EBBEB4F0, sub_1BA0AEF30);
    sub_1BA24F120(&qword_1EDC6B5B0, sub_1B9F38BF4);
    v94 = v112;
    v95 = v110;
    sub_1BA4A50A8();
    sub_1BA24EB64(v93, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
    (*(v109 + 8))(v87, v95);

    v96 = swift_allocObject();
    swift_weakInit();
    v97 = swift_allocObject();
    v98 = v115;
    *(v97 + 16) = v96;
    *(v97 + 24) = v98;
    sub_1BA24F120(&qword_1EBBEB4F8, sub_1BA0AF03C);
    v99 = v114;
    sub_1BA4A5148();

    (*(v113 + 8))(v94, v99);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v132);
  sub_1BA24EB64(v27, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  return v83;
}

uint64_t sub_1BA24EB64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA24F0CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA24EBC0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA24F0CC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA24EC2C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA24F0CC(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for OnboardingConfirmDetailsDataSource()
{
  result = qword_1EBBEF1F0;
  if (!qword_1EBBEF1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA24ED00()
{
  sub_1BA24F0CC(319, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA24F048()
{
  if (!qword_1EBBEB4D8)
  {
    sub_1BA24F0CC(255, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB4D8);
    }
  }
}

void sub_1BA24F0CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA24F120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA24F1F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA24F2A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_topCategories);
  v10 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFAF2860](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = [v5 color];

    ++v3;
    if (v8)
    {
      MEMORY[0x1BFAF1510]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v4 = v10;
      v3 = v7;
    }
  }

  return v4;
}

void *sub_1BA24F418()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CategoryMetadata();
  v74 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v76 = (&v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70 - v10;
  sub_1BA4A3DD8();
  v12 = v1;
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
  v77 = v8;
  v78 = v12;
  v73 = ObjectType;
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v81[0] = v18;
    *v17 = 136315394;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, v81);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    swift_beginAccess();

    v23 = MEMORY[0x1BFAF1560](v22, v3);
    v25 = v24;

    v26 = sub_1B9F0B82C(v23, v25, v81);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Updating top categories from categoriesMetadata: %s", v17, 0x16u);
    swift_arrayDestroy();
    v27 = v18;
    v16 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    v28 = v17;
    v12 = v78;
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  v29 = v6;
  v75 = *(v6 + 8);
  v75(v11, v5);
  v30 = v16[66];
  swift_beginAccess();
  v31 = *&v12[v30];
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v34 = v76;
  if (v32)
  {
    v35 = v74;
    v36 = v31 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v80[0] = MEMORY[0x1E69E7CC0];

    sub_1BA4A7F08();
    v37 = *(v35 + 72);
    sub_1BA2511FC(v36, v34, type metadata accessor for CategoryMetadata);
    v38 = v34->isa;
    sub_1BA251154(v34, type metadata accessor for CategoryMetadata);
    sub_1BA4A7ED8();
    sub_1BA4A7F18();
    sub_1BA4A7F28();
    sub_1BA4A7EE8();
    if (v32 != 1)
    {
      sub_1BA2511FC(v36 + v37, v34, type metadata accessor for CategoryMetadata);
      v39 = v34->isa;
      sub_1BA251154(v34, type metadata accessor for CategoryMetadata);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (v32 != 2)
      {
        sub_1BA2511FC(v36 + 2 * v37, v34, type metadata accessor for CategoryMetadata);
        v40 = v34->isa;
        sub_1BA251154(v34, type metadata accessor for CategoryMetadata);
        sub_1BA4A7ED8();
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
        if (v32 != 3)
        {
          sub_1BA2511FC(v36 + 3 * v37, v34, type metadata accessor for CategoryMetadata);
          v41 = v34->isa;
          sub_1BA251154(v34, type metadata accessor for CategoryMetadata);
          sub_1BA4A7ED8();
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
        }
      }
    }

    v33 = v80[0];
    v12 = v78;
  }

  v42 = v77;
  sub_1BA4A3DD8();

  v43 = sub_1BA4A3E88();
  v44 = sub_1BA4A6FC8();

  if (!os_log_type_enabled(v43, v44))
  {

    v75(v42, v5);
LABEL_24:
    *&v12[OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_topCategories] = v33;

    swift_beginAccess();

    v79 = sub_1BA24F2A8();
    sub_1BA4A4DA8();
  }

  v72 = v44;
  v76 = v43;
  v45 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  v80[0] = v71;
  *v45 = 136315394;
  v46 = sub_1BA4A85D8();
  v48 = sub_1B9F0B82C(v46, v47, v80);

  *(v45 + 4) = v48;
  v74 = v45;
  *(v45 + 12) = 2080;
  if (v33 >> 62)
  {
    v49 = sub_1BA4A7CC8();
  }

  else
  {
    v49 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = MEMORY[0x1E69E7CC0];
  if (!v49)
  {
LABEL_23:
    sub_1BA251264();
    v63 = MEMORY[0x1BFAF1560](v50, v62);
    v65 = v64;

    v66 = sub_1B9F0B82C(v63, v65, v80);

    v67 = v74;
    *(v74 + 14) = v66;
    v68 = v76;
    _os_log_impl(&dword_1B9F07000, v76, v72, "[%s] Selected top categories: %s", v67, 0x16u);
    v69 = v71;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v69, -1, -1);
    MEMORY[0x1BFAF43A0](v67, -1, -1);

    v75(v42, v5);
    v12 = v78;
    goto LABEL_24;
  }

  v79 = MEMORY[0x1E69E7CC0];
  result = sub_1BA066D14(0, v49 & ~(v49 >> 63), 0);
  if ((v49 & 0x8000000000000000) == 0)
  {
    v70 = v29;
    v73 = v5;
    v52 = 0;
    v50 = v79;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1BFAF2860](v52, v33);
      }

      else
      {
        v53 = *(v33 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = [v53 displayName];
      v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v58 = v57;

      v79 = v50;
      v60 = *(v50 + 16);
      v59 = *(v50 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1BA066D14((v59 > 1), v60 + 1, 1);
        v50 = v79;
      }

      ++v52;
      *(v50 + 16) = v60 + 1;
      v61 = (v50 + 24 * v60);
      v61[4] = v56;
      v61[5] = v58;
      v61[6] = v54;
    }

    while (v49 != v52);
    v5 = v73;
    v42 = v77;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA24FC84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id ProfileGradientsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileGradientsProvider.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_topCategories] = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  v5 = v1;
  sub_1B9F10B50();
  swift_allocObject();
  *&v0[v2] = sub_1BA4A4DF8();
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_categoriesMetadata] = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ProfileGradientsProvider();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ProfileGradientsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileGradientsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA24FF04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProfileGradientsProvider();
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CategoryMetadata()
{
  result = qword_1EDC68E80;
  if (!qword_1EDC68E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA25011C()
{
  sub_1B9F0ADF8(319, &qword_1EDC6B5C0);
  if (v0 <= 0x3F)
  {
    sub_1B9F7B6A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1BA2501C0(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(a2 + 8);
  v18 = *(a1 + 8);
  if (v17 == v18)
  {
    v19 = type metadata accessor for CategoryMetadata();
    sub_1BA2511FC(a2 + *(v19 + 24), v9, sub_1B9F7B6A0);
    v20 = v11[6];
    if (v20(v9, 1, v10) == 1)
    {
      v21 = v9;
    }

    else
    {
      v28 = a1;
      v23 = v9;
      v24 = v11[4];
      v24(v16, v23, v10);
      sub_1BA2511FC(v28 + *(v19 + 24), v6, sub_1B9F7B6A0);
      if (v20(v6, 1, v10) != 1)
      {
        v24(v13, v6, v10);
        v22 = sub_1BA4A16D8();
        v25 = v11[1];
        v25(v13, v10);
        v25(v16, v10);
        return (v22 & 1) == 0;
      }

      (v11[1])(v16, v10);
      v21 = v6;
    }

    sub_1BA251154(v21, sub_1B9F7B6A0);
    v22 = 0;
  }

  else
  {
    v22 = v17 < v18;
  }

  return (v22 & 1) == 0;
}

BOOL sub_1BA2504A0(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if (v17 == v18)
  {
    v19 = type metadata accessor for CategoryMetadata();
    sub_1BA2511FC(a1 + *(v19 + 24), v9, sub_1B9F7B6A0);
    v20 = v11[6];
    if (v20(v9, 1, v10) == 1)
    {
      v21 = v9;
    }

    else
    {
      v28 = a2;
      v23 = v9;
      v24 = v11[4];
      v24(v16, v23, v10);
      sub_1BA2511FC(v28 + *(v19 + 24), v6, sub_1B9F7B6A0);
      if (v20(v6, 1, v10) != 1)
      {
        v24(v13, v6, v10);
        v22 = sub_1BA4A16D8();
        v25 = v11[1];
        v25(v13, v10);
        v25(v16, v10);
        return (v22 & 1) == 0;
      }

      (v11[1])(v16, v10);
      v21 = v6;
    }

    sub_1BA251154(v21, sub_1B9F7B6A0);
    v22 = 0;
  }

  else
  {
    v22 = v17 < v18;
  }

  return (v22 & 1) == 0;
}

uint64_t sub_1BA250780(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(a2 + 8);
  v18 = *(a1 + 8);
  if (v17 == v18)
  {
    v19 = type metadata accessor for CategoryMetadata();
    sub_1BA2511FC(a2 + *(v19 + 24), v9, sub_1B9F7B6A0);
    v20 = v11[6];
    if (v20(v9, 1, v10) == 1)
    {
      v21 = v9;
    }

    else
    {
      v28 = a1;
      v23 = v9;
      v24 = v11[4];
      v24(v16, v23, v10);
      sub_1BA2511FC(v28 + *(v19 + 24), v6, sub_1B9F7B6A0);
      if (v20(v6, 1, v10) != 1)
      {
        v24(v13, v6, v10);
        v22 = sub_1BA4A16D8();
        v25 = v11[1];
        v25(v13, v10);
        v25(v16, v10);
        return v22 & 1;
      }

      (v11[1])(v16, v10);
      v21 = v6;
    }

    sub_1BA251154(v21, sub_1B9F7B6A0);
    v22 = 0;
  }

  else
  {
    v22 = v17 < v18;
  }

  return v22 & 1;
}

BOOL sub_1BA250AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2510F0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  if ((sub_1BA4A7798() & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v15 = *(type metadata accessor for CategoryMetadata() + 24);
  v16 = *(v12 + 48);
  sub_1BA2511FC(a1 + v15, v14, sub_1B9F7B6A0);
  sub_1BA2511FC(a2 + v15, &v14[v16], sub_1B9F7B6A0);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_1BA251154(v14, sub_1B9F7B6A0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1BA2511FC(v14, v10, sub_1B9F7B6A0);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1BA251154(v14, sub_1BA2510F0);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_1BA2511B4(&qword_1EBBEF228, MEMORY[0x1E6969530]);
  v19 = sub_1BA4A6728();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1BA251154(v14, sub_1B9F7B6A0);
  return (v19 & 1) != 0;
}

uint64_t sub_1BA250E18(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if (v17 == v18)
  {
    v19 = type metadata accessor for CategoryMetadata();
    sub_1BA2511FC(a1 + *(v19 + 24), v9, sub_1B9F7B6A0);
    v20 = v11[6];
    if (v20(v9, 1, v10) == 1)
    {
      v21 = v9;
    }

    else
    {
      v28 = a2;
      v23 = v9;
      v24 = v11[4];
      v24(v16, v23, v10);
      sub_1BA2511FC(v28 + *(v19 + 24), v6, sub_1B9F7B6A0);
      if (v20(v6, 1, v10) != 1)
      {
        v24(v13, v6, v10);
        v22 = sub_1BA4A16D8();
        v25 = v11[1];
        v25(v13, v10);
        v25(v16, v10);
        return v22 & 1;
      }

      (v11[1])(v16, v10);
      v21 = v6;
    }

    sub_1BA251154(v21, sub_1B9F7B6A0);
    v22 = 0;
  }

  else
  {
    v22 = v17 < v18;
  }

  return v22 & 1;
}

void sub_1BA2510F0()
{
  if (!qword_1EBBEF220)
  {
    sub_1B9F7B6A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEF220);
    }
  }
}

uint64_t sub_1BA251154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA2511B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA2511FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA251264()
{
  if (!qword_1EDC5E718)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E718);
    }
  }
}

uint64_t EnvironmentValues.baseAutomationIdentifier.getter()
{
  sub_1B9F5B440();
  sub_1BA4A5728();
  return v1;
}

uint64_t static HKTraitBaseAutomationIdentifier.defaultValue.getter()
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDC631B0;

  return v0;
}

uint64_t static HKTraitBaseAutomationIdentifier.defaultValue.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC631B0 = a1;
  qword_1EDC631B8 = a2;
}

uint64_t (*static HKTraitBaseAutomationIdentifier.defaultValue.modify())()
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1BA2514EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EDC631A8;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC631B0 = v2;
  qword_1EDC631B8 = v1;
}

uint64_t static HKTraitBaseAutomationIdentifier.identifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEF230;

  return v0;
}

uint64_t static HKTraitBaseAutomationIdentifier.identifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBEF230 = a1;
  off_1EBBEF238 = a2;
}

uint64_t sub_1BA25168C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEF230 = v2;
  off_1EBBEF238 = v1;
}

uint64_t UIMutableTraits.baseAutomationIdentifier.getter()
{
  sub_1B9F5B584();
  sub_1BA4A3FF8();
  return v1;
}

void (*UIMutableTraits.baseAutomationIdentifier.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  v7[2] = UIMutableTraits.baseAutomationIdentifier.getter();
  v8[3] = v9;
  return sub_1BA25183C;
}

void sub_1BA25183C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (a2)
  {

    *v2 = v3;
    v2[1] = v5;
    sub_1B9F5B584();
    sub_1BA4A4008();
  }

  else
  {
    *v2 = v3;
    v2[1] = v4;
    sub_1B9F5B584();
    sub_1BA4A4008();
  }

  free(v2);
}

uint64_t UITraitCollection.baseAutomationIdentifier.getter()
{
  sub_1B9F5B584();
  sub_1BA4A7358();
  return v1;
}

uint64_t sub_1BA251930()
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEF240 = qword_1EDC631B0;
  *algn_1EBBEF248 = qword_1EDC631B8;
}

uint64_t static HKTraitBaseAutomationIdentifierKey.defaultValue.getter()
{
  if (qword_1EBBE8580 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEF240;

  return v0;
}

uint64_t sub_1BA251A1C@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE8580 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EBBEF248;
  *a1 = qword_1EBBEF240;
  a1[1] = v2;
}

void (*EnvironmentValues.baseAutomationIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1B9F5B440();
  sub_1BA4A5728();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1BA251B34;
}

void sub_1BA251B34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_1BA4A5738();
  }

  else
  {
    sub_1BA4A5738();
  }

  free(v2);
}

uint64_t static HKTraitBaseAutomationIdentifierKey.read(from:)()
{
  sub_1B9F5B584();
  sub_1BA4A7358();
  return v1;
}

uint64_t static HKTraitBaseAutomationIdentifierKey.write(to:value:)(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  sub_1B9F5B584();
  return sub_1BA4A4008();
}

uint64_t sub_1BA251C90(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  return UIMutableTraits.baseAutomationIdentifier.setter();
}

uint64_t SummarySharingSelectableDataTypeItem.init(feedItemIdentifier:pluginViewModelContent:isSelectable:isSelected:reuseIdentifier:selectedDataTypesDelegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v28 = a4;
  v29 = a5;
  v30 = a3;
  v27 = a9;
  v14 = sub_1BA4A1798();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v18 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v19 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(*(v19 - 8) + 56))(a8 + v18, 1, 1, v19);
  *a8 = a6;
  *(a8 + 8) = a7;
  v31 = 0xD000000000000025;
  v32 = 0x80000001BA4E3640;
  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  MEMORY[0x1BFAF1350](v20, v22);

  v23 = v32;
  *(a8 + 16) = v31;
  *(a8 + 24) = v23;
  *(a8 + 56) = a1;
  *(a8 + 64) = a2;
  v24 = v29;
  *(a8 + 48) = v28;
  *(a8 + 49) = v24;
  *(a8 + 40) = v27;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return sub_1BA00B474(v30, a8 + v18);
}

uint64_t SummarySharingSelectableDataTypeItem.init(feedItem:pluginViewModelContent:selectedDataTypesDelegate:isSelectable:isSelected:reuseIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *(a8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v12 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v13 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a8 + v12, 1, 1, v13);
  *a8 = a6;
  *(a8 + 8) = a7;
  v15 = [a1 uniqueIdentifier];
  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;

  MEMORY[0x1BFAF1350](v16, v18);

  *(a8 + 16) = 0xD000000000000025;
  *(a8 + 24) = 0x80000001BA4E3640;
  v19 = [a1 uniqueIdentifier];
  v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v22 = v21;

  *(a8 + 56) = v20;
  *(a8 + 64) = v22;
  sub_1BA253CFC(a8 + v12, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  sub_1BA253D6C(a2, a8 + v12, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v14(a8 + v12, 0, 1, v13);
  *(a8 + 49) = a5;
  *(a8 + 40) = a3;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a8 + 48) = a4;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.authorizationIdentifiers.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v4 + 40), v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1BA253CFC(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = *&v3[*(v5 + 44)];

    sub_1BA258C74(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v6;
}

void *SummarySharingSelectableDataTypeItem.image.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v4 + 40), v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1BA253CFC(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v6 = *(v3 + 6);
    v7 = v6;
    sub_1BA258C74(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v6;
}

void *SummarySharingSelectableDataTypeItem.category.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v4 + 40), v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1BA253CFC(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v6 = *(v3 + 7);
    v7 = v6;
    sub_1BA258C74(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v6;
}

uint64_t SummarySharingSelectableDataTypeItem.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v1 + *(v10 + 40), v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
  {
    sub_1BA253CFC(v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return (*(v7 + 104))(a1, *MEMORY[0x1E69A3B68], v6);
  }

  else
  {
    (*(v7 + 16))(v9, &v5[*(v11 + 40)], v6);
    sub_1BA258C74(v5, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return (*(v7 + 32))(a1, v9, v6);
  }
}

void SummarySharingSelectableDataTypeItem.image.setter(void *a1)
{
  v2 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = a1;
  }

  else
  {
    v4 = *(v2 + 48);
    *(v2 + 48) = a1;
  }
}

uint64_t SummarySharingSelectableDataTypeItem.name.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v4 + 40), v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1BA253CFC(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v6 = *(v3 + 2);

    sub_1BA258C74(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v6;
}

uint64_t SummarySharingSelectableDataTypeItem.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }
}

id sub_1BA252A30()
{
  sub_1BA252C6C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-1] - v5;
  sub_1BA31D5B4();
  sub_1BA4A4158();
  v7 = sub_1BA4A4168();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = MEMORY[0x1BFAF1F10](v6);
  MEMORY[0x1BFAF1F00](v9);
  if ((*(v8 + 48))(v3, 1, v7))
  {
    v10 = MEMORY[0x1E69DC0D8];
    sub_1BA253C7C(v3, v6, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v6);
    sub_1BA253CFC(v3, &qword_1EDC6B770, v10);
  }

  else
  {
    v11 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v3);
  }

  v14[3] = sub_1BA4A4428();
  v14[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v14);
  MEMORY[0x1BFAF2040]();
  MEMORY[0x1BFAF1EF0](v14);
  return [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch) addTarget:v0 action:sel_switchUpdated forControlEvents:4096];
}

void sub_1BA252C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA252CD0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA252C6C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v65 - v4;
  v72 = sub_1BA4A3FD8();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1BA4A3F98();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v2);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v65 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  v79 = sub_1BA4A4428();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA252C6C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, v2);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65 - v21;
  v23 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA253C7C(v1 + v27, v81, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v82)
  {
    sub_1BA253CFC(v81, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v24 + 56))(v22, 1, 1, v23);
    return sub_1BA253CFC(v22, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  sub_1B9FCD918();
  v28 = swift_dynamicCast();
  (*(v24 + 56))(v22, v28 ^ 1u, 1, v23);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_1BA253CFC(v22, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  v29 = sub_1BA253D6C(v22, v26, type metadata accessor for SummarySharingSelectableDataTypeItem);
  MEMORY[0x1BFAF2040](v29);
  v70 = *(v23 + 40);
  sub_1BA253C7C(&v26[v70], v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v30 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v31 = *(v30 - 8);
  v69 = *(v31 + 48);
  v68 = v31 + 48;
  if (v69(v18, 1, v30) == 1)
  {
    sub_1BA253CFC(v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  else
  {

    sub_1BA258C74(v18, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA4A43B8();
  v67 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font);
  v34 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v34(v81, 0);
  sub_1BA253C7C(&v26[v70], v15, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v69(v15, 1, v30) == 1)
  {
    sub_1BA253CFC(v15, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v35 = v67;
    v36 = v79;
    v37 = v78;
  }

  else
  {
    v38 = *(v15 + 6);
    v39 = v38;
    sub_1BA258C74(v15, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v35 = v67;
    v36 = v79;
    v37 = v78;
    if (v38)
    {
      v66 = v39;
      sub_1BA4A43D8();
      v40 = sub_1BA4A42D8();
      sub_1BA4A4268();
      v40(v81, 0);
      v41 = sub_1BA4A42D8();
      sub_1BA4A42A8();
      v41(v81, 0);
      sub_1BA253C7C(&v26[v70], v12, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v69(v12, 1, v30) == 1)
      {
        sub_1BA253CFC(v12, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v42 = 0;
      }

      else
      {
        v42 = v12[7];
        sub_1BA258C74(v12, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      v43 = [v42 color];

      v44 = sub_1BA4A42D8();
      sub_1BA4A42B8();
      v44(v81, 0);

      v35 = v67;
      goto LABEL_16;
    }
  }

  sub_1BA4A43D8();
LABEL_16:
  sub_1BA253C7C(&v26[v70], v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v69(v9, 1, v30) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  else
  {
    v45 = *(v9 + 5);

    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v45)
    {
      sub_1BA252C6C(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5480;
      v47 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      v48 = objc_opt_self();
      v49 = v47;
      v35 = v67;
      v50 = [v48 secondaryLabelColor];
      *(inited + 64) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
      *(inited + 40) = v50;
      sub_1B9FDB1C4(inited);
      swift_setDeallocating();
      sub_1BA258C74(inited + 32, sub_1B9FE9628);
      v51 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v52 = sub_1BA4A6758();

      type metadata accessor for Key(0);
      sub_1BA258CF8(&qword_1EDC5E3D0, type metadata accessor for Key);
      v53 = sub_1BA4A6618();

      [v51 initWithString:v52 attributes:v53];
    }
  }

  v54 = v80;
  sub_1BA4A4308();
  v82 = v36;
  v83 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
  (*(v37 + 16))(boxed_opaque_existential_1, v54, v36);
  MEMORY[0x1BFAF1EF0](v81);
  if (v26[48] == 1)
  {
    sub_1BA252C6C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    v56 = *(v35 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch);
    sub_1B9FD7EE0();
    v58 = v74;
    v59 = &v74[*(v57 + 48)];
    v60 = *MEMORY[0x1E69DBF28];
    v61 = sub_1BA4A3F18();
    (*(*(v61 - 8) + 104))(v58, v60, v61);
    *v59 = sub_1B9FF87F0;
    v59[1] = 0;
    (*(v71 + 104))(v58, *MEMORY[0x1E69DBF60], v72);
    v62 = sub_1BA4A3F48();
    (*(*(v62 - 8) + 56))(v77, 1, 1, v62);
    v63 = v56;
    v64 = v73;
    sub_1BA4A3F88();
    sub_1BA4A3EE8();
    (*(v75 + 8))(v64, v76);
    sub_1BA4A75F8();
    [v63 setOn_];
  }

  else
  {
    sub_1BA4A75F8();
  }

  sub_1BA253DD4(v26);
  (*(v37 + 8))(v80, v36);
  return sub_1BA258C74(v26, type metadata accessor for SummarySharingSelectableDataTypeItem);
}

uint64_t SummarySharingSelectableDataTypeItem.subtitle.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v4 + 40), v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1BA253CFC(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v6 = *(v3 + 4);

    sub_1BA258C74(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v6;
}

uint64_t sub_1BA253C7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA252C6C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA253CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA252C6C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA253D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BA253DD4(uint64_t a1)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch);
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v7 + 40), v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1BA253CFC(v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_4:

    goto LABEL_5;
  }

  v9 = *(v5 + 3);

  sub_1BA258C74(v5, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v9)
  {
    goto LABEL_4;
  }

LABEL_5:
  v10 = sub_1BA4A6758();

  [v6 setAccessibilityIdentifier_];
}

uint64_t sub_1BA253F88()
{
  sub_1BA252C6C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-v2];
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA253C7C(v0 + v8, v14, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v15)
  {
    sub_1BA253CFC(v14, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v5 + 56))(v3, 1, 1, v4);
    return sub_1BA253CFC(v3, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  sub_1B9FCD918();
  v9 = swift_dynamicCast();
  (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1BA253CFC(v3, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  sub_1BA253D6C(v3, v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
  v7[49] = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch) isOn];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v7 + 5);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(v7, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return sub_1BA258C74(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
}

id SummarySharingSelectableDataTypeCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SummarySharingSelectableDataTypeCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font;
  *&v4[v10] = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SummarySharingSelectableDataTypeCell();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id SummarySharingSelectableDataTypeCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SummarySharingSelectableDataTypeCell.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font;
  *&v1[v4] = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SummarySharingSelectableDataTypeCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1BA254614()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font);
}

id SummarySharingSelectableDataTypeCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingSelectableDataTypeCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *SummarySharingSelectableDataTypeItem.PluginViewModelContent.hkType.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *SummarySharingSelectableDataTypeItem.PluginViewModelContent.image.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *SummarySharingSelectableDataTypeItem.PluginViewModelContent.category.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) + 40);
  v4 = sub_1BA4A1C68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.contentKind.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) + 40);
  v4 = sub_1BA4A1C68();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.authorizationIdentifiers.getter()
{
  type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.authorizationIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.init(pluginBundle:hkType:name:subtitle:image:category:contentKind:authorizationIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v12 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v13 = *(v12 + 40);
  v14 = sub_1BA4A1C68();
  result = (*(*(v14 - 8) + 32))(&a9[v13], a10, v14);
  *&a9[*(v12 + 44)] = a11;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)()
{
  v1 = v0;
  v2 = sub_1BA4A3A28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*v0)
  {
    sub_1BA4A84A8();
    v7 = v6;
    sub_1BA4A77A8();

    v8 = v1[1];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BA4A84A8();
    v8 = v0[1];
    if (v8)
    {
LABEL_3:
      sub_1BA4A84A8();
      v9 = v8;
      sub_1BA4A77A8();

      if (v1[3])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  sub_1BA4A84A8();
  if (v1[3])
  {
LABEL_4:
    sub_1BA4A84A8();
    sub_1BA4A68C8();
    if (v1[5])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_1BA4A84A8();
  if (v1[5])
  {
LABEL_5:
    sub_1BA4A84A8();
    sub_1BA4A68C8();
    v10 = v1[6];
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1BA4A84A8();
    v12 = v1[7];
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  sub_1BA4A84A8();
  v10 = v1[6];
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1BA4A84A8();
  v11 = v10;
  sub_1BA4A77A8();

  v12 = v1[7];
  if (v12)
  {
LABEL_7:
    sub_1BA4A84A8();
    v13 = v12;
    sub_1BA4A77A8();

    goto LABEL_14;
  }

LABEL_13:
  sub_1BA4A84A8();
LABEL_14:
  v14 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  sub_1BA4A1C68();
  sub_1BA258CF8(&qword_1EDC6E240, MEMORY[0x1E69A3C08]);
  sub_1BA4A66A8();
  v15 = *(v1 + *(v14 + 44));
  result = MEMORY[0x1BFAF2ED0](*(v15 + 16));
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = v3 + 16;
    v19 = *(v3 + 16);
    v20 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = (v3 + 8);
    do
    {
      v23 = v18;
      v19(v5, v20, v2);
      sub_1BA258CF8(&qword_1EBBEA610, MEMORY[0x1E69A3910]);
      sub_1BA4A66A8();
      result = (*v22)(v5, v2);
      v18 = v23;
      v20 += v21;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.hashValue.getter()
{
  sub_1BA4A8488();
  SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA254F70()
{
  sub_1BA4A8488();
  SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA254FB4()
{
  sub_1BA4A8488();
  SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t SummarySharingSelectableDataTypeItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.feedItemIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.feedItemIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_1BA2551E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v7 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *(v6 + 2);
    v11 = *(v6 + 3);

    result = sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t sub_1BA255358(void *a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {
    v6 = a1[1];
    *(v3 + 16) = *a1;
    *(v3 + 24) = v6;
  }

  return result;
}

void (*SummarySharingSelectableDataTypeItem.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 24) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 56) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 32) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 40) = v13;
  *(v5 + 48) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *(v9 + 16);
    v15 = *(v9 + 24);

    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  *(v5 + 8) = v15;
  return sub_1BA2555C4;
}

void sub_1BA2555C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 16);
  if (a2)
  {
    v7 = v6 + v5;
    if (!v3(v6 + v5, 1, v4))
    {
      v8 = v2[1];
      *(v7 + 16) = *v2;
      *(v7 + 24) = v8;
    }
  }

  else
  {
    v9 = v6 + v5;
    v10 = v2[1];
    if (!v3(v6 + v5, 1, v4))
    {
      *(v9 + 16) = *v2;
      *(v9 + 24) = v10;
    }
  }

  v11 = v2[3];

  free(v11);

  free(v2);
}

uint64_t sub_1BA255684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v7 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *(v6 + 4);
    v11 = *(v6 + 5);

    result = sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t sub_1BA2557F4(void *a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {
    v6 = a1[1];
    *(v3 + 32) = *a1;
    *(v3 + 40) = v6;
  }

  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }
}

void (*SummarySharingSelectableDataTypeItem.subtitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 24) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 56) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 32) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 40) = v13;
  *(v5 + 48) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *(v9 + 32);
    v15 = *(v9 + 40);

    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  *(v5 + 8) = v15;
  return sub_1BA255AFC;
}

void sub_1BA255AFC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 16);
  if (a2)
  {
    v7 = v6 + v5;
    if (!v3(v6 + v5, 1, v4))
    {
      v8 = v2[1];
      *(v7 + 32) = *v2;
      *(v7 + 40) = v8;
    }
  }

  else
  {
    v9 = v6 + v5;
    v10 = v2[1];
    if (!v3(v6 + v5, 1, v4))
    {
      *(v9 + 32) = *v2;
      *(v9 + 40) = v10;
    }
  }

  v11 = v2[3];

  free(v11);

  free(v2);
}

uint64_t sub_1BA255BBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v7 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v10 = 0;
  }

  else
  {
    v10 = *(v6 + 7);
    v11 = v10;
    result = sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v10;
  return result;
}

void sub_1BA255D24(void **a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *a1;
    v7 = *(v3 + 56);
    *(v3 + 56) = *a1;
    v6 = v5;
  }
}

void SummarySharingSelectableDataTypeItem.category.setter(void *a1)
{
  v2 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = a1;
  }

  else
  {
    v4 = *(v2 + 56);
    *(v2 + 56) = a1;
  }
}

void (*SummarySharingSelectableDataTypeItem.category.modify(uint64_t *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 16) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 48) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 24) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 32) = v13;
  *(v5 + 40) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
  }

  else
  {
    v14 = *(v9 + 56);
    v15 = v14;
    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  return sub_1BA25602C;
}

void sub_1BA25602C(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[3];
  v5 = (*a1)[1] + *(*a1 + 12);
  if (a2)
  {
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v6 = *v2;
      v7 = *(v5 + 56);
      *(v5 + 56) = *v2;
      v8 = v6;
    }

    v9 = *v2;
  }

  else
  {
    v9 = *v2;
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v10 = *(v5 + 56);
      *(v5 + 56) = v9;
      v9 = v10;
    }
  }

  v11 = v2[2];

  free(v11);

  free(v2);
}

uint64_t sub_1BA2560DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v7 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v10 = 0;
  }

  else
  {
    v10 = *(v6 + 6);
    v11 = v10;
    result = sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v10;
  return result;
}

void sub_1BA256244(void **a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *a1;
    v7 = *(v3 + 48);
    *(v3 + 48) = *a1;
    v6 = v5;
  }
}

void (*SummarySharingSelectableDataTypeItem.image.modify(uint64_t *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 16) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 48) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 24) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 32) = v13;
  *(v5 + 40) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
  }

  else
  {
    v14 = *(v9 + 48);
    v15 = v14;
    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  return sub_1BA2564B0;
}

void sub_1BA2564B0(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[3];
  v5 = (*a1)[1] + *(*a1 + 12);
  if (a2)
  {
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v6 = *v2;
      v7 = *(v5 + 48);
      *(v5 + 48) = *v2;
      v8 = v6;
    }

    v9 = *v2;
  }

  else
  {
    v9 = *v2;
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v10 = *(v5 + 48);
      *(v5 + 48) = v9;
      v9 = v10;
    }
  }

  v11 = v2[2];

  free(v11);

  free(v2);
}

uint64_t sub_1BA256560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v10 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    return (*(v5 + 40))(v9 + *(v10 + 40), v8, v4);
  }
}

uint64_t SummarySharingSelectableDataTypeItem.contentKind.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_1BA4A1C68();
    v6 = *(*(v5 - 8) + 8);

    return v6(a1, v5);
  }

  else
  {
    v8 = *(v4 + 40);
    v9 = sub_1BA4A1C68();
    v10 = *(*(v9 - 8) + 40);

    return v10(v3 + v8, a1, v9);
  }
}

void (*SummarySharingSelectableDataTypeItem.contentKind.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1BA4A1C68();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
    v5[5] = v14;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
    v5[5] = v14;
    v15 = malloc(v13);
  }

  v16 = v15;
  v5[6] = v15;
  v17 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 20) = v17;
  sub_1BA253C7C(v1 + v17, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v18 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v5[7] = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v5[8] = v20;
  v5[9] = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v20(v9, 1, v18) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v12[13](v16, *MEMORY[0x1E69A3B68], v10);
  }

  else
  {
    v12[2](v14, v9 + *(v18 + 40), v10);
    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v12[4](v16, v14, v10);
  }

  return sub_1BA256AB4;
}

void sub_1BA256AB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[7];
  v5 = *(*a1 + 20);
  if (a2)
  {
    v6 = *v2;
    (*(v2[3] + 16))(v2[4], v2[6], v2[2]);
    if (v3(v6 + v5, 1, v4))
    {
      v7 = *(v2[3] + 8);
      v7(v2[4], v2[2]);
    }

    else
    {
      v11 = v2[3];
      (*(v11 + 40))(*v2 + *(v2 + 20) + *(v2[7] + 40), v2[4], v2[2]);
      v7 = *(v11 + 8);
    }

    v13 = v2[5];
    v12 = v2[6];
    v14 = v2[4];
    v15 = v2[1];
    v7(v12, v2[2]);
  }

  else
  {
    v8 = *v2 + v5;
    v9 = v3(v8, 1, v4);
    v10 = v2[3];
    if (v9)
    {
      (*(v10 + 8))(v2[6], v2[2]);
    }

    else
    {
      (*(v10 + 40))(v8 + *(v4 + 40), v2[6], v2[2]);
    }

    v13 = v2[5];
    v12 = v2[6];
    v14 = v2[4];
    v15 = v2[1];
  }

  free(v12);
  free(v13);
  free(v14);
  free(v15);

  free(v2);
}

uint64_t SummarySharingSelectableDataTypeItem.pluginViewModelContent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);

  return sub_1BA00B474(a1, v3);
}

uint64_t sub_1BA256D20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v7 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = *&v6[*(v8 + 44)];

    result = sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1BA256E98(void *a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {
    *(v3 + *(v4 + 44)) = *a1;
  }

  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.authorizationIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    *(v3 + *(v4 + 44)) = a1;
  }
}

void (*SummarySharingSelectableDataTypeItem.authorizationIdentifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 16) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 48) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 24) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 32) = v13;
  *(v5 + 40) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = *(v9 + *(v11 + 44));

    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  return sub_1BA2571B8;
}

void sub_1BA2571B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 8) + *(*a1 + 48);
  if (a2)
  {
    if (!v3(*(*a1 + 8) + *(*a1 + 48), 1, v4))
    {
      *(v5 + *(v4 + 44)) = *v2;
    }
  }

  else
  {
    v6 = *v2;
    if (!v3(*(*a1 + 8) + *(*a1 + 48), 1, v4))
    {
      *(v5 + *(v4 + 44)) = v6;
    }
  }

  v7 = v2[2];

  free(v7);

  free(v2);
}

void *sub_1BA257280(uint64_t a1)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1BA253C7C(v1 + *(a1 + 40), &v10 - v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1BA253CFC(v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v7 = *(v5 + 7);
    v8 = v7;
    sub_1BA258C74(v5, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v7;
}

void sub_1BA2573DC(void *a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v3 + 56);
    *(v3 + 56) = a1;
  }
}

void (*sub_1BA257470(uint64_t **a1))(void *a1)
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
  v2[4] = SummarySharingSelectableDataTypeItem.category.modify(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA2574E0(uint64_t a1)
{
  v2 = sub_1BA258CF8(&qword_1EBBEF2A0, type metadata accessor for SummarySharingSelectableDataTypeItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t SummarySharingSelectableDataTypeItem.hash(into:)()
{
  if (!*(v0 + 64))
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

uint64_t SummarySharingSelectableDataTypeItem.hashValue.getter()
{
  sub_1BA4A8488();
  if (*(v0 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA257654()
{
  sub_1BA4A8488();
  if (*(v0 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA2576CC()
{
  if (!*(v0 + 64))
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

uint64_t sub_1BA257744()
{
  sub_1BA4A8488();
  if (*(v0 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  return sub_1BA4A84D8();
}

uint64_t static SummarySharingSelectableDataTypeItem.withTitleAndCategory(title:category:subtitle:contentKind:hkType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a5;
  v43 = a1;
  v44 = a4;
  v13 = sub_1BA4A1798();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v49 = &v42 - v16;
  v17 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a3 largeListIcon];
  if (!v22)
  {
    v22 = [a3 listIcon];
  }

  v23 = *(v17 + 40);
  v24 = sub_1BA4A1C68();
  (*(*(v24 - 8) + 16))(&v21[v23], a6, v24);
  *v21 = 0;
  *(v21 + 1) = a7;
  v25 = v44;
  *(v21 + 2) = v43;
  *(v21 + 3) = a2;
  v26 = a7;
  v27 = v46;
  *(v21 + 4) = v25;
  *(v21 + 5) = v27;
  *(v21 + 6) = v22;
  *(v21 + 7) = a3;
  *&v21[*(v17 + 44)] = MEMORY[0x1E69E7CC0];
  v28 = v49;
  sub_1BA0FB13C(v21, v49);
  v29 = *(v18 + 56);
  v29(v28, 0, 1, v17);
  v50 = type metadata accessor for SummarySharingSelectableDataTypeCell();
  sub_1BA091918();
  v30 = a3;
  v31 = v26;

  v32 = sub_1BA4A6808();
  v34 = v33;
  *(a8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v35 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v29(a8 + v35, 1, 1, v17);
  *a8 = v32;
  *(a8 + 8) = v34;
  v50 = 0xD000000000000025;
  v51 = 0x80000001BA4E3640;
  v36 = v45;
  sub_1BA4A1788();
  v37 = sub_1BA4A1748();
  v39 = v38;
  (*(v47 + 8))(v36, v48);
  MEMORY[0x1BFAF1350](v37, v39);

  v40 = v51;
  *(a8 + 16) = v50;
  *(a8 + 24) = v40;
  *(a8 + 48) = 0;
  *(a8 + 40) = 0;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  swift_unknownObjectWeakAssign();
  sub_1BA00B474(v49, a8 + v35);
  return sub_1BA258C74(v21, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
}

uint64_t _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1C68();
  v84 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v76 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v76 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v76 - v11;
  v12 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v76 - v16;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v76 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v76 - v38;
  v40 = *(a1 + 64);
  v91 = a2;
  v87 = v41;
  v88 = v42;
  if (v40 && (v43 = *(a2 + 64)) != 0 && (*(a1 + 56) != *(a2 + 56) || v40 != v43))
  {
    v93 = sub_1BA4A8338();
  }

  else
  {
    v93 = 1;
  }

  v92 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v94 = *(v92 + 40);
  sub_1BA253C7C(a1 + v94, v39, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v44 = *(v13 + 48);
  if (v44(v39, 1, v12) == 1)
  {
    sub_1BA253CFC(v39, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    goto LABEL_21;
  }

  v86 = v4;
  v45 = *(v39 + 3);
  v77 = *(v39 + 2);

  sub_1BA258C74(v39, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v45)
  {
    sub_1BA253C7C(v91 + *(v92 + 40), v36, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v44(v36, 1, v12) != 1)
    {
      v46 = *(v36 + 3);
      v76 = *(v36 + 2);

      sub_1BA258C74(v36, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v46)
      {
        if ((v93 & 1) == 0)
        {

          v93 = 0;
          goto LABEL_20;
        }

        if (v77 == v76 && v45 == v46)
        {

          v93 = 1;
          goto LABEL_20;
        }

        v93 = sub_1BA4A8338();
      }

      goto LABEL_20;
    }

    sub_1BA253CFC(v36, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

LABEL_20:
  v4 = v86;
LABEL_21:
  sub_1BA253C7C(a1 + v94, v33, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v44(v33, 1, v12) == 1)
  {
    sub_1BA253CFC(v33, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  else
  {
    v47 = *(v33 + 7);
    v48 = v47;
    sub_1BA258C74(v33, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v47)
    {
      v49 = v91;
      sub_1BA253C7C(v91 + *(v92 + 40), v30, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v44(v30, 1, v12) == 1)
      {

        sub_1BA253CFC(v30, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v50 = v90;
        goto LABEL_31;
      }

      v51 = *(v30 + 7);
      v52 = v51;
      sub_1BA258C74(v30, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v51)
      {
        v50 = v90;
        if (v93)
        {
          sub_1B9F0ADF8(0, &qword_1EDC6E350);
          v93 = sub_1BA4A7798();
        }

        else
        {

          v93 = 0;
        }

        v49 = v91;
        goto LABEL_31;
      }
    }
  }

  v50 = v90;
  v49 = v91;
LABEL_31:
  sub_1BA253C7C(a1 + v94, v27, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v44(v27, 1, v12) == 1)
  {
    sub_1BA253CFC(v27, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v53 = v89;
  }

  else
  {
    v54 = *(v27 + 6);
    v55 = v54;
    sub_1BA258C74(v27, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v54)
    {
      v56 = v85;
      sub_1BA253C7C(v49 + *(v92 + 40), v85, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v57 = v44(v56, 1, v12);
      v53 = v89;
      if (v57 == 1)
      {

        sub_1BA253CFC(v56, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      else
      {
        v86 = v4;
        v58 = *(v56 + 48);
        v59 = v58;
        sub_1BA258C74(v56, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v58)
        {
          if (v93)
          {
            sub_1B9F0ADF8(0, &qword_1EDC6E350);
            v93 = sub_1BA4A7798();
          }

          else
          {

            v93 = 0;
          }
        }

        else
        {
        }

        v50 = v90;
        v4 = v86;
      }
    }

    else
    {
      v53 = v89;
    }
  }

  v60 = v88;
  sub_1BA253C7C(a1 + v94, v88, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v44(v60, 1, v12) != 1)
  {
    sub_1BA253D6C(v60, v53, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v60 = v87;
    sub_1BA253C7C(v49 + *(v92 + 40), v87, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v44(v60, 1, v12) != 1)
    {
      sub_1BA253D6C(v60, v50, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v93)
      {
        v67 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV22PluginViewModelContentV2eeoiySbAE_AEtFZ_0(v53, v50);
        sub_1BA258C74(v50, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA258C74(v53, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v67)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_1BA258C74(v50, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA258C74(v53, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

LABEL_57:
      v68 = 0;
      return v68 & 1;
    }

    sub_1BA258C74(v53, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA253CFC(v60, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if ((v93 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_49:
  if (*(a1 + 49) != *(v49 + 49) || *(a1 + 48) != *(v49 + 48))
  {
    goto LABEL_57;
  }

  v61 = v49;
  v62 = v80;
  sub_1BA253C7C(a1 + v94, v80, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v63 = v44(v62, 1, v12);
  v64 = MEMORY[0x1E69A3B68];
  if (v63 == 1)
  {
    sub_1BA253CFC(v62, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v65 = v84;
    v66 = v82;
    (*(v84 + 104))(v82, *v64, v4);
  }

  else
  {
    v65 = v84;
    v70 = v78;
    (*(v84 + 16))(v78, v62 + *(v12 + 40), v4);
    sub_1BA258C74(v62, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v66 = v82;
    (*(v65 + 32))(v82, v70, v4);
  }

  v71 = v61 + *(v92 + 40);
  v72 = v81;
  sub_1BA253C7C(v71, v81, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v44(v72, 1, v12) == 1)
  {
    sub_1BA253CFC(v72, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v73 = v83;
    (*(v65 + 104))(v83, *v64, v4);
  }

  else
  {
    v74 = v79;
    (*(v65 + 16))(v79, v72 + *(v12 + 40), v4);
    sub_1BA258C74(v72, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v73 = v83;
    (*(v65 + 32))(v83, v74, v4);
  }

  sub_1BA258CF8(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08]);
  sub_1BA4A6A58();
  sub_1BA4A6A58();
  if (v97 == v95 && v98 == v96)
  {
    v68 = 1;
  }

  else
  {
    v68 = sub_1BA4A8338();
  }

  v75 = *(v65 + 8);
  v75(v73, v4);
  v75(v66, v4);

  return v68 & 1;
}

uint64_t _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV22PluginViewModelContentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &unk_1EBBEE680);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BA4A7798();

    if ((v8 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v5)
  {
    goto LABEL_40;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6E920);
    v11 = v10;
    v12 = v9;
    v13 = sub_1BA4A7798();

    if ((v13 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v10)
  {
    goto LABEL_40;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (sub_1BA4A8338() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v15)
  {
    goto LABEL_40;
  }

  v16 = *(a1 + 40);
  v17 = *(a2 + 40);
  if (v16)
  {
    if (!v17 || (*(a1 + 32) != *(a2 + 32) || v16 != v17) && (sub_1BA4A8338() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v17)
  {
    goto LABEL_40;
  }

  v18 = *(a1 + 48);
  v19 = *(a2 + 48);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6E370);
    v20 = v19;
    v21 = v18;
    v22 = sub_1BA4A7798();

    if ((v22 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v19)
  {
    goto LABEL_40;
  }

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
    v25 = v24;
    v26 = v23;
    v27 = sub_1BA4A7798();

    if ((v27 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v24)
  {
    goto LABEL_40;
  }

  v28 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  sub_1BA4A1C68();
  sub_1BA258CF8(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08]);
  sub_1BA4A6A58();
  sub_1BA4A6A58();
  if (v34 != v32 || v35 != v33)
  {
    v29 = sub_1BA4A8338();

    if (v29)
    {
      goto LABEL_39;
    }

LABEL_40:
    v30 = 0;
    return v30 & 1;
  }

LABEL_39:
  v30 = sub_1B9FF0F74(*(a1 + *(v28 + 44)), *(a2 + *(v28 + 44)));
  return v30 & 1;
}

uint64_t sub_1BA258C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA258CF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA258E94()
{
  sub_1B9F2F388();
  if (v0 <= 0x3F)
  {
    sub_1BA252C6C(319, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA258FA0()
{
  sub_1B9F6A804(319, &qword_1EBBEF290, &unk_1EBBEE680);
  if (v0 <= 0x3F)
  {
    sub_1B9F6A804(319, &qword_1EDC5E588, &qword_1EDC6E920);
    if (v1 <= 0x3F)
    {
      sub_1B9F2F388();
      if (v2 <= 0x3F)
      {
        sub_1B9F6A804(319, &qword_1EDC5E1E0, &qword_1EDC6E370);
        if (v3 <= 0x3F)
        {
          sub_1B9F6A804(319, &qword_1EBBEF298, &qword_1EDC6B5C0);
          if (v4 <= 0x3F)
          {
            sub_1BA4A1C68();
            if (v5 <= 0x3F)
            {
              sub_1BA252C6C(319, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
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

uint64_t sub_1BA259130()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF2A8 = result;
  unk_1EBBEF2B0 = v1;
  return result;
}

uint64_t static UIActivityItemProvider.defaultHealthAppShareSheetSummary.getter()
{
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEF2A8;

  return v0;
}

id sub_1BA259230()
{
  sub_1BA2594E0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B9A80;
  v1 = *MEMORY[0x1E69CDAC0];
  v2 = *MEMORY[0x1E69CDAC8];
  *(v0 + 32) = *MEMORY[0x1E69CDAC0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69CDAD0];
  v4 = *MEMORY[0x1E69CDAD8];
  *(v0 + 48) = *MEMORY[0x1E69CDAD0];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E69CDAE0];
  v13 = *MEMORY[0x1E69CDAE8];
  v6 = *MEMORY[0x1E69CDAE8];
  *(v0 + 64) = *MEMORY[0x1E69CDAE0];
  *(v0 + 72) = v6;
  qword_1EBC097F8 = v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;

  return v13;
}

id _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v4 init];
}

uint64_t sub_1BA2593F4()
{
  sub_1BA2594E0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4C9870;
  v1 = *MEMORY[0x1E69CDA70];
  v2 = *MEMORY[0x1E69CDA80];
  *(v0 + 32) = *MEMORY[0x1E69CDA70];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69CDAB8];
  v4 = *MEMORY[0x1E69CDAF0];
  *(v0 + 48) = *MEMORY[0x1E69CDAB8];
  *(v0 + 56) = v4;
  v5 = qword_1EBBE8590;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1B9FE22C0(v10);
  return v0;
}

void sub_1BA2594E0()
{
  if (!qword_1EBBEE848)
  {
    type metadata accessor for ActivityType(255);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE848);
    }
  }
}

Swift::Void __swiftcall ProfileNavigationBarViewPresenting.configureProfileNavigationItem()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode_];

  v7 = (*(v4 + 40))(v5, v4);
  v8 = [v3 presentingViewController];
  v9 = v8;
  if (v8)
  {
  }

  v10 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v11 = sub_1BA25A190(v7, v9 != 0);
  v12 = *(v4 + 24);
  v14 = v11;
  v12(v11, v5, v4);
  v13 = [v3 navigationItem];
  [v13 setTitleView_];

  [*&v14[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  NavigationBarScrollAnimationCustomizing<>.configureNavigationItemForCustomScrollAnimation()(v5, *(v4 + 8));
}

Swift::Void __swiftcall ProfileNavigationBarViewPresenting.updateNavigationBarAndTitleViewForManualScrollAppearance(animated:)(Swift::Bool animated)
{
  v3 = v2;
  v4 = v1;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    NavigationBarScrollAnimationCustomizing<>.updateNavigationBarForManualScrollAppearance(animated:)(animated, v4, *(v3 + 8));
  }

  ProfileNavigationBarViewPresenting.updateNavigationBarTitleViewForManualScrollAppearance(animated:)(animated);
}

id ProfileNavigationBarViewPresenting.retrieveDisplayedProfileInfoCell()()
{
  v1 = v0;
  v2 = sub_1BA4A1998();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v8 = result;
    MEMORY[0x1BFAEC380](1, 0);
    v9 = sub_1BA4A18F8();
    (*(v3 + 8))(v6, v2);
    v10 = [v8 cellForItemAtIndexPath_];

    result = 0;
    if (v10)
    {
      type metadata accessor for ProfileNameCell();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ProfileNavigationBarViewPresenting.navigationBarAnimationThresholdY.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(a2 + 48))(a1, a2, v6);
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView);

    v12 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v13 = *&v11[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v13 bounds];
    [v13 convertRect:0 toView:?];
    [*&v11[v12] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6F88();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s)]: No profile info cell found, defaulting to placeholder value", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

Swift::Void __swiftcall ProfileNavigationBarViewPresenting.updateNavigationBarTitleViewForManualScrollAppearance(animated:)(Swift::Bool animated)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(v2 + 16))();
  if (v6)
  {
    v10 = v6;
    type metadata accessor for ProfileNavigationBarView();
    if (swift_dynamicCastClass())
    {
      v7 = *(v3 + 8);
      ShouldBe = NavigationBarScrollAnimationCustomizing.navigationBarShouldBeVisible.getter(v4, v7);
      if (animated)
      {
        v9 = (*(v7 + 16))(v4, v7);
      }

      else
      {
        v9 = 0;
      }

      sub_1BA25A440(ShouldBe, v9, !animated);
    }

    else
    {
    }
  }
}

id sub_1BA259C90()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView);
  }

  else
  {
    v48 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setTextAlignment_];
    [v9 setAdjustsFontForContentSizeCategory_];
    v10 = *MEMORY[0x1E69DDD08];
    v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:v11];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v47 = v0;
      sub_1BA4A3DD8();
      v16 = v10;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v46 = v11;
        v20 = v19;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v23 = sub_1B9F0B82C(v21, v22, &v51);
        v45 = v16;
        v24 = v23;

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v49 = 0;
        v50 = 1;
        sub_1BA25B65C(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v25 = sub_1BA4A6808();
        v27 = sub_1B9F0B82C(v25, v26, &v51);

        *(v20 + 14) = v27;
        *(v20 + 22) = 2080;
        LODWORD(v49) = 0;
        type metadata accessor for SymbolicTraits(0);
        v28 = sub_1BA4A6808();
        v30 = sub_1B9F0B82C(v28, v29, &v51);
        v16 = v45;

        *(v20 + 24) = v30;
        *(v20 + 32) = 2112;
        v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v31;
        v32 = v43;
        *v43 = v31;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v32);
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        v33 = v44;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        v34 = v20;
        v11 = v46;
        MEMORY[0x1BFAF43A0](v34, -1, -1);
      }

      (*(v2 + 8))(v5, v48);
      v0 = v47;
      v35 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
    }

    [v9 setFont_];

    v36 = [objc_opt_self() labelColor];
    [v9 setTextColor_];

    LODWORD(v37) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [v9 setContentHuggingPriority:1 forAxis:v38];
    v39 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v40 = v7;
  return v8;
}

char *sub_1BA25A190(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView;
  v7 = [objc_allocWithZone(type metadata accessor for PublisherImageView()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setContentMode_];

  *&v2[v6] = v7;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_profileInformationSink] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ProfileNavigationBarView();
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA25A5F4(a2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA1430C4();
  sub_1BA25B8C8(&qword_1EBBEC7A8, sub_1BA1430C4);
  v9 = sub_1BA4A5148();

  *&v8[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_profileInformationSink] = v9;

  [v8 setHideStandardTitle_];
  [v8 setHeightShouldBeIncreasedByTabBarHeight_];

  return v8;
}

void sub_1BA25A3BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BA25B3B4(a1);
  }
}

void sub_1BA25A440(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView];
  [v7 alpha];
  if (v6 != v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v6;
    if (a3)
    {
      v10 = v3;
      [v7 setAlpha_];
    }

    else
    {
      v11 = *&a2;
      v12 = objc_opt_self();
      v15[4] = sub_1BA25BA38;
      v15[5] = v9;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1B9F0B040;
      v15[3] = &block_descriptor_63;
      v13 = _Block_copy(v15);
      v14 = v3;

      [v12 animateWithDuration:v13 animations:v11];

      _Block_release(v13);
    }
  }
}

void sub_1BA25A5F4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView];
  [v1 addSubview_];
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView];
  [v3 addSubview_];
  v5 = sub_1BA259C90();
  [v3 addSubview_];

  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 5.0;
  }

  if (a1)
  {
    v7 = 2.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (a1)
  {
    v8 = 40.5;
  }

  else
  {
    v8 = 50.0;
  }

  v46 = objc_opt_self();
  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4C9890;
  v10 = [v3 topAnchor];
  v11 = [v1 safeAreaLayoutGuide];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintGreaterThanOrEqualToAnchor:v12 constant:v7];
  *(v9 + 32) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v7];

  *(v9 + 40) = v16;
  v17 = [v3 leadingAnchor];
  v18 = [v1 &selRef__totalDistance + 1];
  v19 = [v17 constraintEqualToAnchor_];

  *(v9 + 48) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v9 + 56) = v22;
  v23 = [v4 widthAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v9 + 64) = v24;
  v25 = [v4 heightAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v9 + 72) = v26;
  v27 = [v4 topAnchor];
  v28 = [v3 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:3.0];

  *(v9 + 80) = v29;
  v30 = [v4 centerXAnchor];
  v31 = [v3 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v9 + 88) = v32;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView;
  v34 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView] leadingAnchor];
  v35 = [v3 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v9 + 96) = v36;
  v37 = [*&v1[v33] trailingAnchor];
  v38 = [v3 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v9 + 104) = v39;
  v40 = [*&v1[v33] topAnchor];
  v41 = [v4 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:3.0];

  *(v9 + 112) = v42;
  v43 = [v3 bottomAnchor];
  v44 = [*&v1[v33] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v6];

  *(v9 + 120) = v45;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v47 = sub_1BA4A6AE8();

  [v46 activateConstraints_];
}

void sub_1BA25ABC4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1BA25B65C(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v40 - v5;
  sub_1BA25B6B0();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA25B734();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA25B65C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_1BA4A2888();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView];
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0x80))(v16);
  sub_1BA071040(a1, v49);
  if (!v50)
  {
    sub_1BA25B86C(v49, &qword_1EDC6E1E0, sub_1BA0B43BC);
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_8;
  }

  sub_1BA0B43BC();
  v20 = swift_dynamicCast();
  (*(v15 + 56))(v13, v20 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_8:
    sub_1BA25B86C(v13, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    goto LABEL_9;
  }

  (*(v15 + 32))(v18, v13, v14);
  v21 = sub_1BA4A2838();
  v22 = [v21 type];

  if (v22 == 1)
  {
    v41 = sub_1BA4A27F8();
    v23 = objc_opt_self();
    v24 = [v23 mainScreen];
    [v24 scale];
    v26 = v25;

    v27 = [v2 effectiveUserInterfaceLayoutDirection];
    v28 = [v23 mainScreen];
    [v28 scale];
    v30 = v29;

    if (qword_1EDC63680 != -1)
    {
      swift_once();
    }

    v49[0] = 0x4049000000000000;
    v49[1] = v30;
    v49[2] = qword_1EDC63688;
    v31 = swift_allocObject();
    *(v31 + 16) = v41;
    *(v31 + 24) = v26;
    *(v31 + 32) = v27 == 1;
    *(v31 + 40) = ObjectType;
    sub_1B9F6A804(0, &qword_1EDC5E1E0, &qword_1EDC6E370);
    sub_1B9F3DB14();

    sub_1BA4A4FE8();

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    ObjectType = sub_1BA4A7308();
    v49[0] = ObjectType;
    v32 = sub_1BA4A72A8();
    v33 = v44;
    (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
    sub_1BA25B8C8(&qword_1EBBEF2E8, sub_1BA25B6B0);
    sub_1B9F3DC80();
    v34 = v42;
    v35 = v46;
    sub_1BA4A50A8();
    sub_1BA25B86C(v33, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

    (*(v45 + 8))(v8, v35);
    v36 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x70);
    v37 = sub_1BA25B8C8(&qword_1EBBEF2F0, sub_1BA25B734);
    v38 = v48;
    v36(v34, v48, v37);

    (*(v47 + 8))(v34, v38);
    (*(v15 + 8))(v18, v14);
    return;
  }

  (*(v15 + 8))(v18, v14);
LABEL_9:
  sub_1BA071040(a1, v49);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v39 = sub_1BA4A2AC8();
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    sub_1BA25B86C(v49, &qword_1EDC6E1E0, sub_1BA0B43BC);
    v39 = 0;
  }

  [v19 setImage_];
}

id sub_1BA25B3B4(uint64_t a1)
{
  v2 = v1;
  sub_1BA25ABC4(a1);
  v4 = sub_1BA259C90();
  sub_1BA071040(a1, v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1BA4A2AB8();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = sub_1BA4A6758();
  }

  else
  {
    sub_1BA25B86C(v8, &qword_1EDC6E1E0, sub_1BA0B43BC);
    v5 = 0;
  }

  [v4 setText_];

  [v2 systemLayoutSizeFittingSize_];
  return [v2 setHeight_];
}

id sub_1BA25B500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileNavigationBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA25B65C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA25B6B0()
{
  if (!qword_1EBBEF2D8)
  {
    sub_1B9F6A804(255, &qword_1EDC5E1E0, &qword_1EDC6E370);
    sub_1B9F3DB14();
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF2D8);
    }
  }
}

void sub_1BA25B734()
{
  if (!qword_1EBBEF2E0)
  {
    sub_1BA25B6B0();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA25B8C8(&qword_1EBBEF2E8, sub_1BA25B6B0);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF2E0);
    }
  }
}

id sub_1BA25B800@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = v3;
  if (!v3)
  {
    v4 = sub_1BA4A2DF8();
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

uint64_t sub_1BA25B86C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA25B65C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA25B8C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA25B910()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView;
  v4 = [objc_allocWithZone(type metadata accessor for PublisherImageView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setContentMode_];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_profileInformationSink) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA25BA64(void *a1)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v5 = sub_1BA4A1C68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E69A3B70], v5);
  v11(v10 + v7, *MEMORY[0x1E69A3C00], v5);
  sub_1BA4A1FB8();
  v12 = sub_1BA4A0FA8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5480;
  *(v13 + 32) = sub_1BA4A1D78();
  v14 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B8B60;
  v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v18 = sub_1BA4A6758();
  v19 = [v17 initWithKey:v18 ascending:1];

  *(v16 + 32) = v19;
  v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v21 = sub_1BA4A6758();
  v22 = [v20 initWithKey:v21 ascending:0];

  *(v16 + 40) = v22;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = sub_1BA4A6758();
  v25 = [v23 initWithKey:v24 ascending:1 selector:sel_localizedStandardCompare_];

  *(v16 + 48) = v25;
  v26 = v14;
  v27 = sub_1BA4A7558();

  return v27;
}

id sub_1BA25BEB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvidersYouAreSharingWithDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProvidersYouAreSharingWithDataSource()
{
  result = qword_1EDC60EA0;
  if (!qword_1EDC60EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA25BF3C(uint64_t *a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v23 = a1[2];
  v24 = v9;
  sub_1BA4A3E28();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B9F07000, v11, v12, "Layout section providing layout function called", v13, 2u);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_1EDC6CB90);
  sub_1B9F37E38(v14, v4);
  *(v4 + 88) = xmmword_1BA4C9900;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  v4[120] = 0;
  v15 = swift_allocObject();
  v16 = v23;
  v15[2] = v24;
  v15[3] = v10;
  v17 = v25;
  v15[4] = v16;
  v15[5] = v17;
  v18 = *(v4 + 16);
  swift_unknownObjectRetain();
  v19 = v17;
  sub_1B9F0E310(v18);
  *(v4 + 16) = sub_1BA25C664;
  *(v4 + 17) = v15;
  v20 = ListLayoutConfiguration.layout(for:)(v10);
  sub_1BA047354(v4);
  return v20;
}

void sub_1BA25C1BC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_1BA4A1C68();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v35 - v11;
  sub_1B9F12538();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BA4A1998();
  v17 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A4638();
  v21 = *(*(v20 - 8) + 16);
  v35 = a4;
  v21(a4, a1, v20);
  v22 = sub_1BA4A1938();
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1BFAEC360](v24, a2);
    v25 = qword_1EDC84AC8;
    swift_beginAccess();
    (*(v14 + 16))(v16, a3 + v25, v13);
    v26 = sub_1BA4A4548();
    (*(v14 + 8))(v16, v13);
    if (v26 > a2)
    {
      v27 = sub_1BA4A1938();
      if (v27 < sub_1BA1B91E0(a2))
      {
        sub_1BA079F5C(v19, v43);
        sub_1B9F32244();
        sub_1BA4A27B8();
        if (swift_dynamicCast())
        {
          v28 = v41;
          v29 = v36;
          sub_1BA4A26B8();
          v31 = v37;
          v30 = v38;
          (*(v37 + 104))(v39, *MEMORY[0x1E69A3C00], v38);
          sub_1BA25C670();
          sub_1BA4A6A58();
          sub_1BA4A6A58();
          if (v43[0] == v41 && v43[1] == v42)
          {
            v32 = *(v31 + 8);
            v32(v39, v30);
            v32(v29, v30);
          }

          else
          {
            v33 = sub_1BA4A8338();
            v34 = *(v31 + 8);
            v34(v39, v30);
            v34(v29, v30);

            if ((v33 & 1) == 0)
            {
              (*(v17 + 8))(v19, v40);

              return;
            }
          }

          sub_1BA4A4618();
        }
      }
    }

    (*(v17 + 8))(v19, v40);
  }
}

unint64_t sub_1BA25C670()
{
  result = qword_1EBBEF0B8;
  if (!qword_1EBBEF0B8)
  {
    sub_1BA4A1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF0B8);
  }

  return result;
}

void *OnboardingViewControllerWithNextButton.init(title:detailText:icon:contentLayout:isLastPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v12 = sub_1BA4A6758();

  if (a4)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  v19.receiver = v7;
  v19.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v14 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, a5, a6);

  v15 = v14;
  v16 = [v15 headerView];
  LODWORD(v17) = 1036831949;
  [v16 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v15) + 0xB8))(a7 & 1);
  return v15;
}

void sub_1BA25C84C(char a1)
{
  if (a1)
  {
    v2 = &OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton;
    v3 = &selRef_hxui_addDoneButtonWithAccessibilityIdentifier_;
  }

  else
  {
    v4 = [v1 hxui_addCancelButton];
    v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton];
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = v4;

    v2 = &OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton;
    v3 = &selRef_hxui_addNextButtonWithAccessibilityIdentifier_;
  }

  v6 = sub_1BA4A6758();
  v7 = [v1 *v3];

  v8 = *&v1[*v2];
  *&v1[*v2] = v7;
}

void sub_1BA25C934()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BA4A6758();
    [v2 setTitle:v3 forState:0];
  }
}

void sub_1BA25C9D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];
  }
}

void sub_1BA25CA70()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 buttonTray];
    [v3 removeButton_];
  }

  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 buttonTray];
    [v6 removeButton_];
  }

  v7 = [v0 buttonTray];
  [v7 setHidden_];
}

id sub_1BA25CB70(id result)
{
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton))
  {
    return [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton) setEnabled_];
  }

  return result;
}

void sub_1BA25CB98()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void *OnboardingViewControllerWithNextButton.__allocating_init(title:detailText:icon:contentLayout:isLastPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v14 = sub_1BA4A6758();

  if (a4)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = v13;
  v21.super_class = v8;
  v16 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, a5, a6);

  v17 = v16;
  v18 = [v17 headerView];
  LODWORD(v19) = 1036831949;
  [v18 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v17) + 0xB8))(a7 & 1);
  return v17;
}

uint64_t sub_1BA25CD78()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton))
  {
    Button = type metadata accessor for OnboardingViewControllerWithNextButton();
    v4[0] = v0;
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  }

  else
  {
    Button = type metadata accessor for OnboardingViewControllerWithNextButton();
    v4[0] = v0;
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  }

  v2 = v0;
  v1(v4);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

id OnboardingViewControllerWithNextButton.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id OnboardingViewControllerWithNextButton.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id OnboardingViewControllerWithNextButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA25D4A0()
{
  if (sub_1BA25D998(&OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item))
  {
    v1 = sub_1BA4A2DE8();
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView);
    if (v1)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 scale];

      [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
      v4 = sub_1BA4A2DF8();
      [v2 setImage_];

      sub_1BA25EF94();
    }

    else
    {
      v7 = sub_1BA4A2E28();
      [v2 setImage_];
    }
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView);

    return [v5 setImage_];
  }
}

id sub_1BA25D608()
{
  v1 = v0;
  sub_1BA25F1A4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA25D998(&OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item))
  {
    v7 = sub_1BA4A2DE8();
    v8 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
    if (v7)
    {
      swift_beginAccess();
      v9 = *(v0 + v8);
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 mainScreen];
      [v12 scale];

      [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
      v13 = sub_1BA4A2DF8();
      [v11 setImage_];

      v14 = [v10 mainScreen];
      [v14 scale];
      v16 = v15;

      if (qword_1EDC63680 != -1)
      {
        swift_once();
      }

      v25[0] = 0x405D000000000000;
      v25[1] = v16;
      v25[2] = qword_1EDC63688;
      sub_1B9F0ADF8(0, &qword_1EDC6E370);
      sub_1B9F3DB14();

      sub_1BA4A4FA8();

      v17 = *(v1 + v8);
      v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x78);
      v19 = sub_1BA25F220();
      v20 = v17;
      v18(v6, v3, v19);

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      swift_beginAccess();
      v23 = *(v0 + v8);
      v24 = sub_1BA4A2E28();
      [v23 setImage_];
    }
  }

  else
  {
    v22 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
    swift_beginAccess();
    return [*(v0 + v22) setImage_];
  }
}

uint64_t sub_1BA25D998(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  sub_1B9F68124(v1 + v2, v5);
  if (v6)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBEE370);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
        v3 = sub_1BA4A3418();
        __swift_destroy_boxed_opaque_existential_1(&v7);
        return v3;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v5, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1B9F43A50(&v7, &qword_1EBBEE368, &qword_1EBBEE370);
  return 0;
}

uint64_t sub_1BA25DAF8()
{
  v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x656C69666F72502ELL, 0xEF7261746176412ELL);

  return v1;
}

uint64_t sub_1BA25DB70(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA25DBF8();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA25DBF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))();
  v4 = sub_1BA25D4A0();
  v5 = (*(ObjectType + 120))(v4);
  v7 = v6;
  v8 = sub_1BA4A6758();
  [v1 setAccessibilityIdentifier_];

  MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
  v9 = sub_1BA4A6758();

  [v3 setAccessibilityIdentifier_];
}

uint64_t sub_1BA25DD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA25DD84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA25DBF8();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA25DE08(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA25DE6C;
}

uint64_t sub_1BA25DE6C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA25DBF8();
  }

  return result;
}

void *ProfileAvatarImageCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView] = sub_1BA112B14();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ProfileAvatarImageCell();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0xC8);
  v12 = v10;
  v11();

  return v12;
}

id ProfileAvatarImageCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *ProfileAvatarImageCell.init(coder:)(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView] = sub_1BA112B14();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ProfileAvatarImageCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xC8);
    v7 = v4;
    v6();
  }

  return v5;
}

void sub_1BA25E24C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v1 contentView];
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];
  [v3 addSubview_];

  v5 = [v4 bottomAnchor];
  v6 = [v1 contentView];
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint] = v8;
  v10 = v8;

  if (v10)
  {
    [v10 setActive_];
  }

  v11 = [v4 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint] = v14;
  v16 = v14;

  if (v16)
  {
    [v16 setActive_];
  }

  v17 = objc_opt_self();
  sub_1B9F109F8();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5880;
  v19 = [v4 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
  *(v18 + 32) = v22;
  v23 = [v1 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v4 trailingAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor_];

  *(v18 + 40) = v26;
  v27 = [v4 centerXAnchor];
  v28 = [v1 contentView];
  v29 = [v28 centerXAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v18 + 48) = v30;
  v31 = [v4 widthAnchor];
  v32 = (*(ObjectType + 112))();
  v33 = [v31 constraintEqualToConstant_];

  *(v18 + 56) = v33;
  v34 = [v4 heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v18 + 64) = v35;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v36 = sub_1BA4A6AE8();

  [v17 activateConstraints_];
}

void sub_1BA25E6BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v6 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v5 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];

    [v5 setAccessibilityIdentifier_];
  }
}

void sub_1BA25E898()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA25E90C()
{
  sub_1BA25E24C();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = [v0 contentView];
  v4 = [v3 bottomAnchor];

  v5 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView] bottomAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor_];

  v7 = *&v0[v1];
  *&v0[v1] = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setActive_];
  }

  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint];
  if (v9)
  {
    [v9 setConstant_];
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_showProfileViewController];
  [v0 addGestureRecognizer_];
}

void sub_1BA25EA84()
{
  v1 = [v0 viewController];
  if (v1)
  {
    v13 = v1;
    v2 = UIViewController.resolvedHealthStore.getter();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 profileIdentifier];
      v5 = [v4 type];

      if (v5 == 1)
      {
        sub_1BA4A22B8();
        v6 = v3;
        v7 = sub_1BA4A22A8();
        v8 = objc_allocWithZone(type metadata accessor for ProfileViewController());
        v9 = v6;

        v10 = sub_1BA249DB8(v9, v7, v8);

        v3 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v13 presentViewController:v3 animated:1 completion:0];

        v11 = v10;
      }

      else
      {
        v11 = v13;
      }

      v12 = v3;
    }

    else
    {
      v12 = v13;
    }
  }
}

id SummaryHeaderProfileAvatarImageCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SummaryHeaderProfileAvatarImageCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BA25EE34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA25EF94()
{
  v1 = v0;
  sub_1BA25F1A4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  if (qword_1EDC63680 != -1)
  {
    swift_once();
  }

  v13[1] = 0x4054000000000000;
  v13[2] = v9;
  v13[3] = qword_1EDC63688;
  sub_1B9F0ADF8(0, &qword_1EDC6E370);
  sub_1B9F3DB14();

  sub_1BA4A4FA8();

  v10 = *((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView)) + 0x78);
  v11 = sub_1BA25F220();
  v10(v6, v3, v11);
  return (*(v4 + 8))(v6, v3);
}

void sub_1BA25F1A4()
{
  if (!qword_1EBBEF330)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E370);
    sub_1B9F3DB14();
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF330);
    }
  }
}

unint64_t sub_1BA25F220()
{
  result = qword_1EBBEF338;
  if (!qword_1EBBEF338)
  {
    sub_1BA25F1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF338);
  }

  return result;
}

uint64_t sub_1BA25F280(char a1)
{
  v35 = sub_1BA4A1798();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled) = a1;
  v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationSettingsDataSources);
  if (v6 >> 62)
  {
LABEL_19:
    v7 = sub_1BA4A7CC8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v37 = v6 & 0xFFFFFFFFFFFFFF8;
    v29 = (v3 + 1);
    v3 = &OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled;
    v36 = xmmword_1BA4B5480;
    v32 = v6;
    v33 = v5;
    v30 = v6 & 0xC000000000000001;
    v31 = v7;
    do
    {
      if (v9)
      {
        v19 = MEMORY[0x1BFAF2860](v8, v6);
        v20 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_16:
          __break(1u);
        }
      }

      else
      {
        if (v8 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        v19 = *(v6 + 8 * v8 + 32);

        v20 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_16;
        }
      }

      v21 = *(v1 + v5);
      v22 = *(v19 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled);
      *(v19 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled) = v21;
      if (v21 == v22)
      {
      }

      else
      {
        v23 = v1;
        v24 = OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_item;
        v25 = *(v19 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_item);
        v26 = v25[97];
        v25[97] = v21;
        if (v21 != v26)
        {
          v38[0] = v25[81];

          v25[96] = (v21 ^ 1) & sub_1BA3E529C(v38);
        }

        sub_1B9FF6758();
        inited = swift_initStackObject();
        *(inited + 16) = v36;
        sub_1B9F3D66C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
        v11 = swift_allocObject();
        *(v11 + 16) = v36;
        v12 = *(v19 + v24);
        *(v11 + 56) = type metadata accessor for ProfileSharingWithYouNotificationSettingsItem();
        *(v11 + 64) = sub_1BA26014C(&qword_1EBBEADF8, type metadata accessor for ProfileSharingWithYouNotificationSettingsItem);
        *(v11 + 32) = v12;

        v13 = v34;
        sub_1BA4A1788();
        v14 = sub_1BA4A1748();
        v16 = v15;
        (*v29)(v13, v35);
        v17 = MEMORY[0x1E69E7CC0];
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        *(inited + 56) = sub_1B9F1C5F0(v17);
        *(inited + 40) = 0;
        *(inited + 32) = 0;

        *(inited + 48) = v11;
        v18 = Array<A>.identifierToIndexDict()(v11);

        *(inited + 56) = v18;
        *(inited + 64) = v14;
        *(inited + 72) = v16;
        sub_1BA0E7F10(inited, 1);

        swift_setDeallocating();
        sub_1B9FF7224(inited + 32);
        v1 = v23;
        v6 = v32;
        v5 = v33;
        v9 = v30;
        v7 = v31;
        v3 = &OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled;
      }

      ++v8;
    }

    while (v20 != v7);
  }
}

uint64_t sub_1BA25F638()
{
  v1 = v0;
  sub_1B9F3D66C(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  sub_1BA260000();
  v15 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A1B98();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v9 = sub_1BA4A7308();
  v16 = v9;
  v10 = sub_1BA4A72A8();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1BA2600CC();
  sub_1BA26014C(qword_1EBBEC458, sub_1BA2600CC);
  sub_1B9F3DC80();
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v4);

  swift_allocObject();
  swift_weakInit();
  sub_1BA26014C(&qword_1EBBEF3C0, sub_1BA260000);
  v11 = v15;
  v12 = sub_1BA4A5148();

  (*(v6 + 8))(v8, v11);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationCancellable) = v12;
}

uint64_t sub_1BA25F928(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA25F280([v1 authorizationStatus] == 1);
  }

  return result;
}

uint64_t sub_1BA25FA08()
{
}

uint64_t sub_1BA25FA58()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA25FB38()
{
  sub_1BA25FA58();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfileSharingWithYouOptionsDataSource()
{
  result = qword_1EBBEF3A8;
  if (!qword_1EBBEF3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA25FC4C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF340 = result;
  *algn_1EBBEF348 = v1;
  return result;
}

uint64_t sub_1BA25FD0C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF350 = result;
  *algn_1EBBEF358 = v1;
  return result;
}

uint64_t sub_1BA25FDCC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF360 = result;
  *algn_1EBBEF368 = v1;
  return result;
}

uint64_t sub_1BA25FE8C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF370 = result;
  *algn_1EBBEF378 = v1;
  return result;
}

uint64_t sub_1BA25FF4C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF380 = result;
  *algn_1EBBEF388 = v1;
  return result;
}

void sub_1BA260000()
{
  if (!qword_1EBBEF3B8)
  {
    sub_1BA2600CC();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA26014C(qword_1EBBEC458, sub_1BA2600CC);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF3B8);
    }
  }
}

void sub_1BA2600CC()
{
  if (!qword_1EBBEC448)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEC450);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC448);
    }
  }
}

uint64_t sub_1BA26014C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HKSharedSummaryCloudSyncManager.fetchProfileInformation()()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = ObjectType;
  sub_1BA263510(0, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
  swift_allocObject();
  v3 = v0;
  return sub_1BA4A4EA8();
}

void *sub_1BA2603BC(uint64_t a1)
{
  v2 = sub_1BA4A1798();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1E69E8050];
  sub_1B9F3D6D0(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v78 - v5;
  sub_1BA1DAE18();
  v79 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DAD48();
  v11 = *(v10 - 8);
  v80 = v10;
  v81 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DAC5C();
  v15 = *(v14 - 1);
  v83 = v14;
  v84 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA26368C();
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x1EEE9AC00](v17);
  *&v82 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v78 - v20);
  v90 = [objc_allocWithZone(MEMORY[0x1E696C408]) initWithHealthStore_];
  v89 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();
  *&v102[0] = v89;
  *&v101[0] = sub_1BA4A6F68();
  sub_1BA263510(0, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
  sub_1BA263510(0, &qword_1EBBEDDD0, sub_1BA26359C, MEMORY[0x1E695BED0]);
  sub_1BA142E28();
  sub_1BA263604();
  sub_1BA4A4FC8();

  sub_1B9F63FF8(0, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
  sub_1B9F2AAA4(&qword_1EBBEDE00, sub_1BA1DAE18);
  v22 = v79;
  sub_1BA4A4FE8();
  (*(v7 + 8))(v9, v22);
  sub_1BA1DB098();
  sub_1B9F2AAA4(&qword_1EBBEDE10, sub_1BA1DAD48);
  sub_1B9F2AAA4(&qword_1EBBEDE18, sub_1BA1DB098);
  v23 = v78;
  v24 = v80;
  sub_1BA4A5018();
  (*(v81 + 8))(v13, v24);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v25 = sub_1BA4A7308();
  *&v102[0] = v25;
  v26 = sub_1BA4A72A8();
  v27 = v85;
  (*(*(v26 - 8) + 56))(v85, 1, 1, v26);
  sub_1B9F2AAA4(&qword_1EBBEDE20, sub_1BA1DAC5C);
  sub_1B9F3DC80();
  v28 = v83;
  sub_1BA4A50A8();
  sub_1BA263758(v27, &qword_1EDC6B5B8, v91);

  (v84[1])(v23, v28);
  v29 = *(v92 + 16);
  v30 = v82;
  v91 = v21;
  v29(v82, v21, v93);
  type metadata accessor for SectionsPublisherDataSource();
  swift_allocObject();
  v31 = sub_1BA1D6F20(v30);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v101[0] = xmmword_1EDC6D388;
  v101[1] = xmmword_1EDC6D398;
  v101[2] = xmmword_1EDC6D3A8;
  v101[3] = xmmword_1EDC6D3B8;
  v101[4] = xmmword_1EDC6D3C8;
  v101[5] = unk_1EDC6D3D8;
  v101[6] = xmmword_1EDC6D3E8;
  v101[7] = unk_1EDC6D3F8;
  v32 = xmmword_1EDC6D388;
  v33 = xmmword_1EDC6D398;
  v35 = xmmword_1EDC6D3A8;
  v34 = xmmword_1EDC6D3B8;
  v100 = qword_1EDC6D3E0;
  v98 = *(&xmmword_1EDC6D3B8 + 8);
  v99 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v101, v102);
  sub_1B9F1DA18(*(&v33 + 1), v35, *(&v35 + 1), v34);
  v85 = objc_opt_self();
  v36 = [v85 estimatedDimension_];

  v37 = *(MEMORY[0x1E69DC5C0] + 8);
  v39 = *(MEMORY[0x1E69DC5C0] + 16);
  v38 = *(MEMORY[0x1E69DC5C0] + 24);
  v40 = *MEMORY[0x1E69DC5C0] + 20.0;
  v41 = swift_allocObject();
  *(v41 + 16) = v32;
  *(v41 + 24) = v36;
  *(v41 + 32) = v33;
  v42 = v99;
  *(v41 + 72) = v98;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  *(v41 + 88) = v42;
  *(v41 + 104) = v100;
  *(v41 + 112) = v40;
  *(v41 + 120) = v37;
  *(v41 + 128) = v39;
  *(v41 + 136) = v38;
  v83 = type metadata accessor for DataSourceWithLayout;
  sub_1BA263920(0, &qword_1EBBEE330, type metadata accessor for SectionsPublisherDataSource, &protocol witness table for SectionsPublisherDataSource, type metadata accessor for DataSourceWithLayout);
  v43 = swift_allocObject();
  *(v43 + 16) = v31;
  v44 = *(v31 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v45 = *(v31 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier + 8);
  v84 = v43;
  *(v43 + 24) = v44;
  *(v43 + 32) = v45;
  *(v43 + 40) = 0;
  *(v43 + 48) = sub_1BA2637B4;
  *(v43 + 56) = v41;
  sub_1B9F63FF8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v46 = swift_allocObject();
  v82 = xmmword_1BA4B5480;
  *(v46 + 16) = xmmword_1BA4B5480;
  sub_1B9F40D10(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v47 = swift_allocObject();
  *(v47 + 16) = v82;
  v48 = sub_1BA4A2E48();

  v49 = sub_1BA4A2E18();
  v50 = MEMORY[0x1E69A3330];
  *(v47 + 56) = v48;
  *(v47 + 64) = v50;
  *(v47 + 32) = v49;
  v51 = v86;
  sub_1BA4A1788();
  *&v82 = sub_1BA4A1748();
  v53 = v52;
  v54 = v88;
  v55 = *(v87 + 8);
  v55(v51, v88);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v57 = Array<A>.identifierToIndexDict()(v56);

  *(v46 + 32) = 0;
  *(v46 + 40) = 0;
  *(v46 + 48) = v47;
  *(v46 + 56) = v57;
  *(v46 + 64) = v82;
  *(v46 + 72) = v53;
  *&v102[0] = 0x3C53447961727241;
  *(&v102[0] + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v58 = sub_1BA4A1748();
  v60 = v59;
  v55(v51, v54);
  MEMORY[0x1BFAF1350](v58, v60);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v61 = v102[0];
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v62 = sub_1B9F348D8(v46, v61, *(&v61 + 1));

  v102[0] = xmmword_1EDC6D388;
  v102[1] = xmmword_1EDC6D398;
  v102[2] = xmmword_1EDC6D3A8;
  v102[3] = xmmword_1EDC6D3B8;
  v102[4] = xmmword_1EDC6D3C8;
  v102[5] = unk_1EDC6D3D8;
  v102[6] = xmmword_1EDC6D3E8;
  v102[7] = unk_1EDC6D3F8;
  v63 = xmmword_1EDC6D388;
  v64 = xmmword_1EDC6D398;
  v65 = xmmword_1EDC6D3A8;
  v66 = xmmword_1EDC6D3B8;
  v95 = *(&xmmword_1EDC6D3B8 + 8);
  v96 = *(&xmmword_1EDC6D3C8 + 8);
  v97 = qword_1EDC6D3E0;
  sub_1B9F1D9A4(v102, &v94);
  sub_1B9F1DA18(*(&v64 + 1), v65, *(&v65 + 1), v66);
  v67 = [v85 estimatedDimension_];

  v68 = swift_allocObject();
  *(v68 + 16) = v63;
  *(v68 + 24) = v67;
  *(v68 + 32) = v64;
  *(v68 + 40) = 0u;
  *(v68 + 56) = 0u;
  v69 = v96;
  *(v68 + 72) = v95;
  *(v68 + 88) = v69;
  *(v68 + 104) = v97;
  *(v68 + 112) = v40;
  *(v68 + 120) = v37;
  *(v68 + 128) = v39 + 16.0;
  *(v68 + 136) = v38;
  sub_1BA263920(0, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, v83);
  v70 = swift_allocObject();
  *(v70 + 16) = v62;
  v71 = v62[5];
  v72 = v62[6];
  *(v70 + 24) = v71;
  *(v70 + 32) = v72;
  *(v70 + 40) = 0;
  *(v70 + 48) = sub_1BA263C70;
  *(v70 + 56) = v68;
  sub_1BA263838();
  swift_allocObject();

  v73 = sub_1BA063A28(v84, v70);

  (*(v92 + 8))(v91, v93);
  sub_1BA263920(0, &qword_1EBBEF3F8, sub_1BA263838, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for CellRegistering);
  v74 = swift_allocObject();
  v75 = v73[4];
  v74[2] = v73[3];
  v74[3] = v75;
  v74[4] = v73;
  v76 = swift_allocObject();
  v76[2] = v73;
  v76[3] = sub_1BA261740;
  v76[4] = 0;
  v74[5] = sub_1BA26398C;
  v74[6] = v76;

  return v74;
}

uint64_t sub_1BA2610BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1798();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for CloudProfileInformation();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA263A08(a1, v11);
  if (a2)
  {
    sub_1BA4A7658();
  }

  else
  {
    v12 = sub_1BA4A1728();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  sub_1B9F7B4F4(v8, &v11[*(v9 + 28)]);
  sub_1B9F63FF8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5480;
  sub_1B9F40D10(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5460;
  v15 = sub_1BA4A2E48();
  swift_allocObject();

  v16 = sub_1BA4A2E38();
  v17 = MEMORY[0x1E69A3330];
  *(v14 + 56) = v15;
  *(v14 + 64) = v17;
  *(v14 + 32) = v16;
  *(v14 + 96) = v9;
  *(v14 + 104) = sub_1B9F2AAA4(&qword_1EBBEF3C8, type metadata accessor for CloudProfileInformation);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  sub_1BA263A08(v11, boxed_opaque_existential_1);
  v19 = v26;
  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  (*(v27 + 8))(v19, v28);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = v14;
  v23 = Array<A>.identifierToIndexDict()(v14);

  *(v13 + 56) = v23;
  *(v13 + 64) = v20;
  *(v13 + 72) = v22;
  sub_1BA263A6C(v11, type metadata accessor for CloudProfileInformation);
  return v13;
}

uint64_t CloudProfileInformation.withImage()()
{
  sub_1BA4A2E48();
  swift_allocObject();

  return sub_1BA4A2E38();
}

uint64_t sub_1BA2614D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA263998();
  result = sub_1BA2610BC(a1, *(a1 + *(v4 + 48)));
  *a2 = result;
  return result;
}

uint64_t sub_1BA261518(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_1BA4A3D88();
  v7 = v6;
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v6;
    v18 = v11;
    *v10 = 136446210;
    v12 = v6;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v13 = sub_1BA4A6808();
    v15 = sub_1B9F0B82C(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1B9F07000, v8, v9, "Failed to fetch profileInfo: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v18 = MEMORY[0x1E69E7CC0];
  sub_1B9F63FF8(0, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
  return sub_1BA4A4E78();
}

uint64_t CloudProfileInformation.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CloudProfileInformation.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudProfileInformation.reuseIdentifier.getter()
{
  type metadata accessor for ProfileNameCell();
  sub_1BA262F74();
  return sub_1BA4A6808();
}

uint64_t CloudProfileInformation.firstName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CloudProfileInformation.firstName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CloudProfileInformation.lastName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CloudProfileInformation.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CloudProfileInformation.dateUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudProfileInformation() + 28);

  return sub_1BA246A0C(v3, a1);
}

uint64_t CloudProfileInformation.dateUpdated.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudProfileInformation() + 28);

  return sub_1B9F7B4F4(a1, v3);
}

uint64_t CloudProfileInformation.init(firstName:lastName:dateUpdated:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for CloudProfileInformation() + 28);
  v17 = sub_1BA4A1728();
  (*(*(v17 - 8) + 56))(a6 + v16, 1, 1, v17);
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;

  sub_1BA120C08(a5, a6 + v16);
  v23 = 0xD000000000000018;
  v24 = 0x80000001BA4F7280;
  MEMORY[0x1BFAF1350](a1, a2);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  if (a4)
  {
    v18 = a3;
  }

  else
  {
    v18 = 7104878;
  }

  if (!a4)
  {
    a4 = 0xE300000000000000;
  }

  MEMORY[0x1BFAF1350](v18, a4);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9F2AAA4(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v19 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v19);

  (*(v13 + 8))(v15, v12);
  v20 = v23;
  v21 = v24;
  result = sub_1BA263758(a5, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  *a6 = v20;
  a6[1] = v21;
  return result;
}

uint64_t CloudProfileInformation.hash(into:)()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (*(v0 + 40))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v8 = type metadata accessor for CloudProfileInformation();
  sub_1BA246A0C(v0 + *(v8 + 28), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_1BA4A84A8();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_1BA4A84A8();
  sub_1B9F2AAA4(&qword_1EDC6AE78, MEMORY[0x1E6969530]);
  sub_1BA4A66A8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t CloudProfileInformation.hashValue.getter()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (*(v0 + 40))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v8 = type metadata accessor for CloudProfileInformation();
  sub_1BA246A0C(v0 + *(v8 + 28), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1BA4A84A8();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1BA4A84A8();
    sub_1B9F2AAA4(&qword_1EDC6AE78, MEMORY[0x1E6969530]);
    sub_1BA4A66A8();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA262104()
{
  type metadata accessor for ProfileNameCell();
  sub_1BA262F74();
  return sub_1BA4A6808();
}

uint64_t sub_1BA26214C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (*(v2 + 40))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  sub_1BA246A0C(v2 + *(a2 + 28), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1BA4A84A8();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1BA4A84A8();
    sub_1B9F2AAA4(&qword_1EDC6AE78, MEMORY[0x1E6969530]);
    sub_1BA4A66A8();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA2623B4(uint64_t a1)
{
  v2 = sub_1B9F2AAA4(&qword_1EBBEF3E8, type metadata accessor for CloudProfileInformation);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA262434(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a4;
  v10[4] = sub_1BA263ACC;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BA0A2650;
  v10[3] = &block_descriptor_64;
  v9 = _Block_copy(v10);

  [a3 fetchAccountInfoWithCompletion_];
  _Block_release(v9);
}

uint64_t type metadata accessor for CloudProfileInformation()
{
  result = qword_1EBBEF3D8;
  if (!qword_1EBBEF3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA262574(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v97 = a4;
  v8 = sub_1BA4A3EA8();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v95 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v83 - v11;
  sub_1BA263510(0, &qword_1EBBEF408, type metadata accessor for CloudProfileInformation, MEMORY[0x1E69E75F0]);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v94 = (&v83 - v16);
  v17 = sub_1BA4A1798();
  v90 = *(v17 - 8);
  v91 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v87 = &v83 - v20;
  v21 = type metadata accessor for CloudProfileInformation();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v83 - v25;
  v26 = sub_1BA4A13E8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v83 - v31;
  if (!a1)
  {
    sub_1BA4A3D88();
    v57 = a2;
    v58 = sub_1BA4A3E88();
    v59 = sub_1BA4A6FA8();

    v60 = a2;
    if (os_log_type_enabled(v58, v59))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v98 = v62;
      *v61 = 136446466;
      v63 = sub_1BA4A85D8();
      v65 = sub_1B9F0B82C(v63, v64, &v98);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2082;
      v100 = v60;
      v66 = v60;
      sub_1B9F40D10(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v67 = sub_1BA4A6828();
      v69 = sub_1B9F0B82C(v67, v68, &v98);

      *(v61 + 14) = v69;
      _os_log_impl(&dword_1B9F07000, v58, v59, "[%{public}s]: Error fetching iCloud account info: %{public}s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v62, -1, -1);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
    }

    (*(v92 + 8))(v95, v93);
    v70 = v60;
    if (!v60)
    {
      sub_1BA263AD8();
      v70 = swift_allocError();
    }

    *v14 = v70;
    swift_storeEnumTagMultiPayload();
    v71 = v60;
    a3(v14);
    v72 = v14;
    return sub_1BA263B2C(v72);
  }

  v84 = v21;
  v95 = a3;
  v33 = a1;
  v34 = [v33 fullName];
  sub_1BA4A13C8();

  v35 = sub_1BA4A1378();
  v37 = v36;
  v38 = *(v27 + 8);
  v38(v32, v26);
  if (!v37)
  {
    v73 = v85;
    sub_1BA4A3D88();
    v74 = sub_1BA4A3E88();
    v75 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v98 = v77;
      *v76 = 136446210;
      v78 = sub_1BA4A85D8();
      v80 = sub_1B9F0B82C(v78, v79, &v98);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_1B9F07000, v74, v75, "[%{public}s]: Missing first name in iCloud account info", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1BFAF43A0](v77, -1, -1);
      MEMORY[0x1BFAF43A0](v76, -1, -1);
    }

    (*(v92 + 8))(v73, v93);
    sub_1BA263BB8();
    v81 = swift_allocError();
    v82 = v94;
    *v94 = v81;
    swift_storeEnumTagMultiPayload();
    v95(v82);

    v72 = v82;
    return sub_1BA263B2C(v72);
  }

  v83 = v33;
  v39 = [v33 fullName];
  sub_1BA4A13C8();

  v93 = v35;
  v40 = sub_1BA4A1398();
  v42 = v41;
  v38(v29, v26);
  v43 = sub_1BA4A1728();
  v44 = *(*(v43 - 8) + 56);
  v45 = v87;
  v44(v87, 1, 1, v43);
  v46 = *(v84 + 28);
  v44(v23 + v46, 1, 1, v43);
  v47 = v93;
  v23[2] = v93;
  v23[3] = v37;
  v23[4] = v40;
  v23[5] = v42;

  sub_1BA120C08(v45, v23 + v46);
  v98 = 0xD000000000000018;
  v99 = 0x80000001BA4F7280;
  MEMORY[0x1BFAF1350](v47, v37);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  if (v42)
  {
    v48 = v40;
  }

  else
  {
    v48 = 7104878;
  }

  if (!v42)
  {
    v42 = 0xE300000000000000;
  }

  MEMORY[0x1BFAF1350](v48, v42);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v49 = v88;
  sub_1BA4A1788();
  sub_1B9F2AAA4(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v50 = v91;
  v51 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v51);

  (*(v90 + 8))(v49, v50);
  v52 = v98;
  v53 = v99;
  sub_1BA263758(v45, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  *v23 = v52;
  v23[1] = v53;
  v54 = v89;
  sub_1BA263C0C(v23, v89);
  v55 = v94;
  sub_1BA263A08(v54, v94);
  swift_storeEnumTagMultiPayload();
  v95(v55);

  sub_1BA263B2C(v55);
  return sub_1BA263A6C(v54, type metadata accessor for CloudProfileInformation);
}

uint64_t sub_1BA262EEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for CloudProfileInformation();
  a2[4] = sub_1B9F2AAA4(&qword_1EBBEF420, type metadata accessor for CloudProfileInformation);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_1BA263A08(a1, boxed_opaque_existential_1);
}

unint64_t sub_1BA262F74()
{
  result = qword_1EDC6DAC8[0];
  if (!qword_1EDC6DAC8[0])
  {
    type metadata accessor for ProfileNameCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC6DAC8);
  }

  return result;
}

BOOL _s18HealthExperienceUI23CloudProfileInformationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  sub_1BA2510F0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BA4A8338() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16 || (a1[4] != a2[4] || v15 != v16) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(type metadata accessor for CloudProfileInformation() + 28);
  v18 = *(v12 + 48);
  sub_1BA246A0C(a1 + v17, v14);
  sub_1BA246A0C(a2 + v17, &v14[v18]);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) == 1)
  {
    if (v19(&v14[v18], 1, v4) == 1)
    {
      sub_1BA263758(v14, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      return 1;
    }

    goto LABEL_19;
  }

  sub_1BA246A0C(v14, v10);
  if (v19(&v14[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_19:
    sub_1BA263A6C(v14, sub_1BA2510F0);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v18], v4);
  sub_1B9F2AAA4(&qword_1EBBEF228, MEMORY[0x1E6969530]);
  v21 = sub_1BA4A6728();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_1BA263758(v14, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  return (v21 & 1) != 0;
}

void sub_1BA263424()
{
  sub_1B9F63FF8(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B9F3D6D0(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA263510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA26359C()
{
  if (!qword_1EBBEDDD8)
  {
    sub_1B9F0ADF8(255, &unk_1EBBEDDE0);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDDD8);
    }
  }
}

unint64_t sub_1BA263604()
{
  result = qword_1EBBEDDF0;
  if (!qword_1EBBEDDF0)
  {
    sub_1BA263510(255, &qword_1EBBEDDD0, sub_1BA26359C, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDDF0);
  }

  return result;
}

void sub_1BA26368C()
{
  if (!qword_1EBBEDDA8)
  {
    sub_1BA1DAC5C();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1B9F2AAA4(&qword_1EBBEDE20, sub_1BA1DAC5C);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDDA8);
    }
  }
}

uint64_t sub_1BA263758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F3D6D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = *(v0 + 56);
  if (v1)
  {
  }

  v2 = *(v0 + 88);
  if (v2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

void sub_1BA263838()
{
  if (!qword_1EBBEF3F0)
  {
    sub_1BA263920(255, &qword_1EBBEE330, type metadata accessor for SectionsPublisherDataSource, &protocol witness table for SectionsPublisherDataSource, type metadata accessor for DataSourceWithLayout);
    sub_1BA263920(255, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, type metadata accessor for DataSourceWithLayout);
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF3F0);
    }
  }
}

void sub_1BA263920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1BA263998()
{
  if (!qword_1EBBEF400)
  {
    type metadata accessor for CloudProfileInformation();
    sub_1BA26359C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEF400);
    }
  }
}

uint64_t sub_1BA263A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudProfileInformation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA263A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA263AD8()
{
  result = qword_1EBBEF410;
  if (!qword_1EBBEF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF410);
  }

  return result;
}

uint64_t sub_1BA263B2C(uint64_t a1)
{
  sub_1BA263510(0, &qword_1EBBEF408, type metadata accessor for CloudProfileInformation, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA263BB8()
{
  result = qword_1EBBEF418;
  if (!qword_1EBBEF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF418);
  }

  return result;
}

uint64_t sub_1BA263C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudProfileInformation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA263C94(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1BA263CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA263D60(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A12C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1BA263E78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA263F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA263FF0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5CCC4(a1, v6, sub_1B9F51474);
  v7 = *a2;
  v8 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  sub_1B9F426D0(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1BA2640BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  return sub_1B9F5CCC4(v1 + v3, a1, sub_1B9F51474);
}

uint64_t sub_1BA264128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  sub_1B9F426D0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA2641E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;
}

uint64_t sub_1BA264254(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

uint64_t sub_1BA2642D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t sub_1BA264340(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

uint64_t AudioExposureCurrentValueView.ViewModel.__allocating_init(classification:supratitleString:primaryString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v16 = *a4;
  v9 = *(a4 + 2);
  v10 = *(a4 + 24);
  v11 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  v12 = sub_1BA4A12C8();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v8 + v11, 1, 1, v12);
  v14 = v8 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 0;
  *(v8 + 16) = a1;
  (*(v13 + 32))(v8 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString, a3, v12);
  swift_beginAccess();
  sub_1B9F426D0(a2, v8 + v11);
  swift_endAccess();
  swift_beginAccess();
  *v14 = v16;
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;

  return v8;
}

uint64_t AudioExposureCurrentValueView.ViewModel.init(classification:supratitleString:primaryString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v15 = *a4;
  v8 = *(a4 + 2);
  v9 = *(a4 + 24);
  v10 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  v11 = sub_1BA4A12C8();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v4 + v10, 1, 1, v11);
  v13 = v4 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *v13 = 0;
  *(v4 + 16) = a1;
  (*(v12 + 32))(v4 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString, a3, v11);
  swift_beginAccess();
  sub_1B9F426D0(a2, v4 + v10);
  swift_endAccess();
  swift_beginAccess();
  *v13 = v15;
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;

  return v4;
}

uint64_t AudioExposureCurrentValueView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudioExposureCurrentValueView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudioExposureCurrentValueView.ViewModel.init(from:)(void *a1)
{
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v52 - v6;
  v62 = sub_1BA4A1278();
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A12C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  sub_1BA265728(0, &qword_1EBBEF428, MEMORY[0x1E69E6F48]);
  v15 = *(v14 - 8);
  v66 = v14;
  v67 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v63 = v9;
  v21 = *(v9 + 56);
  v19 = v9 + 56;
  v20 = v21;
  v69 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  (v21)(v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString, 1, 1, v8, v16);
  v76 = v1;
  v22 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v68 = v22;
  *v22 = 0;
  v23 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1BA264F20();
  v24 = v70;
  sub_1BA4A8528();
  if (v24)
  {
    v28 = v76;
    sub_1BA267CCC(v76 + v69, sub_1B9F51474);

    type metadata accessor for AudioExposureCurrentValueView.ViewModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v65;
    *&v70 = v13;
    v57 = v20;
    v58 = v19;
    type metadata accessor for HKAudioExposureClassification(0);
    v72 = 0;
    sub_1B9F893A8(&qword_1EBBEF430, type metadata accessor for HKAudioExposureClassification);
    v26 = v66;
    sub_1BA4A81C8();
    v28 = v76;
    *(v76 + 16) = v73;
    LOBYTE(v73) = 1;
    v29 = v25;
    v30 = v8;
    v56 = sub_1B9F893A8(&qword_1EDC6AEA8, MEMORY[0x1E6968848]);
    sub_1BA4A81C8();
    v31 = v63;
    v32 = *(v63 + 16);
    v33 = v29;
    v34 = v70;
    v54 = v63 + 16;
    v53 = v32;
    v32(v70, v33, v8);
    v35 = v61;
    sub_1BA4A1288();
    sub_1B9F4D364(v35, v34);
    v36 = v18;
    v55 = 0;
    v37 = v64 + 8;
    v52 = *(v64 + 8);
    v52(v35, v62);
    v38 = v31 + 8;
    v65 = *(v31 + 8);
    (v65)(v33, v30);
    (*(v31 + 32))(v28 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString, v34, v30);
    LOBYTE(v73) = 2;
    v39 = v60;
    v40 = v55;
    sub_1BA4A8178();
    if (v40)
    {

      (*(v67 + 8))(v36, v26);
    }

    else
    {
      v56 = v38;
      v41 = v52;
      v42 = v53;
      v64 = v37;
      v43 = v39;
      *&v70 = v36;
      if ((*(v63 + 48))(v39, 1, v30) == 1)
      {
        sub_1BA267CCC(v39, sub_1B9F51474);
        v44 = 1;
        v45 = v59;
      }

      else
      {
        v45 = v59;
        v42(v59, v43, v30);
        v46 = v61;
        sub_1BA4A1288();
        sub_1B9F4D364(v46, v45);
        v41(v46, v62);
        (v65)(v43, v30);
        v44 = 0;
      }

      v57(v45, v44, 1, v30);
      v28 = v76;
      v47 = v69;
      swift_beginAccess();
      sub_1B9F426D0(v45, v28 + v47);
      swift_endAccess();
      v72 = 3;
      sub_1B9F73860();
      v48 = v70;
      sub_1BA4A8178();
      (*(v67 + 8))(v48, v26);
      v70 = v73;
      v49 = v74;
      v50 = v75;
      v51 = v68;
      swift_beginAccess();
      *v51 = v70;
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v71);
  return v28;
}

unint64_t sub_1BA264F20()
{
  result = qword_1EDC64170;
  if (!qword_1EDC64170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64170);
  }

  return result;
}

uint64_t type metadata accessor for AudioExposureCurrentValueView.ViewModel()
{
  result = qword_1EDC64150;
  if (!qword_1EDC64150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA264FC0()
{
  v1 = 0x6966697373616C63;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x537972616D697270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA265058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA267B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA265080(uint64_t a1)
{
  v2 = sub_1BA264F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2650BC(uint64_t a1)
{
  v2 = sub_1BA264F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioExposureCurrentValueView.ViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA267CCC(v0 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString, sub_1B9F51474);

  return v0;
}

uint64_t AudioExposureCurrentValueView.ViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA267CCC(v0 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString, sub_1B9F51474);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA265264(void *a1)
{
  v2 = v1;
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A12C8();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA265728(0, &qword_1EDC5DD48, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA264F20();
  sub_1BA4A8548();
  swift_beginAccess();
  v27 = *(v2 + 16);
  v30 = 0;
  type metadata accessor for HKAudioExposureClassification(0);
  sub_1B9F893A8(&qword_1EDC5E278, type metadata accessor for HKAudioExposureClassification);
  v15 = v26;
  sub_1BA4A8288();
  if (v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v26 = v6;
  v17 = v12;
  v18 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v24 + 16))(v9, v2 + v18, v25);
  LOBYTE(v27) = 1;
  sub_1B9F893A8(&qword_1EDC6AEB8, MEMORY[0x1E6968848]);
  sub_1BA4A8288();
  (*(v24 + 8))(v9, v25);
  v19 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  v20 = v26;
  sub_1B9F5CCC4(v2 + v19, v26, sub_1B9F51474);
  LOBYTE(v27) = 2;
  sub_1BA4A8238();
  sub_1BA267CCC(v20, sub_1B9F51474);
  v21 = (v2 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration);
  swift_beginAccess();
  v22 = *(v21 + 24);
  v27 = *v21;
  v28 = *(v21 + 1);
  v29 = v22;
  v31 = 3;
  sub_1BA102B04();

  sub_1BA4A8238();

  return (*(v17 + 8))(v14, 0);
}

void sub_1BA265728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA264F20();
    v7 = a3(a1, &type metadata for AudioExposureCurrentValueView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA26578C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioExposureCurrentValueView.ViewModel();
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1BA2657CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AudioExposureCurrentValueView.ViewModel();
  v5 = swift_allocObject();
  result = AudioExposureCurrentValueView.ViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t AudioExposureCurrentValueView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for AudioExposureCurrentValueView.ViewModel();
  sub_1B9F893A8(&qword_1EBBEF438, type metadata accessor for AudioExposureCurrentValueView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
  return result;
}

void AudioExposureCurrentValueView.body.getter(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 25);
  *a1 = sub_1BA4A5878();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA267F1C(0, &qword_1EBBEF440, sub_1BA266114);
  sub_1BA2659F4(&v9, a1 + *(v4 + 44));
  v5 = sub_1BA4A60A8();
  v6 = sub_1BA4A5B78();
  sub_1BA2663C0(0, &qword_1EBBEF488, sub_1BA266434, sub_1B9F53864);
  v8 = a1 + *(v7 + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
}

uint64_t sub_1BA2659F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_1BA26619C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46[-v6];
  v8 = sub_1BA4A5718();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F89310(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v46[-v11];
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1BA4A12C8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46[-v20];
  sub_1B9F52ED4(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v55 = &v46[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46[-v25];
  v27 = *(a1 + 8);
  v28 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  sub_1B9F5CCC4(v27 + v28, v14, sub_1B9F51474);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BA267CCC(v14, sub_1B9F51474);
    v29 = 1;
    v30 = a1;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v31 = *(v16 + 16);
    v50 = v21;
    v31(v18, v21, v15);
    v49 = sub_1BA4A5E08();
    v62 = v49;
    v63 = v32;
    v48 = v32;
    v47 = v33;
    v64 = v33 & 1;
    v65 = v34;
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();
    v66 = *(a1 + 24);
    v67 = *(a1 + 40);
    v35 = v66;
    v30 = a1;
    if (v67 == 1)
    {
      v36 = *(&v66 + 1);
    }

    else
    {

      sub_1BA4A6FB8();
      v37 = sub_1BA4A5B28();
      v30 = a1;
      sub_1BA4A3CA8();

      v38 = v51;
      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA0D5CF0(&v66);
      (*(v52 + 8))(v38, v53);

      v35 = v60;
      v36 = v61;
    }

    v60 = v35;
    v61 = v36;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v39 = v54;
    sub_1BA4A5F18();

    sub_1BA102AF4(v49, v48, v47 & 1);

    (*(v16 + 8))(v50, v15);
    sub_1BA267FD8(v39, v26);
    v29 = 0;
  }

  (*(v56 + 56))(v26, v29, 1, v57);
  *v7 = sub_1BA4A5798();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  sub_1BA267F1C(0, &qword_1EBBEF4D8, sub_1BA266230);
  sub_1BA2664C8(v30, &v7[*(v40 + 44)]);
  v41 = v55;
  sub_1B9F5CCC4(v26, v55, sub_1B9F52ED4);
  v42 = v59;
  sub_1B9F5CCC4(v7, v59, sub_1BA26619C);
  v43 = v58;
  sub_1B9F5CCC4(v41, v58, sub_1B9F52ED4);
  sub_1BA2662B8(0, &qword_1EBBEF450, sub_1B9F52ED4, sub_1BA26619C);
  sub_1B9F5CCC4(v42, v43 + *(v44 + 48), sub_1BA26619C);
  sub_1BA267CCC(v7, sub_1BA26619C);
  sub_1BA267CCC(v26, sub_1B9F52ED4);
  sub_1BA267CCC(v42, sub_1BA26619C);
  return sub_1BA267CCC(v41, sub_1B9F52ED4);
}

void sub_1BA266114()
{
  if (!qword_1EBBEF448)
  {
    sub_1BA2662B8(255, &qword_1EBBEF450, sub_1B9F52ED4, sub_1BA26619C);
    v0 = sub_1BA4A6428();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF448);
    }
  }
}

void sub_1BA26619C()
{
  if (!qword_1EBBEF458)
  {
    sub_1BA266230();
    sub_1B9F893A8(&qword_1EBBEF480, sub_1BA266230);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF458);
    }
  }
}

void sub_1BA266230()
{
  if (!qword_1EBBEF460)
  {
    sub_1BA2662B8(255, &qword_1EBBEF468, sub_1BA266334, sub_1B9F530BC);
    v0 = sub_1BA4A6428();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF460);
    }
  }
}

void sub_1BA2662B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1BA266334()
{
  if (!qword_1EBBEF470)
  {
    sub_1BA267F88(255, &qword_1EBBEF478, &type metadata for AudioExposureCurrentValueView.PaletteSymbolView, MEMORY[0x1E69E6720]);
    sub_1BA4A5B18();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF470);
    }
  }
}

void sub_1BA2663C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA266434()
{
  if (!qword_1EBBEF490)
  {
    sub_1BA266114();
    sub_1B9F893A8(&qword_1EBBEF498, sub_1BA266114);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF490);
    }
  }
}

uint64_t sub_1BA2664C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = sub_1BA4A12C8();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v79);
  v6 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F532BC();
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5323C(0);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F530BC(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v72 - v16;
  v18 = sub_1BA4A5718();
  v83 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v81 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA266334();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v94 = v72 - v24;
  v25 = objc_opt_self();
  v78 = a1;
  v26 = *(a1 + 8);
  swift_beginAccess();
  v27 = [v25 hk:*(v26 + 16) hearingHealthAudioExposureColorForClassification:?];
  v90 = a2;
  v89 = v14;
  v88 = v17;
  v87 = v22;
  v86 = v11;
  v84 = v6;
  if (v27)
  {
    v28 = 0xD000000000000015;
    v29 = *(v26 + 16);
    if (v29 == 2)
    {
      v30 = "ure header in section ";
      v28 = 0xD00000000000001DLL;
      goto LABEL_6;
    }

    if (v29 == 1)
    {
      v30 = "name configuration ";
LABEL_6:
      v31 = v30 | 0x8000000000000000;
      sub_1B9F6B774(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DB958], 0, 0, 1, 0, 1);
      v32 = sub_1BA4A5D78();
      v33 = [v25 hk_hearingHealthAudioExposureBackground];
      v34 = sub_1BA4A6048();
      v35 = sub_1BA4A6048();
      goto LABEL_9;
    }
  }

  v28 = 0;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
LABEL_9:
  v99 = v28;
  v100 = v31;
  v75 = v31;
  v101 = v32;
  v102 = v34;
  v103 = v35;
  v36 = v78;
  v104 = *(v78 + 24);
  v105 = *(v78 + 40);
  v37 = v104;
  v76 = v105;
  v73 = v18;
  v72[1] = *(&v104 + 1);
  v77 = v104;
  if (v105 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v38 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v39 = v81;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v104);
    (*(v83 + 8))(v39, v18);
    v37 = v97;
    v40 = v98;
  }

  v97 = v37;
  v98 = v40;
  MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
  sub_1BA267F88(0, &qword_1EBBEF478, &type metadata for AudioExposureCurrentValueView.PaletteSymbolView, MEMORY[0x1E69E6720]);
  sub_1BA268060();
  sub_1BA4A5F18();

  sub_1BA268150(v28, v75);
  v41 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v92 + 16))(v91, v26 + v41, v93);
  v42 = v26 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v43 = *(v42 + 8);
  v75 = *v42;
  v74 = *(v42 + 16);
  v44 = *(v42 + 24);
  v45 = *(v36 + 16);
  if (v45)
  {
    v46 = (v45 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration);
    swift_beginAccess();
    v48 = *v46;
    v47 = v46[1];
    v49 = v46[2];
    v50 = *(v46 + 24);
  }

  else
  {
    v48 = 0;
    v47 = 0;
    v49 = 0;
    v50 = 0;
  }

  v51 = v79;
  v52 = v84;
  v53 = &v84[*(v79 + 20)];
  *v53 = 0;
  *(v53 + 1) = 0;
  v53[24] = 0;
  *(v53 + 2) = 0;
  v54 = v52 + *(v51 + 24);
  *v54 = 0;
  *(v54 + 8) = 0;
  *(v54 + 24) = 0;
  *(v54 + 16) = 0;
  (*(v92 + 32))(v52, v91, v93);

  *v53 = v75;
  *(v53 + 1) = v43;
  *(v53 + 2) = v74;
  v53[24] = v44;

  *v54 = v48;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49;
  *(v54 + 24) = v50;
  KeyPath = swift_getKeyPath();
  v56 = v82;
  sub_1B9F5CCC4(v52, v82, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v57 = v56 + *(v80 + 36);
  *v57 = KeyPath;
  *(v57 + 8) = 0;
  sub_1BA267CCC(v52, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v58 = swift_getKeyPath();
  v59 = v86;
  sub_1BA2681B4(v56, v86);
  v60 = v59 + *(v85 + 36);
  *v60 = v58;
  *(v60 + 8) = 0;
  *(v60 + 16) = 1;
  if (v76)
  {

    v62 = v89;
    v63 = v88;
    v64 = v87;
    v65 = v77;
  }

  else
  {

    sub_1BA4A6FB8();
    v66 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v67 = v81;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v104);
    (*(v83 + 8))(v67, v73);
    v65 = v95;
    v61 = v96;
    v62 = v89;
    v63 = v88;
    v64 = v87;
  }

  v95 = v65;
  v96 = v61;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1B9F5D988();
  sub_1BA4A5F18();

  sub_1BA267CCC(v59, sub_1B9F5323C);
  v68 = v94;
  sub_1B9F5CCC4(v94, v64, sub_1BA266334);
  sub_1B9F5CCC4(v63, v62, sub_1B9F530BC);
  v69 = v90;
  sub_1B9F5CCC4(v64, v90, sub_1BA266334);
  sub_1BA2662B8(0, &qword_1EBBEF468, sub_1BA266334, sub_1B9F530BC);
  sub_1B9F5CCC4(v62, v69 + *(v70 + 48), sub_1B9F530BC);
  sub_1BA267CCC(v63, sub_1B9F530BC);
  sub_1BA267CCC(v68, sub_1BA266334);
  sub_1BA267CCC(v62, sub_1B9F530BC);
  return sub_1BA267CCC(v64, sub_1BA266334);
}

uint64_t sub_1BA266F34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1B9F89168();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  v8 = sub_1BA4A6128();
  sub_1B9F89310(0, &qword_1EDC5F140, sub_1B9F89374);
  v10 = (v7 + *(v9 + 36));
  sub_1B9F89374(0);
  v12 = *(v11 + 28);
  v13 = *MEMORY[0x1E69816C8];
  v14 = sub_1BA4A6188();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  *v10 = swift_getKeyPath();
  *v7 = v8;
  v15 = v2[2];
  KeyPath = swift_getKeyPath();
  v17 = (v7 + *(v5 + 36));
  *v17 = KeyPath;
  v17[1] = v15;

  sub_1BA4A5CA8();
  sub_1B9F8920C();
  sub_1BA4A5E98();
  sub_1BA267CCC(v7, sub_1B9F89168);
  sub_1BA267D2C(0);
  v19 = (a1 + *(v18 + 36));
  sub_1BA267DE4(0);
  v21 = *(v20 + 28);
  sub_1BA4A58A8();
  v22 = sub_1BA4A58B8();
  (*(*(v22 - 8) + 56))(v19 + v21, 0, 1, v22);
  *v19 = swift_getKeyPath();
  v23 = v2[3];
  v24 = v2[4];
  sub_1BA2663C0(0, &qword_1EBBEF4C8, sub_1BA267D2C, sub_1BA267EB0);
  v26 = (a1 + *(v25 + 36));
  *v26 = v23;
  v26[1] = v24;
}

uint64_t sub_1BA2671B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for AudioExposureCurrentValueView.ViewModel();
  sub_1B9F893A8(&qword_1EBBEF438, type metadata accessor for AudioExposureCurrentValueView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
  return result;
}

unint64_t sub_1BA26726C(uint64_t a1)
{
  result = sub_1BA267294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA267294()
{
  result = qword_1EDC64020;
  if (!qword_1EDC64020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64020);
  }

  return result;
}

void sub_1BA267304(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 25);
  *a1 = sub_1BA4A5878();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA267F1C(0, &qword_1EBBEF440, sub_1BA266114);
  sub_1BA2659F4(&v9, a1 + *(v4 + 44));
  v5 = sub_1BA4A60A8();
  v6 = sub_1BA4A5B78();
  sub_1BA2663C0(0, &qword_1EBBEF488, sub_1BA266434, sub_1B9F53864);
  v8 = a1 + *(v7 + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
}

void sub_1BA267518()
{
  sub_1BA4A12C8();
  if (v0 <= 0x3F)
  {
    sub_1B9F51474(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BA267838()
{
  result = qword_1EBBEF4A0;
  if (!qword_1EBBEF4A0)
  {
    sub_1BA2663C0(255, &qword_1EBBEF488, sub_1BA266434, sub_1B9F53864);
    sub_1B9F893A8(&qword_1EBBEF4A8, sub_1BA266434);
    sub_1B9F893A8(&qword_1EDC5ECD8, sub_1B9F53864);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4A0);
  }

  return result;
}

unint64_t sub_1BA26796C()
{
  result = qword_1EBBEF4B0;
  if (!qword_1EBBEF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4B0);
  }

  return result;
}

unint64_t sub_1BA2679E0()
{
  result = qword_1EDC64160;
  if (!qword_1EDC64160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64160);
  }

  return result;
}

unint64_t sub_1BA267A38()
{
  result = qword_1EDC64168;
  if (!qword_1EDC64168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64168);
  }

  return result;
}

uint64_t sub_1BA267AB0(uint64_t a1)
{
  sub_1BA267E18(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B9F5CCC4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1BA267E18);
  return sub_1BA4A5658();
}

uint64_t sub_1BA267B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x537972616D697270 && a2 == 0xED0000676E697274 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4EAEC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA4EAEF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA267CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA267D60()
{
  if (!qword_1EBBEF4C0)
  {
    sub_1B9F89168();
    sub_1B9F8920C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEF4C0);
    }
  }
}

void sub_1BA267E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA267EB0()
{
  if (!qword_1EBBEF4D0)
  {
    v0 = sub_1BA4A5A28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF4D0);
    }
  }
}

void sub_1BA267F1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A52C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA267F88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA267FD8(uint64_t a1, uint64_t a2)
{
  sub_1B9F89310(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA268060()
{
  result = qword_1EBBEF4E0;
  if (!qword_1EBBEF4E0)
  {
    sub_1BA267F88(255, &qword_1EBBEF478, &type metadata for AudioExposureCurrentValueView.PaletteSymbolView, MEMORY[0x1E69E6720]);
    sub_1BA2680FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4E0);
  }

  return result;
}

unint64_t sub_1BA2680FC()
{
  result = qword_1EBBEF4E8;
  if (!qword_1EBBEF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4E8);
  }

  return result;
}

uint64_t sub_1BA268150(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BA2681B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F532BC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA268218()
{
  result = qword_1EBBEF4F0;
  if (!qword_1EBBEF4F0)
  {
    sub_1BA2663C0(255, &qword_1EBBEF4C8, sub_1BA267D2C, sub_1BA267EB0);
    sub_1BA2682F8();
    sub_1B9F893A8(&unk_1EBBEF500, sub_1BA267EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4F0);
  }

  return result;
}

unint64_t sub_1BA2682F8()
{
  result = qword_1EBBEF4F8;
  if (!qword_1EBBEF4F8)
  {
    sub_1BA267D2C(255);
    sub_1B9F89168();
    sub_1B9F8920C();
    swift_getOpaqueTypeConformance2();
    sub_1B9F893A8(&qword_1EDC5EC60, sub_1BA267DE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4F8);
  }

  return result;
}

double sub_1BA2683D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  v8 = v5 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v7;
  if (v8 || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_11;
  }

  v9 = v5 == 0xD000000000000033 && 0x80000001BA4E92D0 == v7;
  if (v9 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000028 && 0x80000001BA4F7330 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD00000000000003ALL && 0x80000001BA4F7360 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000035 && 0x80000001BA4F73A0 == v7 || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v5 == 0xD00000000000002ELL && 0x80000001BA4F73E0 == v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v10 = a2;
    v11 = a1;
    goto LABEL_13;
  }

  if (v5 == 0xD00000000000001ELL && 0x80000001BA4F7410 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000030 && 0x80000001BA4F7430 == v7)
  {
LABEL_11:

LABEL_12:
    v10 = a2;
    v11 = a1;
LABEL_13:
    sub_1B9FC8434(v11, v10);
    return result;
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {
    goto LABEL_12;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

char *SummarySharingProfileGradientsProvider.__allocating_init(context:predicates:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1BA26BC68(a1, a2);

  return v6;
}

unint64_t sub_1BA268750(unint64_t result, size_t *a2, uint64_t a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_1BA268FB4(&v11, a2, a3);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1BA4A7CC8();
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_1BA268864(void **a1)
{
  v2 = *(type metadata accessor for CategoryMetadata() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BA2F67C0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BA269AC0(v5);
  *a1 = v3;
}

char *SummarySharingProfileGradientsProvider.init(context:predicates:)(void *a1, void *a2)
{
  v3 = sub_1BA26BC68(a1, a2);

  return v3;
}

uint64_t sub_1BA268940(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController);
  v28[0] = 0;
  if ([v7 performFetch_])
  {
    v8 = v28[0];
    v9 = [v7 sections];
    if (v9)
    {
      v10 = v9;
      sub_1BA024D28();
      v11 = sub_1BA4A6B08();
    }

    else
    {
      v11 = 0;
    }

    sub_1BA268D68(v11);
  }

  else
  {
    v12 = v28[0];
    v13 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3E28();
    v14 = v13;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136315394;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v27 = v13;
      v22 = v13;
      sub_1B9FED358();
      v23 = sub_1BA4A6828();
      v25 = sub_1B9F0B82C(v23, v24, v28);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] fetchedResultsController threw an error during performFetch: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BA268C40()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController) sections];
  if (v1)
  {
    v2 = v1;
    sub_1BA024D28();
    v3 = sub_1BA4A6B08();
  }

  else
  {
    v3 = 0;
  }

  sub_1BA268D68(v3);
}

uint64_t sub_1BA268D68(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1BA268750(a1, &v20, ObjectType);
    v8 = v20;
    v9 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_categoriesMetadata;
    swift_beginAccess();
    *(v1 + v9) = v8;

    swift_beginAccess();
    sub_1BA268864((v1 + v9));
    swift_endAccess();
    sub_1BA24F418();
  }

  else
  {
    sub_1BA4A3E28();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Unable to find sections from fetchedResultsController", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BA268FB4(id *a1, size_t *a2, uint64_t a3)
{
  v86 = a3;
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v73 - v6;
  v82 = type metadata accessor for CategoryMetadata();
  v7 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v73 - v19;
  v20 = *a1;
  v21 = [*a1 objects];
  if (!v21)
  {
    goto LABEL_17;
  }

  v80 = v20;
  v85 = v13;
  v22 = v21;
  v23 = sub_1BA4A6B08();

  if (!v23[2])
  {

    v13 = v85;
    goto LABEL_17;
  }

  v81 = v14;
  v76 = v12;
  v77 = v9;
  v78 = v7;
  v79 = a2;
  v24 = v23 + 4;
  sub_1B9F0AD9C((v23 + 4), v89);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_16:
    v13 = v85;
    v14 = v81;
LABEL_17:
    sub_1BA4A3E28();
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89[0] = v38;
      *v37 = 136315138;
      v39 = sub_1BA4A85D8();
      v41 = v14;
      v42 = sub_1B9F0B82C(v39, v40, v89);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%s] unable to look up feeditem or feeditem's associatedDisplayCategory from section", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);

      return (*(v41 + 8))(v16, v13);
    }

    else
    {

      return (*(v14 + 8))(v16, v13);
    }
  }

  v25 = v88[0];
  v26 = sub_1BA4A2648();
  if (!v26)
  {

    goto LABEL_16;
  }

  v74 = v26;
  v75 = v25;
  v27 = v23[2];
  if (v27)
  {
    v90 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v27, 0);
    v28 = 0;
    v29 = v90;
    v30 = v87;
    while (1)
    {
      if (v28 >= v23[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_1B9F0AD9C(v24, v89);
      sub_1BA2697E4(v89, v88);
      if (v30)
      {
        break;
      }

      v30 = 0;
      __swift_destroy_boxed_opaque_existential_1(v89);
      v31 = v88[0];
      v16 = v88[1];
      v90 = v29;
      v9 = *(v29 + 16);
      v32 = *(v29 + 24);
      v33 = v29;
      if (v9 >= v32 >> 1)
      {
        v87 = 0;
        sub_1B9F1C360((v32 > 1), v9 + 1, 1);
        v30 = v87;
        v33 = v90;
      }

      ++v28;
      *(v33 + 16) = v9 + 1;
      v34 = v33 + 16 * v9;
      *(v34 + 32) = v31;
      *(v34 + 40) = v16;
      v24 += 4;
      v29 = v33;
      if (v27 == v28)
      {
        v87 = v30;

        goto LABEL_21;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v89);

    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v44 = v84;
    sub_1BA4A3E28();
    v45 = v80;
    swift_unknownObjectRetain();

    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FC8();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v89[0] = v73;
      *v48 = 136315650;
      v49 = sub_1BA4A85D8();
      v51 = v29;
      v52 = sub_1B9F0B82C(v49, v50, v89);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v53 = [v45 name];
      v54 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v56 = v55;

      v57 = sub_1B9F0B82C(v54, v56, v89);

      *(v48 + 14) = v57;
      *(v48 + 22) = 2080;
      v58 = MEMORY[0x1BFAF1560](v51, MEMORY[0x1E69E6158]);
      v60 = v59;

      v61 = sub_1B9F0B82C(v58, v60, v89);

      *(v48 + 24) = v61;
      _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] got section %s: %s", v48, 0x20u);
      v62 = v73;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v62, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);

      (*(v81 + 8))(v84, v85);
    }

    else
    {

      (*(v81 + 8))(v44, v85);
    }

    v9 = v78;
    v16 = v79;
    v24 = v76;
    v29 = v77;
    v63 = v83;
    v23 = v75;
    v64 = [v45 numberOfObjects];
    v65 = [v23 relevantEndDate];
    if (v65)
    {
      v66 = v65;
      sub_1BA4A16F8();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v68 = sub_1BA4A1728();
    (*(*(v68 - 8) + 56))(v63, v67, 1, v68);
    *v24 = v74;
    v24[1] = v64;
    sub_1B9FD84F0(v63, v24 + *(v82 + 24));
    sub_1BA26C478(v24, v29);
    v30 = *v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_32:
      v30 = sub_1BA27F43C(0, v30[2] + 1, 1, v30);
      *v16 = v30;
    }

    v71 = v30[2];
    v70 = v30[3];
    if (v71 >= v70 >> 1)
    {
      *v16 = sub_1BA27F43C(v70 > 1, v71 + 1, 1, v30);
    }

    sub_1BA26C4DC(v24);
    v72 = *v16;
    v72[2] = v71 + 1;
    return sub_1BA26C538(v29, v72 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v71);
  }

  return result;
}