uint64_t sub_1BA0EDF38(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1BA0F9EF0(v8, a2, a3, v3, v6, v7);
}

uint64_t sub_1BA0EDF9C(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = *v2;
  v50 = a1;
  v5 = sub_1BA4A3EA8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v15 = *(v11 + 16);
  v15(v13, &v3[v14], v10);
  v16 = sub_1BA4A4548();
  v17 = *(v11 + 8);
  v17(v13, v10);
  v18 = v16 < a2;
  v19 = a2;
  if (!v18)
  {
    v15(v13, &v3[v14], v10);
    v29 = sub_1BA4A4548();
    v17(v13, v10);
    if (v29 == v19)
    {
      sub_1BA0F12C8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BA4B5480;
      sub_1B9F0A534(v50, v30 + 32);
      v31 = v46;
      sub_1BA4A1788();
      v32 = sub_1BA4A1748();
      v34 = v33;
      (*(v47 + 8))(v31, v48);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v36 = v19;
      v37 = Array<A>.identifierToIndexDict()(v35);

      v54 = 0uLL;
      v55 = v30;
      v56 = v37;
      v57 = v32;
      v58 = v34;
      sub_1BA0E8FD4(&v54, v36);
    }

    v15(v13, &v3[v14], v10);
    v38 = sub_1BA4A4578();
    result = (v17)(v13, v10);
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v38 + 16) > v19)
    {
      v39 = v38 + 16 * v19;
      v40 = *(v39 + 32);
      v41 = *(v39 + 40);

      v42 = v50[3];
      v43 = v50[4];
      v44 = __swift_project_boxed_opaque_existential_1(v50, v42);
      sub_1BA0F9EF0(v44, v40, v41, v3, v42, v43);
    }

    __break(1u);
    return result;
  }

  v20 = v51;
  sub_1BA4A3D88();
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v54 = v24;
    *v23 = 136315650;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, &v54);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1B9F0B82C(0xD00000000000001CLL, 0x80000001BA4EAB70, &v54);
    *(v23 + 22) = 2048;
    *(v23 + 24) = v19;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] %s Failed to append item to section with index: %ld, because it doesn't exist.", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  return (*(v52 + 8))(v20, v53);
}

unint64_t sub_1BA0EE51C(uint64_t a1)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - v6;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v35 = v1;
  v9(v7, v1 + v8, v4);
  v10 = sub_1BA4A4578();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v36 = a1;
  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v10 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v10 + 16 * result;
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);

  v16 = v14;

  v17 = v35;
  v9(v7, v35 + v8, v4);
  v18 = v15;
  *&v39[0] = v16;
  *(&v39[0] + 1) = v15;
  v19 = sub_1BA4A4528();
  v11(v7, v4);
  result = sub_1BA4A1958();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v19 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v20 = v19 + 16 * result;
  v21 = *(v20 + 32);
  v22 = *(v20 + 40);

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5480;
  v34 = v21;
  *(v23 + 32) = v21;
  *(v23 + 40) = v22;
  swift_beginAccess();

  sub_1BA4A4458();
  swift_endAccess();

  v24 = sub_1BA0E7AC0();
  v26 = sub_1BA0F0994(v37, v16, v18);
  if (*(v25 + 16))
  {
    v27 = v25;
    v28 = sub_1BA4A1958();
    sub_1BA0F0A48(v28, sub_1BA2F67D4, sub_1B9F25598, v39);
    *(v27 + 24) = Array<A>.identifierToIndexDict()(*(v27 + 16));

    (v26)(v37, 0);

    (v24)(v38, 0);
  }

  else
  {
    (v26)(v37, 0);

    (v24)(v38, 0);
    memset(v39, 0, sizeof(v39));
    v40 = 0;
  }

  sub_1BA0FA9CC(v39, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v29 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  swift_beginAccess();
  v30 = v34;
  if (*(*(v17 + v29) + 16) && (, sub_1B9F24A34(v30, v22), v32 = v31, , (v32 & 1) != 0))
  {
    swift_beginAccess();
    sub_1B9FEF28C(0, 0, v30, v22);
    swift_endAccess();
  }

  else
  {
  }

  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0EE97C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v30 = *v2;
  v5 = sub_1BA4A3EA8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_1BA4A1998();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v9 + 16))(v11, v3 + v19, v8);
  v31 = a1;
  v20 = v35;
  sub_1BA0F00FC(v14);
  (*(v9 + 8))(v11, v8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BA0FAAA0(v14);
    v21 = v32;
    sub_1BA4A3D88();

    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315650;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &v36);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4EAB90, &v36);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_1B9F0B82C(v31, v20, &v36);
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] %s Failed to remove item with identifier: %s, because it doesn't exist.", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    return (*(v33 + 8))(v21, v34);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1BA0EE51C(v18);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_1BA0EEE24(void (*a1)(void *a1), void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1BA0F8740(a1, v6, v2, v4, v5);
}

uint64_t sub_1BA0EEE80(void *a1)
{
  v2 = v1;
  v37[1] = *v2;
  v4 = sub_1BA4A3EA8();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v37 - v9;
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v37 - v12;
  v14 = sub_1BA4A1998();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v19 = *(v8 + 16);
  v38 = v2;
  v19(v10, v2 + v18, v7);
  v20 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BA4A2D58();
  sub_1BA0F00FC(v13);

  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BA0FAAA0(v13);
    v21 = v39;
    sub_1BA4A3D88();
    sub_1B9F0A534(v42, v44);
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136315650;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &v43);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1B9F0B82C(0x692864616F6C6572, 0xED0000293A6D6574, &v43);
      *(v24 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      v29 = sub_1BA4A2D58();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(v44);
      v32 = sub_1B9F0B82C(v29, v31, &v43);

      *(v24 + 24) = v32;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] %s Failed to reload item with id: %s, because it doesn't exist.", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      return (*(v40 + 8))(v21, v41);
    }

    else
    {

      (*(v40 + 8))(v21, v41);
      return __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v34 = v42[3];
    v35 = v42[4];
    v36 = __swift_project_boxed_opaque_existential_1(v42, v34);
    sub_1BA0F8740(v17, v36, v38, v34, v35);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_1BA0EF3D0()
{
  v1 = v0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - v8 + 16;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  swift_beginAccess();
  LOBYTE(v10) = *(v1 + v10);
  swift_beginAccess();
  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v10;
  aBlock[4] = sub_1BA0FAB2C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_23;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  [v14 notifyObservers_];
  _Block_release(v13);

  v15 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v15, v3);
  sub_1B9F177C4(v9);
  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  (*(v4 + 40))(v1 + v15, v9, v3);
  return swift_endAccess();
}

void sub_1BA0EF66C(void *a1, uint64_t a2, char a3)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = sub_1BA4A6758();
  sub_1BA0F0EB0(v9);
  v11 = sub_1BA4A4588();
  (*(v7 + 8))(v9, v6);
  [a1 snapshotDidChangeWithDataSourceID:v10 snapshot:v11 animated:a3 & 1];
}

void sub_1BA0EF810(void *a1, uint64_t a2, int a3, uint64_t (*a4)(void), uint64_t a5, uint64_t *a6)
{
  v21 = a6;
  v22 = a3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  swift_beginAccess();

  v15 = sub_1BA4A6758();

  v16 = a4(0);
  v25 = v16;
  v26 = a5;
  swift_getKeyPath();
  v23 = v16;
  v24 = a5;
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v27)
  {
    v17 = *(*a2 + 112);
    swift_beginAccess();
    v18 = *(a2 + v17);
    v19 = *v21;
    swift_beginAccess();
    (*(v12 + 16))(v14, v18 + v19, v11);
  }

  else
  {
    sub_1BA4A45D8();
  }

  v20 = sub_1BA4A4588();
  (*(v12 + 8))(v14, v11);
  [a1 snapshotDidChangeWithDataSourceID:v15 snapshot:v20 animated:v22 & 1];
}

void sub_1BA0EFA98(void *a1, uint64_t a2, int a3)
{
  v16 = a3;
  v15 = a1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = sub_1BA4A6758();
  swift_beginAccess();
  v10 = *(a2 + 104);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  swift_unknownObjectRelease();
  v13 = sub_1BA4A4588();
  (*(v6 + 8))(v8, v5);
  [v15 snapshotDidChangeWithDataSourceID:v9 snapshot:v13 animated:v16 & 1];
}

void sub_1BA0EFC4C(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  swift_beginAccess();

  v10 = sub_1BA4A6758();

  sub_1BA043BB8();
  v12 = v11;
  v25 = v11;
  v26 = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  swift_getKeyPath();
  v23 = v12;
  v24 = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v27)
  {
    swift_beginAccess();

    sub_1BA0FB330();
    v22 = v3;
    v3 = v13;
    ObjectType = swift_getObjectType();
    v21 = v10;
    v15 = v7;
    v16 = v6;
    v17 = a1;
    v18 = *(v3 + 16);
    swift_unknownObjectRetain();
    v19 = v3;
    LOBYTE(v3) = v22;
    v18(ObjectType, v19);
    a1 = v17;
    v6 = v16;
    v7 = v15;
    v10 = v21;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A45D8();
  }

  v20 = sub_1BA4A4588();
  (*(v7 + 8))(v9, v6);
  [a1 snapshotDidChangeWithDataSourceID:v10 snapshot:v20 animated:v3 & 1];
}

void sub_1BA0EFF60(void *a1, uint64_t a2, int a3)
{
  v16 = a3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = sub_1BA4A6758();
  sub_1BA0FB788();
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  swift_unknownObjectRetain();
  v13(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = sub_1BA4A4588();
  (*(v6 + 8))(v8, v5);
  [a1 snapshotDidChangeWithDataSourceID:v9 snapshot:v14 animated:v16 & 1];
}

uint64_t sub_1BA0F00FC@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  sub_1BA4A4568();
  if (!v19)
  {
    goto LABEL_8;
  }

  v2 = sub_1BA4A44E8();
  if (v3)
  {
LABEL_7:

LABEL_8:
    v10 = sub_1BA4A1998();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  v4 = v2;
  if (!*(sub_1BA4A4528() + 16) || (, , v5 = sub_1BA4A4468(), (v6 & 1) != 0) || (v7 = v5, result = sub_1BA4A4468(), (v9 & 1) != 0))
  {

    goto LABEL_7;
  }

  v11 = result - v7;
  if (__OFSUB__(result, v7))
  {
    __break(1u);
  }

  else
  {
    sub_1B9F2176C(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B5460;
    *(v12 + 32) = v4;
    *(v12 + 40) = v11;
    MEMORY[0x1BFAEC320](v12, v13, v14, v15, v16, v17);

    v18 = sub_1BA4A1998();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  return result;
}

uint64_t MutableArrayDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

void sub_1BA0F03C4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

uint64_t sub_1BA0F041C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA0F04CC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t sub_1BA0F0604(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t MutableArrayDataSource.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);

  return v1;
}

uint64_t MutableArrayDataSource.__allocating_init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  MutableArrayDataSource.init(arrangedSections:identifier:)(a1, a2, a3);
  return v6;
}

uint64_t MutableArrayDataSource.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v29 = sub_1BA4A1798();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v25 = v1;
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v6, 0);
    v7 = v30[0];
    v24 = v4;
    v26 = (v4 + 8);
    v27 = a1;
    v8 = 32;
    do
    {
      v9 = *(a1 + v8);

      v10 = v28;
      sub_1BA4A1788();
      v11 = sub_1BA4A1748();
      v13 = v12;
      (*v26)(v10, v29);

      v15 = Array<A>.identifierToIndexDict()(v14);

      v30[0] = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B9F277B0((v16 > 1), v17 + 1, 1);
        v7 = v30[0];
      }

      *(v7 + 16) = v17 + 1;
      v18 = (v7 + 48 * v17);
      v18[4] = 0;
      v18[5] = 0;
      v18[6] = v9;
      v18[7] = v15;
      v18[8] = v11;
      v18[9] = v13;
      v8 += 8;
      --v6;
      a1 = v27;
    }

    while (v6);

    v4 = v24;
    v2 = v25;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v30, "MutableArray<");
  HIWORD(v30[1]) = -4864;
  v19 = v28;
  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  (*(v4 + 8))(v19, v29);
  MEMORY[0x1BFAF1350](v20, v22);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return (*(v2 + 256))(v7, v30[0], v30[1]);
}

void (*sub_1BA0F0994(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1BA0F8260(v6, a2, a3);
  return sub_1BA07E90C;
}

uint64_t sub_1BA0F0A48@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = v9 + 40 * a1;
    a3(v13 + 32, a4);
    result = memmove((v13 + 32), (v13 + 72), 40 * (v12 - a1));
    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_1BA0F0AFC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BA2F6824(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 80 * a1);
    v10 = v9[5];
    a2[2] = v9[4];
    a2[3] = v10;
    a2[4] = v9[6];
    v11 = v9[3];
    *a2 = v9[2];
    a2[1] = v11;
    result = memmove(v9 + 2, v9 + 7, 80 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t MutableArrayDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t MutableArrayDataSource.debugDescription.getter()
{
  v1 = v0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v16 = v14;
  v17 = v15;
  MEMORY[0x1BFAF1350](0xD000000000000025, 0x80000001BA4EABD0);
  MEMORY[0x1BFAF1350](*(v1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8));
  MEMORY[0x1BFAF1350](0x6F6974636553202CLL, 0xEC000000203A736ELL);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = sub_1BA4A4578();
  (*(v4 + 8))(v6, v3);
  v9 = MEMORY[0x1BFAF1560](v8, MEMORY[0x1E69E6158]);
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return v16;
}

uint64_t sub_1BA0F0EB0@<X0>(uint64_t a1@<X8>)
{
  sub_1BA0FC67C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F32D84();
  v6 = v5;
  v22[2] = v5;
  v22[3] = &protocol witness table for HideableDataSource<A>;
  swift_getKeyPath();
  v22[0] = v6;
  v22[1] = &protocol witness table for HideableDataSource<A>;
  swift_getKeyPath();
  sub_1BA4A4F28();

  v8 = v22[8];
  if (v23 == 1)
  {
    MEMORY[0x1EEE9AC00](v7);
    v9 = type metadata accessor for SignificantTrendsDataSource(0);
    v22[-2] = v9;
    v22[-1] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v22[-2] = v9;
    v22[-1] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    swift_getKeyPath();
    sub_1BA4A4F28();

    if (v24)
    {
      v11 = *(*v8 + 112);
      swift_beginAccess();
      v12 = *(v8 + v11);
      v13 = qword_1EDC84AC8;
      swift_beginAccess();
      sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
      (*(*(v14 - 8) + 16))(v4, v12 + v13, v14);
    }

    else
    {
      sub_1BA4A45D8();
    }

    sub_1BA0FC6F8();
    sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
    v20 = v19;
    v21 = *(v19 - 8);
    (*(v21 + 56))(v4, 0, 1, v19);
    return (*(v21 + 32))(a1, v4, v20);
  }

  else
  {
    sub_1BA0FC6F8();
    sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
    v16 = v15;
    v17 = *(v15 - 8);
    (*(v17 + 56))(v4, 1, 1, v15);
    sub_1BA4A45D8();
    result = (*(v17 + 48))(v4, 1, v16);
    if (result != 1)
    {
      return sub_1BA0FC704(v4);
    }
  }

  return result;
}

void sub_1BA0F12C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA0F1388(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, 1, a3);
  *v5 = v7;
  return result;
}

void *sub_1BA0F1474()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC5E000);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F15FC()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC5DFE0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F1778()
{
  sub_1B9F24D7C(0, &unk_1EDC5DFF0);
  v30 = v0;
  v1 = *v0;
  v2 = sub_1BA4A8068();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 48;
        v21 = (*(v1 + 56) + v16);
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v21[4];
        v27 = v21[5];
        v28 = (*(v3 + 48) + v17);
        *v28 = v19;
        v28[1] = v20;
        v29 = (*(v3 + 56) + v16);
        *v29 = v23;
        v29[1] = v22;
        v29[2] = v24;
        v29[3] = v25;
        v29[4] = v26;
        v29[5] = v27;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }

  return result;
}

void *sub_1BA0F194C()
{
  v1 = v0;
  sub_1B9F24D7C(0, &unk_1EDC6E910);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = *(v22 + 40);
        v27 = (*(v4 + 48) + v18);
        v28 = *(v22 + 16);
        *v27 = v21;
        v27[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F1B08()
{
  v1 = v0;
  sub_1B9F24D7C(0, &unk_1EBBEE690);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F1C84()
{
  v1 = v0;
  sub_1B9F28B1C(0, &qword_1EBBE98B8, &qword_1EBBE98C0, &type metadata for ConfirmDetailsSection.Row.CorrelatedItem);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F1E48(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_1BA0FBC38(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1BA4A8068();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(*(v6 + 56) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        *(*(v8 + 56) + 8 * v21) = v23;
        v24 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_1BA0F1FB0()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC6E348);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B9F0AD9C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B9F46920(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F216C()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC6B470);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1B9FDC70C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B9F0AD9C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B9F46920(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1BA0F2328()
{
  v1 = v0;
  sub_1B9FDC2DC();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1BA0F247C()
{
  v1 = v0;
  sub_1B9FDC7BC();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B9F0AD9C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B9F46920(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F25F0()
{
  v1 = v0;
  sub_1BA0FBBD4(0, &qword_1EBBE98C8, sub_1B9FDCAA4);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F2770()
{
  v1 = v0;
  sub_1BA0FBBD4(0, &qword_1EBBEE5D0, type metadata accessor for HKSharingReachabilityStatus);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F28E8()
{
  v1 = v0;
  sub_1B9F3EEB4();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F2A3C()
{
  v1 = v0;
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FBBD4(0, &qword_1EBBEBE90, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v4 = *v0;
  v5 = sub_1BA4A8068();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1BA0FB13C(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1B9FF3588(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1BA0F2C7C()
{
  v1 = v0;
  v30 = sub_1BA4A1728();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FB1A0();
  v3 = *v0;
  v4 = sub_1BA4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v14; v3 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v10 << 6);
      v20 = *(v3 + 56);
      v21 = *(*(v3 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v5 = v31;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

id sub_1BA0F2ED8()
{
  v1 = v0;
  sub_1BA0FB24C();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1BA0F3028()
{
  v1 = v0;
  sub_1B9F36484();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1BA0F3188()
{
  v1 = v0;
  sub_1BA0FC760();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F32D8()
{
  v1 = v0;
  sub_1B9FDC20C();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1BA0F3430()
{
  v1 = v0;
  sub_1BA0FCA58();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0F3580()
{
  v1 = v0;
  sub_1B9FDC85C();
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BA0F36C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F24D7C(0, &qword_1EDC5DFE0);
  v34 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F3974(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F24D7C(0, &unk_1EDC6E910);
  v38 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v42 = *v22;
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v40 = *v24;
      v41 = *(v24 + 16);
      v27 = *(v24 + 32);
      v26 = *(v24 + 40);
      if ((v38 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      v12 = v39;
      *v17 = v40;
      *(v17 + 8) = v25;
      *(v17 + 16) = v41;
      *(v17 + 32) = v27;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F3C84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F24D7C(0, &unk_1EBBEE690);
  v34 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F3F9C(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v7 = v6;
  v9 = *v6;
  sub_1BA0FBC38(0, a3, a4, a5, a6);
  result = sub_1BA4A8078();
  v11 = result;
  if (*(v9 + 16))
  {
    v35 = v6;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      if ((a2 & 1) == 0)
      {
        v26 = v24;
      }

      result = sub_1BA4A7788();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v7 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v9 + 32);
    v7 = v35;
    if (v34 >= 64)
    {
      bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
  return result;
}

uint64_t sub_1BA0F4210(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F24D7C(0, &qword_1EDC6E348);
  v33 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B9F46920(v24, v34);
      }

      else
      {
        sub_1B9F0AD9C(v24, v34);
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B9F46920(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F44E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F24D7C(0, &qword_1EDC6B470);
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1B9F46920((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1B9FDC70C(v23, &v36);
        sub_1B9F0AD9C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1BA4A7D38();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1B9F46920(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F47B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9FDC2DC();
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1BA4A7788();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F4A0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9FDC7BC();
  v35 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1B9F46920(v22, v36);
      }

      else
      {
        sub_1B9F0AD9C(v22, v36);
        v23 = v21;
      }

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA4A8488();
      sub_1BA4A68C8();
      v24 = sub_1BA4A84D8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1B9F46920(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F4CD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1BA0FBBD4(0, &qword_1EBBE98C8, sub_1B9FDCAA4);
  v34 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F4F88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1BA0FBBD4(0, &qword_1EBBEE5D0, type metadata accessor for HKSharingReachabilityStatus);
  v34 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F5238(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1BA0FBBD4(0, &qword_1EBBEBE90, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v40 = a2;
  result = sub_1BA4A8078();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1B9FF3588(v28, v41);
      }

      else
      {
        sub_1BA0FB13C(v28, v41);
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1B9FF3588(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1BA0F5584(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = sub_1BA4A1728();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1BA0FB1A0();
  v38 = a2;
  result = sub_1BA4A8078();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = sub_1BA4A7788();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1BA0F58C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1BA0FB24C();
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1BA4A7788();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F5B20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1BA0FC760();
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_1BA4A8478();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F5D7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9FDC20C();
  v35 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA4A8488();
      sub_1BA4A68C8();
      v24 = sub_1BA4A84D8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F6038(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1BA0FCA58();
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1BA4A7788();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BA0F6290(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9FDC85C();
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1BA4A8488();
      sub_1BA4A68C8();

      result = sub_1BA4A84D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

double sub_1BA0F6560@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B9F24A34(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F1778();
      v10 = v16;
    }

    v11 = *(v10 + 56) + 48 * v8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v14;
    *(a3 + 32) = v12;
    *(a3 + 40) = v13;
    sub_1BA0F6BCC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_1BA0F6614@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B9FDA8E4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F216C();
      v9 = v11;
    }

    sub_1B9FDC768(*(v9 + 48) + 40 * v7);
    sub_1B9F46920((*(v9 + 56) + 32 * v7), a2);
    sub_1BA0F70E8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1BA0F66B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B9F4E588(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F247C();
      v9 = v11;
    }

    sub_1B9F46920((*(v9 + 56) + 32 * v7), a2);
    sub_1BA0F728C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1BA0F6758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B9F24A34(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F2A3C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    v19 = *(v12 - 8);
    sub_1B9FF3588(v11 + *(v19 + 72) * v8, a3);
    sub_1BA0F7454(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1BA0F68B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B9FDAB44(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F2C7C();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_1BA4A1728();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_1BA0F7640(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_1BA4A1728();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1BA0F6A1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v9 = sub_1BA4A84D8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F6BCC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v11 = sub_1BA4A84D8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F6D88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v9 = sub_1BA4A84D8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F6F38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v10 = sub_1BA4A84D8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F70E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      sub_1B9FDC70C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1BA4A7D38();
      result = sub_1B9FDC768(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BA0F728C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA4A8488();
      v11 = v10;
      sub_1BA4A68C8();
      v12 = sub_1BA4A84D8();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1BA0F7454(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    while (1)
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v9 = sub_1BA4A84D8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BA0F7640(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1BA4A7788();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_1BA4A1728() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BA0F7808(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v9 = sub_1BA4A84D8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F79B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BA4A8478();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F7B28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BA4A7C58() + 1) & ~v5;
    do
    {
      sub_1BA4A8488();
      sub_1BA4A68C8();

      result = sub_1BA4A84D8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F7D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1BA0F7DE4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1BA0F7E40(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1BA0F7E88(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1BA0F7ECC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B9F46920(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1BA0F7F38(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B9F46920(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1BA0F7FB4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B9F46920(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1BA0F801C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  result = sub_1B9FF3588(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BA0F80B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BA4A1728();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BA0F8160(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_1BA0F81A4(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t *sub_1BA0F81E8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B9F1A0D8(result, a2, a3);

    return v6;
  }

  return result;
}

void (*sub_1BA0F8260(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1BA0F870C(v7);
  v7[9] = sub_1BA0F836C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1BA0F830C;
}

void sub_1BA0F830C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1BA0F836C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[7] = a3;
  v10[8] = v4;
  v10[6] = a2;
  v12 = *v4;
  v13 = sub_1B9F24A34(a2, a3);
  *(v11 + 80) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1BA0F1778();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1B9F1CB18(v18, a4 & 1);
    v13 = sub_1B9F24A34(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1BA4A83B8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[9] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 48 * v13;
    v24 = *v23;
    v25 = *(v23 + 16);
    v26 = *(v23 + 32);
    v27 = *(v23 + 40);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  *v11 = v24;
  *(v11 + 1) = v25;
  v11[4] = v26;
  v11[5] = v27;
  return sub_1BA0F84E0;
}

void sub_1BA0F84E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v9) = *(v2 + 80);
  if (a2)
  {
    if (!v6)
    {
      if (v2[10])
      {
        v20 = v2[9];
        v21 = *v2[8];
        v22 = v3;
        v23 = v2[1];
        sub_1BA000898(*(v21 + 48) + 16 * v20);
        sub_1BA0F6BCC(v20, v21);
        v4 = v23;
        v3 = v22;
      }

      goto LABEL_16;
    }

    v10 = v2[9];
    v11 = *v2[8];
    if (v2[10])
    {
      goto LABEL_9;
    }

    v13 = v2[6];
    v12 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v14 = (v11[6] + 16 * v10);
    *v14 = v13;
    v14[1] = v12;
    v9 = v11[7];
    v15 = (v9 + 48 * v10);
    *v15 = v3;
    v15[1] = v4;
    v15[2] = v6;
    v15[3] = v5;
    v15[4] = v7;
    v15[5] = v8;
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
LABEL_15:
      v33 = v3;
      v34 = v4;
      v11[2] = v18;

      v3 = v33;
      v4 = v34;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v6)
  {
    if (v9)
    {
      v24 = v2[9];
      v25 = *v2[8];
      v26 = v3;
      v27 = v4;
      sub_1BA000898(*(v25 + 48) + 16 * v24);
      sub_1BA0F6BCC(v24, v25);
      v4 = v27;
      v3 = v26;
    }

    goto LABEL_16;
  }

  v10 = v2[9];
  v11 = *v2[8];
  if ((v9 & 1) == 0)
  {
    v29 = v2[6];
    v28 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v30 = (v11[6] + 16 * v10);
    *v30 = v29;
    v30[1] = v28;
    v31 = (v11[7] + 48 * v10);
    *v31 = v3;
    v31[1] = v4;
    v31[2] = v6;
    v31[3] = v5;
    v31[4] = v7;
    v31[5] = v8;
    v32 = v11[2];
    v17 = __OFADD__(v32, 1);
    v18 = v32 + 1;
    if (v17)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v19 = (v11[7] + 48 * v10);
  *v19 = v3;
  v19[1] = v4;
  v19[2] = v6;
  v19[3] = v5;
  v19[4] = v7;
  v19[5] = v8;
LABEL_16:
  v35 = *v2;
  v36 = v2[1];
  v37 = v2[2];
  sub_1BA0FC9F4(v3, v4, v6);
  sub_1BA0F7D80(v35, v36, v37);

  free(v2);
}

uint64_t (*sub_1BA0F870C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BA0F8734;
}

uint64_t sub_1BA0F8740(void (*a1)(void *a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  v83[3] = a4;
  v83[4] = a5;
  v72 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
  v16 = *(*(a4 - 8) + 16);
  v71 = boxed_opaque_existential_1;
  v16(boxed_opaque_existential_1, a2, a4);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v19 = (v12 + 16);
  v18 = *(v12 + 16);
  v74 = a3;
  v75 = v17;
  v18(v14, a3 + v17, v11);
  v20 = sub_1BA4A4578();
  v21 = *(v12 + 8);
  v76 = v11;
  v21(v14, v11);
  v73 = a1;
  v22 = a1;
  v23 = sub_1BA4A1968();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v23 >= *(v20 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v24 = v20 + 16 * v23;
  a1 = *(v24 + 32);
  v25 = *(v24 + 40);

  v11 = v76;
  v18(v14, v74 + v75, v76);
  v81[0] = a1;
  v81[1] = v25;
  v70 = v25;
  v19 = sub_1BA4A4528();
  v21(v14, v11);
  v22 = v73;
  v26 = sub_1BA4A1958();
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v26 >= v19[2])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v27 = &v19[2 * v26];
  v29 = v27[4];
  v28 = v27[5];

  if (v29 == sub_1BA4A2D58() && v28 == v30)
  {
  }

  else
  {
    v32 = sub_1BA4A8338();

    if ((v32 & 1) == 0)
    {
      sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v33 = swift_allocObject();
      v69 = xmmword_1BA4B5480;
      *(v33 + 16) = xmmword_1BA4B5480;
      *(v33 + 32) = sub_1BA4A2D58();
      *(v33 + 40) = v34;
      v80[0] = v29;
      v80[1] = v28;
      v35 = v74;
      swift_beginAccess();
      sub_1BA4A4478();
      swift_endAccess();

      v36 = swift_allocObject();
      *(v36 + 16) = v69;
      *(v36 + 32) = v29;
      *(v36 + 40) = v28;
      swift_beginAccess();

      sub_1BA4A4458();
      swift_endAccess();

      v37 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      swift_beginAccess();
      if (*(*(v35 + v37) + 16))
      {

        sub_1B9F24A34(v29, v28);
        v39 = v38;

        if (v39)
        {
          swift_beginAccess();
          sub_1B9FEF28C(0, 0, v29, v28);
          swift_endAccess();
          goto LABEL_31;
        }
      }

      goto LABEL_29;
    }
  }

  sub_1B9F0A534(v83, v80);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v79 = 0;
    v78 = 0u;
    v77 = 0u;
    sub_1BA0FA9CC(&v77, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v35 = v74;
LABEL_28:
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1BA4B5480;
    *(v54 + 32) = v29;
    *(v54 + 40) = v28;
    swift_beginAccess();
    sub_1BA4A4558();
    swift_endAccess();
LABEL_29:

    goto LABEL_31;
  }

  sub_1B9F1134C(&v77, v81);
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v40 = sub_1BA4A2D58();
  v42 = v41;
  v43 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v35 = v74;
  swift_beginAccess();
  v44 = *(v35 + v43);
  if (*(v44 + 16) && (, v45 = sub_1B9F24A34(v40, v42), v47 = v46, , (v47 & 1) != 0))
  {
    v48 = (*(v44 + 56) + 16 * v45);
    v50 = *v48;
    v49 = v48[1];
  }

  else
  {

    v50 = 0;
    v49 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v81, v82);
  v51 = sub_1BA4A2E58();
  if (v49)
  {
    if (v50 == v51 && v49 == v52)
    {

LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(v81);
      goto LABEL_28;
    }

    v53 = sub_1BA4A8338();

    if (v53)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1BA4B5480;
  *(v55 + 32) = v29;
  *(v55 + 40) = v28;
  swift_beginAccess();
  sub_1BA4A4498();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v81);
LABEL_31:
  sub_1B9F0A534(v83, v80);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v77, v81);
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v56 = sub_1BA4A2D58();
    v58 = v57;
    v59 = a1;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v60 = sub_1BA4A2E58();
    v62 = v61;
    v63 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = *(v35 + v63);
    *(v35 + v63) = 0x8000000000000000;
    v65 = v62;
    a1 = v59;
    sub_1B9F248E4(v60, v65, v56, v58, isUniquelyReferenced_nonNull_native);

    *(v35 + v63) = v77;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    v79 = 0;
    v78 = 0u;
    v77 = 0u;
    sub_1BA0FA9CC(&v77, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  v66 = v70;
  v11 = sub_1BA0E7AC0();
  a1 = sub_1BA0F0994(v80, a1, v66);
  if (!*(v67 + 2))
  {
    (a1)(v80, 0);

    (v11)(v81, 0);
    goto LABEL_40;
  }

  v14 = v67;
  v22 = sub_1BA4A1958();
  v19 = *(v14 + 2);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 2) = v19;
  if (result)
  {
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_45:
  result = sub_1BA2F67D4(v19);
  v19 = result;
  *(v14 + 2) = result;
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

LABEL_37:
  if (v22 < v19[2])
  {
    __swift_assign_boxed_opaque_existential_1(&v19[5 * v22 + 4], v83);
    *(v14 + 3) = Array<A>.identifierToIndexDict()(*(v14 + 2));

    (a1)(v80, 0);

    (v11)(v81, 0);
LABEL_40:
    sub_1BA0EF3D0();
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_1BA0F91A8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v86 = *a3;
  v88 = sub_1BA4A1798();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BA4A1998();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v95 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1BA4A3EA8();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v13 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v84 - v17;
  v105[3] = a4;
  v105[4] = a5;
  v84[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
  v20 = *(*(a4 - 8) + 16);
  v84[2] = boxed_opaque_existential_1;
  v84[3] = a4;
  v20(boxed_opaque_existential_1, a1, a4);
  v21 = sub_1BA4A1968();
  v22 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v94 = *(v16 + 16);
  v94(v18, &a3[v22], v15);
  v23 = sub_1BA4A4548();
  v93 = *(v16 + 8);
  v93(v18, v15);
  if (v23 < v21)
  {
    v24 = v13;
    sub_1BA4A3D88();
    v25 = v89;
    v26 = v90;
    (*(v89 + 16))(v95, a2, v90);
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v96 = v30;
      *v29 = 136315650;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, &v96);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4EAC70, &v96);
      *(v29 + 22) = 2080;
      sub_1BA0FB2E8(&unk_1EBBED850, MEMORY[0x1E6969C28]);
      v34 = v95;
      v35 = sub_1BA4A82D8();
      v37 = v36;
      (*(v25 + 8))(v34, v26);
      v38 = sub_1B9F0B82C(v35, v37, &v96);

      *(v29 + 24) = v38;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] %s Failed to insert item at indexPath: %s, because it doesn't exist.", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v95, v26);
    }

    (*(v91 + 8))(v24, v92);
    return __swift_destroy_boxed_opaque_existential_1(v105);
  }

  v39 = sub_1BA4A1968();
  v94(v18, &a3[v22], v15);
  v40 = sub_1BA4A4548();
  v93(v18, v15);
  if (v39 == v40)
  {
    sub_1BA0F12C8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1BA4B5480;
    sub_1B9F0A534(v105, v41 + 32);
    v42 = v85;
    sub_1BA4A1788();
    v43 = sub_1BA4A1748();
    v95 = v44;
    (*(v87 + 8))(v42, v88);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v46 = Array<A>.identifierToIndexDict()(v45);

    v96 = 0uLL;
    v97 = v41;
    v98 = v46;
    v99 = v43;
    v100 = v95;
    v94(v18, &a3[v22], v15);
    v47 = sub_1BA4A4548();
    v93(v18, v15);
    sub_1BA0E8FD4(&v96, v47);

    return __swift_destroy_boxed_opaque_existential_1(v105);
  }

  v48 = a2;
  v95 = a3;
  v49 = &a3[v22];
  v50 = v94;
  v94(v18, v49, v15);
  v51 = sub_1BA4A4578();
  v52 = v93;
  v93(v18, v15);
  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (result >= *(v51 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v54 = v52;
  v55 = v50;
  v56 = v51 + 16 * result;
  v57 = *(v56 + 40);
  v91 = *(v56 + 32);

  v92 = v22;
  v55(v18, &v95[v22], v15);
  v58 = v91;
  *&v96 = v91;
  *(&v96 + 1) = v57;
  v59 = sub_1BA4A4528();
  v54(v18, v15);
  v60 = *(v59 + 16);
  v61 = sub_1BA4A1958();
  v84[1] = v48;
  if (v60 == v61)
  {

    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1BA4B5480;
    *(v62 + 32) = sub_1BA4A2D58();
    *(v62 + 40) = v63;
    v103 = v58;
    v104 = v57;
    v64 = v95;
    swift_beginAccess();

    sub_1BA4A4448();
    swift_endAccess();

    goto LABEL_15;
  }

  result = sub_1BA4A1958();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v64 = v95;
  if (result < *(v59 + 16))
  {
    v65 = v59 + 16 * result;
    v66 = *(v65 + 32);
    v67 = *(v65 + 40);

    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1BA4B5480;
    *(v68 + 32) = sub_1BA4A2D58();
    *(v68 + 40) = v69;
    v103 = v66;
    v104 = v67;
    swift_beginAccess();
    sub_1BA4A4478();
    swift_endAccess();

LABEL_15:

    v70 = sub_1BA0E7AC0();
    v72 = sub_1BA0F0994(v101, v58, v57);
    v73 = v71 + 16;
    if (!*(v71 + 16))
    {
      (v72)(v101, 0);

      (v70)(&v103, 0);
      goto LABEL_20;
    }

    v74 = v71;
    result = sub_1BA4A1958();
    if (*(*v73 + 16) >= result)
    {
      v75 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        sub_1B9F0A534(v105, &v96);
        sub_1BA0F1388(v75, v75, &v96, sub_1B9F281E8, sub_1BA170264);
        *(v74 + 24) = Array<A>.identifierToIndexDict()(*(v74 + 16));

        (v72)(v101, 0);

        (v70)(&v103, 0);
LABEL_20:
        sub_1B9F0A534(v105, &v103);
        sub_1B9F0D950(0, &qword_1EDC6AD50);
        sub_1B9F0D950(0, &qword_1EDC6E1B0);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v101, &v96);
          __swift_project_boxed_opaque_existential_1(&v96, v98);
          v76 = sub_1BA4A2D58();
          v78 = v77;
          __swift_project_boxed_opaque_existential_1(&v96, v98);
          v79 = sub_1BA4A2E58();
          v81 = v80;
          v82 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v101[0] = *&v64[v82];
          *&v64[v82] = 0x8000000000000000;
          sub_1B9F248E4(v79, v81, v76, v78, isUniquelyReferenced_nonNull_native);

          *&v64[v82] = *&v101[0];
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v96);
        }

        else
        {
          v102 = 0;
          memset(v101, 0, sizeof(v101));
          sub_1BA0FA9CC(v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        }

        sub_1BA0EF3D0();
        return __swift_destroy_boxed_opaque_existential_1(v105);
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1BA0F9EF0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v85 = a2;
  v87 = a1;
  v80 = *a4;
  v10 = sub_1BA4A1798();
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BA4A3EA8();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  v96[3] = a5;
  v96[4] = a6;
  v86 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
  v23 = *(*(a5 - 8) + 16);
  v81 = boxed_opaque_existential_1;
  v24 = v87;
  v87 = a5;
  v23(boxed_opaque_existential_1, v24, a5);
  if (a3)
  {
    v25 = a4;
    v26 = a3;
    v27 = v85;
  }

  else
  {
    v28 = v12;
    v29 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
    swift_beginAccess();
    (*(v16 + 16))(v21, a4 + v29, v15);
    v30 = sub_1BA4A4578();
    (*(v16 + 8))(v21, v15);
    v31 = *(v30 + 16);
    if (!v31)
    {

      sub_1BA0F12C8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1BA4B5480;
      sub_1B9F0A534(v96, v71 + 32);
      sub_1BA4A1788();
      v72 = sub_1BA4A1748();
      v74 = v73;
      (*(v79 + 8))(v28, v10);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v76 = Array<A>.identifierToIndexDict()(v75);

      v88 = 0uLL;
      v89 = v71;
      v90 = v76;
      v91 = v72;
      v92 = v74;
      sub_1BA0E8FD4(&v88, 0);

      return __swift_destroy_boxed_opaque_existential_1(v96);
    }

    v25 = a4;
    v32 = (v30 + 16 + 16 * v31);
    v27 = *v32;
    v26 = v32[1];
  }

  v33 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  v34 = v25;
  swift_beginAccess();
  (*(v16 + 16))(v18, v25 + v33, v15);
  *&v88 = v27;
  *(&v88 + 1) = v26;

  sub_1BA4A44E8();
  v36 = v35;
  (*(v16 + 8))(v18, v15);
  if (v36)
  {
    v37 = v82;
    sub_1BA4A3D88();

    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v88 = v41;
      *v40 = 136315650;
      v42 = sub_1BA4A85D8();
      v44 = sub_1B9F0B82C(v42, v43, &v88);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4EAC50, &v88);
      *(v40 + 22) = 2080;
      v45 = sub_1B9F0B82C(v27, v26, &v88);

      *(v40 + 24) = v45;
      _os_log_impl(&dword_1B9F07000, v38, v39, "[%s] %s Failed to append item to given section with id: %s, because it doesn't exist.", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v37, v84);
  }

  else
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BA4B5480;
    *(v46 + 32) = sub_1BA4A2D58();
    *(v46 + 40) = v47;
    v95[0] = v27;
    v95[1] = v26;
    swift_beginAccess();

    sub_1BA4A4448();
    swift_endAccess();

    v85 = v34;
    v48 = sub_1BA0E7AC0();
    v50 = sub_1BA0F0994(v93, v27, v26);
    v51 = (v49 + 16);
    if (*(v49 + 16))
    {
      v52 = v49;
      sub_1B9F0A534(v96, &v88);
      v53 = *v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v51 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = sub_1B9F281E8(0, v53[2] + 1, 1, v53);
        *v51 = v53;
      }

      v56 = v53[2];
      v55 = v53[3];
      if (v56 >= v55 >> 1)
      {
        *v51 = sub_1B9F281E8((v55 > 1), v56 + 1, 1, v53);
      }

      v57 = __swift_mutable_project_boxed_opaque_existential_1(&v88, v90);
      v58 = MEMORY[0x1EEE9AC00](v57);
      v60 = &v78 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v61 + 16))(v60, v58);
      sub_1B9F1C4F4(v56, v60, v51, v87, v86);
      __swift_destroy_boxed_opaque_existential_1(&v88);
      *(v52 + 24) = Array<A>.identifierToIndexDict()(*(v52 + 16));

      (v50)(v93, 0);

      (v48)(v95, 0);
    }

    else
    {
      (v50)(v93, 0);

      (v48)(v95, 0);
    }

    sub_1B9F0A534(v96, v95);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v93, &v88);
      __swift_project_boxed_opaque_existential_1(&v88, v90);
      v62 = sub_1BA4A2D58();
      v64 = v63;
      __swift_project_boxed_opaque_existential_1(&v88, v90);
      v65 = sub_1BA4A2E58();
      v67 = v66;
      v68 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      v69 = v85;
      swift_beginAccess();
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v93[0] = *(v69 + v68);
      *(v69 + v68) = 0x8000000000000000;
      sub_1B9F248E4(v65, v67, v62, v64, v70);

      *(v69 + v68) = *&v93[0];
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v88);
    }

    else
    {
      v94 = 0;
      memset(v93, 0, sizeof(v93));
      sub_1BA0FA9CC(v93, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    }

    sub_1BA0EF3D0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t sub_1BA0FA9CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1BA0F12C8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1BA0FAA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA0FAAA0(uint64_t a1)
{
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0FB13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA0FB1A0()
{
  if (!qword_1EDC5E028)
  {
    sub_1BA4A27B8();
    sub_1BA4A1728();
    sub_1BA0FB2E8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E028);
    }
  }
}

void sub_1BA0FB24C()
{
  if (!qword_1EDC5E020)
  {
    sub_1BA4A27B8();
    sub_1BA0FB2E8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E020);
    }
  }
}

uint64_t sub_1BA0FB2E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA0FB330()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v9 = (*(v1 + 176))(v6);
  v10 = v0 + 7;
  swift_beginAccess();
  v11 = v0[7];
  v12 = v0 + 8;
  swift_beginAccess();
  v13 = v0[8];

  LOBYTE(v9) = (v9)(v11, v13);

  if (v9)
  {
    sub_1BA4A3D88();

    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6F88();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40 = v17;
      *v16 = 136315394;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v40);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = (*v10 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
      v22 = *v21;
      v23 = v21[1];

      v24 = sub_1B9F0B82C(v22, v23, &v40);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v14, v15, "%s using primary data source: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v38 + 8))(v8, v39);
  }

  else
  {
    sub_1BA4A3D88();

    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6F88();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315394;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v40);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = (*v12 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
      v33 = *v32;
      v34 = v32[1];

      v35 = sub_1B9F0B82C(v33, v34, &v40);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v25, v26, "%s using secondary data source: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v38 + 8))(v4, v39);
    v10 = v12;
  }

  return *v10;
}

uint64_t sub_1BA0FB788()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = (*(v1 + 176))(v6);
  v10 = v0 + 7;
  swift_beginAccess();
  v11 = v0[7];
  v12 = v0 + 8;
  swift_beginAccess();
  v13 = v0[8];

  LOBYTE(v9) = (v9)(v11, v13);

  if (v9)
  {
    sub_1BA4A3D88();

    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6F88();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315394;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v39);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = *(*v10 + 24);
      v22 = *(*v10 + 32);

      v23 = sub_1B9F0B82C(v21, v22, &v39);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1B9F07000, v14, v15, "%s using primary data source: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v37 + 8))(v8, v38);
  }

  else
  {
    sub_1BA4A3D88();

    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6F88();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315394;
      v28 = sub_1BA4A85D8();
      v30 = sub_1B9F0B82C(v28, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = (*v12 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
      v32 = *v31;
      v33 = v31[1];

      v34 = sub_1B9F0B82C(v32, v33, &v39);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_1B9F07000, v24, v25, "%s using secondary data source: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v37 + 8))(v4, v38);
    v10 = v12;
  }

  return *v10;
}

void sub_1BA0FBBD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A80A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA0FBC38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3);
    sub_1BA0FAA3C(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    sub_1B9F15C34(a5, a3);
    v8 = sub_1BA4A80A8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA0FBD0C(unint64_t result, _BYTE *a2, const void *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BA27F490(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BA1726C8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1BA0FBDE0()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = (*(v1 + 176))(v6);
  v10 = v0 + 7;
  swift_beginAccess();
  v11 = v0[7];
  v12 = v0 + 8;
  swift_beginAccess();
  v13 = v0[8];

  v14 = v13;
  LOBYTE(v9) = (v9)(v11, v14);

  if (v9)
  {
    sub_1BA4A3D88();

    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6F88();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136315394;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v41);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = (*v10 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
      v23 = *v22;
      v24 = v22[1];

      v25 = sub_1B9F0B82C(v23, v24, &v41);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v15, v16, "%s using primary data source: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v39 + 8))(v8, v40);
  }

  else
  {
    sub_1BA4A3D88();

    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6F88();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315394;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v41);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = (*v12 + qword_1EDC84AD0);
      v34 = *v33;
      v35 = v33[1];

      v36 = sub_1B9F0B82C(v34, v35, &v41);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_1B9F07000, v26, v27, "%s using secondary data source: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v39 + 8))(v4, v40);
    v10 = v12;
  }

  return *v10;
}

uint64_t sub_1BA0FC234()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = (*(v1 + 176))(v6);
  v10 = v0 + 7;
  swift_beginAccess();
  v11 = v0[7];
  v12 = v0 + 8;
  swift_beginAccess();
  v13 = v0[8];

  LOBYTE(v9) = (v9)(v11, v13);

  if (v9)
  {
    sub_1BA4A3D88();

    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6F88();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315394;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v39);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = *(*v10 + 24);
      v22 = *(*v10 + 32);

      v23 = sub_1B9F0B82C(v21, v22, &v39);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1B9F07000, v14, v15, "%s using primary data source: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v37 + 8))(v8, v38);
  }

  else
  {
    sub_1BA4A3D88();

    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6F88();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315394;
      v28 = sub_1BA4A85D8();
      v30 = sub_1B9F0B82C(v28, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = (*v12 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
      v32 = *v31;
      v33 = v31[1];

      v34 = sub_1B9F0B82C(v32, v33, &v39);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_1B9F07000, v24, v25, "%s using secondary data source: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v37 + 8))(v4, v38);
    v10 = v12;
  }

  return *v10;
}

void sub_1BA0FC67C()
{
  if (!qword_1EDC5F898)
  {
    sub_1B9F117BC(255, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F898);
    }
  }
}

uint64_t sub_1BA0FC704(uint64_t a1)
{
  sub_1BA0FC67C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA0FC760()
{
  if (!qword_1EBBEBEB0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E370);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBEB0);
    }
  }
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1BA0FC9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1BA0FCA58()
{
  if (!qword_1EBBEBEB8)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0);
    sub_1B9F15C34(&qword_1EBBEBEA8, &qword_1EDC6B5C0);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBEB8);
    }
  }
}

uint64_t ButtonCollectionViewItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ButtonCollectionViewItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ButtonCollectionViewItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ButtonCollectionViewItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *ButtonCollectionViewItem.image.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA0FCCFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0FFEB8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3);
}

uint64_t sub_1BA0FCD7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0C68C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t ButtonCollectionViewItem.buttonTapAction.getter()
{
  v1 = *(v0 + 64);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t ButtonCollectionViewItem.buttonTapAction.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1BA0FCF04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0FFE84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3);
}

uint64_t sub_1BA0FCF84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0FFE44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 88);
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v7);
  *(a2 + 88) = v6;
  *(a2 + 96) = v5;
  return result;
}

uint64_t ButtonCollectionViewItem.makeContextMenu.getter()
{
  v1 = *(v0 + 88);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t ButtonCollectionViewItem.makeContextMenu.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 88));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ButtonCollectionViewItem.init(identifier:title:image:isEnabled:buttonTapAction:isContextMenuPrimaryAction:makeContextMenu:isFullWidthButton:reuseIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *(a9 + 81) = a13;
  *a9 = a14;
  *(a9 + 8) = a15;
  return result;
}

uint64_t sub_1BA0FD134(uint64_t a1)
{
  v2 = sub_1BA0FFEC0();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA0FD1C8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA0FD224(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA0FD2BC(uint64_t a1, void **a2)
{
  sub_1BA0FF914(a1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x160))(v5);
  return sub_1B9F43D84(v7, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA0FD3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA0FF914(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA0FD418(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v4);
  return sub_1B9F43D84(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA0FD4E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0FD548;
}

uint64_t sub_1BA0FD548(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x160))(result);
  }

  return result;
}

id sub_1BA0FD5B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 384))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA0FD634()
{
  v0 = [objc_opt_self() systemWhiteColor];

  return v0;
}

uint64_t sub_1BA0FD674()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA0FD6B8(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1BA0FE74C();
}

void (*sub_1BA0FD70C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0FD770;
}

void sub_1BA0FD770(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA0FE74C();
  }
}

void *sub_1BA0FD7A4(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton] = 1;
  v11 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_fullWidthButtonConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_compactWidthButtonConstraints] = v11;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ButtonCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x150);
  v14 = v12;
  v13();

  return v14;
}

id ButtonCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA0FD988()
{
  v1 = [v0 contentView];
  v2 = sub_1BA0FD5B4();
  [v1 addSubview_];

  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button) addTarget:v0 action:sel_didTapButton_ forControlEvents:64];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);

  return v3();
}

void sub_1BA0FDA68()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B7510;
  v2 = sub_1BA0FD5B4();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [v0 &selRef_fetchSources];
  v8 = [v7 trailingAnchor];

  v9 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v10 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] trailingAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v11;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_fullWidthButtonConstraints] = v1;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  v13 = [*&v0[v9] leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintGreaterThanOrEqualToAnchor_];
  *(v12 + 32) = v16;
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [*&v0[v9] trailingAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor_];

  *(v12 + 40) = v20;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_compactWidthButtonConstraints] = v12;

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5890;
  v23 = [*&v0[v9] topAnchor];
  v24 = [v0 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v22 + 32) = v26;
  v27 = [v0 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [*&v0[v9] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v22 + 40) = v30;
  v31 = [*&v0[v9] centerYAnchor];
  v32 = [v0 contentView];
  v33 = [v32 centerYAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v22 + 48) = v34;
  v35 = [*&v0[v9] centerXAnchor];
  v36 = [v0 contentView];
  v37 = [v36 centerXAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v22 + 56) = v38;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v39 = sub_1BA4A6AE8();

  [v21 activateConstraints_];
}

void sub_1BA0FDF64()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D0F0(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v49 - v16;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA0FF914(v1 + v18, v69, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v70)
  {
    sub_1B9F43D84(v69, &qword_1EDC6E1A0, sub_1B9FCD918);
LABEL_6:
    sub_1BA4A3DD8();
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v61[0] = v29;
      *v28 = 136315138;
      v30 = sub_1BA4A85D8();
      v32 = v2;
      v33 = sub_1B9F0B82C(v30, v31, v61);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] Item is not ButtonCollectionViewItem", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v3 + 8))(v5, v32);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v54 = v61[1];
  v53 = v61[3];
  v49[1] = v61[4];
  v19 = v61[5];
  v56 = v61[6];
  v51 = v62;
  v57 = v63;
  v58 = v64;
  v50 = v65;
  v20 = v66;
  v55 = v67;
  v59 = v68;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  *(v1 + v21) = v20;
  sub_1BA0FE74C();
  v22 = sub_1BA0FD5B4();
  sub_1BA4A79C8();
  v23 = sub_1BA4A79A8();
  v60 = *(*(v23 - 8) + 48);
  v24 = v60(v17, 1, v23);
  v52 = v19;
  if (v24)
  {
    v25 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v17, v8, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v17, &qword_1EDC5E0A8, v25);
  }

  else
  {

    sub_1BA4A7978();
    sub_1BA4A79D8();
  }

  v34 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v35 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  sub_1BA4A79C8();
  if (v60(v14, 1, v23))
  {
    v36 = v34;
    v37 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v14, v8, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    v38 = v37;
    v34 = v36;
    sub_1B9F43D84(v14, &qword_1EDC5E0A8, v38);
    v39 = v56;
  }

  else
  {
    v39 = v56;
    v40 = v56;
    sub_1BA4A7958();
    sub_1BA4A79D8();
  }

  v41 = *(v1 + v34);
  sub_1BA4A79C8();
  if (v60(v11, 1, v23))
  {
    v42 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v11, v8, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v11, &qword_1EDC5E0A8, v42);
  }

  else
  {
    v43 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
    sub_1BA4A77F8();
    sub_1BA4A79D8();
  }

  [*(v1 + v34) setEnabled_];
  v44 = v55;
  if (v55)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    v46 = v44(Strong);

    sub_1B9F0E310(v44);
    if (v46)
    {
      [*(v1 + v34) setMenu_];
      v47 = *(v1 + v34);
      [v47 setShowsMenuAsPrimaryAction_];

      sub_1B9F0E310(v57);
      sub_1B9F0E310(v44);

      return;
    }

    sub_1B9F0E310(v57);
    v48 = v44;
  }

  else
  {

    sub_1B9F0E310(v57);
    v48 = 0;
  }

  sub_1B9F0E310(v48);
}

void sub_1BA0FE74C()
{
  swift_beginAccess();
  v0 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v1 = sub_1BA4A6AE8();

  [v0 activateConstraints_];

  v2 = sub_1BA4A6AE8();

  [v0 deactivateConstraints_];
}

uint64_t sub_1BA0FE864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1B9F0D0F0(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = sub_1BA0FD5B4();
  sub_1BA4A79C8();
  v16 = sub_1BA4A79A8();
  if ((*(*(v16 - 8) + 48))(v14, 1, v16))
  {
    v17 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v14, v11, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v14, &qword_1EDC5E0A8, v17);
  }

  else
  {

    sub_1BA4A7978();
    sub_1BA4A79D8();
  }

  [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button) setEnabled_];
  v18 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  v19 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  *v18 = a3;
  v18[1] = a4;

  return sub_1B9F0E310(v19);
}

id sub_1BA0FEA50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v40 = a6;
  v37[1] = a1;
  v38 = a3;
  sub_1B9F0D0F0(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v37 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v37 - v18;
  v20 = (v6 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  v21 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  *v20 = a4;
  v20[1] = a5;

  sub_1B9F0E310(v21);
  v41 = v6;
  v22 = sub_1BA0FD5B4();
  sub_1BA4A79C8();
  v23 = sub_1BA4A79A8();
  v24 = *(*(v23 - 8) + 48);
  if (v24(v19, 1, v23))
  {
    v25 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v19, v11, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v19, &qword_1EDC5E0A8, v25);
  }

  else
  {

    sub_1BA4A7978();
    sub_1BA4A79D8();
  }

  v26 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v27 = v41;
  v28 = *(v41 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  sub_1BA4A79C8();
  if (v24(v16, 1, v23))
  {
    v29 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v16, v11, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    v30 = v29;
    v27 = v41;
    sub_1B9F43D84(v16, &qword_1EDC5E0A8, v30);
  }

  else
  {
    v31 = v38;
    sub_1BA4A7958();
    sub_1BA4A79D8();
  }

  v32 = *(v27 + v26);
  v33 = v39;
  sub_1BA4A79C8();
  if (v24(v33, 1, v23))
  {
    v34 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v33, v11, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v33, &qword_1EDC5E0A8, v34);
  }

  else
  {
    v35 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
    sub_1BA4A77F8();
    sub_1BA4A79D8();
  }

  return [*(v27 + v26) setEnabled_];
}

void sub_1BA0FEE1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 viewController];
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
    swift_beginAccess();
    sub_1BA0FF914(&v1[v9], v26, &qword_1EDC6E1A0, sub_1B9FCD918);
    if (v27)
    {
      sub_1B9FCD918();
      if (swift_dynamicCast())
      {
        v10 = v23[6];
        v11 = v24;
        v12 = v25;
        if (v24)
        {
          v13 = v8;
          v11(v8);

          sub_1B9F0E310(v11);
          sub_1B9F0E310(v12);

          return;
        }

        sub_1B9F0E310(0);
        v22 = v12;
LABEL_14:
        sub_1B9F0E310(v22);
        return;
      }
    }

    else
    {
      sub_1B9F43D84(v26, &qword_1EDC6E1A0, sub_1B9FCD918);
    }

    v21 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
    if (!v21)
    {

      return;
    }

    v21(v8);

    v22 = v21;
    goto LABEL_14;
  }

  sub_1BA4A3DD8();
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Could not get presenting view controller", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA0FF1D4()
{
  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_parentViewController);
  sub_1B9F43D84(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item, &qword_1EDC6E1A0, sub_1B9FCD918);
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction));
}

id ButtonCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA0FF354(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t ButtonCollectionViewCell.deselectionBehavior(in:)@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA0FF914(v1 + v3, v10, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v11)
  {
    result = sub_1B9F43D84(v10, &qword_1EDC6E1A0, sub_1B9FCD918);
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B9F0E310(v8);
  result = sub_1B9F0E310(v9);
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:
  *a1 = v5;
  return result;
}

void *sub_1BA0FF550()
{
  v0 = sub_1BA4A7838();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A7938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A79A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  sub_1BA4A7988();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC560], v4);
  sub_1BA4A7828();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC508], v0);
  sub_1BA4A7848();
  v15 = objc_opt_self();
  v16 = [v15 systemBlueColor];
  sub_1BA4A78E8();
  v17 = [v15 systemWhiteColor];
  sub_1BA4A78F8();
  sub_1BA4A7858();
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0);
  (*(v9 + 16))(v11, v14, v8);
  v18 = sub_1BA4A79B8();
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v9 + 8))(v14, v8);
  return v18;
}

void _s18HealthExperienceUI24ButtonCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton) = 1;
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_fullWidthButtonConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_compactWidthButtonConstraints) = v3;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA0FF914(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F0D0F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA0FF9A8()
{
  result = qword_1EBBEBEF8;
  if (!qword_1EBBEBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBEF8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BA0FFA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1BA0FFA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA0FFE44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_1BA0FFE84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1BA0FFEC0()
{
  result = qword_1EDC664B8[0];
  if (!qword_1EDC664B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC664B8);
  }

  return result;
}

uint64_t type metadata accessor for SummarySharingContactPickerSectionedDataSource()
{
  result = qword_1EBBEBF00;
  if (!qword_1EBBEBF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnidgetCurrentValueView.ViewModel.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, a1);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a2, v6, AssociatedTypeWitness);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, AssociatedTypeWitness);
}

uint64_t SnidgetCurrentValueView.ViewModel.debugDescription.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1BA4A7AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  SnidgetCurrentValueView.ViewModel.value.getter(a1, &v8 - v5);
  LODWORD(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v6, 1, AssociatedTypeWitness);
  (*(v4 + 8))(v6, v3);
  if (a1 == 1)
  {
    return 0x617461446F6ELL;
  }

  else
  {
    return 0x65756C6156736168;
  }
}

uint64_t sub_1BA10028C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BA4A8338();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BA1002FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA100350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1BA1003A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA10028C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BA1003D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9F3AFA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BA100408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA10045C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1BA1004B0@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1B9F3AFA0();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1BA1004F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA10054C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SnidgetCurrentValueView.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SnidgetCurrentValueView.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SnidgetCurrentValueView.viewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for SnidgetCurrentValueView.ViewModel();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SnidgetCurrentValueView.viewModel.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for SnidgetCurrentValueView.ViewModel();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SnidgetCurrentValueView.previousViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  type metadata accessor for SnidgetCurrentValueView.ViewModel();
  v5 = sub_1BA4A7AA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SnidgetCurrentValueView.previousViewModel.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for SnidgetCurrentValueView.ViewModel();
  v5 = sub_1BA4A7AA8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BA100874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A58D8();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BA4A58E8();
}

uint64_t SnidgetCurrentValueView.ViewModel<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a2;
  v37 = type metadata accessor for SnidgetCurrentValueView.ViewModel.DataCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1BA4A8298();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v29 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v43 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v29 - v9;
  v10 = type metadata accessor for SnidgetCurrentValueView.ViewModel.NoDataCodingKeys();
  v11 = swift_getWitnessTable();
  v33 = v10;
  v31 = v11;
  v32 = sub_1BA4A8298();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v29 - v12;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SnidgetCurrentValueView.ViewModel.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_1BA4A8298();
  v17 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v29 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v42;
  v20 = v43;
  sub_1BA4A8548();
  (*(v13 + 16))(v16, v45, v41);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    v46 = 0;
    v22 = v29;
    v23 = v44;
    sub_1BA4A81F8();
    (*(v30 + 8))(v22, v32);
    return (*(v17 + 8))(v19, v23);
  }

  else
  {
    v45 = v17;
    v25 = v34;
    (*(v21 + 32))(v34, v16, v20);
    v47 = 1;
    v26 = v36;
    v27 = v44;
    sub_1BA4A81F8();
    v28 = v39;
    sub_1BA4A8288();
    (*(v38 + 8))(v26, v28);
    (*(v21 + 8))(v25, v20);
    return (*(v45 + 8))(v19, v27);
  }
}

uint64_t StandardSnidgetCurrentValueNoDataView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_1BA4A5718();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47BAC(0, &qword_1EDC5EBE8, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_1BA4A5D68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v45 = *(v1 + 8);
  v46 = v11;
  v44 = *(v1 + 16);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v50 = sub_1BA4A1318();
  v51 = v12;
  sub_1B9F252FC();
  v13 = sub_1BA4A5E18();
  v15 = v14;
  v17 = v16;
  v43 = v18;
  (*(v8 + 104))(v10, *MEMORY[0x1E6980F08], v7);
  v19 = *MEMORY[0x1E6980E28];
  v20 = sub_1BA4A5C28();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v6, v19, v20);
  (*(v21 + 56))(v6, 0, 1, v20);
  sub_1BA4A5CD8();
  sub_1BA103284(v6, &qword_1EDC5EBE8, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1B9F47BAC);
  (*(v8 + 8))(v10, v7);
  sub_1BA4A5C48();
  sub_1BA4A5D08();

  v22 = sub_1BA4A5DE8();
  v24 = v23;
  v26 = v25;

  sub_1BA102AF4(v13, v15, v17 & 1);

  sub_1BA4A60F8();
  v27 = sub_1BA4A5DB8();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1BA102AF4(v22, v24, v26 & 1);

  v50 = v27;
  v51 = v29;
  v52 = v31 & 1;
  v53 = v33;
  if (v44)
  {

    v35 = v46;
  }

  else
  {
    v36 = v46;

    sub_1BA4A6FB8();
    v37 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v38 = v40;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v36, v45, 0);
    (*(v41 + 8))(v38, v42);
    v35 = v48;
    v34 = v49;
  }

  v48 = v35;
  v49 = v34;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1BA4A5F18();

  sub_1BA102AF4(v27, v29, v31 & 1);
}

uint64_t sub_1BA101464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA1014F0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A12C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1BA101608@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA101690(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA101780(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = MEMORY[0x1E6968848];
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  sub_1B9F5CC44(a1, &v15 - v10, &unk_1EDC6E290, v8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  sub_1B9F426D0(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t sub_1BA101888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F5CC44(v2 + v4, a2, &unk_1EDC6E290, MEMORY[0x1E6968848]);
}

uint64_t sub_1BA101904(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1B9F426D0(a1, v2 + v4);
  return swift_endAccess();
}